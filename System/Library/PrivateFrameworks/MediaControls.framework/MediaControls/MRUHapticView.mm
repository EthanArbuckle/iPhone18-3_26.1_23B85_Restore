@interface MRUHapticView
- (MRUHapticView)initWithContext:(unint64_t)a3 frame:(CGRect)a4;
- (MRUHapticViewDelegate)delegate;
- (void)_hapticImageTap:(id)a3;
- (void)applyContext:(unint64_t)a3;
- (void)handleDarkenSystemColorsNotification:(id)a3;
- (void)initializeSubviews;
- (void)layoutSubviews;
- (void)setArtworkImage:(id)a3;
- (void)setHapticStatus:(unsigned int)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateArtworkFilters;
- (void)updateDimmed;
- (void)updateHapticSymbol;
- (void)updateLayers;
- (void)updateVisualStyling;
@end

@implementation MRUHapticView

- (void)updateDimmed
{
  v5 = [(MRUHapticView *)self traitCollection];
  if ([v5 mr_shouldDim])
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [(MRUHapticView *)self hapticImageView];
  [v4 setAlpha:v3];
}

- (MRUHapticView)initWithContext:(unint64_t)a3 frame:(CGRect)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MRUHapticView;
  v5 = [(MRUHapticView *)&v14 initWithFrame:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_context = a3;
    [(MRUHapticView *)v5 initializeSubviews];
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__hapticImageTap_];
    [(MRUHapticView *)v6 addGestureRecognizer:v7];
    [(MRUHapticView *)v6 setUserInteractionEnabled:1];
    v16[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v9 = [(MRUHapticView *)v6 registerForTraitChanges:v8 withAction:sel_updateVisualStyling];

    v15 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [(MRUHapticView *)v6 registerForTraitChanges:v10 withAction:sel_updateDimmed];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel_handleDarkenSystemColorsNotification_ name:*MEMORY[0x1E69DD8B8] object:0];
  }

  return v6;
}

- (void)handleDarkenSystemColorsNotification:(id)a3
{
  if (self->_hapticStatus == 2)
  {
    v5 = _AXDarkenSystemColors();
    v6 = 0.9;
    if (!v5)
    {
      v6 = 0.5;
    }

    hapticContainerView = self->_hapticContainerView;

    [(UIView *)hapticContainerView setAlpha:v6];
  }
}

