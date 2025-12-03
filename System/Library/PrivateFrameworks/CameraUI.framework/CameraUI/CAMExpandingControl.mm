@interface CAMExpandingControl
- (BOOL)_wantsTitleBackground;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMExpandingControl)initWithFrame:(CGRect)frame;
- (CAMExpandingControlDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)expansionInsets;
- (id)_buttonForHUDManager:(id)manager;
- (id)_createBackgroundWithColor:(id)color;
- (id)_createMenuButton;
- (id)_hudItemForButton:(id)button;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (void)_animateExpandedWithAnimations:(id)animations;
- (void)_handleLongPress:(id)press;
- (void)_handleMenuButtonReleased:(id)released;
- (void)_setNeedsUpdateMenuButtonsAnimated:(BOOL)animated;
- (void)_updateExpandedBackgroundsAnimated:(BOOL)animated;
- (void)_updateMenuButtonsAnimated:(BOOL)animated;
- (void)_updateMenuButtonsIfNeededAnimated:(BOOL)animated;
- (void)_updateSelectedMenuItemAnimated:(BOOL)animated;
- (void)_updateTitleViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
- (void)setBackgroundMaterial:(unint64_t)material;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMenu:(id)menu;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setSelectedState:(id)state animated:(BOOL)animated;
- (void)setShowsContentShadows:(BOOL)shadows;
- (void)setTitleStyle:(int64_t)style;
@end

@implementation CAMExpandingControl

- (CAMExpandingControl)initWithFrame:(CGRect)frame
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAMExpandingControl;
  v3 = [(CAMExpandingControl *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMExpandingControl *)v3 setTintColor:systemYellowColor];

    array = [MEMORY[0x1E695DF70] array];
    menuButtons = v3->__menuButtons;
    v3->__menuButtons = array;

    v3->_orientation = 1;
    v3->_longPressEnabled = 1;
    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__handleLongPress_];
    longPress = v3->__longPress;
    v3->__longPress = v7;

    [(UILongPressGestureRecognizer *)v3->__longPress setDelegate:v3];
    [(CAMExpandingControl *)v3 addGestureRecognizer:v3->__longPress];
    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(CAMExpandingControl *)v3 registerForTraitChanges:v9 withHandler:&__block_literal_global_26];
  }

  return v3;
}

void __37__CAMExpandingControl_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateTitleViewAnimated:0];
  [v2 setNeedsLayout];
  if ([v2 isExpanded])
  {
    [v2 _updateMenuButtonsAnimated:0];
  }
}

