@interface NSData(MNExtras)
- (uint64_t)_navigation_unsignedIntegerValue;
@end

@implementation NSData(MNExtras)

- (uint64_t)_navigation_unsignedIntegerValue
{
  v2 = 0;
  [a1 getBytes:&v2 length:8];
  return v2;
}

@end