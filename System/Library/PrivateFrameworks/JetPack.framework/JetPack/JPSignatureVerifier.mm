@interface JPSignatureVerifier
+ (id)signatureVerifierWithCertificate:(id)certificate;
+ (id)unsafeIgnoreSignatureVerifier;
- (JPSignatureVerifier)initWithBacking:(JetPackSignatureVerifier *)backing releaseOnDealloc:(BOOL)dealloc;
- (void)dealloc;
@end

@implementation JPSignatureVerifier

+ (id)unsafeIgnoreSignatureVerifier
{
  v2 = [[JPSignatureVerifier alloc] initWithBacking:JetPackSignatureVerifierCreateUnsafeIgnoreSignatureVerifier(self releaseOnDealloc:a2), 1];

  return v2;
}

- (void)dealloc
{
  if ([(JPSignatureVerifier *)self releaseBackingOnDealloc])
  {
    JetPackSignatureVerifierDestroy([(JPSignatureVerifier *)self backing]);
  }

  v3.receiver = self;
  v3.super_class = JPSignatureVerifier;
  [(JPSignatureVerifier *)&v3 dealloc];
}

- (JPSignatureVerifier)initWithBacking:(JetPackSignatureVerifier *)backing releaseOnDealloc:(BOOL)dealloc
{
  v7.receiver = self;
  v7.super_class = JPSignatureVerifier;
  result = [(JPSignatureVerifier *)&v7 init];
  if (result)
  {
    result->_backing = backing;
    result->_releaseBackingOnDealloc = dealloc;
  }

  return result;
}

+ (id)signatureVerifierWithCertificate:(id)certificate
{
  certificateCopy = certificate;
  bytes = [certificateCopy bytes];
  v5 = [certificateCopy length];

  JetPackSignatureVerifierCreateWithCertificateData(bytes, v5);
}

@end