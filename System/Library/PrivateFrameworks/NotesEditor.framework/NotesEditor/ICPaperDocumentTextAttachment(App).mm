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
  textLayoutManager = [v8 textLayoutManager];

  v12 = ICDynamicCast();

  v13 = [v12 viewProviderForTextAttachment:self parentView:v10 location:v9];

  return v13;
}

- (id)imageForBounds:()App attributes:location:textContainer:
{
  v12 = a9;
  objc_opt_class();
  textLayoutManager = [v12 textLayoutManager];

  v14 = ICDynamicCast();

  if (v14)
  {
    viewIdentifier = [self viewIdentifier];
    v16 = [v14 existingAttachmentViewForIdentifier:viewIdentifier];

    objc_opt_class();
    v17 = ICDynamicCast();
    [v17 prepareForPrinting];

    [v16 setFrame:{0.0, 0.0, a4, a5}];
    isHidden = [v16 isHidden];
    [v16 setHidden:0];
    [v16 layoutIfNeeded];
    v19 = [v16 snapshotViewAfterScreenUpdates:1];
    ic_imageRenderedFromLayer = [v16 ic_imageRenderedFromLayer];
    [v16 setHidden:isHidden];
  }

  else
  {
    ic_imageRenderedFromLayer = 0;
  }

  return ic_imageRenderedFromLayer;
}

- (id)imageForBounds:()App textContainer:characterIndex:
{
  v14 = a7;
  objc_opt_class();
  layoutManager = [v14 layoutManager];
  v16 = ICDynamicCast();

  if (v16)
  {
    v25.receiver = self;
    v25.super_class = &off_2828197F0;
    v17 = objc_msgSendSuper2(&v25, sel_imageForBounds_textContainer_characterIndex_, v14, a8, a2, a3, a4, a5);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = [self viewProviderForParentView:0 characterIndex:a8 layoutManager:v16];
      view = [v19 view];

      [view setFrame:{0.0, 0.0, a4, a5}];
      isHidden = [view isHidden];
      [view setHidden:0];
      [view layoutIfNeeded];
      v22 = [view snapshotViewAfterScreenUpdates:1];
      ic_imageRenderedFromLayer = [view ic_imageRenderedFromLayer];
      [view setHidden:isHidden];
      v18 = ic_imageRenderedFromLayer;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end