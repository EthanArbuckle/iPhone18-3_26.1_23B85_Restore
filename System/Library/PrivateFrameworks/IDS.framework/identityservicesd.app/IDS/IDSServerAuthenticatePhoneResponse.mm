@interface IDSServerAuthenticatePhoneResponse
- (IDSServerAuthenticatePhoneResponse)initWithStatus:(int64_t)status user:(id)user authenticationCertificate:(id)certificate;
@end

@implementation IDSServerAuthenticatePhoneResponse

- (IDSServerAuthenticatePhoneResponse)initWithStatus:(int64_t)status user:(id)user authenticationCertificate:(id)certificate
{
  userCopy = user;
  certificateCopy = certificate;
  v14.receiver = self;
  v14.super_class = IDSServerAuthenticatePhoneResponse;
  v11 = [(IDSServerAuthenticatePhoneResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    objc_storeStrong(&v11->_user, user);
    objc_storeStrong(&v12->_authenticationCertificate, certificate);
  }

  return v12;
}

@end