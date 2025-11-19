@interface NotesBackgroundView
- (ICAccessibilityChildReparentingController)axChildReparentingController;
- (ICAccessibilityChildReparentingProvider)elementForAccessibilityReparenting;
- (NotesBackgroundView)initWithCoder:(id)a3;
- (NotesBackgroundView)initWithFrame:(CGRect)a3;
- (NotesBackgroundViewAccessibilityElementReparentingDelegate)accessibilityElementReparentingDelegate;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElements;
- (id)scrollViewDescendantOfView:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)addConstraintsForSafeAreaLayoutGuide:(id)a3 bottomToolbar:(id)a4 toContainer:(id)a5;
- (void)addConstraintsForSafeAreaLayoutGuide:(id)a3 toContainer:(id)a4;
- (void)addSubview:(id)a3;
- (void)addSubviewAboveAllViews:(id)a3;
- (void)applyContentViewBezelsStandalone:(BOOL)a3;
- (void)commonInit;
- (void)scrollView:(id)a3 didChangeContentOffset:(CGPoint)a4;
- (void)setContentView:(id)a3;
- (void)setContentView:(id)a3 useSafeAreaLayoutGuide:(BOOL)a4 standalone:(BOOL)a5 needsAdditionalBottomMargin:(BOOL)a6 needsAdditionalLeadingMargin:(BOOL)a7 force:(BOOL)a8;
- (void)setContentView:(id)a3 useSafeAreaLayoutGuide:(BOOL)a4 topMargin:(double)a5 bottomMargin:(double)a6 leadingMargin:(double)a7 trailingMargin:(double)a8 standalone:(BOOL)a9 force:(BOOL)a10;
- (void)setContentViewVisible:(BOOL)a3;
- (void)setHasBarBlur:(BOOL)a3;
- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5 force:(BOOL)a6;
@end

@implementation NotesBackgroundView

- (void)commonInit
{
  if (([MEMORY[0x1E69DC938] ic_isVision] & 1) == 0 && (ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v3 = [NotesBarBackgroundView alloc];
    v4 = [(NotesBarBackgroundView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    topBarView = self->_topBarView;
    self->_topBarView = v4;

    [(NotesBarBackgroundView *)self->_topBarView setClipsToBounds:1];
    [(NotesBarBackgroundView *)self->_topBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(NotesBarBackgroundView *)self->_topBarView setColor:v6];

    [(NotesBackgroundView *)self addSubview:self->_topBarView];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Topbarview.isa, self->_topBarView, 0);
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_topBarView]|" options:0 metrics:0 views:v7];
    [(NotesBackgroundView *)self addConstraints:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:3 relatedBy:0 toItem:self->_topBarView attribute:3 multiplier:1.0 constant:0.0];
    [(NotesBackgroundView *)self addConstraint:v9];
  }

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(NotesBackgroundView *)self setContentView:v11];
  }
}

- (NotesBackgroundView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  v3 = [(NotesBackgroundView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NotesBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (NotesBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  v3 = [(NotesBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NotesBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5 force:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [(NotesBackgroundView *)self contentView];
  [(NotesBackgroundView *)self setContentView:v11 useSafeAreaLayoutGuide:1 standalone:v9 needsAdditionalBottomMargin:v8 needsAdditionalLeadingMargin:v7 force:v6];
}

- (void)applyContentViewBezelsStandalone:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    if (v3)
    {
      v5 = 34.0;
    }

    else
    {
      v5 = 16.0;
    }

    v6 = [(NotesBackgroundView *)self contentView];
    [v6 ic_applyRoundedCornersWithTopLeadingRadius:16.0 topTrailingRadius:16.0 bottomLeadingRadius:v5 bottomTrailingRadius:34.0];

    v8 = [(NotesBackgroundView *)self contentView];
    v7 = [v8 layer];
    [v7 setMasksToBounds:1];
  }
}

- (void)setHasBarBlur:(BOOL)a3
{
  v3 = a3;
  self->_hasBarBlur = a3;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = self->_topBarView;

    [(NotesBarBackgroundView *)topBarView setHasBlur:v3];
  }
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v6 _setOverrideUserInterfaceStyle:?];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v5 = [(NotesBackgroundView *)self topBarView];
    [v5 _setOverrideUserInterfaceStyle:a3];
  }
}

