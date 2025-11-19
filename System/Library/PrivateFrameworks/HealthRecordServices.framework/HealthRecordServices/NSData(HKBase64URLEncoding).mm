@interface NSData(HKBase64URLEncoding)
- (id)hk_base64URLEncodedString;
@end

@implementation NSData(HKBase64URLEncoding)

- (id)hk_base64URLEncodedString
{
  v1 = [a1 base64EncodedStringWithOptions:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2863E37A8];

  return v4;
}

@end