- (CGSize)intrinsicContentSize
{
  _titleView = [(CAMExpandingControl *)self _titleView];
  [_titleView intrinsicContentSize];
  CEKRectWithSize();
  [_titleView frameForAlignmentRect:?];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v97 = *MEMORY[0x1E69E9840];
  [(CAMExpandingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [(CAMExpandingControl *)self traitCollection];
  [traitCollection displayScale];
  v80 = v8;

  _titleView = [(CAMExpandingControl *)self _titleView];
  _expandedBackground = [(CAMExpandingControl *)self _expandedBackground];
  _expandedTitleBackground = [(CAMExpandingControl *)self _expandedTitleBackground];
  isExpanded = [(CAMExpandingControl *)self isExpanded];
  if (isExpanded)
  {
    [(CAMExpandingControl *)self expansionInsets];
  }

  UIRectInset();
  [(CAMExpandingControl *)self intrinsicContentSize];
  CEKSizeScale();
  UISizeRoundToScale();
  v14 = v13;
  v16 = fmin(v15, v6);
  titleStyle = [(CAMExpandingControl *)self titleStyle];
  if (titleStyle == 1)
  {
    v16 = v6;
    v18 = v4;
  }

  else
  {
    v18 = v14;
  }

  if (v18 < v16)
  {
    v18 = v16;
  }

  if (_expandedBackground)
  {
    v19 = v18;
    UIRectCenteredYInRect();
    [_expandedBackground setFrame:?];
    layer = [_expandedBackground layer];
    [layer setCornerRadius:{fmin(v16, 34.0) * 0.5}];

    v18 = v19;
  }

  if (_titleView)
  {
    CEKRectWithSize();
    v77 = v22;
    v78 = v21;
    v75 = v24;
    v76 = v23;
    UIRectCenteredIntegralRectScale();
    [_expandedTitleBackground setBounds:{v78, v77, v76, v75, v80}];
    UIRectGetCenter();
    [_expandedTitleBackground setCenter:?];
    layer2 = [_expandedTitleBackground layer];
    [layer2 setCornerRadius:v16 * 0.5];

    [_titleView intrinsicContentSize];
    CEKSizeCeilToScale();
    CEKSizeMax();
    CEKRectWithSize();
    [_titleView setBounds:?];
    [_titleView bounds];
    UIRectCenteredIntegralRectScale();
    UIRectGetCenter();
    [_titleView setCenter:v80];
  }

  _menuButtons = [(CAMExpandingControl *)self _menuButtons];
  menu = [(CAMExpandingControl *)self menu];
  if (isExpanded)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (_titleView)
    {
      if (titleStyle == 1)
      {
        _selectedMenuItem = [(CAMExpandingControl *)self _selectedMenuItem];
        v30 = [menu indexOfObject:_selectedMenuItem];

        v28 = 0x7FFFFFFFFFFFFFFFLL;
        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [_menuButtons mutableCopy];
          [v31 setObject:_titleView atIndexedSubscript:v30];

          v28 = v30;
          _menuButtons = v31;
        }
      }
    }

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __37__CAMExpandingControl_layoutSubviews__block_invoke;
    v93[3] = &__block_descriptor_40_e44_B32__0__CAMExpandingControlMenuItem_8Q16_B24l;
    v93[4] = v28;
    v32 = [menu indexesOfObjectsPassingTest:v93];
    if ([v32 count])
    {
      v33 = [_menuButtons mutableCopy];
      [v33 removeObjectsAtIndexes:v32];

      _menuButtons = v33;
    }

    [_titleView frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [_expandedBackground frame];
    v98.origin.x = v35;
    v98.origin.y = v37;
    v98.size.width = v39;
    v98.size.height = v41;
    CGRectGetMaxX(v98);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v42 = _menuButtons;
    v43 = [v42 countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v90;
      v46 = 0.0;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v90 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v89 + 1) + 8 * i) intrinsicContentSize];
          v46 = v46 + v48;
        }

        v44 = [v42 countByEnumeratingWithState:&v89 objects:v96 count:16];
      }

      while (v44);
    }

    [v42 count];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v54 = v42;
    v55 = [v54 countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v86;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v86 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v85 + 1) + 8 * j);
          [v59 intrinsicContentSize];
          CEKSizeCeilToScale();
          CEKSizeMax();
          CEKRectWithSize();
          v61 = v60;
          v63 = v62;
          v79 = v64;
          v66 = v65;
          UIRectCenteredYInRectScale();
          v68 = v67;
          v70 = v69;
          v72 = v71;
          UIRoundToScale();
          v74 = v73;
          UIRectGetCenter();
          [v59 setCenter:v80];
          [v59 setBounds:{v61, v63, v79, v66}];
          v99.origin.x = v74;
          v99.origin.y = v68;
          v99.size.width = v70;
          v99.size.height = v72;
          CGRectGetMaxX(v99);
        }

        v56 = [v54 countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v56);
    }
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v32 = _menuButtons;
    v49 = [v32 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v82;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v82 != v51)
          {
            objc_enumerationMutation(v32);
          }

          v53 = *(*(&v81 + 1) + 8 * k);
          [v53 intrinsicContentSize];
          CEKSizeCeilToScale();
          CEKRectWithSize();
          [v53 setBounds:?];
          UIRectCenteredIntegralRectScale();
          UIRectGetCenter();
          [v53 setCenter:v80];
        }

        v50 = [v32 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v50);
    }

    v54 = v32;
  }
}

