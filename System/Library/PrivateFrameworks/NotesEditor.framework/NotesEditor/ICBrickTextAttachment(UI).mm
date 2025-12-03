@interface ICBrickTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
@end

@implementation ICBrickTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  textLayoutManager = [v4 textLayoutManager];

  if (textLayoutManager)
  {
    objc_opt_class();
    textLayoutManager2 = [v4 textLayoutManager];
    attachment2 = ICDynamicCast();

    objc_opt_class();
    viewIdentifier = [self viewIdentifier];
    v9 = [attachment2 existingAttachmentViewForIdentifier:viewIdentifier];
    v10 = ICDynamicCast();

    [v10 attachmentSizeForTextContainer:v4];
    v12 = v11;
  }

  else
  {
    layoutManager = [v4 layoutManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      layoutManager2 = [v4 layoutManager];
      attachment2 = [self viewForLayoutManager:layoutManager2];

      [attachment2 attachmentSizeForTextContainer:v4];
    }

    else
    {
      attachment = [self attachment];
      v18 = [attachment preferredViewSize] == 1;

      v19 = MEMORY[0x277D366A0];
      attachment2 = [self attachment];
      [v19 sizeForAttachment:attachment2 usesSmallSize:v18];
    }

    v12 = v16;
  }

  return v12;
}

@end