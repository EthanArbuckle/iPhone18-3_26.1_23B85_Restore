@interface SFCapsuleNavigationBar
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)_shouldCenterButtonsBetweenEdgeAndTitle:(id)title;
- (BOOL)_shouldCenterLabels;
- (BOOL)_showsSearchIconInTitleContainer;
- (BOOL)_transitionFromButtons:(id)buttons toButtons:(id)toButtons withConstraintsToDeactivate:(id)deactivate;
- (CGAffineTransform)keyContentTransform;
- (CGAffineTransform)microphoneContentTransform;
- (CGPoint)_minimumEdgeMargin;
- (CGPoint)_titleToEdgeMargin;
- (CGRect)keyContentRect;
- (CGRect)urlOutlineFrameRelativeToView:(id)view;
- (CGSize)urlSize;
- (NSNumber)microphoneContentOriginX;
- (SFCapsuleContentViewSizeUpdating)sizeUpdater;
- (SFCapsuleNavigationBar)initWithCoder:(id)coder;
- (SFCapsuleNavigationBar)initWithFrame:(CGRect)frame;
- (SFCapsuleNavigationBar)initWithFrame:(CGRect)frame layoutStyle:(int64_t)style;
- (UIView)unclippedContainer;
- (_SFNavigationBarDelegateCommon)delegate;
- (double)_interButtonSpacing;
- (double)_titleToButtonSpacing;
- (double)keyContentBaselineBottomInset;
- (double)keyContentCapHeightTopInset;
- (id)_horizontalAlignmentConstraintForLabel:(id)label;
- (id)_labelTextStyle;
- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation;
- (id)barItemTargetForAnimatingToBarItem:(int64_t)item;
- (id)initForSizingWithFrame:(CGRect)frame;
- (id)initForSizingWithFrame:(CGRect)frame layoutStyle:(int64_t)style;
- (void)_createLeadingButtonConstraints;
- (void)_createTrailingButtonConstraints;
- (void)_initializeLayoutInfo:(id)info forPrimaryLabel:(BOOL)label addingConstraints:(id)constraints;
- (void)_invalidateHeight;
- (void)_setHidesTitle:(BOOL)title;
- (void)_updateButtonAlphaForMinimizedPercent:(double)percent;
- (void)_updateButtonsTransform;
- (void)_updateKeyboardInputMode:(id)mode;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updatePageFormatButtonForNavigationBarItem:(id)item shouldResetDiscovery:(BOOL)discovery;
- (void)_updateProgressViewFillColor;
- (void)_updateSecurityAnnotation;
- (void)_updateShowsPrivateAnnotation;
- (void)_updateShowsProgressView;
- (void)_updateTitleContainerAlpha;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)availabilityDisplayController:(id)controller didUpdateWithState:(int64_t)state;
- (void)layoutSubviews;
- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display;
- (void)navigationBarItemDidUpdateFluidProgressController:(id)controller;
- (void)navigationBarItemDidUpdateMediaStateIcon:(id)icon;
- (void)navigationBarItemDidUpdateOverlayNarrowConfiguration:(id)configuration;
- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)annotation;
- (void)navigationBarItemDidUpdateShowsExtensionsAvailability:(id)availability;
- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)indicator;
- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)buttons;
- (void)navigationBarItemDidUpdateText:(id)text;
- (void)prepareForSizingNavigationBar:(id)bar;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setKeyContentTransform:(CGAffineTransform *)transform;
- (void)setLayoutStyle:(int64_t)style;
- (void)setLeadingButtons:(id)buttons;
- (void)setMicrophoneContentTransform:(CGAffineTransform *)transform;
- (void)setMinimizationPercent:(double)percent;
- (void)setMinimized:(BOOL)minimized;
- (void)setNonKeyContentAlpha:(double)alpha;
- (void)setSelected:(BOOL)selected;
- (void)setTheme:(id)theme;
- (void)setTrailingButtons:(id)buttons;
- (void)updateAccessibilityIdentifier;
- (void)updateConstraints;
- (void)updateLabelTypesWithAvailabilityDisplayController:(id)controller animated:(BOOL)animated;
- (void)willChangeToMinimized:(BOOL)minimized coordinator:(id)coordinator;
@end

@implementation SFCapsuleNavigationBar

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

    [(SFCapsuleNavigationBar *)self setSemanticContentAttribute:v5];

    [(SFCapsuleNavigationBar *)self setNeedsLayout];
  }
}

- (BOOL)_shouldCenterLabels
{
  title = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer title];
  v4 = [title length] != 0;

  return self->_isMinimized || v4;
}

- (BOOL)_showsSearchIconInTitleContainer
{
  v3 = [(NSArray *)self->_externalLeadingButtons count];
  if (v3)
  {
    item = self->_item;

    LOBYTE(v3) = [(SFNavigationBarItem *)item showsSearchIndicator];
  }

  return v3;
}

- (void)_updateButtonsTransform
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v25, 0, sizeof(v25));
  if (self->_isMinimized)
  {
    CGAffineTransformMakeScale(&v25, 0.7, 0.7);
  }

  else
  {
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    *&v25.a = *MEMORY[0x1E695EFD0];
    *&v25.c = v3;
    *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_leadingButtons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v20 = v25;
        [v9 setTransform:&v20];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_trailingButtons;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        v20 = v25;
        [v15 setTransform:{&v20, v16}];
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v12);
  }
}

- (UIView)unclippedContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_unclippedContainer);

  return WeakRetained;
}

- (id)_labelTextStyle
{
  if (self->_isMinimized)
  {
    v2 = MEMORY[0x1E69DDD08];
  }

  else
  {
    v2 = MEMORY[0x1E69DDCF8];
  }

  return *v2;
}

- (void)_updateSecurityAnnotation
{
  _labelTextStyle = [(SFCapsuleNavigationBar *)self _labelTextStyle];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleTextStyle:_labelTextStyle];

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setHasFocusedSensitiveInputField:[(SFNavigationBarItem *)self->_item hasFocusedSensitiveFieldOnCurrentPage]];
  securityAnnotation = [(SFNavigationBarItem *)self->_item securityAnnotation];
  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setSecurityAnnotation:securityAnnotation];
}

- (void)_updateShowsPrivateAnnotation
{
  if (self->_isMinimized)
  {
    v3 = _SFIsPrivateTintStyle([(_SFBarTheme *)self->_theme tintStyle]);
  }

  else
  {
    v3 = 0;
  }

  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setShowsPrivateAnnotation:v3];
}

- (void)updateConstraints
{
  v27.receiver = self;
  v27.super_class = SFCapsuleNavigationBar;
  [(SFCapsuleNavigationBar *)&v27 updateConstraints];
  layoutMarginsGuide = [(SFCapsuleNavigationBar *)self layoutMarginsGuide];
  if (!self->_leadingButtonConstraints)
  {
    [(SFCapsuleNavigationBar *)self _createLeadingButtonConstraints];
  }

  if (!self->_trailingButtonConstraints)
  {
    [(SFCapsuleNavigationBar *)self _createTrailingButtonConstraints];
  }

  if (!self->_textVerticalAlignmentConstraints)
  {
    [(SFCapsuleNavigationBar *)self _titleToEdgeMargin];
    v5 = v4;
    array = [MEMORY[0x1E695DF70] array];
    centerYAnchor = [(UILayoutGuide *)self->_textVerticalAlignmentGuide centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v9];

    _shouldCenterLabels = [(SFCapsuleNavigationBar *)self _shouldCenterLabels];
    textVerticalAlignmentGuide = self->_textVerticalAlignmentGuide;
    if (_shouldCenterLabels)
    {
      centerXAnchor = [(UILayoutGuide *)textVerticalAlignmentGuide centerXAnchor];
      [(SFCapsuleNavigationBar *)self centerXAnchor];
    }

    else
    {
      centerXAnchor = [(UILayoutGuide *)textVerticalAlignmentGuide leadingAnchor];
      [(SFCapsuleNavigationBar *)self leadingAnchor];
    }
    v13 = ;
    v14 = [centerXAnchor constraintEqualToAnchor:v13];
    LODWORD(v15) = 1112276992;
    v16 = [v14 sf_withPriority:v15];
    [array addObject:v16];

    topAnchor = [(UILayoutGuide *)self->_textVerticalAlignmentGuide topAnchor];
    topAnchor2 = [(SFCapsuleNavigationBar *)self topAnchor];
    v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v5];
    [array addObject:v19];

    bottomAnchor = [(UILayoutGuide *)self->_textVerticalAlignmentGuide bottomAnchor];
    bottomAnchor2 = [(SFCapsuleNavigationBar *)self bottomAnchor];
    v22 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v5];
    [array addObject:v22];

    v23 = [array copy];
    textVerticalAlignmentConstraints = self->_textVerticalAlignmentConstraints;
    self->_textVerticalAlignmentConstraints = v23;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_textVerticalAlignmentConstraints];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__SFCapsuleNavigationBar_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E721B538;
  aBlock[4] = self;
  v25 = _Block_copy(aBlock);
  v25[2](v25, self->_titleLabelLayoutInfo);
  if (self->_availabilityLabelLayoutInfo)
  {
    (v25[2])(v25);
  }

  [(SFCapsuleNavigationBar *)self updateAccessibilityIdentifier];
}

