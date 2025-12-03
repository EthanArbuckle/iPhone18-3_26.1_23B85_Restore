@interface MRUFlippingArtworkView
- (BOOL)isSquareArtwork;
- (BOOL)shouldTransitionFromImage:(id)image toImage:(id)toImage;
- (CGRect)artworkFrame;
- (CGRect)artworkFrameForSize:(CGSize)size availableBounds:(CGRect)bounds;
- (MRUFlippingArtworkView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)shadowViewInsets;
- (void)controller:(id)controller didStartLoadingImageForCatalog:(id)catalog;
- (void)layoutSubviews;
- (void)setArtwork:(id)artwork;
- (void)setArtwork:(id)artwork transitionDirection:(int64_t)direction;
- (void)setArtworkImage:(id)image;
- (void)setArtworkImageWithThrottle:(id)throttle updatePlaceholder:(BOOL)placeholder;
- (void)setDimsWhenPaused:(BOOL)paused;
- (void)setItemIdentifier:(id)identifier;
- (void)setPlaceholderSymbolName:(id)name;
- (void)setPlaying:(BOOL)playing;
- (void)setStyle:(int64_t)style;
- (void)setStylingProvider:(id)provider;
- (void)updateOpacity;
- (void)updatePlaceholder;
- (void)updateStyle;
- (void)updateVisualStyling;
@end

@implementation MRUFlippingArtworkView

- (MRUFlippingArtworkView)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MRUFlippingArtworkView;
  v3 = [(MRUFlippingArtworkView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v3->_currentItemHasChangedSinceArtworkLastSet = 0;
    v3->_catalogHasChangedSinceArtworkImageLastSet = 0;
    v6 = objc_alloc_init(MRUShadowView);
    artworkShadowView = v3->_artworkShadowView;
    v3->_artworkShadowView = v6;

    [(MRUFlippingArtworkView *)v3 addSubview:v3->_artworkShadowView];
    v8 = objc_alloc_init(MRUFlippingArtworkLayer);
    artworkLayer = v3->_artworkLayer;
    v3->_artworkLayer = v8;

    [(MRUFlippingArtworkLayer *)v3->_artworkLayer setAnchorPoint:0.5, 0.5];
    traitCollection = [(MRUFlippingArtworkView *)v3 traitCollection];
    [traitCollection displayScale];
    [(MRUFlippingArtworkLayer *)v3->_artworkLayer setContentsScale:?];

    layer = [(MRUFlippingArtworkView *)v3 layer];
    [layer addSublayer:v3->_artworkLayer];

    v12 = objc_alloc_init(MRUArtworkController);
    controller = v3->_controller;
    v3->_controller = v12;

    [(MRUArtworkController *)v3->_controller setArtworkLoadingTimeout:3.0];
    [(MRUArtworkController *)v3->_controller setDelegate:v3];
    v3->_dimsWhenPaused = 0;
    [(MRUFlippingArtworkView *)v3 setArtworkImage:0];
    [(MRUFlippingArtworkView *)v3 updateStyle];
    [(MRUFlippingArtworkView *)v3 updateOpacity];
    [(MRUFlippingArtworkView *)v3 setPlaying:0];
    v18[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(MRUFlippingArtworkView *)v3 registerForTraitChanges:v14 withAction:sel_updateVisualStyling];
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MRUFlippingArtworkView;
  [(MRUFlippingArtworkView *)&v17 layoutSubviews];
  [(MRUFlippingArtworkView *)self artworkFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MRUFlippingArtworkLayer *)self->_artworkLayer setFrame:?];
  [(MRUFlippingArtworkView *)self bounds];
  [(MRUArtworkController *)self->_controller setPreferredContentSize:v11, v12];
  [(MRUFlippingArtworkView *)self shadowViewInsets];
  [(MRUShadowView *)self->_artworkShadowView setFrame:v4 + v16, v6 + v13, v8 - (v16 + v14), v10 - (v13 + v15)];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUFlippingArtworkView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_itemIdentifier != identifierCopy)
  {
    v7 = identifierCopy;
    if (([(NSString *)identifierCopy isEqual:?]& 1) == 0)
    {
      v5 = [(NSString *)v7 copy];
      itemIdentifier = self->_itemIdentifier;
      self->_itemIdentifier = v5;

      self->_currentItemHasChangedSinceArtworkLastSet = 1;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    v10[9] = v3;
    v10[10] = v4;
    playingCopy = playing;
    self->_playing = playing;
    artworkLayer = [(MRUFlippingArtworkView *)self artworkLayer];
    [artworkLayer setPlaying:playingCopy];

    [(MRUFlippingArtworkView *)self setNeedsLayout];
    if (self->_onScreen)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __37__MRUFlippingArtworkView_setPlaying___block_invoke;
      v10[3] = &unk_1E7663898;
      v10[4] = self;
      v8[0] = MRUFlippingArtworkSpringParameters;
      v8[1] = unk_1A2307898;
      v9 = 0;
      [MEMORY[0x1E69DD250] mru_animateWithSpringParameters:v8 options:4 animations:v10];
    }
  }
}

