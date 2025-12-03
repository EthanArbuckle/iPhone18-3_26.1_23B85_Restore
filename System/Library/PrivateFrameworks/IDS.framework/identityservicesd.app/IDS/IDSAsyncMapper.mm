@interface IDSAsyncMapper
+ (void)mapArray:(id)array onQueue:(id)queue withBlock:(id)block completion:(id)completion onQueue:(id)onQueue;
+ (void)mapArray:(id)array withBlock:(id)block completion:(id)completion onQueue:(id)queue;
+ (void)mapDictionary:(id)dictionary onQueue:(id)queue withBlock:(id)block completion:(id)completion onQueue:(id)onQueue;
+ (void)mapDictionary:(id)dictionary withBlock:(id)block completion:(id)completion onQueue:(id)queue;
@end

@implementation IDSAsyncMapper

+ (void)mapArray:(id)array withBlock:(id)block completion:(id)completion onQueue:(id)queue
{
  queueCopy = queue;
  completionCopy = completion;
  blockCopy = block;
  arrayCopy = array;
  v14 = sub_1005B4778();
  [self mapArray:arrayCopy onQueue:v14 withBlock:blockCopy completion:completionCopy onQueue:queueCopy];
}

+ (void)mapArray:(id)array onQueue:(id)queue withBlock:(id)block completion:(id)completion onQueue:(id)onQueue
{
  arrayCopy = array;
  queueCopy = queue;
  blockCopy = block;
  completionCopy = completion;
  onQueueCopy = onQueue;
  if (queueCopy)
  {
    selfCopy = self;
    v17 = objc_alloc_init(NSMutableArray);
    v18 = objc_alloc_init(NSMutableDictionary);
    if ([arrayCopy count])
    {
      v19 = 0;
      do
      {
        v20 = +[NSNull null];
        [v17 addObject:v20];

        v21 = [arrayCopy objectAtIndexedSubscript:v19];
        v22 = [NSNumber numberWithUnsignedInteger:v19];
        [v18 setObject:v21 forKey:v22];

        ++v19;
      }

      while (v19 < [arrayCopy count]);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1005B4A0C;
    v28[3] = &unk_100BE0EF8;
    v29 = blockCopy;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005B4A24;
    v25[3] = &unk_100BD94B8;
    v26 = v17;
    v27 = completionCopy;
    v23 = v17;
    [selfCopy mapDictionary:v18 onQueue:queueCopy withBlock:v28 completion:v25 onQueue:onQueueCopy];
  }
}

+ (void)mapDictionary:(id)dictionary withBlock:(id)block completion:(id)completion onQueue:(id)queue
{
  queueCopy = queue;
  completionCopy = completion;
  blockCopy = block;
  dictionaryCopy = dictionary;
  v14 = sub_1005B4778();
  [self mapDictionary:dictionaryCopy onQueue:v14 withBlock:blockCopy completion:completionCopy onQueue:queueCopy];
}

+ (void)mapDictionary:(id)dictionary onQueue:(id)queue withBlock:(id)block completion:(id)completion onQueue:(id)onQueue
{
  dictionaryCopy = dictionary;
  queueCopy = queue;
  blockCopy = block;
  completionCopy = completion;
  onQueueCopy = onQueue;
  queueCopy2 = onQueueCopy;
  if (queueCopy)
  {
    queue = onQueueCopy;
    v30 = completionCopy;
    v16 = dispatch_group_create();
    v17 = objc_alloc_init(NSMutableDictionary);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = dictionaryCopy;
    v18 = dictionaryCopy;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          v24 = [v18 objectForKeyedSubscript:v23];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1005B4EF8;
          block[3] = &unk_100BE0F48;
          v25 = v16;
          v37 = v25;
          v42 = blockCopy;
          v38 = v23;
          v39 = v24;
          v26 = queueCopy;
          v40 = v26;
          v41 = v17;
          v27 = v24;
          dispatch_group_async(v25, v26, block);
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v20);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1005B5128;
    v33[3] = &unk_100BD7298;
    completionCopy = v30;
    v34 = v17;
    v35 = v30;
    v28 = v17;
    queueCopy2 = queue;
    dispatch_group_notify(v16, queue, v33);

    dictionaryCopy = v31;
  }
}

@end