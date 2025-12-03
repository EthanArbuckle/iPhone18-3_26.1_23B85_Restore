@interface ICInlineTextAttachment(UI)
- (double)attachmentBoundsForAttributes:()UI location:textContainer:proposedLineFragment:position:;
- (double)attachmentBoundsForTextContainer:()UI proposedLineFragment:glyphPosition:characterIndex:;
- (id)viewProviderForParentView:()UI characterIndex:layoutManager:;
- (id)viewProviderForParentView:()UI location:textContainer:;
@end

@implementation ICInlineTextAttachment(UI)

- (id)viewProviderForParentView:()UI location:textContainer:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  objc_opt_class();
  textLayoutManager = [v8 textLayoutManager];

  v12 = ICDynamicCast();

  v13 = [v12 viewProviderForTextAttachment:self parentView:v10 location:v9];

  return v13;
}

- (double)attachmentBoundsForAttributes:()UI location:textContainer:proposedLineFragment:position:
{
  v20 = a11;
  v41.receiver = self;
  v41.super_class = &off_282809A50;
  v21 = a10;
  v22 = a9;
  objc_msgSendSuper2(&v41, sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_, v22, v21, v20, a2, a3, a4, a5, a6, a7);
  v24 = v23;
  textView = [v20 textView];
  v26 = [self viewProviderForParentView:textView location:v21 textContainer:v20];

  view = [v26 view];
  objc_opt_class();
  v28 = ICDynamicCast();
  objc_opt_class();
  v29 = ICDynamicCast();
  tk2TextView = [v29 tk2TextView];

  objc_opt_class();
  textStorage = [tk2TextView textStorage];
  v32 = ICDynamicCast();

  objc_opt_class();
  styler = [v32 styler];
  v34 = ICDynamicCast();

  authorHighlightsController = [v34 authorHighlightsController];
  v36 = [authorHighlightsController isPerformingHighlightUpdatesForTextStorage:v32];

  if (v36)
  {
    [v28 updateHighlightsWithAttributes:v22];
  }

  else
  {
    [v28 updateStyleWithAttributes:v22];
  }

  [v20 size];
  v38 = v37;
  [v20 lineFragmentPadding];
  [v28 setTextContainerWidth:v38 + v39 * -2.0];
  if (v28)
  {
    [v28 baselineOffsetFromBottom];
    [v28 intrinsicContentSize];
    [v28 intrinsicContentSize];
    v24 = 0.0;
  }

  return v24;
}

- (id)viewProviderForParentView:()UI characterIndex:layoutManager:
{
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 viewProviderForTextAttachment:self parentView:v9 characterIndex:a4];

  return v11;
}

- (double)attachmentBoundsForTextContainer:()UI proposedLineFragment:glyphPosition:characterIndex:
{
  v18 = a9;
  objc_opt_class();
  layoutManager = [v18 layoutManager];
  v20 = ICDynamicCast();

  if (v20)
  {
    v21 = [v20 viewForTextAttachment:self initialCharacterIndex:a10];
    objc_opt_class();
    v22 = ICDynamicCast();
    [v18 size];
    v24 = v23;
    [v18 lineFragmentPadding];
    [v22 setTextContainerWidth:v24 + v25 * -2.0];
    v26 = 0.0;
    if (v22)
    {
      [v22 baselineOffsetFromBottom];
    }

    [v21 frame];
    [v21 frame];
  }

  else
  {
    v29.receiver = self;
    v29.super_class = &off_282809A50;
    objc_msgSendSuper2(&v29, sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_, v18, a10, a2, a3, a4, a5, a6, a7);
    v26 = v27;
  }

  return v26;
}

@end