- (void)setDimsWhenPaused:(BOOL)paused
{
  if (self->_dimsWhenPaused != paused)
  {
    pausedCopy = paused;
    self->_dimsWhenPaused = paused;
    artworkLayer = [(MRUFlippingArtworkView *)self artworkLayer];
    [artworkLayer setDimsWhenPaused:pausedCopy];
  }
}

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
  objc_storeStrong(&self->_artwork, artwork);
  catalog = [(MRUArtworkController *)self->_controller catalog];
  catalog2 = [artworkCopy catalog];
  v7 = [catalog isArtworkVisuallyIdenticalToCatalog:catalog2];

  if ((v7 & 1) == 0)
  {
    self->_catalogHasChangedSinceArtworkImageLastSet = 1;
  }

  catalog3 = [artworkCopy catalog];
  [(MRUArtworkController *)self->_controller setCatalog:catalog3];

  catalog4 = [artworkCopy catalog];

  if (!catalog4)
  {
    [(MRUFlippingArtworkView *)self updatePlaceholder];
  }
}

- (void)setArtwork:(id)artwork transitionDirection:(int64_t)direction
{
  artworkCopy = artwork;
  [(MRUFlippingArtworkView *)self setPendingTransitionDirection:direction];
  [(MRUFlippingArtworkView *)self setArtwork:artworkCopy];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MRUFlippingArtworkView *)self updateStyle];

    [(MRUFlippingArtworkView *)self setNeedsLayout];
  }
}

- (void)setArtworkImageWithThrottle:(id)throttle updatePlaceholder:(BOOL)placeholder
{
  throttleCopy = throttle;
  [(MSVTimer *)self->_setArtworkThrottleTimer invalidate];
  v7 = MEMORY[0x1E69B14D8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MRUFlippingArtworkView_setArtworkImageWithThrottle_updatePlaceholder___block_invoke;
  v11[3] = &unk_1E7663DF8;
  v11[4] = self;
  v12 = throttleCopy;
  placeholderCopy = placeholder;
  v8 = throttleCopy;
  v9 = [v7 timerWithInterval:0 repeats:v11 block:0.1];
  setArtworkThrottleTimer = self->_setArtworkThrottleTimer;
  self->_setArtworkThrottleTimer = v9;
}

uint64_t __72__MRUFlippingArtworkView_setArtworkImageWithThrottle_updatePlaceholder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setArtworkImage:*(a1 + 40)];
  result = [*(a1 + 32) setSetArtworkThrottleTimer:0];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 updatePlaceholder];
  }

  return result;
}

