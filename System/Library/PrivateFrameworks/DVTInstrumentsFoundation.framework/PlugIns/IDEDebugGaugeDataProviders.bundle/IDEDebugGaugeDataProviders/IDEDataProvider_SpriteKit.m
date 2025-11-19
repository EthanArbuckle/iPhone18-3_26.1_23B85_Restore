@interface IDEDataProvider_SpriteKit
+ (id)sharedDataProvider;
- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5;
- (IDEDataProvider_SpriteKit)init;
- (id)captureAttributes:(id)a3 forPIDs:(id)a4;
- (id)startSamplingForPIDs:(id)a3;
- (id)stopSamplingForPIDs:(id)a3;
- (id)supportedAttributes;
@end

@implementation IDEDataProvider_SpriteKit

+ (id)sharedDataProvider
{
  if (qword_151F0 != -1)
  {
    sub_8094();
  }

  v3 = qword_151E8;

  return v3;
}

- (IDEDataProvider_SpriteKit)init
{
  v8.receiver = self;
  v8.super_class = IDEDataProvider_SpriteKit;
  v2 = [(IDEDataProvider_SpriteKit *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    collectionStartedForPidDictionary = v2->_collectionStartedForPidDictionary;
    v2->_collectionStartedForPidDictionary = v3;

    v5 = dispatch_queue_create("Lock to protect multithread access during capturing", 0);
    capture_lock = v2->_capture_lock;
    v2->_capture_lock = v5;
  }

  return v2;
}

- (id)supportedAttributes
{
  if (qword_15200 != -1)
  {
    sub_80A8();
  }

  v3 = qword_151F8;

  return v3;
}

- (id)startSamplingForPIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  capture_lock = self->_capture_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12C8;
  block[3] = &unk_10470;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  dispatch_sync(capture_lock, block);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5
{
  v5 = [(NSMutableDictionary *)self->_collectionStartedForPidDictionary objectForKey:a5, a4];
  [v5 BOOLValue];

  return 0;
}

- (id)stopSamplingForPIDs:(id)a3
{
  v4 = a3;
  capture_lock = self->_capture_lock;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1530;
  v9[3] = &unk_10498;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(capture_lock, v9);
  v7 = v6;

  return v6;
}

- (id)captureAttributes:(id)a3 forPIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  capture_lock = self->_capture_lock;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_17B0;
  v16[3] = &unk_104C0;
  v17 = v7;
  v18 = self;
  v19 = v6;
  v10 = v8;
  v20 = v10;
  v11 = v6;
  v12 = v7;
  dispatch_sync(capture_lock, v16);
  v13 = v20;
  v14 = v10;

  return v10;
}

@end