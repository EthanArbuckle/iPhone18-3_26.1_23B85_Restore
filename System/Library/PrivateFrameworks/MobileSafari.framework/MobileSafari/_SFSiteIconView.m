@interface _SFSiteIconView
- (CGRect)_imageFrame;
- (_SFSiteIconView)initWithFrame:(CGRect)a3;
- (_SFSiteIconViewUpdateObserver)updateObserver;
- (double)_monogramFontSize;
- (id)_effectiveBackgroundColor;
- (id)_glyphConfiguration;
- (id)_tintedFolderImage;
- (int64_t)_inferredIconSize;
- (void)_cancelTouchIconRequest;
- (void)_displayDefaultFolderIcon;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setGlyph:(id)a3 withBackgroundColor:(id)a4;
- (void)_setGlyph:(id)a3 withBackgroundEffect:(id)a4;
- (void)_setMonogramWithString:(id)a3 backgroundColor:(id)a4;
- (void)_setSiteIcon:(id)a3 withBackgroundColor:(id)a4;
- (void)_setState:(int64_t)a3;
- (void)_updateGlyphConfiguration;
- (void)_updateMonogramLabelSizeAndFont;
- (void)_updateSiteIconViewWithTouchIconResponse:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAction:(id)a3 backgroundEffect:(id)a4;
- (void)setAllowsDropShadow:(BOOL)a3;
- (void)setBackdropCaptureView:(id)a3;
- (void)setBookmark:(id)a3 withBackgroundColor:(id)a4;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 withBackgroundColor:(id)a4;
- (void)setLeadingImage:(id)a3;
- (void)updateBookmarkData;
- (void)updateSiteIconViewWithLinkMetadata:(id)a3 requiredImageSize:(CGSize)a4 fallbackIcon:(id)a5;
@end

@implementation _SFSiteIconView

