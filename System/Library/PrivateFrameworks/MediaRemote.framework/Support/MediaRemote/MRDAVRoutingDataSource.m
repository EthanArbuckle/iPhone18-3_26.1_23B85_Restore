@interface MRDAVRoutingDataSource
+ (MRDAVRoutingDataSource)allocWithZone:(_NSZone *)a3;
- (MRDAVRoutingDataSource)init;
- (NSArray)pickedRoutes;
- (id)authorizationRequestCallbackForRouteID:(id)a3;
- (void)addAuthorizationCallbackForRouteID:(id)a3 requestCallback:(id)a4;
- (void)removeAuthorizationCallbackForRouteID:(id)a3;
@end

@implementation MRDAVRoutingDataSource

+ (MRDAVRoutingDataSource)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(MRDAVRoutingDataSource *)MRDMediaServerAVRoutingDataSource allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MRDAVRoutingDataSource;
    return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
  }
}

- (MRDAVRoutingDataSource)init
{
  v7.receiver = self;
  v7.super_class = MRDAVRoutingDataSource;
  v2 = [(MRDAVRoutingDataSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MRDAVRoutingDataSource.serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

- (NSArray)pickedRoutes
{
  v2 = [(MRDAVRoutingDataSource *)self pickedRoute];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAuthorizationCallbackForRouteID:(id)a3 requestCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067E1C;
  block[3] = &unk_1004B8190;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(serialQueue, block);
}

- (void)removeAuthorizationCallbackForRouteID:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067F78;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (id)authorizationRequestCallbackForRouteID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100034FE0;
  v16 = sub_1000359B4;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068098;
  block[3] = &unk_1004B7798;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end