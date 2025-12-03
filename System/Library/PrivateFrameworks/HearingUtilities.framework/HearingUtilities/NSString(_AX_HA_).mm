@interface NSString(_AX_HA_)
- (unint64_t)unsignedLongLongValue;
@end

@implementation NSString(_AX_HA_)

- (unint64_t)unsignedLongLongValue
{
  uTF8String = [self UTF8String];

  return strtoull(uTF8String, 0, 0);
}

@end