BOOL __37__CAMExpandingControl_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _configuration];
  if ([v5 hidden])
  {
    v6 = *(a1 + 32) != a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(CAMExpandingControl *)self isExpanded])
  {
    _expandedBackground = [(CAMExpandingControl *)self _expandedBackground];
    [(CAMExpandingControl *)self convertPoint:_expandedBackground toView:x, y];
    v9 = [_expandedBackground pointInside:eventCopy withEvent:?];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CAMExpandingControl;
    v9 = [(CAMExpandingControl *)&v11 pointInside:eventCopy withEvent:x, y];
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = CAMExpandingControl;
  v5 = [(CAMExpandingControl *)&v11 hitTest:event withEvent:test.x, test.y];
  if ([(CAMExpandingControl *)self isExpanded])
  {
    v6 = [(CAMExpandingControl *)self titleStyle]!= 1;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 1;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  _titleView = [(CAMExpandingControl *)self _titleView];
  v8 = v5 == _titleView && v6;

  if (v8 == 1)
  {
    selfCopy = self;

    v5 = selfCopy;
  }

LABEL_7:

  return v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CAMExpandingControl *)self isHighlighted];
  v10.receiver = self;
  v10.super_class = CAMExpandingControl;
  [(CAMExpandingControl *)&v10 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:1];
    if (![(CAMExpandingControl *)self isExpanded]|| !highlightedCopy)
    {
      _titleView = [(CAMExpandingControl *)self _titleView];
      layer = [_titleView layer];
      [CAMAnimationHelper setLayer:layer highlighted:highlightedCopy inverted:1 animated:1 layoutStyle:3];

      _expandedTitleBackground = [(CAMExpandingControl *)self _expandedTitleBackground];
      layer2 = [_expandedTitleBackground layer];
      [CAMAnimationHelper setLayer:layer2 highlighted:highlightedCopy inverted:1 animated:1 layoutStyle:3];
    }
  }
}

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
  eventCopy = event;
  isExpanded = [(CAMExpandingControl *)self isExpanded];
  if (!eventCopy)
  {
    goto LABEL_25;
  }

  if (!isExpanded)
  {
    goto LABEL_25;
  }

  v11 = [eventCopy touchesForView:self];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  _menuButtons = [(CAMExpandingControl *)self _menuButtons];
  v14 = [_menuButtons mutableCopy];

  _titleView = [(CAMExpandingControl *)self _titleView];

  if (_titleView)
  {
    _titleView2 = [(CAMExpandingControl *)self _titleView];
    [v14 addObject:_titleView2];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v18)
  {

    goto LABEL_26;
  }

  v19 = v18;
  selfCopy = self;
  actionCopy = action;
  v32 = toCopy;
  obj = v17;
  v34 = 0;
  v35 = *v42;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v42 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v41 + 1) + 8 * i);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v14;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = v14;
        v26 = *v38;
        while (2)
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v37 + 1) + 8 * j);
            [v21 locationInView:{v28, selfCopy, actionCopy, v32}];
            v29 = [v28 hitTest:eventCopy withEvent:?];

            if (v29)
            {
              v34 = 1;
              goto LABEL_21;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

LABEL_21:
        v14 = v25;
      }
    }

    v19 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v19);

  action = actionCopy;
  toCopy = v32;
  self = selfCopy;
  if (v34)
  {
LABEL_25:
    v36.receiver = self;
    v36.super_class = CAMExpandingControl;
    [(CAMExpandingControl *)&v36 sendAction:action to:toCopy forEvent:eventCopy, selfCopy, actionCopy, v32];
  }

LABEL_26:
}

- (void)setBackgroundMaterial:(unint64_t)material
{
  if (self->_backgroundMaterial != material)
  {
    self->_backgroundMaterial = material;
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
  }
}

- (void)setTitleStyle:(int64_t)style
{
  if (self->_titleStyle != style)
  {
    self->_titleStyle = style;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:0];
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];

    [(CAMExpandingControl *)self setNeedsLayout];
  }
}

