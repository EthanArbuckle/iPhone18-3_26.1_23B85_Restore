@interface ISIconConfigurationMarkupParser
- (ISIconConfigurationMarkupParser)initWithConfigurationDictionary:(id)a3;
- (NSString)symbolName;
- (id)colorsForKey:(id)a3;
@end

@implementation ISIconConfigurationMarkupParser

- (NSString)symbolName
{
  v2 = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [v2 _IF_stringForKey:@"ISSymbolName"];

  return v3;
}

- (ISIconConfigurationMarkupParser)initWithConfigurationDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISIconConfigurationMarkupParser;
  v6 = [(ISIconConfigurationMarkupParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, a3);
  }

  return v7;
}

- (id)colorsForKey:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISIconConfigurationMarkupParser *)self configDict];

  if (v5)
  {
    v6 = [(ISIconConfigurationMarkupParser *)self configDict];
    v7 = [v6 _IF_arrayForKey:v4];

    if (!v7)
    {
      v8 = [(ISIconConfigurationMarkupParser *)self configDict];
      v9 = [v8 _IF_stringForKey:v4];

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
      v5 = 0;
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
            if (!v5)
            {
              v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v5 addObject:v16];
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
      v5 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

@end