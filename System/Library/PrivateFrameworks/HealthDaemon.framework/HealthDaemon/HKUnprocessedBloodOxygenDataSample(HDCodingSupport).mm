@interface HKUnprocessedBloodOxygenDataSample(HDCodingSupport)
- (HDCodableBinarySample)codableRepresentationForSync;
@end

@implementation HKUnprocessedBloodOxygenDataSample(HDCodingSupport)

- (HDCodableBinarySample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableBinarySample);
  v6.receiver = self;
  v6.super_class = &off_283D40DF8;
  v3 = objc_msgSendSuper2(&v6, sel_codableRepresentationForSync);
  [(HDCodableBinarySample *)v2 setSample:v3];

  payload = [self payload];
  [(HDCodableBinarySample *)v2 setPayload:payload];

  return v2;
}

@end