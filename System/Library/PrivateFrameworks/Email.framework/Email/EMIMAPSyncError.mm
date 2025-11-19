@interface EMIMAPSyncError
- (EMIMAPSyncError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (NSDictionary)userInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMIMAPSyncError

- (NSDictionary)userInfo
{
  v2 = self;
  EMIMAPSyncError.userInfo.getter();

  v3 = sub_1C672580C();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  EMIMAPSyncError.encode(with:)(v4);
}

- (EMIMAPSyncError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  if (a5)
  {
    sub_1C672581C();
    v8 = (self + OBJC_IVAR___EMIMAPSyncError__underlying);
    *v8 = 0u;
    v8[1] = 0u;
    v9 = a3;
    v10 = sub_1C672580C();
  }

  else
  {
    v11 = (self + OBJC_IVAR___EMIMAPSyncError__underlying);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = a3;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = EMIMAPSyncError;
  v13 = [(EMIMAPSyncError *)&v15 initWithDomain:a3 code:a4 userInfo:v10];

  return v13;
}

@end