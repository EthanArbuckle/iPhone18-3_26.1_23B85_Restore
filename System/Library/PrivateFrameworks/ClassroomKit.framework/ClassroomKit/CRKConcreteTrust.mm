@interface CRKConcreteTrust
- (CRKCertificate)leafCertificate;
- (CRKConcreteTrust)initWithTrust:(__SecTrust *)a3;
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

- (CRKConcreteTrust)initWithTrust:(__SecTrust *)a3
{
  v6.receiver = self;
  v6.super_class = CRKConcreteTrust;
  v4 = [(CRKConcreteTrust *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_underlyingTrust = a3;
  }

  return v4;
}

- (CRKCertificate)leafCertificate
{
  v2 = SecTrustCopyCertificateChain([(CRKConcreteTrust *)self underlyingTrust]);
  if ([(__CFArray *)v2 count])
  {
    v3 = [(__CFArray *)v2 firstObject];
    v4 = [[CRKConcreteCertificate alloc] initWithCertificate:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end