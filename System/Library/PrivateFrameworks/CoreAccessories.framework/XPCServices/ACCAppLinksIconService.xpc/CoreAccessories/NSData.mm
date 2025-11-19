@interface NSData
- (id)SHA1;
- (id)SHA256;
- (id)SHA256_16;
@end

@implementation NSData

- (id)SHA1
{
  memset(v4, 170, 20);
  CC_SHA1([(NSData *)self bytes:*v4], [(NSData *)self length], v4);
  v2 = [NSData dataWithBytes:v4 length:20];

  return v2;
}

- (id)SHA256_16
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v2;
  v5[1] = v2;
  CC_SHA256([(NSData *)self bytes:v2], [(NSData *)self length], v5);
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)SHA256
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v2;
  v5[1] = v2;
  CC_SHA256([(NSData *)self bytes:v2], [(NSData *)self length], v5);
  v3 = [NSData dataWithBytes:v5 length:32];

  return v3;
}

@end