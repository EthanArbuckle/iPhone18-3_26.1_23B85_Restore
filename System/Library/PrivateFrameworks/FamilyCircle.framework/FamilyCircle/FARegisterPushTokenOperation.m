@interface FARegisterPushTokenOperation
- (FARegisterPushTokenOperation)initWithNetworkService:(id)a3 pushToken:(id)a4;
- (id)pushTokenString;
- (id)registerToken;
@end

@implementation FARegisterPushTokenOperation

- (FARegisterPushTokenOperation)initWithNetworkService:(id)a3 pushToken:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FARegisterPushTokenOperation;
  v8 = [(FANetworkClient *)&v11 initWithNetworkService:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pushToken, a4);
  }

  return v9;
}

- (id)pushTokenString
{
  v3 = [NSMutableString stringWithCapacity:64];
  v4 = [(NSData *)self->_pushToken length];
  v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
  [(NSData *)self->_pushToken getBytes:v5 length:v4];
  if (v4)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v3 appendFormat:@"%02.2hhX", v7];
      --v4;
    }

    while (v4);
  }

  free(v5);
  v8 = [v3 lowercaseString];

  return v8;
}

- (id)registerToken
{
  v3 = [(FANetworkClient *)self networkService];
  v4 = [v3 ensureDeviceUnlockedSinceBoot];
  v5 = [v4 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100021BD8;
  v16[3] = &unk_1000A5F78;
  v16[4] = self;
  v6 = (v5)[2](v5, v16);
  v7 = [v6 then];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021C28;
  v15[3] = &unk_1000A6770;
  v15[4] = self;
  v8 = (v7)[2](v7, v15);
  v9 = [v8 then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100021CF8;
  v14[3] = &unk_1000A67C0;
  v14[4] = self;
  v10 = (v9)[2](v9, v14);
  v11 = [v10 then];
  v12 = (v11)[2](v11, &stru_1000A75C8);

  return v12;
}

@end