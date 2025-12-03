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
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"respBlob"];

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
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"phoneNumberToken"];

  return v3;
}

- (int64_t)clubTypeID
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"clubTypeID"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (NSString)proto
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"proto"];

  return v3;
}

- (NSNumber)iterations
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"iterations"];

  return v3;
}

@end