@interface MRUWaveformView
- (MRUWaveformView)initWithFrame:(CGRect)frame context:(unint64_t)context;
- (MRUWaveformView)initWithFrame:(CGRect)frame context:(unint64_t)context settings:(id)settings;
- (void)applyContext:(unint64_t)context;
- (void)layoutSubviews;
- (void)setArtworkImage:(id)image;
- (void)setBarVisualStyle:(int64_t)style;
- (void)setFillColor:(id)color;
- (void)setStylingProvider:(id)provider;
- (void)setWaveformData:(id)data;
- (void)updateArtworkFilters;
- (void)updateBars;
- (void)updateDimmed;
- (void)updateLayers;
- (void)updateVisualStyling;
@end

@implementation MRUWaveformView

- (void)updateDimmed
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bars = [(MRUWaveformView *)self bars];
  v4 = [bars countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(bars);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        traitCollection = [(MRUWaveformView *)self traitCollection];
        [v8 setAlpha:{(objc_msgSend(traitCollection, "mr_shouldDim") ^ 1)}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [bars countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (MRUWaveformView)initWithFrame:(CGRect)frame context:(unint64_t)context settings:(id)settings
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v68[2] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v65.receiver = self;
  v65.super_class = MRUWaveformView;
  height = [(MRUWaveformView *)&v65 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    height->_context = context;
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.392156863 alpha:1.0];
    fillColor = v14->_fillColor;
    v14->_fillColor = v15;

    objc_storeStrong(&v14->_settings, settings);
    v17 = +[MRUWaveformData zero];
    waveformData = v14->_waveformData;
    v14->_waveformData = v17;

    v14->_barVisualStyle = 2;
    layer = [(MRUWaveformView *)v14 layer];
    [layer setMasksToBounds:1];

    v20 = objc_alloc(MEMORY[0x1E6979378]);
    v21 = [v20 initWithType:*MEMORY[0x1E6979890]];
    v22 = MEMORY[0x1E696AD98];
    [(MRUWaveformSettings *)v14->_settings artworkSaturation];
    v23 = [v22 numberWithFloat:?];
    [v21 setValue:v23 forKeyPath:*MEMORY[0x1E6979990]];

    v24 = objc_alloc(MEMORY[0x1E6979378]);
    v25 = [v24 initWithType:*MEMORY[0x1E6979928]];
    v26 = MEMORY[0x1E696AD98];
    [(MRUWaveformSettings *)v14->_settings artworkBlur];
    v27 = [v26 numberWithFloat:?];
    [v25 setValue:v27 forKeyPath:*MEMORY[0x1E6979BA8]];

    [v25 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
    v28 = objc_alloc_init(MEMORY[0x1E6979398]);
    artworkLightenLayer = v14->_artworkLightenLayer;
    v14->_artworkLightenLayer = v28;

    v30 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CALayer setBackgroundColor:](v14->_artworkLightenLayer, "setBackgroundColor:", [v30 CGColor]);

    [(CALayer *)v14->_artworkLightenLayer setOpacity:0.0];
    [(CALayer *)v14->_artworkLightenLayer setName:@"lighten"];
    v31 = objc_alloc_init(MEMORY[0x1E6979398]);
    artworkDimLayer = v14->_artworkDimLayer;
    v14->_artworkDimLayer = v31;

    v33 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    -[CALayer setBackgroundColor:](v14->_artworkDimLayer, "setBackgroundColor:", [v33 CGColor]);

    [(CALayer *)v14->_artworkDimLayer setOpacity:0.0];
    [(CALayer *)v14->_artworkDimLayer setName:@"dim"];
    v34 = objc_alloc_init(MEMORY[0x1E6979398]);
    artworkLayer = v14->_artworkLayer;
    v14->_artworkLayer = v34;

    [(CALayer *)v14->_artworkLayer addSublayer:v14->_artworkLightenLayer];
    [(CALayer *)v14->_artworkLayer addSublayer:v14->_artworkDimLayer];
    v63 = v21;
    v68[0] = v21;
    v68[1] = v25;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    [(CALayer *)v14->_artworkLayer setFilters:v36];

    [(CALayer *)v14->_artworkLayer setName:@"artwork"];
    v37 = objc_alloc_init(MEMORY[0x1E6979398]);
    fallbackLayer = v14->_fallbackLayer;
    v14->_fallbackLayer = v37;

    [(CALayer *)v14->_fallbackLayer setBackgroundColor:[(UIColor *)v14->_fillColor CGColor]];
    [(CALayer *)v14->_fallbackLayer setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(CALayer *)v14->_fallbackLayer setName:@"fallback"];
    v39 = objc_alloc_init(MEMORY[0x1E6979398]);
    contentLayer = v14->_contentLayer;
    v14->_contentLayer = v39;

    [(CALayer *)v14->_contentLayer setShouldRasterize:1];
    [(CALayer *)v14->_contentLayer setRasterizationScale:1.0];
    [(CALayer *)v14->_contentLayer addSublayer:v14->_artworkLayer];
    [(CALayer *)v14->_contentLayer addSublayer:v14->_fallbackLayer];
    v41 = objc_alloc_init(MEMORY[0x1E69DD250]);
    barsContainerView = v14->_barsContainerView;
    v14->_barsContainerView = v41;

    v43 = objc_alloc_init(MEMORY[0x1E69DD250]);
    barsView = v14->_barsView;
    v14->_barsView = v43;

    v64 = settingsCopy;
    stops = [settingsCopy stops];
    v46 = [stops count] - 1;

    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v46];
    if (v46 >= 1)
    {
      v48 = *MEMORY[0x1E695F058];
      v49 = *(MEMORY[0x1E695F058] + 8);
      v50 = *(MEMORY[0x1E695F058] + 16);
      v51 = *(MEMORY[0x1E695F058] + 24);
      v52 = *MEMORY[0x1E69796E8];
      do
      {
        v53 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v48, v49, v50, v51}];
        layer2 = [v53 layer];
        [layer2 setCornerCurve:v52];

        layer3 = [v53 layer];
        [layer3 setAllowsEdgeAntialiasing:1];

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v53 setBackgroundColor:whiteColor];

        [v47 addObject:v53];
        [(UIView *)v14->_barsView addSubview:v53];

        --v46;
      }

      while (v46);
    }

    objc_storeStrong(&v14->_bars, v47);
    layer4 = [(UIView *)v14->_barsContainerView layer];
    [layer4 addSublayer:v14->_contentLayer];

    [(UIView *)v14->_barsContainerView addSubview:v14->_barsView];
    [(MRUWaveformView *)v14 addSubview:v14->_barsContainerView];
    [(MRUWaveformView *)v14 applyContext:v14->_context];
    v67 = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    v59 = [(MRUWaveformView *)v14 registerForTraitChanges:v58 withAction:sel_updateVisualStyling];

    v66 = objc_opt_class();
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    v61 = [(MRUWaveformView *)v14 registerForTraitChanges:v60 withAction:sel_updateDimmed];

    settingsCopy = v64;
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUWaveformView;
  [(MRUWaveformView *)&v3 layoutSubviews];
  [(MRUWaveformView *)self bounds];
  [(UIView *)self->_barsContainerView setFrame:?];
  [(MRUWaveformView *)self bounds];
  [(UIView *)self->_barsView setFrame:?];
  [(MRUWaveformView *)self updateBars];
  [(MRUWaveformView *)self bounds];
  v5 = CGRectInset(v4, -1.0, -1.0);
  [(CALayer *)self->_artworkLayer setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  [(CALayer *)self->_artworkLayer frame];
  [(CALayer *)self->_artworkLightenLayer setFrame:?];
  [(CALayer *)self->_artworkLayer frame];
  [(CALayer *)self->_artworkDimLayer setFrame:?];
  [(CALayer *)self->_artworkLayer frame];
  [(CALayer *)self->_fallbackLayer setFrame:?];
}

