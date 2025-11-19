@interface CCUIRoundButton
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CCUIRoundButton)initWithGlyphImage:(id)a3 highlightColor:(id)a4 highlightTintColor:(id)a5 useLightStyle:(BOOL)a6;
- (CCUIRoundButton)initWithGlyphPackageDescription:(id)a3 highlightColor:(id)a4 useLightStyle:(BOOL)a5;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_cornerRadius;
- (id)_initWithHighlightColor:(id)a3 useLightStyle:(BOOL)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_deactivateReachability:(id)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_updateForStateChange;
- (void)_updateForStateChangeIfNecessary;
- (void)_updateHighlightColor;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_visualStylingProvider:(id)a3 didChangeWithOutgoingVisualStylingProvider:(id)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphPackageDescription:(id)a3;
- (void)setGlyphScale:(double)a3;
- (void)setHighlightColor:(id)a3;
- (void)setUseAlternateBackground:(BOOL)a3;
- (void)setUseTintedGlassAppearance:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation CCUIRoundButton

- (void)dealloc
{
  [(CCUIRoundButton *)self removeObserver:self forKeyPath:@"enabled"];
  [(CCUIRoundButton *)self removeObserver:self forKeyPath:@"highlighted"];
  [(CCUIRoundButton *)self removeObserver:self forKeyPath:@"selected"];
  [(CCUIRoundButton *)self removeObserver:self forKeyPath:@"glyphState"];
  [(CCUIRoundButton *)self removeObserver:self forKeyPath:@"useAlternateBackground"];
  v3.receiver = self;
  v3.super_class = CCUIRoundButton;
  [(CCUIRoundButton *)&v3 dealloc];
}

- (id)_initWithHighlightColor:(id)a3 useLightStyle:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CCUIRoundButton;
  v7 = [(CCUIRoundButton *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_glyphScale = 1.0;
    v9 = [v6 copy];
    highlightColor = v8->_highlightColor;
    v8->_highlightColor = v9;

    v8->_useTintedGlassAppearance = !v4;
    if (!v4)
    {
      +[CCUIControlCenterMaterialView _blankMaterialView];
    }

    else
    {
      +[CCUIControlCenterMaterialView _tertiaryView];
    }
    v11 = ;
    objc_storeStrong(&v8->_normalStateBackgroundView, v11);

    normalStateBackgroundView = v8->_normalStateBackgroundView;
    [(CCUIRoundButton *)v8 bounds];
    [(UIView *)normalStateBackgroundView setFrame:?];
    [(UIView *)v8->_normalStateBackgroundView setAutoresizingMask:18];
    [(UIView *)v8->_normalStateBackgroundView setUserInteractionEnabled:0];
    [(CCUIRoundButton *)v8 addSubview:v8->_normalStateBackgroundView];
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CCUIRoundButton *)v8 bounds];
    v14 = [v13 initWithFrame:?];
    selectedStateBackgroundView = v8->_selectedStateBackgroundView;
    v8->_selectedStateBackgroundView = v14;

    [(UIView *)v8->_selectedStateBackgroundView setAutoresizingMask:18];
    [(UIView *)v8->_selectedStateBackgroundView setUserInteractionEnabled:0];
    [(CCUIRoundButton *)v8 _updateHighlightColor];
    [(CCUIRoundButton *)v8 addSubview:v8->_selectedStateBackgroundView];
    v16 = +[CCUIControlCenterMaterialView _lightFillView];
    alternateSelectedStateBackgroundView = v8->_alternateSelectedStateBackgroundView;
    v8->_alternateSelectedStateBackgroundView = v16;

    v18 = v8->_alternateSelectedStateBackgroundView;
    [(CCUIRoundButton *)v8 bounds];
    [(UIView *)v18 setFrame:?];
    [(UIView *)v8->_alternateSelectedStateBackgroundView setAutoresizingMask:18];
    [(UIView *)v8->_alternateSelectedStateBackgroundView setUserInteractionEnabled:0];
    [(UIView *)v8->_alternateSelectedStateBackgroundView setAlpha:0.0];
    [(CCUIRoundButton *)v8 addSubview:v8->_alternateSelectedStateBackgroundView];
    [(CCUIRoundButton *)v8 addTarget:v8 action:sel__primaryActionPerformed_ forControlEvents:0x2000];
    [(CCUIRoundButton *)v8 addTarget:v8 action:sel__deactivateReachability_ forControlEvents:64];
    [(CCUIRoundButton *)v8 addObserver:v8 forKeyPath:@"enabled" options:0 context:0];
    [(CCUIRoundButton *)v8 addObserver:v8 forKeyPath:@"highlighted" options:0 context:0];
    [(CCUIRoundButton *)v8 addObserver:v8 forKeyPath:@"selected" options:0 context:0];
    [(CCUIRoundButton *)v8 addObserver:v8 forKeyPath:@"glyphState" options:0 context:0];
    [(CCUIRoundButton *)v8 addObserver:v8 forKeyPath:@"useAlternateBackground" options:0 context:0];
    v19 = [MEMORY[0x1E69DC938] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 1)
    {
      v21 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v8];
      [(CCUIRoundButton *)v8 addInteraction:v21];
    }
  }

  return v8;
}

