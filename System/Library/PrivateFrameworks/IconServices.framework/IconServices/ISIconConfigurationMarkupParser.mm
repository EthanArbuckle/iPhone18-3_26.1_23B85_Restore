@interface ISIconConfigurationMarkupParser
- (ISIconConfigurationMarkupParser)initWithConfigurationDictionary:(id)dictionary;
- (NSString)symbolName;
- (id)colorsForKey:(id)key;
@end

@implementation ISIconConfigurationMarkupParser

- (NSString)symbolName
{
  configDict = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [configDict _IF_stringForKey:@"ISSymbolName"];

  return v3;
}

- (ISIconConfigurationMarkupParser)initWithConfigurationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ISIconConfigurationMarkupParser;
  v6 = [(ISIconConfigurationMarkupParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, dictionary);
  }

  return v7;
}

- (id)colorsForKey:(id)key
{
  v27[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  configDict = [(ISIconConfigurationMarkupParser *)self configDict];

  if (configDict)
  {
    configDict2 = [(ISIconConfigurationMarkupParser *)self configDict];
    v7 = [configDict2 _IF_arrayForKey:keyCopy];

    if (!v7)
    {
      configDict3 = [(ISIconConfigurationMarkupParser *)self configDict];
      v9 = [configDict3 _IF_stringForKey:keyCopy];

      if (v9)
      {
        v27[0] = v9;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      }

      else
      {
        v7 = 0;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      configDict = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = _ISColorForString(v15);
          if (v16)
          {
            if (!configDict)
            {
              configDict = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [configDict addObject:v16];
          }

          else
          {
            v17 = _ISDefaultLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v25 = v15;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      configDict = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return configDict;
}

@end