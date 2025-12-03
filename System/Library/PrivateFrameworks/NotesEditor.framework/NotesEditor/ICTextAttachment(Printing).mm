@interface ICTextAttachment(Printing)
- (id)imageForBounds:()Printing attributes:location:textContainer:;
- (id)imageForBounds:()Printing textContainer:characterIndex:;
@end

@implementation ICTextAttachment(Printing)

- (id)imageForBounds:()Printing attributes:location:textContainer:
{
  v6 = a5;
  objc_opt_class();
  textLayoutManager = [v6 textLayoutManager];

  v8 = ICDynamicCast();

  if (v8)
  {
    viewIdentifier = [self viewIdentifier];
    v10 = [v8 existingAttachmentViewForIdentifier:viewIdentifier];

    objc_opt_class();
    v11 = ICDynamicCast();
    [v11 prepareForPrinting];

    [v10 frame];
    v13 = v12;
    [v10 frame];
    [v10 setFrame:v13];
    isHidden = [v10 isHidden];
    [v10 setHidden:0];
    objc_opt_class();
    v15 = ICDynamicCast();
    v16 = v15;
    if (!v15 || ([v15 imageForPrinting], (ic_imageRenderedFromLayer = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [v10 layoutIfNeeded];
      v18 = [v10 snapshotViewAfterScreenUpdates:1];
      ic_imageRenderedFromLayer = [v10 ic_imageRenderedFromLayer];
    }

    [v10 setHidden:isHidden];
  }

  else
  {
    ic_imageRenderedFromLayer = 0;
  }

  return ic_imageRenderedFromLayer;
}

- (id)imageForBounds:()Printing textContainer:characterIndex:
{
  v10 = a7;
  objc_opt_class();
  layoutManager = [v10 layoutManager];

  v12 = ICDynamicCast();

  if (v12)
  {
    v13 = [v12 viewForTextAttachment:self];
    objc_opt_class();
    v14 = [v12 viewControllerForTextAttachment:self];
    v15 = ICDynamicCast();
    [v15 prepareForPrinting];

    objc_opt_class();
    v16 = ICDynamicCast();
    [v16 prepareForPrinting];

    [v13 setFrame:{0.0, 0.0, a4, a5}];
    isHidden = [v13 isHidden];
    [v13 setHidden:0];
    objc_opt_class();
    v18 = ICDynamicCast();
    v19 = v18;
    if (!v18 || ([v18 imageForPrinting], (ic_imageRenderedFromLayer = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [v13 layoutIfNeeded];
      v21 = [v13 snapshotViewAfterScreenUpdates:1];
      ic_imageRenderedFromLayer = [v13 ic_imageRenderedFromLayer];
    }

    [v13 setHidden:isHidden];
  }

  else
  {
    ic_imageRenderedFromLayer = 0;
  }

  return ic_imageRenderedFromLayer;
}

@end