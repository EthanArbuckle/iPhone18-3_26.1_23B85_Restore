@interface CAMExpandingControl
- (BOOL)_wantsTitleBackground;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMExpandingControl)initWithFrame:(CGRect)a3;
- (CAMExpandingControlDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)expansionInsets;
- (id)_buttonForHUDManager:(id)a3;
- (id)_createBackgroundWithColor:(id)a3;
- (id)_createMenuButton;
- (id)_hudItemForButton:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (void)_animateExpandedWithAnimations:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handleMenuButtonReleased:(id)a3;
- (void)_setNeedsUpdateMenuButtonsAnimated:(BOOL)a3;
- (void)_updateExpandedBackgroundsAnimated:(BOOL)a3;
- (void)_updateMenuButtonsAnimated:(BOOL)a3;
- (void)_updateMenuButtonsIfNeededAnimated:(BOOL)a3;
- (void)_updateSelectedMenuItemAnimated:(BOOL)a3;
- (void)_updateTitleViewAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5;
- (void)setBackgroundMaterial:(unint64_t)a3;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenu:(id)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectedState:(id)a3 animated:(BOOL)a4;
- (void)setShowsContentShadows:(BOOL)a3;
- (void)setTitleStyle:(int64_t)a3;
@end

@implementation CAMExpandingControl

- (CAMExpandingControl)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAMExpandingControl;
  v3 = [(CAMExpandingControl *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMExpandingControl *)v3 setTintColor:v4];

    v5 = [MEMORY[0x1E695DF70] array];
    menuButtons = v3->__menuButtons;
    v3->__menuButtons = v5;

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
  v2 = [(CAMExpandingControl *)self _titleView];
  [v2 intrinsicContentSize];
  CEKRectWithSize();
  [v2 frameForAlignmentRect:?];
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
  v7 = [(CAMExpandingControl *)self traitCollection];
  [v7 displayScale];
  v80 = v8;

  v9 = [(CAMExpandingControl *)self _titleView];
  v10 = [(CAMExpandingControl *)self _expandedBackground];
  v11 = [(CAMExpandingControl *)self _expandedTitleBackground];
  v12 = [(CAMExpandingControl *)self isExpanded];
  if (v12)
  {
    [(CAMExpandingControl *)self expansionInsets];
  }

  UIRectInset();
  [(CAMExpandingControl *)self intrinsicContentSize];
  CEKSizeScale();
  UISizeRoundToScale();
  v14 = v13;
  v16 = fmin(v15, v6);
  v17 = [(CAMExpandingControl *)self titleStyle];
  if (v17 == 1)
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

  if (v10)
  {
    v19 = v18;
    UIRectCenteredYInRect();
    [v10 setFrame:?];
    v20 = [v10 layer];
    [v20 setCornerRadius:{fmin(v16, 34.0) * 0.5}];

    v18 = v19;
  }

  if (v9)
  {
    CEKRectWithSize();
    v77 = v22;
    v78 = v21;
    v75 = v24;
    v76 = v23;
    UIRectCenteredIntegralRectScale();
    [v11 setBounds:{v78, v77, v76, v75, v80}];
    UIRectGetCenter();
    [v11 setCenter:?];
    v25 = [v11 layer];
    [v25 setCornerRadius:v16 * 0.5];

    [v9 intrinsicContentSize];
    CEKSizeCeilToScale();
    CEKSizeMax();
    CEKRectWithSize();
    [v9 setBounds:?];
    [v9 bounds];
    UIRectCenteredIntegralRectScale();
    UIRectGetCenter();
    [v9 setCenter:v80];
  }

  v26 = [(CAMExpandingControl *)self _menuButtons];
  v27 = [(CAMExpandingControl *)self menu];
  if (v12)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      if (v17 == 1)
      {
        v29 = [(CAMExpandingControl *)self _selectedMenuItem];
        v30 = [v27 indexOfObject:v29];

        v28 = 0x7FFFFFFFFFFFFFFFLL;
        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [v26 mutableCopy];
          [v31 setObject:v9 atIndexedSubscript:v30];

          v28 = v30;
          v26 = v31;
        }
      }
    }

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __37__CAMExpandingControl_layoutSubviews__block_invoke;
    v93[3] = &__block_descriptor_40_e44_B32__0__CAMExpandingControlMenuItem_8Q16_B24l;
    v93[4] = v28;
    v32 = [v27 indexesOfObjectsPassingTest:v93];
    if ([v32 count])
    {
      v33 = [v26 mutableCopy];
      [v33 removeObjectsAtIndexes:v32];

      v26 = v33;
    }

    [v9 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [v10 frame];
    v98.origin.x = v35;
    v98.origin.y = v37;
    v98.size.width = v39;
    v98.size.height = v41;
    CGRectGetMaxX(v98);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v42 = v26;
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
    v32 = v26;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(CAMExpandingControl *)self isExpanded])
  {
    v8 = [(CAMExpandingControl *)self _expandedBackground];
    [(CAMExpandingControl *)self convertPoint:v8 toView:x, y];
    v9 = [v8 pointInside:v7 withEvent:?];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CAMExpandingControl;
    v9 = [(CAMExpandingControl *)&v11 pointInside:v7 withEvent:x, y];
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = CAMExpandingControl;
  v5 = [(CAMExpandingControl *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
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

  v7 = [(CAMExpandingControl *)self _titleView];
  v8 = v5 == v7 && v6;

  if (v8 == 1)
  {
    v9 = self;

    v5 = v9;
  }

LABEL_7:

  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMExpandingControl *)self isHighlighted];
  v10.receiver = self;
  v10.super_class = CAMExpandingControl;
  [(CAMExpandingControl *)&v10 setHighlighted:v3];
  if (v5 != v3)
  {
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:1];
    if (![(CAMExpandingControl *)self isExpanded]|| !v3)
    {
      v6 = [(CAMExpandingControl *)self _titleView];
      v7 = [v6 layer];
      [CAMAnimationHelper setLayer:v7 highlighted:v3 inverted:1 animated:1 layoutStyle:3];

      v8 = [(CAMExpandingControl *)self _expandedTitleBackground];
      v9 = [v8 layer];
      [CAMAnimationHelper setLayer:v9 highlighted:v3 inverted:1 animated:1 layoutStyle:3];
    }
  }
}

- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(CAMExpandingControl *)self isExpanded];
  if (!v9)
  {
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = [v9 touchesForView:self];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [(CAMExpandingControl *)self _menuButtons];
  v14 = [v13 mutableCopy];

  v15 = [(CAMExpandingControl *)self _titleView];

  if (v15)
  {
    v16 = [(CAMExpandingControl *)self _titleView];
    [v14 addObject:v16];
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
  v30 = self;
  v31 = a3;
  v32 = v8;
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
            [v21 locationInView:{v28, v30, v31, v32}];
            v29 = [v28 hitTest:v9 withEvent:?];

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

  a3 = v31;
  v8 = v32;
  self = v30;
  if (v34)
  {
LABEL_25:
    v36.receiver = self;
    v36.super_class = CAMExpandingControl;
    [(CAMExpandingControl *)&v36 sendAction:a3 to:v8 forEvent:v9, v30, v31, v32];
  }

LABEL_26:
}

- (void)setBackgroundMaterial:(unint64_t)a3
{
  if (self->_backgroundMaterial != a3)
  {
    self->_backgroundMaterial = a3;
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
  }
}

- (void)setTitleStyle:(int64_t)a3
{
  if (self->_titleStyle != a3)
  {
    self->_titleStyle = a3;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:0];
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];

    [(CAMExpandingControl *)self setNeedsLayout];
  }
}

- (void)setShowsContentShadows:(BOOL)a3
{
  if (self->_showsContentShadows != a3)
  {
    self->_showsContentShadows = a3;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:0];

    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];
  }
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_expanded != a3)
  {
    v4 = a4;
    v5 = a3;
    if (a4)
    {
      if (a3)
      {
        [(CAMExpandingControl *)self _updateMenuButtonsIfNeededAnimated:0];
      }

      [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:0];
      [(CAMExpandingControl *)self layoutIfNeeded];
      v7 = [(CAMExpandingControl *)self delegate];
      [v7 expandingControl:self willChangeExpanded:v5 animated:1];

      self->_expanded = v5;
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
      v8 = [(CAMExpandingControl *)self delegate];
      [v8 expandingControl:self willChangeExpanded:v5 animated:0];

      self->_expanded = v5;
      [(CAMExpandingControl *)self setNeedsLayout];
    }

    [(CAMExpandingControl *)self _updateMenuButtonsAnimated:v4];
    [(CAMExpandingControl *)self _updateExpandedBackgroundsAnimated:v4];
    [(CAMExpandingControl *)self _updateTitleViewAnimated:v4];
    v9 = [(CAMExpandingControl *)self delegate];
    [v9 expandingControl:self didChangeExpanded:v5 animated:v4];
  }
}

