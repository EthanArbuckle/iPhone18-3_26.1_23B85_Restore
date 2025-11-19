@interface ICInlineCanvasTextAttachment(MultiSceneSupport)
- (double)attachmentBoundsForAttributes:()MultiSceneSupport location:textContainer:proposedLineFragment:position:;
- (double)attachmentBoundsForTextContainer:()MultiSceneSupport proposedLineFragment:glyphPosition:characterIndex:;
@end

@implementation ICInlineCanvasTextAttachment(MultiSceneSupport)

- (double)attachmentBoundsForAttributes:()MultiSceneSupport location:textContainer:proposedLineFragment:position:
{
  v20 = a10;
  v21 = a11;
  v32.receiver = a1;
  v32.super_class = &off_2828108D8;
  objc_msgSendSuper2(&v32, sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_, a9, v20, v21, a2, a3, a4, a5, a6, a7);
  v23 = v22;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [MEMORY[0x277CCACC8] isMainThread])
  {
    objc_opt_class();
    v24 = ICDynamicCast();
    v25 = [v24 tk2TextView];

    if (objc_opt_respondsToSelector())
    {
      v26 = [v21 textLayoutManager];
      v27 = [v26 documentRange];
      v28 = [v27 location];
      v29 = [v26 offsetFromLocation:v28 toLocation:v20];

      [v25 _pk_boundsForDrawingTextAttachment:a1 characterIndex:v29];
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
  v21 = [v16 layoutManager];
  v22 = ICDynamicCast();

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v23 = [v22 textView];

    if (v23)
    {
      objc_opt_class();
      v24 = [v22 textView];
      v25 = ICDynamicCast();

      if (objc_opt_respondsToSelector())
      {
        v26 = [v16 layoutManager];
        [v25 _boundsForDrawingTextAttachment:a1 characterIndex:a10 layoutManager:v26];
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
    v35.receiver = a1;
    v35.super_class = &off_2828108D8;
    objc_msgSendSuper2(&v35, sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_, v16, a10, a2, a3, a4, a5, a6, a7);
    v17 = v31;
  }

  return v17;
}

@end