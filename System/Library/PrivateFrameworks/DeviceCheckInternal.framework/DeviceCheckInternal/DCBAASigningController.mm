@interface DCBAASigningController
- (DCCryptoProxyImpl)cryptoProxy;
- (void)baaSignatureForData:(id)a3 completion:(id)a4;
- (void)baaSignaturesForData:(id)a3 completion:(id)a4;
@end

@implementation DCBAASigningController

- (DCCryptoProxyImpl)cryptoProxy
{
  cryptoProxy = self->_cryptoProxy;
  if (!cryptoProxy)
  {
    v4 = objc_alloc_init(DCCryptoProxyImpl);
    v5 = self->_cryptoProxy;
    self->_cryptoProxy = v4;

    cryptoProxy = self->_cryptoProxy;
  }

  return cryptoProxy;
}

- (void)baaSignatureForData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DCBAASigningController *)self cryptoProxy];
  [v8 baaSignatureForData:v7 completion:v6];
}

- (void)baaSignaturesForData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DCBAASigningController *)self cryptoProxy];
  [v8 baaSignaturesForData:v7 completion:v6];
}

@end