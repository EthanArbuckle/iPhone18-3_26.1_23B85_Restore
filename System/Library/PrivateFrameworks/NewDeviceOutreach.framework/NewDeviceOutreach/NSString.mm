@interface NSString
- (id)sha256Hash;
@end

@implementation NSString

- (id)sha256Hash
{
  uTF8String = [(NSString *)self UTF8String];
  v3 = strlen(uTF8String);
  CC_SHA256(uTF8String, v3, md);
  v4 = [NSMutableString stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = [NSString stringWithString:v4];

  return v6;
}

@end