- (MRUWaveformView)initWithFrame:(CGRect)frame context:(unint64_t)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = +[MRUWaveformSettings currentSettings];
  height = [(MRUWaveformView *)self initWithFrame:context context:v10 settings:x, y, width, height];

  return height;
}

- (void)setStylingProvider:(id)provider
{
  objc_storeStrong(&self->_stylingProvider, provider);

  [(MRUWaveformView *)self updateVisualStyling];
}

- (void)setArtworkImage:(id)image
{
  imageCopy = image;
  if (self->_artworkImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_artworkImage, image);
    [(MRUWaveformView *)self updateLayers];
    imageCopy = v6;
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, color);
    [(CALayer *)self->_fallbackLayer setBackgroundColor:[(UIColor *)self->_fillColor CGColor]];
  }
}

- (void)setBarVisualStyle:(int64_t)style
{
  if (self->_barVisualStyle != style)
  {
    self->_barVisualStyle = style;
    [(MRUWaveformView *)self updateVisualStyling];
  }
}

- (void)updateLayers
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.5];
  artworkImage = self->_artworkImage;
  if (artworkImage)
  {
    *&v3 = 0.0;
  }

  else
  {
    *&v3 = 1.0;
  }

  if (artworkImage)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(CALayer *)self->_fallbackLayer setOpacity:v3];
  *&v6 = v5;
  [(CALayer *)self->_artworkLayer setOpacity:v6];
  [(NSTimer *)self->_transitionTimer invalidate];
  transitionTimer = self->_transitionTimer;
  self->_transitionTimer = 0;

  if (artworkImage)
  {
    [(CALayer *)self->_artworkLayer setContents:[(UIImage *)self->_artworkImage CGImage]];
    [(MRUWaveformView *)self updateArtworkFilters];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__MRUWaveformView_updateLayers__block_invoke;
    v10[3] = &unk_1E7663F10;
    v10[4] = self;
    v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v10 block:0.5];
    v9 = self->_transitionTimer;
    self->_transitionTimer = v8;
  }

  [MEMORY[0x1E6979518] commit];
}

