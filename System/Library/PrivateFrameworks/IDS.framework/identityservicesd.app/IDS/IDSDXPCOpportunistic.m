@interface IDSDXPCOpportunistic
- (IDSDXPCOpportunistic)initWithQueue:(id)a3 connection:(id)a4 opportunisticCache:(id)a5;
- (void)copyOpportunisticCacheWithBlock:(id)a3;
@end

@implementation IDSDXPCOpportunistic

- (IDSDXPCOpportunistic)initWithQueue:(id)a3 connection:(id)a4 opportunisticCache:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = IDSDXPCOpportunistic;
  v10 = [(IDSDXPCOpportunistic *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, a4);
    objc_storeStrong(&v11->_opportunisticCache, a5);
  }

  return v11;
}

- (void)copyOpportunisticCacheWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCOpportunistic *)self connection];
  v6 = [v5 hasEntitlement:kIDSTestToolEntitlement];

  if (v6)
  {
    v7 = [(IDSDXPCOpportunistic *)self opportunisticCache];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10036D7E0;
    v9[3] = &unk_100BD94B8;
    v9[4] = self;
    v10 = v4;
    [v7 copyCacheWithBlock:v9];
  }

  else
  {
    v8 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1009181D0(self, v8);
    }

    (*(v4 + 2))(v4, &__NSDictionary0__struct);
  }
}

@end