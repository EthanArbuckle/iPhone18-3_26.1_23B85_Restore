@interface CRRequestUserConfirmationCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRRequestUserConfirmationCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CRRequestUserConfirmationCommand);
  userInfo = [(CRRequestUserConfirmationCommand *)self userInfo];
  v7 = [userInfo copyWithZone:zone];
  [(CRRequestUserConfirmationCommand *)v5 setUserInfo:v7];

  [(CRRequestUserConfirmationCommand *)v5 setCommandDirection:[(CRRequestUserConfirmationCommand *)self commandDirection]];
  return v5;
}

@end