@interface CKBusinessMacToolbarView
- (CGRect)detailsPopoverFrame;
- (CGSize)_maxSizeForImage:(id)image;
- (UILabel)fallbackTitleLabel;
- (id)_generateScaledImageFromBannerData;
- (void)_updateBannerImage:(id)image;
- (void)layoutSubviews;
- (void)setBannerImageData:(id)data;
- (void)setFallbackTitle:(id)title;
- (void)setFallbackTitleColor:(id)color;
- (void)setPreferredHeight:(double)height;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKBusinessMacToolbarView

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = CKBusinessMacToolbarView;
  [(CKBusinessMacToolbarView *)&v46 layoutSubviews];
  _shouldReverseLayoutDirection = [(CKBusinessMacToolbarView *)self _shouldReverseLayoutDirection];
  leftItemView = [(CKBusinessMacToolbarView *)self leftItemView];
  [leftItemView frame];

  bannerImage = [(CKBusinessMacToolbarView *)self bannerImage];
  [(CKBusinessMacToolbarView *)self _maxSizeForImage:bannerImage];
  v7 = v6;
  v9 = v8;

  bannerImage2 = [(CKBusinessMacToolbarView *)self bannerImage];
  [bannerImage2 size];
  v12 = v11;
  v14 = v13;

  if (v12 <= 0.0 || v14 <= 0.0)
  {
    if (_shouldReverseLayoutDirection)
    {
      [(CKBusinessMacToolbarView *)self detailsPopoverFrame];
      v18 = v17;
      [(CKBusinessMacToolbarView *)self detailsPopoverFrame];
      v20 = v18 + v19;
    }

    else
    {
      [(CKBusinessMacToolbarView *)self frame];
      v22 = v21;
      [(CKBusinessMacToolbarView *)self detailsPopoverFrame];
      v20 = v22 - v23;
    }

    [(CKBusinessMacToolbarView *)self frame];
    v25 = v24;
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 macNavbarLeftMargin];
    v16 = v25 - v27 + -8.0 - v20;
  }

  else
  {
    v15 = v7 / v12;
    if (v7 / v12 >= v9 / v14)
    {
      v15 = v9 / v14;
    }

    v16 = v12 * v15;
    v9 = v14 * v15;
  }

  [(CKBusinessMacToolbarView *)self preferredHeight];
  v29 = v28;
  if (_shouldReverseLayoutDirection)
  {
    [(CKBusinessMacToolbarView *)self frame];
    v31 = v30;
    v32 = +[CKUIBehavior sharedBehaviors];
    [v32 macNavbarLeftMargin];
    v34 = v31 - v33 - v16;

    showingInStandAloneWindow = [(CKBusinessMacToolbarView *)self showingInStandAloneWindow];
    v36 = -73.0;
  }

  else
  {
    v37 = +[CKUIBehavior sharedBehaviors];
    [v37 macNavbarLeftMargin];
    v34 = v38;

    showingInStandAloneWindow = [(CKBusinessMacToolbarView *)self showingInStandAloneWindow];
    v36 = 73.0;
  }

  v39 = v34 + v36;
  if (showingInStandAloneWindow)
  {
    v34 = v39;
  }

  v40 = (v29 - v9) * 0.5;
  traitCollection = [(CKBusinessMacToolbarView *)self traitCollection];
  [traitCollection displayScale];
  v43 = round(v34 * v42) / v42;
  v44 = round(v40 * v42) / v42;

  leftItemView2 = [(CKBusinessMacToolbarView *)self leftItemView];
  [leftItemView2 setFrame:{v43, v44, v16, v9}];
}

- (void)setBannerImageData:(id)data
{
  dataCopy = data;
  if (([dataCopy isEqualToData:self->_bannerImageData] & 1) == 0)
  {
    objc_storeStrong(&self->_bannerImageData, data);
    _generateScaledImageFromBannerData = [(CKBusinessMacToolbarView *)self _generateScaledImageFromBannerData];
    if (_generateScaledImageFromBannerData)
    {
      [(CKBusinessMacToolbarView *)self _updateBannerImage:_generateScaledImageFromBannerData];
    }
  }
}

- (void)setFallbackTitle:(id)title
{
  titleCopy = title;
  fallbackTitleLabel = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
  [fallbackTitleLabel setText:titleCopy];

  bannerImage = [(CKBusinessMacToolbarView *)self bannerImage];

  if (!bannerImage)
  {
    leftItemView = [(CKBusinessMacToolbarView *)self leftItemView];
    superview = [leftItemView superview];

    if (superview)
    {
      leftItemView2 = [(CKBusinessMacToolbarView *)self leftItemView];
      [leftItemView2 removeFromSuperview];
    }

    if (titleCopy)
    {
      fallbackTitleLabel2 = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
      [(CKBusinessMacToolbarView *)self setLeftItemView:fallbackTitleLabel2];

      leftItemView3 = [(CKBusinessMacToolbarView *)self leftItemView];
      [(CKBusinessMacToolbarView *)self addSubview:leftItemView3];

      [(CKBusinessMacToolbarView *)self setNeedsLayout];
    }
  }
}

