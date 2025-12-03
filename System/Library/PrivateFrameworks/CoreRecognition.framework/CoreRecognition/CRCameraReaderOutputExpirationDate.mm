@interface CRCameraReaderOutputExpirationDate
- (NSNumber)dayValue;
- (NSNumber)monthValue;
- (NSNumber)yearValue;
@end

@implementation CRCameraReaderOutputExpirationDate

- (NSNumber)yearValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  yearValue = [objectInternal yearValue];

  return yearValue;
}

- (NSNumber)monthValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  monthValue = [objectInternal monthValue];

  return monthValue;
}

- (NSNumber)dayValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  dayValue = [objectInternal dayValue];

  return dayValue;
}

@end