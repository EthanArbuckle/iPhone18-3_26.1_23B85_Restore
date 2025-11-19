@interface IDSGFTMetricsRequest
- (IDSGFTMetricsRequest)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6;
- (void)receivedResponse:(unsigned int)a3;
@end

@implementation IDSGFTMetricsRequest

- (IDSGFTMetricsRequest)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6
{
  v8.receiver = self;
  v8.super_class = IDSGFTMetricsRequest;
  v6 = [(IDSGFTMetricsReferencePoint *)&v8 initWithFromType:a3 fromUniqueID:a4 anonymizer:a5 templateDictionary:a6];
  if (v6)
  {
    [(IDSGFTMetricsReferencePoint *)v6 event:@"req" uniqueID:&unk_1F1B203C0 time:ids_monotonic_time()];
  }

  return v6;
}

- (void)receivedResponse:(unsigned int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  [(IDSGFTMetricsReferencePoint *)self event:@"rsp" uniqueID:&unk_1F1B203C0 reason:v4];
}

@end