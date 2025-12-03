@interface ISIconPackage
- (ISIconPackage)initWithTypeIdentifier:(id)identifier configuration:(id)configuration;
@end

@implementation ISIconPackage

- (ISIconPackage)initWithTypeIdentifier:(id)identifier configuration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v34.receiver = self;
  v34.super_class = ISIconPackage;
  v8 = [(ISIconPackage *)&v34 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:identifierCopy];
    v10 = *MEMORY[0x1E6982DC8];
    identifier = [*MEMORY[0x1E6982DC8] identifier];
    v12 = [v9 conformsToTypeIdentifier:identifier];

    if (v12)
    {
      v13 = MEMORY[0x1E69636B0];
      identifier2 = [v10 identifier];
      v15 = [v13 typeRecordWithIdentifier:identifier2];

      iconDictionary = [v15 iconDictionary];
      v17 = [iconDictionary _IF_stringForKey:@"ISIconPackageIdentifier"];

      v18 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v17];
      if (!configurationCopy)
      {
        configurationCopy = objc_alloc_init(ISFolderIconConfiguration);
      }

      v19 = [ISFolderIconConfigurationParser alloc];
      iconDictionary2 = [v9 iconDictionary];
      v21 = [(ISFolderIconConfigurationParser *)v19 initWithIconDictionary:iconDictionary2];

      if (v21)
      {
        symbolName = [(ISIconConfigurationMarkupParser *)v21 symbolName];

        if (symbolName)
        {
          symbolName2 = [(ISIconConfigurationMarkupParser *)v21 symbolName];
          [(ISFolderIconConfiguration *)configurationCopy setSymbolName:symbolName2];
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v24 = _ISDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ISIconPackage initWithTypeIdentifier:identifierCopy configuration:v24];
    }

    v25 = objc_opt_new();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke;
    v30[3] = &unk_1E77C6758;
    v31 = identifierCopy;
    configurationCopy = configurationCopy;
    v32 = configurationCopy;
    v33 = v25;
    v26 = v25;
    [v18 enumerateChildTypesWithBlock:v30];
    v27 = [v26 copy];
    icons = v8->_icons;
    v8->_icons = v27;
  }

  return v8;
}

void __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke_cold_1(v3, a1, v4);
  }

  v5 = [v3 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 isDeclared];

    if (v7)
    {
      v8 = [ISTypeIcon alloc];
      v9 = [v3 identifier];
      v10 = [(ISTypeIcon *)v8 initWithType:v9 iconConfiguration:*(a1 + 40)];

      [*(a1 + 48) addObject:v10];
    }
  }
}

- (void)initWithTypeIdentifier:(uint64_t)a1 configuration:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x1E69E9840];
}

void __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v6 = *(a2 + 32);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;

  v7 = *MEMORY[0x1E69E9840];
}

@end