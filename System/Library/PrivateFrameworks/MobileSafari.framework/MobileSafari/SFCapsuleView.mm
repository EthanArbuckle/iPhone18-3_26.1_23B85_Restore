@interface SFCapsuleView
- (BOOL)_shouldFadeNonKeyContentForContentView:(id)view withPreviousContentView:(id)contentView;
- (CGAffineTransform)contentTransform;
- (CGRect)_backgroundFrame;
- (CGRect)_boundsForContent;
- (CGRect)frameForShadowView;
- (NSDirectionalEdgeInsets)accessoryViewInsets;
- (SFCapsuleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)insetsForCollapsedContentWithContainerBounds:(CGRect)bounds;
- (UIView)contentView;
- (UIView)dragPreviewView;
- (id)visualEffectBackgroundView;
- (unint64_t)_accessoryEdge;
- (void)_layoutAccessoryView;
- (void)_performHighlightAnimation;
- (void)_updateAccessoryTheme;
- (void)_updateContentViewState;
- (void)_updateKeyboardInputMode:(id)mode;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateShadowViewTransform;
- (void)_updateStateWithContentView:(id)view;
- (void)allowsHighlight:(BOOL)highlight;
- (void)applyTheme;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAccessoryView:(id)view coordinator:(id)coordinator;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundCornerRadius:(double)radius;
- (void)setBackgroundHeight:(double)height;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setContentView:(id)view;
- (void)setDirectionalCollapsedContentEdge:(unint64_t)edge;
- (void)setForceMinimizedTheme:(BOOL)theme;
- (void)setHidden:(BOOL)hidden;
- (void)setLayoutStyle:(int64_t)style;
- (void)setMinimizationPercent:(double)percent;
- (void)setMinimizedTheme:(id)theme;
- (void)setSelected:(BOOL)selected;
- (void)setState:(int64_t)state;
- (void)setTheme:(id)theme;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setVisualEffectGroupName:(id)name;
- (void)updateShadowViewHidden;
- (void)willChangeToMinimized:(BOOL)minimized coordinator:(id)coordinator;
- (void)willReloadWithCoordinator:(id)coordinator;
@end

@implementation SFCapsuleView

- (UIView)contentView
{
  superview = [(UIView *)self->_cachedContentView superview];
  contentContainer = self->_contentContainer;

  if (superview == contentContainer)
  {
    v5 = self->_cachedContentView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateContentViewState
{
  contentView = [(SFCapsuleView *)self contentView];
  [(SFCapsuleView *)self _updateStateWithContentView:contentView];
}

- (id)visualEffectBackgroundView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    background = self->_background;
  }

  else
  {
    background = 0;
  }

  return background;
}

- (void)updateShadowViewHidden
{
  if (([(SFCapsuleView *)self isHidden]& 1) != 0)
  {
    isSolariumEnabled = 1;
  }

  else
  {
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  }

  shadowView = self->_shadowView;

  [(SFShadowView *)shadowView setHidden:isSolariumEnabled];
}

- (void)_updateLayoutDirectionIfNeeded
{
  keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL;
  if (self->_layoutShouldBeRTL != keyboardInputModeIsRTL || (v4 = [(UIView *)self _sf_usesLeftToRightLayout], keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL, keyboardInputModeIsRTL != !v4))
  {
    self->_layoutShouldBeRTL = keyboardInputModeIsRTL;
    if (keyboardInputModeIsRTL)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    [(SFCapsuleView *)self setSemanticContentAttribute:v5];

    [(SFCapsuleView *)self setNeedsLayout];
  }
}

- (void)_updateAccessoryTheme
{
  toolbarControlsTintColor = [(_SFBarTheme *)self->_theme toolbarControlsTintColor];
  [(UIView *)self->_accessoryView setTintColor:toolbarControlsTintColor];

  if (objc_opt_respondsToSelector())
  {
    backgroundTheme = [(_SFBarTheme *)self->_theme backgroundTheme];
    -[UIView setOverrideUserInterfaceStyle:](self->_accessoryView, "setOverrideUserInterfaceStyle:", [backgroundTheme overrideUserInterfaceStyle]);
  }
}

