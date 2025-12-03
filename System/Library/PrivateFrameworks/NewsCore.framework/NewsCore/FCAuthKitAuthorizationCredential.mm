@interface FCAuthKitAuthorizationCredential
- (FCAuthKitAuthorizationCredential)initWithAuthorizationCode:(id)code identityToken:(id)token userIdentifier:(id)identifier email:(id)email familyName:(id)name givenName:(id)givenName;
@end

@implementation FCAuthKitAuthorizationCredential

- (FCAuthKitAuthorizationCredential)initWithAuthorizationCode:(id)code identityToken:(id)token userIdentifier:(id)identifier email:(id)email familyName:(id)name givenName:(id)givenName
{
  codeCopy = code;
  tokenCopy = token;
  identifierCopy = identifier;
  emailCopy = email;
  nameCopy = name;
  givenNameCopy = givenName;
  v24.receiver = self;
  v24.super_class = FCAuthKitAuthorizationCredential;
  v18 = [(FCAuthKitAuthorizationCredential *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationCode, code);
    objc_storeStrong(&v19->_identityToken, token);
    objc_storeStrong(&v19->_userIdentifier, identifier);
    objc_storeStrong(&v19->_email, email);
    objc_storeStrong(&v19->_familyName, name);
    objc_storeStrong(&v19->_givenName, givenName);
  }

  return v19;
}

@end