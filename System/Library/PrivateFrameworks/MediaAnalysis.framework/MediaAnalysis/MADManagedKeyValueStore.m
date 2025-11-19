@interface MADManagedKeyValueStore
+ (id)fetchKeyValueStoreByKey:(id)a3 managedObjectContext:(id)a4;
+ (id)fetchOrCreateKeyValueStoreByKey:(id)a3 managedObjectContext:(id)a4;
@end

@implementation MADManagedKeyValueStore

+ (id)fetchKeyValueStoreByKey:(id)a3 managedObjectContext:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[MADManagedKeyValueStore fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [objc_opt_class() keyColumnName];
  v10 = [v8 predicateWithFormat:@"%K == %@", v9, v6];

  [v7 setPredicate:v10];
  [v7 setFetchLimit:1];
  v15 = 0;
  v11 = [v5 executeFetchRequest:v7 error:&v15];

  v12 = v15;
  if (v12)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|KeyValueStore] Failed to fetch key value store: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v13 = [v11 firstObject];
  }

  return v13;
}

+ (id)fetchOrCreateKeyValueStoreByKey:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() fetchKeyValueStoreByKey:v5 managedObjectContext:v6];
  if (!v7)
  {
    v7 = [[MADManagedKeyValueStore alloc] initWithContext:v6];
    [(MADManagedKeyValueStore *)v7 setKey:v5];
  }

  v8 = v7;

  return v8;
}

@end