@interface CESREntityCleanupConfig
- (BOOL)_parseJsonObject:(id)object;
- (CESREntityCleanupConfig)initWithJsonObject:(id)object;
- (id)description;
@end

@implementation CESREntityCleanupConfig

- (id)description
{
  v2 = @"NO";
  if (self->_enableDatatypeCleanupFromNonAppEntities)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_enableEntityCleanup)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_enableEmojiCleanupFromAppEntities)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_enableEmojiCleanupFromNonAppEntities)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_enableSpecialCharacterCleanupFromAppEntities)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_enableSpecialCharacterCleanupFromNonAppEntities)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"CESREntityCleanupConfig: enableDatatypeCleanupFromNonAppEntities=%@ enableEntityCleanup=%@ enableEmojiCleanupFromAppEntities=%@ enableEmojiCleanupFromNonAppEntities=%@ enableSpecialCharacterCleanupFromAppEntities=%@ enableSpecialCharacterCleanupFromNonAppEntities=%@ entitiesExcludedFromEmojiCleanup=%@ entitiesExcludedFromSpecialCharacterCleanup=%@ applyRegex=%@ specialCharactersToRemove=%@", v3, v4, v5, v6, v7, v2, self->_entitiesExcludedFromEmojiCleanup, self->_entitiesExcludedFromSpecialCharacterCleanup, self->_applyRegex, self->_specialCharactersToRemove];
}

- (BOOL)_parseJsonObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"entityCleanup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"enableDatatypeCleanupFromNonAppEntities"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_enableDatatypeCleanupFromNonAppEntities = [v7 BOOLValue];
        v8 = [v6 objectForKeyedSubscript:@"enableEntityCleanup"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v8 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        self->_enableEntityCleanup = bOOLValue;
        v11 = [v6 objectForKeyedSubscript:@"enableEmojiCleanupFromAppEntities"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_enableEmojiCleanupFromAppEntities = [v11 BOOLValue];
          v12 = [v6 objectForKeyedSubscript:@"enableEmojiCleanupFromNonAppEntities"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v12;
            self->_enableEmojiCleanupFromNonAppEntities = [v12 BOOLValue];
            v13 = [v6 objectForKeyedSubscript:@"enableSpecialCharacterCleanupFromAppEntities"];
            objc_opt_class();
            v27 = v13;
            if (objc_opt_isKindOfClass())
            {
              self->_enableSpecialCharacterCleanupFromAppEntities = [v13 BOOLValue];
              v14 = [v6 objectForKeyedSubscript:@"enableSpecialCharacterCleanupFromNonAppEntities"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                self->_enableSpecialCharacterCleanupFromNonAppEntities = [v14 BOOLValue];
                v24 = [v6 objectForKeyedSubscript:@"entitiesExcludedFromEmojiCleanup"];
                v25 = v14;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v24;
                }

                else
                {
                  v15 = MEMORY[0x277CBEC10];
                }

                objc_storeStrong(&self->_entitiesExcludedFromEmojiCleanup, v15);
                v16 = [v6 objectForKeyedSubscript:@"entitiesExcludedFromSpecialCharacterCleanup"];
                v23 = v16;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v16;
                }

                else
                {
                  v17 = MEMORY[0x277CBEC10];
                }

                objc_storeStrong(&self->_entitiesExcludedFromSpecialCharacterCleanup, v17);
                v18 = [v6 objectForKeyedSubscript:@"applyRegex"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = v18;
                }

                else
                {
                  v19 = MEMORY[0x277CBEC10];
                }

                objc_storeStrong(&self->_applyRegex, v19);
                v20 = [v6 objectForKeyedSubscript:@"specialCharactersToRemove"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = MEMORY[0x277CBEC10];
                }

                objc_storeStrong(&self->_specialCharactersToRemove, v21);

                v14 = v25;
              }
            }

            else
            {
              isKindOfClass = 0;
            }

            v12 = v26;
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
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CESREntityCleanupConfig)initWithJsonObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = CESREntityCleanupConfig;
  v5 = [(CESREntityCleanupConfig *)&v11 init];
  v6 = v5;
  if (v5 && ![(CESREntityCleanupConfig *)v5 _parseJsonObject:objectCopy])
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CESREntityCleanupConfig initWithJsonObject:]";
      _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Failed to parse Entity Cleanup section of json.", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end