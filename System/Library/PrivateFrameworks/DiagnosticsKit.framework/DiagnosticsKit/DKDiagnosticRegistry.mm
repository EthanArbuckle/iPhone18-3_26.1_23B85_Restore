@interface DKDiagnosticRegistry
- (DKDiagnosticRegistry)init;
- (NSArray)diagnostics;
- (id)adapterForIdentifier:(id)a3;
- (id)diagnosticForIdentifier:(id)a3;
- (void)addExtensionAdapter:(id)a3;
- (void)enumerateExtensionAdaptersWithBlock:(id)a3;
@end

@implementation DKDiagnosticRegistry

- (DKDiagnosticRegistry)init
{
  v6.receiver = self;
  v6.super_class = DKDiagnosticRegistry;
  v2 = [(DKDiagnosticRegistry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    diagnosticLookup = v2->_diagnosticLookup;
    v2->_diagnosticLookup = v3;
  }

  return v2;
}

- (id)adapterForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)diagnosticForIdentifier:(id)a3
{
  v3 = [(DKDiagnosticRegistry *)self adapterForIdentifier:a3];
  v4 = [v3 extensionAttributes];

  return v4;
}

- (NSArray)diagnostics
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) extensionAttributes];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addExtensionAdapter:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 extensionAttributes];
  v6 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  objc_sync_enter(v6);
  v7 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v8 = [v5 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v9 extensionAttributes];
  v11 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 version];
    v13 = [v5 identifier];
    v14 = [v10 version];
    *v27 = 138413314;
    *&v27[4] = v5;
    *&v27[12] = 2112;
    *&v27[14] = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to register a diagnostic [%@] with version [%@], but the identifier [%@] is already in use by [%@] with version [%@].", v27, 0x34u);
  }

  v15 = [v10 version];
  v16 = [v5 version];
  v17 = [v15 compare:v16 options:64];

  v18 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v5 identifier];
    v20 = "not ";
    *v27 = 138412802;
    *&v27[4] = v19;
    *&v27[12] = 2080;
    if (v17 == -1)
    {
      v20 = "";
    }

    *&v27[14] = v20;
    v28 = 2080;
    v29 = v20;
    _os_log_impl(&dword_248B9D000, v18, OS_LOG_TYPE_DEFAULT, "New extension for ID [%@] will %sreplace the existing extension because its version is %shigher", v27, 0x20u);
  }

  if (v17 == -1)
  {
LABEL_9:
    v21 = [(DKDiagnosticRegistry *)self diagnosticLookup];
    v22 = [v5 identifier];
    [v21 setObject:v4 forKeyedSubscript:v22];

    v23 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v5 identifier];
      v25 = [v5 version];
      *v27 = 138412802;
      *&v27[4] = v5;
      *&v27[12] = 2112;
      *&v27[14] = v24;
      v28 = 2112;
      v29 = v25;
      _os_log_impl(&dword_248B9D000, v23, OS_LOG_TYPE_DEFAULT, "Registered diagnostic [%@] with Test ID [%@] and Version [%@]", v27, 0x20u);
    }
  }

  objc_sync_exit(v6);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExtensionAdaptersWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end