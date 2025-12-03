@interface PBCodable(HDCodingSupport)
- (uint64_t)encodedByteCount;
@end

@implementation PBCodable(HDCodingSupport)

- (uint64_t)encodedByteCount
{
  v2 = objc_autoreleasePoolPush();
  data = [self data];
  v4 = [data length];

  objc_autoreleasePoolPop(v2);
  return v4;
}

@end