@interface MRDAVRoutingDataSource
+ (MRDAVRoutingDataSource)allocWithZone:(_NSZone *)zone;
- (MRDAVRoutingDataSource)init;
- (NSArray)pickedRoutes;
- (id)authorizationRequestCallbackForRouteID:(id)d;
- (void)addAuthorizationCallbackForRouteID:(id)d requestCallback:(id)callback;
- (void)removeAuthorizationCallbackForRouteID:(id)d;
@end

@implementation MRDAVRoutingDataSource

+ (MRDAVRoutingDataSource)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MRDAVRoutingDataSource *)MRDMediaServerAVRoutingDataSource allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MRDAVRoutingDataSource;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
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
  pickedRoute = [(MRDAVRoutingDataSource *)self pickedRoute];
  v3 = pickedRoute;
  if (pickedRoute)
  {
    v6 = pickedRoute;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAuthorizationCallbackForRouteID:(id)d requestCallback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067E1C;
  block[3] = &unk_1004B8190;
  v12 = dCopy;
  v13 = callbackCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = callbackCopy;
  dispatch_sync(serialQueue, block);
}

- (void)removeAuthorizationCallbackForRouteID:(id)d
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067F78;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)authorizationRequestCallbackForRouteID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end