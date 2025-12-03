@interface CDRichComplicationImageView
- (BOOL)_isSymbolImageProvider;
- (BOOL)_isSymbolImageProviderWithoutSpecificSize;
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image;
- (CDRichComplicationImageView)initWithDevice:(id)device useAccentColor:(BOOL)color;
- (CDStackedImagesComplicationImageView)monochromeImageView;
- (CLKMonochromeFilterProvider)filterProvider;
- (UIView)richComplicationImageView;
- (id)_createMonochromeImageView;
- (id)backgroundColorForView:(id)view;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)interpolatedColorForView:(id)view;
- (int64_t)_filterStyle;
- (void)layoutSubviews;
- (void)setFontDescriptor:(id)descriptor;
- (void)setFontSizeFactor:(double)factor;
- (void)setImageProvider:(id)provider reason:(int64_t)reason;
- (void)setPaused:(BOOL)paused;
- (void)setTintedFraction:(double)fraction;
- (void)setTintedPlatterColor:(id)color;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationImageView

- (CDRichComplicationImageView)initWithDevice:(id)device useAccentColor:(BOOL)color
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = CDRichComplicationImageView;
  v8 = [(CDRichComplicationImageView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_useAccentColor = color;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CDRichComplicationImageView *)v9 setBackgroundColor:clearColor];

    [(CDRichComplicationImageView *)v9 setOpaque:0];
  }

  return v9;
}

- (id)_createMonochromeImageView
{
  if (self->_useAccentColor)
  {
    v2 = off_278DF2F70;
  }

  else
  {
    v2 = off_278DF2F78;
  }

  v3 = objc_alloc_init(*v2);

  return v3;
}

