@interface DCBAASigningController
- (DCCryptoProxyImpl)cryptoProxy;
- (void)baaSignatureForData:(id)data completion:(id)completion;
- (void)baaSignaturesForData:(id)data completion:(id)completion;
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

- (void)baaSignatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  cryptoProxy = [(DCBAASigningController *)self cryptoProxy];
  [cryptoProxy baaSignatureForData:dataCopy completion:completionCopy];
}

- (void)baaSignaturesForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  cryptoProxy = [(DCBAASigningController *)self cryptoProxy];
  [cryptoProxy baaSignaturesForData:dataCopy completion:completionCopy];
}

@end