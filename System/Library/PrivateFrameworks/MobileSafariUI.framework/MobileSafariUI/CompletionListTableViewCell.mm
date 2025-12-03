@interface CompletionListTableViewCell
- (void)layoutSubviews;
@end

@implementation CompletionListTableViewCell

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = CompletionListTableViewCell;
  [(CompletionListTableViewCell *)&v54 layoutSubviews];
  _sf_usesLeftToRightLayout = [(CompletionListTableViewCell *)self _sf_usesLeftToRightLayout];
  imageView = [(CompletionListTableViewCell *)self imageView];
  image = [imageView image];
  if (image)
  {
    [imageView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [image size];
    v13 = v12;
    v15 = v14;
    +[CompletionListTableViewCell imageWidthSpace];
    v17 = v16;
    if (_sf_usesLeftToRightLayout)
    {
      _SFRoundFloatToPixels();
      v19 = v18;
    }

    else
    {
      contentView = [(CompletionListTableViewCell *)self contentView];
      [contentView bounds];
      CGRectGetMaxX(v55);
      _SFRoundFloatToPixels();
      v19 = v21;
    }

    image2 = [imageView image];
    isSymbolImage = [image2 isSymbolImage];

    if ((isSymbolImage & 1) == 0)
    {
      _SFRoundFloatToPixels();
      v7 = v24;
      v11 = v15;
      v9 = v13;
    }

    [imageView setFrame:{v19, v7, v9, v11}];
    textLabel = [(CompletionListTableViewCell *)self textLabel];
    [textLabel frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    detailTextLabel = [(CompletionListTableViewCell *)self detailTextLabel];
    [detailTextLabel frame];
    v35 = v34;
    v36 = v33;
    v38 = v37;
    if (_sf_usesLeftToRightLayout)
    {
      [(CompletionListTableViewCell *)self bounds];
      v56.origin.x = v17;
      v56.origin.y = v27;
      v56.size.width = v29;
      v56.size.height = v31;
      CGRectGetMaxX(v56);
      v57.origin.x = v17;
      v57.origin.y = v35;
      v57.size.width = v36;
      v57.size.height = v38;
      CGRectGetMaxX(v57);
    }

    else
    {
      v53 = v33;
      v39 = fmax(v17, v9);
      [(CompletionListTableViewCell *)self frame];
      v41 = v27;
      v42 = v40 - v39 - v29;
      [(CompletionListTableViewCell *)self frame];
      v44 = v43 - v39;
      [detailTextLabel frame];
      v45 = v44 - CGRectGetWidth(v58);
      [(CompletionListTableViewCell *)self bounds];
      v47 = v46 + 16.0;
      v59.origin.x = v42;
      v59.origin.y = v41;
      v59.size.width = v29;
      v59.size.height = v31;
      MinX = CGRectGetMinX(v59);
      v49 = v31;
      if (MinX < v47)
      {
        v50 = v47;
        v51 = v41;
        v52 = v29;
        CGRectGetMaxX(*(&v49 - 3));
      }

      v60.origin.x = v45;
      v60.origin.y = v35;
      v60.size.width = v53;
      v60.size.height = v38;
      if (CGRectGetMinX(v60) < v47)
      {
        v61.origin.x = v47;
        v61.origin.y = v35;
        v61.size.width = v53;
        v61.size.height = v38;
        CGRectGetMaxX(v61);
      }
    }

    _SFRoundRectToPixels();
    [textLabel setFrame:?];
    _SFRoundRectToPixels();
    [detailTextLabel setFrame:?];
  }
}

@end