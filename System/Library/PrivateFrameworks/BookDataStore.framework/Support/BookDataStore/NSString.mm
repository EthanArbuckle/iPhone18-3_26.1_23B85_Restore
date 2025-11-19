@interface NSString
+ (id)bds_UUID;
@end

@implementation NSString

+ (id)bds_UUID
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);

  return v3;
}

@end