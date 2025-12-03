@interface IDSPhoneUserAuthenticationCertificate
- (IDSPhoneUserAuthenticationCertificate)initWithPhoneUser:(id)user authenticationCertificate:(id)certificate;
- (id)description;
@end

@implementation IDSPhoneUserAuthenticationCertificate

- (IDSPhoneUserAuthenticationCertificate)initWithPhoneUser:(id)user authenticationCertificate:(id)certificate
{
  userCopy = user;
  certificateCopy = certificate;
  v12.receiver = self;
  v12.super_class = IDSPhoneUserAuthenticationCertificate;
  v9 = [(IDSPhoneUserAuthenticationCertificate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneUser, user);
    objc_storeStrong(&v10->_authenticationCertificate, certificate);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  phoneUser = [(IDSPhoneUserAuthenticationCertificate *)self phoneUser];
  authenticationCertificate = [(IDSPhoneUserAuthenticationCertificate *)self authenticationCertificate];
  v6 = [NSString stringWithFormat:@"<%@: %p phoneUser: %@ authenticationCertificate: %@>", v3, self, phoneUser, authenticationCertificate];

  return v6;
}

@end