- (void)setShowsContentShadows:(BOOL)shadows
{
  if (self->_showsContentShadows != shadows)
  {
    self->_showsContentShadows = shadows;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:0];

    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];
  }
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  if (self->_expanded != expanded)
  {
    animatedCopy = animated;
    expandedCopy = expanded;
    if (animated)
    {
      if (expanded)
      {
        [(CAMExpandingControl *)self _updateMenuButtonsIfNeededAnimated:0];
      }

      [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
      [(CAMExpandingControl *)self layoutIfNeeded];
      delegate = [(CAMExpandingControl *)self delegate];
      [delegate expandingControl:self willChangeExpanded:expandedCopy animated:1];

      self->_expanded = expandedCopy;
      [(CAMExpandingControl *)self setNeedsLayout];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CAMExpandingControl_setExpanded_animated___block_invoke;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      [(CAMExpandingControl *)self _animateExpandedWithAnimations:v10];
    }

    else
    {
      delegate2 = [(CAMExpandingControl *)self delegate];
      [delegate2 expandingControl:self willChangeExpanded:expandedCopy animated:0];

      self->_expanded = expandedCopy;
      [(CAMExpandingControl *)self setNeedsLayout];
    }

    [(CAMExpandingControl *)self _updateMenuButtonsAnimated:animatedCopy];
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:animatedCopy];
    [(CAMExpandingControl *)self _updateTitleViewAnimated:animatedCopy];
    delegate3 = [(CAMExpandingControl *)self delegate];
    [delegate3 expandingControl:self didChangeExpanded:expandedCopy animated:animatedCopy];
  }
}

- (void)_animateExpandedWithAnimations:(id)animations
{
  animationsCopy = animations;
  expansionAnimation = [(CAMExpandingControl *)self expansionAnimation];
  v5 = 0.5;
  if (expansionAnimation == 1)
  {
    v5 = 0.7;
  }

  v6 = 1.0;
  if (expansionAnimation == 1)
  {
    v7 = 0.7;
  }

  else
  {
    v7 = 1.0;
  }

  if (expansionAnimation == 1)
  {
    v6 = 2.0;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:animationsCopy usingSpringWithDamping:0 initialSpringVelocity:v5 options:0.0 animations:v7 completion:v6];
}

- (void)_updateExpandedBackgroundsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _expandedBackground = [(CAMExpandingControl *)self _expandedBackground];
  _expandedTitleBackground = [(CAMExpandingControl *)self _expandedTitleBackground];
  isExpanded = [(CAMExpandingControl *)self isExpanded];
  backgroundMaterial = [(CAMExpandingControl *)self backgroundMaterial];
  if (backgroundMaterial == 1)
  {
    v9 = MEMORY[0x1E69DC888];
    v11 = 0.0;
    v10 = 0.5;
  }

  else
  {
    if (backgroundMaterial)
    {
      v12 = 0;
      if (_expandedBackground)
      {
        goto LABEL_6;
      }

LABEL_8:
      _expandedBackground = [(CAMExpandingControl *)self _createBackgroundWithColor:v12];
      [(CAMExpandingControl *)self set_expandedBackground:_expandedBackground];
      [(CAMExpandingControl *)self insertSubview:_expandedBackground atIndex:0];
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E69DC888];
    v10 = 0.11;
    v11 = 1.0;
  }

  v12 = [v9 colorWithWhite:v11 alpha:v10];
  if (!_expandedBackground)
  {
    goto LABEL_8;
  }

LABEL_6:
  [_expandedBackground setBackgroundColor:v12];
LABEL_9:
  _wantsTitleBackground = [(CAMExpandingControl *)self _wantsTitleBackground];
  v14 = _wantsTitleBackground;
  if (!_expandedTitleBackground && _wantsTitleBackground)
  {
    _expandedTitleBackground = [(CAMExpandingControl *)self _createBackgroundWithColor:v12];
    [(CAMExpandingControl *)self _setTitleBackground:_expandedTitleBackground];
    [(CAMExpandingControl *)self insertSubview:_expandedTitleBackground aboveSubview:_expandedBackground];
  }

  if (animatedCopy)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.0;
  }

  if (!isExpanded && animatedCopy)
  {
    if ([(CAMExpandingControl *)self isHighlighted])
    {
      v15 = 0.5;
    }

    else
    {
      v15 = 0.25;
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__CAMExpandingControl__updateExpandedBackgroundsAnimated___block_invoke;
  v19[3] = &unk_1E76FB210;
  v24 = isExpanded;
  v20 = _expandedBackground;
  v21 = _expandedTitleBackground;
  v25 = v14;
  selfCopy = self;
  v23 = v12;
  v16 = v12;
  v17 = _expandedTitleBackground;
  v18 = _expandedBackground;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v19 initialSpringVelocity:0 options:v15 animations:1.0 completion:1.0];
}

