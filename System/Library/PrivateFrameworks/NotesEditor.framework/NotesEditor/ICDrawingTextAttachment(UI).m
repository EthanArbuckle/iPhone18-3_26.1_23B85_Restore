@interface ICDrawingTextAttachment(UI)
- (ICDrawingInlineAttachmentView)newlyCreatedViewForManualRenderingInTextContainer:()UI;
- (double)attachmentSizeForTextContainer:()UI;
- (double)availableWidthForTextContainer:()UI;
- (void)placeView:()UI withFrame:inParentView:characterIndex:layoutManager:;
@end

@implementation ICDrawingTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI
{
  v4 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v5 = [v4 textLayoutManager];
    v6 = ICDynamicCast();
    v7 = [a1 viewIdentifier];
    v8 = [v6 existingAttachmentViewForIdentifier:v7];
  }

  else
  {
    objc_opt_class();
    v5 = [v4 layoutManager];
    v6 = ICDynamicCast();
    v8 = [v6 viewForTextAttachment:a1];
  }

  v9 = [a1 attachment];
  v10 = [v9 drawingModel];
  v11 = [v10 drawing];
  [v11 fullBounds];

  if (v8)
  {
    objc_opt_class();
    v12 = ICCheckedDynamicCast();
    [v12 boundsForDisplay];
  }

  else
  {
    v13 = [a1 attachment];
    v14 = [v13 drawingModel];
    v12 = [v14 drawing];

    [v12 bounds];
  }

  [a1 availableWidthForTextContainer:v4];
  v16 = v15;

  return v16;
}

- (ICDrawingInlineAttachmentView)newlyCreatedViewForManualRenderingInTextContainer:()UI
{
  v4 = a3;
  v5 = [[ICDrawingInlineAttachmentView alloc] initWithTextAttachment:a1 textContainer:v4 forManualRendering:1];

  return v5;
}

- (double)availableWidthForTextContainer:()UI
{
  v11.receiver = a1;
  v11.super_class = &off_282817FE8;
  v3 = a3;
  objc_msgSendSuper2(&v11, sel_availableWidthForTextContainer_, v3);
  v5 = v4;
  objc_opt_class();
  v6 = [v3 textView];

  v7 = [v6 superview];
  v8 = ICDynamicCast();

  if (v8)
  {
    [v8 bounds];
    v5 = v9;
  }

  return v5;
}

- (void)placeView:()UI withFrame:inParentView:characterIndex:layoutManager:
{
  v18 = a10;
  v19 = a8;
  v20 = a7;
  objc_opt_class();
  v21 = [v19 superview];
  v22 = ICDynamicCast();

  v23 = 0.0;
  if (!v22)
  {
    v23 = a2;
  }

  v24.receiver = a1;
  v24.super_class = &off_282817FE8;
  objc_msgSendSuper2(&v24, sel_placeView_withFrame_inParentView_characterIndex_layoutManager_, v20, v19, a9, v18, v23, a3, a4, a5);
}

@end