- (void)updateBookmarkData
{
  [(_SFSiteIconView *)self _cancelTouchIconRequest];
  if (*&self->_bookmark == 0)
  {
    [(_SFSiteIconView *)self _setSiteIcon:0 withBackgroundColor:0];

    [(_SFSiteIconView *)self setHidden:1];
  }

  else
  {
    objc_initWeak(&location, self);
    [(_SFSiteIconView *)self setHidden:0];
    if ([(WebBookmark *)self->_bookmark isFolder])
    {
      [(_SFSiteIconView *)self _displayDefaultFolderIcon];
    }

    else
    {
      [(_SFSiteIconView *)self _updateSiteIconViewWithTouchIconResponse:0];
    }

    v3 = self->_bookmark;
    v4 = [SFBookmarkTouchIconRequest requestWithBookmark:v3 iconGenerationEnabled:0 backgroundColor:self->_preferredBackgroundColor];
    [v4 setFolderIconStyle:1];
    v5 = +[_SFSiteMetadataManager sharedSiteMetadataManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37___SFSiteIconView_updateBookmarkData__block_invoke;
    v10[3] = &unk_1E721C410;
    objc_copyWeak(&v13, &location);
    v6 = v4;
    v11 = v6;
    v7 = v3;
    v12 = v7;
    v8 = [v5 registerRequest:v6 priority:2 responseHandler:v10];
    touchIconRequestToken = self->_touchIconRequestToken;
    self->_touchIconRequestToken = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelTouchIconRequest
{
  if (self->_touchIconRequestToken)
  {
    v3 = +[_SFSiteMetadataManager sharedSiteMetadataManager];
    [v3 cancelRequestWithToken:self->_touchIconRequestToken];

    touchIconRequestToken = self->_touchIconRequestToken;
    self->_touchIconRequestToken = 0;
  }
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = _SFSiteIconView;
  [(_SFSiteIconView *)&v38 layoutSubviews];
  v3 = [(_SFSiteIconView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIVisualEffectView *)self->_backgroundView setFrame:v5, v7, v9, v11];
  v12 = [(_SFSiteIconView *)self _effectiveBackgroundColor];
  v13 = [(UIVisualEffectView *)self->_backgroundView contentView];
  [v13 setBackgroundColor:v12];

  if ([(_SFSiteIconView *)self usesVibrantAppearance])
  {
    if (!self->_preferredBackgroundColor || ([MEMORY[0x1E69DC888] clearColor], v14 = objc_claimAutoreleasedReturnValue(), v15 = WBSIsEqual(), v14, v15))
    {
      if (self->_preferredBackgroundEffect)
      {
        [(_SFSiteIconView *)self _applyBackgroundEffect:?];
      }

      else
      {
        v16 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
        [(_SFSiteIconView *)self _applyBackgroundEffect:v16];
      }
    }
  }

  if (self->_state == 2)
  {
    [(_SFSiteIconView *)self _updateMonogramLabelSizeAndFont];
    p_monogramLabel = &self->_monogramLabel;
    [(UILabel *)self->_monogramLabel frame];
    v19 = _SFRoundRectToPixels(v5 + (v9 - v18) * 0.5);
  }

  else
  {
    [(_SFSiteIconView *)self _updateGlyphConfiguration];
    [(_SFSiteIconView *)self _imageFrame];
    p_monogramLabel = &self->_imageView;
  }

  [*p_monogramLabel setFrame:v19];
  borderView = self->_borderView;
  if (borderView || self->_shadowView)
  {
    [(_SFHairlineBorderView *)borderView setFrame:v5, v7, v9, v11];
    v21 = [(UIImageView *)self->_shadowView image];
    [v21 alignmentRectInsets];
    UIEdgeInsetsSubtract();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UIImageView *)self->_shadowView setFrame:v5 + v25, v7 + v23, v9 - (v25 + v29), v11 - (v23 + v27)];
    v30 = [(UIImageView *)self->_imageView layer];
    if (self->_action || (-[UIImageView image](self->_imageView, "image"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 safari_transparencyAnalysisResult], v31, v32 != 4))
    {
      [v30 setShadowColor:0];
      [v30 setShadowOpacity:0.0];
      if ([(_SFSiteIconView *)self usesVibrantAppearance]|| self->_action || !self->_allowsDropShadow)
      {
        v36 = 1;
      }

      else if (self->_state == 2)
      {
        v36 = self->_monogramLabel == 0;
      }

      else
      {
        v37 = [(_SFSiteIconView *)self image];
        v36 = v37 == 0;
      }

      v35 = 1;
    }

    else
    {
      [v30 setShadowRadius:12.0];
      [v30 setShadowOffset:{0.0, 6.0}];
      v33 = [MEMORY[0x1E69DC888] blackColor];
      [v30 setShadowColor:{objc_msgSend(v33, "CGColor")}];

      LODWORD(v34) = *"\nף=";
      [v30 setShadowOpacity:v34];
      v35 = 0;
      v36 = 1;
    }

    [(_SFHairlineBorderView *)self->_borderView setHidden:v36];
    [(UIImageView *)self->_shadowView setHidden:v36];
    [(UIImageView *)self->_imageView setClipsToBounds:v35];
  }
}

- (id)_effectiveBackgroundColor
{
  if (self->_action || (-[UIImageView image](self->_imageView, "image"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 safari_transparencyAnalysisResult], v3, v4 != 4))
  {
    v5 = self->_preferredBackgroundColor;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
  }

  return v5;
}

- (void)_updateMonogramLabelSizeAndFont
{
  v3 = [(_SFSiteIconView *)self _inferredIconSize];
  [(_SFSiteIconView *)self _monogramFontSize];
  v5 = v4;
  [_SFSiteIcon labelWidthForIconSize:v3];
  v7 = v6;
  [(UILabel *)self->_monogramLabel frame];
  if (v8 != v7)
  {
    v9 = MEMORY[0x1E69DB968];
    if (!v3)
    {
      v9 = MEMORY[0x1E69DB978];
    }

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:v5 weight:*v9];
    [(UILabel *)self->_monogramLabel setFont:v10];

    monogramLabel = self->_monogramLabel;

    [(UILabel *)monogramLabel setFrame:0.0, 0.0, v7, v7];
  }
}

