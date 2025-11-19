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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NMSContext"];

  v3 = [v2 messageID];
  return v3;
}

- (id)idsIdentifier
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NMSContext"];

  v3 = [v2 idsIdentifier];

  return v3;
}

- (id)messageSent
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NMSContext"];

  v3 = [v2 date];

  return v3;
}

- (id)persistentUserInfo
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NMSContext"];

  v3 = [v2 userInfo];

  return v3;
}

- (uint64_t)isFromRequest
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NMSContext"];

  v3 = [v2 isFromRequest];
  return v3;
}

@end