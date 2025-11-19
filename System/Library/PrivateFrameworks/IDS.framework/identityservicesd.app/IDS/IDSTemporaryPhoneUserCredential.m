@interface IDSTemporaryPhoneUserCredential
- (IDSTemporaryPhoneUserCredential)initWithDataRepresentation:(id)a3;
- (IDSTemporaryPhoneUserCredential)initWithPhoneAuthenticationCertificate:(id)a3;
- (NSData)dataRepresentation;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserCredential

- (IDSTemporaryPhoneUserCredential)initWithPhoneAuthenticationCertificate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = IDSTemporaryPhoneUserCredential;
    v6 = [(IDSTemporaryPhoneUserCredential *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_phoneAuthenticationCertificate, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to create temporary user credential with nil argument. Returning nil. { cert: %@ }", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (IDSTemporaryPhoneUserCredential)initWithDataRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(IDSTemporaryPhoneUserCredential *)self initWithPhoneAuthenticationCertificate:v5];

  return v6;
}

- (NSData)dataRepresentation
{
  v2 = [(IDSTemporaryPhoneUserCredential *)self phoneAuthenticationCertificate];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(IDSTemporaryPhoneUserCredential *)self phoneAuthenticationCertificate];
  v5 = [NSString stringWithFormat:@"<%@:%p> cert: %@", v3, self, v4];

  return v5;
}

@end