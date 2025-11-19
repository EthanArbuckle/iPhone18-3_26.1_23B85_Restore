@interface CKBusinessMacToolbarView
- (CGRect)detailsPopoverFrame;
- (CGSize)_maxSizeForImage:(id)a3;
- (UILabel)fallbackTitleLabel;
- (id)_generateScaledImageFromBannerData;
- (void)_updateBannerImage:(id)a3;
- (void)layoutSubviews;
- (void)setBannerImageData:(id)a3;
- (void)setFallbackTitle:(id)a3;
- (void)setFallbackTitleColor:(id)a3;
- (void)setPreferredHeight:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKBusinessMacToolbarView

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = CKBusinessMacToolbarView;
  [(CKBusinessMacToolbarView *)&v46 layoutSubviews];
  v3 = [(CKBusinessMacToolbarView *)self _shouldReverseLayoutDirection];
  v4 = [(CKBusinessMacToolbarView *)self leftItemView];
  [v4 frame];

  v5 = [(CKBusinessMacToolbarView *)self bannerImage];
  [(CKBusinessMacToolbarView *)self _maxSizeForImage:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CKBusinessMacToolbarView *)self bannerImage];
  [v10 size];
  v12 = v11;
  v14 = v13;

  if (v12 <= 0.0 || v14 <= 0.0)
  {
    if (v3)
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
  if (v3)
  {
    [(CKBusinessMacToolbarView *)self frame];
    v31 = v30;
    v32 = +[CKUIBehavior sharedBehaviors];
    [v32 macNavbarLeftMargin];
    v34 = v31 - v33 - v16;

    v35 = [(CKBusinessMacToolbarView *)self showingInStandAloneWindow];
    v36 = -73.0;
  }

  else
  {
    v37 = +[CKUIBehavior sharedBehaviors];
    [v37 macNavbarLeftMargin];
    v34 = v38;

    v35 = [(CKBusinessMacToolbarView *)self showingInStandAloneWindow];
    v36 = 73.0;
  }

  v39 = v34 + v36;
  if (v35)
  {
    v34 = v39;
  }

  v40 = (v29 - v9) * 0.5;
  v41 = [(CKBusinessMacToolbarView *)self traitCollection];
  [v41 displayScale];
  v43 = round(v34 * v42) / v42;
  v44 = round(v40 * v42) / v42;

  v45 = [(CKBusinessMacToolbarView *)self leftItemView];
  [v45 setFrame:{v43, v44, v16, v9}];
}

- (void)setBannerImageData:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToData:self->_bannerImageData] & 1) == 0)
  {
    objc_storeStrong(&self->_bannerImageData, a3);
    v5 = [(CKBusinessMacToolbarView *)self _generateScaledImageFromBannerData];
    if (v5)
    {
      [(CKBusinessMacToolbarView *)self _updateBannerImage:v5];
    }
  }
}

- (void)setFallbackTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
  [v5 setText:v4];

  v6 = [(CKBusinessMacToolbarView *)self bannerImage];

  if (!v6)
  {
    v7 = [(CKBusinessMacToolbarView *)self leftItemView];
    v8 = [v7 superview];

    if (v8)
    {
      v9 = [(CKBusinessMacToolbarView *)self leftItemView];
      [v9 removeFromSuperview];
    }

    if (v4)
    {
      v10 = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
      [(CKBusinessMacToolbarView *)self setLeftItemView:v10];

      v11 = [(CKBusinessMacToolbarView *)self leftItemView];
      [(CKBusinessMacToolbarView *)self addSubview:v11];

      [(CKBusinessMacToolbarView *)self setNeedsLayout];
    }
  }
}

- (void)setFallbackTitleColor:(id)a3
{
  v4 = a3;
  v5 = [(CKBusinessMacToolbarView *)self fallbackTitleLabel];
  [v5 setTextColor:v4];
}

- (void)setPreferredHeight:(double)a3
{
  if (self->_preferredHeight != a3)
  {
    self->_preferredHeight = a3;
    [(CKBusinessMacToolbarView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  [a3 displayScale];
  v5 = v4;
  v6 = [(CKBusinessMacToolbarView *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [(CKBusinessMacToolbarView *)self _generateScaledImageFromBannerData];
    if (v9)
    {
      v10 = v9;
      [(CKBusinessMacToolbarView *)self _updateBannerImage:v9];
      v9 = v10;
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
  v3 = [(CKBusinessMacToolbarView *)self bannerImageData];

  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [(CKBusinessMacToolbarView *)self bannerImageData];
    v6 = [(CKBusinessMacToolbarView *)self traitCollection];
    [v6 displayScale];
    v7 = [v4 imageWithData:v5 scale:?];

    v8 = [MEMORY[0x1E69DCA80] preferredFormat];
    v9 = [(CKBusinessMacToolbarView *)self traitCollection];
    [v9 displayScale];
    [v8 setScale:?];

    [v8 setPreferredRange:0];
    [v8 setOpaque:0];
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
    v19 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:v8 format:{0.0, 0.0, v14 * v16, v15 * v16}];
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

- (void)_updateBannerImage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(CKBusinessMacToolbarView *)self setBannerImage:v4];
    v5 = [(CKBusinessMacToolbarView *)self leftItemView];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(CKBusinessMacToolbarView *)self leftItemView];
      [v7 removeFromSuperview];
    }

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];

    [v9 setClipsToBounds:1];
    [(CKBusinessMacToolbarView *)self setLeftItemView:v9];
    v8 = [(CKBusinessMacToolbarView *)self leftItemView];
    [(CKBusinessMacToolbarView *)self addSubview:v8];

    [(CKBusinessMacToolbarView *)self setNeedsLayout];
  }
}

- (CGSize)_maxSizeForImage:(id)a3
{
  v3 = a3;
  [v3 size];
  if (v4 > 0.0 && ([v3 size], v5 > 0.0) && (objc_msgSend(v3, "size"), v7 = v6, objc_msgSend(v3, "size"), v7 == v8))
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