@interface HKHeartbeatSeriesSample(HDCodingSupport)
- (HDCodableBinarySample)codableRepresentationForSync;
@end

@implementation HKHeartbeatSeriesSample(HDCodingSupport)

- (HDCodableBinarySample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableBinarySample);
  v6.receiver = a1;
  v6.super_class = &off_283D40600;
  v3 = objc_msgSendSuper2(&v6, sel_codableRepresentationForSync);
  [(HDCodableBinarySample *)v2 setSample:v3];

  v4 = [a1 payload];
  [(HDCodableBinarySample *)v2 setPayload:v4];

  return v2;
}

@end