@interface CKServerChangeToken(HMB)
- (id)hmbDescription;
@end

@implementation CKServerChangeToken(HMB)

- (id)hmbDescription
{
  data = [self data];
  v2 = [data base64EncodedStringWithOptions:0];

  return v2;
}

@end