@interface RSABSSATokenReady
- (RSABSSATokenReady)initWithTokenContent:(id)content tokenSignature:(id)signature keyId:(id)id;
@end

@implementation RSABSSATokenReady

- (RSABSSATokenReady)initWithTokenContent:(id)content tokenSignature:(id)signature keyId:(id)id
{
  contentCopy = content;
  signatureCopy = signature;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = RSABSSATokenReady;
  v12 = [(RSABSSATokenReady *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyId, id);
    objc_storeStrong(&v13->_signature, signature);
    objc_storeStrong(&v13->_tokenContent, content);
  }

  return v13;
}

@end