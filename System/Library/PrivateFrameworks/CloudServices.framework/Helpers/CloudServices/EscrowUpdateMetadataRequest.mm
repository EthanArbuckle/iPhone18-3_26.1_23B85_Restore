@interface EscrowUpdateMetadataRequest
- (id)bodyDictionary;
@end

@implementation EscrowUpdateMetadataRequest

- (id)bodyDictionary
{
  v11.receiver = self;
  v11.super_class = EscrowUpdateMetadataRequest;
  v3 = [(EscrowGenericRequest *)&v11 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self encodedMetadata];

  if (v4)
  {
    v5 = [(EscrowGenericRequest *)self encodedMetadata];
    [v3 setObject:v5 forKeyedSubscript:@"oldMetadata"];
  }

  v6 = [(EscrowGenericRequest *)self metadata];

  if (v6)
  {
    v7 = [(EscrowGenericRequest *)self metadata];
    v8 = [v7 base64EncodedStringFromDict];
    [v3 setObject:v8 forKeyedSubscript:@"newMetadata"];
  }

  if ([(EscrowGenericRequest *)self duplicate])
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049D50();
    }
  }

  return v3;
}

@end