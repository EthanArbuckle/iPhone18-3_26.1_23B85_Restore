@interface ISGraphicIconConfigurationParser
- (NSDictionary)aliasedConfigurationDictionary;
- (id)symbolName;
- (int64_t)renderingMode;
@end

@implementation ISGraphicIconConfigurationParser

- (id)symbolName
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = ISGraphicIconConfigurationParser;
  v3 = [(ISIconConfigurationMarkupParser *)&v13 symbolName];
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 length])
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(ISIconConfigurationMarkupParser *)self configDict];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_INFO, "Failed to find name for graphic variant. Dict: %@", buf, 0xCu);
    }

    v4 = @"questionmark.app.dashed";
  }

  if (![(__CFString *)v4 caseInsensitiveCompare:@"ISCurrentDevice"])
  {
    v7 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
    v8 = [v7 identifier];
    v9 = [ISSymbol symbolForTypeIdentifier:v8 error:0];

    if (v9)
    {
      v10 = [v9 name];
    }

    else
    {
      v10 = @"questionmark.app.dashed";
    }

    v4 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)renderingMode
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [v2 _IF_stringForKey:@"ISRenderingMode"];

  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"automatic"])
    {
      v5 = 1;
      goto LABEL_16;
    }

    if (![v3 caseInsensitiveCompare:@"hierarchical"])
    {
      v5 = 2;
      goto LABEL_16;
    }

    if (![v3 caseInsensitiveCompare:@"monochrome"])
    {
      v5 = 3;
      goto LABEL_16;
    }

    if (![v3 caseInsensitiveCompare:@"multicolor"])
    {
      v5 = 4;
      goto LABEL_16;
    }

    if (![v3 caseInsensitiveCompare:@"palette"])
    {
      v5 = 5;
      goto LABEL_16;
    }

    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
    }
  }

  v5 = 0;
LABEL_16:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSDictionary)aliasedConfigurationDictionary
{
  v2 = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [v2 _IF_stringForKey:@"ISTypeIdentifier"];

  if (v3)
  {
    v4 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v3];
    v5 = v4;
    if (v4 && [v4 isDeclared])
    {
      v6 = [v5 iconDictionary];
      v7 = [v6 _IF_dictionaryForKey:@"ISGraphicIconConfiguration"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end