@interface NSError(HDIDSError)
- (BOOL)hd_isResponseTimeout;
- (uint64_t)hd_isFromRequest;
- (uint64_t)hd_messageID;
- (void)hd_messageIDSDeviceIdentifier;
- (void)hd_messageIDSIdentifier;
- (void)hd_messageSent;
- (void)hd_persistentUserInfo;
@end

@implementation NSError(HDIDSError)

- (uint64_t)hd_messageID
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)hd_messageSent
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)hd_messageIDSIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)hd_messageIDSDeviceIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[3];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)hd_persistentUserInfo
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (uint64_t)hd_isFromRequest
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HDIDSContext"];

  if (v2)
  {
    v3 = v2[8];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)hd_isResponseTimeout
{
  domain = [self domain];
  if ([domain isEqualToString:@"HDIDSErrorDomain"])
  {
    v3 = [self code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end