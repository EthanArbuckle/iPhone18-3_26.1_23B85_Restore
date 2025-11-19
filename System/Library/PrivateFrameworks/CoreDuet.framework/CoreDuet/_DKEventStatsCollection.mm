@interface _DKEventStatsCollection
+ (id)collectionWithName:(uint64_t)a1;
+ (id)counterWithClass:(void *)a3 collectionName:(void *)a4 eventName:(void *)a5 eventType:(void *)a6 eventTypePossibleValues:(char)a7 hasResult:(int)a8 scalar:;
- (void)initWithName:(void *)a1;
@end

@implementation _DKEventStatsCollection

+ (id)collectionWithName:(uint64_t)a1
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

+ (id)counterWithClass:(void *)a3 collectionName:(void *)a4 eventName:(void *)a5 eventType:(void *)a6 eventTypePossibleValues:(char)a7 hasResult:(int)a8 scalar:
{
  v25[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = objc_opt_self();
  v18 = [(_DKEventStatsCollection *)v17 collectionWithName:v13];
  objc_sync_enter(v18);
  if (v15)
  {
    v25[0] = v14;
    v25[1] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  }

  else
  {
    v19 = v14;
  }

  v20 = v19;
  v21 = [(_DKSyncDeletedEventIDs *)v18 deletedEventIDsForSourceDeviceID:v19];
  if (!v21)
  {
    v21 = objc_opt_new();
    v22 = [[_DKEventStatsCounterInternal alloc] initWithCollectionName:v13 eventName:v14 eventType:v15 eventTypePossibleValues:v16 hasResult:a7 scalar:a8];
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

- (void)initWithName:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _DKEventStatsCollection;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = objc_opt_new();
      v7 = a1[1];
      a1[1] = v6;
    }
  }

  return a1;
}

@end