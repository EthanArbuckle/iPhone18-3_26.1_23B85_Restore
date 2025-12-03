@interface IDSGFTMetricsRequest
- (IDSGFTMetricsRequest)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary;
- (void)receivedResponse:(unsigned int)response;
@end

@implementation IDSGFTMetricsRequest

- (IDSGFTMetricsRequest)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = IDSGFTMetricsRequest;
  v6 = [(IDSGFTMetricsReferencePoint *)&v8 initWithFromType:type fromUniqueID:d anonymizer:anonymizer templateDictionary:dictionary];
  if (v6)
  {
    [(IDSGFTMetricsReferencePoint *)v6 event:@"req" uniqueID:&unk_1F1B203C0 time:ids_monotonic_time()];
  }

  return v6;
}

- (void)receivedResponse:(unsigned int)response
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&response];
  [(IDSGFTMetricsReferencePoint *)self event:@"rsp" uniqueID:&unk_1F1B203C0 reason:v4];
}

@end