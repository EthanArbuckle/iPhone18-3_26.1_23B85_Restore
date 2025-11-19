@interface CPLCloudKitSimpleCache
- (CPLCloudKitSimpleCache)initWithLeewayInterval:(double)a3 maximumCapacity:(unint64_t)a4;
- (NSString)status;
- (id)objectForKey:(id)a3 date:(id)a4 expirationDate:(id *)a5;
- (unint64_t)_expiredCountLockedWithDate:(id)a3;
- (unint64_t)count;
- (unint64_t)expiredCountWithDate:(id)a3;
- (unint64_t)hitCount;
- (unint64_t)missCount;
- (void)_removeExpiredEntriesLockedForNow:(id)a3;
- (void)_removeFirstEntriesCount:(unint64_t)a3;
- (void)clear;
- (void)setObject:(id)a3 forKey:(id)a4 expirationDate:(id)a5 date:(id)a6;
@end

@implementation CPLCloudKitSimpleCache

- (CPLCloudKitSimpleCache)initWithLeewayInterval:(double)a3 maximumCapacity:(unint64_t)a4
{
  v16.receiver = self;
  v16.super_class = CPLCloudKitSimpleCache;
  v6 = [(CPLCloudKitSimpleCache *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_leewayInterval = a3;
    v6->_maximumCapacity = a4;
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.cloudkit.simplecache", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = CFDictionaryCreateMutable(0, v7->_maximumCapacity, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    storage = v7->_storage;
    v7->_storage = v11;

    v13 = objc_alloc_init(NSMutableArray);
    orderedEntries = v7->_orderedEntries;
    v7->_orderedEntries = v13;
  }

  return v7;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A58FC;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)_expiredCountLockedWithDate:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  storage = self->_storage;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A5A20;
  v9[3] = &unk_100276AB8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [(NSMutableDictionary *)storage enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (unint64_t)expiredCountWithDate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5B38;
  block[3] = &unk_1002733F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)hitCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A5C1C;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)missCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A5CDC;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_removeExpiredEntriesLockedForNow:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMutableDictionary *)self->_storage allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:v11];
        if ([v12 isExpiredForNow:v4 withLeeway:self->_leewayInterval])
        {
          [(NSMutableDictionary *)self->_storage removeObjectForKey:v11];
          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);

    if (v8)
    {
      v13 = [(NSMutableDictionary *)self->_storage allValues];
      v14 = [v13 mutableCopy];
      orderedEntries = self->_orderedEntries;
      self->_orderedEntries = v14;

      [(NSMutableArray *)self->_orderedEntries sortUsingSelector:"compare:"];
    }
  }

  else
  {
  }
}

- (void)_removeFirstEntriesCount:(unint64_t)a3
{
  orderedEntries = self->_orderedEntries;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A5F08;
  v6[3] = &unk_100276AE0;
  v6[4] = self;
  v6[5] = a3;
  [(NSMutableArray *)orderedEntries enumerateObjectsUsingBlock:v6];
  [(NSMutableArray *)self->_orderedEntries removeObjectsInRange:0, a3];
}

- (id)objectForKey:(id)a3 date:(id)a4 expirationDate:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100004500;
  v30 = sub_100005364;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004500;
  v24 = sub_100005364;
  v25 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6114;
  block[3] = &unk_100276B08;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = &v26;
  v19 = &v20;
  v11 = v9;
  v12 = v8;
  dispatch_sync(queue, block);
  *a5 = v21[5];
  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (void)setObject:(id)a3 forKey:(id)a4 expirationDate:(id)a5 date:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_maximumCapacity)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A6304;
    block[3] = &unk_100272218;
    v16 = v11;
    v17 = v10;
    v18 = v12;
    v19 = v13;
    v20 = self;
    dispatch_sync(queue, block);
  }
}

- (void)clear
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6524;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (NSString)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004500;
  v10 = sub_100005364;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A6658;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end