- (CGPoint)_titleToEdgeMargin
{
  traitCollection = [(SFCapsuleNavigationBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
  {
    v7 = self->_layoutStyle - 1;
    v5 = 10.0;
    v6 = 18.0;
    if (v7 <= 2)
    {
      v5 = dbl_18BC3DAA8[v7];
    }
  }

  else
  {
    v5 = 8.0;
    v6 = 12.0;
  }

  v8 = v6;
  v9 = v5;
  result.y = v9;
  result.x = v8;
  return result;
}

void __57__SFCapsuleNavigationBar__createLeadingButtonConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v23 = v5;
  v7 = [v5 centerYAnchor];
  v8 = [*(a1 + 40) centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v6 addObject:v9];

  if ((*(a1 + 72) & 1) == 0)
  {
    if (!a3 && (*(a1 + 73) & 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v11 = [v23 topAnchor];
    v12 = [*(a1 + 40) topAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:*(a1 + 56)];
    [v10 addObject:v13];

    v14 = *(a1 + 32);
    v15 = [v23 bottomAnchor];
    v16 = [*(a1 + 40) bottomAnchor];
    v17 = [v15 constraintLessThanOrEqualToAnchor:v16 constant:-*(a1 + 56)];
    [v14 addObject:v17];
  }

  if (a3)
  {
    v18 = *(a1 + 32);
    v19 = [v23 leadingAnchor];
    v20 = [*(*(a1 + 40) + 480) objectAtIndexedSubscript:a3 - 1];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:*(a1 + 64)];
    [v18 addObject:v22];
  }

LABEL_7:
}

void __43__SFCapsuleNavigationBar_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 constraintForHorizontalAlignment];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [v8 view];
    v6 = [v4 _horizontalAlignmentConstraintForLabel:v5];
    [v8 setConstraintForHorizontalAlignment:v6];

    v7 = [v8 constraintForHorizontalAlignment];
    [v7 setActive:1];
  }
}

- (void)_updateTitleContainerAlpha
{
  v3 = 0.0;
  if (!self->_availabilityLabelLayoutInfo)
  {
    v3 = ([(SFCapsuleNavigationBar *)self _hidesTitle]^ 1);
  }

  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setAlpha:v3];
}

- (void)_updateProgressViewFillColor
{
  isMinimized = self->_isMinimized;
  theme = self->_theme;
  if (isMinimized)
  {
    [(_SFBarTheme *)theme controlsTintColor];
  }

  else
  {
    [(_SFBarTheme *)theme platterProgressBarTintColor];
  }
  v5 = ;
  [(_SFFluidProgressView *)self->_progressView setProgressBarFillColor:v5];

  v6 = self->_theme;
  if (v6 && !self->_isMinimized && _SFIsPrivateTintStyle([(_SFBarTheme *)v6 tintStyle]))
  {
    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979920]];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  layer = [(_SFFluidProgressView *)self->_progressView layer];
  [layer setCompositingFilter:v9];

  if (v7)
  {
  }
}

- (void)_createLeadingButtonConstraints
{
  _shouldHideButtons = [(SFCapsuleNavigationBar *)self _shouldHideButtons];
  array = [MEMORY[0x1E695DF70] array];
  if (_shouldHideButtons || ![(NSArray *)self->_leadingButtons count])
  {
    leadingAnchor = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
    leadingAnchor2 = [(SFCapsuleNavigationBar *)self leadingAnchor];
    [(SFCapsuleNavigationBar *)self _titleToEdgeMargin];
    v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v7];
  }

  if ([(NSArray *)self->_leadingButtons count])
  {
    [(SFCapsuleNavigationBar *)self _minimumEdgeMargin];
    v9 = v8;
    v11 = v10;
    [(SFCapsuleNavigationBar *)self _interButtonSpacing];
    v13 = 0.7;
    if (!self->_isMinimized)
    {
      v13 = 1.0;
    }

    v14 = v12 * v13;
    firstObject = [(NSArray *)self->_leadingButtons firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    leadingButtons = self->_leadingButtons;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __57__SFCapsuleNavigationBar__createLeadingButtonConstraints__block_invoke;
    v47[3] = &unk_1E721B560;
    v18 = array;
    v48 = v18;
    selfCopy = self;
    v53 = _shouldHideButtons;
    v54 = isKindOfClass & 1;
    v50 = v9;
    v51 = v11;
    v52 = v14;
    [(NSArray *)leadingButtons enumerateObjectsUsingBlock:v47];
    v19 = 0.0;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (isKindOfClass)
      {
        widthAnchor = [firstObject widthAnchor];
        [firstObject intrinsicContentSize];
        v21 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
        [v18 addObject:v21];
      }

      widthAnchor2 = [firstObject widthAnchor];
      heightAnchor = [firstObject heightAnchor];
      v24 = [widthAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor];
      [v18 addObject:v24];

      v19 = 4.0;
    }

    centerXAnchor = [firstObject centerXAnchor];
    v46 = _shouldHideButtons;
    if (isKindOfClass)
    {
      leadingButtonCenterXAnchor = [(SFCapsuleNavigationBar *)self leadingAnchor];
    }

    else
    {
      leadingButtonCenterXAnchor = self->_leadingButtonCenterXAnchor;
    }

    v27 = [centerXAnchor constraintEqualToAnchor:leadingButtonCenterXAnchor];
    LODWORD(v28) = 1131413504;
    v29 = [v27 sf_withPriority:v28];
    [v18 addObject:v29];

    if (isKindOfClass)
    {

      leadingAnchor3 = [firstObject leadingAnchor];
      leadingAnchor4 = [(SFCapsuleNavigationBar *)self leadingAnchor];
      v32 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v19];
      [v18 addObject:v32];

      topAnchor = [firstObject topAnchor];
      topAnchor2 = [(SFCapsuleNavigationBar *)self topAnchor];
      v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19];
      [v18 addObject:v35];

      bottomAnchor = [firstObject bottomAnchor];
      bottomAnchor2 = [(SFCapsuleNavigationBar *)self bottomAnchor];
      [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v19];
    }

    else
    {

      bottomAnchor = [firstObject leadingAnchor];
      bottomAnchor2 = [(SFCapsuleNavigationBar *)self leadingAnchor];
      [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v9];
    }
    v38 = ;
    [v18 addObject:v38];

    if (!v46)
    {
      lastObject = [(NSArray *)self->_leadingButtons lastObject];
      leadingAnchor5 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
      trailingAnchor = [lastObject trailingAnchor];
      v42 = 2.0;
      if ((isKindOfClass & 1) == 0)
      {
        v42 = v9;
      }

      v43 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:v42];
      [v18 addObject:v43];
    }
  }

  v44 = [array copy];
  leadingButtonConstraints = self->_leadingButtonConstraints;
  self->_leadingButtonConstraints = v44;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_leadingButtonConstraints];
}

