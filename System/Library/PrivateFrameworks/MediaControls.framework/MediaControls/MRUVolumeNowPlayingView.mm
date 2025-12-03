@interface MRUVolumeNowPlayingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUVolumeNowPlayingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRUVolumeNowPlayingView

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = MRUVolumeNowPlayingView;
  [(MRUVolumeNowPlayingView *)&v37 layoutSubviews];
  [(MRUVolumeNowPlayingView *)self bounds];
  axis = self->_axis;
  if (axis == 1)
  {
    UIRectCenteredXInRect();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(UIImageView *)self->_imageView setFrame:?];
    v40.origin.x = v22;
    v40.origin.y = v24;
    v40.size.width = v26;
    v40.size.height = v28;
    CGRectGetHeight(v40);
    UIRectInset();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel sizeThatFits:v33, v35];
    MRUSizeCeilToViewScale(self);
    v41.origin.x = v30;
    v41.origin.y = v32;
    v41.size.width = v34;
    v41.size.height = v36;
    CGRectGetMinY(v41);
    UIRectCenteredYInRect();
  }

  else
  {
    if (axis)
    {
      return;
    }

    UIRectCenteredYInRect();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(MRUVolumeNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(UIImageView *)self->_imageView setFrame:?];
    v38.origin.x = v5;
    v38.origin.y = v7;
    v38.size.width = v9;
    v38.size.height = v11;
    CGRectGetWidth(v38);
    UIRectInset();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel sizeThatFits:v16, v18];
    MRUSizeCeilToViewScale(self);
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    CGRectGetMinX(v39);
    UIRectCenteredYInRect();
    [(MRUVolumeNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  }

  [(UILabel *)*p_titleLabel setFrame:?];
}

- (MRUVolumeNowPlayingView)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MRUVolumeNowPlayingView;
  v3 = [(MRUVolumeNowPlayingView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setUserInteractionEnabled:0];
    [(MRUVolumeNowPlayingView *)v3 addSubview:v3->_imageView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(MRUVolumeNowPlayingView *)v3 addSubview:v3->_titleLabel];
    v15[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [(MRUVolumeNowPlayingView *)v3 registerForTraitChanges:v8 withAction:sel_updateVisualStyling];

    v14 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v11 = [(MRUVolumeNowPlayingView *)v3 registerForTraitChanges:v10 withAction:sel_updateContentSizeCategory];

    [(MRUVolumeNowPlayingView *)v3 updateContentSizeCategory];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 20.0;
  mru_volumeButtonSubtitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonSubtitleFont];
  [mru_volumeButtonSubtitleFont lineHeight];
  UICeilToViewScale();
  v9 = v8;

  axis = self->_axis;
  if (axis == 1)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width, height - 8.0];
    v14 = MRUSizeCeilToViewScale(self);
    if (v14 < 20.0)
    {
      v14 = 20.0;
    }

    v6 = v9 + 20.0 + 8.0;
  }

  else if (axis)
  {
    v14 = 20.0;
  }

  else
  {
    v11 = [(NSString *)self->_title length];
    v12 = width - 8.0;
    if (v11)
    {
      v13 = 20.0 + 8.0;
    }

    else
    {
      v12 = width;
      v13 = 20.0;
    }

    [(UILabel *)self->_titleLabel sizeThatFits:v12, height];
    v14 = v13 + MRUSizeCeilToViewScale(self);
    if (v9 >= 20.0)
    {
      v6 = v9;
    }
  }

  if (v14 >= width)
  {
    v14 = width;
  }

  if (v6 >= height)
  {
    v15 = height;
  }

  else
  {
    v15 = v6;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setIcon:(id)icon
{
  objc_storeStrong(&self->_icon, icon);
  iconCopy = icon;
  [(UIImageView *)self->_imageView setImage:iconCopy];

  [(MRUVolumeNowPlayingView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MRUVolumeNowPlayingView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUVolumeNowPlayingView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRUVolumeNowPlayingView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];
}

- (void)updateContentSizeCategory
{
  mru_volumeButtonSubtitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonSubtitleFont];
  [(UILabel *)self->_titleLabel setFont:mru_volumeButtonSubtitleFont];
}

@end