@interface MRUArtworkView
- (CGRect)artworkFrame;
- (CGRect)artworkFrameForSize:(CGSize)a3 availableBounds:(CGRect)a4;
- (CGSize)fittingSize;
- (CGSize)preferredContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (MRUArtworkView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)artworkLoadingDidTimeoutInController:(id)a3;
- (void)controller:(id)a3 didLoadArtworkImage:(id)a4;
- (void)controller:(id)a3 didStartLoadingImageForCatalog:(id)a4;
- (void)layoutSubviews;
- (void)setArtwork:(id)a3;
- (void)setArtworkFittingSize;
- (void)setArtworkImage:(id)a3;
- (void)setCatalog:(id)a3;
- (void)setContentScale:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setShowPlaceholder:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setStylingProvider:(id)a3;
- (void)setUseVisualEffectPlaceholder:(BOOL)a3;
- (void)updateArtworkFittingSize;
- (void)updatePlaceholderBackground;
- (void)updateStyle;
- (void)updateVisibility;
- (void)updateVisualStyling;
- (void)userInterfaceStyleChanged;
@end

@implementation MRUArtworkView

- (MRUArtworkView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MRUArtworkView;
  v7 = [(MRUArtworkView *)&v26 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;

    v31[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v11 = [(MRUArtworkView *)v7 registerForTraitChanges:v10 withAction:sel_userInterfaceStyleChanged];

    [(MRUArtworkView *)v7 updatePlaceholderBackground];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    placeholderImageView = v7->_placeholderImageView;
    v7->_placeholderImageView = v12;

    [(UIImageView *)v7->_placeholderImageView setUserInteractionEnabled:0];
    [(UIImageView *)v7->_placeholderImageView setContentMode:1];
    [(MRUArtworkView *)v7 addSubview:v7->_placeholderImageView];
    v14 = objc_alloc_init(MRUShadowView);
    artworkShadowView = v7->_artworkShadowView;
    v7->_artworkShadowView = v14;

    [(MRUArtworkView *)v7 addSubview:v7->_artworkShadowView];
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    artworkImageView = v7->_artworkImageView;
    v7->_artworkImageView = v16;

    [(UIImageView *)v7->_artworkImageView setUserInteractionEnabled:0];
    [(UIImageView *)v7->_artworkImageView setContentMode:2];
    [(UIImageView *)v7->_artworkImageView setClipsToBounds:1];
    [(MRUArtworkView *)v7 addSubview:v7->_artworkImageView];
    v18 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v7];
    pointerInteraction = v7->_pointerInteraction;
    v7->_pointerInteraction = v18;

    [(UIPointerInteraction *)v7->_pointerInteraction setEnabled:0];
    [(MRUArtworkView *)v7 addInteraction:v7->_pointerInteraction];
    v20 = +[MRUFeatureFlagProvider isArtworkControllerEnabled];
    v7->_isArtworkControllerEnabled = v20;
    if (v20)
    {
      v21 = MCLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        *buf = 138412546;
        v28 = v22;
        v29 = 2048;
        v30 = v7;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_INFO, "%@<%p> initializing MRUArtworkController", buf, 0x16u);
      }

      v23 = objc_alloc_init(MRUArtworkController);
      controller = v7->_controller;
      v7->_controller = v23;

      [(MRUArtworkController *)v7->_controller setDelegate:v7];
    }

    v7->_showPlaceholder = 1;
    v7->_adjustsImageWhenHighlighted = 1;
    v7->_contentScale = 1.0;
    v7->_refreshInterval = 0.25;
    [(MRUArtworkView *)v7 updateStyle];
    [(MRUArtworkView *)v7 updateVisibility];
    [(MRUArtworkView *)v7 setAccessibilityIdentifier:@"UIA.MediaControls.ArtworkView"];
  }

  return v7;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = MRUArtworkView;
  [(MRUArtworkView *)&v23 layoutSubviews];
  [(MRUArtworkView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_placeholderBackground setFrame:?];
  [(MRUArtworkView *)self artworkFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIImageView *)self->_artworkImageView setFrame:?];
  v19 = MRUArtworkShadowInset(self->_style);
  [(MRUShadowView *)self->_artworkShadowView setFrame:v12 + v22, v14 + v19, v16 - (v22 + v20), v18 - (v19 + v21)];
  [(UIImageView *)self->_placeholderImageView sizeThatFits:v8, v10];
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  CGRectGetWidth(v24);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  CGRectGetHeight(v25);
  UIRectCenteredRect();
  [(UIImageView *)self->_placeholderImageView setFrame:?];
  [(MRUArtworkView *)self updateArtworkFittingSize];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.width >= result.height)
  {
    result.width = result.height;
  }

  width = result.width;
  result.height = width;
  return result;
}

