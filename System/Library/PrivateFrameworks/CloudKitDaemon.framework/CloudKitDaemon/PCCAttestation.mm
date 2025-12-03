@interface PCCAttestation
- (PCCAttestation)initWithCertificate:(id)certificate applicationEnclaveQuote:(id)quote quotingEnclaveQuote:(id)enclaveQuote routingToken:(id)token;
@end

@implementation PCCAttestation

- (PCCAttestation)initWithCertificate:(id)certificate applicationEnclaveQuote:(id)quote quotingEnclaveQuote:(id)enclaveQuote routingToken:(id)token
{
  certificateCopy = certificate;
  quoteCopy = quote;
  enclaveQuoteCopy = enclaveQuote;
  tokenCopy = token;
  v18.receiver = self;
  v18.super_class = PCCAttestation;
  v15 = [(PCCAttestation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_certificate, certificate);
    objc_storeStrong(&v16->_applicationEnclaveQuote, quote);
    objc_storeStrong(&v16->_quotingEnclaveQuote, enclaveQuote);
    objc_storeStrong(&v16->_routingToken, token);
  }

  return v16;
}

@end