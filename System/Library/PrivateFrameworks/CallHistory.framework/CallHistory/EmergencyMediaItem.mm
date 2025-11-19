@interface EmergencyMediaItem
+ (id)managedEmergencyMediaItemForEmergencyMediaItem:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedEmergencyMediaItemsForEmergencyMediaItems:(id)a3 inManagedObjectContext:(id)a4;
- (CHEmergencyMediaItem)chEmergencyMediaItem;
- (id)copyWithContext:(id)a3;
@end

@implementation EmergencyMediaItem

+ (id)managedEmergencyMediaItemForEmergencyMediaItem:(id)a3 inManagedObjectContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 persistentStoreCoordinator];
  v8 = [v7 managedObjectModel];

  if (v8)
  {
    v9 = [v8 entitiesByName];
    v10 = [v9 objectForKeyedSubscript:@"EmergencyMediaItem"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:v6];
    }

    else
    {
      v13 = ch_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = @"EmergencyMediaItem";
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %{public}@ in managed object context %{public}@. Falling back to convenience initializer.", &v17, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:v6];
    }

    v12 = v11;
    v14 = [v5 assetId];
    [v12 setAssetId:v14];

    [v12 setEmergencyMediaType:{objc_msgSend(v5, "emergencyMediaType")}];
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)managedEmergencyMediaItemsForEmergencyMediaItems:(id)a3 inManagedObjectContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
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

        v14 = [a1 managedEmergencyMediaItemForEmergencyMediaItem:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:{v7, v18}];
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
  v3 = [(EmergencyMediaItem *)self assetId];

  if (v3)
  {
    v4 = [CHEmergencyMediaItem alloc];
    v5 = [(EmergencyMediaItem *)self assetId];
    v6 = [(CHEmergencyMediaItem *)v4 initWithAssetId:v5 mediaType:[(EmergencyMediaItem *)self emergencyMediaType]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = [DBManager entityDescriptionHavingName:@"EmergencyMediaItem" forContext:v4];
  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithEntity:v5 insertIntoManagedObjectContext:v4];
  }

  else
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"EmergencyMediaItem"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EmergencyMediaItem(Additions) *)v4 copyWithContext:v8];
    }

    v6 = [objc_alloc(objc_opt_class()) initWithContext:v4];
  }

  v9 = v6;
  v10 = [(EmergencyMediaItem *)self assetId];
  [v9 setAssetId:v10];

  [v9 setEmergencyMediaType:{-[EmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")}];
  return v9;
}

@end