void __58__CAMExpandingControl__updateExpandedBackgroundsAnimated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 64);
  [*(a1 + 32) setAlpha:*&a2];
  if ((*(a1 + 64) & 1) != 0 || (v4 = [*(a1 + 48) isHighlighted], v3 = 0.0, v4))
  {
    LOBYTE(v3) = *(a1 + 65);
    v3 = *&v3;
  }

  [*(a1 + 40) setAlpha:v3];
  if ([*(a1 + 48) isExpanded])
  {
    v7 = [MEMORY[0x1E69DC888] systemYellowColor];
    [*(a1 + 40) setBackgroundColor:v7];
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);

    [v6 setBackgroundColor:v5];
  }
}

- (BOOL)_wantsTitleBackground
{
  selfCopy = self;
  _selectedMenuItem = [(CAMExpandingControl *)self _selectedMenuItem];
  _configuration = [_selectedMenuItem _configuration];
  titleBorder = [_configuration titleBorder];

  LOBYTE(selfCopy) = (titleBorder | [(CAMExpandingControl *)selfCopy titleStyle]) == 0;
  return selfCopy;
}

- (id)_createBackgroundWithColor:(id)color
{
  v3 = MEMORY[0x1E69DD250];
  colorCopy = color;
  v5 = objc_alloc_init(v3);
  [v5 setBackgroundColor:colorCopy];

  v6 = *MEMORY[0x1E69796E8];
  layer = [v5 layer];
  [layer setCornerCurve:v6];

  [v5 setUserInteractionEnabled:0];

  return v5;
}

- (void)_updateTitleViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _selectedMenuItem = [(CAMExpandingControl *)self _selectedMenuItem];
  _titleView = [(CAMExpandingControl *)self _titleView];
  isExpanded = [(CAMExpandingControl *)self isExpanded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleText = [_selectedMenuItem titleText];
    titleImage = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      titleImage = [_selectedMenuItem titleImage];
    }

    else
    {
      titleImage = 0;
    }

    titleText = 0;
  }

  if (titleText | titleImage && !_titleView)
  {
    _titleView = objc_alloc_init(_CAMExpandingControlButton);
    [(CAMExpandingControl *)self addSubview:_titleView];
    [(CAMExpandingControl *)self _setTitleView:_titleView];
  }

  if (titleText)
  {
    [(_CAMExpandingControlButton *)_titleView setTitleText:titleText];
    [(_CAMExpandingControlButton *)_titleView setTitleImage:0];
  }

  else if (titleImage)
  {
    [(_CAMExpandingControlButton *)_titleView setTitleImage:titleImage];
    [(_CAMExpandingControlButton *)_titleView setTitleText:0];
  }

  [(_CAMExpandingControlButton *)_titleView setAlpha:1.0];
  _configuration = [_selectedMenuItem _configuration];
  tintsTitle = [_configuration tintsTitle];

  _configuration2 = [_selectedMenuItem _configuration];
  slashesTitle = [_configuration2 slashesTitle];

  _wantsTitleBackground = [(CAMExpandingControl *)self _wantsTitleBackground];
  _configuration3 = [_selectedMenuItem _configuration];
  titleBorder = [_configuration3 titleBorder];

  [(_CAMExpandingControlButton *)_titleView setSlashed:slashesTitle animated:animatedCopy];
  [(_CAMExpandingControlButton *)_titleView setBorder:titleBorder];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleStyle = [(CAMExpandingControl *)self titleStyle];
  if (titleStyle == 1)
  {
    if (([(CAMExpandingControl *)self isExpanded]| tintsTitle))
    {
      [(CAMExpandingControl *)self tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v18 = ;
    [(_CAMExpandingControlButton *)_titleView setTintColor:v18];
  }

  else
  {
    if (titleStyle)
    {
      goto LABEL_27;
    }

    if (isExpanded && _wantsTitleBackground)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    else
    {
      if (!tintsTitle)
      {
        goto LABEL_27;
      }

      systemBackgroundColor = [(CAMExpandingControl *)self tintColor];
    }

    v18 = labelColor;
    labelColor = systemBackgroundColor;
  }

LABEL_27:
  [(_CAMExpandingControlButton *)_titleView setTintColor:labelColor];
  [(_CAMExpandingControlButton *)_titleView setOrientation:[(CAMExpandingControl *)self orientation] animated:animatedCopy];
  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  layer = [(_CAMExpandingControlButton *)_titleView layer];
  [layer setShadowOffset:{v19, v20}];

  if ([(CAMExpandingControl *)self showsContentShadows])
  {
    v22 = 0.2;
  }

  else
  {
    v22 = 0.0;
  }

  layer2 = [(_CAMExpandingControlButton *)_titleView layer];
  *&v24 = v22;
  [layer2 setShadowOpacity:v24];
}

- (void)setSelectedState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  selectedState = [(CAMExpandingControl *)self selectedState];
  if (([selectedState isEqualToValue:stateCopy] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedState, state);
    [(CAMExpandingControl *)self _updateSelectedMenuItemAnimated:animatedCopy];
  }
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if (([menuCopy isEqualToArray:self->_menu] & 1) == 0)
  {
    objc_storeStrong(&self->_menu, menu);
    [(CAMExpandingControl *)self _updateSelectedMenuItemAnimated:0];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];
  }
}

