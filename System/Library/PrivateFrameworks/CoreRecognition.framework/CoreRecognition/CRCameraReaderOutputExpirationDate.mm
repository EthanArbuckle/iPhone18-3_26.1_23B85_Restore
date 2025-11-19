@interface CRCameraReaderOutputExpirationDate
- (NSNumber)dayValue;
- (NSNumber)monthValue;
- (NSNumber)yearValue;
@end

@implementation CRCameraReaderOutputExpirationDate

- (NSNumber)yearValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 yearValue];

  return v3;
}

- (NSNumber)monthValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 monthValue];

  return v3;
}

- (NSNumber)dayValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 dayValue];

  return v3;
}

@end