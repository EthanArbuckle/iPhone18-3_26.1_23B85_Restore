@interface DKDiagnosticAttributes
- (BOOL)isEqualTo:(id)to;
- (BOOL)isEqualToAttributes:(id)attributes;
- (DKDiagnosticAttributes)initWithExtension:(id)extension;
- (DKDiagnosticAttributes)initWithIdentifier:(id)identifier version:(id)version freeSpaceRequired:(id)required name:(id)name serviceName:(id)serviceName headless:(BOOL)headless;
@end

@implementation DKDiagnosticAttributes

- (DKDiagnosticAttributes)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v41.receiver = self;
  v41.super_class = DKDiagnosticAttributes;
  v6 = [(DKDiagnosticAttributes *)&v41 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v6->_extension, extension);
  attributes = [extensionCopy attributes];
  v9 = [attributes objectForKeyedSubscript:@"DKBundleIdentifier"];
  bundleIdentifier = v7->_bundleIdentifier;
  v7->_bundleIdentifier = v9;

  if (!v7->_bundleIdentifier)
  {
    objc_storeStrong(&v7->_bundleIdentifier, @"Default");
  }

  attributes2 = [extensionCopy attributes];
  v12 = [attributes2 objectForKeyedSubscript:@"DKDiagnosticIdentifier"];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      identifier = v7->_identifier;
      v7->_identifier = v13;

      infoDictionary = [extensionCopy infoDictionary];
      v16 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x277CBEC50]];

      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v7->_version, v16);
          attributes3 = [extensionCopy attributes];
          v18 = [attributes3 objectForKeyedSubscript:@"DKDiagnosticName"];

          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v7->_name, v18);
              attributes4 = [extensionCopy attributes];
              v20 = [attributes4 objectForKeyedSubscript:@"DKDiagnosticFreeSpaceRequired"];

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
              attributes5 = [extensionCopy attributes];
              v25 = [attributes5 objectForKeyedSubscript:@"DKDiagnosticRequiresUnlock"];

              if (v25)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v7->_requiresUnlock = [v25 BOOLValue];
                }
              }

              attributes6 = [extensionCopy attributes];
              v27 = [attributes6 objectForKeyedSubscript:@"DKDiagnosticSupportedDevices"];

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

              extensionPointIdentifier = [extensionCopy extensionPointIdentifier];
              v31 = [extensionPointIdentifier isEqualToString:@"com.apple.diagnostics-service"];

              if (v31)
              {
                v32 = 1;
              }

              else
              {
                extensionPointIdentifier2 = [extensionCopy extensionPointIdentifier];
                v34 = [extensionPointIdentifier2 isEqualToString:@"com.apple.diagnostics-ui-service"];

                if (v34)
                {
                  *&v7->_headless = 0;
                  goto LABEL_35;
                }

                extensionPointIdentifier3 = [extensionCopy extensionPointIdentifier];
                v37 = [extensionPointIdentifier3 isEqualToString:@"com.apple.diagnostics-restricted-service"];

                if (v37)
                {
                  v32 = 257;
                }

                else
                {
                  extensionPointIdentifier4 = [extensionCopy extensionPointIdentifier];
                  v39 = [extensionPointIdentifier4 isEqualToString:@"com.apple.diagnostics-restricted-ui-service"];

                  if (!v39)
                  {
                    v40 = DiagnosticsKitLogHandleForCategory(1);
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      [(DKDiagnosticAttributes *)extensionCopy initWithExtension:v40];
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

- (DKDiagnosticAttributes)initWithIdentifier:(id)identifier version:(id)version freeSpaceRequired:(id)required name:(id)name serviceName:(id)serviceName headless:(BOOL)headless
{
  identifierCopy = identifier;
  versionCopy = version;
  requiredCopy = required;
  nameCopy = name;
  serviceNameCopy = serviceName;
  v24.receiver = self;
  v24.super_class = DKDiagnosticAttributes;
  v18 = [(DKDiagnosticAttributes *)&v24 init];
  v19 = v18;
  if (v18)
  {
    extension = v18->_extension;
    v18->_extension = 0;

    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_version, version);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_serviceName, serviceName);
    v19->_headless = headless;
    objc_storeStrong(&v19->_freeSpaceRequired, required);
    if (!v19->_freeSpaceRequired)
    {
      v19->_freeSpaceRequired = &unk_285B92930;
    }

    v19->_restricted = 1;
  }

  return v19;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (self == toCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DKDiagnosticAttributes *)self isEqualToAttributes:toCopy];
  }

  return v5;
}

- (BOOL)isEqualToAttributes:(id)attributes
{
  attributesCopy = attributes;
  identifier = [(DKDiagnosticAttributes *)self identifier];
  identifier2 = [attributesCopy identifier];
  if ([identifier isEqualToNumber:identifier2])
  {
    name = [(DKDiagnosticAttributes *)self name];
    name2 = [attributesCopy name];
    if ([name isEqualToString:name2])
    {
      version = [(DKDiagnosticAttributes *)self version];
      version2 = [attributesCopy version];
      if ([version isEqualToString:version2])
      {
        freeSpaceRequired = [(DKDiagnosticAttributes *)self freeSpaceRequired];
        freeSpaceRequired2 = [attributesCopy freeSpaceRequired];
        if ([freeSpaceRequired isEqualToNumber:freeSpaceRequired2])
        {
          v18 = freeSpaceRequired;
          isHeadless = [(DKDiagnosticAttributes *)self isHeadless];
          if (isHeadless == [attributesCopy isHeadless] && (v14 = -[DKDiagnosticAttributes isRestricted](self, "isRestricted"), v14 == objc_msgSend(attributesCopy, "isRestricted")))
          {
            requiresUnlock = [(DKDiagnosticAttributes *)self requiresUnlock];
            v15 = requiresUnlock ^ [attributesCopy requiresUnlock] ^ 1;
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          freeSpaceRequired = v18;
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