- (void)setImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  objc_storeStrong(&self->_imageProvider, provider);
  if ((reason - 1) >= 3)
  {
    reason = 0;
  }

  imageViewClass = [providerCopy ImageViewClass];
  if (!imageViewClass)
  {
    imageViewClass = objc_opt_class();
  }

  richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
  v9 = objc_opt_class();

  if (imageViewClass != v9)
  {
    layer = [(CDRichComplicationImageView *)self layer];
    [layer setFilters:MEMORY[0x277CBEBF8]];

    [(CDRichComplicationImageView *)self setHostingOverrideView:imageViewClass != objc_opt_class()];
    richComplicationImageView2 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [richComplicationImageView2 removeFromSuperview];

    monochromeImageView = [(CDRichComplicationImageView *)self monochromeImageView];
    [monochromeImageView removeFromSuperview];

    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v13 = [imageViewClass alloc];
      device = [(CDRichComplicationImageView *)self device];
      v15 = [v13 initFullColorImageViewWithDevice:device];
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D755E8]);
      v15 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      device = [(CDRichComplicationImageView *)self _createMonochromeImageView];
      [device setAutoresizingMask:0];
      [device setHidden:1];
      [device setFilterProvider:self];
      [device setMulticolorAlpha:1.0];
      [(CDRichComplicationImageView *)self addSubview:device];
      [(CDRichComplicationImageView *)self setMonochromeImageView:device];
    }

    [(CDRichComplicationImageView *)self addSubview:v15];
    [(CDRichComplicationImageView *)self setRichComplicationImageView:v15];
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      if (objc_opt_respondsToSelector())
      {
        [v15 setFilterProvider:self];
      }

      if ([(CDRichComplicationImageView *)self isPaused])
      {
        [v15 pauseLiveFullColorImageView];
      }

      else
      {
        [v15 resumeLiveFullColorImageView];
      }
    }
  }

  self->_monochromeFilterType = [providerCopy monochromeFilterType];
  if (providerCopy)
  {
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      richComplicationImageView3 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        fontDescriptor = [(CDRichComplicationImageView *)self fontDescriptor];
        [richComplicationImageView3 setFontDescriptor:fontDescriptor];
      }

      if (objc_opt_respondsToSelector())
      {
        [(CDRichComplicationImageView *)self fontSizeFactor];
        [richComplicationImageView3 setFontSizeFactor:?];
      }

      [richComplicationImageView3 configureWithImageProvider:providerCopy reason:reason];
    }

    else
    {
      -[CDRichComplicationImageView setPrefersFilterOverTransition:](self, "setPrefersFilterOverTransition:", [providerCopy prefersFilterOverTransition]);
      richComplicationImageView3 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if ([(CDRichComplicationImageView *)self _isSymbolImageProvider])
      {
        [providerCopy createSymbolImage];
      }

      else
      {
        [providerCopy image];
      }
      v21 = ;
      [richComplicationImageView3 setImage:v21];

      tintColor = [providerCopy tintColor];
      [richComplicationImageView3 setTintColor:tintColor];

      [richComplicationImageView3 setHidden:0];
      tintedImageProvider = [providerCopy tintedImageProvider];
      if (tintedImageProvider)
      {
        monochromeImageView2 = [(CDRichComplicationImageView *)self monochromeImageView];
        [monochromeImageView2 setImageProvider:tintedImageProvider];
      }
    }

    if (self->_inMonochromeModeFraction == 1.0)
    {
      [(CDRichComplicationImageView *)self updateMonochromeColor];
    }

    else
    {
      [(CDRichComplicationImageView *)self transitionToMonochromeWithFraction:?];
    }

    [(CDRichComplicationImageView *)self setNeedsLayout];
  }

  else
  {
    richComplicationImageView4 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [richComplicationImageView4 setHidden:1];

    monochromeImageView3 = [(CDRichComplicationImageView *)self monochromeImageView];
    [monochromeImageView3 setHidden:1];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CDRichComplicationImageView;
  [(CDRichComplicationImageView *)&v19 layoutSubviews];
  richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
  [(CDRichComplicationImageView *)self bounds];
  Width = CGRectGetWidth(v20);
  [(CDRichComplicationImageView *)self bounds];
  [richComplicationImageView setBounds:{0.0, 0.0, Width, CGRectGetHeight(v21)}];
  [(CDRichComplicationImageView *)self bounds];
  MidX = CGRectGetMidX(v22);
  [(CDRichComplicationImageView *)self bounds];
  [richComplicationImageView setCenter:{MidX, CGRectGetMidY(v23)}];
  monochromeImageView = [(CDRichComplicationImageView *)self monochromeImageView];
  [(CDRichComplicationImageView *)self bounds];
  v7 = CGRectGetMidX(v24);
  [(CDRichComplicationImageView *)self bounds];
  [monochromeImageView setCenter:{v7, CGRectGetMidY(v25)}];

  richComplicationImageView2 = [(CDRichComplicationImageView *)self richComplicationImageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    richComplicationImageView3 = [(CDRichComplicationImageView *)self richComplicationImageView];
    image = [richComplicationImageView3 image];
    [image size];
    v13 = v12;
    [(CDRichComplicationImageView *)self bounds];
    if (v13 <= v14 && ([image size], v16 = v15, -[CDRichComplicationImageView bounds](self, "bounds"), v16 <= v17))
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    [richComplicationImageView3 setContentMode:v18];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    self->_paused = paused;
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
      richComplicationImageView2 = richComplicationImageView;
      if (pausedCopy)
      {
        [richComplicationImageView pauseLiveFullColorImageView];
      }

      else
      {
        [richComplicationImageView resumeLiveFullColorImageView];
      }
    }

    else
    {
      isPaused = [(CDRichComplicationImageView *)self isPaused];
      richComplicationImageView2 = [(CDRichComplicationImageView *)self richComplicationImageView];
      layer = [richComplicationImageView2 layer];
      [layer setShouldRasterize:isPaused];
    }
  }
}

- (void)setFontDescriptor:(id)descriptor
{
  if (self->_fontDescriptor != descriptor)
  {
    objc_storeStrong(&self->_fontDescriptor, descriptor);
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        fontDescriptor = [(CDRichComplicationImageView *)self fontDescriptor];
        [richComplicationImageView setFontDescriptor:fontDescriptor];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFontSizeFactor:(double)factor
{
  if (self->_fontSizeFactor != factor)
  {
    self->_fontSizeFactor = factor;
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        [(CDRichComplicationImageView *)self fontSizeFactor];
        [richComplicationImageView setFontSizeFactor:?];
      }
    }
  }
}

