@interface DBIconModelStore
- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4;
- (BOOL)saveDesiredIconState:(id)a3 error:(id *)a4;
- (DBIconModelStore)initWithVehicleId:(id)a3;
- (id)_iconListsByFlatteningPages:(id)a3;
- (id)loadCurrentIconState:(id *)a3;
@end

@implementation DBIconModelStore

- (DBIconModelStore)initWithVehicleId:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 URLsForDirectory:5 inDomains:1];
  v8 = [v7 firstObject];

  v9 = [v8 URLByAppendingPathComponent:@"SpringBoard" isDirectory:1];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-CarDisplayIconState.plist", v5];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-CarDisplayDesiredIconState.plist", v5];

  v12 = [v9 URLByAppendingPathComponent:v10];
  v13 = [v9 URLByAppendingPathComponent:v11];
  v16.receiver = self;
  v16.super_class = DBIconModelStore;
  v14 = [(SBIconModelPropertyListFileStore *)&v16 initWithIconStateURL:v12 desiredIconStateURL:v13];

  return v14;
}

- (id)loadCurrentIconState:(id *)a3
{
  v11.receiver = self;
  v11.super_class = DBIconModelStore;
  v4 = [(SBIconModelPropertyListFileStore *)&v11 loadCurrentIconState:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    v7 = [v6 objectForKeyedSubscript:@"iconLists"];
    v8 = [(DBIconModelStore *)self _iconListsByFlatteningPages:v7];
    [v6 setObject:v8 forKeyedSubscript:@"iconLists"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionaryWithDictionary:v7];
  v9 = [v7 objectForKeyedSubscript:@"iconLists"];

  v10 = [(DBIconModelStore *)self _iconListsByFlatteningPages:v9];
  [v8 setObject:v10 forKeyedSubscript:@"iconLists"];

  v12.receiver = self;
  v12.super_class = DBIconModelStore;
  LOBYTE(a4) = [(SBIconModelPropertyListFileStore *)&v12 saveCurrentIconState:v8 error:a4];

  return a4;
}

- (BOOL)saveDesiredIconState:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionaryWithDictionary:v7];
  v9 = [v7 objectForKeyedSubscript:@"iconLists"];

  v10 = [(DBIconModelStore *)self _iconListsByFlatteningPages:v9];
  [v8 setObject:v10 forKeyedSubscript:@"iconLists"];

  v12.receiver = self;
  v12.super_class = DBIconModelStore;
  LOBYTE(a4) = [(SBIconModelPropertyListFileStore *)&v12 saveDesiredIconState:v8 error:a4];

  return a4;
}

- (id)_iconListsByFlatteningPages:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [v7 addObject:*(*(&v21 + 1) + 8 * j)];
              }

              v16 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
            }

            while (v16);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v10);
    }

    v19 = DBLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Flattened pages to %@", buf, 0xCu);
    }

    v29 = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  }

  return v6;
}

@end