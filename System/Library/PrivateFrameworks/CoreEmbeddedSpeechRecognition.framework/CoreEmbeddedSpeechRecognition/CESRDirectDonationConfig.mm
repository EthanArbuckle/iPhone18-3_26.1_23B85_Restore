@interface CESRDirectDonationConfig
+ (id)_parseFieldTypeMappings:(id)mappings;
- (BOOL)_parseJsonObject:(id)object;
- (CESRDirectDonationConfig)initWithJsonObject:(id)object;
- (id)mappingForFieldTypeName:(id)name;
@end

@implementation CESRDirectDonationConfig

- (id)mappingForFieldTypeName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [(NSDictionary *)self->_fieldTypeToMapping objectForKeyedSubscript:nameCopy];
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (BOOL)_parseJsonObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"directDonations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:@"fieldTypeMappings"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = [CESRDirectDonationConfig _parseFieldTypeMappings:v6];
        fieldTypeToMapping = self->_fieldTypeToMapping;
        self->_fieldTypeToMapping = v8;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CESRDirectDonationConfig)initWithJsonObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = CESRDirectDonationConfig;
  v5 = [(CESRDirectDonationConfig *)&v13 init];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v9 = v6;
    goto LABEL_9;
  }

  v7 = [(CESRDirectDonationConfig *)v5 _parseJsonObject:objectCopy];
  v8 = *MEMORY[0x277CEF0E8];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      fieldTypeToMapping = v6->_fieldTypeToMapping;
      *buf = 136315394;
      v15 = "[CESRDirectDonationConfig initWithJsonObject:]";
      v16 = 2112;
      v17 = fieldTypeToMapping;
      _os_log_debug_impl(&dword_225EEB000, v8, OS_LOG_TYPE_DEBUG, "%s Direct donation mapping: %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = "[CESRDirectDonationConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Failed to parse Direct Donation section of json.", buf, 0xCu);
  }

  v9 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_parseFieldTypeMappings:(id)mappings
{
  v39 = *MEMORY[0x277D85DE8];
  mappingsCopy = mappings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = mappingsCopy;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0x277CBE000uLL;
    v9 = *v35;
    v31 = v5;
    v32 = dictionary;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = *(v8 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v14 = [v13 objectForKeyedSubscript:@"fieldType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v13 objectForKeyedSubscript:@"primaryLme"];
            v17 = *(v8 + 2752);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v16;
              v19 = [v18 objectForKeyedSubscript:@"templateName"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v33 = v19;
                v20 = [v18 objectForKeyedSubscript:@"tagName"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = v20;
                  v21 = v20;
                  if ([v15 length] && objc_msgSend(v33, "length") && objc_msgSend(v21, "length"))
                  {
                    v28 = v21;
                    v29 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v33 lmeTag:v21];
                    v27 = [[CESRFieldTypeMapping alloc] initWithFieldTypeName:v15 vocabularyLabel:v29];
                    v22 = [v32 objectForKeyedSubscript:v15];
                    if (v22)
                    {
                      [v32 setObject:v22 forKeyedSubscript:v15];
                    }

                    else
                    {
                      v25 = [MEMORY[0x277CBEB58] set];
                      [v32 setObject:v25 forKeyedSubscript:v15];
                    }

                    v26 = [v32 objectForKeyedSubscript:v15];
                    [v26 addObject:v27];

                    v21 = v28;
                  }

                  v20 = v30;
                }
              }

              v5 = v31;
              dictionary = v32;
            }

            v8 = 0x277CBE000;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end