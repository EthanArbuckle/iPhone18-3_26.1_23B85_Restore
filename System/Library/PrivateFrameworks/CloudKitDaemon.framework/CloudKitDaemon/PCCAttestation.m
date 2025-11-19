@interface PCCAttestation
- (PCCAttestation)initWithCertificate:(id)a3 applicationEnclaveQuote:(id)a4 quotingEnclaveQuote:(id)a5 routingToken:(id)a6;
@end

@implementation PCCAttestation

- (PCCAttestation)initWithCertificate:(id)a3 applicationEnclaveQuote:(id)a4 quotingEnclaveQuote:(id)a5 routingToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PCCAttestation;
  v15 = [(PCCAttestation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_certificate, a3);
    objc_storeStrong(&v16->_applicationEnclaveQuote, a4);
    objc_storeStrong(&v16->_quotingEnclaveQuote, a5);
    objc_storeStrong(&v16->_routingToken, a6);
  }

  return v16;
}

@end