- (BOOL)_isSymbolImageProvider
{
  imageProvider = self->_imageProvider;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (BOOL)_isSymbolImageProviderWithoutSpecificSize
{
  if (![(CDRichComplicationImageView *)self _isSymbolImageProvider])
  {
    return 0;
  }

  pointSize = [(CLKFullColorImageProvider *)self->_imageProvider pointSize];
  if (pointSize)
  {
    v4 = 0;
  }

  else
  {
    overridePointSize = [(CLKFullColorImageProvider *)self->_imageProvider overridePointSize];
    v4 = overridePointSize == 0;
  }

  return v4;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  self->_inMonochromeModeFraction = fraction;
  if ([(CDRichComplicationImageView *)self isHostingOverrideView])
  {
    richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      richComplicationImageView2 = [(CDRichComplicationImageView *)self richComplicationImageView];
LABEL_12:
      richComplicationImageView4 = richComplicationImageView2;
      fractionCopy = fraction;
LABEL_13:
      [richComplicationImageView2 transitionToMonochromeWithFraction:fractionCopy];
      goto LABEL_14;
    }
  }

  monochromeImageView = [(CDRichComplicationImageView *)self monochromeImageView];
  imageProvider = [monochromeImageView imageProvider];

  if (!imageProvider)
  {
    filterProvider = [(CDRichComplicationImageView *)self filterProvider];
    richComplicationImageView4 = [filterProvider filtersForView:self style:-[CDRichComplicationImageView _filterStyle](self fraction:{"_filterStyle"), fraction}];

    v16 = richComplicationImageView4;
    if (!richComplicationImageView4)
    {
      goto LABEL_15;
    }

    layer = [(CDRichComplicationImageView *)self layer];
    [layer setFilters:richComplicationImageView4];
    goto LABEL_9;
  }

  layer2 = [(CDRichComplicationImageView *)self layer];
  [layer2 setFilters:MEMORY[0x277CBEBF8]];

  if (fabs(fraction) < 0.00000011920929)
  {
    monochromeImageView2 = [(CDRichComplicationImageView *)self monochromeImageView];
    [monochromeImageView2 setHidden:1];

    richComplicationImageView3 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [richComplicationImageView3 setHidden:0];

    richComplicationImageView4 = [(CDRichComplicationImageView *)self richComplicationImageView];
    layer = [richComplicationImageView4 layer];
    LODWORD(v14) = 1.0;
    [layer setOpacity:v14];
LABEL_9:

LABEL_14:
    v16 = richComplicationImageView4;
    goto LABEL_15;
  }

  if (fabs(fraction + -1.0) < 0.00000011920929)
  {
    richComplicationImageView5 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [richComplicationImageView5 setHidden:1];

    monochromeImageView3 = [(CDRichComplicationImageView *)self monochromeImageView];
    [monochromeImageView3 setHidden:0];

    monochromeImageView4 = [(CDRichComplicationImageView *)self monochromeImageView];
    layer3 = [monochromeImageView4 layer];
    LODWORD(v21) = 1.0;
    [layer3 setOpacity:v21];

    richComplicationImageView2 = [(CDRichComplicationImageView *)self monochromeImageView];
    goto LABEL_12;
  }

  prefersFilterOverTransition = [(CDRichComplicationImageView *)self prefersFilterOverTransition];
  richComplicationImageView6 = [(CDRichComplicationImageView *)self richComplicationImageView];
  v25 = richComplicationImageView6;
  if (!prefersFilterOverTransition)
  {
    [richComplicationImageView6 setHidden:0];

    richComplicationImageView7 = [(CDRichComplicationImageView *)self richComplicationImageView];
    layer4 = [richComplicationImageView7 layer];
    v36 = 1.0 - fraction;
    *&v39 = v36;
    [layer4 setOpacity:v39];

    monochromeImageView5 = [(CDRichComplicationImageView *)self monochromeImageView];
    [monochromeImageView5 setHidden:0];

    monochromeImageView6 = [(CDRichComplicationImageView *)self monochromeImageView];
    layer5 = [monochromeImageView6 layer];
    fractionCopy2 = fraction;
    *&v44 = fractionCopy2;
    [layer5 setOpacity:v44];

    richComplicationImageView2 = [(CDRichComplicationImageView *)self monochromeImageView];
    richComplicationImageView4 = richComplicationImageView2;
    fractionCopy = 1.0;
    goto LABEL_13;
  }

  [richComplicationImageView6 setHidden:1];

  richComplicationImageView8 = [(CDRichComplicationImageView *)self richComplicationImageView];
  layer6 = [richComplicationImageView8 layer];
  LODWORD(v28) = 1.0;
  [layer6 setOpacity:v28];

  monochromeImageView7 = [(CDRichComplicationImageView *)self monochromeImageView];
  [monochromeImageView7 setHidden:0];

  monochromeImageView8 = [(CDRichComplicationImageView *)self monochromeImageView];
  layer7 = [monochromeImageView8 layer];
  LODWORD(v32) = 1.0;
  [layer7 setOpacity:v32];

  filterProvider2 = [(CDRichComplicationImageView *)self filterProvider];
  monochromeImageView9 = [(CDRichComplicationImageView *)self monochromeImageView];
  richComplicationImageView4 = [filterProvider2 filtersForView:monochromeImageView9 style:-[CDRichComplicationImageView _filterStyle](self fraction:{"_filterStyle"), fraction}];

  v16 = richComplicationImageView4;
  if (richComplicationImageView4)
  {
    layer = [(CDRichComplicationImageView *)self monochromeImageView];
    v13Layer = [layer layer];
    [v13Layer setFilters:richComplicationImageView4];

    goto LABEL_9;
  }

LABEL_15:
}

