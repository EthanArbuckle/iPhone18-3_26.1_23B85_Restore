@interface DOCTagLocalStorage
+ (id)sharedAppGroupStorage;
- (DOCTagLocalStorage)init;
- (NSOrderedSet)discoveredTags;
- (NSOrderedSet)userTags;
- (id)_unarchivedTagsFromData:(id)a3;
- (int64_t)tagSerialNumber;
- (void)setDiscoveredTags:(id)a3;
- (void)setTagSerialNumber:(int64_t)a3;
- (void)setUserTags:(id)a3;
@end

@implementation DOCTagLocalStorage

+ (id)sharedAppGroupStorage
{
  if (sharedAppGroupStorage_onceToken != -1)
  {
    +[DOCTagLocalStorage sharedAppGroupStorage];
  }

  v3 = sharedAppGroupStorage_shared;

  return v3;
}

uint64_t __43__DOCTagLocalStorage_sharedAppGroupStorage__block_invoke()
{
  sharedAppGroupStorage_shared = objc_alloc_init(DOCTagLocalStorage);

  return MEMORY[0x2821F96F8]();
}

- (DOCTagLocalStorage)init
{
  v6.receiver = self;
  v6.super_class = DOCTagLocalStorage;
  v2 = [(DOCTagLocalStorage *)&v6 init];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
  userDefaults = v2->_userDefaults;
  v2->_userDefaults = v3;

  return v2;
}

- (NSOrderedSet)userTags
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"FinderTagsUser"];
  v4 = [(DOCTagLocalStorage *)self _unarchivedTagsFromData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[DOCTag tagsLoadedFromUserDefaults];
  }

  v7 = v6;

  return v7;
}

- (NSOrderedSet)discoveredTags
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"FinderTagsDiscovered"];
  v4 = [(DOCTagLocalStorage *)self _unarchivedTagsFromData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  v7 = v6;

  return v7;
}

- (int64_t)tagSerialNumber
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"FinderTagSerialNumber"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setTagSerialNumber:(int64_t)a3
{
  userDefaults = self->_userDefaults;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSUserDefaults *)userDefaults setObject:v4 forKey:@"FinderTagSerialNumber"];
}

- (id)_unarchivedTagsFromData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = [v4 initWithObjects:{objc_msgSend(MEMORY[0x277CBEB70], "classForKeyedUnarchiver"), objc_opt_class(), 0}];
    v28 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:v3 error:&v28];
    v7 = v28;
    if (v7)
    {
      v8 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v8 = docLogHandle;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(DOCTagLocalStorage *)v7 _unarchivedTagsFromData:v8, v9, v10, v11, v12, v13, v14];
      }

      v15 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
LABEL_10:

        goto LABEL_12;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = v6;
      v19 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = 0;
              v7 = v5;
              goto LABEL_9;
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v15 = v16;
    }

    v16 = v5;
LABEL_9:

    v6 = v16;
    v5 = v7;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setUserTags:(id)a3
{
  v13 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DOCTagLocalStorage *)v5 setUserTags:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  else
  {
    [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"FinderTagsUser"];
  }
}

- (void)setDiscoveredTags:(id)a3
{
  v13 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DOCTagLocalStorage *)v5 setDiscoveredTags:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  else
  {
    [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"FinderTagsDiscovered"];
  }
}

- (void)_unarchivedTagsFromData:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_249340000, a2, a3, "Failed to create unarchiver for tags from data %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUserTags:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_249340000, a2, a3, "Failed to archive tags: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDiscoveredTags:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_249340000, a2, a3, "Failed to archive discovered tags: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end