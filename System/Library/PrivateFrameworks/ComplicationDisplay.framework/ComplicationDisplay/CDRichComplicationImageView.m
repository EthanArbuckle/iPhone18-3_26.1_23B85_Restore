@interface CDRichComplicationImageView
- (BOOL)_isSymbolImageProvider;
- (BOOL)_isSymbolImageProviderWithoutSpecificSize;
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3;
- (CDRichComplicationImageView)initWithDevice:(id)a3 useAccentColor:(BOOL)a4;
- (CDStackedImagesComplicationImageView)monochromeImageView;
- (CLKMonochromeFilterProvider)filterProvider;
- (UIView)richComplicationImageView;
- (id)_createMonochromeImageView;
- (id)backgroundColorForView:(id)a3;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)interpolatedColorForView:(id)a3;
- (int64_t)_filterStyle;
- (void)layoutSubviews;
- (void)setFontDescriptor:(id)a3;
- (void)setFontSizeFactor:(double)a3;
- (void)setImageProvider:(id)a3 reason:(int64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)setTintedFraction:(double)a3;
- (void)setTintedPlatterColor:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationImageView

- (CDRichComplicationImageView)initWithDevice:(id)a3 useAccentColor:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CDRichComplicationImageView;
  v8 = [(CDRichComplicationImageView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_useAccentColor = a4;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(CDRichComplicationImageView *)v9 setBackgroundColor:v10];

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

- (void)setImageProvider:(id)a3 reason:(int64_t)a4
{
  v25 = a3;
  objc_storeStrong(&self->_imageProvider, a3);
  if ((a4 - 1) >= 3)
  {
    a4 = 0;
  }

  v7 = [v25 ImageViewClass];
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [(CDRichComplicationImageView *)self richComplicationImageView];
  v9 = objc_opt_class();

  if (v7 != v9)
  {
    v10 = [(CDRichComplicationImageView *)self layer];
    [v10 setFilters:MEMORY[0x277CBEBF8]];

    [(CDRichComplicationImageView *)self setHostingOverrideView:v7 != objc_opt_class()];
    v11 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [v11 removeFromSuperview];

    v12 = [(CDRichComplicationImageView *)self monochromeImageView];
    [v12 removeFromSuperview];

    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v13 = [v7 alloc];
      v14 = [(CDRichComplicationImageView *)self device];
      v15 = [v13 initFullColorImageViewWithDevice:v14];
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D755E8]);
      v15 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v14 = [(CDRichComplicationImageView *)self _createMonochromeImageView];
      [v14 setAutoresizingMask:0];
      [v14 setHidden:1];
      [v14 setFilterProvider:self];
      [v14 setMulticolorAlpha:1.0];
      [(CDRichComplicationImageView *)self addSubview:v14];
      [(CDRichComplicationImageView *)self setMonochromeImageView:v14];
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

  self->_monochromeFilterType = [v25 monochromeFilterType];
  if (v25)
  {
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v17 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        v18 = [(CDRichComplicationImageView *)self fontDescriptor];
        [v17 setFontDescriptor:v18];
      }

      if (objc_opt_respondsToSelector())
      {
        [(CDRichComplicationImageView *)self fontSizeFactor];
        [v17 setFontSizeFactor:?];
      }

      [v17 configureWithImageProvider:v25 reason:a4];
    }

    else
    {
      -[CDRichComplicationImageView setPrefersFilterOverTransition:](self, "setPrefersFilterOverTransition:", [v25 prefersFilterOverTransition]);
      v17 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if ([(CDRichComplicationImageView *)self _isSymbolImageProvider])
      {
        [v25 createSymbolImage];
      }

      else
      {
        [v25 image];
      }
      v21 = ;
      [v17 setImage:v21];

      v22 = [v25 tintColor];
      [v17 setTintColor:v22];

      [v17 setHidden:0];
      v23 = [v25 tintedImageProvider];
      if (v23)
      {
        v24 = [(CDRichComplicationImageView *)self monochromeImageView];
        [v24 setImageProvider:v23];
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
    v19 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [v19 setHidden:1];

    v20 = [(CDRichComplicationImageView *)self monochromeImageView];
    [v20 setHidden:1];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CDRichComplicationImageView;
  [(CDRichComplicationImageView *)&v19 layoutSubviews];
  v3 = [(CDRichComplicationImageView *)self richComplicationImageView];
  [(CDRichComplicationImageView *)self bounds];
  Width = CGRectGetWidth(v20);
  [(CDRichComplicationImageView *)self bounds];
  [v3 setBounds:{0.0, 0.0, Width, CGRectGetHeight(v21)}];
  [(CDRichComplicationImageView *)self bounds];
  MidX = CGRectGetMidX(v22);
  [(CDRichComplicationImageView *)self bounds];
  [v3 setCenter:{MidX, CGRectGetMidY(v23)}];
  v6 = [(CDRichComplicationImageView *)self monochromeImageView];
  [(CDRichComplicationImageView *)self bounds];
  v7 = CGRectGetMidX(v24);
  [(CDRichComplicationImageView *)self bounds];
  [v6 setCenter:{v7, CGRectGetMidY(v25)}];

  v8 = [(CDRichComplicationImageView *)self richComplicationImageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(CDRichComplicationImageView *)self richComplicationImageView];
    v11 = [v10 image];
    [v11 size];
    v13 = v12;
    [(CDRichComplicationImageView *)self bounds];
    if (v13 <= v14 && ([v11 size], v16 = v15, -[CDRichComplicationImageView bounds](self, "bounds"), v16 <= v17))
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    [v10 setContentMode:v18];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    v4 = a3;
    self->_paused = a3;
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v6 = [(CDRichComplicationImageView *)self richComplicationImageView];
      v9 = v6;
      if (v4)
      {
        [v6 pauseLiveFullColorImageView];
      }

      else
      {
        [v6 resumeLiveFullColorImageView];
      }
    }

    else
    {
      v7 = [(CDRichComplicationImageView *)self isPaused];
      v9 = [(CDRichComplicationImageView *)self richComplicationImageView];
      v8 = [v9 layer];
      [v8 setShouldRasterize:v7];
    }
  }
}

