@interface ICBrickTextAttachment
- (id)supportedPresentationSizes;
@end

@implementation ICBrickTextAttachment

- (id)supportedPresentationSizes
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 attachmentType];

  if (v3 > 6 || ((1 << v3) & 0x54) == 0)
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