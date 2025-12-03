@interface _SFSiteIconView
- (CGRect)_imageFrame;
- (_SFSiteIconView)initWithFrame:(CGRect)frame;
- (_SFSiteIconViewUpdateObserver)updateObserver;
- (double)_monogramFontSize;
- (id)_effectiveBackgroundColor;
- (id)_glyphConfiguration;
- (id)_tintedFolderImage;
- (int64_t)_inferredIconSize;
- (void)_cancelTouchIconRequest;
- (void)_displayDefaultFolderIcon;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setGlyph:(id)glyph withBackgroundColor:(id)color;
- (void)_setGlyph:(id)glyph withBackgroundEffect:(id)effect;
- (void)_setMonogramWithString:(id)string backgroundColor:(id)color;
- (void)_setSiteIcon:(id)icon withBackgroundColor:(id)color;
- (void)_setState:(int64_t)state;
- (void)_updateGlyphConfiguration;
- (void)_updateMonogramLabelSizeAndFont;
- (void)_updateSiteIconViewWithTouchIconResponse:(id)response;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAction:(id)action backgroundEffect:(id)effect;
- (void)setAllowsDropShadow:(BOOL)shadow;
- (void)setBackdropCaptureView:(id)view;
- (void)setBookmark:(id)bookmark withBackgroundColor:(id)color;
- (void)setImage:(id)image;
- (void)setImage:(id)image withBackgroundColor:(id)color;
- (void)setLeadingImage:(id)image;
- (void)updateBookmarkData;
- (void)updateSiteIconViewWithLinkMetadata:(id)metadata requiredImageSize:(CGSize)size fallbackIcon:(id)icon;
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
  layer = [(_SFSiteIconView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIVisualEffectView *)self->_backgroundView setFrame:v5, v7, v9, v11];
  _effectiveBackgroundColor = [(_SFSiteIconView *)self _effectiveBackgroundColor];
  contentView = [(UIVisualEffectView *)self->_backgroundView contentView];
  [contentView setBackgroundColor:_effectiveBackgroundColor];

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
        _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
        [(_SFSiteIconView *)self _applyBackgroundEffect:_sf_defaultStartPageBackgroundEffect];
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
    image = [(UIImageView *)self->_shadowView image];
    [image alignmentRectInsets];
    UIEdgeInsetsSubtract();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UIImageView *)self->_shadowView setFrame:v5 + v25, v7 + v23, v9 - (v25 + v29), v11 - (v23 + v27)];
    layer2 = [(UIImageView *)self->_imageView layer];
    if (self->_action || (-[UIImageView image](self->_imageView, "image"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 safari_transparencyAnalysisResult], v31, v32 != 4))
    {
      [layer2 setShadowColor:0];
      [layer2 setShadowOpacity:0.0];
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
        image2 = [(_SFSiteIconView *)self image];
        v36 = image2 == 0;
      }

      v35 = 1;
    }

    else
    {
      [layer2 setShadowRadius:12.0];
      [layer2 setShadowOffset:{0.0, 6.0}];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [layer2 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

      LODWORD(v34) = *"\nף=";
      [layer2 setShadowOpacity:v34];
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
    clearColor = self->_preferredBackgroundColor;
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  return clearColor;
}

- (void)_updateMonogramLabelSizeAndFont
{
  _inferredIconSize = [(_SFSiteIconView *)self _inferredIconSize];
  [(_SFSiteIconView *)self _monogramFontSize];
  v5 = v4;
  [_SFSiteIcon labelWidthForIconSize:_inferredIconSize];
  v7 = v6;
  [(UILabel *)self->_monogramLabel frame];
  if (v8 != v7)
  {
    v9 = MEMORY[0x1E69DB968];
    if (!_inferredIconSize)
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

  _inferredIconSize = [(_SFSiteIconView *)self _inferredIconSize];

  [_SFSiteIcon fontPointSizeForIconSize:_inferredIconSize];
  return result;
}

- (void)_updateGlyphConfiguration
{
  if (self->_state == 1)
  {
    image = [(UIImageView *)self->_imageView image];
    configuration = [image configuration];
    if ([image isSymbolImage])
    {
      v5 = configuration == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      _glyphConfiguration = [(_SFSiteIconView *)self _glyphConfiguration];
      if (([configuration isEqual:_glyphConfiguration] & 1) == 0)
      {
        v7 = [image imageWithConfiguration:_glyphConfiguration];
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
      image = [(UIImageView *)self->_imageView image];
      [image size];
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

- (_SFSiteIconView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = _SFSiteIconView;
  v3 = [(_SFSiteIconView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFSiteIconView *)v3 setUserInteractionEnabled:0];
    usesVibrantAppearance = [(_SFSiteIconView *)v4 usesVibrantAppearance];
    v6 = objc_alloc_init(MEMORY[0x1E69DD298]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(UIVisualEffectView *)v4->_backgroundView setClipsToBounds:1];
    if (usesVibrantAppearance)
    {
      v8 = 0;
    }

    else
    {
      v8 = +[_SFSiteIcon defaultIconKeyColor];
    }

    contentView = [(UIVisualEffectView *)v4->_backgroundView contentView];
    [contentView setBackgroundColor:v8];

    if (usesVibrantAppearance)
    {
      _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
      [(_SFSiteIconView *)v4 _applyBackgroundEffect:_sf_defaultStartPageBackgroundEffect];
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

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = _SFSiteIconView;
  [(_SFSiteIconView *)&v6 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_backgroundView _setContinuousCornerRadius:radius];
  radiusCopy = 0.0;
  if (self->_customImageInset == 0.0)
  {
    radiusCopy = radius;
  }

  [(UIImageView *)self->_imageView _setContinuousCornerRadius:radiusCopy];
}

- (void)setImage:(id)image
{
  bookmark = self->_bookmark;
  self->_bookmark = 0;
  imageCopy = image;

  action = self->_action;
  self->_action = 0;

  [(_SFSiteIconView *)self _cancelTouchIconRequest];
  [(_SFSiteIconView *)self _setState:0];
  [(_SFSiteIconView *)self setImage:imageCopy withBackgroundColor:0];

  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)setBookmark:(id)bookmark withBackgroundColor:(id)color
{
  bookmarkCopy = bookmark;
  colorCopy = color;
  leadingImage = self->_leadingImage;
  if (self->_bookmark == bookmarkCopy)
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

  objc_storeStrong(&self->_bookmark, bookmark);
  objc_storeStrong(&self->_preferredBackgroundColor, color);
  [(_SFSiteIconView *)self updateBookmarkData];
LABEL_7:
}

- (void)setAction:(id)action backgroundEffect:(id)effect
{
  actionCopy = action;
  effectCopy = effect;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_action, action);
    if (!actionCopy)
    {
      [(_SFSiteIconView *)self setNeedsLayout];
      goto LABEL_11;
    }

    bookmark = self->_bookmark;
    self->_bookmark = 0;

    [(_SFSiteIconView *)self _cancelTouchIconRequest];
    usesVibrantAppearance = [(_SFSiteIconView *)self usesVibrantAppearance];
    image = [actionCopy image];
    if (usesVibrantAppearance)
    {
      if (effectCopy)
      {
        [(_SFSiteIconView *)self _setGlyph:image withBackgroundEffect:effectCopy];
LABEL_10:

        goto LABEL_11;
      }

      _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
      [(_SFSiteIconView *)self _setGlyph:image withBackgroundEffect:_sf_defaultStartPageBackgroundEffect];
    }

    else
    {
      _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(_SFSiteIconView *)self _setGlyph:image withBackgroundColor:_sf_defaultStartPageBackgroundEffect];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_displayDefaultFolderIcon
{
  usesVibrantAppearance = [(_SFSiteIconView *)self usesVibrantAppearance];
  _tintedFolderImage = [(_SFSiteIconView *)self _tintedFolderImage];
  v6 = _tintedFolderImage;
  if (usesVibrantAppearance)
  {
    _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
    [(_SFSiteIconView *)self _setGlyph:v6 withBackgroundEffect:_sf_defaultStartPageBackgroundEffect];
  }

  else
  {
    if (self->_preferredBackgroundColor)
    {
      [(_SFSiteIconView *)self _setGlyph:_tintedFolderImage withBackgroundColor:?];
      goto LABEL_7;
    }

    _sf_defaultStartPageBackgroundEffect = +[_SFSiteIcon defaultIconKeyColor];
    [(_SFSiteIconView *)self _setGlyph:v6 withBackgroundColor:_sf_defaultStartPageBackgroundEffect];
  }

LABEL_7:
}

- (void)_updateSiteIconViewWithTouchIconResponse:(id)response
{
  responseCopy = response;
  if (!self->_leadingImage)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60___SFSiteIconView__updateSiteIconViewWithTouchIconResponse___block_invoke;
    v16[3] = &unk_1E721B360;
    v16[4] = self;
    [v5 setHandler:v16];
    touchIcon = [responseCopy touchIcon];
    isFolder = [(WebBookmark *)self->_bookmark isFolder];
    if (touchIcon)
    {
      if (isFolder)
      {
        extractedBackgroundColor = [responseCopy extractedBackgroundColor];
        [(_SFSiteIconView *)self _setSiteIcon:touchIcon withBackgroundColor:extractedBackgroundColor];
LABEL_11:

        goto LABEL_12;
      }

      [(_SFSiteIconView *)self _setSiteIcon:touchIcon withBackgroundColor:0];
    }

    else if ((isFolder & 1) == 0)
    {
      v9 = MEMORY[0x1E69C9888];
      title = [(WebBookmark *)self->_bookmark title];
      v11 = MEMORY[0x1E695DFF8];
      address = [(WebBookmark *)self->_bookmark address];
      v13 = [v11 safari_URLWithUserTypedString:address];
      extractedBackgroundColor = [v9 monogramStringForTitle:title url:v13];

      if ([extractedBackgroundColor length])
      {
        extractedBackgroundColor2 = [responseCopy extractedBackgroundColor];
        [(_SFSiteIconView *)self _setMonogramWithString:extractedBackgroundColor backgroundColor:extractedBackgroundColor2];
      }

      else
      {
        extractedBackgroundColor2 = +[_SFSiteIcon defaultGlyph];
        extractedBackgroundColor3 = [responseCopy extractedBackgroundColor];
        [(_SFSiteIconView *)self _setGlyph:extractedBackgroundColor2 withBackgroundColor:extractedBackgroundColor3];
      }

      [(_SFSiteIconView *)self setNeedsLayout];
      goto LABEL_11;
    }

LABEL_12:
  }
}

- (void)updateSiteIconViewWithLinkMetadata:(id)metadata requiredImageSize:(CGSize)size fallbackIcon:(id)icon
{
  height = size.height;
  width = size.width;
  metadataCopy = metadata;
  iconCopy = icon;
  image = [metadataCopy image];
  platformImage = [image platformImage];
  v13 = platformImage;
  if (platformImage)
  {
    platformImage2 = platformImage;
  }

  else
  {
    icon = [metadataCopy icon];
    platformImage2 = [icon platformImage];
  }

  [(UIImageView *)self->_imageView setContentMode:2];
  v16 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85___SFSiteIconView_updateSiteIconViewWithLinkMetadata_requiredImageSize_fallbackIcon___block_invoke;
  v37[3] = &unk_1E721B360;
  v37[4] = self;
  [v16 setHandler:v37];
  if (!platformImage2)
  {
    goto LABEL_14;
  }

  [platformImage2 size];
  if (v17 < width)
  {
    [platformImage2 size];
    if (v18 < height)
    {
      goto LABEL_14;
    }
  }

  [platformImage2 size];
  v20 = v19;
  [platformImage2 size];
  v22 = v21;
  [platformImage2 size];
  if (v20 >= v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  [platformImage2 size];
  v27 = v26;
  [platformImage2 size];
  v29 = v28;
  [platformImage2 size];
  if (v27 <= v29)
  {
    v30 = v31;
  }

  if (v25 / v30 > 0.3)
  {
    [(_SFSiteIconView *)self setImage:platformImage2];
  }

  else
  {
LABEL_14:
    v32 = MEMORY[0x1E69C9888];
    title = [metadataCopy title];
    v34 = [metadataCopy URL];
    v35 = [v32 monogramStringForTitle:title url:v34];

    if ([v35 length])
    {
      if (platformImage2)
      {
        [MEMORY[0x1E69C9840] keyColorForIcon:platformImage2];
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
      [(_SFSiteIconView *)self setImage:iconCopy];
    }
  }
}

- (void)setAllowsDropShadow:(BOOL)shadow
{
  if (self->_allowsDropShadow != shadow)
  {
    shadowCopy = shadow;
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    self->_allowsDropShadow = shadowCopy & ~isSolariumEnabled;
    if ((shadowCopy & ~isSolariumEnabled) == 1)
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

        labelColor = [MEMORY[0x1E69DC888] labelColor];
        v13 = [labelColor colorWithAlphaComponent:0.07];
        [(_SFHairlineBorderView *)self->_borderView setBorderColor:v13];

        [(_SFSiteIconView *)self insertSubview:self->_borderView aboveSubview:self->_imageView];
      }
    }

    [(_SFSiteIconView *)self setNeedsLayout];
  }
}

- (void)setBackdropCaptureView:(id)view
{
  viewCopy = view;
  _captureView = [(UIVisualEffectView *)self->_backgroundView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundView _setCaptureView:viewCopy];
  }
}

- (void)setLeadingImage:(id)image
{
  objc_storeStrong(&self->_leadingImage, image);
  imageCopy = image;
  [(_SFSiteIconView *)self _setState:3];
  [(_SFSiteIconView *)self setImage:imageCopy withBackgroundColor:0];
}

- (void)setImage:(id)image withBackgroundColor:(id)color
{
  imageCopy = image;
  colorCopy = color;
  [(UIImageView *)self->_imageView setImage:imageCopy];
  objc_storeStrong(&self->_preferredBackgroundColor, color);
  if (![(_SFSiteIconView *)self usesVibrantAppearance]&& !self->_preferredBackgroundColor)
  {
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    preferredBackgroundColor = self->_preferredBackgroundColor;
    self->_preferredBackgroundColor = tertiarySystemGroupedBackgroundColor;
  }

  safari_transparencyAnalysisResult = [imageCopy safari_transparencyAnalysisResult];
  isFolder = [(WebBookmark *)self->_bookmark isFolder];
  v12 = safari_transparencyAnalysisResult != 4 && (safari_transparencyAnalysisResult & 0xFFFFFFFFFFFFFFFDLL) != 1;
  v13 = v12 & ~isFolder;
  self->_imageIsTransparent = v13;
  [(_SFSiteIconView *)self setClipsToBounds:v13 ^ 1u];
  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)_setSiteIcon:(id)icon withBackgroundColor:(id)color
{
  colorCopy = color;
  iconCopy = icon;
  [(_SFSiteIconView *)self _setState:0];
  [(_SFSiteIconView *)self setImage:iconCopy withBackgroundColor:colorCopy];
}

- (void)_setGlyph:(id)glyph withBackgroundColor:(id)color
{
  colorCopy = color;
  glyphCopy = glyph;
  [(_SFSiteIconView *)self _setState:1];
  [(UIImageView *)self->_imageView setImage:glyphCopy];

  preferredBackgroundColor = self->_preferredBackgroundColor;
  self->_preferredBackgroundColor = colorCopy;
  v9 = colorCopy;

  preferredBackgroundEffect = self->_preferredBackgroundEffect;
  self->_preferredBackgroundEffect = 0;

  [(_SFSiteIconView *)self setNeedsLayout];
}

- (void)_setGlyph:(id)glyph withBackgroundEffect:(id)effect
{
  effectCopy = effect;
  glyphCopy = glyph;
  [(_SFSiteIconView *)self _setState:1];
  [(UIImageView *)self->_imageView setImage:glyphCopy];

  preferredBackgroundColor = self->_preferredBackgroundColor;
  self->_preferredBackgroundColor = 0;

  preferredBackgroundEffect = self->_preferredBackgroundEffect;
  self->_preferredBackgroundEffect = effectCopy;

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
  _glyphConfiguration = [(_SFSiteIconView *)self _glyphConfiguration];
  v4 = [v2 systemImageNamed:@"folder" withConfiguration:_glyphConfiguration];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 flattenedImageWithColor:whiteColor];

  v7 = [v6 imageWithRenderingMode:1];

  [v7 safari_setTransparencyAnalysisResult:2];

  return v7;
}

- (void)_setMonogramWithString:(id)string backgroundColor:(id)color
{
  stringCopy = string;
  colorCopy = color;
  [(_SFSiteIconView *)self _setState:2];
  if ([(_SFSiteIconView *)self usesVibrantAppearance])
  {
    v7 = +[_SFSiteIcon defaultIconKeyColor];
    v8 = [colorCopy isEqual:v7];

    if (v8)
    {

      colorCopy = 0;
    }
  }

  else if (!colorCopy)
  {
    colorCopy = +[_SFSiteIcon defaultIconKeyColor];
  }

  text = [(UILabel *)self->_monogramLabel text];
  if ([text isEqualToString:stringCopy])
  {
    v10 = [colorCopy isEqual:self->_preferredBackgroundColor];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:whiteColor];

    [(_SFSiteIconView *)self addSubview:self->_monogramLabel];
  }

  if ([stringCopy safari_isSingleEmoji])
  {
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.12];
    [(UILabel *)self->_monogramLabel setShadowColor:v14];

    [(UILabel *)self->_monogramLabel setShadowOffset:1.0, 1.0];
  }

  else
  {
    [(UILabel *)self->_monogramLabel setShadowColor:0];
  }

  [(UILabel *)self->_monogramLabel setText:stringCopy];
  objc_storeStrong(&self->_preferredBackgroundColor, colorCopy);
  [(_SFSiteIconView *)self setNeedsLayout];
LABEL_16:
}

- (void)_setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    v5 = state == 2;
    [(UILabel *)self->_monogramLabel setHidden:state != 2];
    [(UIImageView *)self->_imageView setHidden:v5];
    if (state != 3)
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