- (CGPoint)_minimumEdgeMargin
{
  layoutStyle = self->_layoutStyle;
  v3 = 13.0;
  if (layoutStyle == 2)
  {
    v4 = 9.0;
  }

  else
  {
    v4 = 13.0;
  }

  if (layoutStyle == 2)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 11.5;
  }

  traitCollection = [(SFCapsuleNavigationBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
  {
    v3 = v5;
  }

  else
  {
    v4 = 12.0;
  }

  v8 = v4;
  v9 = v3;
  result.y = v9;
  result.x = v8;
  return result;
}

- (double)_interButtonSpacing
{
  traitCollection = [(SFCapsuleNavigationBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 22.0;
  }

  return v4;
}

- (void)_createTrailingButtonConstraints
{
  _shouldHideButtons = [(SFCapsuleNavigationBar *)self _shouldHideButtons];
  array = [MEMORY[0x1E695DF70] array];
  if (_shouldHideButtons || ![(NSArray *)self->_trailingButtons count])
  {
    trailingAnchor = [(SFCapsuleNavigationBar *)self trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
    [(SFCapsuleNavigationBar *)self _titleToEdgeMargin];
    v7 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];
    [array addObject:v7];
  }

  if ([(NSArray *)self->_trailingButtons count])
  {
    [(SFCapsuleNavigationBar *)self _minimumEdgeMargin];
    v9 = v8;
    v11 = v10;
    [(SFCapsuleNavigationBar *)self _interButtonSpacing];
    v13 = 0.7;
    if (!self->_isMinimized)
    {
      v13 = 1.0;
    }

    v14 = v12 * v13;
    trailingButtons = self->_trailingButtons;
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __58__SFCapsuleNavigationBar__createTrailingButtonConstraints__block_invoke;
    v41 = &unk_1E721B588;
    v16 = array;
    v42 = v16;
    selfCopy = self;
    v47 = _shouldHideButtons;
    v44 = v9;
    v45 = v11;
    v46 = v14;
    [(NSArray *)trailingButtons enumerateObjectsUsingBlock:&v38];
    v17 = [(NSArray *)self->_trailingButtons firstObject:v38];
    trailingAnchor3 = [v17 trailingAnchor];
    trailingAnchor4 = [(SFCapsuleNavigationBar *)self trailingAnchor];
    v20 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-v9];
    [v16 addObject:v20];

    centerXAnchor = [v17 centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:self->_trailingButtonCenterXAnchor];
    LODWORD(v23) = 1131413504;
    v24 = [v22 sf_withPriority:v23];
    [v16 addObject:v24];

    if (!_shouldHideButtons)
    {
      trailingAnchor5 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
      lastObject = [(NSArray *)self->_trailingButtons lastObject];
      if ([(SFCapsuleNavigationBar *)self _shouldCenterButtonsBetweenEdgeAndTitle:self->_trailingButtons])
      {
        centerXAnchor2 = [lastObject centerXAnchor];
        v28 = [centerXAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
        LODWORD(v29) = 1131413504;
        v30 = [v28 sf_withPriority:v29];
        [v16 addObject:v30];

        leadingAnchor = [lastObject leadingAnchor];
        leadingAnchor2 = leadingAnchor;
        v33 = trailingAnchor5;
        v34 = v9;
      }

      else
      {
        leadingAnchor2 = [lastObject leadingAnchor];
        [(SFCapsuleNavigationBar *)self _titleToButtonSpacing];
        leadingAnchor = leadingAnchor2;
        v33 = trailingAnchor5;
      }

      v35 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:v33 constant:v34];
      [v16 addObject:v35];
    }
  }

  v36 = [array copy];
  trailingButtonConstraints = self->_trailingButtonConstraints;
  self->_trailingButtonConstraints = v36;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_trailingButtonConstraints];
}

void __58__SFCapsuleNavigationBar__createTrailingButtonConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v24 = v5;
  v7 = [v5 centerYAnchor];
  v8 = [*(a1 + 40) centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v6 addObject:v9];

  if ((*(a1 + 72) & 1) == 0)
  {
    v10 = *(a1 + 32);
    v11 = [v24 topAnchor];
    v12 = [*(a1 + 40) topAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:*(a1 + 56)];
    [v10 addObject:v13];

    v14 = *(a1 + 32);
    v15 = [v24 bottomAnchor];
    v16 = [*(a1 + 40) bottomAnchor];
    v17 = [v15 constraintLessThanOrEqualToAnchor:v16 constant:-*(a1 + 56)];
    [v14 addObject:v17];
  }

  v18 = v24;
  if (a3)
  {
    v19 = *(a1 + 32);
    v20 = [*(*(a1 + 40) + 704) objectAtIndexedSubscript:a3 - 1];
    v21 = [v20 leadingAnchor];
    v22 = [v24 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:*(a1 + 64)];
    [v19 addObject:v23];

    v18 = v24;
  }
}

- (void)updateAccessibilityIdentifier
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (self->_isSelected)
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v7[0] = @"isSelected";
  v7[1] = @"isDistractionControlOverlayUp";
  if (self->_overlayView)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = WBSMakeAccessibilityIdentifier();
  [(SFCapsuleNavigationBar *)self setAccessibilityIdentifier:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCapsuleNavigationBar;
  [(SFCapsuleNavigationBar *)&v3 layoutSubviews];
  if (!self->_deferButtonAlphaUpdatesDuringLayout)
  {
    [(SFCapsuleNavigationBar *)self _updateButtonAlphaForMinimizedPercent:self->_minimizationPercent];
  }

  [(SFCapsuleNavigationBar *)self _updateShowsProgressView];
}

- (void)_updateShowsProgressView
{
  minimizationPercent = self->_minimizationPercent;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (self->_isSelected)
  {
    v5 = [(_SFFluidProgressView *)self->_progressView isShowingProgress]^ 1 | (minimizationPercent > 0.0) & ~isSolariumEnabled;
  }

  else
  {
    v5 = 1;
  }

  progressView = self->_progressView;

  [(_SFFluidProgressView *)progressView setHidden:v5];
}

- (CGSize)urlSize
{
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer urlSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (SFCapsuleNavigationBar)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFCapsuleNavigationBar;
  return [(SFCapsuleNavigationBar *)&v4 initWithCoder:coder];
}

- (id)initForSizingWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[SFFeatureManager sharedFeatureManager];
  v9 = -[SFCapsuleNavigationBar initForSizingWithFrame:layoutStyle:](self, "initForSizingWithFrame:layoutStyle:", [v8 preferredCapsuleLayoutStyle], x, y, width, height);

  return v9;
}

- (id)initForSizingWithFrame:(CGRect)frame layoutStyle:(int64_t)style
{
  v4 = [(SFCapsuleNavigationBar *)self initWithFrame:style layoutStyle:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_isForSizing = 1;
    v6 = v4;
  }

  return v5;
}

- (SFCapsuleNavigationBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[SFFeatureManager sharedFeatureManager];
  v9 = -[SFCapsuleNavigationBar initWithFrame:layoutStyle:](self, "initWithFrame:layoutStyle:", [v8 preferredCapsuleLayoutStyle], x, y, width, height);

  return v9;
}

