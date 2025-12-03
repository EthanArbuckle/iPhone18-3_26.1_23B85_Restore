@interface ICTableTextAttachment(UI)
- (double)attachmentSizeForTextContainer:()UI proposedLineFragment:;
- (double)availableWidthForTextContainer:()UI;
- (void)placeView:()UI withFrame:inParentView:characterIndex:layoutManager:;
@end

@implementation ICTableTextAttachment(UI)

- (double)attachmentSizeForTextContainer:()UI proposedLineFragment:
{
  v12 = a7;
  if (!v12)
  {
    [self lastAttachmentSize];
    v14 = v26;
    goto LABEL_18;
  }

  [self availableWidthForTextContainer:v12];
  v14 = v13;
  [self setLastAvailableWidth:?];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    layoutManager = [v12 layoutManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_opt_class();
      layoutManager2 = [v12 layoutManager];
      attachment = ICCheckedDynamicCast();

      objc_opt_class();
      v19 = [attachment viewControllerForTextAttachment:self];
      tableModel = ICCheckedDynamicCast();

LABEL_7:
      v32.origin.x = a2;
      v32.origin.y = a3;
      v32.size.width = a4;
      v32.size.height = a5;
      if (!CGRectIsNull(v32))
      {
        [tableModel setProposedLineFragmentRect:{a2, a3, a4, a5}];
      }

      [tableModel intrinsicSize];
      goto LABEL_15;
    }
  }

  textLayoutManager = [v12 textLayoutManager];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    objc_opt_class();
    textLayoutManager2 = [v12 textLayoutManager];
    attachment = ICCheckedDynamicCast();

    tableModel = [attachment tableViewControllerForAttachment:self createIfNeeded:1];
    goto LABEL_7;
  }

  [v12 size];
  if (v27 >= v14 * 3.0)
  {
    v28 = v14 * 3.0;
  }

  else
  {
    v28 = v27;
  }

  attachment = [self attachment];
  tableModel = [attachment tableModel];
  [tableModel previewInAvailableSize:0 shouldDraw:{v14, v28}];
LABEL_15:
  v29 = v24;
  v30 = v25;

  if (v14 >= v29)
  {
    v14 = v29;
  }

  [self setLastAttachmentSize:{v14, v30}];
LABEL_18:

  return v14;
}

- (double)availableWidthForTextContainer:()UI
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = &off_28280BE08;
  objc_msgSendSuper2(&v19, sel_availableWidthForTextContainer_, v4);
  v6 = v5;
  objc_opt_class();
  textView = [v4 textView];
  superview = [textView superview];
  v9 = ICDynamicCast();

  if (v9)
  {
    ic_isRTL = [v9 ic_isRTL];
    [v9 textContainerInset];
    if (ic_isRTL)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [v9 bounds];
    v15 = v14 - v13 * 2.0;
    [v4 lineFragmentPadding];
    v17 = v15 - v16 * 2.0;
    if (v6 < v17 + -50.0)
    {
      v6 = v17;
    }
  }

  return v6;
}

- (void)placeView:()UI withFrame:inParentView:characterIndex:layoutManager:
{
  v18 = a7;
  v19 = a8;
  v20 = a10;
  objc_opt_class();
  superview = [v19 superview];
  v22 = ICDynamicCast();

  if (v22)
  {
    if ([v22 ic_isRTL])
    {
      textContainer = [v22 textContainer];
      v34.receiver = self;
      v34.super_class = &off_28280BE08;
      objc_msgSendSuper2(&v34, sel_availableWidthForTextContainer_, textContainer);
      v25 = v24;

      textContainer2 = [v22 textContainer];
      [self availableWidthForTextContainer:textContainer2];
      v28 = v27;

      if (a4 > v25)
      {
        [v22 textContainerInset];
        v30 = v28 - a4 + v29;
        textContainer3 = [v22 textContainer];
        [textContainer3 lineFragmentPadding];
        a2 = v30 + v32;
      }
    }
  }

  v33.receiver = self;
  v33.super_class = &off_28280BE08;
  objc_msgSendSuper2(&v33, sel_placeView_withFrame_inParentView_characterIndex_layoutManager_, v18, v19, a9, v20, a2, a3, a4, a5);
}

@end