@interface JPSignatureVerifier
+ (id)signatureVerifierWithCertificate:(id)a3;
+ (id)unsafeIgnoreSignatureVerifier;
- (JPSignatureVerifier)initWithBacking:(JetPackSignatureVerifier *)a3 releaseOnDealloc:(BOOL)a4;
- (void)dealloc;
@end

@implementation JPSignatureVerifier

+ (id)unsafeIgnoreSignatureVerifier
{
  v2 = [[JPSignatureVerifier alloc] initWithBacking:JetPackSignatureVerifierCreateUnsafeIgnoreSignatureVerifier(a1 releaseOnDealloc:a2), 1];

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

- (JPSignatureVerifier)initWithBacking:(JetPackSignatureVerifier *)a3 releaseOnDealloc:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = JPSignatureVerifier;
  result = [(JPSignatureVerifier *)&v7 init];
  if (result)
  {
    result->_backing = a3;
    result->_releaseBackingOnDealloc = a4;
  }

  return result;
}

+ (id)signatureVerifierWithCertificate:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  JetPackSignatureVerifierCreateWithCertificateData(v4, v5);
}

@end