- (void)applyTheme
{
  v33[1] = *MEMORY[0x1E69E9840];
  _usesMinimizedTheme = [(SFCapsuleView *)self _usesMinimizedTheme];
  v4 = &OBJC_IVAR___SFCapsuleView__theme;
  if (_usesMinimizedTheme)
  {
    v4 = &OBJC_IVAR___SFCapsuleView__minimizedTheme;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  visualEffectBackgroundView = [(SFCapsuleView *)self visualEffectBackgroundView];
  contentView = [(SFCapsuleView *)self contentView];
  if (objc_opt_respondsToSelector())
  {
    isHighlighted = [contentView isHighlighted];
  }

  else
  {
    isHighlighted = 0;
  }

  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle > 1)
  {
    if (backgroundStyle == 3)
    {
      [(UIView *)self safari_setGlassGroupEnabled:!self->_isSelected];
      outerContentContainer = self->_outerContentContainer;
      v24 = self->_state != 1;
      glassURLFieldTintColor = [(_SFBarTheme *)self->_theme glassURLFieldTintColor];
      [(UIView *)outerContentContainer safari_setScrimGlassBackgroundEnabled:v24 withTintColor:glassURLFieldTintColor];

      if (self->_state == 1)
      {
        glassURLFieldUserInterfaceStyle = 0;
LABEL_19:
        [(UIView *)self->_contentContainer setOverrideUserInterfaceStyle:glassURLFieldUserInterfaceStyle];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        contentView2 = [visualEffectBackgroundView contentView];
        [contentView2 setBackgroundColor:clearColor];

        v29 = MEMORY[0x1E695E0F0];
        [visualEffectBackgroundView setContentEffects:MEMORY[0x1E695E0F0]];
        v15 = visualEffectBackgroundView;
        v14 = v29;
LABEL_20:
        [v15 setBackgroundEffects:v14];
        goto LABEL_21;
      }
    }

    else
    {
      if (backgroundStyle != 2)
      {
        goto LABEL_21;
      }

      [(UIView *)self safari_setGlassGroupEnabled:!self->_isSelected];
      v16 = self->_outerContentContainer;
      v17 = self->_backgroundAlpha > 0.01;
      glassURLFieldTintColor2 = [(_SFBarTheme *)self->_theme glassURLFieldTintColor];
      [(UIView *)v16 safari_setFlexibleGlassBackgroundEnabled:v17 withTintColor:glassURLFieldTintColor2];
    }

    glassURLFieldUserInterfaceStyle = [(_SFBarTheme *)self->_theme glassURLFieldUserInterfaceStyle];
    goto LABEL_19;
  }

  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_21;
    }

    [(UIView *)self safari_setGlassGroupEnabled:0];
    [(UIView *)self->_outerContentContainer safari_setGlassBackgroundEnabled:0];
    [(UIView *)self->_contentContainer setOverrideUserInterfaceStyle:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    contentView3 = [visualEffectBackgroundView contentView];
    [contentView3 setBackgroundColor:blackColor];

    v12 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:isHighlighted forBarTintStyle:{objc_msgSend(v5, "tintStyle")}];
    v33[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [visualEffectBackgroundView setContentEffects:v13];

    v14 = MEMORY[0x1E695E0F0];
    v15 = visualEffectBackgroundView;
    goto LABEL_20;
  }

  [(UIView *)self safari_setGlassGroupEnabled:0];
  [(UIView *)self->_outerContentContainer safari_setGlassBackgroundEnabled:0];
  [(UIView *)self->_contentContainer setOverrideUserInterfaceStyle:0];
  [v5 applyBackdropEffectsToView:visualEffectBackgroundView];
  if (isHighlighted && self->_allowsHighlight)
  {
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    contentView4 = [visualEffectBackgroundView contentView];
    [contentView4 setBackgroundColor:blackColor2];

    v21 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:1 forBarTintStyle:{objc_msgSend(v5, "tintStyle")}];
    v32 = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [visualEffectBackgroundView setContentEffects:v22];
  }

LABEL_21:
  [(SFCapsuleView *)self _updateAccessoryTheme];
  if (objc_opt_respondsToSelector())
  {
    contentTheme = [v5 contentTheme];

    v5 = contentTheme;
  }

  controlsTintColor = [v5 controlsTintColor];
  [(SFCapsuleView *)self setTintColor:controlsTintColor];

  -[SFCapsuleView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v5 overrideUserInterfaceStyle]);
  if (objc_opt_respondsToSelector())
  {
    [contentView setTheme:v5];
  }
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SFCapsuleView;
  [(SFCapsuleView *)&v25 layoutSubviews];
  [(SFCapsuleView *)self _layoutAccessoryView];
  [(SFCapsuleView *)self _accessoryEdge];
  [(SFCapsuleView *)self _boundsForContent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFCapsuleView *)self _backgroundFrame];
  [(UIView *)self->_background ss_setUntransformedFrame:?];
  if (self->_needsUpdateTheme)
  {
    self->_needsUpdateTheme = 0;
    [(SFCapsuleView *)self applyTheme];
  }

  isMinimized = [(SFCapsuleView *)self isMinimized];
  if (![MEMORY[0x1E69C8880] isSolariumEnabled] && isMinimized)
  {
    [(SFCapsuleView *)self safeAreaInsets];
    UIEdgeInsetsMin();
    v4 = v4 + v12;
    v6 = v6 + v13;
    v8 = v8 - (v12 + v14);
    v10 = v10 - (v13 + v15);
  }

  [(SFCapsuleView *)self insetsForCollapsedContentWithContainerBounds:v4, v6, v8, v10];
  v17 = v4 + v16;
  v20 = v16 + v19;
  [(UIView *)self->_outerContentContainer ss_setUntransformedFrame:v17, v6 + v18, v8 - (v16 + v19), v10 - (v18 + v21)];
  [(UIView *)self->_outerContentContainer bounds];
  [(UIView *)self->_contentContainer ss_setUntransformedFrame:?];
  if (!self->_reloadingWithCoordinator)
  {
    v22 = *(MEMORY[0x1E695EFF8] + 8);
    contentView = [(SFCapsuleView *)self contentView];
    [contentView ss_setUntransformedFrame:{v20 * -0.5, v22, v8, v10}];
  }

  superview = [(SFShadowView *)self->_shadowView superview];

  if (superview == self)
  {
    [(SFCapsuleView *)self frameForShadowView];
    [(UIView *)self->_shadowView ss_setUntransformedFrame:?];
    [(SFCapsuleView *)self _updateShadowViewTransform];
  }
}

