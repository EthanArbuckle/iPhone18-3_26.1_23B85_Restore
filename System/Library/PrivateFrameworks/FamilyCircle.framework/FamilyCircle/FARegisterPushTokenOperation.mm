@interface FARegisterPushTokenOperation
- (FARegisterPushTokenOperation)initWithNetworkService:(id)service pushToken:(id)token;
- (id)pushTokenString;
- (id)registerToken;
@end

@implementation FARegisterPushTokenOperation

- (FARegisterPushTokenOperation)initWithNetworkService:(id)service pushToken:(id)token
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = FARegisterPushTokenOperation;
  v8 = [(FANetworkClient *)&v11 initWithNetworkService:service];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pushToken, token);
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
  lowercaseString = [v3 lowercaseString];

  return lowercaseString;
}

- (id)registerToken
{
  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100021BD8;
  v16[3] = &unk_1000A5F78;
  v16[4] = self;
  v6 = (then)[2](then, v16);
  then2 = [v6 then];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021C28;
  v15[3] = &unk_1000A6770;
  v15[4] = self;
  v8 = (then2)[2](then2, v15);
  then3 = [v8 then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100021CF8;
  v14[3] = &unk_1000A67C0;
  v14[4] = self;
  v10 = (then3)[2](then3, v14);
  then4 = [v10 then];
  v12 = (then4)[2](then4, &stru_1000A75C8);

  return v12;
}

@end