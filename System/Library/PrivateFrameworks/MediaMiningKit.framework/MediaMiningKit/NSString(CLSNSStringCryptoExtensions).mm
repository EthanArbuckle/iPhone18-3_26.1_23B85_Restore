@interface NSString(CLSNSStringCryptoExtensions)
- (id)cls_sha1HashData;
- (id)cls_sha1HashString;
@end

@implementation NSString(CLSNSStringCryptoExtensions)

- (id)cls_sha1HashString
{
  cls_sha1HashData = [self cls_sha1HashData];
  cls_hexString = [cls_sha1HashData cls_hexString];

  return cls_hexString;
}

- (id)cls_sha1HashData
{
  v1 = [self dataUsingEncoding:4 allowLossyConversion:0];
  cls_sha1Hash = [v1 cls_sha1Hash];

  return cls_sha1Hash;
}

@end