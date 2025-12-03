@interface ICPDFTextAttachment
- (ICPDFEncryptionStateChecker)encryptionStateChecker;
- (id)supportedPresentationSizes;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container;
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
    attachment = [(ICAbstractTextAttachment *)self attachment];
    attachmentType = [attachment attachmentType];

    if (attachmentType == 6)
    {
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      media = [attachment2 media];
      mediaURL = [media mediaURL];

      if (mediaURL)
      {
        v8 = [[ICPDFEncryptionStateChecker alloc] initWithPDFURL:mediaURL];
        encryptionStateChecker = self->_encryptionStateChecker;
        self->_encryptionStateChecker = v8;
      }
    }
  }

  v10 = self->_encryptionStateChecker;

  return v10;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container
{
  v11.receiver = self;
  v11.super_class = ICPDFTextAttachment;
  v4 = [(ICBaseTextAttachment *)&v11 effectiveAttachmentViewSizeForTextContainer:container];
  if (v4 != 1)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    attachmentModel = [attachment attachmentModel];
    hasPreviews = [attachmentModel hasPreviews];

    if ((hasPreviews & 1) == 0)
    {
      encryptionStateChecker = [(ICPDFTextAttachment *)self encryptionStateChecker];
      encryptionState = [encryptionStateChecker encryptionState];

      if (encryptionState != 2)
      {
        LOWORD(v4) = 1;
      }
    }
  }

  return v4;
}

@end