- (SFCapsuleNavigationBar)initWithFrame:(CGRect)frame layoutStyle:(int64_t)style
{
  v85[9] = *MEMORY[0x1E69E9840];
  v83.receiver = self;
  v83.super_class = SFCapsuleNavigationBar;
  v5 = [(SFCapsuleNavigationBar *)&v83 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(SFCapsuleNavigationBar *)v5 setInsetsLayoutMarginsFromSafeArea:0];
    v6->_layoutStyle = style;
    v7 = [_SFFluidProgressView alloc];
    [(SFCapsuleNavigationBar *)v6 bounds];
    v8 = [(_SFFluidProgressView *)v7 initWithFrame:?];
    progressView = v6->_progressView;
    v6->_progressView = v8;

    [(_SFFluidProgressView *)v6->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFFluidProgressView *)v6->_progressView setDelegate:v6];
    layer = [(_SFFluidProgressView *)v6->_progressView layer];
    [layer setZPosition:1.0];

    [(SFCapsuleNavigationBar *)v6 addSubview:v6->_progressView];
    v11 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:v6->_progressView withFrameOfView:v6];
    progressViewConstraints = v6->_progressViewConstraints;
    v6->_progressViewConstraints = v11;

    [MEMORY[0x1E696ACD8] activateConstraints:v6->_progressViewConstraints];
    v13 = [[SFUnifiedTabBarItemTitleContainerView alloc] initWithAlignment:1];
    titleContainer = v6->_titleContainer;
    v6->_titleContainer = v13;

    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setTitleToSearchIconSpacing:0.0];
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setCollapsed:0];
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setUsesInsetFromLayoutMargins:0];
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setFollowsKeyboardLayoutDirection:1];
    -[SFUnifiedTabBarItemTitleContainerView setShrinksTitleTextToFitWidth:](v6->_titleContainer, "setShrinksTitleTextToFitWidth:", [MEMORY[0x1E69C8880] isSolariumEnabled]);
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = *MEMORY[0x1E69DDCF8];
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setTitleTextStyle:?];
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setAccessibilityIdentifier:@"TabBarItemTitle"];
    LODWORD(v15) = 1131413504;
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setContentHuggingPriority:0 forAxis:v15];
    LODWORD(v16) = 1144586240;
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1131413504;
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1144586240;
    [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer setContentCompressionResistancePriority:1 forAxis:v18];
    [(SFCapsuleNavigationBar *)v6 addSubview:v6->_titleContainer];
    v19 = [[SFCapsuleNavigationBarLabelLayoutInfo alloc] initWithView:v6->_titleContainer];
    titleLabelLayoutInfo = v6->_titleLabelLayoutInfo;
    v6->_titleLabelLayoutInfo = v19;

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v6->_keyboardInputModeIsRTL = [mEMORY[0x1E69DC668] safari_currentKeyboardInputIsRTL];

    [(SFCapsuleNavigationBar *)v6 _updateLayoutDirectionIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
    [defaultCenter addObserver:v6 selector:sel__updateKeyboardInputMode_ name:@"SFDidGetTextInputModeDirectionality" object:0];
    v80 = defaultCenter;
    [defaultCenter addObserver:v6 selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    v23 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v23 setIdentifier:@"SFCapsuleLeadingButtonCenterGuide"];
    [(SFCapsuleNavigationBar *)v6 addLayoutGuide:v23];
    v24 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textVerticalAlignmentGuide = v6->_textVerticalAlignmentGuide;
    v6->_textVerticalAlignmentGuide = v24;

    [(UILayoutGuide *)v6->_textVerticalAlignmentGuide setIdentifier:@"SFCapsuleTextVerticalAlignmentGuide"];
    [(SFCapsuleNavigationBar *)v6 addLayoutGuide:v6->_textVerticalAlignmentGuide];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v26 setIdentifier:@"SFCapsuleTrailingButtonCenterGuide"];
    [(SFCapsuleNavigationBar *)v6 addLayoutGuide:v26];
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    widthAnchor = [v23 widthAnchor];
    v29 = widthAnchor;
    if (isSolariumEnabled)
    {
      heightAnchor = [(SFCapsuleNavigationBar *)v6 heightAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:heightAnchor multiplier:0.5];

      widthAnchor2 = [v26 widthAnchor];
      heightAnchor2 = [(SFCapsuleNavigationBar *)v6 heightAnchor];
      v82 = [widthAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor2 multiplier:0.5];
    }

    else
    {
      if (style == 2)
      {
        v34 = 18.0;
      }

      else
      {
        v34 = 22.0;
      }

      v31 = [widthAnchor constraintEqualToConstant:v34];

      widthAnchor2 = [v26 widthAnchor];
      v82 = [widthAnchor2 constraintEqualToConstant:v34];
    }

    trailingAnchor = [v23 trailingAnchor];
    leadingButtonCenterXAnchor = v6->_leadingButtonCenterXAnchor;
    v6->_leadingButtonCenterXAnchor = trailingAnchor;

    leadingAnchor = [v26 leadingAnchor];
    trailingButtonCenterXAnchor = v6->_trailingButtonCenterXAnchor;
    v6->_trailingButtonCenterXAnchor = leadingAnchor;

    v67 = MEMORY[0x1E696ACD8];
    v79 = v23;
    leadingAnchor2 = [v23 leadingAnchor];
    leadingAnchor3 = [(SFCapsuleNavigationBar *)v6 leadingAnchor];
    v74 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v85[0] = v74;
    v85[1] = v31;
    v77 = v31;
    widthAnchor3 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide widthAnchor];
    v72 = [widthAnchor3 constraintEqualToConstant:0.0];
    LODWORD(v39) = 1130758144;
    v71 = [v72 sf_withPriority:v39];
    v85[2] = v71;
    heightAnchor3 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide heightAnchor];
    v69 = [heightAnchor3 constraintEqualToConstant:0.0];
    LODWORD(v40) = 1130758144;
    v68 = [v69 sf_withPriority:v40];
    v85[3] = v68;
    leadingAnchor4 = [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer leadingAnchor];
    leadingAnchor5 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide leadingAnchor];
    v64 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
    v85[4] = v64;
    trailingAnchor2 = [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer trailingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide trailingAnchor];
    v41 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    v85[5] = v41;
    centerXAnchor = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide centerXAnchor];
    centerXAnchor2 = [(SFCapsuleNavigationBar *)v6 centerXAnchor];
    v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    LODWORD(v45) = 1132134400;
    v46 = [v44 sf_withPriority:v45];
    v85[6] = v46;
    v78 = v26;
    trailingAnchor4 = [v26 trailingAnchor];
    trailingAnchor5 = [(SFCapsuleNavigationBar *)v6 trailingAnchor];
    v49 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v85[7] = v49;
    v85[8] = v82;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:9];
    [v67 activateConstraints:v50];

    v51 = objc_alloc_init(MEMORY[0x1E69784C8]);
    scribbleInteraction = v6->_scribbleInteraction;
    v6->_scribbleInteraction = v51;

    [(PKScribbleInteraction *)v6->_scribbleInteraction setDelegate:v6];
    [(SFCapsuleNavigationBar *)v6 addInteraction:v6->_scribbleInteraction];
    v6->_nonKeyContentAlpha = 1.0;
    array = [MEMORY[0x1E695DF70] array];
    [(SFCapsuleNavigationBar *)v6 _initializeLayoutInfo:v6->_titleLabelLayoutInfo forPrimaryLabel:1 addingConstraints:array];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v54 = [objc_alloc(MEMORY[0x1E69C9780]) initWithPresenter:v6];
    availabilityDisplayController = v6->_availabilityDisplayController;
    v6->_availabilityDisplayController = v54;

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v57 = [safari_browserDefaults safari_numberForKey:@"DebugReaderGlyphDisplayDuration"];

    if (v57)
    {
      [v57 doubleValue];
      [(WBSContentAvailabilityDisplayController *)v6->_availabilityDisplayController setLabelDisplayDuration:?];
    }

    v84 = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v59 = [(SFCapsuleNavigationBar *)v6 registerForTraitChanges:v58 withTarget:v6 action:sel__invalidateHeight];

    v60 = v6;
  }

  return v6;
}

- (void)_updateKeyboardInputMode:(id)mode
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  safari_currentKeyboardInputIsRTL = [mEMORY[0x1E69DC668] safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != safari_currentKeyboardInputIsRTL)
  {
    self->_keyboardInputModeIsRTL = safari_currentKeyboardInputIsRTL;

    [(SFCapsuleNavigationBar *)self _updateLayoutDirectionIfNeeded];
  }
}