- (void)_updateSelectedMenuItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selectedState = [(CAMExpandingControl *)self selectedState];
  menu = [(CAMExpandingControl *)self menu];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CAMExpandingControl__updateSelectedMenuItemAnimated___block_invoke;
  v10[3] = &unk_1E76FB238;
  v7 = selectedState;
  v11 = v7;
  v8 = [menu indexOfObjectPassingTest:v10];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [menu objectAtIndexedSubscript:v8];
    [(CAMExpandingControl *)self _setSelectedMenuItem:v9];
    [(CAMExpandingControl *)self _updateTitleViewAnimated:animatedCopy];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:animatedCopy];
    [(CAMExpandingControl *)self setNeedsLayout];
  }
}

uint64_t __55__CAMExpandingControl__updateSelectedMenuItemAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 state];
  v4 = [v2 isEqualToValue:v3];

  return v4;
}

- (void)_setNeedsUpdateMenuButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->__needsUpdateMenuButtons = 1;
  if ([(CAMExpandingControl *)self isExpanded])
  {

    [(CAMExpandingControl *)self _updateMenuButtonsIfNeededAnimated:animatedCopy];
  }
}

- (void)_updateMenuButtonsIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CAMExpandingControl *)self _needsUpdateMenuButtons])
  {
    self->__needsUpdateMenuButtons = 0;

    [(CAMExpandingControl *)self _updateMenuButtonsAnimated:animatedCopy];
  }
}

- (void)_updateMenuButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v40 = *MEMORY[0x1E69E9840];
  _menuButtons = [(CAMExpandingControl *)self _menuButtons];
  menu = [(CAMExpandingControl *)self menu];
  isExpanded = [(CAMExpandingControl *)self isExpanded];
  while (1)
  {
    v8 = [_menuButtons count];
    if (v8 >= [menu count])
    {
      break;
    }

    _createMenuButton = [(CAMExpandingControl *)self _createMenuButton];
    [(CAMExpandingControl *)self addSubview:_createMenuButton];
    [_menuButtons addObject:_createMenuButton];
  }

  while (1)
  {
    v11 = [_menuButtons count];
    if (v11 <= [menu count])
    {
      break;
    }

    lastObject = [_menuButtons lastObject];
    [lastObject removeFromSuperview];

    [_menuButtons removeLastObject];
  }

  orientation = [(CAMExpandingControl *)self orientation];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  CAMOrientationTransform(orientation, &v36);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__CAMExpandingControl__updateMenuButtonsAnimated___block_invoke;
  v23[3] = &unk_1E76FB260;
  v13 = menu;
  v24 = v13;
  selfCopy = self;
  v30 = isExpanded;
  v31 = animatedCopy;
  v26 = &v32;
  v27 = v36;
  v28 = v37;
  v29 = v38;
  [_menuButtons enumerateObjectsUsingBlock:v23];
  if (*(v33 + 24))
  {
    v14 = orientation;
  }

  else
  {
    v14 = 1;
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = _menuButtons;
  v16 = [v15 countByEnumeratingWithState:&v19 objects:v39 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v19 + 1) + 8 * v18++) setOrientation:v14 animated:{animatedCopy, v19}];
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v19 objects:v39 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(&v32, 8);
}

