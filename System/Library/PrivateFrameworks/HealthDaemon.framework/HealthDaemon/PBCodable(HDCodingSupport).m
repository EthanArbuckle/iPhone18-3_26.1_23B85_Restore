@interface PBCodable(HDCodingSupport)
- (uint64_t)encodedByteCount;
@end

@implementation PBCodable(HDCodingSupport)

- (uint64_t)encodedByteCount
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 data];
  v4 = [v3 length];

  objc_autoreleasePoolPop(v2);
  return v4;
}

@end