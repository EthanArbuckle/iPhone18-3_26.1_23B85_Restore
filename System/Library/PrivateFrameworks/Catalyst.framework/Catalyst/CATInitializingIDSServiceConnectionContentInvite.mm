@interface CATInitializingIDSServiceConnectionContentInvite
+ (id)instanceWithDictionary:(id)a3;
- (CATInitializingIDSServiceConnectionContentInvite)initWithUserInfo:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentInvite

- (CATInitializingIDSServiceConnectionContentInvite)initWithUserInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CATInitializingIDSServiceConnectionContentInvite;
  v5 = [(CATInitializingIDSServiceConnectionContentInvite *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CATInitializingIDSServiceConnectionContentInvite *)self userInfo];
  v5 = [v4 copy];
  [v3 setObject:v5 forKeyedSubscript:@"UserInfo"];

  v6 = [v3 copy];

  return v6;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"UserInfo"];
  v5 = [[a1 alloc] initWithUserInfo:v4];

  return v5;
}

@end