- (void)userInterfaceStyleChanged
{
  [(MRUArtworkView *)self updateVisualStyling];
  if (self->_style == 1)
  {

    [(MRUArtworkView *)self updateStyle];
  }
}

- (void)setArtwork:(id)a3
{
  objc_storeStrong(&self->_artwork, a3);
  v5 = a3;
  v6 = [v5 catalog];

  [(MRUArtworkView *)self setCatalog:v6];
}

- (void)setCatalog:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_catalog, a3);
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    isArtworkControllerEnabled = self->_isArtworkControllerEnabled;
    *buf = 138412802;
    v27 = v7;
    v28 = 2048;
    v29 = self;
    v30 = 1024;
    v31 = isArtworkControllerEnabled;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_INFO, "%@<%p> setCatalog isArtworkControllerEnabled:%{BOOL}u", buf, 0x1Cu);
  }

  if (self->_isArtworkControllerEnabled)
  {
    [(MRUArtworkView *)self updateArtworkFittingSize];
    [(MRUArtworkController *)self->_controller setCatalog:v5];
  }

  else
  {
    v9 = [(MRUArtworkView *)self imageLoader];
    v10 = v9 == 0;

    if (v10)
    {
      objc_initWeak(buf, self);
      v11 = [MRUImageLoader alloc];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __29__MRUArtworkView_setCatalog___block_invoke;
      v24[3] = &unk_1E7663958;
      objc_copyWeak(&v25, buf);
      v12 = [(MRUImageLoader *)v11 initWithDestination:self imageHandler:v24];
      [(MRUArtworkView *)self setImageLoader:v12];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    if (v5)
    {
      v13 = [(MRUArtworkView *)self imageLoader];
      v14 = [v13 wouldLoadNewImageForCatalog:v5];

      if (v14)
      {
        objc_initWeak(buf, self);
        v15 = MEMORY[0x1E69B14D8];
        [(MRUArtworkView *)self artworkLoadingTimeout];
        v17 = v16;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __29__MRUArtworkView_setCatalog___block_invoke_15;
        v21[3] = &unk_1E7663980;
        objc_copyWeak(&v23, buf);
        v22 = v5;
        v18 = [v15 timerWithInterval:0 repeats:v21 block:v17];
        artworkTimer = self->_artworkTimer;
        self->_artworkTimer = v18;

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }
    }

    [(MRUArtworkView *)self updateArtworkFittingSize];
    v20 = [(MRUArtworkView *)self imageLoader];
    [v20 updateCatalog:v5];
  }
}

void __29__MRUArtworkView_setCatalog___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412802;
        v11 = objc_opt_class();
        v12 = 2048;
        v13 = WeakRetained;
        v14 = 2114;
        v15 = v6;
        _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_ERROR, "%@<%p> Image load failed with error: %{public}@.", &v10, 0x20u);
      }
    }

    v9 = [WeakRetained artworkTimer];
    [v9 invalidate];

    [WeakRetained setArtworkImage:v5];
  }
}