- (void)setFallbackTitleColor:(id)color
{
  colorCopy = color;
  fallbackTitleLabel = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
  [fallbackTitleLabel setTextColor:colorCopy];
}

- (void)setPreferredHeight:(double)height
{
  if (self->_preferredHeight != height)
  {
    self->_preferredHeight = height;
    [(CKBusinessMacToolbarView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  [change displayScale];
  v5 = v4;
  traitCollection = [(CKBusinessMacToolbarView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  if (v5 != v8)
  {
    _generateScaledImageFromBannerData = [(CKBusinessMacToolbarView *)self _generateScaledImageFromBannerData];
    if (_generateScaledImageFromBannerData)
    {
      v10 = _generateScaledImageFromBannerData;
      [(CKBusinessMacToolbarView *)self _updateBannerImage:_generateScaledImageFromBannerData];
      _generateScaledImageFromBannerData = v10;
    }
  }
}

- (UILabel)fallbackTitleLabel
{
  fallbackTitleLabel = self->_fallbackTitleLabel;
  if (!fallbackTitleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_fallbackTitleLabel;
    self->_fallbackTitleLabel = v5;

    fallbackTitleLabel = self->_fallbackTitleLabel;
  }

  return fallbackTitleLabel;
}

- (id)_generateScaledImageFromBannerData
{
  bannerImageData = [(CKBusinessMacToolbarView *)self bannerImageData];

  if (bannerImageData)
  {
    v4 = MEMORY[0x1E69DCAB8];
    bannerImageData2 = [(CKBusinessMacToolbarView *)self bannerImageData];
    traitCollection = [(CKBusinessMacToolbarView *)self traitCollection];
    [traitCollection displayScale];
    v7 = [v4 imageWithData:bannerImageData2 scale:?];

    preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
    traitCollection2 = [(CKBusinessMacToolbarView *)self traitCollection];
    [traitCollection2 displayScale];
    [preferredFormat setScale:?];

    [preferredFormat setPreferredRange:0];
    [preferredFormat setOpaque:0];
    [(CKBusinessMacToolbarView *)self _maxSizeForImage:v7];
    v11 = v10;
    v13 = v12;
    [v7 size];
    v16 = v11 / v14;
    if (v11 / v14 >= v13 / v15)
    {
      v16 = v13 / v15;
    }

    v17 = v14 * v16;
    v18 = v15 * v16;
    v19 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:preferredFormat format:{0.0, 0.0, v14 * v16, v15 * v16}];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__CKBusinessMacToolbarView__generateScaledImageFromBannerData__block_invoke;
    v23[3] = &unk_1E72F24C8;
    v25 = 0;
    v26 = 0;
    v24 = v7;
    v27 = v17;
    v28 = v18;
    v20 = v7;
    v21 = [v19 imageWithActions:v23];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_updateBannerImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    [(CKBusinessMacToolbarView *)self setBannerImage:imageCopy];
    leftItemView = [(CKBusinessMacToolbarView *)self leftItemView];
    superview = [leftItemView superview];

    if (superview)
    {
      leftItemView2 = [(CKBusinessMacToolbarView *)self leftItemView];
      [leftItemView2 removeFromSuperview];
    }

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];

    [v9 setClipsToBounds:1];
    [(CKBusinessMacToolbarView *)self setLeftItemView:v9];
    leftItemView3 = [(CKBusinessMacToolbarView *)self leftItemView];
    [(CKBusinessMacToolbarView *)self addSubview:leftItemView3];

    [(CKBusinessMacToolbarView *)self setNeedsLayout];
  }
}

- (CGSize)_maxSizeForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  if (v4 > 0.0 && ([imageCopy size], v5 > 0.0) && (objc_msgSend(imageCopy, "size"), v7 = v6, objc_msgSend(imageCopy, "size"), v7 == v8))
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 businessSquareToolbarLogoHeight];
    v11 = v10;
    v12 = v10;
  }

  else
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 businessBannerSize];
    v12 = v14;

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 businessBannerSize];
    v11 = v15;
  }

  v16 = v12;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGRect)detailsPopoverFrame
{
  x = self->_detailsPopoverFrame.origin.x;
  y = self->_detailsPopoverFrame.origin.y;
  width = self->_detailsPopoverFrame.size.width;
  height = self->_detailsPopoverFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end