void __50__CAMExpandingControl__updateMenuButtonsAnimated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [*(a1 + 40) _selectedMenuItem];

  if (v6 == v7)
  {
    v10 = [*(a1 + 40) tintColor];
    [v5 setTintColor:v10];

    if ([*(a1 + 40) titleStyle] != 1)
    {
      v9 = [v6 selectedSubtitle];
      goto LABEL_11;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
    [v5 setTintColor:v8];

    if ([*(a1 + 40) titleStyle] != 1)
    {
      v9 = [v6 subtitle];
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [v6 titleImage];
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    goto LABEL_14;
  }

  v9 = [v6 titleText];
LABEL_11:
  v12 = v9;
  v11 = 0;
LABEL_14:
  [v5 setTitleText:v12];
  [v5 setTitleImage:v11];
  v13 = [*(a1 + 40) titleStyle];
  v14 = [v6 _configuration];
  v15 = [v14 hidden];

  if (v13 == 1 && v6 == v7)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 104);
  }

  v18 = v17 & (v15 ^ 1);
  v19 = *(a1 + 105);
  v20 = 0.25;
  if (*(a1 + 104))
  {
    v20 = 0.5;
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v37 = 3221225472;
  v36 = MEMORY[0x1E69E9820];
  v38 = __50__CAMExpandingControl__updateMenuButtonsAnimated___block_invoke_2;
  v39 = &unk_1E76F7850;
  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0.0;
  }

  v40 = v5;
  v41 = v18;
  v23 = v5;
  [CAMView animateIfNeededWithDuration:v21 usingSpringWithDamping:&v36 initialSpringVelocity:0 options:v22 animations:1.0 completion:1.0];
  [v23 bounds];
  v26 = fabs(v24 * *(a1 + 80) + *(a1 + 64) * v25);
  [*(a1 + 40) bounds];
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 24);
  if (v26 > v29)
  {
    v28 = 0;
  }

  *(v27 + 24) = v28;
  v30 = *MEMORY[0x1E695F060];
  v31 = *(MEMORY[0x1E695F060] + 8);
  v32 = [v23 layer];
  [v32 setShadowOffset:{v30, v31}];

  if ([*(a1 + 40) showsContentShadows])
  {
    v33 = 0.2;
  }

  else
  {
    v33 = 0.0;
  }

  v34 = [v23 layer];
  *&v35 = v33;
  [v34 setShadowOpacity:v35];
}

- (void)_handleMenuButtonReleased:(id)released
{
  releasedCopy = released;
  [(CAMExpandingControl *)self sendActionsForControlEvents:64];
  _menuButtons = [(CAMExpandingControl *)self _menuButtons];
  v6 = [_menuButtons indexOfObject:releasedCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    menu = [(CAMExpandingControl *)self menu];
    v8 = [menu objectAtIndexedSubscript:v6];
    state = [v8 state];
    [(CAMExpandingControl *)self setSelectedState:state];

    [(CAMExpandingControl *)self sendActionsForControlEvents:4096];
  }
}

- (id)_createMenuButton
{
  v3 = objc_alloc_init(_CAMExpandingControlButton);
  [(_CAMExpandingControlButton *)v3 addTarget:self action:sel__handleMenuButtonReleased_ forControlEvents:64];
  [(_CAMExpandingControlButton *)v3 setAlpha:[(CAMExpandingControl *)self isExpanded]];
  if ([(CAMExpandingControl *)self orientation]== 2)
  {
    CAMOrientationTransform([(CAMExpandingControl *)self orientation], v6);
    v5[0] = v6[0];
    v5[1] = v6[1];
    v5[2] = v6[2];
    [(_CAMExpandingControlButton *)v3 setTransform:v5];
  }

  return v3;
}

- (void)_handleLongPress:(id)press
{
  if ([press state] == 1)
  {

    [(CAMExpandingControl *)self sendActionsForControlEvents:0x1000000];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _longPress = [(CAMExpandingControl *)self _longPress];

  if (_longPress != beginCopy)
  {

    return 1;
  }

  if ([(CAMExpandingControl *)self isExpanded])
  {
  }

  else
  {
    isLongPressEnabled = [(CAMExpandingControl *)self isLongPressEnabled];

    if (isLongPressEnabled)
    {
      return 1;
    }
  }

  return 0;
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:animated];

    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:animatedCopy];
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  if ([(CAMExpandingControl *)self isExpanded])
  {
    [(CAMExpandingControl *)self _buttonForHUDManager:managerCopy];
  }

  else
  {
    [(CAMExpandingControl *)self _titleView];
  }
  v5 = ;
  v6 = [(CAMExpandingControl *)self _hudItemForButton:v5];

  return v6;
}

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  v6 = [(CAMExpandingControl *)self _buttonForHUDManager:manager];
  _titleView = [(CAMExpandingControl *)self _titleView];

  selfCopy = v6;
  if (v6 == _titleView)
  {
    selfCopy = self;
  }

  [(CAMExpandingControl *)selfCopy sendActionsForControlEvents:64];
}