- (void)addConstraintsForSafeAreaLayoutGuide:(id)a3 toContainer:(id)a4
{
  v9 = a3;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v5 = [(NotesBackgroundView *)self topBarView];
    v6 = [v5 bottomAnchor];
    v7 = [v9 topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setActive:1];
  }
}

- (void)addConstraintsForSafeAreaLayoutGuide:(id)a3 bottomToolbar:(id)a4 toContainer:(id)a5
{
  v12 = a3;
  v7 = a5;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v8 = [(NotesBackgroundView *)self topBarView];
    v9 = [v8 bottomAnchor];
    v10 = [v12 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v7 addConstraint:v11];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v7 _dynamicUserInterfaceTraitDidChange];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v3 = [(UIView *)self ic_appearanceInfo];
    [v3 navigationBarAlpha];
    v5 = v4;
    v6 = [(NotesBackgroundView *)self topBarView];
    [v6 setAlpha:v5];
  }
}

- (void)scrollView:(id)a3 didChangeContentOffset:(CGPoint)a4
{
  y = a4.y;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v6 = [(NotesBackgroundView *)self topBarView];
    [v6 frame];
    v8 = v7 + -15.0 > -y;

    v9 = [(NotesBackgroundView *)self topBarView];
    [v9 setHidden:v8];
  }
}

- (id)scrollViewDescendantOfView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NotesBackgroundView *)self scrollViewDescendantOfView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (void)setContentViewVisible:(BOOL)a3
{
  v3 = a3;
  self->_contentViewVisible = a3;
  v4 = [(NotesBackgroundView *)self contentView];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [v4 setAlpha:v5];
}

- (void)setContentView:(id)a3
{
  v4 = MEMORY[0x1E69DC938];
  v5 = a3;
  -[NotesBackgroundView setContentView:useSafeAreaLayoutGuide:standalone:needsAdditionalBottomMargin:needsAdditionalLeadingMargin:force:](self, "setContentView:useSafeAreaLayoutGuide:standalone:needsAdditionalBottomMargin:needsAdditionalLeadingMargin:force:", v5, [v4 ic_isVision], -[UIView ic_hasCompactWidth](self, "ic_hasCompactWidth"), 1, 0, 0);
}

- (void)setContentView:(id)a3 useSafeAreaLayoutGuide:(BOOL)a4 standalone:(BOOL)a5 needsAdditionalBottomMargin:(BOOL)a6 needsAdditionalLeadingMargin:(BOOL)a7 force:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = MEMORY[0x1E69DC938];
  v19 = a3;
  v15 = [v14 ic_isVision];
  if ((v11 || v9) & [MEMORY[0x1E69DC938] ic_isVision])
  {
    v16 = 12.0;
  }

  else
  {
    v16 = 0.0;
  }

  if ((v15 & v10) != 0)
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 0.0;
  }

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v18 = 12.0;
  }

  else
  {
    v18 = 0.0;
  }

  [(NotesBackgroundView *)self setContentView:v19 useSafeAreaLayoutGuide:v12 topMargin:v11 bottomMargin:v8 leadingMargin:0.0 trailingMargin:v17 standalone:v16 force:v18];
}