- (void)_animateExpandedWithAnimations:(id)a3
{
  v8 = a3;
  v4 = [(CAMExpandingControl *)self expansionAnimation];
  v5 = 0.5;
  if (v4 == 1)
  {
    v5 = 0.7;
  }

  v6 = 1.0;
  if (v4 == 1)
  {
    v7 = 0.7;
  }

  else
  {
    v7 = 1.0;
  }

  if (v4 == 1)
  {
    v6 = 2.0;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:v5 options:0.0 animations:v7 completion:v6];
}

- (void)_updateExpandedBackgroundsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMExpandingControl *)self _expandedBackground];
  v6 = [(CAMExpandingControl *)self _expandedTitleBackground];
  v7 = [(CAMExpandingControl *)self isExpanded];
  v8 = [(CAMExpandingControl *)self backgroundMaterial];
  if (v8 == 1)
  {
    v9 = MEMORY[0x1E69DC888];
    v11 = 0.0;
    v10 = 0.5;
  }

  else
  {
    if (v8)
    {
      v12 = 0;
      if (v5)
      {
        goto LABEL_6;
      }

LABEL_8:
      v5 = [(CAMExpandingControl *)self _createBackgroundWithColor:v12];
      [(CAMExpandingControl *)self set_expandedBackground:v5];
      [(CAMExpandingControl *)self insertSubview:v5 atIndex:0];
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E69DC888];
    v10 = 0.11;
    v11 = 1.0;
  }

  v12 = [v9 colorWithWhite:v11 alpha:v10];
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  [v5 setBackgroundColor:v12];
LABEL_9:
  v13 = [(CAMExpandingControl *)self _wantsTitleBackground];
  v14 = v13;
  if (!v6 && v13)
  {
    v6 = [(CAMExpandingControl *)self _createBackgroundWithColor:v12];
    [(CAMExpandingControl *)self _setTitleBackground:v6];
    [(CAMExpandingControl *)self insertSubview:v6 aboveSubview:v5];
  }

  if (v3)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.0;
  }

  if (!v7 && v3)
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
  v24 = v7;
  v20 = v5;
  v21 = v6;
  v25 = v14;
  v22 = self;
  v23 = v12;
  v16 = v12;
  v17 = v6;
  v18 = v5;
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
  v2 = self;
  v3 = [(CAMExpandingControl *)self _selectedMenuItem];
  v4 = [v3 _configuration];
  v5 = [v4 titleBorder];

  LOBYTE(v2) = (v5 | [(CAMExpandingControl *)v2 titleStyle]) == 0;
  return v2;
}

- (id)_createBackgroundWithColor:(id)a3
{
  v3 = MEMORY[0x1E69DD250];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setBackgroundColor:v4];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [v5 layer];
  [v7 setCornerCurve:v6];

  [v5 setUserInteractionEnabled:0];

  return v5;
}

