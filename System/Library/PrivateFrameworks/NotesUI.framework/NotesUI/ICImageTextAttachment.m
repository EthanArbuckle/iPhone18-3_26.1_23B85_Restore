@interface ICImageTextAttachment
- (id)supportedPresentationSizes;
@end

@implementation ICImageTextAttachment

- (id)supportedPresentationSizes
{
  if (supportedPresentationSizes_onceToken_2 != -1)
  {
    [ICImageTextAttachment supportedPresentationSizes];
  }

  v3 = supportedPresentationSizes_supportedSizes_2;

  return v3;
}

void __51__ICImageTextAttachment_supportedPresentationSizes__block_invoke()
{
  v0 = supportedPresentationSizes_supportedSizes_2;
  supportedPresentationSizes_supportedSizes_2 = &unk_1F4FC3AE0;
}

@end