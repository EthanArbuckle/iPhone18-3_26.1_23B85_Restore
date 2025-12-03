@interface _DKSourceMOConverter
+ (id)insertSource:(id)source inManagedObjectContext:(id)context;
+ (id)sourceFromManagedObject:(id)object;
@end

@implementation _DKSourceMOConverter

+ (id)sourceFromManagedObject:(id)object
{
  objectCopy = object;
  v4 = [_DKSource alloc];
  sourceID = [objectCopy sourceID];
  bundleID = [objectCopy bundleID];
  itemID = [objectCopy itemID];
  groupID = [objectCopy groupID];
  deviceID = [objectCopy deviceID];
  userID = [objectCopy userID];
  intentID = [objectCopy intentID];

  v12 = [(_DKSource *)v4 initWithIdentifier:sourceID bundleIdentifier:bundleID itemIdentifier:itemID groupIdentifier:groupID deviceIdentifier:deviceID userIdentifier:userID intentIdentifier:intentID];

  return v12;
}

+ (id)insertSource:(id)source inManagedObjectContext:(id)context
{
  v5 = MEMORY[0x1E695D5B8];
  contextCopy = context;
  sourceCopy = source;
  v8 = +[_DKSource entityName];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:contextCopy];

  sourceID = [sourceCopy sourceID];
  [v9 setSourceID:sourceID];

  bundleID = [sourceCopy bundleID];
  [v9 setBundleID:bundleID];

  itemID = [sourceCopy itemID];
  [v9 setItemID:itemID];

  groupID = [sourceCopy groupID];
  [v9 setGroupID:groupID];

  deviceID = [sourceCopy deviceID];
  [v9 setDeviceID:deviceID];

  userID = [sourceCopy userID];
  [v9 setUserID:userID];

  intentID = [sourceCopy intentID];

  [v9 setIntentID:intentID];

  return v9;
}

@end