- (void)setContentView:(id)a3 useSafeAreaLayoutGuide:(BOOL)a4 topMargin:(double)a5 bottomMargin:(double)a6 leadingMargin:(double)a7 trailingMargin:(double)a8 standalone:(BOOL)a9 force:(BOOL)a10
{
  v10 = a10;
  v11 = a9;
  v19 = a3;
  contentView = self->_contentView;
  if (contentView != v19 || v10)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = self->_contentView;
    if (v22)
    {
      [(NotesBackgroundView *)self insertSubview:v22 atIndex:0];
    }

    v23 = [MEMORY[0x1E695DF70] array];
    if (a4)
    {
      v24 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      v25 = [v24 leadingAnchor];
    }

    else
    {
      v25 = [(NotesBackgroundView *)self leadingAnchor];
    }

    v26 = [(UIView *)self->_contentView leadingAnchor];
    v44 = v25;
    v27 = [v26 constraintEqualToAnchor:v25 constant:a7];

    v43 = v27;
    [v23 addObject:v27];
    if (a4)
    {
      v28 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      v29 = [v28 widthAnchor];
    }

    else
    {
      v29 = [(NotesBackgroundView *)self widthAnchor];
    }

    v30 = [(UIView *)self->_contentView widthAnchor];
    v31 = [v30 constraintEqualToAnchor:v29 constant:-a7 - a8];

    [v23 addObject:v31];
    if (a4)
    {
      v32 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      v33 = [v32 topAnchor];
    }

    else
    {
      v33 = [(NotesBackgroundView *)self topAnchor];
    }

    v34 = [(UIView *)self->_contentView topAnchor];
    v35 = [v34 constraintEqualToAnchor:v33 constant:a5];

    [v23 addObject:v35];
    v42 = v11;
    if (a4)
    {
      v36 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      v37 = [v36 bottomAnchor];
    }

    else
    {
      v37 = [(NotesBackgroundView *)self bottomAnchor];
    }

    v38 = [(UIView *)self->_contentView bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:a6];

    [v23 addObject:v39];
    v40 = MEMORY[0x1E696ACD8];
    v41 = [v23 copy];
    [v40 activateConstraints:v41];

    if ([MEMORY[0x1E69DC938] ic_isVision] && !-[NotesBackgroundView isPreviewing](self, "isPreviewing"))
    {
      [(NotesBackgroundView *)self applyContentViewBezelsStandalone:v42];
    }
  }

  MEMORY[0x1EEE66BB8](contentView);
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = [(NotesBackgroundView *)self contentView];

  if (v5)
  {
    v6 = [(NotesBackgroundView *)self contentView];
    [(NotesBackgroundView *)self insertSubview:v4 aboveSubview:v6];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NotesBackgroundView;
    [(NotesBackgroundView *)&v7 addSubview:v4];
  }
}

- (void)addSubviewAboveAllViews:(id)a3
{
  v3.receiver = self;
  v3.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v3 addSubview:a3];
}

- (id)accessibilityElements
{
  v3 = [(NotesBackgroundView *)self axChildReparentingController];
  v4 = [v3 allowsAccessibilityChildReparenting];

  if (v4)
  {
    v5 = [(NotesBackgroundView *)self elementForAccessibilityReparenting];
    v6 = [v5 childElementsForAccessibilityReparenting];

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(NotesBackgroundView *)self _accessibleSubviews];
    [v7 addObjectsFromArray:v8];

    [v7 addObjectsFromArray:v6];
    v9 = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
    v10 = [v9 icaxDateView];

    v11 = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
    v12 = [v11 icaxUserTitleView];

    if (v10)
    {
      [v7 removeObject:v10];
      [v7 insertObject:v10 atIndex:0];
    }

    if (v12)
    {
      [v7 removeObject:v12];
      [v7 insertObject:v12 atIndex:0];
    }

    v13 = [v7 copy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NotesBackgroundView;
    v13 = [(NotesBackgroundView *)&v15 accessibilityElements];
  }

  return v13;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
  v9 = [v8 icaxMiniPlayerView];

  if (v9)
  {
    v10 = [(NotesBackgroundView *)self window];
    [(NotesBackgroundView *)self convertPoint:v10 toView:x, y];
    v12 = v11;
    v14 = v13;

    v15 = [MEMORY[0x1E69DB5C8] defaultVoiceOverOptions];
    v16 = [v9 _accessibilityLeafDescendantsWithOptions:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
LABEL_4:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        [v22 accessibilityFrame];
        v33.x = v12;
        v33.y = v14;
        if (CGRectContainsPoint(v34, v33))
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v19)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v23 = v22;

      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v25.receiver = self;
  v25.super_class = NotesBackgroundView;
  v23 = [(NotesBackgroundView *)&v25 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_13:

  return v23;
}

- (ICAccessibilityChildReparentingController)axChildReparentingController
{
  WeakRetained = objc_loadWeakRetained(&self->_axChildReparentingController);

  return WeakRetained;
}

- (NotesBackgroundViewAccessibilityElementReparentingDelegate)accessibilityElementReparentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityElementReparentingDelegate);

  return WeakRetained;
}

- (ICAccessibilityChildReparentingProvider)elementForAccessibilityReparenting
{
  WeakRetained = objc_loadWeakRetained(&self->_elementForAccessibilityReparenting);

  return WeakRetained;
}

@end