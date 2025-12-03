@interface ICInlineCanvasTextAttachment(MultiSceneSupport)
- (double)attachmentBoundsForAttributes:()MultiSceneSupport location:textContainer:proposedLineFragment:position:;
- (double)attachmentBoundsForTextContainer:()MultiSceneSupport proposedLineFragment:glyphPosition:characterIndex:;
@end

@implementation ICInlineCanvasTextAttachment(MultiSceneSupport)

- (double)attachmentBoundsForAttributes:()MultiSceneSupport location:textContainer:proposedLineFragment:position:
{
  v20 = a10;
  v21 = a11;
  v32.receiver = self;
  v32.super_class = &off_2828108D8;
  objc_msgSendSuper2(&v32, sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_, a9, v20, v21, a2, a3, a4, a5, a6, a7);
  v23 = v22;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [MEMORY[0x277CCACC8] isMainThread])
  {
    objc_opt_class();
    v24 = ICDynamicCast();
    tk2TextView = [v24 tk2TextView];

    if (objc_opt_respondsToSelector())
    {
      textLayoutManager = [v21 textLayoutManager];
      documentRange = [textLayoutManager documentRange];
      location = [documentRange location];
      v29 = [textLayoutManager offsetFromLocation:location toLocation:v20];

      [tk2TextView _pk_boundsForDrawingTextAttachment:self characterIndex:v29];
      x = v33.origin.x;
      if (!CGRectIsEmpty(v33))
      {
        v23 = x;
      }
    }
  }

  return v23;
}

- (double)attachmentBoundsForTextContainer:()MultiSceneSupport proposedLineFragment:glyphPosition:characterIndex:
{
  v16 = a9;
  v17 = *MEMORY[0x277CBF398];
  v18 = *(MEMORY[0x277CBF398] + 8);
  v19 = *(MEMORY[0x277CBF398] + 16);
  v20 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  layoutManager = [v16 layoutManager];
  v22 = ICDynamicCast();

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    textView = [v22 textView];

    if (textView)
    {
      objc_opt_class();
      textView2 = [v22 textView];
      v25 = ICDynamicCast();

      if (objc_opt_respondsToSelector())
      {
        layoutManager2 = [v16 layoutManager];
        [v25 _boundsForDrawingTextAttachment:self characterIndex:a10 layoutManager:layoutManager2];
        v17 = v27;
        v18 = v28;
        v19 = v29;
        v20 = v30;
      }
    }
  }

  v36.origin.x = v17;
  v36.origin.y = v18;
  v36.size.width = v19;
  v36.size.height = v20;
  if (CGRectIsEmpty(v36))
  {
    v35.receiver = self;
    v35.super_class = &off_2828108D8;
    objc_msgSendSuper2(&v35, sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_, v16, a10, a2, a3, a4, a5, a6, a7);
    v17 = v31;
  }

  return v17;
}

@end