@interface ICUnsupportedTextAttachmentWithFallbackPDF(UI)
- (id)attachmentSizeForTextContainer:()UI;
- (id)attachmentViewClassForTextContainer:()UI;
- (uint64_t)effectiveAttachmentViewSizeForTextContainer:()UI;
@end

@implementation ICUnsupportedTextAttachmentWithFallbackPDF(UI)

- (id)attachmentSizeForTextContainer:()UI
{
  v2.receiver = a1;
  v2.super_class = &off_282817770;
  return objc_msgSendSuper2(&v2, sel_attachmentSizeForTextContainer_);
}

- (uint64_t)effectiveAttachmentViewSizeForTextContainer:()UI
{
  v2 = [a1 attachment];
  v3 = [v2 preferredViewSize];

  if (v3 != 1)
  {
    v4 = [a1 attachment];
    if (![v4 hasFallbackPDF])
    {
      LOWORD(v3) = 1;
    }
  }

  return v3;
}

- (id)attachmentViewClassForTextContainer:()UI
{
  [a1 effectiveAttachmentViewSizeForTextContainer:?];
  v1 = objc_opt_class();

  return v1;
}

@end