- (unint64_t)_accessoryEdge
{
  if (!self->_accessoryView)
  {
    return 0;
  }

  if ([(UIView *)self _sf_usesLeftToRightLayout])
  {
    return 8;
  }

  return 2;
}

- (CGRect)_boundsForContent
{
  [(SFCapsuleView *)self _accessoryEdge];
  [(UIView *)self->_accessoryView frame];
  CGRectGetWidth(v19);
  UIEdgeInsetsMakeWithEdges();
  [(SFCapsuleView *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFCapsuleView *)self bounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (CGRect)_backgroundFrame
{
  [(SFCapsuleView *)self _boundsForContent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFCapsuleView *)self insetsForCollapsedContentWithContainerBounds:?];
  v13 = v6 + v12;
  v15 = v8 - (v11 + v14);
  v17 = v10 - (v12 + v16);
  if (self->_backgroundHeight == 0.0)
  {
    backgroundHeight = v17;
  }

  else
  {
    backgroundHeight = self->_backgroundHeight;
  }

  v19 = v4 + v11;
  v20 = v13;
  v21 = v15;
  result.size.height = backgroundHeight;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SFCapsuleView;
  [(SFCapsuleView *)&v3 safeAreaInsetsDidChange];
  [(SFCapsuleView *)self setNeedsLayout];
}

- (CGRect)frameForShadowView
{
  superview = [(SFShadowView *)self->_shadowView superview];

  if (superview == self)
  {
    shadowView = self->_shadowView;
    [(SFCapsuleView *)self bounds];
    [(SFShadowView *)shadowView frameWithContentWithFrame:?];
    v37 = v45;
    v39 = v46;
    v41 = v47;
    v43 = v48;
  }

  else
  {
    [(SFCapsuleView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(SFCapsuleView *)self _backgroundFrame];
    v54 = v12;
    v55 = v13;
    v56 = v14;
    v16 = v15;
    [(SFCapsuleView *)self center];
    v18 = v17;
    v53 = v19;
    layer = [(SFCapsuleView *)self layer];
    [layer anchorPoint];
    v22 = v21;
    v24 = v23;

    v57.origin.x = v5;
    v57.origin.y = v7;
    v57.size.width = v9;
    v57.size.height = v11;
    v25 = v54 + v18 - v22 * CGRectGetWidth(v57);
    v58.origin.x = v5;
    v58.origin.y = v7;
    v58.size.width = v9;
    v58.size.height = v11;
    v26 = v55 + v53 - v24 * CGRectGetHeight(v58);
    v59.origin.x = v25;
    v59.origin.y = v26;
    v59.size.width = v56;
    v59.size.height = v16;
    v27 = fmin(CGRectGetWidth(v59) * 0.5, 2.0);
    v60.origin.x = v25;
    v60.origin.y = v26;
    v60.size.width = v56;
    v60.size.height = v16;
    v28 = fmin(CGRectGetHeight(v60) * 0.5, 1.0);
    v29 = self->_shadowView;
    superview2 = [(SFCapsuleView *)self superview];
    v61.origin.x = v25;
    v61.origin.y = v26;
    v61.size.width = v56;
    v61.size.height = v16;
    v62 = CGRectInset(v61, v27, v28);
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    superview3 = [(SFShadowView *)self->_shadowView superview];
    [superview2 convertRect:superview3 toView:{x, y, width, height}];
    [(SFShadowView *)v29 frameWithContentWithFrame:?];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
  }

  v49 = v37;
  v50 = v39;
  v51 = v41;
  v52 = v43;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (void)_updateShadowViewTransform
{
  superview = [(SFShadowView *)self->_shadowView superview];

  if (superview == self)
  {
    shadowView = self->_shadowView;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v7 = *MEMORY[0x1E695EFD0];
    v8 = v6;
    v5 = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    [(SFCapsuleView *)self transform];
    shadowView = self->_shadowView;
    v7 = v10;
    v8 = v11;
    v5 = v12;
  }

  v9 = v5;
  [(SFShadowView *)shadowView setTransform:&v7];
}

- (SFCapsuleView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = SFCapsuleView;
  v3 = [(SFCapsuleView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v3->_contentTransform.a = *MEMORY[0x1E695EFD0];
    *&v3->_contentTransform.c = v6;
    *&v3->_contentTransform.tx = *(v5 + 32);
    v3->_backgroundAlpha = 1.0;
    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v7 = objc_alloc_init(SFShadowView);
      shadowView = v4->_shadowView;
      v4->_shadowView = v7;

      [(SFCapsuleView *)v4 addSubview:v4->_shadowView];
      v9 = [MEMORY[0x1E69DC730] effectWithStyle:10];
      v10 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v9];
      background = v4->_background;
      v4->_background = v10;

      [(SFCapsuleView *)v4 bounds];
      [(UIView *)v4->_background setFrame:?];
      [(SFCapsuleView *)v4 addSubview:v4->_background];
    }

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFCapsuleView *)v4 bounds];
    v13 = [v12 initWithFrame:?];
    outerContentContainer = v4->_outerContentContainer;
    v4->_outerContentContainer = v13;

    [(UIView *)v4->_outerContentContainer setClipsToBounds:1];
    [(SFCapsuleView *)v4 addSubview:v4->_outerContentContainer];
    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFCapsuleView *)v4 bounds];
    v16 = [v15 initWithFrame:?];
    contentContainer = v4->_contentContainer;
    v4->_contentContainer = v16;

    [(UIView *)v4->_outerContentContainer addSubview:v4->_contentContainer];
    [(SFCapsuleView *)v4 setBackgroundCornerRadius:20.0];
    [(SFCapsuleView *)v4 updateShadowViewHidden];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v4->_keyboardInputModeIsRTL = [mEMORY[0x1E69DC668] safari_currentKeyboardInputIsRTL];

    [(SFCapsuleView *)v4 _updateLayoutDirectionIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
    [defaultCenter addObserver:v4 selector:sel__updateKeyboardInputMode_ name:@"SFDidGetTextInputModeDirectionality" object:0];
    [defaultCenter addObserver:v4 selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    [(SFCapsuleView *)v4 _setSafeAreaCornerAdaptation:3];
    v20 = v4;
  }

  return v4;
}