- (void)setArtworkImage:(id)image
{
  v29 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v6 = imageCopy;
  artworkImage = self->_artworkImage;
  if (imageCopy && artworkImage == imageCopy)
  {
    goto LABEL_21;
  }

  if (![(MRUFlippingArtworkView *)self shouldTransitionFromImage:artworkImage toImage:imageCopy]|| ![(MRUFlippingArtworkView *)self isOnScreen])
  {
    self->_currentItemHasChangedSinceArtworkLastSet = 0;
    self->_catalogHasChangedSinceArtworkImageLastSet = 0;
    goto LABEL_10;
  }

  catalogHasChangedSinceArtworkImageLastSet = self->_catalogHasChangedSinceArtworkImageLastSet;
  self->_currentItemHasChangedSinceArtworkLastSet = 0;
  self->_catalogHasChangedSinceArtworkImageLastSet = 0;
  if (!catalogHasChangedSinceArtworkImageLastSet)
  {
LABEL_10:
    v12 = MCLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      selfCopy2 = self;
      v25 = 2048;
      v26 = v6;
      v27 = 1024;
      LODWORD(v28) = [(MRUFlippingArtworkView *)self isOnScreen];
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].View view<%p> will set image:<%p> to current layer onScreen:%{BOOL}u", buf, 0x1Cu);
    }

    artworkLayer = [(MRUFlippingArtworkView *)self artworkLayer];
    [artworkLayer setImageToCurrentLayer:-[UIImage CGImage](v6 animated:{"CGImage"), -[MRUFlippingArtworkView isOnScreen](self, "isOnScreen")}];
    goto LABEL_13;
  }

  v9 = MCLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = MRUFlippingArtworkTransitionDirectionDescription([(MRUFlippingArtworkView *)self pendingTransitionDirection]);
    *buf = 134218498;
    selfCopy2 = self;
    v25 = 2048;
    v26 = v6;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].View view<%p> will transition to image:<%p> direction:%@", buf, 0x20u);
  }

  artworkLayer = [(MRUFlippingArtworkView *)self artworkLayer];
  [artworkLayer transitionToImage:-[UIImage CGImage](v6 transitionDirection:{"CGImage"), -[MRUFlippingArtworkView pendingTransitionDirection](self, "pendingTransitionDirection")}];
LABEL_13:

  objc_storeStrong(&self->_artworkImage, image);
  [(MRUFlippingArtworkView *)self setNeedsLayout];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_observers;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * i) artworkView:self didChangeArtworkImage:{v6, v18}];
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [(MRUFlippingArtworkView *)self updateOpacity];
LABEL_21:
}

- (void)setPlaceholderSymbolName:(id)name
{
  objc_storeStrong(&self->_placeholderSymbolName, name);

  [(MRUFlippingArtworkView *)self updatePlaceholder];
}

- (void)updatePlaceholder
{
  if (self->_artworkImage || !self->_placeholderSymbolName)
  {
    [(MRUFlippingArtworkLayer *)self->_artworkLayer setPlaceholderImage:0];
  }

  else
  {
    v3 = MRUArtworkPlaceholderSymbolConfiguration(self->_style);
    v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:self->_placeholderSymbolName];
    v5 = [v4 imageWithSymbolConfiguration:v3];

    -[MRUFlippingArtworkLayer setPlaceholderImage:](self->_artworkLayer, "setPlaceholderImage:", [v5 CGImage]);
  }

  [(MRUFlippingArtworkView *)self updateOpacity];
}

- (BOOL)shouldTransitionFromImage:(id)image toImage:(id)toImage
{
  v7 = image != toImage && self->_currentItemHasChangedSinceArtworkLastSet;
  if ([(MRUFlippingArtworkLayer *)self->_artworkLayer placeholderImage])
  {
    currentItemHasChangedSinceArtworkLastSet = self->_currentItemHasChangedSinceArtworkLastSet;
  }

  else
  {
    currentItemHasChangedSinceArtworkLastSet = 0;
  }

  if (image)
  {
    v9 = 1;
  }

  else
  {
    v9 = toImage == 0;
  }

  v10 = v9;
  return (currentItemHasChangedSinceArtworkLastSet | v10 & v7) & 1;
}

- (void)controller:(id)controller didStartLoadingImageForCatalog:(id)catalog
{
  artwork = self->_artwork;
  catalogCopy = catalog;
  catalog = [(MRUArtwork *)artwork catalog];
  v8 = [catalog isArtworkVisuallyIdenticalToCatalog:catalogCopy];

  if (v8)
  {

    [(MRUFlippingArtworkView *)self setArtworkImageWithThrottle:0 updatePlaceholder:0];
  }
}

