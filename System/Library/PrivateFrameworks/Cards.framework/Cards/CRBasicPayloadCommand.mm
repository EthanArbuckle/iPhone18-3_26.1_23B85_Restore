@interface CRBasicPayloadCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRBasicPayloadCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CRBasicPayloadCommand);
  payload = [(CRBasicPayloadCommand *)self payload];
  v7 = [payload copyWithZone:zone];
  [(CRBasicPayloadCommand *)v5 setPayload:v7];

  userInfo = [(CRBasicPayloadCommand *)self userInfo];
  v9 = [userInfo copyWithZone:zone];
  [(CRBasicPayloadCommand *)v5 setUserInfo:v9];

  [(CRBasicPayloadCommand *)v5 setCommandDirection:[(CRBasicPayloadCommand *)self commandDirection]];
  return v5;
}

@end