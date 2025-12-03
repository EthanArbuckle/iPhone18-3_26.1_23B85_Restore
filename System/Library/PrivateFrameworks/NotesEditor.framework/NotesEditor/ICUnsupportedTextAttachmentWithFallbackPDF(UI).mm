@interface ICUnsupportedTextAttachmentWithFallbackPDF(UI)
- (id)attachmentSizeForTextContainer:()UI;
- (id)attachmentViewClassForTextContainer:()UI;
- (uint64_t)effectiveAttachmentViewSizeForTextContainer:()UI;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackPDF(UI)

- (id)attachmentSizeForTextContainer:()UI
{
  v2.receiver = self;
  v2.super_class = &off_282817770;
  return objc_msgSendSuper2(&v2, sel_attachmentSizeForTextContainer_);
}

- (uint64_t)effectiveAttachmentViewSizeForTextContainer:()UI
{
  attachment = [self attachment];
  preferredViewSize = [attachment preferredViewSize];

  if (preferredViewSize != 1)
  {
    attachment2 = [self attachment];
    if (![attachment2 hasFallbackPDF])
    {
      LOWORD(preferredViewSize) = 1;
    }
  }

  return preferredViewSize;
}

- (id)attachmentViewClassForTextContainer:()UI
{
  [self effectiveAttachmentViewSizeForTextContainer:?];
  v1 = objc_opt_class();

  return v1;
}

@end