@interface VCPClientManager
+ (id)sharedManager;
- (VCPClientManager)init;
- (void)addClientHandler:(id)a3;
- (void)removeClientHandler:(id)a3;
@end

@implementation VCPClientManager

+ (id)sharedManager
{
  if (qword_1002B80F0 != -1)
  {
    sub_100003468();
  }

  v3 = qword_1002B80E8;

  return v3;
}

- (VCPClientManager)init
{
  v8.receiver = self;
  v8.super_class = VCPClientManager;
  v2 = [(VCPClientManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysisd.VCPClientManager", 0);
    managementQueue = v2->_managementQueue;
    v2->_managementQueue = v3;

    v5 = +[NSMutableSet set];
    clientHandlers = v2->_clientHandlers;
    v2->_clientHandlers = v5;
  }

  return v2;
}

- (void)addClientHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    managementQueue = self->_managementQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100018A3C;
    v7[3] = &unk_100282F50;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(managementQueue, v7);
  }
}

- (void)removeClientHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    managementQueue = self->_managementQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100018BBC;
    v7[3] = &unk_100282F50;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(managementQueue, v7);
  }
}

@end