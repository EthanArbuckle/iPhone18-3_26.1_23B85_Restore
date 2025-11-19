@interface MRUTransportButton
- (MRUTransportButton)initWithFrame:(CGRect)a3;
- (id)pointerStyleWithProposedEffect:(id)a3 proposedShape:(id)a4;
- (int64_t)iconStyle;
- (void)addSymbolEffectIfNeeded;
- (void)didSelect:(id)a3;
- (void)layoutSubviews;
- (void)resetImageViewScale;
- (void)scaleDownImageView;
- (void)schedulePendingTraitCollectionUpdates;
- (void)setAsset:(id)a3 animated:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setImage:(id)a3 forState:(unint64_t)a4 animated:(BOOL)a5;
- (void)setPackageGlyphState:(id)a3;
- (void)setPackageState:(unint64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTransportControlItem:(id)a3;
- (void)updateBackgroundView;
- (void)updateContentView;
- (void)updateHighlighted;
- (void)updateVisualStyling;
@end

@implementation MRUTransportButton

- (MRUTransportButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MRUTransportButton;
  v7 = [(MPButton *)&v18 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MRUTransportButton *)v7 setCursorScale:1.0];
    v9 = [(MRUTransportButton *)v8 imageView];
    [v9 setContentMode:4];

    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    backgroundView = v8->_backgroundView;
    v8->_backgroundView = v10;

    [(UIView *)v8->_backgroundView setUserInteractionEnabled:0];
    v12 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(UIView *)v8->_backgroundView setBackgroundColor:v12];

    [(MRUTransportButton *)v8 insertSubview:v8->_backgroundView atIndex:0];
    v13 = objc_alloc_init(MRUCAPackageView);
    packageView = v8->_packageView;
    v8->_packageView = v13;

    [(MRUTransportButton *)v8 addSubview:v8->_packageView];
    [(MRUTransportButton *)v8 setAdjustsImageWhenHighlighted:0];
    v8->_showHighlightCircle = 1;
    v8->_scaleOnHighlight = 1;
    v8->_isRunningSymbolEffect = 0;
    [(MRUTransportButton *)v8 setPointerInteractionEnabled:1];
    [(MRUTransportButton *)v8 setPointerStyleProvider:&__block_literal_global_7];
    [(MRUTransportButton *)v8 updateBackgroundView];
    [(MRUTransportButton *)v8 addTarget:v8 action:sel_didSelect_ forControlEvents:64];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = [(MRUTransportButton *)v8 registerForTraitChanges:v15 withAction:sel_schedulePendingTraitCollectionUpdates];
  }

  return v8;
}

id __36__MRUTransportButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v2];
  v4 = [v2 isSelected];
  v5 = 0x1E69DCDB8;
  if (!v4)
  {
    v5 = 0x1E69DCDA0;
  }

  v6 = [*v5 effectWithPreview:v3];
  v7 = MEMORY[0x1E69DCDC8];
  v8 = MEMORY[0x1E69DC728];
  [v2 bounds];
  v9 = [v8 bezierPathWithOvalInRect:?];
  v10 = [v7 shapeWithPath:v9];

  v11 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v10];

  return v11;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MRUTransportButton;
  [(MPButton *)&v10 layoutSubviews];
  [(MRUTransportButton *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetHeight(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetWidth(v12);
  UIRectGetCenter();
  [(UIView *)self->_backgroundView setCenter:?];
  [(UIView *)self->_backgroundView setBounds:0.0, 0.0, v8, v7];
  [(MRUTransportButton *)self sendSubviewToBack:self->_backgroundView];
  UIRectGetCenter();
  [(MRUCAPackageView *)self->_packageView setCenter:?];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  [(UIView *)self->_backgroundView _setContinuousCornerRadius:v9 * 0.5];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUTransportButton *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRUTransportButton;
  [(MRUTransportButton *)&v7 setHighlighted:?];
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__MRUTransportButton_setHighlighted___block_invoke;
    v6[3] = &unk_1E7663898;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__MRUTransportButton_setHighlighted___block_invoke_2;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:2 delay:v5 options:0 mass:0.3175 stiffness:0.0 damping:1.0 initialVelocity:845.74 animations:58.1632 completion:0.0];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MRUTransportButton;
  [(MRUTransportButton *)&v6 setSelected:?];
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__MRUTransportButton_setSelected___block_invoke;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v5 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    [(MRUTransportButton *)self updateBackgroundView];
  }

  [(MRUTransportButton *)self updateVisualStyling];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUTransportButton;
  [(MRUTransportButton *)&v4 setEnabled:a3];
  [(MRUTransportButton *)self updateVisualStyling];
}

- (void)setPackageState:(unint64_t)a3
{
  self->_packageState = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"State %ld", a3 + 1];
  [(MRUTransportButton *)self setPackageGlyphState:v4];
}

- (void)setTransportControlItem:(id)a3
{
  objc_storeStrong(&self->_transportControlItem, a3);
  v5 = a3;
  v6 = [v5 asset];
  [(MRUTransportButton *)self setAsset:v6];

  v7 = [v5 isEnabled];

  [(MRUTransportButton *)self setEnabled:v7];
}

