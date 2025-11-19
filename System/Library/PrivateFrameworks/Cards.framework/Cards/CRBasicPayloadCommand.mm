@interface CRBasicPayloadCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRBasicPayloadCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CRBasicPayloadCommand);
  v6 = [(CRBasicPayloadCommand *)self payload];
  v7 = [v6 copyWithZone:a3];
  [(CRBasicPayloadCommand *)v5 setPayload:v7];

  v8 = [(CRBasicPayloadCommand *)self userInfo];
  v9 = [v8 copyWithZone:a3];
  [(CRBasicPayloadCommand *)v5 setUserInfo:v9];

  [(CRBasicPayloadCommand *)v5 setCommandDirection:[(CRBasicPayloadCommand *)self commandDirection]];
  return v5;
}

@end