- (CCUIRoundButton)initWithGlyphImage:(id)a3 highlightColor:(id)a4 highlightTintColor:(id)a5 useLightStyle:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = [(CCUIRoundButton *)self _initWithHighlightColor:a4 useLightStyle:v6];
  if (v12)
  {
    v13 = [v11 copy];
    highlightTintColor = v12->_highlightTintColor;
    v12->_highlightTintColor = v13;

    v15 = [v10 imageWithRenderingMode:2];
    glyphImage = v12->_glyphImage;
    v12->_glyphImage = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12->_glyphImage];
    glyphImageView = v12->_glyphImageView;
    v12->_glyphImageView = v17;

    [(UIImageView *)v12->_glyphImageView setTintAdjustmentMode:1];
    [(CCUIRoundButton *)v12 addSubview:v12->_glyphImageView];
    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12->_glyphImage];
    selectedGlyphView = v12->_selectedGlyphView;
    v12->_selectedGlyphView = v19;

    [(UIImageView *)v12->_selectedGlyphView setTintAdjustmentMode:1];
    [(CCUIRoundButton *)v12 addSubview:v12->_selectedGlyphView];
    v21 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __86__CCUIRoundButton_initWithGlyphImage_highlightColor_highlightTintColor_useLightStyle___block_invoke;
    v23[3] = &unk_1E83EA478;
    v24 = v12;
    [v21 performWithoutAnimation:v23];
  }

  return v12;
}