- (int64_t)_inferredIconSize
{
  [_SFSiteIcon sizeForIconSize:0];
  v4 = v3;
  v6 = v5;
  [(_SFSiteIconView *)self bounds];
  result = 0;
  if (v7 > v4 && v8 > v6)
  {
    v11 = v7;
    v12 = v8;
    [_SFSiteIcon sizeForIconSize:1];
    if (v12 > v14 && v11 > v13)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (double)_monogramFontSize
{
  if (self->_action)
  {
    return 24.0;
  }

  v4 = [(_SFSiteIconView *)self _inferredIconSize];

  [_SFSiteIcon fontPointSizeForIconSize:v4];
  return result;
}

- (void)_updateGlyphConfiguration
{
  if (self->_state == 1)
  {
    v8 = [(UIImageView *)self->_imageView image];
    v4 = [v8 configuration];
    if ([v8 isSymbolImage])
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = [(_SFSiteIconView *)self _glyphConfiguration];
      if (([v4 isEqual:v6] & 1) == 0)
      {
        v7 = [v8 imageWithConfiguration:v6];
        [(UIImageView *)self->_imageView setImage:v7];
      }
    }
  }
}

- (CGRect)_imageFrame
{
  if (self->_customImageInset == 0.0)
  {
    if (self->_state == 1)
    {
      v13 = [(UIImageView *)self->_imageView image];
      [v13 size];
      v15 = v14;
      [(_SFSiteIconView *)self bounds];
      x = _SFRoundRectToPixels(v17 + (v16 - v15) * 0.5);
      y = v18;
      width = v19;
      height = v20;

      goto LABEL_8;
    }

    imageIsTransparent = self->_imageIsTransparent;
    [(_SFSiteIconView *)self bounds];
    x = v3;
    y = v4;
    width = v5;
    height = v6;
    if (!imageIsTransparent)
    {
      goto LABEL_8;
    }

    customImageInset = 6.0;
    v8 = 6.0;
  }

  else
  {
    [(_SFSiteIconView *)self bounds];
    customImageInset = self->_customImageInset;
    v8 = customImageInset;
  }

  v26 = CGRectInset(*&v3, customImageInset, v8);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
LABEL_8:
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)dealloc
{
  [(_SFSiteIconView *)self _cancelTouchIconRequest];
  v3.receiver = self;
  v3.super_class = _SFSiteIconView;
  [(_SFSiteIconView *)&v3 dealloc];
}

- (_SFSiteIconView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = _SFSiteIconView;
  v3 = [(_SFSiteIconView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFSiteIconView *)v3 setUserInteractionEnabled:0];
    v5 = [(_SFSiteIconView *)v4 usesVibrantAppearance];
    v6 = objc_alloc_init(MEMORY[0x1E69DD298]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(UIVisualEffectView *)v4->_backgroundView setClipsToBounds:1];
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = +[_SFSiteIcon defaultIconKeyColor];
    }

    v9 = [(UIVisualEffectView *)v4->_backgroundView contentView];
    [v9 setBackgroundColor:v8];

    if (v5)
    {
      v10 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
      [(_SFSiteIconView *)v4 _applyBackgroundEffect:v10];
    }

    else
    {

      [(_SFSiteIconView *)v4 _applyBackgroundEffect:0];
    }

    [(_SFSiteIconView *)v4 addSubview:v4->_backgroundView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v11;

    [(UIImageView *)v4->_imageView setContentMode:2];
    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    [(_SFSiteIconView *)v4 addSubview:v4->_imageView];
    +[_SFSiteIcon cornerRadius];
    [(_SFSiteIconView *)v4 _setContinuousCornerRadius:?];
    v13 = v4;
  }

  return v4;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = _SFSiteIconView;
  [(_SFSiteIconView *)&v6 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_backgroundView _setContinuousCornerRadius:a3];
  v5 = 0.0;
  if (self->_customImageInset == 0.0)
  {
    v5 = a3;
  }

  [(UIImageView *)self->_imageView _setContinuousCornerRadius:v5];
}