void __29__MRUArtworkView_setCatalog___block_invoke_15(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MCLogCategoryImageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2048;
    v9 = WeakRetained;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_ERROR, "%@<%p> clearing old artwork while waiting for catalog=%p", &v6, 0x20u);
  }

  [WeakRetained setArtworkImage:0];
}

- (void)setArtworkImage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_artworkImage, a3);
  [(UIImageView *)self->_artworkImageView setImage:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 artworkView:self didChangeArtworkImage:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__MRUArtworkView_setArtworkImage___block_invoke;
  v12[3] = &unk_1E7663898;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v12 options:0 animations:0.2 completion:0.0];
  [(MRUArtworkView *)self setNeedsLayout];
}

uint64_t __34__MRUArtworkView_setArtworkImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateVisibility];
  v2 = *(a1 + 32);

  return [v2 updateStyle];
}

- (void)setPlaceholderImage:(id)a3
{
  objc_storeStrong(&self->_placeholderImage, a3);
  v5 = a3;
  [(UIImageView *)self->_placeholderImageView setImage:v5];

  [(MRUArtworkView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUArtworkView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(MRUArtworkView *)self updateStyle];
    [(MRUArtworkView *)self updateVisibility];

    [(MRUArtworkView *)self setNeedsLayout];
  }
}

- (void)setShowPlaceholder:(BOOL)a3
{
  if (self->_showPlaceholder != a3)
  {
    self->_showPlaceholder = a3;
    [(MRUArtworkView *)self updateVisibility];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = MRUArtworkView;
  [(MRUArtworkView *)&v14 setHighlighted:?];
  if ([(MRUArtworkView *)self adjustsImageWhenHighlighted])
  {
    if (self->_animation == 1)
    {
      if (v3)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __33__MRUArtworkView_setHighlighted___block_invoke;
        v13[3] = &unk_1E7663898;
        v13[4] = self;
        v5 = 3947.8;
        v6 = 87.964;
        v7 = 0.25;
        v8 = 1.0;
        v9 = v13;
      }

      else
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __33__MRUArtworkView_setHighlighted___block_invoke_2;
        v12[3] = &unk_1E7663898;
        v12[4] = self;
        v5 = 438.649;
        v6 = 16.75516;
        v7 = 0.25;
        v8 = 1.0;
        v9 = v12;
      }

      [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:4 delay:v9 options:0 mass:v7 stiffness:0.0 damping:v8 initialVelocity:v5 animations:v6 completion:0.0];
    }

    else if (v3)
    {
      v10 = [(MRUArtworkView *)self artworkImageView];
      [v10 setAlpha:0.2];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__MRUArtworkView_setHighlighted___block_invoke_3;
      v11[3] = &unk_1E7663898;
      v11[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v11 options:0 animations:0.25 completion:0.0];
    }
  }
}

uint64_t __33__MRUArtworkView_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkImageView];
  [v2 setAlpha:0.2];

  CGAffineTransformMakeScale(&v6, 0.78, 0.78);
  v3 = *(a1 + 32);
  v5 = v6;
  return [v3 setTransform:&v5];
}

uint64_t __33__MRUArtworkView_setHighlighted___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkImageView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v3 setTransform:v6];
}

void __33__MRUArtworkView_setHighlighted___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkImageView];
  [v1 setAlpha:1.0];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  [(MRUArtworkView *)self center];
  v14 = v13 != v11 || v12 != v9;
  if (v14)
  {
    [(MRUArtworkView *)self setCenter:v9, v11];
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v15 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v16 = CGRectGetHeight(v19);
  [(MRUArtworkView *)self bounds];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v15;
  v21.size.height = v16;
  if (CGRectEqualToRect(v20, v21))
  {
    if (!v14)
    {
      return;
    }
  }

  else
  {
    [(MRUArtworkView *)self setBounds:0.0, 0.0, v15, v16];
  }

  [(MRUArtworkView *)self setNeedsLayout];

  [(MRUArtworkView *)self layoutIfNeeded];
}