void __31__MRUWaveformView_updateLayers__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) setContents:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 528);
  *(v2 + 528) = 0;
}

- (void)updateArtworkFilters
{
  [(CALayer *)self->_artworkLightenLayer setOpacity:0.0];
  [(CALayer *)self->_artworkDimLayer setOpacity:0.0];
  luminanceForImage(self->_artworkImage);
  v4 = v3;
  [(MRUWaveformSettings *)self->_settings artworkSaturation];
  v6 = v5;
  [(MRUWaveformSettings *)self->_settings minArtworkLuminance];
  settings = self->_settings;
  if (v4 >= v7)
  {
    [(MRUWaveformSettings *)settings maxArtworkLuminance];
    if (v4 > v12)
    {
      [(MRUWaveformSettings *)self->_settings maxArtworkLuminance];
      v14 = v4 - v13;
      *&v14 = v14;
      [(CALayer *)self->_artworkDimLayer setOpacity:v14];
    }
  }

  else
  {
    [(MRUWaveformSettings *)settings minArtworkLuminance];
    v10 = v9;
    v11 = v10 - v4;
    *&v10 = v11;
    [(CALayer *)self->_artworkLightenLayer setOpacity:v10];
    v6 = v6 + v11 * 4.0;
  }

  artworkLayer = self->_artworkLayer;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [(CALayer *)artworkLayer setValue:v16 forKeyPath:@"filters.colorSaturate.inputAmount"];
}

- (void)applyContext:(unint64_t)context
{
  v24 = *MEMORY[0x1E69E9840];
  switch(context)
  {
    case 2uLL:
      v15 = *MEMORY[0x1E69798E0];
      layer = [(UIView *)self->_barsView layer];
      [layer setCompositingFilter:v15];

      [(MRUWaveformSettings *)self->_settings opacity];
      [(UIView *)self->_barsContainerView setAlpha:v17];
      LODWORD(v18) = 1.0;
      [(CALayer *)self->_contentLayer setOpacity:v18];

      [(MRUWaveformView *)self updateLayers];
      break;
    case 1uLL:
      [(UIView *)self->_barsContainerView setAlpha:1.0];
      contentLayer = self->_contentLayer;

      [(CALayer *)contentLayer setOpacity:0.0];
      break;
    case 0uLL:
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)self->_barsView setBackgroundColor:blackColor];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = self->_bars;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        v9 = *MEMORY[0x1E69798E8];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            layer2 = [*(*(&v19 + 1) + 8 * i) layer];
            [layer2 setCompositingFilter:v9];
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      [(MRUWaveformSettings *)self->_settings opacity];
      [(UIView *)self->_barsContainerView setAlpha:v12];
      LODWORD(v13) = 1.0;
      [(CALayer *)self->_contentLayer setOpacity:v13];
      [(MRUWaveformView *)self updateLayers];
      break;
  }
}

- (void)setWaveformData:(id)data
{
  objc_storeStrong(&self->_waveformData, data);

  [(MRUWaveformView *)self updateBars];
}

- (void)updateBars
{
  [(MRUWaveformView *)self bounds];
  v4 = v3;
  v5 = [(NSArray *)self->_bars count];
  if ([(NSArray *)self->_bars count])
  {
    v6 = 0;
    v7 = v4 / v5;
    v8 = (v7 * 0.5);
    do
    {
      v9 = [(NSArray *)self->_bars objectAtIndexedSubscript:v6];
      layer = [v9 layer];
      [layer removeAllAnimations];

      amplitudes = [(MRUWaveformData *)self->_waveformData amplitudes];
      v12 = [amplitudes objectAtIndexedSubscript:v6];
      [v12 floatValue];
      v14 = v13;

      [(MRUWaveformSettings *)self->_settings xScaleMultiplier];
      v16 = v8 + v15 * v14;
      [(MRUWaveformView *)self bounds];
      if (v14 <= 1.0)
      {
        v18 = v14;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = v18 * v17;
      if (v19 <= v8)
      {
        v20 = (v7 * 0.5);
      }

      else
      {
        v20 = v19;
      }

      [v9 setBounds:{0.0, 0.0, v16, v20}];
      [(MRUWaveformView *)self bounds];
      [v9 setCenter:{(((v7 - (v7 * 0.5)) * 0.5) + (((v7 * 0.5) * 0.5) + (v6 * v7))), CGRectGetMidY(v21)}];
      [v9 _setCornerRadius:v16 * 0.5];

      ++v6;
    }

    while ([(NSArray *)self->_bars count]> v6);
  }
}

- (void)updateVisualStyling
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_bars;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        stylingProvider = self->_stylingProvider;
        barVisualStyle = self->_barVisualStyle;
        traitCollection = [(MRUWaveformView *)self traitCollection];
        [(MRUVisualStylingProvider *)stylingProvider applyStyle:barVisualStyle toView:v7 traitCollection:traitCollection];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

@end