- (void)setImage:(id)a3
{
  bookmark = self->_bookmark;
  self->_bookmark = 0;
  v5 = a3;

  action = self->_action;
  self->_action = 0;

  [(_SFSiteIconView *)self _cancelTouchIconRequest];
  [(_SFSiteIconView *)self _setState:0];
  [(_SFSiteIconView *)self setImage:v5 withBackgroundColor:0];

  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)setBookmark:(id)a3 withBackgroundColor:(id)a4
{
  v10 = a3;
  v7 = a4;
  leadingImage = self->_leadingImage;
  if (self->_bookmark == v10)
  {
    if (!leadingImage)
    {
      goto LABEL_7;
    }
  }

  else if (!leadingImage)
  {
    goto LABEL_6;
  }

  [(_SFSiteIconView *)self _setState:2];
LABEL_6:
  action = self->_action;
  self->_action = 0;

  objc_storeStrong(&self->_bookmark, a3);
  objc_storeStrong(&self->_preferredBackgroundColor, a4);
  [(_SFSiteIconView *)self updateBookmarkData];
LABEL_7:
}

- (void)setAction:(id)a3 backgroundEffect:(id)a4
{
  v12 = a3;
  v7 = a4;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_action, a3);
    if (!v12)
    {
      [(_SFSiteIconView *)self setNeedsLayout];
      goto LABEL_11;
    }

    bookmark = self->_bookmark;
    self->_bookmark = 0;

    [(_SFSiteIconView *)self _cancelTouchIconRequest];
    v9 = [(_SFSiteIconView *)self usesVibrantAppearance];
    v10 = [v12 image];
    if (v9)
    {
      if (v7)
      {
        [(_SFSiteIconView *)self _setGlyph:v10 withBackgroundEffect:v7];
LABEL_10:

        goto LABEL_11;
      }

      v11 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
      [(_SFSiteIconView *)self _setGlyph:v10 withBackgroundEffect:v11];
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(_SFSiteIconView *)self _setGlyph:v10 withBackgroundColor:v11];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_displayDefaultFolderIcon
{
  v3 = [(_SFSiteIconView *)self usesVibrantAppearance];
  v4 = [(_SFSiteIconView *)self _tintedFolderImage];
  v6 = v4;
  if (v3)
  {
    v5 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
    [(_SFSiteIconView *)self _setGlyph:v6 withBackgroundEffect:v5];
  }

  else
  {
    if (self->_preferredBackgroundColor)
    {
      [(_SFSiteIconView *)self _setGlyph:v4 withBackgroundColor:?];
      goto LABEL_7;
    }

    v5 = +[_SFSiteIcon defaultIconKeyColor];
    [(_SFSiteIconView *)self _setGlyph:v6 withBackgroundColor:v5];
  }

LABEL_7:
}

- (void)_updateSiteIconViewWithTouchIconResponse:(id)a3
{
  v4 = a3;
  if (!self->_leadingImage)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60___SFSiteIconView__updateSiteIconViewWithTouchIconResponse___block_invoke;
    v16[3] = &unk_1E721B360;
    v16[4] = self;
    [v5 setHandler:v16];
    v6 = [v4 touchIcon];
    v7 = [(WebBookmark *)self->_bookmark isFolder];
    if (v6)
    {
      if (v7)
      {
        v8 = [v4 extractedBackgroundColor];
        [(_SFSiteIconView *)self _setSiteIcon:v6 withBackgroundColor:v8];
LABEL_11:

        goto LABEL_12;
      }

      [(_SFSiteIconView *)self _setSiteIcon:v6 withBackgroundColor:0];
    }

    else if ((v7 & 1) == 0)
    {
      v9 = MEMORY[0x1E69C9888];
      v10 = [(WebBookmark *)self->_bookmark title];
      v11 = MEMORY[0x1E695DFF8];
      v12 = [(WebBookmark *)self->_bookmark address];
      v13 = [v11 safari_URLWithUserTypedString:v12];
      v8 = [v9 monogramStringForTitle:v10 url:v13];

      if ([v8 length])
      {
        v14 = [v4 extractedBackgroundColor];
        [(_SFSiteIconView *)self _setMonogramWithString:v8 backgroundColor:v14];
      }

      else
      {
        v14 = +[_SFSiteIcon defaultGlyph];
        v15 = [v4 extractedBackgroundColor];
        [(_SFSiteIconView *)self _setGlyph:v14 withBackgroundColor:v15];
      }

      [(_SFSiteIconView *)self setNeedsLayout];
      goto LABEL_11;
    }

LABEL_12:
  }
}