- (void)setFontDescriptor:(id)a3
{
  if (self->_fontDescriptor != a3)
  {
    objc_storeStrong(&self->_fontDescriptor, a3);
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v5 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        v6 = [(CDRichComplicationImageView *)self fontDescriptor];
        [v5 setFontDescriptor:v6];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFontSizeFactor:(double)a3
{
  if (self->_fontSizeFactor != a3)
  {
    self->_fontSizeFactor = a3;
    if ([(CDRichComplicationImageView *)self isHostingOverrideView])
    {
      v4 = [(CDRichComplicationImageView *)self richComplicationImageView];
      if (objc_opt_respondsToSelector())
      {
        [(CDRichComplicationImageView *)self fontSizeFactor];
        [v4 setFontSizeFactor:?];
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

  v3 = [(CLKFullColorImageProvider *)self->_imageProvider pointSize];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CLKFullColorImageProvider *)self->_imageProvider overridePointSize];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  self->_inMonochromeModeFraction = a3;
  if ([(CDRichComplicationImageView *)self isHostingOverrideView])
  {
    v5 = [(CDRichComplicationImageView *)self richComplicationImageView];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CDRichComplicationImageView *)self richComplicationImageView];
LABEL_12:
      v45 = v7;
      v22 = a3;
LABEL_13:
      [v7 transitionToMonochromeWithFraction:v22];
      goto LABEL_14;
    }
  }

  v8 = [(CDRichComplicationImageView *)self monochromeImageView];
  v9 = [v8 imageProvider];

  if (!v9)
  {
    v15 = [(CDRichComplicationImageView *)self filterProvider];
    v45 = [v15 filtersForView:self style:-[CDRichComplicationImageView _filterStyle](self fraction:{"_filterStyle"), a3}];

    v16 = v45;
    if (!v45)
    {
      goto LABEL_15;
    }

    v13 = [(CDRichComplicationImageView *)self layer];
    [v13 setFilters:v45];
    goto LABEL_9;
  }

  v10 = [(CDRichComplicationImageView *)self layer];
  [v10 setFilters:MEMORY[0x277CBEBF8]];

  if (fabs(a3) < 0.00000011920929)
  {
    v11 = [(CDRichComplicationImageView *)self monochromeImageView];
    [v11 setHidden:1];

    v12 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [v12 setHidden:0];

    v45 = [(CDRichComplicationImageView *)self richComplicationImageView];
    v13 = [v45 layer];
    LODWORD(v14) = 1.0;
    [v13 setOpacity:v14];
LABEL_9:

LABEL_14:
    v16 = v45;
    goto LABEL_15;
  }

  if (fabs(a3 + -1.0) < 0.00000011920929)
  {
    v17 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [v17 setHidden:1];

    v18 = [(CDRichComplicationImageView *)self monochromeImageView];
    [v18 setHidden:0];

    v19 = [(CDRichComplicationImageView *)self monochromeImageView];
    v20 = [v19 layer];
    LODWORD(v21) = 1.0;
    [v20 setOpacity:v21];

    v7 = [(CDRichComplicationImageView *)self monochromeImageView];
    goto LABEL_12;
  }

  v23 = [(CDRichComplicationImageView *)self prefersFilterOverTransition];
  v24 = [(CDRichComplicationImageView *)self richComplicationImageView];
  v25 = v24;
  if (!v23)
  {
    [v24 setHidden:0];

    v37 = [(CDRichComplicationImageView *)self richComplicationImageView];
    v38 = [v37 layer];
    v36 = 1.0 - a3;
    *&v39 = v36;
    [v38 setOpacity:v39];

    v40 = [(CDRichComplicationImageView *)self monochromeImageView];
    [v40 setHidden:0];

    v42 = [(CDRichComplicationImageView *)self monochromeImageView];
    v43 = [v42 layer];
    v41 = a3;
    *&v44 = v41;
    [v43 setOpacity:v44];

    v7 = [(CDRichComplicationImageView *)self monochromeImageView];
    v45 = v7;
    v22 = 1.0;
    goto LABEL_13;
  }

  [v24 setHidden:1];

  v26 = [(CDRichComplicationImageView *)self richComplicationImageView];
  v27 = [v26 layer];
  LODWORD(v28) = 1.0;
  [v27 setOpacity:v28];

  v29 = [(CDRichComplicationImageView *)self monochromeImageView];
  [v29 setHidden:0];

  v30 = [(CDRichComplicationImageView *)self monochromeImageView];
  v31 = [v30 layer];
  LODWORD(v32) = 1.0;
  [v31 setOpacity:v32];

  v33 = [(CDRichComplicationImageView *)self filterProvider];
  v34 = [(CDRichComplicationImageView *)self monochromeImageView];
  v45 = [v33 filtersForView:v34 style:-[CDRichComplicationImageView _filterStyle](self fraction:{"_filterStyle"), a3}];

  v16 = v45;
  if (v45)
  {
    v13 = [(CDRichComplicationImageView *)self monochromeImageView];
    v35 = [v13 layer];
    [v35 setFilters:v45];

    goto LABEL_9;
  }

LABEL_15:
}

