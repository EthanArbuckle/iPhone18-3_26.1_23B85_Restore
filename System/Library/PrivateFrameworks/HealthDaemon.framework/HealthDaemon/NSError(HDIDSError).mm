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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HDIDSContext"];

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
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"HDIDSErrorDomain"])
  {
    v3 = [a1 code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end