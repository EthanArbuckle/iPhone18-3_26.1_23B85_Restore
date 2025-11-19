@interface ICImageTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
@end

@implementation ICImageTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  v5 = [a1 attachment];
  [v5 intrinsicContentSize];
  [a1 attachmentSizeForImageInTextContainer:v4 intrinsicImageSize:?];
  v7 = v6;

  return v7;
}

@end