- (void)updateSiteIconViewWithLinkMetadata:(id)a3 requiredImageSize:(CGSize)a4 fallbackIcon:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [v9 image];
  v12 = [v11 platformImage];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v9 icon];
    v14 = [v15 platformImage];
  }

  [(UIImageView *)self->_imageView setContentMode:2];
  v16 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85___SFSiteIconView_updateSiteIconViewWithLinkMetadata_requiredImageSize_fallbackIcon___block_invoke;
  v37[3] = &unk_1E721B360;
  v37[4] = self;
  [v16 setHandler:v37];
  if (!v14)
  {
    goto LABEL_14;
  }

  [v14 size];
  if (v17 < width)
  {
    [v14 size];
    if (v18 < height)
    {
      goto LABEL_14;
    }
  }

  [v14 size];
  v20 = v19;
  [v14 size];
  v22 = v21;
  [v14 size];
  if (v20 >= v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  [v14 size];
  v27 = v26;
  [v14 size];
  v29 = v28;
  [v14 size];
  if (v27 <= v29)
  {
    v30 = v31;
  }

  if (v25 / v30 > 0.3)
  {
    [(_SFSiteIconView *)self setImage:v14];
  }

  else
  {
LABEL_14:
    v32 = MEMORY[0x1E69C9888];
    v33 = [v9 title];
    v34 = [v9 URL];
    v35 = [v32 monogramStringForTitle:v33 url:v34];

    if ([v35 length])
    {
      if (v14)
      {
        [MEMORY[0x1E69C9840] keyColorForIcon:v14];
      }

      else
      {
        +[_SFSiteIcon defaultIconKeyColor];
      }
      v36 = ;
      [(_SFSiteIconView *)self _setMonogramWithString:v35 backgroundColor:v36];
      [(_SFSiteIconView *)self setNeedsLayout];
    }

    else
    {
      [(_SFSiteIconView *)self setImage:v10];
    }
  }
}

- (void)setAllowsDropShadow:(BOOL)a3
{
  if (self->_allowsDropShadow != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    self->_allowsDropShadow = v3 & ~v5;
    if ((v3 & ~v5) == 1)
    {
      if (!self->_shadowView)
      {
        v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
        if (shadowImage_onceToken_0 != -1)
        {
          [_SFSiteIconView setAllowsDropShadow:];
        }

        v7 = shadowImage_image_0;
        v8 = [v6 initWithImage:v7];
        shadowView = self->_shadowView;
        self->_shadowView = v8;

        [(_SFSiteIconView *)self insertSubview:self->_shadowView atIndex:0];
      }

      if (!self->_borderView)
      {
        v10 = objc_alloc_init(_SFHairlineBorderView);
        borderView = self->_borderView;
        self->_borderView = v10;

        v12 = [MEMORY[0x1E69DC888] labelColor];
        v13 = [v12 colorWithAlphaComponent:0.07];
        [(_SFHairlineBorderView *)self->_borderView setBorderColor:v13];

        [(_SFSiteIconView *)self insertSubview:self->_borderView aboveSubview:self->_imageView];
      }
    }

    [(_SFSiteIconView *)self setNeedsLayout];
  }
}

- (void)setBackdropCaptureView:(id)a3
{
  v6 = a3;
  v4 = [(UIVisualEffectView *)self->_backgroundView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundView _setCaptureView:v6];
  }
}

- (void)setLeadingImage:(id)a3
{
  objc_storeStrong(&self->_leadingImage, a3);
  v5 = a3;
  [(_SFSiteIconView *)self _setState:3];
  [(_SFSiteIconView *)self setImage:v5 withBackgroundColor:0];
}