- (void)_updateKeyboardInputMode:(id)mode
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  safari_currentKeyboardInputIsRTL = [mEMORY[0x1E69DC668] safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != safari_currentKeyboardInputIsRTL)
  {
    self->_keyboardInputModeIsRTL = safari_currentKeyboardInputIsRTL;
    if (self->_state != 2)
    {

      [(SFCapsuleView *)self _updateLayoutDirectionIfNeeded];
    }
  }
}

- (void)_layoutAccessoryView
{
  [(SFCapsuleView *)self bounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v7 = CGRectGetHeight(v23);
  [(UIView *)self->_accessoryView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v9 = v8;
  v11 = v10;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v13 = fmax(v7, v9);
  if (isSolariumEnabled)
  {
    v9 = v13;
  }

  if ([(UIView *)self _sf_usesLeftToRightLayout])
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v14 = CGRectGetWidth(v24);
    v15 = v9 + self->_accessoryViewInsets.trailing;
    [(SFCapsuleView *)self safeAreaInsets];
    v17 = v14 - (v15 + v16);
  }

  else
  {
    trailing = self->_accessoryViewInsets.trailing;
    [(SFCapsuleView *)self safeAreaInsets];
    v17 = trailing + v19;
  }

  if (isSolariumEnabled)
  {
    v20 = v7;
  }

  else
  {
    v20 = v11;
  }

  accessoryView = self->_accessoryView;

  [(UIView *)accessoryView setFrame:v17, (v7 - v20) * 0.5, v9];
}

- (void)setDirectionalCollapsedContentEdge:(unint64_t)edge
{
  if (self->_directionalCollapsedContentEdge != edge)
  {
    self->_directionalCollapsedContentEdge = edge;
    [(SFCapsuleView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)insetsForCollapsedContentWithContainerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self _sf_usesLeftToRightLayout];
  directionalCollapsedContentEdge = self->_directionalCollapsedContentEdge;
  if (directionalCollapsedContentEdge == 8 || directionalCollapsedContentEdge == 2)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetWidth(v22);
    UIEdgeInsetsMakeWithEdges();
    v12 = v11;
    v14 = v13;
  }

  else
  {
    horizontalSwipeOffset = self->_horizontalSwipeOffset;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v16 = CGRectGetWidth(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v17 = fmin(v16 - CGRectGetHeight(v24), horizontalSwipeOffset);
    v12 = 0.0;
    v14 = fmax(v17, 0.0);
    v18 = -self->_horizontalSwipeOffset;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v19 = CGRectGetWidth(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v10 = fmax(fmin(v19 - CGRectGetHeight(v26), v18), 0.0);
    v9 = 0.0;
  }

  v20 = v12;
  v21 = v14;
  result.right = v10;
  result.bottom = v9;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = SFCapsuleView;
  [(SFCapsuleView *)&v4 setHidden:hidden];
  [(SFCapsuleView *)self updateShadowViewHidden];
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v6.receiver = self;
  v6.super_class = SFCapsuleView;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SFCapsuleView *)&v6 setTransform:v5];
  [(SFCapsuleView *)self _updateShadowViewTransform];
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    [(UIView *)self->_background setAlpha:?];
    if (self->_backgroundStyle == 2)
    {

      [(SFCapsuleView *)self applyTheme];
    }
  }
}

- (void)setBackgroundCornerRadius:(double)radius
{
  if (self->_backgroundCornerRadius != radius)
  {
    self->_backgroundCornerRadius = radius;
    [(SFCapsuleView *)self _updateContentViewState];
  }
}

- (void)setBackgroundHeight:(double)height
{
  if (self->_backgroundHeight != height)
  {
    self->_backgroundHeight = height;
    [(SFCapsuleView *)self setNeedsLayout];
  }
}

- (void)setVisualEffectGroupName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy copy];
  visualEffectGroupName = self->_visualEffectGroupName;
  self->_visualEffectGroupName = v5;

  visualEffectBackgroundView = [(SFCapsuleView *)self visualEffectBackgroundView];
  [visualEffectBackgroundView _setGroupName:nameCopy];
}

