@interface CRRequestUserConfirmationCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRRequestUserConfirmationCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CRRequestUserConfirmationCommand);
  v6 = [(CRRequestUserConfirmationCommand *)self userInfo];
  v7 = [v6 copyWithZone:a3];
  [(CRRequestUserConfirmationCommand *)v5 setUserInfo:v7];

  [(CRRequestUserConfirmationCommand *)v5 setCommandDirection:[(CRRequestUserConfirmationCommand *)self commandDirection]];
  return v5;
}

@end