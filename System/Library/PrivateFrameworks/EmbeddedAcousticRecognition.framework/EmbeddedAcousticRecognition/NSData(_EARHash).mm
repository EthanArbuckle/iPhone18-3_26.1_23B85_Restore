@interface NSData(_EARHash)
- (id)_ear_sha256;
@end

@implementation NSData(_EARHash)

- (id)_ear_sha256
{
  v1 = sha256Data(self);
  v2 = hexString(v1);

  return v2;
}

@end