- (BOOL)isSquareArtwork
{
  [(UIImage *)self->_artworkImage size];

  return MRUArtworkIsSquare(v2, v3);
}

- (CGRect)artworkFrame
{
  [(UIImage *)self->_artworkImage size];
  v4 = v3;
  v6 = v5;
  [(MRUFlippingArtworkView *)self bounds];

  [(MRUFlippingArtworkView *)self artworkFrameForSize:v4 availableBounds:v6, v7, v8, v9, v10];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)artworkFrameForSize:(CGSize)size availableBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = size.height;
  v9 = size.width;
  if (!MRUArtworkIsSquare(size.width, size.height))
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectIsEmpty(v20) && v9 > 0.0 && v8 > 0.0)
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      CGRectGetWidth(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      CGRectGetHeight(v22);
      goto LABEL_8;
    }
  }

  if (!MRUArtworkIsSquare(width, height))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGRectGetHeight(v19);
LABEL_8:
    UIRectCenteredRect();
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)updateOpacity
{
  v3 = 1.0;
  if (!self->_artworkImage)
  {
    if ([(MRUFlippingArtworkLayer *)self->_artworkLayer placeholderImage])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.2;
    }
  }

  if ([(MRUFlippingArtworkView *)self isOnScreen])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __39__MRUFlippingArtworkView_updateOpacity__block_invoke;
    v4[3] = &unk_1E7663CE0;
    v4[4] = self;
    *&v4[5] = v3;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v4 options:0 animations:0.25 completion:0.0];
  }

  else
  {

    [(MRUFlippingArtworkView *)self setAlpha:v3];
  }
}

- (void)updateStyle
{
  [(MRUFlippingArtworkLayer *)self->_artworkLayer setArtworkStyle:self->_style];
  style = self->_style;
  [(UIImage *)self->_artworkImage size];
  v6 = MRUArtworkCornerRadius(style, v4, v5);
  [(MRUFlippingArtworkLayer *)self->_artworkLayer setArtworkCornerRadius:?];
  [(MRUShadowView *)self->_artworkShadowView _setContinuousCornerRadius:v6];
  [(MRUShadowView *)self->_artworkShadowView setOffset:MRUArtworkShadowOffset()];
  [(MRUShadowView *)self->_artworkShadowView setRadius:MRUArtworkShadowRadius(self->_style)];
  v7 = self->_style;
  traitCollection = [(MRUFlippingArtworkView *)self traitCollection];
  v9 = MRUArtworkShadowOpacity(v7, [traitCollection userInterfaceStyle]);
  *&v9 = v9;
  [(MRUShadowView *)self->_artworkShadowView setOpacity:v9];

  v10 = MRUArtworkShadowColor(self->_style);
  [(MRUShadowView *)self->_artworkShadowView setColor:v10];

  v11 = MRUArtworkShadowFilter(self->_style);
  [(MRUShadowView *)self->_artworkShadowView setCompositingFilter:v11];
}

- (void)updateVisualStyling
{
  primaryColor = [(MRUVisualStylingProvider *)self->_stylingProvider primaryColor];
  v3 = primaryColor;
  -[MRUFlippingArtworkLayer setPlaceholderImageTintColor:](self->_artworkLayer, "setPlaceholderImageTintColor:", [primaryColor CGColor]);
}

- (UIEdgeInsets)shadowViewInsets
{
  v3 = MRUArtworkShadowInset(self->_style);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  playing = self->_playing;
  [(MRUFlippingArtworkView *)self bounds];
  v13.n128_u64[0] = MRUFlippingArtworkInsets(playing, v11, v12);
  v14.n128_u64[0] = v18.n128_u64[0];
  v15.n128_u64[0] = v19.n128_u64[0];
  v16.n128_u64[0] = v20.n128_u64[0];
  v17.n128_f64[0] = v3;
  v18.n128_u64[0] = v5;
  v19.n128_u64[0] = v7;
  v20.n128_u64[0] = v9;

  MEMORY[0x1EEE4DCA0](15, v17, v18, v19, v20, v13, v14, v15, v16);
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

@end