- (void)_performHighlightAnimation
{
  if (self->_reloadingWithCoordinator)
  {
    [(SFCapsuleView *)self setNeedsLayout];
    self->_needsUpdateTheme = 1;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __43__SFCapsuleView__performHighlightAnimation__block_invoke;
    v3[3] = &unk_1E721B360;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50331650 delay:v3 options:0 animations:0.2 completion:0.0];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  contentView = [(SFCapsuleView *)self contentView];
  if (contentView != viewCopy)
  {
    objc_storeStrong(&self->_cachedContentView, view);
    v7 = _Block_copy(self->_contentViewUpdateHandler);
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        [contentView prepareForDeferredRemoval];
      }
    }

    else
    {
      [contentView removeFromSuperview];
    }

    [(SFCapsuleView *)self _updateStateWithContentView:viewCopy];
    if (objc_opt_respondsToSelector())
    {
      [viewCopy setTheme:self->_theme];
    }

    if (objc_opt_respondsToSelector())
    {
      [viewCopy setLayoutStyle:self->_layoutStyle];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __32__SFCapsuleView_setContentView___block_invoke;
      v19[3] = &unk_1E721BF08;
      objc_copyWeak(&v20, &location);
      [viewCopy setHighlightObserver:v19];
      objc_destroyWeak(&v20);
    }

    v8 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__SFCapsuleView_setContentView___block_invoke_2;
    v15[3] = &unk_1E721B650;
    v9 = viewCopy;
    v16 = v9;
    selfCopy = self;
    v10 = contentView;
    v18 = v10;
    [v8 performWithoutAnimation:v15];
    [(SFCapsuleView *)self setNeedsLayout];
    cachedContentView = self->_cachedContentView;
    if (cachedContentView == v9)
    {
      if (v7 && v10)
      {
        v7[2](v7, self, v10, v9);
      }

      else
      {
        v12 = MEMORY[0x1E69DD250];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __32__SFCapsuleView_setContentView___block_invoke_3;
        v13[3] = &unk_1E721B400;
        v13[4] = self;
        v14 = v9;
        [v12 performWithoutAnimation:v13];
      }
    }

    else if (v10 != cachedContentView && [(UIView *)v10 isDescendantOfView:self->_contentContainer])
    {
      [(UIView *)v10 removeFromSuperview];
    }
  }

  objc_destroyWeak(&location);
}

void __32__SFCapsuleView_setContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained contentView];
    if ([v6 layoutStyle] == 1 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v2, "isHighlighted"))
    {
      v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v6 target:sel__performHighlightAnimation selector:0 userInfo:0 repeats:0.1];
      v4 = v6[55];
      v6[55] = v3;

      v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v5 addTimer:v6[55] forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      [v6 _performHighlightAnimation];
    }

    WeakRetained = v6;
  }
}

_BYTE *__32__SFCapsuleView_setContentView___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setHostsLayoutEngine:1];
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
  [*(a1 + 32) setAutoresizingMask:0];
  [*(*(a1 + 40) + 464) bounds];
  [*(a1 + 32) setFrame:?];
  result = *(a1 + 40);
  if (result[433] == 1)
  {
    result = [result _shouldFadeNonKeyContentForContentView:*(a1 + 32) withPreviousContentView:*(a1 + 48)];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 setNonKeyContentAlpha:0.0];
    }
  }

  return result;
}

_BYTE *__32__SFCapsuleView_setContentView___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 464) addSubview:*(a1 + 40)];
  result = *(a1 + 32);
  if ((result[433] & 1) == 0)
  {

    return [result layoutIfNeeded];
  }

  return result;
}

- (void)setAccessoryView:(id)view coordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  v9 = self->_accessoryView;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke;
  aBlock[3] = &unk_1E721B650;
  v10 = v9;
  v27 = v10;
  v11 = viewCopy;
  v28 = v11;
  selfCopy = self;
  v12 = _Block_copy(aBlock);
  objc_storeStrong(&self->_accessoryView, view);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_2;
  v25[3] = &unk_1E721CAB8;
  v25[4] = self;
  v13 = _Block_copy(v25);
  [(UIView *)v10 safari_setGlassGroupEnabled:1];
  [v11 safari_setGlassGroupEnabled:1];
  if (self->_accessoryView)
  {
    v14 = MEMORY[0x1E69DD250];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_3;
    v22[3] = &unk_1E721B5D8;
    v22[4] = self;
    v23 = coordinatorCopy;
    v24 = v13;
    [v14 performWithoutAnimation:v22];
  }

  [(SFCapsuleView *)self setNeedsLayout];
  if (coordinatorCopy)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_4;
    v18 = &unk_1E721CAE0;
    v21 = v13;
    v19 = v10;
    selfCopy2 = self;
    [coordinatorCopy addAnimations:&v15];
    [coordinatorCopy addCompletion:{v12, v15, v16, v17, v18}];
  }

  else
  {
    v12[2](v12);
  }
}

void __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) safari_setGlassGroupEnabled:0];
  [*(a1 + 40) safari_setGlassGroupEnabled:0];
  v2 = [*(a1 + 32) superview];
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v4 = *(a1 + 32);
    v5 = v3[63];

    if (v4 != v5)
    {
      v6 = *(a1 + 32);

      [v6 removeFromSuperview];
    }
  }

  else
  {
  }
}

