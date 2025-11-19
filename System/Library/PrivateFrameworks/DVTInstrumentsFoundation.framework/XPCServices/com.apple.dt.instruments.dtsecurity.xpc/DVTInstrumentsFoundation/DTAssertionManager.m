@interface DTAssertionManager
+ (id)sharedInstance;
+ (void)defaultAssertionFactories:(id *)a3 andDisableKeys:(id *)a4;
- (DTAssertionManager)init;
- (DTAssertionManager)initWithAssertionFactories:(id)a3 andDisableKeys:(id)a4;
- (void)removeAssertionsForPid:(int)a3 onBehalfOfClient:(id)a4;
- (void)removeClaimsHeldByClient:(id)a3;
- (void)takeAssertionsForPid:(int)a3 onBehalfOfClient:(id)a4 withOptions:(id)a5;
@end

@implementation DTAssertionManager

+ (void)defaultAssertionFactories:(id *)a3 andDisableKeys:(id *)a4
{
  if (qword_100021C00 == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100013144();
  if (a3)
  {
LABEL_3:
    *a3 = qword_100021C08;
  }

LABEL_4:
  if (a4)
  {
    *a4 = qword_100021C10;
  }
}

+ (id)sharedInstance
{
  if (qword_100021C18 != -1)
  {
    sub_100013158();
  }

  v3 = qword_100021C20;

  return v3;
}

- (DTAssertionManager)init
{
  v7 = 0;
  v8 = 0;
  [DTAssertionManager defaultAssertionFactories:&v8 andDisableKeys:&v7];
  v3 = v8;
  v4 = v7;
  v5 = [(DTAssertionManager *)self initWithAssertionFactories:v3 andDisableKeys:v4];

  return v5;
}

- (DTAssertionManager)initWithAssertionFactories:(id)a3 andDisableKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = DTAssertionManager;
  v8 = [(DTAssertionManager *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    assertionFactories = v8->_assertionFactories;
    v8->_assertionFactories = v9;

    v11 = [v7 copy];
    disableKeys = v8->_disableKeys;
    v8->_disableKeys = v11;

    v13 = dispatch_queue_create("DTAssertionManager", 0);
    guard = v8->_guard;
    v8->_guard = v13;

    v15 = objc_opt_new();
    pidInfosByPid = v8->_pidInfosByPid;
    v8->_pidInfosByPid = v15;
  }

  return v8;
}

- (void)takeAssertionsForPid:(int)a3 onBehalfOfClient:(id)a4 withOptions:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    guard = self->_guard;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000C964;
    v11[3] = &unk_10001D668;
    v14 = a3;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    dispatch_sync(guard, v11);
  }
}

- (void)removeAssertionsForPid:(int)a3 onBehalfOfClient:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    guard = self->_guard;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CE18;
    block[3] = &unk_10001D768;
    v11 = a3;
    block[4] = self;
    v10 = v6;
    dispatch_sync(guard, block);
  }
}

- (void)removeClaimsHeldByClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    guard = self->_guard;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000CF68;
    v7[3] = &unk_10001D7B8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(guard, v7);
  }
}

@end