- (CCUIRoundButton)initWithGlyphPackageDescription:(id)a3 highlightColor:(id)a4 useLightStyle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CCUIRoundButton *)self _initWithHighlightColor:a4 useLightStyle:v5];
  v10 = v9;
  if (v9)
  {
    [(CCUIRoundButton *)v9 setGlyphPackageDescription:v8];
    v11 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__CCUIRoundButton_initWithGlyphPackageDescription_highlightColor_useLightStyle___block_invoke;
    v13[3] = &unk_1E83EA478;
    v14 = v10;
    [v11 performWithoutAnimation:v13];
  }

  return v10;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CCUIRoundButton;
  [(CCUIRoundButton *)&v20 layoutSubviews];
  [(CCUIRoundButton *)self glyphScale];
  memset(&v19, 0, sizeof(v19));
  if (fabs(v3 + -1.0) >= 2.22044605e-16)
  {
    CGAffineTransformMakeScale(&v19, v3, v3);
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v19.a = *MEMORY[0x1E695EFD0];
    *&v19.c = v4;
    *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  glyphPackageContainerView = self->_glyphPackageContainerView;
  v18 = v19;
  [(UIView *)glyphPackageContainerView setTransform:&v18];
  [(UIImage *)self->_glyphImage size];
  v6 = [(CCUIRoundButton *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  BSRectWithSize();
  [(CCUIRoundButton *)self bounds];
  v17 = v8;
  UIRectCenteredIntegralRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIImageView *)self->_glyphImageView setFrame:v17];
  [(UIImageView *)self->_selectedGlyphView setFrame:v10, v12, v14, v16];
  [(CCUIRoundButton *)self _cornerRadius];
  [(CCUIRoundButton *)self _setCornerRadius:?];
  [(CCUIRoundButton *)self _updateForStateChangeIfNecessary];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (_CCUIRoundButtonSize_onceToken != -1)
  {
    _CCUIRoundButtonSize_cold_1();
  }

  if (self->_dynamicLayoutEnabled)
  {
    UIRoundToScale();
  }

  else
  {
    v4 = *&_CCUIRoundButtonSize_size;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CCUIRoundButton *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setGlyphImage:(id)a3
{
  if (self->_glyphImage != a3)
  {
    v4 = [a3 imageWithRenderingMode:2];
    glyphImage = self->_glyphImage;
    self->_glyphImage = v4;

    [(UIImageView *)self->_glyphImageView setImage:self->_glyphImage];
    [(UIImageView *)self->_selectedGlyphView setImage:self->_glyphImage];

    [(CCUIRoundButton *)self setNeedsLayout];
  }
}

- (void)setUseAlternateBackground:(BOOL)a3
{
  if (self->_useAlternateBackground != a3)
  {
    self->_useAlternateBackground = a3;
    [(CCUIRoundButton *)self setNeedsLayout];
  }
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  if (self->_highlightColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightColor, a3);
    [(CCUIRoundButton *)self _updateHighlightColor];
    v5 = v6;
  }
}

- (void)setGlyphPackageDescription:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, a3);
    glyphPackageView = self->_glyphPackageView;
    if (self->_glyphPackageDescription)
    {
      if (!glyphPackageView)
      {
        if (!self->_glyphPackageContainerView)
        {
          v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
          glyphPackageContainerView = self->_glyphPackageContainerView;
          self->_glyphPackageContainerView = v7;

          [(UIView *)self->_glyphPackageContainerView setClipsToBounds:1];
          [(UIView *)self->_glyphPackageContainerView setUserInteractionEnabled:0];
          [(UIView *)self->_glyphPackageContainerView setAutoresizingMask:18];
          [(CCUIRoundButton *)self addSubview:self->_glyphPackageContainerView];
        }

        v9 = objc_alloc_init(CCUICAPackageView);
        v10 = self->_glyphPackageView;
        self->_glyphPackageView = v9;

        [(CCUICAPackageView *)self->_glyphPackageView setAutoresizingMask:18];
        [(UIView *)self->_glyphPackageContainerView addSubview:self->_glyphPackageView];
        v11 = self->_glyphPackageContainerView;
        [(UIView *)v11 frame];
        [(UIView *)v11 setBounds:?];
        glyphPackageView = self->_glyphPackageView;
      }

      [(CCUICAPackageView *)glyphPackageView setPackageDescription:v5];
      if (-[CCUIRoundButton _shouldReverseLayoutDirection](self, "_shouldReverseLayoutDirection") && [v5 flipsForRightToLeftLayoutDirection])
      {
        v12 = self->_glyphPackageView;
        CGAffineTransformMakeScale(&v15, -1.0, 1.0);
        [(CCUICAPackageView *)v12 setTransform:&v15];
      }
    }

    else if (glyphPackageView)
    {
      [(CCUICAPackageView *)glyphPackageView removeFromSuperview];
      v13 = self->_glyphPackageView;
      self->_glyphPackageView = 0;

      [(UIView *)self->_glyphPackageContainerView removeFromSuperview];
      v14 = self->_glyphPackageContainerView;
      self->_glyphPackageContainerView = 0;
    }
  }
}

