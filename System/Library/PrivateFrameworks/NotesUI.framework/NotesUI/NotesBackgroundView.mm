@interface NotesBackgroundView
- (ICAccessibilityChildReparentingController)axChildReparentingController;
- (ICAccessibilityChildReparentingProvider)elementForAccessibilityReparenting;
- (NotesBackgroundView)initWithCoder:(id)coder;
- (NotesBackgroundView)initWithFrame:(CGRect)frame;
- (NotesBackgroundViewAccessibilityElementReparentingDelegate)accessibilityElementReparentingDelegate;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElements;
- (id)scrollViewDescendantOfView:(id)view;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setOverrideUserInterfaceStyle:(int64_t)style;
- (void)addConstraintsForSafeAreaLayoutGuide:(id)guide bottomToolbar:(id)toolbar toContainer:(id)container;
- (void)addConstraintsForSafeAreaLayoutGuide:(id)guide toContainer:(id)container;
- (void)addSubview:(id)subview;
- (void)addSubviewAboveAllViews:(id)views;
- (void)applyContentViewBezelsStandalone:(BOOL)standalone;
- (void)commonInit;
- (void)scrollView:(id)view didChangeContentOffset:(CGPoint)offset;
- (void)setContentView:(id)view;
- (void)setContentView:(id)view useSafeAreaLayoutGuide:(BOOL)guide standalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force;
- (void)setContentView:(id)view useSafeAreaLayoutGuide:(BOOL)guide topMargin:(double)margin bottomMargin:(double)bottomMargin leadingMargin:(double)leadingMargin trailingMargin:(double)trailingMargin standalone:(BOOL)standalone force:(BOOL)self0;
- (void)setContentViewVisible:(BOOL)visible;
- (void)setHasBarBlur:(BOOL)blur;
- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force;
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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(NotesBarBackgroundView *)self->_topBarView setColor:systemBackgroundColor];

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

- (NotesBackgroundView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  v3 = [(NotesBackgroundView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NotesBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (NotesBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  v3 = [(NotesBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NotesBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force
{
  forceCopy = force;
  leadingMarginCopy = leadingMargin;
  marginCopy = margin;
  standaloneCopy = standalone;
  contentView = [(NotesBackgroundView *)self contentView];
  [(NotesBackgroundView *)self setContentView:contentView useSafeAreaLayoutGuide:1 standalone:standaloneCopy needsAdditionalBottomMargin:marginCopy needsAdditionalLeadingMargin:leadingMarginCopy force:forceCopy];
}

- (void)applyContentViewBezelsStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    if (standaloneCopy)
    {
      v5 = 34.0;
    }

    else
    {
      v5 = 16.0;
    }

    contentView = [(NotesBackgroundView *)self contentView];
    [contentView ic_applyRoundedCornersWithTopLeadingRadius:16.0 topTrailingRadius:16.0 bottomLeadingRadius:v5 bottomTrailingRadius:34.0];

    contentView2 = [(NotesBackgroundView *)self contentView];
    layer = [contentView2 layer];
    [layer setMasksToBounds:1];
  }
}

- (void)setHasBarBlur:(BOOL)blur
{
  blurCopy = blur;
  self->_hasBarBlur = blur;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = self->_topBarView;

    [(NotesBarBackgroundView *)topBarView setHasBlur:blurCopy];
  }
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v6 _setOverrideUserInterfaceStyle:?];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = [(NotesBackgroundView *)self topBarView];
    [topBarView _setOverrideUserInterfaceStyle:style];
  }
}

- (void)addConstraintsForSafeAreaLayoutGuide:(id)guide toContainer:(id)container
{
  guideCopy = guide;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = [(NotesBackgroundView *)self topBarView];
    bottomAnchor = [topBarView bottomAnchor];
    topAnchor = [guideCopy topAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:topAnchor];

    [v8 setActive:1];
  }
}

