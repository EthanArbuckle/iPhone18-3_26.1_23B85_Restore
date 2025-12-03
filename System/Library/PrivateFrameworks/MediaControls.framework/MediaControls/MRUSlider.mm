@interface MRUSlider
- (BOOL)fluidTrackHidden;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (MRUSlider)initWithStyle:(unint64_t)style;
- (MRUSliderDelegate)delegate;
- (UIEdgeInsets)hitRectInset;
- (UIView)maximumValueView;
- (UIView)minimumValueView;
- (double)expansionFactor;
- (double)stretchLimit;
- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)_sliderFluidInteractionWillRubberband:(id)rubberband insets:(UIEdgeInsets)insets;
- (void)setEqualizing:(BOOL)equalizing;
- (void)setExpansionFactor:(double)factor;
- (void)setFluidTrackHidden:(BOOL)hidden;
- (void)setMaximumValueView:(id)view;
- (void)setMinimumTrackVisible:(BOOL)visible;
- (void)setMinimumValueView:(id)view;
- (void)setStretchLimit:(double)limit;
- (void)setStylingProvider:(id)provider;
- (void)updateVisualStyling;
@end

@implementation MRUSlider

- (MRUSlider)initWithStyle:(unint64_t)style
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MRUSlider;
  v4 = [(MRUSlider *)&v18 init];
  if (v4)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = weakObjectsHashTable;

    [(MRUSlider *)v4 setMinimumValue:0.0];
    LODWORD(v7) = 1.0;
    [(MRUSlider *)v4 setMaximumValue:v7];
    v4->_minimumTrackVisible = 1;
    v8 = +[MRUFeatureFlagProvider isNewVolumeControlsMediaControlsEnabled];
    if (style)
    {
      v9 = 111;
    }

    else
    {
      v9 = 110;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 110;
    }

    [(MRUSlider *)v4 _setSliderStyle:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69DD718]);
    configuration = v4->_configuration;
    v4->_configuration = v11;

    [(_UISliderFluidConfiguration *)v4->_configuration setDelegate:v4];
    [(MRUSlider *)v4 _setSliderConfiguration:v4->_configuration];
  }

  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v14 = [(MRUSlider *)v4 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_colorAffectingTraitsChanged];

  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [(MRUSlider *)v4 registerForTraitChanges:v15 withAction:sel_updateVisualStyling];

  return v4;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  v8.receiver = self;
  v8.super_class = MRUSlider;
  [(MRUSlider *)&v8 trackRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  v6 = 0.0;
  v7 = height;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUSlider *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (double)expansionFactor
{
  configuration = [(MRUSlider *)self configuration];
  [configuration expansionFactor];
  v4 = v3;

  return v4;
}

- (void)setExpansionFactor:(double)factor
{
  configuration = [(MRUSlider *)self configuration];
  [configuration setExpansionFactor:factor];
  [(MRUSlider *)self _setSliderConfiguration:configuration];
}

- (double)stretchLimit
{
  configuration = [(MRUSlider *)self configuration];
  [configuration stretchLimit];
  v4 = v3;

  return v4;
}

- (void)setStretchLimit:(double)limit
{
  configuration = [(MRUSlider *)self configuration];
  [configuration setStretchLimit:limit];
  [(MRUSlider *)self _setSliderConfiguration:configuration];
}

- (void)setMinimumTrackVisible:(BOOL)visible
{
  if (self->_minimumTrackVisible != visible)
  {
    self->_minimumTrackVisible = visible;
    [(MRUSlider *)self _setMinimumTrackVisible:0.0 withDuration:?];
  }
}

- (void)setEqualizing:(BOOL)equalizing
{
  if (self->_equalizing != equalizing)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_equalizing = equalizing;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__MRUSlider_setEqualizing___block_invoke;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
  }
}

- (UIView)minimumValueView
{
  configuration = [(MRUSlider *)self configuration];
  minimumValueView = [configuration minimumValueView];

  return minimumValueView;
}

- (void)setMinimumValueView:(id)view
{
  viewCopy = view;
  configuration = [(MRUSlider *)self configuration];
  [configuration setMinimumValueView:viewCopy];

  [(MRUSlider *)self _setSliderConfiguration:configuration];
  [(MRUSlider *)self updateVisualStyling];
}

- (UIView)maximumValueView
{
  configuration = [(MRUSlider *)self configuration];
  maximumValueView = [configuration maximumValueView];

  return maximumValueView;
}

- (void)setMaximumValueView:(id)view
{
  viewCopy = view;
  configuration = [(MRUSlider *)self configuration];
  [configuration setMaximumValueView:viewCopy];

  [(MRUSlider *)self _setSliderConfiguration:configuration];
  [(MRUSlider *)self updateVisualStyling];
}