void __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = a2;
  [v20 setAlpha:0.0];
  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v12 = [*(a1 + 32) _sf_usesLeftToRightLayout];
  if (v11)
  {
    if (v12)
    {
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      Width = CGRectGetWidth(v22);
      [v20 bounds];
      v14 = Width + CGRectGetWidth(v23) * 0.5 + *(*(a1 + 32) + 600);
    }

    else
    {
      [v20 bounds];
      v14 = *(*(a1 + 32) + 600) + CGRectGetWidth(v26) * -0.5;
    }

    [v20 frame];
    v4 = v16;
    v6 = v17;
    v8 = v18;
    v10 = v19;
  }

  else if (v12)
  {
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v15 = CGRectGetWidth(v24);
    [v20 bounds];
    v14 = v15 + (CGRectGetWidth(v25) + *(*(a1 + 32) + 600)) * 0.5;
  }

  else
  {
    [v20 bounds];
    v14 = (CGRectGetWidth(v27) + *(*(a1 + 32) + 600)) * -0.5;
  }

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  [v20 setCenter:{v14, CGRectGetHeight(v28) * 0.5}];
}

uint64_t __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 504) setTranslatesAutoresizingMaskIntoConstraints:1];
  [*(*(a1 + 32) + 504) setAutoresizingMask:0];
  [*(*(a1 + 32) + 504) sizeToFit];
  [*(a1 + 32) _updateAccessoryTheme];
  if (*(a1 + 40))
  {
    (*(*(a1 + 48) + 16))();
  }

  v2 = *(a1 + 32);
  v3 = v2[63];

  return [v2 addSubview:v3];
}

uint64_t __46__SFCapsuleView_setAccessoryView_coordinator___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 40) + 504);

  return [v2 setAlpha:1.0];
}

- (UIView)dragPreviewView
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    self = self->_outerContentContainer;
  }

  else
  {
    [(SFCapsuleView *)self _setContinuousCornerRadius:self->_backgroundCornerRadius];
  }

  return self;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (![(_SFBarTheme *)self->_theme isEqual:?])
  {
    objc_storeStrong(&self->_theme, theme);
    if (![(SFCapsuleView *)self _usesMinimizedTheme])
    {
      [(SFCapsuleView *)self applyTheme];
    }
  }
}

- (void)setBackgroundStyle:(int64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    [(SFCapsuleView *)self applyTheme];

    [(SFCapsuleView *)self updateShadowViewHidden];
  }
}

- (void)setMinimizedTheme:(id)theme
{
  themeCopy = theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    _usesMinimizedTheme = [(SFCapsuleView *)self _usesMinimizedTheme];
    objc_storeStrong(&self->_minimizedTheme, theme);
    if ([(SFCapsuleView *)self _usesMinimizedTheme]|| _usesMinimizedTheme)
    {
      [(SFCapsuleView *)self applyTheme];
    }
  }
}

- (void)setForceMinimizedTheme:(BOOL)theme
{
  if (self->_forceMinimizedTheme != theme)
  {
    self->_forceMinimizedTheme = theme;
    [(SFCapsuleView *)self applyTheme];
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_contentTransform.c;
  *&v13.a = *&self->_contentTransform.a;
  *&v13.c = v7;
  *&v13.tx = *&self->_contentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v13))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    v10 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v10;
    *&t1.tx = *&transform->tx;
    [(UIView *)self->_contentContainer setTransform:&t1];
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [(UIView *)self->_background setTransform:&t1];
    if (([(SFShadowView *)self->_shadowView isDescendantOfView:self]& 1) == 0)
    {
      v12 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v12;
      *&t1.tx = *&transform->tx;
      [(SFShadowView *)self->_shadowView setTransform:&t1];
    }
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(SFCapsuleView *)self applyTheme];
    contentView = [(SFCapsuleView *)self contentView];
    if (objc_opt_respondsToSelector())
    {
      [contentView setLayoutStyle:style];
    }
  }
}

- (void)allowsHighlight:(BOOL)highlight
{
  self->_allowsHighlight = highlight;
  if (highlight && [(NSTimer *)self->_waitToHighlight isValid])
  {
    waitToHighlight = self->_waitToHighlight;

    [(NSTimer *)waitToHighlight fire];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_isSelected != selected)
  {
    self->_isSelected = selected;
    [(SFCapsuleView *)self _updateContentViewState];
    if ((self->_backgroundStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v4 = !self->_isSelected;

      [(UIView *)self safari_setGlassGroupEnabled:v4];
    }
  }
}

- (void)setMinimizationPercent:(double)percent
{
  if (self->_minimizationPercent != percent)
  {
    self->_minimizationPercent = percent;
    [(SFCapsuleView *)self _updateContentViewState];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    v10 = v4;
    v11 = v3;
    self->_state = state;
    if (state == 2)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      if ([mEMORY[0x1E69DC668] safari_prefersRTLLayout])
      {
        v9 = 4;
      }

      else
      {
        v9 = 3;
      }

      [(SFCapsuleView *)self setSemanticContentAttribute:v9, v10, v11, v5];
    }

    self->_needsUpdateTheme = 1;
    [(SFCapsuleView *)self setNeedsLayout:v10];
    [(SFCapsuleView *)self _updateContentViewState];

    [(SFCapsuleView *)self _updateShadowViewTransform];
  }
}