- (BOOL)_shouldCenterButtonsBetweenEdgeAndTitle:(id)title
{
  if ([title count] > 1)
  {
    return 0;
  }

  traitCollection = [(SFCapsuleNavigationBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) == NSOrderedAscending;
  return v4;
}

- (id)_horizontalAlignmentConstraintForLabel:(id)label
{
  labelCopy = label;
  if ([(SFCapsuleNavigationBar *)self _shouldCenterLabels])
  {
    centerXAnchor = [labelCopy centerXAnchor];

    [(SFCapsuleNavigationBar *)self centerXAnchor];
  }

  else
  {
    centerXAnchor = [labelCopy leadingAnchor];

    [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
  }
  v6 = ;
  v7 = [centerXAnchor constraintEqualToAnchor:v6];
  LODWORD(v8) = 1112014848;
  v9 = [v7 sf_withPriority:v8];

  return v9;
}

- (double)_titleToButtonSpacing
{
  traitCollection = [(SFCapsuleNavigationBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) == NSOrderedAscending)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 10.0;
  }

  return v4;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  item = self->_item;
  if (item != itemCopy)
  {
    v16 = itemCopy;
    [(SFNavigationBarItem *)item removeObserver:self];
    fluidProgressController = [(SFNavigationBarItem *)self->_item fluidProgressController];
    [fluidProgressController unregisterObserver:self->_progressView];

    LODWORD(fluidProgressController) = [(SFCapsuleNavigationBar *)self _shouldCenterLabels];
    objc_storeStrong(&self->_item, item);
    [(SFNavigationBarItem *)self->_item addObserver:self];
    progressView = self->_progressView;
    fluidProgressStateSource = [(SFNavigationBarItem *)self->_item fluidProgressStateSource];
    progressState = [fluidProgressStateSource progressState];
    [(_SFFluidProgressView *)progressView setProgressToCurrentPositionForState:progressState];

    fluidProgressController2 = [(SFNavigationBarItem *)self->_item fluidProgressController];
    [fluidProgressController2 registerObserver:self->_progressView];

    text = [(SFNavigationBarItem *)v16 text];
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitle:text];

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchIcon:[(SFCapsuleNavigationBar *)self _showsSearchIconInTitleContainer]];
    [(SFCapsuleNavigationBar *)self setLeadingButtons:self->_externalLeadingButtons];
    [(SFCapsuleNavigationBar *)self _updateSecurityAnnotation];
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
    if (fluidProgressController != [(SFCapsuleNavigationBar *)self _shouldCenterLabels])
    {
      constraintForHorizontalAlignment = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
      [constraintForHorizontalAlignment setActive:0];

      [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
      constraintForHorizontalAlignment2 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
      [constraintForHorizontalAlignment2 setActive:0];

      [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo setConstraintForHorizontalAlignment:0];
    }

    [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:0];
    [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:v16 shouldResetDiscovery:0];
    [(SFCapsuleNavigationBar *)self _updateTitleContainerAlpha];
    [(SFCapsuleNavigationBar *)self _updateShowsProgressView];
    [(_SFBarRegistrationToken *)self->_registration updateBarAnimated:0];
    WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
    [WeakRetained invalidateHeightForCapsuleContentView:self];

    [(SFCapsuleNavigationBar *)self navigationBarItemDidUpdateShowsExtensionsAvailability:v16];
    [(SFCapsuleNavigationBar *)self navigationBarItemDidUpdateOverlayNarrowConfiguration:self->_item];
    itemCopy = v16;
  }
}

- (void)prepareForSizingNavigationBar:(id)bar
{
  barCopy = bar;
  leadingButtons = [barCopy leadingButtons];
  leadingButtons2 = [(SFCapsuleNavigationBar *)self leadingButtons];
  v7 = [SFPlaceholderView placeholdersMatchingIntrinsicContentSizeOfViews:leadingButtons reusingPlaceholders:leadingButtons2];
  [(SFCapsuleNavigationBar *)self setLeadingButtons:v7];

  trailingButtons = [barCopy trailingButtons];
  trailingButtons2 = [(SFCapsuleNavigationBar *)self trailingButtons];
  v10 = [SFPlaceholderView placeholdersMatchingIntrinsicContentSizeOfViews:trailingButtons reusingPlaceholders:trailingButtons2];
  [(SFCapsuleNavigationBar *)self setTrailingButtons:v10];

  theme = [barCopy theme];
  [(SFCapsuleNavigationBar *)self setTheme:theme];

  item = [barCopy item];
  [(SFCapsuleNavigationBar *)self setItem:item];

  v13 = barCopy[78];

  [(SFCapsuleNavigationBar *)self updateLabelTypesWithAvailabilityDisplayController:v13 animated:0];
}

- (void)willChangeToMinimized:(BOOL)minimized coordinator:(id)coordinator
{
  if (minimized)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.67;
  }

  self->_deferButtonAlphaUpdatesDuringLayout = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__SFCapsuleNavigationBar_willChangeToMinimized_coordinator___block_invoke;
  v11[3] = &unk_1E721B5B0;
  v11[4] = self;
  minimizedCopy = minimized;
  coordinatorCopy = coordinator;
  [coordinatorCopy addKeyframeWithRelativeStartTime:v11 relativeDuration:v5 animations:0.33];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer beginTitleTextStyleAnimation];
  view = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo view];
  [view beginTextSizeAnimation];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SFCapsuleNavigationBar_willChangeToMinimized_coordinator___block_invoke_2;
  v9[3] = &unk_1E721B400;
  v9[4] = self;
  v10 = view;
  v8 = view;
  [coordinatorCopy addCompletion:v9];
}

uint64_t __60__SFCapsuleNavigationBar_willChangeToMinimized_coordinator___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  result = [*(a1 + 32) _updateButtonAlphaForMinimizedPercent:*&a2];
  *(*(a1 + 32) + 577) = 0;
  return result;
}

uint64_t __60__SFCapsuleNavigationBar_willChangeToMinimized_coordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 456) endTitleTextStyleAnimation];
  v2 = *(a1 + 40);

  return [v2 endTextSizeAnimation];
}

- (void)_invalidateHeight
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_leadingButtonConstraints];
  leadingButtonConstraints = self->_leadingButtonConstraints;
  self->_leadingButtonConstraints = 0;

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_trailingButtonConstraints];
  trailingButtonConstraints = self->_trailingButtonConstraints;
  self->_trailingButtonConstraints = 0;

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_textVerticalAlignmentConstraints];
  textVerticalAlignmentConstraints = self->_textVerticalAlignmentConstraints;
  self->_textVerticalAlignmentConstraints = 0;

  constraintForHorizontalAlignment = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
  [constraintForHorizontalAlignment setActive:0];

  [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
  constraintForHorizontalAlignment2 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
  [constraintForHorizontalAlignment2 setActive:0];

  [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo setConstraintForHorizontalAlignment:0];
  [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];
  [(SFCapsuleNavigationBar *)self setNeedsLayout];
  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  [WeakRetained invalidateHeightForCapsuleContentView:self];

  registration = self->_registration;

  [(_SFBarRegistrationToken *)registration updateBarAnimated:0];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_isSelected != selected)
  {
    self->_isSelected = selected;
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_leadingButtonConstraints];
    leadingButtonConstraints = self->_leadingButtonConstraints;
    self->_leadingButtonConstraints = 0;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_trailingButtonConstraints];
    trailingButtonConstraints = self->_trailingButtonConstraints;
    self->_trailingButtonConstraints = 0;

    [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];

    [(SFCapsuleNavigationBar *)self setNeedsLayout];
  }
}

- (void)setMinimizationPercent:(double)percent
{
  if (self->_minimizationPercent != percent)
  {
    self->_minimizationPercent = percent;
    [(SFCapsuleNavigationBar *)self _updateButtonAlphaForMinimizedPercent:?];
  }
}

- (void)setMinimized:(BOOL)minimized
{
  if (self->_isMinimized != minimized)
  {
    self->_isMinimized = minimized;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationBarMinimizationChanged];

    [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_leadingButtonConstraints];
    leadingButtonConstraints = self->_leadingButtonConstraints;
    self->_leadingButtonConstraints = 0;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_trailingButtonConstraints];
    trailingButtonConstraints = self->_trailingButtonConstraints;
    self->_trailingButtonConstraints = 0;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_textVerticalAlignmentConstraints];
    textVerticalAlignmentConstraints = self->_textVerticalAlignmentConstraints;
    self->_textVerticalAlignmentConstraints = 0;

    [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];
    [(SFCapsuleNavigationBar *)self setNeedsLayout];
    [(SFCapsuleNavigationBar *)self _updateShowsProgressView];
    v17 = self->_theme;
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v10 = v17;
      v11 = v10;
      if (minimized)
      {
        [(_SFBarTheme *)v10 tabTitleTheme];
      }

      else
      {
        [(_SFBarTheme *)v10 titleTheme];
      }
      v12 = ;
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:v12];

      theme = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer theme];
      placeholderTextColor = [theme placeholderTextColor];
      [(UIView *)self->_searchIndicatorView setTintColor:placeholderTextColor];
    }

    [(SFCapsuleNavigationBar *)self _updateLabelContents];
    [(SFCapsuleNavigationBar *)self _updateButtonsTransform];
    constraintForHorizontalAlignment = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
    [constraintForHorizontalAlignment setActive:0];

    [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
    constraintForHorizontalAlignment2 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
    [constraintForHorizontalAlignment2 setActive:0];

    [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo setConstraintForHorizontalAlignment:0];
    [(SFCapsuleNavigationBar *)self _updateShowsPrivateAnnotation];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = SFCapsuleNavigationBar;
  [(SFCapsuleNavigationBar *)&v5 setHighlighted:highlighted];
  highlightObserver = self->_highlightObserver;
  if (highlightObserver)
  {
    highlightObserver[2]();
  }
}