- (void)setUseVisualEffectPlaceholder:(BOOL)a3
{
  if (self->_useVisualEffectPlaceholder != a3)
  {
    self->_useVisualEffectPlaceholder = a3;
    [(MRUArtworkView *)self updatePlaceholderBackground];
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUArtworkView *)self updateStyle];
  }
}

- (CGRect)artworkFrame
{
  [(UIImage *)self->_artworkImage size];
  v4 = v3;
  v6 = v5;
  [(MRUArtworkView *)self bounds];

  [(MRUArtworkView *)self artworkFrameForSize:v4 availableBounds:v6, v7, v8, v9, v10];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x1E69DCDC0];
  [(UIImageView *)self->_artworkImageView frame:a3];

  return [v5 regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  v7 = MEMORY[0x1E69DCDC8];
  v8 = MEMORY[0x1E69DC728];
  [(UIImageView *)self->_artworkImageView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  style = self->_style;
  [(UIImage *)self->_artworkImage size];
  v20 = [v8 bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, MRUArtworkCornerRadius(style, v18, v19)}];
  v21 = [v7 shapeWithPath:v20];

  v22 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v21];

  return v22;
}

- (void)controller:(id)a3 didStartLoadingImageForCatalog:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_INFO, "%{public}@<%p> controller:didStartLoadingImageForCatalog:", &v9, 0x16u);
  }

  v7 = [(MRUArtwork *)self->_artwork catalog];
  v8 = [v7 isArtworkVisuallyIdenticalToCatalog:v5];

  if (v8)
  {
    [(MRUArtworkView *)self setArtworkImage:0];
  }
}

- (void)controller:(id)a3 didLoadArtworkImage:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_INFO, "%{public}@<%p> controller:didLoadArtworkImage:", &v7, 0x16u);
  }

  [(MRUArtworkView *)self setArtworkImage:v5];
}

- (void)artworkLoadingDidTimeoutInController:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_INFO, "%{public}@<%p> artworkLoadingDidTimeoutInController:", &v5, 0x16u);
  }

  [(MRUArtworkView *)self setArtworkImage:0];
}

- (void)updatePlaceholderBackground
{
  [(UIView *)self->_placeholderBackground removeFromSuperview];
  if ([(MRUArtworkView *)self useVisualEffectPlaceholder])
  {
    v3 = [MEMORY[0x1E69AE158] materialViewWithRecipe:1];
    placeholderBackground = self->_placeholderBackground;
    self->_placeholderBackground = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = self->_placeholderBackground;
    self->_placeholderBackground = v5;

    placeholderBackground = [MEMORY[0x1E69DC888] labelColor];
    v7 = [placeholderBackground colorWithAlphaComponent:0.1];
    [(UIView *)self->_placeholderBackground setBackgroundColor:v7];
  }

  [(UIView *)self->_placeholderBackground setUserInteractionEnabled:0];
  [(UIView *)self->_placeholderBackground setClipsToBounds:1];
  v8 = self->_placeholderBackground;

  [(MRUArtworkView *)self insertSubview:v8 atIndex:0];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  v5 = [(MRUArtworkView *)self traitCollection];
  v4 = [(MRUVisualStylingProvider *)stylingProvider colorForStyle:0 traitCollection:v5];
  [(UIImageView *)self->_placeholderImageView setTintColor:v4];
}

