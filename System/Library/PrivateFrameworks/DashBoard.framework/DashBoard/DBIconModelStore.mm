@interface DBIconModelStore
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (BOOL)saveDesiredIconState:(id)state error:(id *)error;
- (DBIconModelStore)initWithVehicleId:(id)id;
- (id)_iconListsByFlatteningPages:(id)pages;
- (id)loadCurrentIconState:(id *)state;
@end

@implementation DBIconModelStore

- (DBIconModelStore)initWithVehicleId:(id)id
{
  v4 = MEMORY[0x277CCAA00];
  idCopy = id;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager URLsForDirectory:5 inDomains:1];
  firstObject = [v7 firstObject];

  v9 = [firstObject URLByAppendingPathComponent:@"SpringBoard" isDirectory:1];
  idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-CarDisplayIconState.plist", idCopy];
  idCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-CarDisplayDesiredIconState.plist", idCopy];

  v12 = [v9 URLByAppendingPathComponent:idCopy];
  v13 = [v9 URLByAppendingPathComponent:idCopy2];
  v16.receiver = self;
  v16.super_class = DBIconModelStore;
  v14 = [(SBIconModelPropertyListFileStore *)&v16 initWithIconStateURL:v12 desiredIconStateURL:v13];

  return v14;
}

- (id)loadCurrentIconState:(id *)state
{
  v11.receiver = self;
  v11.super_class = DBIconModelStore;
  v4 = [(SBIconModelPropertyListFileStore *)&v11 loadCurrentIconState:state];
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

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  v6 = MEMORY[0x277CBEB38];
  stateCopy = state;
  v8 = [v6 dictionaryWithDictionary:stateCopy];
  v9 = [stateCopy objectForKeyedSubscript:@"iconLists"];

  v10 = [(DBIconModelStore *)self _iconListsByFlatteningPages:v9];
  [v8 setObject:v10 forKeyedSubscript:@"iconLists"];

  v12.receiver = self;
  v12.super_class = DBIconModelStore;
  LOBYTE(error) = [(SBIconModelPropertyListFileStore *)&v12 saveCurrentIconState:v8 error:error];

  return error;
}

- (BOOL)saveDesiredIconState:(id)state error:(id *)error
{
  v6 = MEMORY[0x277CBEB38];
  stateCopy = state;
  v8 = [v6 dictionaryWithDictionary:stateCopy];
  v9 = [stateCopy objectForKeyedSubscript:@"iconLists"];

  v10 = [(DBIconModelStore *)self _iconListsByFlatteningPages:v9];
  [v8 setObject:v10 forKeyedSubscript:@"iconLists"];

  v12.receiver = self;
  v12.super_class = DBIconModelStore;
  LOBYTE(error) = [(SBIconModelPropertyListFileStore *)&v12 saveDesiredIconState:v8 error:error];

  return error;
}

- (id)_iconListsByFlatteningPages:(id)pages
{
  v34 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  lastObject = [pagesCopy lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = pagesCopy;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = pagesCopy;
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

                [array addObject:*(*(&v21 + 1) + 8 * j)];
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
      v31 = array;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Flattened pages to %@", buf, 0xCu);
    }

    v29 = array;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  }

  return v6;
}

@end