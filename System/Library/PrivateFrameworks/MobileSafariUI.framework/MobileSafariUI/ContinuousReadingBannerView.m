@interface ContinuousReadingBannerView
+ (id)makeHairlineSeparator;
- (CGRect)titleRect;
- (CGSize)_scaledImageSize;
- (ContinuousReadingBannerView)initWithContinuousReadingItem:(id)a3;
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
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTheme:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTopHairlineInsets:(UIEdgeInsets)a3;
@end

@implementation ContinuousReadingBannerView

- (ContinuousReadingBannerView)initWithContinuousReadingItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20.receiver = self;
  v20.super_class = ContinuousReadingBannerView;
  v6 = [(ContinuousReadingBannerView *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_continuousReadingItem, a3);
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

          [v5 addObserver:v7 forKeyPath:*(*(&v16 + 1) + 8 * v12++) options:0 context:kContinuousReadingItemObserverContext];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(ContinuousReadingBannerView *)v7 _updateLabels];
    [(ContinuousReadingBannerView *)v7 setOpaque:1];
    v13 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(ContinuousReadingBannerView *)v7 setBackgroundColor:v13];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kContinuousReadingItemObserverContext == a6)
  {

    [(ContinuousReadingBannerView *)self _updateLabels:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = ContinuousReadingBannerView;
    [(ContinuousReadingBannerView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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
  v11 = [(ContinuousReadingBannerView *)self image];

  if (v11)
  {
    v12 = v8 + 50.0;
  }

  else
  {
    v12 = v8;
  }

  v23 = [(ContinuousReadingBannerView *)self titleLabel];
  v13 = v4 - v12 - v10;
  [v23 sizeThatFits:{v13, 1.79769313e308}];
  _SFRoundRectToPixels();
  [v23 setFrame:?];
  _SFRoundFloatToPixels();
  [v23 _setFirstLineBaselineFrameOriginY:v6 - v14];
  v15 = [(ContinuousReadingBannerView *)self subtitleLabel];
  [v15 sizeThatFits:{v13, 1.79769313e308}];
  _SFRoundRectToPixels();
  [v15 setFrame:?];
  _SFRoundFloatToPixels();
  [v15 _setFirstLineBaselineFrameOriginY:v6 - v16];
  v17 = [(ContinuousReadingBannerView *)self imageView];
  [v17 frame];
  width = v25.size.width;
  height = v25.size.height;
  v25.origin.x = v8;
  CGRectGetHeight(v25);
  _SFRoundFloatToPixels();
  [v17 setFrame:{v8, v20, width, height}];
  v21 = [(ContinuousReadingBannerView *)self _topHairline];
  [v21 frame];
  _SFRoundRectToPixels();
  [v21 setFrame:?];
  v22 = [(ContinuousReadingBannerView *)self _bottomHairline];
  [v22 frame];
  _SFOnePixel();
  _SFRoundRectToPixels();
  [v22 setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = ContinuousReadingBannerView;
  [(ContinuousReadingBannerView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, 60.0];
}

+ (id)makeHairlineSeparator
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  _SFOnePixel();
  v4 = [v2 initWithFrame:{0.0, 0.0, 0.0, v3}];
  [v4 setAutoresizingMask:2];
  v5 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  v4 = [(ContinuousReadingBannerView *)self title];
  v5 = [v7 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(ContinuousReadingBannerView *)self titleLabel];
    [v6 setText:v7];

    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (NSString)title
{
  v2 = [(ContinuousReadingBannerView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSubtitle:(id)a3
{
  v8 = a3;
  v4 = [(ContinuousReadingBannerView *)self subtitle];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(ContinuousReadingBannerView *)self subtitleLabel];
    if ([v8 length])
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    [v6 setText:v7];

    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (NSString)subtitle
{
  v2 = [(ContinuousReadingBannerView *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImage:(id)a3
{
  v11 = a3;
  v4 = [(ContinuousReadingBannerView *)self image];
  if (([v11 isEqual:v4] & 1) == 0)
  {
    if ((v11 == 0) == (v4 != 0))
    {
      [(ContinuousReadingBannerView *)self setNeedsLayout];
    }

    v5 = [(ContinuousReadingBannerView *)self imageView];
    if (v11)
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
      [v11 drawInRect:{v6, v7, 40.0, 40.0}];
      CGPathRelease(v9);
      v10 = UIGraphicsGetImageFromCurrentImageContext();
      [v5 setImage:v10];

      UIGraphicsEndImageContext();
    }

    else
    {
      [v5 setImage:0];
    }
  }
}

- (UIImage)image
{
  v2 = [(ContinuousReadingBannerView *)self imageView];
  v3 = [v2 image];

  return v3;
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
    v9 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v8 setTextColor:v9];

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
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v8 setTextColor:v9];

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

- (void)setTopHairlineInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_topHairlineInsets.top), vceqq_f64(v4, *&self->_topHairlineInsets.bottom)))) & 1) == 0)
  {
    self->_topHairlineInsets = a3;
    [(ContinuousReadingBannerView *)self setNeedsLayout];
  }
}

- (CGRect)titleRect
{
  v2 = [(ContinuousReadingBannerView *)self titleLabel];
  [v2 frame];
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

- (void)setTheme:(id)a3
{
  v15 = a3;
  v4 = WBSIsEqual();
  v5 = v15;
  if ((v4 & 1) == 0)
  {
    v6 = [v15 traitCollection];
    [(ContinuousReadingBannerView *)self _setLocalOverrideTraitCollection:v6];

    v7 = [v15 themeColor];
    if (v7)
    {
      [(ContinuousReadingBannerView *)self setBackgroundColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      [(ContinuousReadingBannerView *)self setBackgroundColor:v8];
    }

    v9 = [v15 separatorColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277D75348] opaqueSeparatorColor];
    }

    v12 = v11;

    v13 = [(ContinuousReadingBannerView *)self _topHairline];
    [v13 setBackgroundColor:v12];

    v14 = [(ContinuousReadingBannerView *)self _bottomHairline];
    [v14 setBackgroundColor:v12];

    v5 = v15;
  }
}

- (id)_topHairline
{
  topHairline = self->_topHairline;
  if (!topHairline)
  {
    v4 = [objc_opt_class() makeHairlineSeparator];
    v5 = self->_topHairline;
    self->_topHairline = v4;

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
    v4 = [objc_opt_class() makeHairlineSeparator];
    v5 = self->_bottomHairline;
    self->_bottomHairline = v4;

    [(ContinuousReadingBannerView *)self addSubview:self->_bottomHairline];
    bottomHairline = self->_bottomHairline;
  }

  v6 = bottomHairline;

  return v6;
}

- (void)_updateLabels
{
  v3 = [(ContinuousReadingItem *)self->_continuousReadingItem title];
  [(ContinuousReadingBannerView *)self setTitle:v3];

  v4 = [(ContinuousReadingItem *)self->_continuousReadingItem subtitle];
  [(ContinuousReadingBannerView *)self setSubtitle:v4];
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
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
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