- (void)updateMonochromeColor
{
  self->_inMonochromeModeFraction = 1.0;
  if ([(CDRichComplicationImageView *)self isHostingOverrideView]&& ([(CDRichComplicationImageView *)self richComplicationImageView], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
    [richComplicationImageView updateMonochromeColor];
  }

  else
  {
    monochromeImageView = [(CDRichComplicationImageView *)self monochromeImageView];
    imageProvider = [monochromeImageView imageProvider];

    if (imageProvider)
    {
      layer = [(CDRichComplicationImageView *)self layer];
      [layer setFilters:MEMORY[0x277CBEBF8]];

      monochromeImageView2 = [(CDRichComplicationImageView *)self monochromeImageView];
      [monochromeImageView2 setHidden:0];

      monochromeImageView3 = [(CDRichComplicationImageView *)self monochromeImageView];
      layer2 = [monochromeImageView3 layer];
      LODWORD(v11) = 1.0;
      [layer2 setOpacity:v11];

      monochromeImageView4 = [(CDRichComplicationImageView *)self monochromeImageView];
      [monochromeImageView4 updateMonochromeColor];

      richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
      [richComplicationImageView setHidden:1];
    }

    else
    {
      filterProvider = [(CDRichComplicationImageView *)self filterProvider];
      richComplicationImageView = [filterProvider filtersForView:self style:{-[CDRichComplicationImageView _filterStyle](self, "_filterStyle")}];

      v14 = richComplicationImageView;
      if (!richComplicationImageView)
      {
        goto LABEL_9;
      }

      layer3 = [(CDRichComplicationImageView *)self layer];
      [layer3 setFilters:richComplicationImageView];
    }
  }

  v14 = richComplicationImageView;
LABEL_9:
}

- (int64_t)_filterStyle
{
  v2 = 3;
  if (!self->_useAccentColor)
  {
    v2 = 1;
  }

  v3 = 2;
  if (!self->_useAccentColor)
  {
    v3 = 0;
  }

  if (self->_monochromeFilterType)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

- (id)interpolatedColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    filterProvider2 = [(CDRichComplicationImageView *)self filterProvider];
    v8 = [filterProvider2 interpolatedColorForView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)backgroundColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v6 = [filterProvider backgroundColorForView:viewCopy];

  return v6;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image
{
  imageCopy = image;
  filterProvider = [(CDRichComplicationImageView *)self filterProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    filterProvider2 = [(CDRichComplicationImageView *)self filterProvider];
    v8 = [filterProvider2 viewShouldIgnoreTwoPieceImage:imageCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTintedFraction:(double)fraction
{
  richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
  if ([richComplicationImageView conformsToProtocol:&unk_2857149A0])
  {
    [richComplicationImageView setTintedFraction:fraction];
  }
}

- (void)setTintedPlatterColor:(id)color
{
  colorCopy = color;
  richComplicationImageView = [(CDRichComplicationImageView *)self richComplicationImageView];
  if ([richComplicationImageView conformsToProtocol:&unk_2857149A0])
  {
    [richComplicationImageView setTintedPlatterColor:colorCopy];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (UIView)richComplicationImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_richComplicationImageView);

  return WeakRetained;
}

- (CDStackedImagesComplicationImageView)monochromeImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_monochromeImageView);

  return WeakRetained;
}

@end