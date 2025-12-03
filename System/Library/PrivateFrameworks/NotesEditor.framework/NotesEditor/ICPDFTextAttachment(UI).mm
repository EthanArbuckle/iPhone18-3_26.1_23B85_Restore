@interface ICPDFTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
- (id)attachmentViewClassForTextContainer:()UI;
@end

@implementation ICPDFTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  if ([self effectiveAttachmentViewSizeForTextContainer:v4] == 1)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      textLayoutManager = [v4 textLayoutManager];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        textLayoutManager2 = [v4 textLayoutManager];
        objc_opt_class();
        viewIdentifier = [self viewIdentifier];
        v9 = [textLayoutManager2 existingAttachmentViewForIdentifier:viewIdentifier];
        v10 = ICCheckedDynamicCast();

        [v10 attachmentSizeForTextContainer:v4];
        v12 = v11;

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      layoutManager = [v4 layoutManager];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        objc_opt_class();
        layoutManager2 = [v4 layoutManager];
        v23 = [self viewForLayoutManager:layoutManager2];
        textLayoutManager2 = ICCheckedDynamicCast();

        [textLayoutManager2 attachmentSizeForTextContainer:v4];
        v12 = v24;
        goto LABEL_16;
      }
    }

    v30 = MEMORY[0x277D366A0];
    attachment = [self attachment];
    [v30 sizeForAttachment:attachment usesSmallSize:1];
    v12 = v32;
  }

  else
  {
    [self availableWidthForTextContainer:v4];
    v12 = v13;
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      textLayoutManager3 = [v4 textLayoutManager];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        textLayoutManager2 = [v4 textLayoutManager];
        objc_opt_class();
        viewIdentifier2 = [self viewIdentifier];
        v17 = [textLayoutManager2 existingAttachmentViewForIdentifier:viewIdentifier2];
        v18 = ICCheckedDynamicCast();

        page = [v18 page];
        if (page)
        {
          CGPDFPageGetBoxRect(page, kCGPDFCropBox);
        }

        goto LABEL_16;
      }
    }

    else
    {
      layoutManager3 = [v4 layoutManager];
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if (v26)
      {
        objc_opt_class();
        layoutManager4 = [v4 layoutManager];
        v28 = [self viewForLayoutManager:layoutManager4];
        textLayoutManager2 = ICCheckedDynamicCast();

        page2 = [textLayoutManager2 page];
        if (page2)
        {
          CGPDFPageGetBoxRect(page2, kCGPDFCropBox);
        }

        goto LABEL_16;
      }
    }
  }

LABEL_17:

  return v12;
}

- (id)attachmentViewClassForTextContainer:()UI
{
  [self effectiveAttachmentViewSizeForTextContainer:?];
  v1 = objc_opt_class();

  return v1;
}

@end