- (BOOL)fluidTrackHidden
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(MRUSlider *)self _fluidTrackHidden];
}

- (void)setFluidTrackHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (objc_opt_respondsToSelector())
  {
    [(MRUSlider *)self _setFluidTrackHidden:hiddenCopy];

    [(MRUSlider *)self updateVisualStyling];
  }
}

- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v19 = *MEMORY[0x1E69E9840];
  [(MRUSlider *)self sendActionsForControlEvents:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 sliderInteractionWillBegin:self withLocation:{x, y}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MRUSlider__sliderFluidInteractionWillBegin_withLocation___block_invoke;
  v13[3] = &unk_1E7663898;
  v13[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:2 delay:v13 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
}

uint64_t __59__MRUSlider__sliderFluidInteractionWillBegin_withLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animations];

  if (v2)
  {
    v3 = [*(a1 + 32) animations];
    v3[2](v3, 1);
  }

  v4 = *(a1 + 32);

  return [v4 updateVisualStyling];
}

- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 sliderInteractionWillContinue:self withLocation:{x, y, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_sliderFluidInteractionWillRubberband:(id)rubberband insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_observers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 sliderInteractionWillExtend:self insets:{top, left, bottom, right, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  v16 = *MEMORY[0x1E69E9840];
  [(MRUSlider *)self sendActionsForControlEvents:64];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 sliderInteractionWillEnd:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MRUSlider__sliderFluidInteractionWillEnd___block_invoke;
  v10[3] = &unk_1E7663898;
  v10[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:2 delay:v10 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
}

uint64_t __44__MRUSlider__sliderFluidInteractionWillEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animations];

  if (v2)
  {
    v3 = [*(a1 + 32) animations];
    v3[2](v3, 0);
  }

  v4 = *(a1 + 32);

  return [v4 updateVisualStyling];
}

- (CGRect)hitRect
{
  v13.receiver = self;
  v13.super_class = MRUSlider;
  [(MRUSlider *)&v13 hitRect];
  top = self->_hitRectInset.top;
  left = self->_hitRectInset.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_hitRectInset.right);
  v12 = v11 - (top + self->_hitRectInset.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MRUSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)updateVisualStyling
{
  [(MRUVisualStylingProvider *)self->_stylingProvider applyBlendModeToView:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 minimumTrackStyleForSlider:self];
  }

  else if (([(MRUSlider *)self isTracking]& 1) != 0 || [(MRUSlider *)self isEqualizing])
  {
    v8 = 0;
  }

  else
  {
    traitCollection = [(MRUSlider *)self traitCollection];
    mr_shouldDim = [traitCollection mr_shouldDim];

    if (mr_shouldDim)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  if (v11 && (v12 = v11, v13 = objc_loadWeakRetained(&self->_delegate), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 maximumTrackStyleForSlider:self];
  }

  else
  {
    v16 = 3;
  }

  traitCollection2 = [(MRUSlider *)self traitCollection];
  v30 = [traitCollection2 _traitCollectionByRemovingTrait:objc_opt_class()];

  v18 = [(MRUVisualStylingProvider *)self->_stylingProvider blendColorForStyle:v8];
  v19 = [v18 resolvedColorWithTraitCollection:v30];

  v20 = [(MRUVisualStylingProvider *)self->_stylingProvider blendColorForStyle:v16];
  v21 = [v20 resolvedColorWithTraitCollection:v30];

  [(MRUSlider *)self setMinimumTrackTintColor:v19];
  [(MRUSlider *)self setMaximumTrackTintColor:v21];
  minimumValueView = [(MRUSlider *)self minimumValueView];

  if (minimumValueView)
  {
    stylingProvider = self->_stylingProvider;
    minimumValueView2 = [(MRUSlider *)self minimumValueView];
    [(MRUVisualStylingProvider *)stylingProvider applyBlendModeToView:minimumValueView2];

    minimumValueView3 = [(MRUSlider *)self minimumValueView];
    [minimumValueView3 setTintColor:v19];
  }

  maximumValueView = [(MRUSlider *)self maximumValueView];

  if (maximumValueView)
  {
    v27 = self->_stylingProvider;
    maximumValueView2 = [(MRUSlider *)self maximumValueView];
    [(MRUVisualStylingProvider *)v27 applyBlendModeToView:maximumValueView2];

    maximumValueView3 = [(MRUSlider *)self maximumValueView];
    [maximumValueView3 setTintColor:v21];
  }
}

- (UIEdgeInsets)hitRectInset
{
  top = self->_hitRectInset.top;
  left = self->_hitRectInset.left;
  bottom = self->_hitRectInset.bottom;
  right = self->_hitRectInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MRUSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end