- (void)setAsset:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 packageAsset];

  if (v7)
  {
    [(MRUTransportButton *)self setImage:0 forState:0 animated:v4];
    v8 = [(MRUTransportButton *)self packageView];
    v9 = [v6 packageAsset];
    [v8 setAsset:v9];

    v11 = [v6 accessibilityIdentifier];

    v10 = [(MRUTransportButton *)self packageView];
    [v10 setAccessibilityIdentifier:v11];
  }

  else
  {
    [(MRUTransportButton *)self clearPackage];
    v11 = [v6 image];

    [(MRUTransportButton *)self setImage:v11 forState:0 animated:v4];
  }
}

- (void)setImage:(id)a3 forState:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(MRUTransportButton *)self currentImage];
    v10 = v9;
    if (v9 == v8 || [v9 isEqual:v8])
    {
    }

    else
    {
      v11 = [(MRUTransportButton *)self currentImage];

      if (v11)
      {
        v12 = [(MRUTransportButton *)self imageView];
        [v12 _removeAllAnimations:1];
        [(MRUTransportButton *)self setPendingImage:v8];
        v13 = MEMORY[0x1E69DD250];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __49__MRUTransportButton_setImage_forState_animated___block_invoke;
        v20[3] = &unk_1E76639D0;
        v20[4] = self;
        v21 = v12;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__MRUTransportButton_setImage_forState_animated___block_invoke_2;
        v15[3] = &unk_1E76640A8;
        v15[4] = self;
        v18 = a4;
        v19 = 6;
        v16 = v8;
        v17 = v21;
        v14 = v21;
        [v13 _animateUsingSpringWithDuration:6 delay:v20 options:v15 mass:0.3175 stiffness:0.0 damping:1.0 initialVelocity:845.74 animations:58.1632 completion:0.0];

        goto LABEL_6;
      }
    }
  }

  [(MRUTransportButton *)self setImage:v8 forState:a4];
LABEL_6:
}

uint64_t __49__MRUTransportButton_setImage_forState_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) scaleDownImageView];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __49__MRUTransportButton_setImage_forState_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingImage];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setImage:*(a1 + 40) forState:*(a1 + 56)];
    [*(a1 + 32) layoutIfNeeded];
  }

  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MRUTransportButton_setImage_forState_animated___block_invoke_3;
  v6[3] = &unk_1E76639D0;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 _animateUsingSpringWithDuration:v5 delay:v6 options:0 mass:0.9975 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:30.0 completion:0.0];
}

uint64_t __49__MRUTransportButton_setImage_forState_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) resetImageViewScale];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  [(MRUTransportButton *)self setPendingImage:0];
  v7.receiver = self;
  v7.super_class = MRUTransportButton;
  [(MRUTransportButton *)&v7 setImage:v6 forState:a4];
}

- (void)setPackageGlyphState:(id)a3
{
  v4 = a3;
  v5 = [(MRUTransportButton *)self packageView];
  [v5 setGlyphState:v4];
}

- (void)addSymbolEffectIfNeeded
{
  if (![(MRUTransportButton *)self isRunningSymbolEffect])
  {
    v3 = [(MRUTransportButton *)self transportControlItem];
    v4 = [v3 asset];

    v5 = [v4 symbolEffect];
    v6 = [v4 symbolEffectOptions];
    if (v5)
    {
      [(MRUTransportButton *)self setIsRunningSymbolEffect:1];
      objc_initWeak(&location, self);
      v7 = [(MRUTransportButton *)self imageView];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45__MRUTransportButton_addSymbolEffectIfNeeded__block_invoke;
      v8[3] = &unk_1E76640D0;
      objc_copyWeak(&v9, &location);
      [v7 addSymbolEffect:v5 options:v6 animated:1 completion:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __45__MRUTransportButton_addSymbolEffectIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsRunningSymbolEffect:0];
}

- (void)didSelect:(id)a3
{
  v4 = a3;
  v8 = [(MRUTransportButton *)self transportControlItem];
  v5 = [v4 isHolding];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 mainAction];

    if (v6)
    {
      [(MRUTransportButton *)self setPackageState:([(MRUTransportButton *)self packageState]+ 1) & 3];
      [(MRUTransportButton *)self addSymbolEffectIfNeeded];
      v7 = [v8 mainAction];
      v7[2]();
    }
  }
}

- (id)pointerStyleWithProposedEffect:(id)a3 proposedShape:(id)a4
{
  v7 = a3;
  v8 = a4;
  pointerStyle = self->_pointerStyle;
  if (pointerStyle == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
    v13 = [MEMORY[0x1E69DCDA0] effectWithPreview:v12];
    v14 = MEMORY[0x1E69DCDC8];
    v15 = MEMORY[0x1E69DC728];
    [(MRUTransportButton *)self bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(MRUTransportButton *)self _continuousCornerRadius];
    v25 = [v15 bezierPathWithRoundedRect:v17 cornerRadius:{v19, v21, v23, v24}];
    v26 = [v14 shapeWithPath:v25];

    v4 = [MEMORY[0x1E69DCDD0] styleWithEffect:v13 shape:v26];
  }

  else
  {
    if (pointerStyle)
    {
      goto LABEL_6;
    }

    [(MRUTransportButton *)self bounds];
    CGRectGetWidth(v29);
    [(MRUTransportButton *)self bounds];
    CGRectGetHeight(v30);
    [(MRUTransportButton *)self bounds];
    UIRectCenteredRect();
    v10 = MEMORY[0x1E69DCDC8];
    v11 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
    v12 = [v10 shapeWithPath:v11];

    v4 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v12];
  }

