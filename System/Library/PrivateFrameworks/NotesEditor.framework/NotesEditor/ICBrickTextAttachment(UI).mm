@interface ICBrickTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI;
@end

@implementation ICBrickTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  v5 = [v4 textLayoutManager];

  if (v5)
  {
    objc_opt_class();
    v6 = [v4 textLayoutManager];
    v7 = ICDynamicCast();

    objc_opt_class();
    v8 = [a1 viewIdentifier];
    v9 = [v7 existingAttachmentViewForIdentifier:v8];
    v10 = ICDynamicCast();

    [v10 attachmentSizeForTextContainer:v4];
    v12 = v11;
  }

  else
  {
    v13 = [v4 layoutManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v4 layoutManager];
      v7 = [a1 viewForLayoutManager:v15];

      [v7 attachmentSizeForTextContainer:v4];
    }

    else
    {
      v17 = [a1 attachment];
      v18 = [v17 preferredViewSize] == 1;

      v19 = MEMORY[0x277D366A0];
      v7 = [a1 attachment];
      [v19 sizeForAttachment:v7 usesSmallSize:v18];
    }

    v12 = v16;
  }

  return v12;
}

@end