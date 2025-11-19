@interface CIDCPayloadBuilderDetails
- (CIDCPayloadBuilderDetails)initWithFormat:(unint64_t)a3 docType:(id)a4 elements:(id)a5 validFrom:(id)a6 validUntil:(id)a7 deviceKey:(id)a8 signingAlgorithm:(int64_t)a9 timePolicy:(int64_t)a10;
@end

@implementation CIDCPayloadBuilderDetails

- (CIDCPayloadBuilderDetails)initWithFormat:(unint64_t)a3 docType:(id)a4 elements:(id)a5 validFrom:(id)a6 validUntil:(id)a7 deviceKey:(id)a8 signingAlgorithm:(int64_t)a9 timePolicy:(int64_t)a10
{
  v22.receiver = self;
  v22.super_class = CIDCPayloadBuilderDetails;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = [(CIDCPayloadBuilderDetails *)&v22 init];
  [(CIDCPayloadBuilderDetails *)v20 setFormat:a3, v22.receiver, v22.super_class];
  [(CIDCPayloadBuilderDetails *)v20 setDocType:v19];

  [(CIDCPayloadBuilderDetails *)v20 setElements:v18];
  [(CIDCPayloadBuilderDetails *)v20 setValidFrom:v17];

  [(CIDCPayloadBuilderDetails *)v20 setValidUntil:v16];
  [(CIDCPayloadBuilderDetails *)v20 setDeviceKey:v15];

  [(CIDCPayloadBuilderDetails *)v20 setSigningAlgorithm:a9];
  [(CIDCPayloadBuilderDetails *)v20 setTimePolicy:a10];
  return v20;
}

@end