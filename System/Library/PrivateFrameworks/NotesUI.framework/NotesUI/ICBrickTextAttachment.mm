@interface ICBrickTextAttachment
- (id)supportedPresentationSizes;
@end

@implementation ICBrickTextAttachment

- (id)supportedPresentationSizes
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType > 6 || ((1 << attachmentType) & 0x54) == 0)
  {
    if (supportedPresentationSizes_onceToken_0 != -1)
    {
      [ICBrickTextAttachment supportedPresentationSizes];
    }

    v5 = supportedPresentationSizes_supportedSizes_0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __51__ICBrickTextAttachment_supportedPresentationSizes__block_invoke()
{
  v0 = supportedPresentationSizes_supportedSizes_0;
  supportedPresentationSizes_supportedSizes_0 = &unk_1F4FC3A68;
}

@end