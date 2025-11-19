@interface NSString(_EARHash)
- (id)_ear_sha256;
@end

@implementation NSString(_EARHash)

- (id)_ear_sha256
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = sha256Data(v1);
  v3 = hexString(v2);

  return v3;
}

@end