- (CGRect)keyContentRect
{
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleRect];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_titleContainer ss_untransformedFrame];
  v8 = v4 + v7;
  v10 = v6 + v9;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer urlSize];
  v12 = v11;
  v14 = v13;
  v15 = v8;
  v16 = v10;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setKeyContentTransform:(CGAffineTransform *)transform
{
  p_keyContentTransform = &self->_keyContentTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_keyContentTransform.c;
  *&v11.a = *&self->_keyContentTransform.a;
  *&v11.c = v7;
  *&v11.tx = *&self->_keyContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_keyContentTransform->c = *&transform->c;
    *&p_keyContentTransform->tx = v9;
    *&p_keyContentTransform->a = v8;
    v10 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v10;
    *&t1.tx = *&transform->tx;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTransform:&t1];
  }
}

- (void)setNonKeyContentAlpha:(double)alpha
{
  if (self->_nonKeyContentAlpha != alpha)
  {
    self->_nonKeyContentAlpha = alpha;
    [(SFCapsuleNavigationBar *)self _updateButtonAlphaForMinimizedPercent:self->_minimizationPercent];
  }
}

- (double)keyContentBaselineBottomInset
{
  titleContainer = self->_titleContainer;
  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer urlSize];

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer urlBaselineToBottomBoundsDistanceForHeight:v3];
  return result;
}

- (double)keyContentCapHeightTopInset
{
  titleContainer = self->_titleContainer;
  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer urlSize];

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer urlCapHeightToTopBoundsDistanceForHeight:v3];
  return result;
}

- (NSNumber)microphoneContentOriginX
{
  microphoneButton = [(_SFBarRegistrationToken *)self->_registration microphoneButton];
  imageView = [microphoneButton imageView];

  if ([imageView isDescendantOfView:self])
  {
    v5 = MEMORY[0x1E696AD98];
    [imageView frame];
    [(SFCapsuleNavigationBar *)self convertRect:imageView fromView:?];
    v6 = [v5 numberWithDouble:CGRectGetMinX(v9)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMicrophoneContentTransform:(CGAffineTransform *)transform
{
  p_microphoneContentTransform = &self->_microphoneContentTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_microphoneContentTransform.c;
  *&t2.a = *&self->_microphoneContentTransform.a;
  *&t2.c = v7;
  *&t2.tx = *&self->_microphoneContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_microphoneContentTransform->c = *&transform->c;
    *&p_microphoneContentTransform->tx = v9;
    *&p_microphoneContentTransform->a = v8;
    *&v11.a = *&transform->a;
    *&v11.c = *&transform->c;
    *&v11.tx = *&transform->tx;
    microphoneButton = [(_SFBarRegistrationToken *)self->_registration microphoneButton];
    t1 = v11;
    [microphoneButton setTransform:&t1];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(SFCapsuleNavigationBar *)self _invalidateHeight];
  }
}

- (void)setTheme:(id)theme
{
  v33 = *MEMORY[0x1E69E9840];
  themeCopy = theme;
  v6 = self->_theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_theme, theme);
    if (objc_opt_respondsToSelector())
    {
      titleTheme = [themeCopy titleTheme];
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:titleTheme];
    }

    traitOverrides = [(SFCapsuleNavigationBar *)self traitOverrides];
    [traitOverrides setNSIntegerValue:objc_msgSend(themeCopy forTrait:{"tintStyle"), objc_opt_class()}];

    [(SFCapsuleNavigationBar *)self _updateShowsPrivateAnnotation];
    [(SFCapsuleNavigationBar *)self _updateProgressViewFillColor];
    [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:self->_item shouldResetDiscovery:0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_leadingButtons;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          toolbarControlsTintColor = [themeCopy toolbarControlsTintColor];
          [v14 setTintColor:toolbarControlsTintColor];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = self->_trailingButtons;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * v20);
          toolbarControlsTintColor2 = [themeCopy toolbarControlsTintColor];
          [v21 setTintColor:toolbarControlsTintColor2];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }
}

- (void)setLeadingButtons:(id)buttons
{
  buttonsCopy = buttons;
  v5 = MEMORY[0x1E695E0F0];
  v23 = buttonsCopy;
  if (buttonsCopy)
  {
    v5 = buttonsCopy;
  }

  v6 = v5;
  if (-[SFNavigationBarItem showsSearchIndicator](self->_item, "showsSearchIndicator") && ![v23 count])
  {
    searchIndicatorView = self->_searchIndicatorView;
    if (!searchIndicatorView)
    {
      v12 = MEMORY[0x1E69DCAD8];
      titleTextStyle = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
      v14 = [v12 configurationWithTextStyle:titleTextStyle scale:2];

      v15 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
      v16 = [v14 configurationByApplyingConfiguration:v15];

      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass" withConfiguration:v16];
      v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
      v19 = self->_searchIndicatorView;
      self->_searchIndicatorView = v18;

      theme = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer theme];
      placeholderTextColor = [theme placeholderTextColor];
      [(UIView *)self->_searchIndicatorView setTintColor:placeholderTextColor];

      searchIndicatorView = self->_searchIndicatorView;
    }

    v22 = [(UIView *)v6 arrayByAddingObject:searchIndicatorView];
    v7 = v6;
    v6 = v22;
  }

  else
  {
    v7 = self->_searchIndicatorView;
    self->_searchIndicatorView = 0;
  }

  if ([(SFCapsuleNavigationBar *)self _transitionFromButtons:self->_leadingButtons toButtons:v6 withConstraintsToDeactivate:self->_leadingButtonConstraints])
  {
    v8 = [v23 copy];
    externalLeadingButtons = self->_externalLeadingButtons;
    self->_externalLeadingButtons = v8;

    objc_storeStrong(&self->_leadingButtons, v6);
    leadingButtonConstraints = self->_leadingButtonConstraints;
    self->_leadingButtonConstraints = 0;

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchIcon:[(SFCapsuleNavigationBar *)self _showsSearchIconInTitleContainer]];
    [(SFCapsuleNavigationBar *)self _updateButtonsTransform];
  }
}

- (void)setTrailingButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([SFCapsuleNavigationBar _transitionFromButtons:"_transitionFromButtons:toButtons:withConstraintsToDeactivate:" toButtons:self->_trailingButtons withConstraintsToDeactivate:?])
  {
    v4 = [buttonsCopy copy];
    trailingButtons = self->_trailingButtons;
    self->_trailingButtons = v4;

    trailingButtonConstraints = self->_trailingButtonConstraints;
    self->_trailingButtonConstraints = 0;

    [(SFCapsuleNavigationBar *)self _updateButtonsTransform];
  }
}

- (BOOL)_transitionFromButtons:(id)buttons toButtons:(id)toButtons withConstraintsToDeactivate:(id)deactivate
{
  v42 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  toButtonsCopy = toButtons;
  deactivateCopy = deactivate;
  v11 = [buttonsCopy isEqualToArray:toButtonsCopy];
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v29 = deactivateCopy;
    v30 = v11;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = buttonsCopy;
    v13 = buttonsCopy;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v36 + 1) + 8 * v17++) removeFromSuperview];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = toButtonsCopy;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      v22 = *MEMORY[0x1E69DDC58];
      do
      {
        v23 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v32 + 1) + 8 * v23);
          toolbarControlsTintColor = [(_SFBarTheme *)self->_theme toolbarControlsTintColor];
          [v24 setTintColor:toolbarControlsTintColor];

          [v24 setMaximumContentSizeCategory:v22];
          LODWORD(v26) = 1132920832;
          [v24 setContentHuggingPriority:0 forAxis:v26];
          LODWORD(v27) = 1145077760;
          [v24 setContentCompressionResistancePriority:0 forAxis:v27];
          [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(SFCapsuleNavigationBar *)self addSubview:v24];
          ++v23;
        }

        while (v20 != v23);
        v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    deactivateCopy = v29;
    [MEMORY[0x1E696ACD8] deactivateConstraints:v29];
    [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];
    buttonsCopy = v31;
    v12 = v30;
  }

  return v12 ^ 1;
}

