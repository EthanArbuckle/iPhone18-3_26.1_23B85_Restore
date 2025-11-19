@interface ICPDFEncryptionStateChecker
- (ICPDFEncryptionStateChecker)initWithPDFURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)encryptionState;
@end

@implementation ICPDFEncryptionStateChecker

- (ICPDFEncryptionStateChecker)initWithPDFURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICPDFEncryptionStateChecker;
  v5 = [(ICPDFEncryptionStateChecker *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    pdfURL = v5->_pdfURL;
    v5->_pdfURL = v6;
  }

  return v5;
}

- (unint64_t)encryptionState
{
  if (!self->_encryptionState)
  {
    v4 = [(ICPDFEncryptionStateChecker *)self pdfURL];

    if (v4)
    {
      v5 = [(ICPDFEncryptionStateChecker *)self pdfURL];
      v6 = CGPDFDocumentCreateWithURL(v5);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICPDFEncryptionStateChecker allocWithZone:a3];
  v5 = [(ICPDFEncryptionStateChecker *)self pdfURL];
  v6 = [(ICPDFEncryptionStateChecker *)v4 initWithPDFURL:v5];

  [(ICPDFEncryptionStateChecker *)v6 setEncryptionState:self->_encryptionState];
  return v6;
}

@end