- (void)initializeSubviews
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.392156863 alpha:1.0];
  fillColor = self->_fillColor;
  self->_fillColor = v3;

  v5 = [(MRUHapticView *)self layer];
  [v5 setMasksToBounds:1];

  v6 = objc_alloc(MEMORY[0x1E6979378]);
  v7 = [v6 initWithType:*MEMORY[0x1E6979890]];
  [v7 setValue:&unk_1F148B410 forKeyPath:*MEMORY[0x1E6979990]];
  v8 = objc_alloc(MEMORY[0x1E6979378]);
  v9 = [v8 initWithType:*MEMORY[0x1E6979928]];
  [v9 setValue:&unk_1F148B0E8 forKeyPath:*MEMORY[0x1E6979BA8]];
  [v9 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
  v10 = objc_alloc_init(MEMORY[0x1E6979398]);
  hapticLightenLayer = self->_hapticLightenLayer;
  self->_hapticLightenLayer = v10;

  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  -[CALayer setBackgroundColor:](self->_hapticLightenLayer, "setBackgroundColor:", [v12 CGColor]);

  [(CALayer *)self->_hapticLightenLayer setOpacity:0.0];
  [(CALayer *)self->_hapticLightenLayer setName:@"lighten"];
  v13 = objc_alloc_init(MEMORY[0x1E6979398]);
  hapticDimLayer = self->_hapticDimLayer;
  self->_hapticDimLayer = v13;

  v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  -[CALayer setBackgroundColor:](self->_hapticDimLayer, "setBackgroundColor:", [v15 CGColor]);

  [(CALayer *)self->_hapticDimLayer setOpacity:0.0];
  [(CALayer *)self->_hapticDimLayer setName:@"dim"];
  v16 = objc_alloc_init(MEMORY[0x1E6979398]);
  hapticLayer = self->_hapticLayer;
  self->_hapticLayer = v16;

  [(CALayer *)self->_hapticLayer addSublayer:self->_hapticLightenLayer];
  [(CALayer *)self->_hapticLayer addSublayer:self->_hapticDimLayer];
  v33[0] = v7;
  v33[1] = v9;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [(CALayer *)self->_hapticLayer setFilters:v18];

  [(CALayer *)self->_hapticLayer setName:@"artwork"];
  v19 = objc_alloc_init(MEMORY[0x1E6979398]);
  fallbackLayer = self->_fallbackLayer;
  self->_fallbackLayer = v19;

  [(CALayer *)self->_fallbackLayer setBackgroundColor:[(UIColor *)self->_fillColor CGColor]];
  [(CALayer *)self->_fallbackLayer setCompositingFilter:*MEMORY[0x1E6979CA8]];
  [(CALayer *)self->_fallbackLayer setName:@"fallback"];
  v21 = objc_alloc_init(MEMORY[0x1E6979398]);
  contentLayer = self->_contentLayer;
  self->_contentLayer = v21;

  [(CALayer *)self->_contentLayer setShouldRasterize:1];
  [(CALayer *)self->_contentLayer setRasterizationScale:1.0];
  [(CALayer *)self->_contentLayer addSublayer:self->_hapticLayer];
  [(CALayer *)self->_contentLayer addSublayer:self->_fallbackLayer];
  v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
  hapticContainerView = self->_hapticContainerView;
  self->_hapticContainerView = v23;

  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  hapticImageViewHolder = self->_hapticImageViewHolder;
  self->_hapticImageViewHolder = v25;

  v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_artworkImage];
  hapticImageView = self->_hapticImageView;
  self->_hapticImageView = v27;

  v29 = [MEMORY[0x1E69DC888] whiteColor];
  [(UIImageView *)self->_hapticImageView setTintColor:v29];

  v30 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_hapticImageView setBackgroundColor:v30];

  [(UIImageView *)self->_hapticImageView setContentMode:1];
  v31 = [(UIImageView *)self->_hapticImageView layer];
  [v31 setAllowsEdgeAntialiasing:1];

  [(UIView *)self->_hapticImageViewHolder addSubview:self->_hapticImageView];
  v32 = [(UIView *)self->_hapticContainerView layer];
  [v32 addSublayer:self->_contentLayer];

  [(UIView *)self->_hapticContainerView addSubview:self->_hapticImageViewHolder];
  [(MRUHapticView *)self addSubview:self->_hapticContainerView];
  [(MRUHapticView *)self applyContext:self->_context];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUHapticView;
  [(MRUHapticView *)&v3 layoutSubviews];
  [(MRUHapticView *)self bounds];
  [(UIImageView *)self->_hapticImageView setFrame:?];
  [(MRUHapticView *)self bounds];
  [(UIView *)self->_hapticImageViewHolder setFrame:?];
  [(MRUHapticView *)self bounds];
  [(UIView *)self->_hapticContainerView setFrame:?];
  [(MRUHapticView *)self bounds];
  v5 = CGRectInset(v4, -1.0, -1.0);
  [(CALayer *)self->_hapticLayer setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  [(CALayer *)self->_hapticLayer frame];
  [(CALayer *)self->_hapticLightenLayer setFrame:?];
  [(CALayer *)self->_hapticLayer frame];
  [(CALayer *)self->_hapticDimLayer setFrame:?];
  [(CALayer *)self->_hapticLayer frame];
  [(CALayer *)self->_fallbackLayer setFrame:?];
}

- (void)setStylingProvider:(id)a3
{
  objc_storeStrong(&self->_stylingProvider, a3);

  [(MRUHapticView *)self updateVisualStyling];
}

- (void)setArtworkImage:(id)a3
{
  objc_storeStrong(&self->_artworkImage, a3);

  [(MRUHapticView *)self updateLayers];
}