- (void)addConstraintsForSafeAreaLayoutGuide:(id)guide bottomToolbar:(id)toolbar toContainer:(id)container
{
  guideCopy = guide;
  containerCopy = container;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = [(NotesBackgroundView *)self topBarView];
    bottomAnchor = [topBarView bottomAnchor];
    topAnchor = [guideCopy topAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:topAnchor];
    [containerCopy addConstraint:v11];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v7 _dynamicUserInterfaceTraitDidChange];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    ic_appearanceInfo = [(UIView *)self ic_appearanceInfo];
    [ic_appearanceInfo navigationBarAlpha];
    v5 = v4;
    topBarView = [(NotesBackgroundView *)self topBarView];
    [topBarView setAlpha:v5];
  }
}

- (void)scrollView:(id)view didChangeContentOffset:(CGPoint)offset
{
  y = offset.y;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    topBarView = [(NotesBackgroundView *)self topBarView];
    [topBarView frame];
    v8 = v7 + -15.0 > -y;

    topBarView2 = [(NotesBackgroundView *)self topBarView];
    [topBarView2 setHidden:v8];
  }
}

- (id)scrollViewDescendantOfView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [(NotesBackgroundView *)self scrollViewDescendantOfView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setContentViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_contentViewVisible = visible;
  contentView = [(NotesBackgroundView *)self contentView];
  v6 = contentView;
  v5 = 0.0;
  if (visibleCopy)
  {
    v5 = 1.0;
  }

  [contentView setAlpha:v5];
}

- (void)setContentView:(id)view
{
  v4 = MEMORY[0x1E69DC938];
  viewCopy = view;
  -[NotesBackgroundView setContentView:useSafeAreaLayoutGuide:standalone:needsAdditionalBottomMargin:needsAdditionalLeadingMargin:force:](self, "setContentView:useSafeAreaLayoutGuide:standalone:needsAdditionalBottomMargin:needsAdditionalLeadingMargin:force:", viewCopy, [v4 ic_isVision], -[UIView ic_hasCompactWidth](self, "ic_hasCompactWidth"), 1, 0, 0);
}

- (void)setContentView:(id)view useSafeAreaLayoutGuide:(BOOL)guide standalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force
{
  forceCopy = force;
  leadingMarginCopy = leadingMargin;
  marginCopy = margin;
  standaloneCopy = standalone;
  guideCopy = guide;
  v14 = MEMORY[0x1E69DC938];
  viewCopy = view;
  ic_isVision = [v14 ic_isVision];
  if ((standaloneCopy || leadingMarginCopy) & [MEMORY[0x1E69DC938] ic_isVision])
  {
    v16 = 12.0;
  }

  else
  {
    v16 = 0.0;
  }

  if ((ic_isVision & marginCopy) != 0)
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

  [(NotesBackgroundView *)self setContentView:viewCopy useSafeAreaLayoutGuide:guideCopy topMargin:standaloneCopy bottomMargin:forceCopy leadingMargin:0.0 trailingMargin:v17 standalone:v16 force:v18];
}