- (void)setImage:(id)a3 withBackgroundColor:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(UIImageView *)self->_imageView setImage:v14];
  objc_storeStrong(&self->_preferredBackgroundColor, a4);
  if (![(_SFSiteIconView *)self usesVibrantAppearance]&& !self->_preferredBackgroundColor)
  {
    v7 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    preferredBackgroundColor = self->_preferredBackgroundColor;
    self->_preferredBackgroundColor = v7;
  }

  v9 = [v14 safari_transparencyAnalysisResult];
  v10 = [(WebBookmark *)self->_bookmark isFolder];
  v12 = v9 != 4 && (v9 & 0xFFFFFFFFFFFFFFFDLL) != 1;
  v13 = v12 & ~v10;
  self->_imageIsTransparent = v13;
  [(_SFSiteIconView *)self setClipsToBounds:v13 ^ 1u];
  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)_setSiteIcon:(id)a3 withBackgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_SFSiteIconView *)self _setState:0];
  [(_SFSiteIconView *)self setImage:v7 withBackgroundColor:v6];
}

- (void)_setGlyph:(id)a3 withBackgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_SFSiteIconView *)self _setState:1];
  [(UIImageView *)self->_imageView setImage:v7];

  preferredBackgroundColor = self->_preferredBackgroundColor;
  self->_preferredBackgroundColor = v6;
  v9 = v6;

  preferredBackgroundEffect = self->_preferredBackgroundEffect;
  self->_preferredBackgroundEffect = 0;

  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)_setGlyph:(id)a3 withBackgroundEffect:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_SFSiteIconView *)self _setState:1];
  [(UIImageView *)self->_imageView setImage:v7];

  preferredBackgroundColor = self->_preferredBackgroundColor;
  self->_preferredBackgroundColor = 0;

  preferredBackgroundEffect = self->_preferredBackgroundEffect;
  self->_preferredBackgroundEffect = v6;

  [(_SFSiteIconView *)self setNeedsLayout];
}

- (id)_glyphConfiguration
{
  v3 = MEMORY[0x1E69DCAD8];
  [(_SFSiteIconView *)self _monogramFontSize];
  if (self->_action)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return [v3 configurationWithPointSize:v4 weight:2 scale:?];
}

- (id)_tintedFolderImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [(_SFSiteIconView *)self _glyphConfiguration];
  v4 = [v2 systemImageNamed:@"folder" withConfiguration:v3];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 flattenedImageWithColor:v5];

  v7 = [v6 imageWithRenderingMode:1];

  [v7 safari_setTransparencyAnalysisResult:2];

  return v7;
}

- (void)_setMonogramWithString:(id)a3 backgroundColor:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(_SFSiteIconView *)self _setState:2];
  if ([(_SFSiteIconView *)self usesVibrantAppearance])
  {
    v7 = +[_SFSiteIcon defaultIconKeyColor];
    v8 = [v6 isEqual:v7];

    if (v8)
    {

      v6 = 0;
    }
  }

  else if (!v6)
  {
    v6 = +[_SFSiteIcon defaultIconKeyColor];
  }

  v9 = [(UILabel *)self->_monogramLabel text];
  if ([v9 isEqualToString:v15])
  {
    v10 = [v6 isEqual:self->_preferredBackgroundColor];

    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (!self->_monogramLabel)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monogramLabel = self->_monogramLabel;
    self->_monogramLabel = v11;

    [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_monogramLabel setTextAlignment:1];
    [(UILabel *)self->_monogramLabel setNumberOfLines:0];
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:v13];

    [(_SFSiteIconView *)self addSubview:self->_monogramLabel];
  }

  if ([v15 safari_isSingleEmoji])
  {
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.12];
    [(UILabel *)self->_monogramLabel setShadowColor:v14];

    [(UILabel *)self->_monogramLabel setShadowOffset:1.0, 1.0];
  }

  else
  {
    [(UILabel *)self->_monogramLabel setShadowColor:0];
  }

  [(UILabel *)self->_monogramLabel setText:v15];
  objc_storeStrong(&self->_preferredBackgroundColor, v6);
  [(_SFSiteIconView *)self setNeedsLayout];
LABEL_16:
}

- (void)_setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = a3 == 2;
    [(UILabel *)self->_monogramLabel setHidden:a3 != 2];
    [(UIImageView *)self->_imageView setHidden:v5];
    if (a3 != 3)
    {
      leadingImage = self->_leadingImage;
      self->_leadingImage = 0;
    }
  }
}

- (_SFSiteIconViewUpdateObserver)updateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_updateObserver);

  return WeakRetained;
}

@end