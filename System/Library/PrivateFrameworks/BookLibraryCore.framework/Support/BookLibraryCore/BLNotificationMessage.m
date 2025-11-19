@interface BLNotificationMessage
- (BLNotificationMessage)initWithUserInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (NSNumber)accountID;
- (NSURL)actionURL;
- (id)description;
- (id)valueForUserInfoKey:(id)a3;
- (int64_t)_integerValueForKey:(id)a3 defaultValue:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation BLNotificationMessage

- (BLNotificationMessage)initWithUserInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLNotificationMessage;
  v5 = [(BLNotificationMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v6;
  }

  return v5;
}

- (NSNumber)accountID
{
  v2 = [(BLNotificationMessage *)self _integerValueForKey:@"0" defaultValue:0x7FFFFFFFFFFFFFFFLL];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithInteger:v2];
  }

  return v3;
}

- (NSURL)actionURL
{
  objc_opt_class();
  v3 = [(BLNotificationMessage *)self valueForUserInfoKey:@"3"];
  v4 = BUDynamicCast();

  if ([v4 length])
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = [(BLNotificationMessage *)self userInfo];
  v6 = [v4 userInfo];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (id)valueForUserInfoKey:(id)a3
{
  v4 = a3;
  v5 = [(BLNotificationMessage *)self userInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BLNotificationMessage *)self isEqualToMessage:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(BLNotificationMessage *)self userInfo];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(BLNotificationMessage *)self userInfo];
  v3 = [v2 mutableCopy];

  v4 = [v3 objectForKeyedSubscript:@"0"];
  if (v4)
  {
    v5 = AMSHashIfNeeded();
    [v3 setObject:v5 forKeyedSubscript:@"0"];
  }

  if (!+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", v3) || (+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v3, 0, 0), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, v8 = [[NSString alloc] initWithData:v6 encoding:4], v7, !v8))
  {
    v8 = [v3 description];
  }

  return v8;
}

- (int64_t)_integerValueForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(BLNotificationMessage *)self valueForUserInfoKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

@end