- (void)setGlyphScale:(double)a3
{
  if (self->_glyphScale != a3)
  {
    self->_glyphScale = a3;
    [(CCUIRoundButton *)self setNeedsLayout];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CCUIRoundButton;
  [(CCUIRoundButton *)&v6 didMoveToWindow];
  v3 = [(CCUIRoundButton *)self window];

  if (v3)
  {
    v5.receiver = self;
    v5.super_class = CCUIRoundButton;
    v4 = [(CCUIRoundButton *)&v5 visualStylingProviderForCategory:1];
    [(CCUIRoundButton *)self setVisualStylingProvider:v4 forCategory:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setUseTintedGlassAppearance:(BOOL)a3
{
  if (self->_useTintedGlassAppearance != a3)
  {
    self->_useTintedGlassAppearance = a3;
    [(CCUIRoundButton *)self _updateHighlightColor];
  }
}

- (void)_updateHighlightColor
{
  useTintedGlassAppearance = self->_useTintedGlassAppearance;
  normalStateBackgroundView = self->_normalStateBackgroundView;
  if (useTintedGlassAppearance)
  {
    [(UIView *)normalStateBackgroundView ccui_applyClearGlass];
    [(UIView *)self->_selectedStateBackgroundView ccui_applyGlassWithTintColor:self->_highlightColor];
    selectedStateBackgroundView = self->_selectedStateBackgroundView;
    highlightColor = 0;
  }

  else
  {
    [(UIView *)normalStateBackgroundView ccui_removeGlass];
    [(UIView *)self->_selectedStateBackgroundView ccui_removeGlass];
    selectedStateBackgroundView = self->_selectedStateBackgroundView;
    highlightColor = self->_highlightColor;
  }

  [(UIView *)selectedStateBackgroundView setBackgroundColor:highlightColor];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = v8;
  if (a4 == self)
  {
    v10 = v8;
    if (([v8 isEqualToString:@"selected"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"enabled") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"highlighted") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"glyphImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"glyphState") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"useAlternateBackground") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"useIndependentAlpha") & 1) != 0 || (v8 = objc_msgSend(v10, "isEqualToString:", @"useAutomaticSymbolColors"), v9 = v10, v8))
    {
      v8 = [(CCUIRoundButton *)self _setNeedsStateChangeUpdate];
      v9 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = self;
  if ([(CCUIRoundButton *)v4 _isInAWindow])
  {
    v5 = [(CCUIRoundButton *)v4 window];
    v6 = CCUILogUserInterface;
    if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v4;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1D168A000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v14, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v4];
    v11 = [MEMORY[0x1E69DCDB8] effectWithPreview:v10];
    v12 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = visualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CCUIRoundButton;
    v4 = [(CCUIRoundButton *)&v6 visualStylingProviderForCategory:a3];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v14 = a3;
  v6 = [(CCUIRoundButton *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  v9 = v14;
  if (v8)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v14)
    {
      v11 = v14;
      v12 = self->_visualStylingProvider;
      self->_visualStylingProvider = v11;
      v13 = visualStylingProvider;

      [(CCUIRoundButton *)self _visualStylingProvider:v11 didChangeWithOutgoingVisualStylingProvider:v13];
      v9 = v14;
    }
  }
}

- (double)_cornerRadius
{
  [(CCUIRoundButton *)self bounds];
  Width = CGRectGetWidth(v6);
  [(CCUIRoundButton *)self bounds];
  Height = CGRectGetHeight(v7);
  if (Width < Height)
  {
    Height = Width;
  }

  return Height * 0.5;
}

- (void)_setCornerRadius:(double)a3
{
  [(UIView *)self->_normalStateBackgroundView _setCornerRadius:?];
  [(UIView *)self->_selectedStateBackgroundView _setCornerRadius:a3];
  alternateSelectedStateBackgroundView = self->_alternateSelectedStateBackgroundView;

  [(UIView *)alternateSelectedStateBackgroundView _setCornerRadius:a3];
}

- (void)_deactivateReachability:(id)a3
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 _deactivateReachability];
}

- (void)_updateForStateChange
{
  self->_isStateValid = 1;
  v3 = [(CCUIRoundButton *)self window];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__CCUIRoundButton__updateForStateChange__block_invoke;
  v4[3] = &unk_1E83EA478;
  v4[4] = self;
  [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:v3 actions:v4];
}

uint64_t __40__CCUIRoundButton__updateForStateChange__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__CCUIRoundButton__updateForStateChange__block_invoke_2;
  v2[3] = &unk_1E83EA478;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.25];
}

void __40__CCUIRoundButton__updateForStateChange__block_invoke_2(uint64_t a1)
{
  v2 = 1.0;
  if ([*(a1 + 32) isEnabled])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.2;
  }

  if ([*(a1 + 32) isHighlighted])
  {
    v2 = 0.75;
  }

  v4 = [*(a1 + 32) isSelected];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5[65] setAlpha:0.0];
    [*(*(a1 + 32) + 536) setAlpha:0.0];
    [*(*(a1 + 32) + 528) setAlpha:1.0];
    [*(*(a1 + 32) + 552) setAlpha:v3];
    [*(*(a1 + 32) + 544) setAlpha:0.0];
    v6 = *(a1 + 32);
    if (!*(v6 + 512))
    {
      goto LABEL_17;
    }

    if ([*(v6 + 456) isAutomaticallyUpdatingView:*(v6 + 552)])
    {
      [*(a1 + 32) _updateVisualStylingOfView:*(*(a1 + 32) + 552) style:0 visualStylingProvider:0 outgoingProvider:*(*(a1 + 32) + 456)];
    }

    goto LABEL_10;
  }

  v7 = [v5 useAlternateBackground];
  [*(*(a1 + 32) + 520) setAlpha:1.0];
  v8 = *(*(a1 + 32) + 536);
  if (v7)
  {
    [v8 setAlpha:1.0];
    [*(*(a1 + 32) + 528) setAlpha:0.0];
    [*(*(a1 + 32) + 552) setAlpha:v3];
    [*(*(a1 + 32) + 544) setAlpha:v3];
    v9 = *(a1 + 32);
    if (*(v9 + 512))
    {
      if ([*(v9 + 456) isAutomaticallyUpdatingView:*(v9 + 552)])
      {
        [*(a1 + 32) _updateVisualStylingOfView:*(*(a1 + 32) + 552) style:0 visualStylingProvider:0 outgoingProvider:*(*(a1 + 32) + 456)];
      }

LABEL_10:
      [*(*(a1 + 32) + 552) setTintColor:*(*(a1 + 32) + 512)];
    }
  }

  else
  {
    [v8 setAlpha:0.0];
    [*(*(a1 + 32) + 528) setAlpha:0.0];
    [*(*(a1 + 32) + 552) setAlpha:0.0];
    [*(*(a1 + 32) + 544) setAlpha:v3];
  }

LABEL_17:
  if (([*(a1 + 32) useIndependentAlpha] & 1) == 0)
  {
    [*(a1 + 32) setAlpha:v2];
  }

  [*(*(a1 + 32) + 568) setAlpha:v3];
  v10 = *(a1 + 32);
  v11 = v10[71];
  v12 = [v10 glyphState];
  [v11 setStateName:v12];

  v13 = [*(*(a1 + 32) + 552) image];
  LODWORD(v12) = [v13 isSymbolImage];

  v14 = [*(a1 + 32) useAutomaticSymbolColors];
  if (v12 && v14)
  {
    v15 = [*(a1 + 32) useAlternateBackground];
    v16 = *(*(a1 + 32) + 552);
    if (v15)
    {
      [MEMORY[0x1E69DC888] darkGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v17 = ;
    [v16 setTintColor:v17];
  }
}

- (void)_updateForStateChangeIfNecessary
{
  if (!self->_isStateValid)
  {
    [(CCUIRoundButton *)self _updateForStateChange];
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4 andObserverBlock:&__block_literal_global_51];
  }
}

id __91__CCUIRoundButton__updateVisualStylingOfView_style_visualStylingProvider_outgoingProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CCUIRoundButton__updateVisualStylingOfView_style_visualStylingProvider_outgoingProvider___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);

  return v4;
}

- (void)_visualStylingProvider:(id)a3 didChangeWithOutgoingVisualStylingProvider:(id)a4
{
  glyphImageView = self->_glyphImageView;
  v7 = a4;
  v8 = a3;
  [(CCUIRoundButton *)self _updateVisualStylingOfView:glyphImageView style:0 visualStylingProvider:v8 outgoingProvider:v7];
  [(CCUIRoundButton *)self _updateVisualStylingOfView:self->_selectedGlyphView style:0 visualStylingProvider:v8 outgoingProvider:v7];
}

@end