- (void)updateVisibility
{
  style = self->_style;
  if (style == 7 || style == 9)
  {
    v5 = 0.0;
    v6 = 1.0;
    if (self->_artworkImage)
    {
      v6 = 0.0;
    }

    [(UIView *)self->_placeholderBackground setAlpha:v6];
    placeholderImageView = self->_placeholderImageView;
    v8 = 0.0;
    goto LABEL_17;
  }

  if (style == 8)
  {
    v5 = 0.0;
    if (self->_artworkImage)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [(UIView *)self->_placeholderBackground setAlpha:v9];
    v8 = 0.0;
    if (self->_showPlaceholder && !self->_artworkImage)
    {
      v8 = 1.0;
    }

    placeholderImageView = self->_placeholderImageView;
LABEL_17:
    [(UIImageView *)placeholderImageView setAlpha:v8];
    goto LABEL_26;
  }

  v5 = 0.0;
  if (self->_artworkImage)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [(UIView *)self->_placeholderBackground setAlpha:v10];
  v11 = 0.0;
  if (self->_showPlaceholder && !self->_artworkImage)
  {
    v11 = 1.0;
  }

  [(UIImageView *)self->_placeholderImageView setAlpha:v11];
  if (self->_artworkImage)
  {
    v5 = 1.0;
  }

LABEL_26:
  artworkShadowView = self->_artworkShadowView;

  [(MRUShadowView *)artworkShadowView setAlpha:v5];
}

- (void)updateStyle
{
  style = self->_style;
  [(UIImage *)self->_artworkImage size];
  v6 = MRUArtworkCornerRadius(style, v4, v5) * self->_contentScale;
  [(UIView *)self->_placeholderBackground _setContinuousCornerRadius:v6];
  [(UIImageView *)self->_artworkImageView _setContinuousCornerRadius:v6];
  [(MRUShadowView *)self->_artworkShadowView _setContinuousCornerRadius:v6];
  [(MRUShadowView *)self->_artworkShadowView setOffset:MRUArtworkShadowOffset()];
  [(MRUShadowView *)self->_artworkShadowView setRadius:MRUArtworkShadowRadius(self->_style)];
  v7 = self->_style;
  v8 = [(MRUArtworkView *)self traitCollection];
  v9 = MRUArtworkShadowOpacity(v7, [v8 userInterfaceStyle]);
  *&v9 = v9;
  [(MRUShadowView *)self->_artworkShadowView setOpacity:v9];

  v10 = MRUArtworkShadowColor(self->_style);
  [(MRUShadowView *)self->_artworkShadowView setColor:v10];

  v11 = MRUArtworkShadowFilter(self->_style);
  [(MRUShadowView *)self->_artworkShadowView setCompositingFilter:v11];

  v12 = MRUArtworkPlaceholderSymbolConfiguration(self->_style);
  [(UIImageView *)self->_placeholderImageView setPreferredSymbolConfiguration:v12];
}

- (CGRect)artworkFrameForSize:(CGSize)a3 availableBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.height;
  v9 = a3.width;
  if (!MRUArtworkIsSquare(a3.width, a3.height))
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

- (void)updateArtworkFittingSize
{
  [(MRUArtworkView *)self bounds];
  v4 = v3;
  [(MRUArtworkView *)self bounds];
  if (v4 >= v5)
  {
    height = v5;
  }

  else
  {
    height = v4;
  }

  width = self->_preferredContentSize.width;
  if (width == *MEMORY[0x1E695F060] && self->_preferredContentSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    width = height;
  }

  else
  {
    height = self->_preferredContentSize.height;
  }

  if (self->_fittingSize.width != width || self->_fittingSize.height != height)
  {
    self->_fittingSize.width = width;
    self->_fittingSize.height = height;
    v9 = dispatch_time(0, (self->_refreshInterval * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__MRUArtworkView_updateArtworkFittingSize__block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }
}

- (void)setArtworkFittingSize
{
  if (self->_isArtworkControllerEnabled)
  {
    width = self->_fittingSize.width;
    height = self->_fittingSize.height;
    v8 = [(MRUArtworkView *)self controller];
    [v8 setPreferredContentSize:{width, height}];
  }

  else
  {
    v8 = [(MRUArtworkView *)self imageLoader];
    p_fittingSize = &self->_fittingSize;
    v6 = [(MRUArtworkView *)self traitCollection];
    [v6 displayScale];
    [v8 updateFittingSize:p_fittingSize->width scale:{p_fittingSize->height, v7}];
  }
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end