- (void)_updateButtonAlphaForMinimizedPercent:(double)percent
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _SFInterpolate(([(SFCapsuleNavigationBar *)self _shouldHideButtonsForMinimized:0]^ 1), ([(SFCapsuleNavigationBar *)self _shouldHideButtonsForMinimized:1]^ 1), percent) * self->_nonKeyContentAlpha;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_leadingButtons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setAlpha:v4];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_trailingButtons;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setAlpha:{v4, v15}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)updateLabelTypesWithAvailabilityDisplayController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  v8 = WeakRetained;
  v9 = 0;
  if (animatedCopy && WeakRetained)
  {
    v9 = !self->_isForSizing;
  }

  array = [MEMORY[0x1E695DF70] array];
  v11 = self->_availabilityLabelLayoutInfo;
  if ([controllerCopy isDisplaying])
  {
    v12 = objc_alloc_init(SFURLLabel);
    v13 = MEMORY[0x1E69DB878];
    _labelTextStyle = [(SFCapsuleNavigationBar *)self _labelTextStyle];
    v15 = [v13 preferredFontForTextStyle:_labelTextStyle];
    [(SFURLLabel *)v12 setFont:v15];

    currentLabel = [controllerCopy currentLabel];
    [(SFURLLabel *)v12 setText:currentLabel];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(SFURLLabel *)v12 setTextColor:labelColor];

    v18 = [[SFCapsuleNavigationBarLabelLayoutInfo alloc] initWithView:v12];
    [(SFCapsuleNavigationBar *)self _initializeLayoutInfo:v18 forPrimaryLabel:0 addingConstraints:array];
  }

  else
  {
    v18 = 0;
  }

  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_availabilityLabelLayoutInfo, v18);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke;
    aBlock[3] = &unk_1E721B400;
    aBlock[4] = self;
    v19 = v18;
    v45 = v19;
    v30 = _Block_copy(aBlock);
    v31 = v9;
    if (v19 != 0 && v9)
    {
      [MEMORY[0x1E696ACD8] activateConstraints:array];
      [array removeAllObjects];
      [(SFCapsuleNavigationBar *)self _updateLabelContentsAtIndexes:0];
      v20 = MEMORY[0x1E69DD250];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_2;
      v41[3] = &unk_1E721B5D8;
      v41[4] = self;
      v42 = v19;
      v43 = v30;
      [v20 performWithoutAnimation:v41];
    }

    titleTextStyle = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
    [(SFCapsuleNavigationBar *)self _updateLabelContents];
    v29 = titleTextStyle;
    if (v9)
    {
      titleTextStyle2 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
      v23 = WBSIsEqual();

      [MEMORY[0x1E696ACD8] activateConstraints:array];
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer beginTitleTextStyleAnimation];
        v24 = 1;
      }
    }

    else
    {
      [MEMORY[0x1E696ACD8] activateConstraints:array];
      v24 = 0;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_3;
    v37[3] = &unk_1E721B600;
    v25 = v11;
    v40 = v24;
    v38 = v25;
    selfCopy = self;
    v26 = _Block_copy(v37);
    v27 = v26;
    if (v8)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_4;
      v32[3] = &unk_1E721B628;
      v33 = v25;
      v34 = v19;
      v28 = v30;
      selfCopy2 = self;
      v36 = v30;
      [v8 invalidateHeightForCapsuleContentView:self animated:v31 animations:v32 completion:v27];
    }

    else
    {
      (*(v26 + 2))(v26);
      v28 = v30;
    }
  }
}

uint64_t __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke(uint64_t a1)
{
  v2 = ((*(a1 + 40) == 0) & ([*(a1 + 32) _hidesTitle] ^ 1));
  v3 = *(*(a1 + 32) + 456);

  return [v3 setAlpha:v2];
}

uint64_t __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:0.0];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  if (*(a1 + 48) == 1)
  {
    v3 = *(*(a1 + 40) + 456);

    [v3 endTitleTextStyleAnimation];
  }
}

uint64_t __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];

  (*(*(a1 + 56) + 16))();
  v4 = *(a1 + 48);

  return [v4 layoutIfNeeded];
}

- (void)_initializeLayoutInfo:(id)info forPrimaryLabel:(BOOL)label addingConstraints:(id)constraints
{
  infoCopy = info;
  constraintsCopy = constraints;
  if (!label)
  {
    view = [infoCopy view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [view setAdjustsFontForContentSizeCategory:1];
    [view setAccessibilityIdentifier:@"TabBarItemSubtitle"];
    [view setFadeOutEdge:1];
    LODWORD(v10) = 1131413504;
    [view setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1144586240;
    [view setContentCompressionResistancePriority:0 forAxis:v11];
    [(SFCapsuleNavigationBar *)self addSubview:view];
  }

  view2 = [infoCopy view];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [constraintsCopy addObject:v15];

  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [constraintsCopy addObject:v18];

  v19 = [(SFCapsuleNavigationBar *)self _horizontalAlignmentConstraintForLabel:view2];
  [infoCopy setConstraintForHorizontalAlignment:v19];

  constraintForHorizontalAlignment = [infoCopy constraintForHorizontalAlignment];
  [constraintsCopy addObject:constraintForHorizontalAlignment];

  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
  v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [constraintsCopy addObject:v23];

  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
  v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [constraintsCopy addObject:v26];
}

- (void)_setHidesTitle:(BOOL)title
{
  if (self->_hidesTitle != title)
  {
    self->_hidesTitle = title;
    [(SFCapsuleNavigationBar *)self _updateTitleContainerAlpha];
  }
}

- (void)navigationBarItemDidUpdateText:(id)text
{
  text = [text text];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitle:text];

  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  [WeakRetained invalidateHeightForCapsuleContentView:self];
}

- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)indicator
{
  _showsSearchIconInTitleContainer = [(SFCapsuleNavigationBar *)self _showsSearchIconInTitleContainer];
  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setShowsSearchIcon:_showsSearchIconInTitleContainer];
}

- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)annotation
{
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];

  [(SFCapsuleNavigationBar *)self _updateSecurityAnnotation];
}

- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display
{
  displayCopy = display;
  optionsCopy = options;
  if (displayCopy)
  {
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  }

  -[WBSContentAvailabilityDisplayController updateToContentOptions:](self->_availabilityDisplayController, "updateToContentOptions:", [optionsCopy contentOptions]);
}

- (void)navigationBarItemDidUpdateShowsExtensionsAvailability:(id)availability
{
  availabilityCopy = availability;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:availabilityCopy shouldResetDiscovery:0];
}

- (void)navigationBarItemDidUpdateMediaStateIcon:(id)icon
{
  iconCopy = icon;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  [(SFCapsuleNavigationBar *)self _updateLabelContents];
  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:iconCopy shouldResetDiscovery:0];
}

- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)buttons
{
  [(SFCapsuleNavigationBar *)self setNeedsLayout];
  registration = self->_registration;

  [(_SFBarRegistrationToken *)registration updateBarAnimated:1];
}

