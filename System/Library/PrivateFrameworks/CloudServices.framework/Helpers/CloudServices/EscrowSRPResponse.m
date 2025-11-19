@interface EscrowSRPResponse
- (NSData)srpData;
- (NSNumber)iterations;
- (NSString)bypassToken;
- (NSString)proto;
- (int64_t)clubTypeID;
@end

@implementation EscrowSRPResponse

- (NSData)srpData
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"respBlob"];

  if (v3)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)bypassToken
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"phoneNumberToken"];

  return v3;
}

- (int64_t)clubTypeID
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"clubTypeID"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSString)proto
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"proto"];

  return v3;
}

- (NSNumber)iterations
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"iterations"];

  return v3;
}

@end