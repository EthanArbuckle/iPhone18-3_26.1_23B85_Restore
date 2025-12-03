@interface IDSTemporaryPhoneUserCredential
- (IDSTemporaryPhoneUserCredential)initWithDataRepresentation:(id)representation;
- (IDSTemporaryPhoneUserCredential)initWithPhoneAuthenticationCertificate:(id)certificate;
- (NSData)dataRepresentation;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserCredential

- (IDSTemporaryPhoneUserCredential)initWithPhoneAuthenticationCertificate:(id)certificate
{
  certificateCopy = certificate;
  if (certificateCopy)
  {
    v11.receiver = self;
    v11.super_class = IDSTemporaryPhoneUserCredential;
    v6 = [(IDSTemporaryPhoneUserCredential *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_phoneAuthenticationCertificate, certificate);
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSTemporaryPhoneUserCredential)initWithDataRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:representationCopy];
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
  phoneAuthenticationCertificate = [(IDSTemporaryPhoneUserCredential *)self phoneAuthenticationCertificate];
  dataRepresentation = [phoneAuthenticationCertificate dataRepresentation];

  return dataRepresentation;
}

- (NSString)description
{
  v3 = objc_opt_class();
  phoneAuthenticationCertificate = [(IDSTemporaryPhoneUserCredential *)self phoneAuthenticationCertificate];
  v5 = [NSString stringWithFormat:@"<%@:%p> cert: %@", v3, self, phoneAuthenticationCertificate];

  return v5;
}

@end