- (void)navigationBarItemDidUpdateOverlayNarrowConfiguration:(id)configuration
{
  overlayNarrowConfiguration = [configuration overlayNarrowConfiguration];
  overlayView = self->_overlayView;
  v16 = overlayNarrowConfiguration;
  if (overlayNarrowConfiguration)
  {
    if (overlayView && (-[SFURLFieldOverlayView configuration](overlayView, "configuration"), v6 = objc_claimAutoreleasedReturnValue(), [v6 identifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v6, overlayView = self->_overlayView, v9))
    {
      [(SFURLFieldOverlayView *)overlayView setConfiguration:v16];
    }

    else
    {
      [(SFURLFieldOverlayView *)overlayView dismissAndRemove];
      v10 = [SFURLFieldOverlayView alloc];
      [(SFCapsuleNavigationBar *)self bounds];
      v11 = [(SFURLFieldOverlayView *)v10 initWithFrame:v16 configuration:?];
      v12 = self->_overlayView;
      self->_overlayView = v11;

      [(SFURLFieldOverlayView *)self->_overlayView setAutoresizingMask:18];
      [(SFCapsuleNavigationBar *)self bounds];
      [(SFURLFieldOverlayView *)self->_overlayView _setContinuousCornerRadius:CGRectGetHeight(v18) * 0.5];
      eraserView = [(SFURLFieldOverlayView *)self->_overlayView eraserView];
      [(SFCapsuleNavigationBar *)self addSubview:eraserView];

      [(SFCapsuleNavigationBar *)self addSubview:self->_overlayView];
      layer = [(SFURLFieldOverlayView *)self->_overlayView layer];
      [layer setZPosition:1.79769313e308];

      [(SFCapsuleNavigationBar *)self updateAccessibilityIdentifier];
      [(SFURLFieldOverlayView *)self->_overlayView present];
    }
  }

  else
  {
    [(SFURLFieldOverlayView *)overlayView dismissAndRemove];
    v15 = self->_overlayView;
    self->_overlayView = 0;
  }
}

- (void)navigationBarItemDidUpdateFluidProgressController:(id)controller
{
  fluidProgressController = [controller fluidProgressController];
  [fluidProgressController registerObserver:self->_progressView];
}

- (void)_updatePageFormatButtonForNavigationBarItem:(id)item shouldResetDiscovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  itemCopy = item;
  pageFormatItemState = [(_SFBarRegistrationToken *)self->_registration pageFormatItemState];
  v7 = pageFormatItemState;
  if (discoveryCopy)
  {
    v7 = pageFormatItemState & 0xFFFFFFFFFFFFFFEFLL;
  }

  else if (!itemCopy)
  {
    v15 = pageFormatItemState | 0x10;
    goto LABEL_40;
  }

  tintStyle = [(_SFBarTheme *)self->_theme tintStyle];
  v9 = tintStyle;
  if (tintStyle)
  {
    if (_SFIsPrivateTintStyle(tintStyle))
    {
      if (_SFIsDarkTintStyle(v9))
      {
        v9 = 0;
      }

      else
      {
        v9 = 1024;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = itemCopy;
  if ((v7 & 0x10) != 0)
  {
    v14 = 0;
    v13 = 0;
  }

  else if ([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController isDisplaying])
  {
    currentOptions = [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController currentOptions];
    v12 = currentOptions & 0x20;
    if ((currentOptions & 0x20) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = ([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController currentOptions]>> 4) & 4;
    }

    v10 = itemCopy;
    v14 = v12 >> 5;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v10 = itemCopy;
  }

  v16 = v7 & 0xFFFFFFFFFFFF8090;
  if ([v10 showsSiriReaderPlayingIcon])
  {
    v17 = 2048;
  }

  else
  {
    v17 = 0;
  }

  v18 = ([itemCopy contentOptions] & 0x1F) != 0;
  contentOptions = [itemCopy contentOptions];
  if ([itemCopy readerButtonSelected])
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v14 | v13 | v17 | v16) & 0xFFFFFFFFFFFFEFFFLL | (v18 << 13) | ((contentOptions & 1) << 12) | v20;
  if ([itemCopy showsTranslationIcon])
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  if ([itemCopy menuButtonSelected])
  {
    v23 = 32;
  }

  else
  {
    v23 = 0;
  }

  if ([itemCopy extensionsAreActive])
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  if ([itemCopy needsExtensionBadge])
  {
    v25 = 512;
  }

  else
  {
    v25 = 0;
  }

  v26 = [itemCopy mediaStateIconToDisplay] != 0;
  hasHiddenElements = [itemCopy hasHiddenElements];
  v28 = 0x4000;
  if (!hasHiddenElements)
  {
    v28 = 0;
  }

  v15 = v22 | v9 | v23 | v24 | v25 | v21 | (v26 << 6) | v28;
LABEL_40:
  [(_SFBarRegistrationToken *)self->_registration setPageFormatItemState:v15];
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  registration = self->_registration;
  blockCopy = block;
  viewCopy = view;
  v22 = [(_SFBarRegistrationToken *)registration viewForBarItem:item];
  v17 = MEMORY[0x1E69DD250];
  [v22 bounds];
  [v17 _sf_animateLinkImage:image withAnimation:1 fromRect:viewCopy inView:v22 toRect:0 inView:blockCopy afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v18, v19, v20, v21}];
}

- (id)barItemTargetForAnimatingToBarItem:(int64_t)item
{
  if (item == 11)
  {
    return &unk_1EFF73DC0;
  }

  else
  {
    return 0;
  }
}

- (CGRect)urlOutlineFrameRelativeToView:(id)view
{
  viewCopy = view;
  [(SFCapsuleNavigationBar *)self bounds];
  [(SFCapsuleNavigationBar *)self convertRect:viewCopy toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  v4 = [(SFCapsuleNavigationBar *)self hitTest:0 withEvent:location.x, location.y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)availabilityDisplayController:(id)controller didUpdateWithState:(int64_t)state
{
  controllerCopy = controller;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  isDisplaying = [controllerCopy isDisplaying];

  if (isDisplaying)
  {
    item = self->_item;
  }

  else
  {
    item = 0;
  }

  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:item shouldResetDiscovery:state == 0];
}

- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation
{
  presentationCopy = presentation;
  v6 = self->_availabilityLabelLayoutInfo;
  v7 = objc_alloc_init(SFURLLabel);
  v8 = MEMORY[0x1E69DB878];
  _labelTextStyle = [(SFCapsuleNavigationBar *)self _labelTextStyle];
  v10 = [v8 preferredFontForTextStyle:_labelTextStyle];
  [(SFURLLabel *)v7 setFont:v10];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(SFURLLabel *)v7 setTextColor:labelColor];

  v12 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__SFCapsuleNavigationBar_availabilityDisplayController_determineBestLabelsForPresentation___block_invoke;
  v28[3] = &unk_1E721B650;
  v13 = v7;
  v29 = v13;
  selfCopy = self;
  v26 = v6;
  v27 = v12;
  v31 = v26;
  [v12 setHandler:v28];
  v14 = [[SFCapsuleNavigationBarLabelLayoutInfo alloc] initWithView:v13];
  availabilityLabelLayoutInfo = self->_availabilityLabelLayoutInfo;
  self->_availabilityLabelLayoutInfo = v14;

  array = [MEMORY[0x1E695DF70] array];
  [(SFCapsuleNavigationBar *)self _initializeLayoutInfo:self->_availabilityLabelLayoutInfo forPrimaryLabel:0 addingConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
  v17 = [presentationCopy count];
  v18 = v17 - 1;
  if (v17 == 1)
  {
LABEL_9:
    lastObject = [presentationCopy lastObject];
  }

  else
  {
    v19 = 0;
    while (1)
    {
      lastObject = [presentationCopy objectAtIndexedSubscript:v19];
      v21 = [lastObject count];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = 0;
      while (1)
      {
        v24 = [lastObject textForOptionsAtIndex:v23];
        [(SFURLLabel *)v13 setText:v24];

        [(SFCapsuleNavigationBar *)self setNeedsLayout];
        [(SFCapsuleNavigationBar *)self layoutIfNeeded];
        if ([(SFURLLabel *)v13 needsMasking])
        {
          break;
        }

        if (v22 == ++v23)
        {
          goto LABEL_10;
        }
      }

      if (++v19 == v18)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return lastObject;
}

void __91__SFCapsuleNavigationBar_availabilityDisplayController_determineBestLabelsForPresentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 48);
  v3 = (*(a1 + 40) + 616);

  objc_storeStrong(v3, v2);
}

- (CGAffineTransform)keyContentTransform
{
  v3 = *&self[15].tx;
  *&retstr->a = *&self[15].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[16].a;
  return self;
}

- (CGAffineTransform)microphoneContentTransform
{
  v3 = *&self[16].tx;
  *&retstr->a = *&self[16].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[17].a;
  return self;
}

- (SFCapsuleContentViewSizeUpdating)sizeUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);

  return WeakRetained;
}

- (_SFNavigationBarDelegateCommon)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end