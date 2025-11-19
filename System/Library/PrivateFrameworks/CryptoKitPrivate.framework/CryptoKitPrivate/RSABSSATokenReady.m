@interface RSABSSATokenReady
- (RSABSSATokenReady)initWithTokenContent:(id)a3 tokenSignature:(id)a4 keyId:(id)a5;
@end

@implementation RSABSSATokenReady

- (RSABSSATokenReady)initWithTokenContent:(id)a3 tokenSignature:(id)a4 keyId:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RSABSSATokenReady;
  v12 = [(RSABSSATokenReady *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyId, a5);
    objc_storeStrong(&v13->_signature, a4);
    objc_storeStrong(&v13->_tokenContent, a3);
  }

  return v13;
}

@end