- (void)updateMonochromeColor
{
  self->_inMonochromeModeFraction = 1.0;
  if ([(CDRichComplicationImageView *)self isHostingOverrideView]&& ([(CDRichComplicationImageView *)self richComplicationImageView], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v16 = [(CDRichComplicationImageView *)self richComplicationImageView];
    [v16 updateMonochromeColor];
  }

  else
  {
    v5 = [(CDRichComplicationImageView *)self monochromeImageView];
    v6 = [v5 imageProvider];

    if (v6)
    {
      v7 = [(CDRichComplicationImageView *)self layer];
      [v7 setFilters:MEMORY[0x277CBEBF8]];

      v8 = [(CDRichComplicationImageView *)self monochromeImageView];
      [v8 setHidden:0];

      v9 = [(CDRichComplicationImageView *)self monochromeImageView];
      v10 = [v9 layer];
      LODWORD(v11) = 1.0;
      [v10 setOpacity:v11];

      v12 = [(CDRichComplicationImageView *)self monochromeImageView];
      [v12 updateMonochromeColor];

      v16 = [(CDRichComplicationImageView *)self richComplicationImageView];
      [v16 setHidden:1];
    }

    else
    {
      v13 = [(CDRichComplicationImageView *)self filterProvider];
      v16 = [v13 filtersForView:self style:{-[CDRichComplicationImageView _filterStyle](self, "_filterStyle")}];

      v14 = v16;
      if (!v16)
      {
        goto LABEL_9;
      }

      v15 = [(CDRichComplicationImageView *)self layer];
      [v15 setFilters:v16];
    }
  }

  v14 = v16;
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

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationImageView *)self filterProvider];
  v9 = [v8 filtersForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationImageView *)self filterProvider];
  v7 = [v6 filtersForView:self style:a4];

  return v7;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationImageView *)self filterProvider];
  v9 = [v8 filterForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationImageView *)self filterProvider];
  v7 = [v6 filterForView:self style:a4];

  return v7;
}

- (id)interpolatedColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationImageView *)self filterProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CDRichComplicationImageView *)self filterProvider];
    v8 = [v7 interpolatedColorForView:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationImageView *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationImageView *)self filterProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CDRichComplicationImageView *)self filterProvider];
    v8 = [v7 viewShouldIgnoreTwoPieceImage:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTintedFraction:(double)a3
{
  v4 = [(CDRichComplicationImageView *)self richComplicationImageView];
  if ([v4 conformsToProtocol:&unk_2857149A0])
  {
    [v4 setTintedFraction:a3];
  }
}

- (void)setTintedPlatterColor:(id)a3
{
  v5 = a3;
  v4 = [(CDRichComplicationImageView *)self richComplicationImageView];
  if ([v4 conformsToProtocol:&unk_2857149A0])
  {
    [v4 setTintedPlatterColor:v5];
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