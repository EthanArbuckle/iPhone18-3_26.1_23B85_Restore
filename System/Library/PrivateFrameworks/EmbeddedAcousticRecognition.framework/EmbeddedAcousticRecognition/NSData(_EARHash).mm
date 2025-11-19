@interface NSData(_EARHash)
- (id)_ear_sha256;
@end

@implementation NSData(_EARHash)

- (id)_ear_sha256
{
  v1 = sha256Data(a1);
  v2 = hexString(v1);

  return v2;
}

@end