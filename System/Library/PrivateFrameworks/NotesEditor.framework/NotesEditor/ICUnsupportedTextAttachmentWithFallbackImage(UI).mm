@interface ICUnsupportedTextAttachmentWithFallbackImage(UI)
- (id)attachmentSizeForTextContainer:()UI;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackImage(UI)

- (id)attachmentSizeForTextContainer:()UI
{
  v2.receiver = self;
  v2.super_class = &off_282816AE8;
  return objc_msgSendSuper2(&v2, sel_attachmentSizeForTextContainer_);
}

@end