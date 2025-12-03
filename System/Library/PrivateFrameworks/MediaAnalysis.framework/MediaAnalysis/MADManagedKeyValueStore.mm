@interface MADManagedKeyValueStore
+ (id)fetchKeyValueStoreByKey:(id)key managedObjectContext:(id)context;
+ (id)fetchOrCreateKeyValueStoreByKey:(id)key managedObjectContext:(id)context;
@end

@implementation MADManagedKeyValueStore

+ (id)fetchKeyValueStoreByKey:(id)key managedObjectContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  keyCopy = key;
  v7 = +[MADManagedKeyValueStore fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  keyColumnName = [objc_opt_class() keyColumnName];
  keyCopy = [v8 predicateWithFormat:@"%K == %@", keyColumnName, keyCopy];

  [v7 setPredicate:keyCopy];
  [v7 setFetchLimit:1];
  v15 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v15];

  v12 = v15;
  if (v12)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|KeyValueStore] Failed to fetch key value store: %@", buf, 0xCu);
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v11 firstObject];
  }

  return firstObject;
}

+ (id)fetchOrCreateKeyValueStoreByKey:(id)key managedObjectContext:(id)context
{
  keyCopy = key;
  contextCopy = context;
  v7 = [objc_opt_class() fetchKeyValueStoreByKey:keyCopy managedObjectContext:contextCopy];
  if (!v7)
  {
    v7 = [[MADManagedKeyValueStore alloc] initWithContext:contextCopy];
    [(MADManagedKeyValueStore *)v7 setKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

@end