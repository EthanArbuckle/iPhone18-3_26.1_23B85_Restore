@interface IXSRevertManager
+ (void)revertAppWithIdentity:(id)a3 forClientWithName:(id)a4 completion:(id)a5;
- (IXSRevertManager)init;
- (id)_acquireTerminationAssertionForIdentity:(id)a3 withError:(id *)a4;
- (void)_revertAppWithIdentity:(id)a3 forClientWithName:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)setTerminationAssertion:(id)a3;
@end

@implementation IXSRevertManager

- (IXSRevertManager)init
{
  v7.receiver = self;
  v7.super_class = IXSRevertManager;
  v2 = [(IXSRevertManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordination.revertManager", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;
  }

  return v2;
}

- (void)setTerminationAssertion:(id)a3
{
  v5 = a3;
  v6 = [(IXSRevertManager *)self internalQueue];
  dispatch_assert_queue_V2(v6);

  terminationAssertion = self->_terminationAssertion;
  if (v5 && terminationAssertion == v5)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100097A68();
    }
  }

  else
  {
    if (terminationAssertion)
    {
      [(IXTerminationAssertion *)terminationAssertion invalidate];
    }

    objc_storeStrong(&self->_terminationAssertion, a3);
  }
}

- (id)_acquireTerminationAssertionForIdentity:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = [NSString stringWithFormat:@"IX terminating appIdentity for reverting %@", v5];

  v8 = [IXTerminationAssertion alloc];
  v9 = [NSSet setWithObject:v6];
  v17 = 0;
  v10 = [(IXTerminationAssertion *)v8 initForBundleIDs:v9 description:v7 terminationResistance:50 error:&v17];
  v11 = v17;

  if (v10)
  {
    v16 = v11;
    v12 = [v10 acquireAssertion:&v16];
    v13 = v16;

    if (v12)
    {
      goto LABEL_7;
    }

    [v10 invalidate];

    if (!a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = v11;
    if (!a4)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  v14 = v13;
  v10 = 0;
  *a4 = v13;
LABEL_7:

  return v10;
}

- (void)_revertAppWithIdentity:(id)a3 forClientWithName:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  +[IXSCoordinatorManager sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005E5C;
  v13 = v12[3] = &unk_1001010C8;
  v14 = v7;
  v15 = self;
  v16 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v13;
  [v11 performCreationBlockingOperation:v12];
}

+ (void)revertAppWithIdentity:(id)a3 forClientWithName:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(IXSRevertManager);
  [(IXSRevertManager *)v10 _revertAppWithIdentity:v9 forClientWithName:v8 completion:v7];
}

- (void)dealloc
{
  v3 = [(IXSRevertManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006334;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = IXSRevertManager;
  [(IXSRevertManager *)&v4 dealloc];
}

@end