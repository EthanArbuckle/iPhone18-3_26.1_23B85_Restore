@interface NSString
- (id)sha256Hash;
@end

@implementation NSString

- (id)sha256Hash
{
  v2 = [(NSString *)self UTF8String];
  v3 = strlen(v2);
  CC_SHA256(v2, v3, md);
  v4 = [NSMutableString stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = [NSString stringWithString:v4];

  return v6;
}

@end