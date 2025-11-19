@interface IDSServerAuthenticatePhoneResponse
- (IDSServerAuthenticatePhoneResponse)initWithStatus:(int64_t)a3 user:(id)a4 authenticationCertificate:(id)a5;
@end

@implementation IDSServerAuthenticatePhoneResponse

- (IDSServerAuthenticatePhoneResponse)initWithStatus:(int64_t)a3 user:(id)a4 authenticationCertificate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSServerAuthenticatePhoneResponse;
  v11 = [(IDSServerAuthenticatePhoneResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = a3;
    objc_storeStrong(&v11->_user, a4);
    objc_storeStrong(&v12->_authenticationCertificate, a5);
  }

  return v12;
}

@end