@interface IDSServerAuthenticatePhoneRequest
- (IDSServerAuthenticatePhoneRequest)initWithUser:(id)user phoneSignature:(id)signature certificateSigningRequest:(id)request pushToken:(id)token;
@end

@implementation IDSServerAuthenticatePhoneRequest

- (IDSServerAuthenticatePhoneRequest)initWithUser:(id)user phoneSignature:(id)signature certificateSigningRequest:(id)request pushToken:(id)token
{
  userCopy = user;
  signatureCopy = signature;
  requestCopy = request;
  tokenCopy = token;
  v18.receiver = self;
  v18.super_class = IDSServerAuthenticatePhoneRequest;
  v15 = [(IDSServerAuthenticatePhoneRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_user, user);
    objc_storeStrong(&v16->_phoneSignature, signature);
    objc_storeStrong(&v16->_certificateSigningRequest, request);
    objc_storeStrong(&v16->_pushToken, token);
  }

  return v16;
}

@end