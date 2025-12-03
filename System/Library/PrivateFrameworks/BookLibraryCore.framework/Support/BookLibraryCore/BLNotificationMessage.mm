@interface BLNotificationMessage
- (BLNotificationMessage)initWithUserInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (NSNumber)accountID;
- (NSURL)actionURL;
- (id)description;
- (id)valueForUserInfoKey:(id)key;
- (int64_t)_integerValueForKey:(id)key defaultValue:(int64_t)value;
- (unint64_t)hash;
@end

@implementation BLNotificationMessage

- (BLNotificationMessage)initWithUserInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = BLNotificationMessage;
  v5 = [(BLNotificationMessage *)&v9 init];
  if (v5)
  {
    v6 = [infoCopy copy];
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

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  userInfo = [(BLNotificationMessage *)self userInfo];
  userInfo2 = [messageCopy userInfo];

  LOBYTE(messageCopy) = [userInfo isEqualToDictionary:userInfo2];
  return messageCopy;
}

- (id)valueForUserInfoKey:(id)key
{
  keyCopy = key;
  userInfo = [(BLNotificationMessage *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BLNotificationMessage *)self isEqualToMessage:equalCopy];
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
  userInfo = [(BLNotificationMessage *)self userInfo];
  v3 = [userInfo hash];

  return v3;
}

- (id)description
{
  userInfo = [(BLNotificationMessage *)self userInfo];
  v3 = [userInfo mutableCopy];

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

- (int64_t)_integerValueForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(BLNotificationMessage *)self valueForUserInfoKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    value = [v5 integerValue];
  }

  return value;
}

@end