- (id)_buttonForHUDManager:(id)manager
{
  v20 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  _menuButtons = [(CAMExpandingControl *)self _menuButtons];
  _titleView = [(CAMExpandingControl *)self _titleView];
  v7 = [_menuButtons arrayByAddingObject:_titleView];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [managerCopy locationOfAccessibilityGestureInView:{v12, v15}];
        v13 = [v12 hitTest:0 withEvent:?];

        if (v13)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)_hudItemForButton:(id)button
{
  buttonCopy = button;
  if (buttonCopy)
  {
    _menuButtons = [(CAMExpandingControl *)self _menuButtons];
    v6 = [_menuButtons indexOfObject:buttonCopy];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _selectedMenuItem = [(CAMExpandingControl *)self _selectedMenuItem];
    }

    else
    {
      menu = [(CAMExpandingControl *)self menu];
      _selectedMenuItem = [menu objectAtIndexedSubscript:v6];
    }

    _configuration = [_selectedMenuItem _configuration];
    v11 = MEMORY[0x1E69DB880];
    v12 = *MEMORY[0x1E69DDCF8];
    traitCollection = [(CAMExpandingControl *)self traitCollection];
    v14 = [v11 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:traitCollection];
    [v14 pointSize];
    v16 = v15;

    _titleView = [(CAMExpandingControl *)self _titleView];

    axHUDSymbolName = [_configuration axHUDSymbolName];
    if (axHUDSymbolName)
    {
      if (_titleView == buttonCopy)
      {
        titleText = 0;
      }

      else
      {
        titleText = [buttonCopy titleText];
      }

      axHUDSymbolConfiguration = [_configuration axHUDSymbolConfiguration];
      v24 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v16];
      v25 = MEMORY[0x1E69DCAB8];
      v26 = [axHUDSymbolConfiguration configurationByApplyingConfiguration:v24];
      v27 = [v25 systemImageNamed:axHUDSymbolName withConfiguration:v26];

      v28 = objc_alloc(MEMORY[0x1E69DC618]);
      v8 = [v28 initWithTitle:titleText image:v27 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    }

    else
    {
      v20 = [_CAMExpandingControlButton alloc];
      [buttonCopy bounds];
      CEKRectWithSize();
      titleText = [(_CAMExpandingControlButton *)v20 initWithFrame:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        titleImage = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v16];
        v22 = [_selectedMenuItem _imageWithConfiguration:titleImage];
        [(_CAMExpandingControlButton *)titleText setTitleImage:v22];
      }

      else
      {
        titleText2 = [buttonCopy titleText];
        v30 = [CAMFont cameraFontOfSize:v16];
        [(_CAMExpandingControlButton *)titleText setTitleText:titleText2 font:v30];

        titleImage = [buttonCopy titleImage];
        [(_CAMExpandingControlButton *)titleText setTitleImage:titleImage];
      }

      -[_CAMExpandingControlButton setSlashed:](titleText, "setSlashed:", [buttonCopy isSlashed]);
      [(_CAMExpandingControlButton *)titleText setBorder:0];
      [(_CAMExpandingControlButton *)titleText setSlashSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(_CAMExpandingControlButton *)titleText setTintColor:labelColor];

      traitOverrides = [(_CAMExpandingControlButton *)titleText traitOverrides];
      [traitOverrides setLegibilityWeight:1];

      v8 = [objc_alloc(MEMORY[0x1E69DC618]) initWithCustomView:titleText];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAMExpandingControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)expansionInsets
{
  top = self->_expansionInsets.top;
  left = self->_expansionInsets.left;
  bottom = self->_expansionInsets.bottom;
  right = self->_expansionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end