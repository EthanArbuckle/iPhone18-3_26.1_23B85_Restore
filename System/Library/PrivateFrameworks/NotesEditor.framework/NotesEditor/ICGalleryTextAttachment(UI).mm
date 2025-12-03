@interface ICGalleryTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
- (id)attachmentViewClassForTextContainer:()UI;
- (id)supportedPresentationSizes;
@end

@implementation ICGalleryTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  if ([self effectiveAttachmentViewSizeForTextContainer:v4] != 1)
  {
    [self availableWidthForTextContainer:v4];
    v14 = v13;
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
        v18 = [textLayoutManager2 existingAttachmentViewForIdentifier:viewIdentifier];
        v10 = ICDynamicCast();

LABEL_12:
        attachment = [self attachment];
        [ICGalleryAttachmentView sizeOfViewForAttachment:attachment textViewContentWidth:v10 existingView:v14];
        v12 = v29;

        goto LABEL_13;
      }
    }

    else
    {
      layoutManager = [v4 layoutManager];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        objc_opt_class();
        layoutManager2 = [v4 layoutManager];
        textLayoutManager2 = ICCheckedDynamicCast();

        objc_opt_class();
        v27 = [textLayoutManager2 viewForTextAttachmentNoCreate:self];
        v10 = ICDynamicCast();

        goto LABEL_12;
      }
    }

    v31 = MEMORY[0x277D36798];
    textLayoutManager2 = [self attachment];
    [v31 sizeOfViewForAttachment:textLayoutManager2 textViewContentWidth:v14];
    goto LABEL_16;
  }

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    layoutManager3 = [v4 layoutManager];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if (v20)
    {
      objc_opt_class();
      layoutManager4 = [v4 layoutManager];
      v22 = [self viewForLayoutManager:layoutManager4];
      textLayoutManager2 = ICCheckedDynamicCast();

      [textLayoutManager2 attachmentSizeForTextContainer:v4];
LABEL_16:
      v12 = v23;
      goto LABEL_17;
    }

LABEL_14:
    v30 = MEMORY[0x277D366A0];
    textLayoutManager2 = [self attachment];
    [v30 sizeForAttachment:textLayoutManager2 usesSmallSize:1];
    goto LABEL_16;
  }

  textLayoutManager3 = [v4 textLayoutManager];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  textLayoutManager2 = [v4 textLayoutManager];
  objc_opt_class();
  viewIdentifier2 = [self viewIdentifier];
  v9 = [textLayoutManager2 existingAttachmentViewForIdentifier:viewIdentifier2];
  v10 = ICCheckedDynamicCast();

  [v10 attachmentSizeForTextContainer:v4];
  v12 = v11;
LABEL_13:

LABEL_17:
  return v12;
}

- (id)attachmentViewClassForTextContainer:()UI
{
  [self effectiveAttachmentViewSizeForTextContainer:?];
  v1 = objc_opt_class();

  return v1;
}

- (id)supportedPresentationSizes
{
  if (supportedPresentationSizes_onceToken[0] != -1)
  {
    [ICGalleryTextAttachment(UI) supportedPresentationSizes];
  }

  v1 = supportedPresentationSizes_supportedSizes;

  return v1;
}

@end