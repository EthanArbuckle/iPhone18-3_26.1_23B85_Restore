@interface CIDCPayloadBuilderDetails
- (CIDCPayloadBuilderDetails)initWithFormat:(unint64_t)format docType:(id)type elements:(id)elements validFrom:(id)from validUntil:(id)until deviceKey:(id)key signingAlgorithm:(int64_t)algorithm timePolicy:(int64_t)self0;
@end

@implementation CIDCPayloadBuilderDetails

- (CIDCPayloadBuilderDetails)initWithFormat:(unint64_t)format docType:(id)type elements:(id)elements validFrom:(id)from validUntil:(id)until deviceKey:(id)key signingAlgorithm:(int64_t)algorithm timePolicy:(int64_t)self0
{
  v22.receiver = self;
  v22.super_class = CIDCPayloadBuilderDetails;
  keyCopy = key;
  untilCopy = until;
  fromCopy = from;
  elementsCopy = elements;
  typeCopy = type;
  v20 = [(CIDCPayloadBuilderDetails *)&v22 init];
  [(CIDCPayloadBuilderDetails *)v20 setFormat:format, v22.receiver, v22.super_class];
  [(CIDCPayloadBuilderDetails *)v20 setDocType:typeCopy];

  [(CIDCPayloadBuilderDetails *)v20 setElements:elementsCopy];
  [(CIDCPayloadBuilderDetails *)v20 setValidFrom:fromCopy];

  [(CIDCPayloadBuilderDetails *)v20 setValidUntil:untilCopy];
  [(CIDCPayloadBuilderDetails *)v20 setDeviceKey:keyCopy];

  [(CIDCPayloadBuilderDetails *)v20 setSigningAlgorithm:algorithm];
  [(CIDCPayloadBuilderDetails *)v20 setTimePolicy:policy];
  return v20;
}

@end