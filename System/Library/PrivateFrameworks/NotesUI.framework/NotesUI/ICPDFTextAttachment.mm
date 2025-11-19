@interface ICPDFTextAttachment
- (ICPDFEncryptionStateChecker)encryptionStateChecker;
- (id)supportedPresentationSizes;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3;
@end

@implementation ICPDFTextAttachment

- (id)supportedPresentationSizes
{
  if (supportedPresentationSizes_onceToken_1 != -1)
  {
    [ICPDFTextAttachment supportedPresentationSizes];
  }

  v3 = supportedPresentationSizes_supportedSizes_1;

  return v3;
}

void __49__ICPDFTextAttachment_supportedPresentationSizes__block_invoke()
{
  v0 = supportedPresentationSizes_supportedSizes_1;
  supportedPresentationSizes_supportedSizes_1 = &unk_1F4FC3AC8;
}

- (ICPDFEncryptionStateChecker)encryptionStateChecker
{
  if (!self->_encryptionStateChecker)
  {
    v3 = [(ICAbstractTextAttachment *)self attachment];
    v4 = [v3 attachmentType];

    if (v4 == 6)
    {
      v5 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [v5 media];
      v7 = [v6 mediaURL];

      if (v7)
      {
        v8 = [[ICPDFEncryptionStateChecker alloc] initWithPDFURL:v7];
        encryptionStateChecker = self->_encryptionStateChecker;
        self->_encryptionStateChecker = v8;
      }
    }
  }

  v10 = self->_encryptionStateChecker;

  return v10;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3
{
  v11.receiver = self;
  v11.super_class = ICPDFTextAttachment;
  v4 = [(ICBaseTextAttachment *)&v11 effectiveAttachmentViewSizeForTextContainer:a3];
  if (v4 != 1)
  {
    v5 = [(ICAbstractTextAttachment *)self attachment];
    v6 = [v5 attachmentModel];
    v7 = [v6 hasPreviews];

    if ((v7 & 1) == 0)
    {
      v8 = [(ICPDFTextAttachment *)self encryptionStateChecker];
      v9 = [v8 encryptionState];

      if (v9 != 2)
      {
        LOWORD(v4) = 1;
      }
    }
  }

  return v4;
}

@end