@interface IDSDXPCOpportunistic
- (IDSDXPCOpportunistic)initWithQueue:(id)queue connection:(id)connection opportunisticCache:(id)cache;
- (void)copyOpportunisticCacheWithBlock:(id)block;
@end

@implementation IDSDXPCOpportunistic

- (IDSDXPCOpportunistic)initWithQueue:(id)queue connection:(id)connection opportunisticCache:(id)cache
{
  connectionCopy = connection;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = IDSDXPCOpportunistic;
  v10 = [(IDSDXPCOpportunistic *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, connection);
    objc_storeStrong(&v11->_opportunisticCache, cache);
  }

  return v11;
}

- (void)copyOpportunisticCacheWithBlock:(id)block
{
  blockCopy = block;
  connection = [(IDSDXPCOpportunistic *)self connection];
  v6 = [connection hasEntitlement:kIDSTestToolEntitlement];

  if (v6)
  {
    opportunisticCache = [(IDSDXPCOpportunistic *)self opportunisticCache];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10036D7E0;
    v9[3] = &unk_100BD94B8;
    v9[4] = self;
    v10 = blockCopy;
    [opportunisticCache copyCacheWithBlock:v9];
  }

  else
  {
    v8 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1009181D0(self, v8);
    }

    (*(blockCopy + 2))(blockCopy, &__NSDictionary0__struct);
  }
}

@end