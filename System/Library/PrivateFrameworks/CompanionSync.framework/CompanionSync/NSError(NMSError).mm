@interface NSError(NMSError)
- (id)idsIdentifier;
- (id)messageSent;
- (id)persistentUserInfo;
- (uint64_t)isFromRequest;
- (uint64_t)messageID;
@end

@implementation NSError(NMSError)

- (uint64_t)messageID
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NMSContext"];

  messageID = [v2 messageID];
  return messageID;
}

- (id)idsIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NMSContext"];

  idsIdentifier = [v2 idsIdentifier];

  return idsIdentifier;
}

- (id)messageSent
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NMSContext"];

  date = [v2 date];

  return date;
}

- (id)persistentUserInfo
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NMSContext"];

  userInfo2 = [v2 userInfo];

  return userInfo2;
}

- (uint64_t)isFromRequest
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NMSContext"];

  isFromRequest = [v2 isFromRequest];
  return isFromRequest;
}

@end