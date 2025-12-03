@interface ICPDFEncryptionStateChecker
- (ICPDFEncryptionStateChecker)initWithPDFURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)encryptionState;
@end

@implementation ICPDFEncryptionStateChecker

- (ICPDFEncryptionStateChecker)initWithPDFURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ICPDFEncryptionStateChecker;
  v5 = [(ICPDFEncryptionStateChecker *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    pdfURL = v5->_pdfURL;
    v5->_pdfURL = v6;
  }

  return v5;
}

- (unint64_t)encryptionState
{
  if (!self->_encryptionState)
  {
    pdfURL = [(ICPDFEncryptionStateChecker *)self pdfURL];

    if (pdfURL)
    {
      pdfURL2 = [(ICPDFEncryptionStateChecker *)self pdfURL];
      v6 = CGPDFDocumentCreateWithURL(pdfURL2);

      if (v6)
      {
        if (CGPDFDocumentIsEncrypted(v6))
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        [(ICPDFEncryptionStateChecker *)self setEncryptionState:v7];
        CGPDFDocumentRelease(v6);
      }
    }
  }

  return self->_encryptionState;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICPDFEncryptionStateChecker allocWithZone:zone];
  pdfURL = [(ICPDFEncryptionStateChecker *)self pdfURL];
  v6 = [(ICPDFEncryptionStateChecker *)v4 initWithPDFURL:pdfURL];

  [(ICPDFEncryptionStateChecker *)v6 setEncryptionState:self->_encryptionState];
  return v6;
}

@end