- (void)_updateTitleViewAnimated:(BOOL)a3
{
  v3 = a3;
  v26 = [(CAMExpandingControl *)self _selectedMenuItem];
  v5 = [(CAMExpandingControl *)self _titleView];
  v25 = [(CAMExpandingControl *)self isExpanded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v26 titleText];
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [v26 titleImage];
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
  }

  if (v6 | v7 && !v5)
  {
    v5 = objc_alloc_init(_CAMExpandingControlButton);
    [(CAMExpandingControl *)self addSubview:v5];
    [(CAMExpandingControl *)self _setTitleView:v5];
  }

  if (v6)
  {
    [(_CAMExpandingControlButton *)v5 setTitleText:v6];
    [(_CAMExpandingControlButton *)v5 setTitleImage:0];
  }

  else if (v7)
  {
    [(_CAMExpandingControlButton *)v5 setTitleImage:v7];
    [(_CAMExpandingControlButton *)v5 setTitleText:0];
  }

  [(_CAMExpandingControlButton *)v5 setAlpha:1.0];
  v8 = [v26 _configuration];
  v9 = [v8 tintsTitle];

  v10 = [v26 _configuration];
  v11 = [v10 slashesTitle];

  v12 = [(CAMExpandingControl *)self _wantsTitleBackground];
  v13 = [v26 _configuration];
  v14 = [v13 titleBorder];

  [(_CAMExpandingControlButton *)v5 setSlashed:v11 animated:v3];
  [(_CAMExpandingControlButton *)v5 setBorder:v14];
  v15 = [MEMORY[0x1E69DC888] labelColor];
  v16 = [(CAMExpandingControl *)self titleStyle];
  if (v16 == 1)
  {
    if (([(CAMExpandingControl *)self isExpanded]| v9))
    {
      [(CAMExpandingControl *)self tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v18 = ;
    [(_CAMExpandingControlButton *)v5 setTintColor:v18];
  }

  else
  {
    if (v16)
    {
      goto LABEL_27;
    }

    if (v25 && v12)
    {
      v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    else
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      v17 = [(CAMExpandingControl *)self tintColor];
    }

    v18 = v15;
    v15 = v17;
  }

LABEL_27:
  [(_CAMExpandingControlButton *)v5 setTintColor:v15];
  [(_CAMExpandingControlButton *)v5 setOrientation:[(CAMExpandingControl *)self orientation] animated:v3];
  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  v21 = [(_CAMExpandingControlButton *)v5 layer];
  [v21 setShadowOffset:{v19, v20}];

  if ([(CAMExpandingControl *)self showsContentShadows])
  {
    v22 = 0.2;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = [(_CAMExpandingControlButton *)v5 layer];
  *&v24 = v22;
  [v23 setShadowOpacity:v24];
}

- (void)setSelectedState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v7 = [(CAMExpandingControl *)self selectedState];
  if (([v7 isEqualToValue:v8] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedState, a3);
    [(CAMExpandingControl *)self _updateSelectedMenuItemAnimated:v4];
  }
}

- (void)setMenu:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_menu] & 1) == 0)
  {
    objc_storeStrong(&self->_menu, a3);
    [(CAMExpandingControl *)self _updateSelectedMenuItemAnimated:0];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:0];
  }
}

- (void)_updateSelectedMenuItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMExpandingControl *)self selectedState];
  v6 = [(CAMExpandingControl *)self menu];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CAMExpandingControl__updateSelectedMenuItemAnimated___block_invoke;
  v10[3] = &unk_1E76FB238;
  v7 = v5;
  v11 = v7;
  v8 = [v6 indexOfObjectPassingTest:v10];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
    [(CAMExpandingControl *)self _setSelectedMenuItem:v9];
    [(CAMExpandingControl *)self _updateTitleViewAnimated:v3];
    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:v3];
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

- (void)_setNeedsUpdateMenuButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  self->__needsUpdateMenuButtons = 1;
  if ([(CAMExpandingControl *)self isExpanded])
  {

    [(CAMExpandingControl *)self _updateMenuButtonsIfNeededAnimated:v3];
  }
}

- (void)_updateMenuButtonsIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CAMExpandingControl *)self _needsUpdateMenuButtons])
  {
    self->__needsUpdateMenuButtons = 0;

    [(CAMExpandingControl *)self _updateMenuButtonsAnimated:v3];
  }
}

- (void)_updateMenuButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(CAMExpandingControl *)self _menuButtons];
  v6 = [(CAMExpandingControl *)self menu];
  v7 = [(CAMExpandingControl *)self isExpanded];
  while (1)
  {
    v8 = [v5 count];
    if (v8 >= [v6 count])
    {
      break;
    }

    v9 = [(CAMExpandingControl *)self _createMenuButton];
    [(CAMExpandingControl *)self addSubview:v9];
    [v5 addObject:v9];
  }

  while (1)
  {
    v11 = [v5 count];
    if (v11 <= [v6 count])
    {
      break;
    }

    v10 = [v5 lastObject];
    [v10 removeFromSuperview];

    [v5 removeLastObject];
  }

  v12 = [(CAMExpandingControl *)self orientation];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  CAMOrientationTransform(v12, &v36);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__CAMExpandingControl__updateMenuButtonsAnimated___block_invoke;
  v23[3] = &unk_1E76FB260;
  v13 = v6;
  v24 = v13;
  v25 = self;
  v30 = v7;
  v31 = v3;
  v26 = &v32;
  v27 = v36;
  v28 = v37;
  v29 = v38;
  [v5 enumerateObjectsUsingBlock:v23];
  if (*(v33 + 24))
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v5;
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

        [*(*(&v19 + 1) + 8 * v18++) setOrientation:v14 animated:{v3, v19}];
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

