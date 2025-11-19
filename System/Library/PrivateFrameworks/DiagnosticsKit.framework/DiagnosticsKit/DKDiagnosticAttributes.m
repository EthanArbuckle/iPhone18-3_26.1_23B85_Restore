@interface DKDiagnosticAttributes
- (BOOL)isEqualTo:(id)a3;
- (BOOL)isEqualToAttributes:(id)a3;
- (DKDiagnosticAttributes)initWithExtension:(id)a3;
- (DKDiagnosticAttributes)initWithIdentifier:(id)a3 version:(id)a4 freeSpaceRequired:(id)a5 name:(id)a6 serviceName:(id)a7 headless:(BOOL)a8;
@end

@implementation DKDiagnosticAttributes

- (DKDiagnosticAttributes)initWithExtension:(id)a3
{
  v5 = a3;
  v41.receiver = self;
  v41.super_class = DKDiagnosticAttributes;
  v6 = [(DKDiagnosticAttributes *)&v41 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v6->_extension, a3);
  v8 = [v5 attributes];
  v9 = [v8 objectForKeyedSubscript:@"DKBundleIdentifier"];
  bundleIdentifier = v7->_bundleIdentifier;
  v7->_bundleIdentifier = v9;

  if (!v7->_bundleIdentifier)
  {
    objc_storeStrong(&v7->_bundleIdentifier, @"Default");
  }

  v11 = [v5 attributes];
  v12 = [v11 objectForKeyedSubscript:@"DKDiagnosticIdentifier"];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      identifier = v7->_identifier;
      v7->_identifier = v13;

      v15 = [v5 infoDictionary];
      v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBEC50]];

      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v7->_version, v16);
          v17 = [v5 attributes];
          v18 = [v17 objectForKeyedSubscript:@"DKDiagnosticName"];

          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v7->_name, v18);
              v19 = [v5 attributes];
              v20 = [v19 objectForKeyedSubscript:@"DKDiagnosticFreeSpaceRequired"];

              if (!v20)
              {
                goto LABEL_20;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_20;
                }

                v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "longLongValue")}];
              }

              freeSpaceRequired = v7->_freeSpaceRequired;
              v7->_freeSpaceRequired = v21;

LABEL_20:
              if (!v7->_freeSpaceRequired)
              {
                v7->_freeSpaceRequired = &unk_285B92930;
              }

              v7->_requiresUnlock = 0;
              v24 = [v5 attributes];
              v25 = [v24 objectForKeyedSubscript:@"DKDiagnosticRequiresUnlock"];

              if (v25)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v7->_requiresUnlock = [v25 BOOLValue];
                }
              }

              v26 = [v5 attributes];
              v27 = [v26 objectForKeyedSubscript:@"DKDiagnosticSupportedDevices"];

              if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v28 = v27;
                supportedDevices = v7->_supportedDevices;
                v7->_supportedDevices = v28;
              }

              else
              {
                supportedDevices = v7->_supportedDevices;
                v7->_supportedDevices = MEMORY[0x277CBEBF8];
              }

              v30 = [v5 extensionPointIdentifier];
              v31 = [v30 isEqualToString:@"com.apple.diagnostics-service"];

              if (v31)
              {
                v32 = 1;
              }

              else
              {
                v33 = [v5 extensionPointIdentifier];
                v34 = [v33 isEqualToString:@"com.apple.diagnostics-ui-service"];

                if (v34)
                {
                  *&v7->_headless = 0;
                  goto LABEL_35;
                }

                v36 = [v5 extensionPointIdentifier];
                v37 = [v36 isEqualToString:@"com.apple.diagnostics-restricted-service"];

                if (v37)
                {
                  v32 = 257;
                }

                else
                {
                  v38 = [v5 extensionPointIdentifier];
                  v39 = [v38 isEqualToString:@"com.apple.diagnostics-restricted-ui-service"];

                  if (!v39)
                  {
                    v40 = DiagnosticsKitLogHandleForCategory(1);
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      [(DKDiagnosticAttributes *)v5 initWithExtension:v40];
                    }

                    v7 = 0;
                    goto LABEL_35;
                  }

                  v32 = 256;
                }
              }

              *&v7->_headless = v32;
LABEL_35:

LABEL_36:
              v7 = v7;
              v22 = v7;
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

  v22 = 0;
LABEL_37:

  return v22;
}

- (DKDiagnosticAttributes)initWithIdentifier:(id)a3 version:(id)a4 freeSpaceRequired:(id)a5 name:(id)a6 serviceName:(id)a7 headless:(BOOL)a8
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = DKDiagnosticAttributes;
  v18 = [(DKDiagnosticAttributes *)&v24 init];
  v19 = v18;
  if (v18)
  {
    extension = v18->_extension;
    v18->_extension = 0;

    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v19->_version, a4);
    objc_storeStrong(&v19->_name, a6);
    objc_storeStrong(&v19->_serviceName, a7);
    v19->_headless = a8;
    objc_storeStrong(&v19->_freeSpaceRequired, a5);
    if (!v19->_freeSpaceRequired)
    {
      v19->_freeSpaceRequired = &unk_285B92930;
    }

    v19->_restricted = 1;
  }

  return v19;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DKDiagnosticAttributes *)self isEqualToAttributes:v4];
  }

  return v5;
}

- (BOOL)isEqualToAttributes:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticAttributes *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToNumber:v6])
  {
    v7 = [(DKDiagnosticAttributes *)self name];
    v8 = [v4 name];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(DKDiagnosticAttributes *)self version];
      v10 = [v4 version];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(DKDiagnosticAttributes *)self freeSpaceRequired];
        v12 = [v4 freeSpaceRequired];
        if ([v11 isEqualToNumber:v12])
        {
          v18 = v11;
          v13 = [(DKDiagnosticAttributes *)self isHeadless];
          if (v13 == [v4 isHeadless] && (v14 = -[DKDiagnosticAttributes isRestricted](self, "isRestricted"), v14 == objc_msgSend(v4, "isRestricted")))
          {
            v16 = [(DKDiagnosticAttributes *)self requiresUnlock];
            v15 = v16 ^ [v4 requiresUnlock] ^ 1;
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          v11 = v18;
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)initWithExtension:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 extensionPointIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Unknown extension point: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end