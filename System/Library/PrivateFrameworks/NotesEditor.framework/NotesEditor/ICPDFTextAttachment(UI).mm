@interface ICPDFTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
- (id)attachmentViewClassForTextContainer:()UI;
@end

@implementation ICPDFTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  if ([a1 effectiveAttachmentViewSizeForTextContainer:v4] == 1)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v5 = [v4 textLayoutManager];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [v4 textLayoutManager];
        objc_opt_class();
        v8 = [a1 viewIdentifier];
        v9 = [v7 existingAttachmentViewForIdentifier:v8];
        v10 = ICCheckedDynamicCast();

        [v10 attachmentSizeForTextContainer:v4];
        v12 = v11;

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v20 = [v4 layoutManager];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        objc_opt_class();
        v22 = [v4 layoutManager];
        v23 = [a1 viewForLayoutManager:v22];
        v7 = ICCheckedDynamicCast();

        [v7 attachmentSizeForTextContainer:v4];
        v12 = v24;
        goto LABEL_16;
      }
    }

    v30 = MEMORY[0x277D366A0];
    v31 = [a1 attachment];
    [v30 sizeForAttachment:v31 usesSmallSize:1];
    v12 = v32;
  }

  else
  {
    [a1 availableWidthForTextContainer:v4];
    v12 = v13;
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v14 = [v4 textLayoutManager];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        v7 = [v4 textLayoutManager];
        objc_opt_class();
        v16 = [a1 viewIdentifier];
        v17 = [v7 existingAttachmentViewForIdentifier:v16];
        v18 = ICCheckedDynamicCast();

        v19 = [v18 page];
        if (v19)
        {
          CGPDFPageGetBoxRect(v19, kCGPDFCropBox);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v25 = [v4 layoutManager];
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if (v26)
      {
        objc_opt_class();
        v27 = [v4 layoutManager];
        v28 = [a1 viewForLayoutManager:v27];
        v7 = ICCheckedDynamicCast();

        v29 = [v7 page];
        if (v29)
        {
          CGPDFPageGetBoxRect(v29, kCGPDFCropBox);
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
  [a1 effectiveAttachmentViewSizeForTextContainer:?];
  v1 = objc_opt_class();

  return v1;
}

@end