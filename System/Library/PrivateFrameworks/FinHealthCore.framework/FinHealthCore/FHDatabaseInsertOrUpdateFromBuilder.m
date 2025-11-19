@interface FHDatabaseInsertOrUpdateFromBuilder
+ (id)initWithBuilder:(id)a3;
- (id)_init:(id)a3;
@end

@implementation FHDatabaseInsertOrUpdateFromBuilder

+ (id)initWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  v5 = [[FHDatabaseInsertOrUpdateFromBuilder alloc] _init:v4];

  return v5;
}

- (id)_init:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FHDatabaseInsertOrUpdateFromBuilder;
  v5 = [(FHDatabaseInsertOrUpdateFromBuilder *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 dynamicFieldValuePairList];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v16 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v12 = [v6 copy];
    fieldValuePairList = v5->_fieldValuePairList;
    v5->_fieldValuePairList = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

@end