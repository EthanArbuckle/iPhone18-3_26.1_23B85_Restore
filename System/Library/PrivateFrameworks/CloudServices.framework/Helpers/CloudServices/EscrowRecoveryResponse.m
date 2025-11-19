@interface EscrowRecoveryResponse
- (NSData)fmipRecoveryData;
- (NSData)recoveryData;
- (NSDictionary)metadata;
@end

@implementation EscrowRecoveryResponse

- (NSData)recoveryData
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

- (NSDictionary)metadata
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:kEscrowServiceRecordMetadataKey];

  if (v3)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
    if (v4)
    {
      v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)fmipRecoveryData
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"fmipRecoveryData"];

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

@end