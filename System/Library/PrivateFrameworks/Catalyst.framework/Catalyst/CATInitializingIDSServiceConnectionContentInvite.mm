@interface CATInitializingIDSServiceConnectionContentInvite
+ (id)instanceWithDictionary:(id)dictionary;
- (CATInitializingIDSServiceConnectionContentInvite)initWithUserInfo:(id)info;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentInvite

- (CATInitializingIDSServiceConnectionContentInvite)initWithUserInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = CATInitializingIDSServiceConnectionContentInvite;
  v5 = [(CATInitializingIDSServiceConnectionContentInvite *)&v9 init];
  if (v5)
  {
    v6 = [infoCopy copy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  userInfo = [(CATInitializingIDSServiceConnectionContentInvite *)self userInfo];
  v5 = [userInfo copy];
  [v3 setObject:v5 forKeyedSubscript:@"UserInfo"];

  v6 = [v3 copy];

  return v6;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"UserInfo"];
  v5 = [[self alloc] initWithUserInfo:v4];

  return v5;
}

@end