- (BOOL)_shouldFadeNonKeyContentForContentView:(id)view withPreviousContentView:(id)contentView
{
  viewCopy = view;
  contentViewCopy = contentView;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      microphoneContentOriginX = [contentViewCopy microphoneContentOriginX];
      if (microphoneContentOriginX)
      {
        microphoneContentOriginX2 = [viewCopy microphoneContentOriginX];
        v9 = microphoneContentOriginX2 == 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willReloadWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  self->_reloadingWithCoordinator = 1;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke;
  v50[3] = &unk_1E721BD58;
  v50[4] = self;
  [coordinatorCopy addAnimations:v50];
  contentView = [(SFCapsuleView *)self contentView];
  [contentView ss_untransformedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_3;
  aBlock[3] = &unk_1E721CB28;
  aBlock[4] = self;
  v14 = _Block_copy(aBlock);
  v15 = v14[2](v14, contentView);
  v17 = v16;
  v19 = v18;
  v20 = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_2(v15, contentView);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__1;
  v47[4] = __Block_byref_object_dispose__1;
  v48 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_58;
  v33[3] = &unk_1E721CBB8;
  v40 = v47;
  v33[4] = self;
  v21 = contentView;
  v34 = v21;
  v22 = v14;
  v36 = v22;
  v37 = &__block_literal_global_21;
  v41 = v7;
  v42 = v9;
  v43 = v11;
  v44 = v13;
  v45 = v17;
  v46 = v19;
  v38 = &__block_literal_global_50;
  v39 = &__block_literal_global_55;
  v23 = v20;
  v35 = v23;
  [coordinatorCopy addAnimations:v33];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_4_61;
  v28[3] = &unk_1E721CBE0;
  v31 = &__block_literal_global_50;
  v24 = v21;
  v32 = &__block_literal_global_55;
  v29 = v24;
  selfCopy = self;
  [coordinatorCopy addCompletion:v28];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_6;
  v26[3] = &unk_1E721CC08;
  v26[4] = self;
  v25 = v24;
  v27 = v25;
  [coordinatorCopy addAnimations:v26];

  _Block_object_dispose(v47, 8);
}

id __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 microphoneContentOriginX];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyContentRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [*(a1 + 32) _sf_usesLeftToRightLayout];
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
    if (v12)
    {
      MinX = CGRectGetMinX(*&v13);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v13);
    }

    v20 = MinX;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    MidY = CGRectGetMidY(v27);
    v23 = *(a1 + 32);
    v18 = v23;
  }

  else
  {
    v18 = *(a1 + 32);
    [v3 center];
    v20 = v19;
    MidY = v21;

    v23 = *(a1 + 32);
  }

  v24 = v23[58];

  return [v18 convertPoint:v24 fromView:{v20, MidY}];
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_4(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = a3[1];
    v7 = *a3;
    v8 = v5;
    v9 = a3[2];
    [v4 setKeyContentTransform:&v7];
  }

  else
  {
    v6 = a3[1];
    v7 = *a3;
    v8 = v6;
    v9 = a3[2];
    [v4 setTransform:&v7];
  }
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    if (v7 && v8)
    {
      [v8 floatValue];
      v10 = v9;
      [v7 floatValue];
      CGAffineTransformMakeTranslation(&v17, (v10 - v11), 0.0);
      v14 = *&v17.a;
      v15 = *&v17.c;
      v12 = *&v17.tx;
    }

    else
    {
      v13 = *(MEMORY[0x1E695EFD0] + 16);
      v14 = *MEMORY[0x1E695EFD0];
      v15 = v13;
      v12 = *(MEMORY[0x1E695EFD0] + 32);
    }

    v16 = v12;
    [v6 setMicrophoneContentTransform:&v14];
  }
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_58(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 88);
  if (*(a1 + 40) == *(*(v5 + 8) + 40))
  {
    [*(*(a1 + 32) + 464) bounds];
    v24 = *(*(*(a1 + 88) + 8) + 40);

    [v24 setFrame:?];
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_2_59;
    v39[3] = &unk_1E721B980;
    v39[4] = *(a1 + 32);
    v39[5] = v5;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v39];
    v6 = (*(*(a1 + 56) + 16))();
    v8 = v7;
    v9 = (*(*(a1 + 64) + 16))();
    v10 = MEMORY[0x1E69DD250];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_3_60;
    v26[3] = &unk_1E721CB90;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v27 = v11;
    v28 = v12;
    v13 = *(a1 + 112);
    v34 = *(a1 + 96);
    v35 = v13;
    v33 = *(a1 + 88);
    v31 = *(a1 + 72);
    v36 = *(a1 + 128);
    v37 = v6;
    v38 = v8;
    v32 = *(a1 + 80);
    v29 = v9;
    v30 = *(a1 + 48);
    v14 = v9;
    [v10 performWithoutAnimation:v26];
    [*(a1 + 40) setAlpha:0.0];
    [*(*(*(a1 + 88) + 8) + 40) setAlpha:1.0];
    v15 = *(a1 + 72);
    v16 = *(*(*(a1 + 88) + 8) + 40);
    v17 = *(v15 + 16);
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&v25.a = *MEMORY[0x1E695EFD0];
    *&v25.c = v18;
    *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
    v17(v15, v16, &v25, v19, v20, v21);
    (*(*(a1 + 80) + 16))();
    v22 = *(a1 + 72);
    v23 = *(a1 + 40);
    CGAffineTransformMakeTranslation(&v25, v6 - *(a1 + 128), v8 - *(a1 + 136));
    (*(v22 + 16))(v22, v23, &v25);
    (*(*(a1 + 80) + 16))();
  }
}

