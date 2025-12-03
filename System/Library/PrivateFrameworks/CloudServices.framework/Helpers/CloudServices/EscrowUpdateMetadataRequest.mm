@interface EscrowUpdateMetadataRequest
- (id)bodyDictionary;
@end

@implementation EscrowUpdateMetadataRequest

- (id)bodyDictionary
{
  v11.receiver = self;
  v11.super_class = EscrowUpdateMetadataRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v11 bodyDictionary];
  encodedMetadata = [(EscrowGenericRequest *)self encodedMetadata];

  if (encodedMetadata)
  {
    encodedMetadata2 = [(EscrowGenericRequest *)self encodedMetadata];
    [bodyDictionary setObject:encodedMetadata2 forKeyedSubscript:@"oldMetadata"];
  }

  metadata = [(EscrowGenericRequest *)self metadata];

  if (metadata)
  {
    metadata2 = [(EscrowGenericRequest *)self metadata];
    base64EncodedStringFromDict = [metadata2 base64EncodedStringFromDict];
    [bodyDictionary setObject:base64EncodedStringFromDict forKeyedSubscript:@"newMetadata"];
  }

  if ([(EscrowGenericRequest *)self duplicate])
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049D50();
    }
  }

  return bodyDictionary;
}

@end