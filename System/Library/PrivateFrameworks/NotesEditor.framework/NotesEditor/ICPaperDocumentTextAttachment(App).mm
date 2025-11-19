@interface ICPaperDocumentTextAttachment(App)
- (id)imageForBounds:()App attributes:location:textContainer:;
- (id)imageForBounds:()App textContainer:characterIndex:;
- (id)viewProviderForParentView:()App location:textContainer:;
@end

@implementation ICPaperDocumentTextAttachment(App)

- (id)viewProviderForParentView:()App location:textContainer:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  objc_opt_class();
  v11 = [v8 textLayoutManager];

  v12 = ICDynamicCast();

  v13 = [v12 viewProviderForTextAttachment:a1 parentView:v10 location:v9];

  return v13;
}

- (id)imageForBounds:()App attributes:location:textContainer:
{
  v12 = a9;
  objc_opt_class();
  v13 = [v12 textLayoutManager];

  v14 = ICDynamicCast();

  if (v14)
  {
    v15 = [a1 viewIdentifier];
    v16 = [v14 existingAttachmentViewForIdentifier:v15];

    objc_opt_class();
    v17 = ICDynamicCast();
    [v17 prepareForPrinting];

    [v16 setFrame:{0.0, 0.0, a4, a5}];
    v18 = [v16 isHidden];
    [v16 setHidden:0];
    [v16 layoutIfNeeded];
    v19 = [v16 snapshotViewAfterScreenUpdates:1];
    v20 = [v16 ic_imageRenderedFromLayer];
    [v16 setHidden:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)imageForBounds:()App textContainer:characterIndex:
{
  v14 = a7;
  objc_opt_class();
  v15 = [v14 layoutManager];
  v16 = ICDynamicCast();

  if (v16)
  {
    v25.receiver = a1;
    v25.super_class = &off_2828197F0;
    v17 = objc_msgSendSuper2(&v25, sel_imageForBounds_textContainer_characterIndex_, v14, a8, a2, a3, a4, a5);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = [a1 viewProviderForParentView:0 characterIndex:a8 layoutManager:v16];
      v20 = [v19 view];

      [v20 setFrame:{0.0, 0.0, a4, a5}];
      v21 = [v20 isHidden];
      [v20 setHidden:0];
      [v20 layoutIfNeeded];
      v22 = [v20 snapshotViewAfterScreenUpdates:1];
      v23 = [v20 ic_imageRenderedFromLayer];
      [v20 setHidden:v21];
      v18 = v23;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end