- (void)_handleMenuButtonReleased:(id)a3
{
  v4 = a3;
  [(CAMExpandingControl *)self sendActionsForControlEvents:64];
  v5 = [(CAMExpandingControl *)self _menuButtons];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CAMExpandingControl *)self menu];
    v8 = [v7 objectAtIndexedSubscript:v6];
    v9 = [v8 state];
    [(CAMExpandingControl *)self setSelectedState:v9];

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

- (void)_handleLongPress:(id)a3
{
  if ([a3 state] == 1)
  {

    [(CAMExpandingControl *)self sendActionsForControlEvents:0x1000000];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CAMExpandingControl *)self _longPress];

  if (v5 != v4)
  {

    return 1;
  }

  if ([(CAMExpandingControl *)self isExpanded])
  {
  }

  else
  {
    v7 = [(CAMExpandingControl *)self isLongPressEnabled];

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    [(CAMExpandingControl *)self _updateTitleViewAnimated:a4];

    [(CAMExpandingControl *)self _setNeedsUpdateMenuButtonsAnimated:v5];
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  if ([(CAMExpandingControl *)self isExpanded])
  {
    [(CAMExpandingControl *)self _buttonForHUDManager:v4];
  }

  else
  {
    [(CAMExpandingControl *)self _titleView];
  }
  v5 = ;
  v6 = [(CAMExpandingControl *)self _hudItemForButton:v5];

  return v6;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v6 = [(CAMExpandingControl *)self _buttonForHUDManager:a3];
  v4 = [(CAMExpandingControl *)self _titleView];

  v5 = v6;
  if (v6 == v4)
  {
    v5 = self;
  }

  [(CAMExpandingControl *)v5 sendActionsForControlEvents:64];
}

- (id)_buttonForHUDManager:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMExpandingControl *)self _menuButtons];
  v6 = [(CAMExpandingControl *)self _titleView];
  v7 = [v5 arrayByAddingObject:v6];

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
        [v4 locationOfAccessibilityGestureInView:{v12, v15}];
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

- (id)_hudItemForButton:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMExpandingControl *)self _menuButtons];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(CAMExpandingControl *)self _selectedMenuItem];
    }

    else
    {
      v9 = [(CAMExpandingControl *)self menu];
      v7 = [v9 objectAtIndexedSubscript:v6];
    }

    v10 = [v7 _configuration];
    v11 = MEMORY[0x1E69DB880];
    v12 = *MEMORY[0x1E69DDCF8];
    v13 = [(CAMExpandingControl *)self traitCollection];
    v14 = [v11 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:v13];
    [v14 pointSize];
    v16 = v15;

    v17 = [(CAMExpandingControl *)self _titleView];

    v18 = [v10 axHUDSymbolName];
    if (v18)
    {
      if (v17 == v4)
      {
        v19 = 0;
      }

      else
      {
        v19 = [v4 titleText];
      }

      v23 = [v10 axHUDSymbolConfiguration];
      v24 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v16];
      v25 = MEMORY[0x1E69DCAB8];
      v26 = [v23 configurationByApplyingConfiguration:v24];
      v27 = [v25 systemImageNamed:v18 withConfiguration:v26];

      v28 = objc_alloc(MEMORY[0x1E69DC618]);
      v8 = [v28 initWithTitle:v19 image:v27 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    }

    else
    {
      v20 = [_CAMExpandingControlButton alloc];
      [v4 bounds];
      CEKRectWithSize();
      v19 = [(_CAMExpandingControlButton *)v20 initWithFrame:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v16];
        v22 = [v7 _imageWithConfiguration:v21];
        [(_CAMExpandingControlButton *)v19 setTitleImage:v22];
      }

      else
      {
        v29 = [v4 titleText];
        v30 = [CAMFont cameraFontOfSize:v16];
        [(_CAMExpandingControlButton *)v19 setTitleText:v29 font:v30];

        v21 = [v4 titleImage];
        [(_CAMExpandingControlButton *)v19 setTitleImage:v21];
      }

      -[_CAMExpandingControlButton setSlashed:](v19, "setSlashed:", [v4 isSlashed]);
      [(_CAMExpandingControlButton *)v19 setBorder:0];
      [(_CAMExpandingControlButton *)v19 setSlashSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v31 = [MEMORY[0x1E69DC888] labelColor];
      [(_CAMExpandingControlButton *)v19 setTintColor:v31];

      v32 = [(_CAMExpandingControlButton *)v19 traitOverrides];
      [v32 setLegibilityWeight:1];

      v8 = [objc_alloc(MEMORY[0x1E69DC618]) initWithCustomView:v19];
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