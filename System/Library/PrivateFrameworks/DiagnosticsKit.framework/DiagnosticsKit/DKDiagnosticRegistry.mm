@interface DKDiagnosticRegistry
- (DKDiagnosticRegistry)init;
- (NSArray)diagnostics;
- (id)adapterForIdentifier:(id)identifier;
- (id)diagnosticForIdentifier:(id)identifier;
- (void)addExtensionAdapter:(id)adapter;
- (void)enumerateExtensionAdaptersWithBlock:(id)block;
@end

@implementation DKDiagnosticRegistry

- (DKDiagnosticRegistry)init
{
  v6.receiver = self;
  v6.super_class = DKDiagnosticRegistry;
  v2 = [(DKDiagnosticRegistry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    diagnosticLookup = v2->_diagnosticLookup;
    v2->_diagnosticLookup = dictionary;
  }

  return v2;
}

- (id)adapterForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  diagnosticLookup = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v6 = [diagnosticLookup objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)diagnosticForIdentifier:(id)identifier
{
  v3 = [(DKDiagnosticRegistry *)self adapterForIdentifier:identifier];
  extensionAttributes = [v3 extensionAttributes];

  return extensionAttributes;
}

- (NSArray)diagnostics
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  diagnosticLookup = [(DKDiagnosticRegistry *)self diagnosticLookup];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(diagnosticLookup, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  diagnosticLookup2 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  allValues = [diagnosticLookup2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        extensionAttributes = [*(*(&v15 + 1) + 8 * i) extensionAttributes];
        [v5 addObject:extensionAttributes];
      }

      v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addExtensionAdapter:(id)adapter
{
  v34 = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  extensionAttributes = [adapterCopy extensionAttributes];
  diagnosticLookup = [(DKDiagnosticRegistry *)self diagnosticLookup];
  objc_sync_enter(diagnosticLookup);
  diagnosticLookup2 = [(DKDiagnosticRegistry *)self diagnosticLookup];
  identifier = [extensionAttributes identifier];
  v9 = [diagnosticLookup2 objectForKeyedSubscript:identifier];

  if (!v9)
  {
    goto LABEL_9;
  }

  extensionAttributes2 = [v9 extensionAttributes];
  v11 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    version = [extensionAttributes version];
    identifier2 = [extensionAttributes identifier];
    version2 = [extensionAttributes2 version];
    *v27 = 138413314;
    *&v27[4] = extensionAttributes;
    *&v27[12] = 2112;
    *&v27[14] = version;
    v28 = 2112;
    v29 = identifier2;
    v30 = 2112;
    v31 = extensionAttributes2;
    v32 = 2112;
    v33 = version2;
    _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to register a diagnostic [%@] with version [%@], but the identifier [%@] is already in use by [%@] with version [%@].", v27, 0x34u);
  }

  version3 = [extensionAttributes2 version];
  version4 = [extensionAttributes version];
  v17 = [version3 compare:version4 options:64];

  v18 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [extensionAttributes identifier];
    v20 = "not ";
    *v27 = 138412802;
    *&v27[4] = identifier3;
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
    diagnosticLookup3 = [(DKDiagnosticRegistry *)self diagnosticLookup];
    identifier4 = [extensionAttributes identifier];
    [diagnosticLookup3 setObject:adapterCopy forKeyedSubscript:identifier4];

    v23 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [extensionAttributes identifier];
      version5 = [extensionAttributes version];
      *v27 = 138412802;
      *&v27[4] = extensionAttributes;
      *&v27[12] = 2112;
      *&v27[14] = identifier5;
      v28 = 2112;
      v29 = version5;
      _os_log_impl(&dword_248B9D000, v23, OS_LOG_TYPE_DEFAULT, "Registered diagnostic [%@] with Test ID [%@] and Version [%@]", v27, 0x20u);
    }
  }

  objc_sync_exit(diagnosticLookup);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExtensionAdaptersWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  diagnosticLookup = [(DKDiagnosticRegistry *)self diagnosticLookup];
  allValues = [diagnosticLookup allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end