uint64_t __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_2_59(uint64_t a1)
{
  [*(*(a1 + 32) + 464) bounds];
  [*(*(*(a1 + 40) + 8) + 40) setFrame:?];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_3_60(uint64_t a1)
{
  [*(a1 + 32) _removeAllAnimations:1];
  [*(*(a1 + 40) + 464) addSubview:*(a1 + 32)];
  [*(a1 + 32) ss_setUntransformedFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  [*(*(*(a1 + 80) + 8) + 40) setAlpha:0.0];
  v2 = *(a1 + 64);
  v3 = *(*(*(a1 + 80) + 8) + 40);
  CGAffineTransformMakeTranslation(&v5, *(a1 + 120) - *(a1 + 136), *(a1 + 128) - *(a1 + 144));
  (*(v2 + 16))(v2, v3, &v5);
  return (*(*(a1 + 72) + 16))();
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_4_61(id *a1)
{
  v2 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_5_62;
  v9[3] = &unk_1E721CBE0;
  v3 = a1 + 5;
  v4 = a1[6];
  v5 = a1[4];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = *v3;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v7;
  v11 = v8;
  [v2 performWithoutAnimation:v9];
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_5_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(v7 + 16);
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v15[0] = *MEMORY[0x1E695EFD0];
  v15[1] = v10;
  v15[2] = *(MEMORY[0x1E695EFD0] + 32);
  v9(v7, v8, v15, a4, a5, a6);
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) setAlpha:1.0];
  v11 = [*(a1 + 32) superview];
  v12 = *(a1 + 40);
  if (v11 == v12[58])
  {
    v13 = *(a1 + 32);
    v14 = [v12 contentView];

    if (v13 != v14)
    {
      [*(a1 + 32) removeFromSuperview];
    }
  }

  else
  {
  }
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  if ([*(a1 + 32) _shouldFadeNonKeyContentForContentView:v2 withPreviousContentView:*(a1 + 40)])
  {
    v3 = MEMORY[0x1E69DD250];
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v5 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_7;
    v8[3] = &unk_1E721B400;
    v9 = *(a1 + 40);
    v10 = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_10;
    v6[3] = &unk_1E721B510;
    v7 = *(a1 + 40);
    [v3 animateKeyframesWithDuration:3072 delay:v8 options:v6 animations:v5 completion:0.0];
  }
}

void __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_8;
  v6[3] = &unk_1E721B360;
  v7 = *(a1 + 32);
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.67];
  v3 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SFCapsuleView_willReloadWithCoordinator___block_invoke_9;
  v4[3] = &unk_1E721B360;
  v5 = *(a1 + 40);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.33 animations:0.67];
}

- (void)willChangeToMinimized:(BOOL)minimized coordinator:(id)coordinator
{
  minimizedCopy = minimized;
  coordinatorCopy = coordinator;
  contentView = [(SFCapsuleView *)self contentView];
  if (objc_opt_respondsToSelector())
  {
    [contentView willChangeToMinimized:minimizedCopy coordinator:coordinatorCopy];
  }
}

- (void)_updateStateWithContentView:(id)view
{
  viewCopy = view;
  isMinimized = [(SFCapsuleView *)self isMinimized];
  visualEffectBackgroundView = [(SFCapsuleView *)self visualEffectBackgroundView];
  [visualEffectBackgroundView _setCornerRadius:1 continuous:15 maskedCorners:self->_backgroundCornerRadius];

  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle - 2 < 2)
  {
    p_outerContentContainer = &self->_outerContentContainer;
    [(UIView *)self->_outerContentContainer _setContinuousCornerRadius:self->_backgroundCornerRadius];
    v10 = 1;
  }

  else
  {
    if (backgroundStyle > 1)
    {
      goto LABEL_8;
    }

    backgroundCornerRadius = 0.0;
    if (!isMinimized)
    {
      backgroundCornerRadius = self->_backgroundCornerRadius;
    }

    p_outerContentContainer = &self->_outerContentContainer;
    [(UIView *)self->_outerContentContainer _setContinuousCornerRadius:backgroundCornerRadius];
    v10 = isMinimized ^ 1;
  }

  v6 = [(UIView *)*p_outerContentContainer setClipsToBounds:v10];
LABEL_8:
  if (viewCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [viewCopy setSelected:self->_isSelected];
    }

    if (objc_opt_respondsToSelector())
    {
      [viewCopy setMinimized:isMinimized];
    }

    if (objc_opt_respondsToSelector())
    {
      [viewCopy setMinimizationPercent:self->_minimizationPercent];
    }

    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v6 = [viewCopy setUnclippedContainer:self];
    }
  }

  MEMORY[0x1EEE66BE0](v6);
}

- (NSDirectionalEdgeInsets)accessoryViewInsets
{
  top = self->_accessoryViewInsets.top;
  leading = self->_accessoryViewInsets.leading;
  bottom = self->_accessoryViewInsets.bottom;
  trailing = self->_accessoryViewInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[13].c;
  *&retstr->a = *&self[13].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].tx;
  return self;
}

@end