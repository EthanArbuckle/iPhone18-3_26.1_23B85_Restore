@interface ICImageTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
@end

@implementation ICImageTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  attachment = [self attachment];
  [attachment intrinsicContentSize];
  [self attachmentSizeForImageInTextContainer:v4 intrinsicImageSize:?];
  v7 = v6;

  return v7;
}

@end