LABEL_6:

  return v4;
}

- (void)schedulePendingTraitCollectionUpdates
{
  if (![(MRUTransportButton *)self hasPendingTraitCollectionUpdates])
  {
    [(MRUTransportButton *)self setHasPendingTraitCollectionUpdates:1];
    v3 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MRUTransportButton_schedulePendingTraitCollectionUpdates__block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __59__MRUTransportButton_schedulePendingTraitCollectionUpdates__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateVisualStyling];
  v2 = *(a1 + 32);

  return [v2 setHasPendingTraitCollectionUpdates:0];
}

- (void)updateVisualStyling
{
  v3 = [(MRUTransportButton *)self iconStyle];
  stylingProvider = self->_stylingProvider;
  v5 = [(MRUTransportButton *)self imageView];
  v6 = [(MRUTransportButton *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:v3 toView:v5 traitCollection:v6];

  v7 = self->_stylingProvider;
  v8 = [(MRUTransportButton *)self packageView];
  v9 = [(MRUTransportButton *)self traitCollection];
  [(MRUVisualStylingProvider *)v7 applyStyle:v3 toView:v8 traitCollection:v9];

  v10 = self->_stylingProvider;
  v13 = [(MRUTransportButton *)self traitCollection];
  v11 = [(MRUVisualStylingProvider *)v10 colorForStyle:0 traitCollection:v13];
  v12 = [(MRUTransportButton *)self backgroundView];
  [v12 setBackgroundColor:v11];
}

- (int64_t)iconStyle
{
  v3 = [(MRUTransportButton *)self traitCollection];
  v4 = [v3 mr_shouldDim];

  if (v4)
  {
    return 3;
  }

  if ([(MRUTransportButton *)self isEnabled])
  {
    return 0;
  }

  return 2;
}

- (void)updateBackgroundView
{
  [(UIView *)self->_backgroundView setHidden:[(MRUTransportButton *)self showHighlightCircle]^ 1];
  if ([(MRUTransportButton *)self isHighlighted]&& self->_scaleOnHighlight)
  {
    [(UIView *)self->_backgroundView setAlpha:0.1];
    CGAffineTransformMakeScale(&v12, 1.2, 1.2);
    backgroundView = self->_backgroundView;
    v9 = *&v12.a;
    v10 = *&v12.c;
    v4 = *&v12.tx;
  }

  else
  {
    v5 = [(MRUTransportButton *)self isSelected];
    v6 = self->_backgroundView;
    if (v5)
    {
      [(UIView *)v6 setAlpha:0.1];
      backgroundView = self->_backgroundView;
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      v9 = *MEMORY[0x1E695EFD0];
      v10 = v7;
      v4 = *(MEMORY[0x1E695EFD0] + 32);
    }

    else
    {
      [(UIView *)v6 setAlpha:0.0];
      CGAffineTransformMakeScale(&v8, 1.4, 1.4);
      backgroundView = self->_backgroundView;
      v9 = *&v8.a;
      v10 = *&v8.c;
      v4 = *&v8.tx;
    }
  }

  v11 = v4;
  [(UIView *)backgroundView setTransform:&v9];
}

- (void)updateContentView
{
  if (([(MRUTransportButton *)self isHighlighted]& 1) != 0)
  {
    if (self->_scaleOnHighlight)
    {
      [(MRUTransportButton *)self packageScale];
      v4 = 0.8 * v3;
      v5 = [(MRUTransportButton *)self packageView];
      [v5 setScale:v4];

      [(MRUTransportButton *)self scaleDownImageView];
    }
  }

  else if (self->_scaleOnHighlight)
  {
    [(MRUTransportButton *)self packageScale];
    v7 = v6;
    v8 = [(MRUTransportButton *)self packageView];
    [v8 setScale:v7];

    [(MRUTransportButton *)self resetImageViewScale];
  }
}

- (void)updateHighlighted
{
  [(MRUTransportButton *)self updateContentView];

  [(MRUTransportButton *)self updateBackgroundView];
}

- (void)scaleDownImageView
{
  v3 = [(MRUTransportButton *)self imageView];
  v4 = [v3 image];

  if (v4)
  {
    CGAffineTransformMakeScale(&v7, 0.8, 0.8);
    v5 = [(MRUTransportButton *)self imageView];
    v6 = v7;
    [v5 setTransform:&v6];
  }
}

- (void)resetImageViewScale
{
  v3 = [(MRUTransportButton *)self imageView];
  v4 = [v3 image];

  if (v4)
  {
    v5 = [(MRUTransportButton *)self imageView];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v6;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v5 setTransform:v7];
  }
}

@end