- (void)setHapticStatus:(unsigned int)a3
{
  if (self->_hapticStatus != a3)
  {
    self->_hapticStatus = a3;
    [(MRUHapticView *)self setUserInteractionEnabled:a3 != 2];
    [(MRUHapticView *)self updateHapticSymbol];

    [(MRUHapticView *)self updateVisualStyling];
  }
}

- (void)updateHapticSymbol
{
  hapticStatus = self->_hapticStatus;
  switch(hapticStatus)
  {
    case 2u:
      v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.haptics.and.exclamationmark.triangle"];
      v7 = _AXDarkenSystemColors();
      v6 = 0.9;
      if (!v7)
      {
        v6 = 0.5;
      }

      goto LABEL_9;
    case 1u:
      v4 = MEMORY[0x1E69DCAB8];
      v5 = @"apple.haptics.and.music.note.slash";
      goto LABEL_6;
    case 0u:
      v4 = MEMORY[0x1E69DCAB8];
      v5 = @"apple.haptics.and.music.note";
LABEL_6:
      v8 = [v4 _systemImageNamed:v5];
      v6 = 1.0;
LABEL_9:
      [(UIView *)self->_hapticContainerView setAlpha:v6];
      goto LABEL_11;
  }

  v8 = 0;
LABEL_11:
  [(UIImageView *)self->_hapticImageView setImage:v8];
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
  [(CALayer *)self->_hapticLayer setOpacity:v6];
  [(NSTimer *)self->_transitionTimer invalidate];
  transitionTimer = self->_transitionTimer;
  self->_transitionTimer = 0;

  if (artworkImage)
  {
    [(CALayer *)self->_hapticLayer setContents:[(UIImage *)self->_artworkImage CGImage]];
    [(MRUHapticView *)self updateArtworkFilters];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__MRUHapticView_updateLayers__block_invoke;
    v10[3] = &unk_1E7663F10;
    v10[4] = self;
    v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v10 block:0.5];
    v9 = self->_transitionTimer;
    self->_transitionTimer = v8;
  }

  [MEMORY[0x1E6979518] commit];
}

void __29__MRUHapticView_updateLayers__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setContents:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 520);
  *(v2 + 520) = 0;
}

- (void)updateArtworkFilters
{
  [(CALayer *)self->_hapticLightenLayer setOpacity:0.0];
  [(CALayer *)self->_hapticDimLayer setOpacity:0.0];
  luminanceForHapticImage(self->_artworkImage);
  if (v3 >= 0.4)
  {
    v5 = 1.25;
    if (v3 > 0.5)
    {
      v6 = v3 + -0.5;
      *&v6 = v6;
      [(CALayer *)self->_hapticDimLayer setOpacity:v6];
    }
  }

  else
  {
    v4 = 0.4 - v3;
    *&v3 = 0.4 - v3;
    [(CALayer *)self->_hapticLightenLayer setOpacity:v3];
    v5 = v4 * 4.0 + 1.25;
  }

  hapticLayer = self->_hapticLayer;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  [(CALayer *)hapticLayer setValue:v8 forKeyPath:@"filters.colorSaturate.inputAmount"];
}

- (void)applyContext:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = *MEMORY[0x1E69798E0];
    v6 = 464;
LABEL_9:
    v8 = [*(&self->super.super.super.isa + v6) layer];
    [v8 setCompositingFilter:v5];

    [(UIView *)self->_hapticContainerView setAlpha:1.0];
    LODWORD(v9) = 1.0;
    [(CALayer *)self->_contentLayer setOpacity:v9];

    [(MRUHapticView *)self updateLayers];
    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)self->_hapticImageViewHolder setBackgroundColor:v4];

    v5 = *MEMORY[0x1E69798E8];
    v6 = 456;
    goto LABEL_9;
  }

  [(UIView *)self->_hapticContainerView setAlpha:1.0];
  contentLayer = self->_contentLayer;

  [(CALayer *)contentLayer setOpacity:0.0];
}

- (void)_hapticImageTap:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapHapticView:self];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  hapticImageView = self->_hapticImageView;
  v4 = [(MRUHapticView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:2 toView:hapticImageView traitCollection:v4];
}

- (MRUHapticViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end