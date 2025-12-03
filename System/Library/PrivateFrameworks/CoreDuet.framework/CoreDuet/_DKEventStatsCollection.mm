@interface _DKEventStatsCollection
+ (id)collectionWithName:(uint64_t)name;
+ (id)counterWithClass:(void *)class collectionName:(void *)name eventName:(void *)eventName eventType:(void *)type eventTypePossibleValues:(char)values hasResult:(int)result scalar:;
- (void)initWithName:(void *)name;
@end

@implementation _DKEventStatsCollection

+ (id)collectionWithName:(uint64_t)name
{
  v2 = a2;
  v3 = objc_opt_self();
  if (collectionWithName__initialized != -1)
  {
    +[_DKEventStatsCollection collectionWithName:];
  }

  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = v2;
  v6 = [_DKEventStatsCollections objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [(_DKEventStatsCollection *)[v3 alloc] initWithName:v5];
    [_DKEventStatsCollections setObject:v6 forKeyedSubscript:v5];
  }

  objc_sync_exit(v4);

  return v6;
}

+ (id)counterWithClass:(void *)class collectionName:(void *)name eventName:(void *)eventName eventType:(void *)type eventTypePossibleValues:(char)values hasResult:(int)result scalar:
{
  v25[2] = *MEMORY[0x1E69E9840];
  classCopy = class;
  nameCopy = name;
  eventNameCopy = eventName;
  typeCopy = type;
  v17 = objc_opt_self();
  v18 = [(_DKEventStatsCollection *)v17 collectionWithName:classCopy];
  objc_sync_enter(v18);
  if (eventNameCopy)
  {
    v25[0] = nameCopy;
    v25[1] = eventNameCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  }

  else
  {
    v19 = nameCopy;
  }

  v20 = v19;
  v21 = [(_DKSyncDeletedEventIDs *)v18 deletedEventIDsForSourceDeviceID:v19];
  if (!v21)
  {
    v21 = objc_opt_new();
    v22 = [[_DKEventStatsCounterInternal alloc] initWithCollectionName:classCopy eventName:nameCopy eventType:eventNameCopy eventTypePossibleValues:typeCopy hasResult:values scalar:result];
    [v21 setInternal:v22];
    if (v18)
    {
      [v18[1] setObject:v21 forKeyedSubscript:v20];
    }
  }

  objc_sync_exit(v18);
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)initWithName:(void *)name
{
  v4 = a2;
  if (name)
  {
    v9.receiver = name;
    v9.super_class = _DKEventStatsCollection;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    name = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = objc_opt_new();
      v7 = name[1];
      name[1] = v6;
    }
  }

  return name;
}

@end