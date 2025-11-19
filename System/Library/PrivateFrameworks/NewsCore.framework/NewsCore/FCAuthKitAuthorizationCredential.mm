@interface FCAuthKitAuthorizationCredential
- (FCAuthKitAuthorizationCredential)initWithAuthorizationCode:(id)a3 identityToken:(id)a4 userIdentifier:(id)a5 email:(id)a6 familyName:(id)a7 givenName:(id)a8;
@end

@implementation FCAuthKitAuthorizationCredential

- (FCAuthKitAuthorizationCredential)initWithAuthorizationCode:(id)a3 identityToken:(id)a4 userIdentifier:(id)a5 email:(id)a6 familyName:(id)a7 givenName:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = FCAuthKitAuthorizationCredential;
  v18 = [(FCAuthKitAuthorizationCredential *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationCode, a3);
    objc_storeStrong(&v19->_identityToken, a4);
    objc_storeStrong(&v19->_userIdentifier, a5);
    objc_storeStrong(&v19->_email, a6);
    objc_storeStrong(&v19->_familyName, a7);
    objc_storeStrong(&v19->_givenName, a8);
  }

  return v19;
}

@end