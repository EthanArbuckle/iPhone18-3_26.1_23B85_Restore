@interface CRKConcreteTrust
- (CRKCertificate)leafCertificate;
- (CRKConcreteTrust)initWithTrust:(__SecTrust *)trust;
- (void)dealloc;
@end

@implementation CRKConcreteTrust

- (void)dealloc
{
  CFRelease(self->_underlyingTrust);
  v3.receiver = self;
  v3.super_class = CRKConcreteTrust;
  [(CRKConcreteTrust *)&v3 dealloc];
}

- (CRKConcreteTrust)initWithTrust:(__SecTrust *)trust
{
  v6.receiver = self;
  v6.super_class = CRKConcreteTrust;
  v4 = [(CRKConcreteTrust *)&v6 init];
  if (v4)
  {
    CFRetain(trust);
    v4->_underlyingTrust = trust;
  }

  return v4;
}

- (CRKCertificate)leafCertificate
{
  v2 = SecTrustCopyCertificateChain([(CRKConcreteTrust *)self underlyingTrust]);
  if ([(__CFArray *)v2 count])
  {
    firstObject = [(__CFArray *)v2 firstObject];
    v4 = [[CRKConcreteCertificate alloc] initWithCertificate:firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end