@interface ContinuousReadingBannerView
+ (id)makeHairlineSeparator;
- (CGRect)titleRect;
- (CGSize)_scaledImageSize;
- (ContinuousReadingBannerView)initWithContinuousReadingItem:(id)item;
- (NSString)subtitle;
- (NSString)title;
- (UIEdgeInsets)topHairlineInsets;
- (UIImage)image;
- (UIImageView)imageView;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (id)_bottomHairline;
- (id)_topHairline;
- (void)_updateLabels;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTheme:(id)theme;
- (void)setTitle:(id)title;
- (void)setTopHairlineInsets:(UIEdgeInsets)insets;
@end

@implementation ContinuousReadingBannerView

- (ContinuousReadingBannerView)initWithContinuousReadingItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = ContinuousReadingBannerView;
  v6 = [(ContinuousReadingBannerView *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_continuousReadingItem, item);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"title", @"subtitle", 0, 0}];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [itemCopy addObserver:v7 forKeyPath:*(*(&v16 + 1) + 8 * v12++) options:0 context:kContinuousReadingItemObserverContext];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(ContinuousReadingBannerView *)v7 _updateLabels];
    [(ContinuousReadingBannerView *)v7 setOpaque:1];
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(ContinuousReadingBannerView *)v7 setBackgroundColor:systemGroupedBackgroundColor];

    [(ContinuousReadingBannerView *)v7 _updateImage];
    [(ContinuousReadingBannerView *)v7 setAutoresizingMask:34];
    v14 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"title", @"subtitle", 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ContinuousReadingItem *)self->_continuousReadingItem removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:kContinuousReadingItemObserverContext];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = ContinuousReadingBannerView;
  [(ContinuousReadingBannerView *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kContinuousReadingItemObserverContext == context)
  {

    [(ContinuousReadingBannerView *)self _updateLabels:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = ContinuousReadingBannerView;
    [(ContinuousReadingBannerView *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)layoutSubviews
{
  [(ContinuousReadingBannerView *)self bounds];
  v4 = v3;
  [(ContinuousReadingBannerView *)self _textBaseline];
  v6 = v5;
  [(ContinuousReadingBannerView *)self safeAreaInsets];
  v8 = fmax(v7, 15.0);
  v10 = fmax(v9, 15.0);
  image = [(ContinuousReadingBannerView *)self image];

  if (image)
  {
    v12 = v8 + 50.0;
  }

  else
  {
    v12 = v8;
  }

  titleLabel = [(ContinuousReadingBannerView *)self titleLabel];
  v13 = v4 - v12 - v10;
  [titleLabel sizeThatFits:{v13, 1.79769313e308}];
  _SFRoundRectToPixels();
  [titleLabel setFrame:?];
  _SFRoundFloatToPixels();
  [titleLabel _setFirstLineBaselineFrameOriginY:v6 - v14];
  subtitleLabel = [(ContinuousReadingBannerView *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{v13, 1.79769313e308}];
  _SFRoundRectToPixels();
  [subtitleLabel setFrame:?];
  _SFRoundFloatToPixels();
  [subtitleLabel _setFirstLineBaselineFrameOriginY:v6 - v16];
  imageView = [(ContinuousReadingBannerView *)self imageView];
  [imageView frame];
  width = v25.size.width;
  height = v25.size.height;
  v25.origin.x = v8;
  CGRectGetHeight(v25);
  _SFRoundFloatToPixels();
  [imageView setFrame:{v8, v20, width, height}];
  _topHairline = [(ContinuousReadingBannerView *)self _topHairline];
  [_topHairline frame];
  _SFRoundRectToPixels();
  [_topHairline setFrame:?];
  _bottomHairline = [(ContinuousReadingBannerView *)self _bottomHairline];
  [_bottomHairline frame];
  _SFOnePixel();
  _SFRoundRectToPixels();
  [_bottomHairline setFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = ContinuousReadingBannerView;
  [(ContinuousReadingBannerView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, 60.0];
}

+ (id)makeHairlineSeparator
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  _SFOnePixel();
  v4 = [v2 initWithFrame:{0.0, 0.0, 0.0, v3}];
  [v4 setAutoresizingMask:2];
  opaqueSeparatorColor = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [v4 setBackgroundColor:opaqueSeparatorColor];

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(ContinuousReadingBannerView *)self title];
  v5 = [titleCopy isEqual:title];

  if ((v5 & 1) == 0)
  {
    titleLabel = [(ContinuousReadingBannerView *)self titleLabel];
    [titleLabel setText:titleCopy];

    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (NSString)title
{
  titleLabel = [(ContinuousReadingBannerView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(ContinuousReadingBannerView *)self subtitle];
  v5 = [subtitleCopy isEqual:subtitle];

  if ((v5 & 1) == 0)
  {
    subtitleLabel = [(ContinuousReadingBannerView *)self subtitleLabel];
    if ([subtitleCopy length])
    {
      v7 = subtitleCopy;
    }

    else
    {
      v7 = 0;
    }

    [subtitleLabel setText:v7];

    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (NSString)subtitle
{
  subtitleLabel = [(ContinuousReadingBannerView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(ContinuousReadingBannerView *)self image];
  if (([imageCopy isEqual:image] & 1) == 0)
  {
    if ((imageCopy == 0) == (image != 0))
    {
      [(ContinuousReadingBannerView *)self setNeedsLayout];
    }

    imageView = [(ContinuousReadingBannerView *)self imageView];
    if (imageCopy)
    {
      v13.width = 40.0;
      v13.height = 40.0;
      UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
      v6 = *MEMORY[0x277CBF348];
      v7 = *(MEMORY[0x277CBF348] + 8);
      CurrentContext = UIGraphicsGetCurrentContext();
      v14.origin.x = v6;
      v14.origin.y = v7;
      v14.size.width = 40.0;
      v14.size.height = 40.0;
      v9 = CGPathCreateWithEllipseInRect(v14, 0);
      CGContextAddPath(CurrentContext, v9);
      CGContextClip(CurrentContext);
      [imageCopy drawInRect:{v6, v7, 40.0, 40.0}];
      CGPathRelease(v9);
      v10 = UIGraphicsGetImageFromCurrentImageContext();
      [imageView setImage:v10];

      UIGraphicsEndImageContext();
    }

    else
    {
      [imageView setImage:0];
    }
  }
}

- (UIImage)image
{
  imageView = [(ContinuousReadingBannerView *)self imageView];
  image = [imageView image];

  return image;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = self->_titleLabel;
    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76920]];
    [(UILabel *)v6 setFont:v7];

    v8 = self->_titleLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v8 setTextColor:labelColor];

    [(UILabel *)self->_titleLabel setNumberOfLines:1];
    [(ContinuousReadingBannerView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  v10 = titleLabel;

  return v10;
}

- (UILabel)subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_subtitleLabel;
    self->_subtitleLabel = v4;

    v6 = self->_subtitleLabel;
    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76940]];
    [(UILabel *)v6 setFont:v7];

    v8 = self->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v8 setTextColor:secondaryLabelColor];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
    [(ContinuousReadingBannerView *)self addSubview:self->_subtitleLabel];
    subtitleLabel = self->_subtitleLabel;
  }

  v10 = subtitleLabel;

  return v10;
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{15.0, 0.0, 40.0, 40.0}];
    v5 = self->_imageView;
    self->_imageView = v4;

    imageView = self->_imageView;
  }

  [(ContinuousReadingBannerView *)self addSubview:imageView];
  v6 = self->_imageView;

  return v6;
}

- (void)setTopHairlineInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_topHairlineInsets.top), vceqq_f64(v4, *&self->_topHairlineInsets.bottom)))) & 1) == 0)
  {
    self->_topHairlineInsets = insets;
    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (CGRect)titleRect
{
  titleLabel = [(ContinuousReadingBannerView *)self titleLabel];
  [titleLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  v4 = WBSIsEqual();
  v5 = themeCopy;
  if ((v4 & 1) == 0)
  {
    traitCollection = [themeCopy traitCollection];
    [(ContinuousReadingBannerView *)self _setLocalOverrideTraitCollection:traitCollection];

    themeColor = [themeCopy themeColor];
    if (themeColor)
    {
      [(ContinuousReadingBannerView *)self setBackgroundColor:themeColor];
    }

    else
    {
      systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      [(ContinuousReadingBannerView *)self setBackgroundColor:systemGroupedBackgroundColor];
    }

    separatorColor = [themeCopy separatorColor];
    v10 = separatorColor;
    if (separatorColor)
    {
      opaqueSeparatorColor = separatorColor;
    }

    else
    {
      opaqueSeparatorColor = [MEMORY[0x277D75348] opaqueSeparatorColor];
    }

    v12 = opaqueSeparatorColor;

    _topHairline = [(ContinuousReadingBannerView *)self _topHairline];
    [_topHairline setBackgroundColor:v12];

    _bottomHairline = [(ContinuousReadingBannerView *)self _bottomHairline];
    [_bottomHairline setBackgroundColor:v12];

    v5 = themeCopy;
  }
}

- (id)_topHairline
{
  topHairline = self->_topHairline;
  if (!topHairline)
  {
    makeHairlineSeparator = [objc_opt_class() makeHairlineSeparator];
    v5 = self->_topHairline;
    self->_topHairline = makeHairlineSeparator;

    [(ContinuousReadingBannerView *)self addSubview:self->_topHairline];
    topHairline = self->_topHairline;
  }

  v6 = topHairline;

  return v6;
}

- (id)_bottomHairline
{
  bottomHairline = self->_bottomHairline;
  if (!bottomHairline)
  {
    makeHairlineSeparator = [objc_opt_class() makeHairlineSeparator];
    v5 = self->_bottomHairline;
    self->_bottomHairline = makeHairlineSeparator;

    [(ContinuousReadingBannerView *)self addSubview:self->_bottomHairline];
    bottomHairline = self->_bottomHairline;
  }

  v6 = bottomHairline;

  return v6;
}

- (void)_updateLabels
{
  title = [(ContinuousReadingItem *)self->_continuousReadingItem title];
  [(ContinuousReadingBannerView *)self setTitle:title];

  subtitle = [(ContinuousReadingItem *)self->_continuousReadingItem subtitle];
  [(ContinuousReadingBannerView *)self setSubtitle:subtitle];
}

- (CGSize)_scaledImageSize
{
  if (_scaledImageSize_hasComputedSize == 1)
  {
    v2 = *&_scaledImageSize_imageSize_0;
    v3 = *&_scaledImageSize_imageSize_1;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    v3 = v6 * 40.0;
    *&_scaledImageSize_imageSize_0 = v6 * 40.0;
    *&_scaledImageSize_imageSize_1 = v6 * 40.0;
    _scaledImageSize_hasComputedSize = 1;
    v2 = v6 * 40.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)topHairlineInsets
{
  top = self->_topHairlineInsets.top;
  left = self->_topHairlineInsets.left;
  bottom = self->_topHairlineInsets.bottom;
  right = self->_topHairlineInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end