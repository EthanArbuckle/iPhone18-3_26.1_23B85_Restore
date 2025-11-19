@interface IDSServerAuthenticatePhoneRequest
- (IDSServerAuthenticatePhoneRequest)initWithUser:(id)a3 phoneSignature:(id)a4 certificateSigningRequest:(id)a5 pushToken:(id)a6;
@end

@implementation IDSServerAuthenticatePhoneRequest

- (IDSServerAuthenticatePhoneRequest)initWithUser:(id)a3 phoneSignature:(id)a4 certificateSigningRequest:(id)a5 pushToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSServerAuthenticatePhoneRequest;
  v15 = [(IDSServerAuthenticatePhoneRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_user, a3);
    objc_storeStrong(&v16->_phoneSignature, a4);
    objc_storeStrong(&v16->_certificateSigningRequest, a5);
    objc_storeStrong(&v16->_pushToken, a6);
  }

  return v16;
}

@end