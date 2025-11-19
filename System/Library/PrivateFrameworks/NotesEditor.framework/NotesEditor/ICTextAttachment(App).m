@interface ICTextAttachment(App)
- (double)attachmentSizeForImageInTextContainer:()App intrinsicImageSize:;
- (id)viewForLayoutManager:()App;
- (id)viewProviderForParentView:()App characterIndex:layoutManager:;
- (id)viewProviderForParentView:()App location:textContainer:;
- (uint64_t)attachmentThumbnailViewHeight;
- (void)placeView:()App withFrame:inParentView:characterIndex:layoutManager:;
@end

@implementation ICTextAttachment(App)

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

- (id)viewProviderForParentView:()App characterIndex:layoutManager:
{
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 viewProviderForTextAttachment:a1 parentView:v9 characterIndex:a4];

  return v11;
}

- (id)viewForLayoutManager:()App
{
  v3.receiver = a1;
  v3.super_class = &off_28280BA08;
  v1 = objc_msgSendSuper2(&v3, sel_viewForLayoutManager_);

  return v1;
}

- (void)placeView:()App withFrame:inParentView:characterIndex:layoutManager:
{
  v18 = a10;
  v19 = a8;
  v20 = a7;
  objc_opt_class();
  v21 = ICDynamicCast();
  v22 = [v20 superview];

  [a1 attachmentBoundsMargins];
  v24 = v23;
  v26 = v25;
  v29 = a5 - (v27 + v28);
  v30 = a3 + v27;
  v31 = a4 - (v23 + v25);
  v32 = [v21 paragraphStyleForCharacterIndex:a9];
  if ([v32 layoutWritingDirection])
  {
    v33 = v26;
  }

  else
  {
    v33 = v24;
  }

  v34 = a2 + v33;
  [v21 willPlaceView:v20 forTextAttachment:a1];
  v35.receiver = a1;
  v35.super_class = &off_28280BA08;
  objc_msgSendSuper2(&v35, sel_placeView_withFrame_inParentView_characterIndex_layoutManager_, v20, v19, a9, v18, v34, v30, v31, v29);

  if (v22 != v19)
  {
    [v21 didAddViewForTextAttachment:a1];
  }
}

- (double)attachmentSizeForImageInTextContainer:()App intrinsicImageSize:
{
  v8 = a5;
  [v8 size];
  v10 = v9;
  [v8 lineFragmentPadding];
  v12 = v11;

  v13 = v10 + v12 * -2.0;
  v14 = 0.0;
  if (a2 > 0.0)
  {
    if (v13 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = v13;
    }
  }

  if ([a1 supportsMultiplePresentationSizes])
  {
    v15 = [a1 attachment];
    v16 = [v15 preferredViewSize];

    if (v16 == 1 && a3 > 0.0)
    {
      [a1 attachmentThumbnailViewHeight];
      if (a3 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = a3;
      }

      v14 = fmax(a2 * (v18 / a3), 1.0);
      if (v14 > v13)
      {
        return v13;
      }
    }
  }

  return v14;
}

- (uint64_t)attachmentThumbnailViewHeight
{
  v0 = objc_opt_class();

  return [v0 defaultAttachmentThumbnailViewHeight];
}

@end