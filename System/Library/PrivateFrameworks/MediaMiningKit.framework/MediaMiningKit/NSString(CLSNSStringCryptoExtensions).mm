@interface NSString(CLSNSStringCryptoExtensions)
- (id)cls_sha1HashData;
- (id)cls_sha1HashString;
@end

@implementation NSString(CLSNSStringCryptoExtensions)

- (id)cls_sha1HashString
{
  v1 = [a1 cls_sha1HashData];
  v2 = [v1 cls_hexString];

  return v2;
}

- (id)cls_sha1HashData
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];
  v2 = [v1 cls_sha1Hash];

  return v2;
}

@end