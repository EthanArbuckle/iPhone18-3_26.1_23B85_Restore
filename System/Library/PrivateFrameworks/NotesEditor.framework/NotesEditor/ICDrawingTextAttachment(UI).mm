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
    textLayoutManager = [v4 textLayoutManager];
    v6 = ICDynamicCast();
    viewIdentifier = [self viewIdentifier];
    v8 = [v6 existingAttachmentViewForIdentifier:viewIdentifier];
  }

  else
  {
    objc_opt_class();
    textLayoutManager = [v4 layoutManager];
    v6 = ICDynamicCast();
    v8 = [v6 viewForTextAttachment:self];
  }

  attachment = [self attachment];
  drawingModel = [attachment drawingModel];
  drawing = [drawingModel drawing];
  [drawing fullBounds];

  if (v8)
  {
    objc_opt_class();
    drawing2 = ICCheckedDynamicCast();
    [drawing2 boundsForDisplay];
  }

  else
  {
    attachment2 = [self attachment];
    drawingModel2 = [attachment2 drawingModel];
    drawing2 = [drawingModel2 drawing];

    [drawing2 bounds];
  }

  [self availableWidthForTextContainer:v4];
  v16 = v15;

  return v16;
}

- (ICDrawingInlineAttachmentView)newlyCreatedViewForManualRenderingInTextContainer:()UI
{
  v4 = a3;
  v5 = [[ICDrawingInlineAttachmentView alloc] initWithTextAttachment:self textContainer:v4 forManualRendering:1];

  return v5;
}

- (double)availableWidthForTextContainer:()UI
{
  v11.receiver = self;
  v11.super_class = &off_282817FE8;
  v3 = a3;
  objc_msgSendSuper2(&v11, sel_availableWidthForTextContainer_, v3);
  v5 = v4;
  objc_opt_class();
  textView = [v3 textView];

  superview = [textView superview];
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
  superview = [v19 superview];
  v22 = ICDynamicCast();

  v23 = 0.0;
  if (!v22)
  {
    v23 = a2;
  }

  v24.receiver = self;
  v24.super_class = &off_282817FE8;
  objc_msgSendSuper2(&v24, sel_placeView_withFrame_inParentView_characterIndex_layoutManager_, v20, v19, a9, v18, v23, a3, a4, a5);
}

@end