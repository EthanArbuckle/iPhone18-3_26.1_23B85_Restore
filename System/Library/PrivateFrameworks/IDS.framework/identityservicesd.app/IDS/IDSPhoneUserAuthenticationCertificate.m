@interface IDSPhoneUserAuthenticationCertificate
- (IDSPhoneUserAuthenticationCertificate)initWithPhoneUser:(id)a3 authenticationCertificate:(id)a4;
- (id)description;
@end

@implementation IDSPhoneUserAuthenticationCertificate

- (IDSPhoneUserAuthenticationCertificate)initWithPhoneUser:(id)a3 authenticationCertificate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSPhoneUserAuthenticationCertificate;
  v9 = [(IDSPhoneUserAuthenticationCertificate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneUser, a3);
    objc_storeStrong(&v10->_authenticationCertificate, a4);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSPhoneUserAuthenticationCertificate *)self phoneUser];
  v5 = [(IDSPhoneUserAuthenticationCertificate *)self authenticationCertificate];
  v6 = [NSString stringWithFormat:@"<%@: %p phoneUser: %@ authenticationCertificate: %@>", v3, self, v4, v5];

  return v6;
}

@end