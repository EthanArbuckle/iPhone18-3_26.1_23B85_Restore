@interface _DKSourceMOConverter
+ (id)insertSource:(id)a3 inManagedObjectContext:(id)a4;
+ (id)sourceFromManagedObject:(id)a3;
@end

@implementation _DKSourceMOConverter

+ (id)sourceFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = [_DKSource alloc];
  v5 = [v3 sourceID];
  v6 = [v3 bundleID];
  v7 = [v3 itemID];
  v8 = [v3 groupID];
  v9 = [v3 deviceID];
  v10 = [v3 userID];
  v11 = [v3 intentID];

  v12 = [(_DKSource *)v4 initWithIdentifier:v5 bundleIdentifier:v6 itemIdentifier:v7 groupIdentifier:v8 deviceIdentifier:v9 userIdentifier:v10 intentIdentifier:v11];

  return v12;
}

+ (id)insertSource:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = MEMORY[0x1E695D5B8];
  v6 = a4;
  v7 = a3;
  v8 = +[_DKSource entityName];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

  v10 = [v7 sourceID];
  [v9 setSourceID:v10];

  v11 = [v7 bundleID];
  [v9 setBundleID:v11];

  v12 = [v7 itemID];
  [v9 setItemID:v12];

  v13 = [v7 groupID];
  [v9 setGroupID:v13];

  v14 = [v7 deviceID];
  [v9 setDeviceID:v14];

  v15 = [v7 userID];
  [v9 setUserID:v15];

  v16 = [v7 intentID];

  [v9 setIntentID:v16];

  return v9;
}

@end