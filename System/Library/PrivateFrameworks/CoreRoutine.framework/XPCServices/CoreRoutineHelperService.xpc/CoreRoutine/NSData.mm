@interface NSData
- (NSData)initWithHexString:(id)string;
- (id)hexDescription;
- (id)hexString;
- (id)hmacSha1WithKey:(id)key;
- (id)md5;
- (id)sha256Hash;
@end

@implementation NSData

- (id)hexDescription
{
  bytes = [(NSData *)self bytes];
  v4 = [NSMutableString stringWithCapacity:2 * [(NSData *)self length]+ 2];
  [v4 appendFormat:@"0x"];
  if ([(NSData *)self length])
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%02x", bytes[v5++]];
    }

    while ([(NSData *)self length]> v5);
  }

  v6 = [NSString stringWithString:v4];

  return v6;
}

- (id)hexString
{
  bytes = [(NSData *)self bytes];
  v4 = [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  if ([(NSData *)self length])
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%02x", bytes[v5++]];
    }

    while ([(NSData *)self length]> v5);
  }

  v6 = [NSString stringWithString:v4];

  return v6;
}

- (id)md5
{
  CC_MD5([(NSData *)self bytes], [(NSData *)self length], md);
  v2 = [NSData dataWithBytes:md length:16];

  return v2;
}

- (id)hmacSha1WithKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    keyCopy2 = key;
    bytes = [keyCopy2 bytes];
    v8 = [keyCopy2 length];

    CCHmac(0, bytes, v8, [(NSData *)self bytes], [(NSData *)self length], macOut);
    v9 = [NSData dataWithBytes:macOut length:20];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sha256Hash
{
  CC_SHA256([(NSData *)self bytes], [(NSData *)self length], md);
  v2 = [NSData dataWithBytes:md length:32];

  return v2;
}

- (NSData)initWithHexString:(id)string
{
  v4 = [string stringByReplacingOccurrencesOfString:@" " withString:&stru_1000A9F10];
  v5 = objc_opt_new();
  v10 = 0;
  if ([v4 length] >= 2)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      __str[0] = [v4 characterAtIndex:v7 - 1];
      __str[1] = [v4 characterAtIndex:v7];
      HIBYTE(v10) = strtol(__str, 0, 16);
      [(NSData *)v5 appendBytes:&v10 + 1 length:1];
      ++v6;
      v7 += 2;
    }

    while (v6 < [v4 length] >> 1);
  }

  return v5;
}

@end