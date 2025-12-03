@interface EMIMAPSyncError
- (EMIMAPSyncError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (NSDictionary)userInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMIMAPSyncError

- (NSDictionary)userInfo
{
  selfCopy = self;
  EMIMAPSyncError.userInfo.getter();

  v3 = sub_1C672580C();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  EMIMAPSyncError.encode(with:)(coderCopy);
}

- (EMIMAPSyncError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  if (info)
  {
    sub_1C672581C();
    v8 = (self + OBJC_IVAR___EMIMAPSyncError__underlying);
    *v8 = 0u;
    v8[1] = 0u;
    domainCopy = domain;
    v10 = sub_1C672580C();
  }

  else
  {
    v11 = (self + OBJC_IVAR___EMIMAPSyncError__underlying);
    *v11 = 0u;
    v11[1] = 0u;
    domainCopy2 = domain;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = EMIMAPSyncError;
  v13 = [(EMIMAPSyncError *)&v15 initWithDomain:domain code:code userInfo:v10];

  return v13;
}

@end