- (void)setContentView:(id)view useSafeAreaLayoutGuide:(BOOL)guide topMargin:(double)margin bottomMargin:(double)bottomMargin leadingMargin:(double)leadingMargin trailingMargin:(double)trailingMargin standalone:(BOOL)standalone force:(BOOL)self0
{
  forceCopy = force;
  standaloneCopy = standalone;
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy || forceCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = self->_contentView;
    if (v22)
    {
      [(NotesBackgroundView *)self insertSubview:v22 atIndex:0];
    }

    array = [MEMORY[0x1E695DF70] array];
    if (guide)
    {
      safeAreaLayoutGuide = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
    }

    else
    {
      leadingAnchor = [(NotesBackgroundView *)self leadingAnchor];
    }

    leadingAnchor2 = [(UIView *)self->_contentView leadingAnchor];
    v44 = leadingAnchor;
    v27 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:leadingMargin];

    v43 = v27;
    [array addObject:v27];
    if (guide)
    {
      safeAreaLayoutGuide2 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      widthAnchor = [safeAreaLayoutGuide2 widthAnchor];
    }

    else
    {
      widthAnchor = [(NotesBackgroundView *)self widthAnchor];
    }

    widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
    trailingMargin = [widthAnchor2 constraintEqualToAnchor:widthAnchor constant:-leadingMargin - trailingMargin];

    [array addObject:trailingMargin];
    if (guide)
    {
      safeAreaLayoutGuide3 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide3 topAnchor];
    }

    else
    {
      topAnchor = [(NotesBackgroundView *)self topAnchor];
    }

    topAnchor2 = [(UIView *)self->_contentView topAnchor];
    v35 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:margin];

    [array addObject:v35];
    v42 = standaloneCopy;
    if (guide)
    {
      safeAreaLayoutGuide4 = [(NotesBackgroundView *)self safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
    }

    else
    {
      bottomAnchor = [(NotesBackgroundView *)self bottomAnchor];
    }

    bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottomMargin];

    [array addObject:v39];
    v40 = MEMORY[0x1E696ACD8];
    v41 = [array copy];
    [v40 activateConstraints:v41];

    if ([MEMORY[0x1E69DC938] ic_isVision] && !-[NotesBackgroundView isPreviewing](self, "isPreviewing"))
    {
      [(NotesBackgroundView *)self applyContentViewBezelsStandalone:v42];
    }
  }

  MEMORY[0x1EEE66BB8](contentView);
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  contentView = [(NotesBackgroundView *)self contentView];

  if (contentView)
  {
    contentView2 = [(NotesBackgroundView *)self contentView];
    [(NotesBackgroundView *)self insertSubview:subviewCopy aboveSubview:contentView2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NotesBackgroundView;
    [(NotesBackgroundView *)&v7 addSubview:subviewCopy];
  }
}

- (void)addSubviewAboveAllViews:(id)views
{
  v3.receiver = self;
  v3.super_class = NotesBackgroundView;
  [(NotesBackgroundView *)&v3 addSubview:views];
}

- (id)accessibilityElements
{
  axChildReparentingController = [(NotesBackgroundView *)self axChildReparentingController];
  allowsAccessibilityChildReparenting = [axChildReparentingController allowsAccessibilityChildReparenting];

  if (allowsAccessibilityChildReparenting)
  {
    elementForAccessibilityReparenting = [(NotesBackgroundView *)self elementForAccessibilityReparenting];
    childElementsForAccessibilityReparenting = [elementForAccessibilityReparenting childElementsForAccessibilityReparenting];

    array = [MEMORY[0x1E695DF70] array];
    _accessibleSubviews = [(NotesBackgroundView *)self _accessibleSubviews];
    [array addObjectsFromArray:_accessibleSubviews];

    [array addObjectsFromArray:childElementsForAccessibilityReparenting];
    accessibilityElementReparentingDelegate = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
    icaxDateView = [accessibilityElementReparentingDelegate icaxDateView];

    accessibilityElementReparentingDelegate2 = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
    icaxUserTitleView = [accessibilityElementReparentingDelegate2 icaxUserTitleView];

    if (icaxDateView)
    {
      [array removeObject:icaxDateView];
      [array insertObject:icaxDateView atIndex:0];
    }

    if (icaxUserTitleView)
    {
      [array removeObject:icaxUserTitleView];
      [array insertObject:icaxUserTitleView atIndex:0];
    }

    accessibilityElements = [array copy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NotesBackgroundView;
    accessibilityElements = [(NotesBackgroundView *)&v15 accessibilityElements];
  }

  return accessibilityElements;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accessibilityElementReparentingDelegate = [(NotesBackgroundView *)self accessibilityElementReparentingDelegate];
  icaxMiniPlayerView = [accessibilityElementReparentingDelegate icaxMiniPlayerView];

  if (icaxMiniPlayerView)
  {
    window = [(NotesBackgroundView *)self window];
    [(NotesBackgroundView *)self convertPoint:window toView:x, y];
    v12 = v11;
    v14 = v13;

    defaultVoiceOverOptions = [MEMORY[0x1E69DB5C8] defaultVoiceOverOptions];
    v16 = [icaxMiniPlayerView _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];

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
  v23 = [(NotesBackgroundView *)&v25 _accessibilityHitTest:eventCopy withEvent:x, y];
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