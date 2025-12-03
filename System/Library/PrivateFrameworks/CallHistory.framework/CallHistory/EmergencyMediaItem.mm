@interface EmergencyMediaItem
+ (id)managedEmergencyMediaItemForEmergencyMediaItem:(id)item inManagedObjectContext:(id)context;
+ (id)managedEmergencyMediaItemsForEmergencyMediaItems:(id)items inManagedObjectContext:(id)context;
- (CHEmergencyMediaItem)chEmergencyMediaItem;
- (id)copyWithContext:(id)context;
@end

@implementation EmergencyMediaItem

+ (id)managedEmergencyMediaItemForEmergencyMediaItem:(id)item inManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v10 = [entitiesByName objectForKeyedSubscript:@"EmergencyMediaItem"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v13 = ch_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = @"EmergencyMediaItem";
        v19 = 2114;
        v20 = contextCopy;
        _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %{public}@ in managed object context %{public}@. Falling back to convenience initializer.", &v17, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
    }

    v12 = v11;
    assetId = [itemCopy assetId];
    [v12 setAssetId:assetId];

    [v12 setEmergencyMediaType:{objc_msgSend(itemCopy, "emergencyMediaType")}];
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)managedEmergencyMediaItemsForEmergencyMediaItems:(id)items inManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  contextCopy = context;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self managedEmergencyMediaItemForEmergencyMediaItem:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:{contextCopy, v18}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (CHEmergencyMediaItem)chEmergencyMediaItem
{
  assetId = [(EmergencyMediaItem *)self assetId];

  if (assetId)
  {
    v4 = [CHEmergencyMediaItem alloc];
    assetId2 = [(EmergencyMediaItem *)self assetId];
    v6 = [(CHEmergencyMediaItem *)v4 initWithAssetId:assetId2 mediaType:[(EmergencyMediaItem *)self emergencyMediaType]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [DBManager entityDescriptionHavingName:@"EmergencyMediaItem" forContext:contextCopy];
  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithEntity:v5 insertIntoManagedObjectContext:contextCopy];
  }

  else
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"EmergencyMediaItem"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EmergencyMediaItem(Additions) *)contextCopy copyWithContext:v8];
    }

    v6 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
  }

  v9 = v6;
  assetId = [(EmergencyMediaItem *)self assetId];
  [v9 setAssetId:assetId];

  [v9 setEmergencyMediaType:{-[EmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")}];
  return v9;
}

@end