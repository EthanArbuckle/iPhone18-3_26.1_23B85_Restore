@interface SFCapsuleNavigationBar
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (BOOL)_shouldCenterButtonsBetweenEdgeAndTitle:(id)a3;
- (BOOL)_shouldCenterLabels;
- (BOOL)_showsSearchIconInTitleContainer;
- (BOOL)_transitionFromButtons:(id)a3 toButtons:(id)a4 withConstraintsToDeactivate:(id)a5;
- (CGAffineTransform)keyContentTransform;
- (CGAffineTransform)microphoneContentTransform;
- (CGPoint)_minimumEdgeMargin;
- (CGPoint)_titleToEdgeMargin;
- (CGRect)keyContentRect;
- (CGRect)urlOutlineFrameRelativeToView:(id)a3;
- (CGSize)urlSize;
- (NSNumber)microphoneContentOriginX;
- (SFCapsuleContentViewSizeUpdating)sizeUpdater;
- (SFCapsuleNavigationBar)initWithCoder:(id)a3;
- (SFCapsuleNavigationBar)initWithFrame:(CGRect)a3;
- (SFCapsuleNavigationBar)initWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4;
- (UIView)unclippedContainer;
- (_SFNavigationBarDelegateCommon)delegate;
- (double)_interButtonSpacing;
- (double)_titleToButtonSpacing;
- (double)keyContentBaselineBottomInset;
- (double)keyContentCapHeightTopInset;
- (id)_horizontalAlignmentConstraintForLabel:(id)a3;
- (id)_labelTextStyle;
- (id)availabilityDisplayController:(id)a3 determineBestLabelsForPresentation:(id)a4;
- (id)barItemTargetForAnimatingToBarItem:(int64_t)a3;
- (id)initForSizingWithFrame:(CGRect)a3;
- (id)initForSizingWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4;
- (void)_createLeadingButtonConstraints;
- (void)_createTrailingButtonConstraints;
- (void)_initializeLayoutInfo:(id)a3 forPrimaryLabel:(BOOL)a4 addingConstraints:(id)a5;
- (void)_invalidateHeight;
- (void)_setHidesTitle:(BOOL)a3;
- (void)_updateButtonAlphaForMinimizedPercent:(double)a3;
- (void)_updateButtonsTransform;
- (void)_updateKeyboardInputMode:(id)a3;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updatePageFormatButtonForNavigationBarItem:(id)a3 shouldResetDiscovery:(BOOL)a4;
- (void)_updateProgressViewFillColor;
- (void)_updateSecurityAnnotation;
- (void)_updateShowsPrivateAnnotation;
- (void)_updateShowsProgressView;
- (void)_updateTitleContainerAlpha;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7;
- (void)availabilityDisplayController:(id)a3 didUpdateWithState:(int64_t)a4;
- (void)layoutSubviews;
- (void)navigationBarItemDidUpdateContentOptions:(id)a3 resetDisplay:(BOOL)a4;
- (void)navigationBarItemDidUpdateFluidProgressController:(id)a3;
- (void)navigationBarItemDidUpdateMediaStateIcon:(id)a3;
- (void)navigationBarItemDidUpdateOverlayNarrowConfiguration:(id)a3;
- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)a3;
- (void)navigationBarItemDidUpdateShowsExtensionsAvailability:(id)a3;
- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)a3;
- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)a3;
- (void)navigationBarItemDidUpdateText:(id)a3;
- (void)prepareForSizingNavigationBar:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setKeyContentTransform:(CGAffineTransform *)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setLeadingButtons:(id)a3;
- (void)setMicrophoneContentTransform:(CGAffineTransform *)a3;
- (void)setMinimizationPercent:(double)a3;
- (void)setMinimized:(BOOL)a3;
- (void)setNonKeyContentAlpha:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTheme:(id)a3;
- (void)setTrailingButtons:(id)a3;
- (void)updateAccessibilityIdentifier;
- (void)updateConstraints;
- (void)updateLabelTypesWithAvailabilityDisplayController:(id)a3 animated:(BOOL)a4;
- (void)willChangeToMinimized:(BOOL)a3 coordinator:(id)a4;
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
  v3 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer title];
  v4 = [v3 length] != 0;

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
  v3 = [(SFCapsuleNavigationBar *)self _labelTextStyle];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleTextStyle:v3];

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setHasFocusedSensitiveInputField:[(SFNavigationBarItem *)self->_item hasFocusedSensitiveFieldOnCurrentPage]];
  v4 = [(SFNavigationBarItem *)self->_item securityAnnotation];
  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setSecurityAnnotation:v4];
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
  v3 = [(SFCapsuleNavigationBar *)self layoutMarginsGuide];
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
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide centerYAnchor];
    v8 = [v3 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v6 addObject:v9];

    v10 = [(SFCapsuleNavigationBar *)self _shouldCenterLabels];
    textVerticalAlignmentGuide = self->_textVerticalAlignmentGuide;
    if (v10)
    {
      v12 = [(UILayoutGuide *)textVerticalAlignmentGuide centerXAnchor];
      [(SFCapsuleNavigationBar *)self centerXAnchor];
    }

    else
    {
      v12 = [(UILayoutGuide *)textVerticalAlignmentGuide leadingAnchor];
      [(SFCapsuleNavigationBar *)self leadingAnchor];
    }
    v13 = ;
    v14 = [v12 constraintEqualToAnchor:v13];
    LODWORD(v15) = 1112276992;
    v16 = [v14 sf_withPriority:v15];
    [v6 addObject:v16];

    v17 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide topAnchor];
    v18 = [(SFCapsuleNavigationBar *)self topAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:v5];
    [v6 addObject:v19];

    v20 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide bottomAnchor];
    v21 = [(SFCapsuleNavigationBar *)self bottomAnchor];
    v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-v5];
    [v6 addObject:v22];

    v23 = [v6 copy];
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
  v3 = [(SFCapsuleNavigationBar *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
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

  v8 = [(_SFFluidProgressView *)self->_progressView layer];
  [v8 setCompositingFilter:v9];

  if (v7)
  {
  }
}

- (void)_createLeadingButtonConstraints
{
  v3 = [(SFCapsuleNavigationBar *)self _shouldHideButtons];
  v4 = [MEMORY[0x1E695DF70] array];
  if (v3 || ![(NSArray *)self->_leadingButtons count])
  {
    v5 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
    v6 = [(SFCapsuleNavigationBar *)self leadingAnchor];
    [(SFCapsuleNavigationBar *)self _titleToEdgeMargin];
    v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:?];
    [v4 addObject:v7];
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
    v15 = [(NSArray *)self->_leadingButtons firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    leadingButtons = self->_leadingButtons;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __57__SFCapsuleNavigationBar__createLeadingButtonConstraints__block_invoke;
    v47[3] = &unk_1E721B560;
    v18 = v4;
    v48 = v18;
    v49 = self;
    v53 = v3;
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
        v20 = [v15 widthAnchor];
        [v15 intrinsicContentSize];
        v21 = [v20 constraintGreaterThanOrEqualToConstant:?];
        [v18 addObject:v21];
      }

      v22 = [v15 widthAnchor];
      v23 = [v15 heightAnchor];
      v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];
      [v18 addObject:v24];

      v19 = 4.0;
    }

    v25 = [v15 centerXAnchor];
    v46 = v3;
    if (isKindOfClass)
    {
      leadingButtonCenterXAnchor = [(SFCapsuleNavigationBar *)self leadingAnchor];
    }

    else
    {
      leadingButtonCenterXAnchor = self->_leadingButtonCenterXAnchor;
    }

    v27 = [v25 constraintEqualToAnchor:leadingButtonCenterXAnchor];
    LODWORD(v28) = 1131413504;
    v29 = [v27 sf_withPriority:v28];
    [v18 addObject:v29];

    if (isKindOfClass)
    {

      v30 = [v15 leadingAnchor];
      v31 = [(SFCapsuleNavigationBar *)self leadingAnchor];
      v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31 constant:v19];
      [v18 addObject:v32];

      v33 = [v15 topAnchor];
      v34 = [(SFCapsuleNavigationBar *)self topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:v19];
      [v18 addObject:v35];

      v36 = [v15 bottomAnchor];
      v37 = [(SFCapsuleNavigationBar *)self bottomAnchor];
      [v36 constraintEqualToAnchor:v37 constant:-v19];
    }

    else
    {

      v36 = [v15 leadingAnchor];
      v37 = [(SFCapsuleNavigationBar *)self leadingAnchor];
      [v36 constraintGreaterThanOrEqualToAnchor:v37 constant:v9];
    }
    v38 = ;
    [v18 addObject:v38];

    if (!v46)
    {
      v39 = [(NSArray *)self->_leadingButtons lastObject];
      v40 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
      v41 = [v39 trailingAnchor];
      v42 = 2.0;
      if ((isKindOfClass & 1) == 0)
      {
        v42 = v9;
      }

      v43 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:v42];
      [v18 addObject:v43];
    }
  }

  v44 = [v4 copy];
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

  v6 = [(SFCapsuleNavigationBar *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v7, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
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
  v2 = [(SFCapsuleNavigationBar *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC50]) == NSOrderedAscending)
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
  v3 = [(SFCapsuleNavigationBar *)self _shouldHideButtons];
  v4 = [MEMORY[0x1E695DF70] array];
  if (v3 || ![(NSArray *)self->_trailingButtons count])
  {
    v5 = [(SFCapsuleNavigationBar *)self trailingAnchor];
    v6 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
    [(SFCapsuleNavigationBar *)self _titleToEdgeMargin];
    v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:?];
    [v4 addObject:v7];
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
    v16 = v4;
    v42 = v16;
    v43 = self;
    v47 = v3;
    v44 = v9;
    v45 = v11;
    v46 = v14;
    [(NSArray *)trailingButtons enumerateObjectsUsingBlock:&v38];
    v17 = [(NSArray *)self->_trailingButtons firstObject:v38];
    v18 = [v17 trailingAnchor];
    v19 = [(SFCapsuleNavigationBar *)self trailingAnchor];
    v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:-v9];
    [v16 addObject:v20];

    v21 = [v17 centerXAnchor];
    v22 = [v21 constraintEqualToAnchor:self->_trailingButtonCenterXAnchor];
    LODWORD(v23) = 1131413504;
    v24 = [v22 sf_withPriority:v23];
    [v16 addObject:v24];

    if (!v3)
    {
      v25 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
      v26 = [(NSArray *)self->_trailingButtons lastObject];
      if ([(SFCapsuleNavigationBar *)self _shouldCenterButtonsBetweenEdgeAndTitle:self->_trailingButtons])
      {
        v27 = [v26 centerXAnchor];
        v28 = [v27 constraintGreaterThanOrEqualToAnchor:v25];
        LODWORD(v29) = 1131413504;
        v30 = [v28 sf_withPriority:v29];
        [v16 addObject:v30];

        v31 = [v26 leadingAnchor];
        v32 = v31;
        v33 = v25;
        v34 = v9;
      }

      else
      {
        v32 = [v26 leadingAnchor];
        [(SFCapsuleNavigationBar *)self _titleToButtonSpacing];
        v31 = v32;
        v33 = v25;
      }

      v35 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:v34];
      [v16 addObject:v35];
    }
  }

  v36 = [v4 copy];
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
  v4 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (self->_isSelected)
  {
    v5 = [(_SFFluidProgressView *)self->_progressView isShowingProgress]^ 1 | (minimizationPercent > 0.0) & ~v4;
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

- (SFCapsuleNavigationBar)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFCapsuleNavigationBar;
  return [(SFCapsuleNavigationBar *)&v4 initWithCoder:a3];
}

- (id)initForSizingWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[SFFeatureManager sharedFeatureManager];
  v9 = -[SFCapsuleNavigationBar initForSizingWithFrame:layoutStyle:](self, "initForSizingWithFrame:layoutStyle:", [v8 preferredCapsuleLayoutStyle], x, y, width, height);

  return v9;
}

- (id)initForSizingWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4
{
  v4 = [(SFCapsuleNavigationBar *)self initWithFrame:a4 layoutStyle:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_isForSizing = 1;
    v6 = v4;
  }

  return v5;
}

- (SFCapsuleNavigationBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[SFFeatureManager sharedFeatureManager];
  v9 = -[SFCapsuleNavigationBar initWithFrame:layoutStyle:](self, "initWithFrame:layoutStyle:", [v8 preferredCapsuleLayoutStyle], x, y, width, height);

  return v9;
}

- (SFCapsuleNavigationBar)initWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4
{
  v85[9] = *MEMORY[0x1E69E9840];
  v83.receiver = self;
  v83.super_class = SFCapsuleNavigationBar;
  v5 = [(SFCapsuleNavigationBar *)&v83 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(SFCapsuleNavigationBar *)v5 setInsetsLayoutMarginsFromSafeArea:0];
    v6->_layoutStyle = a4;
    v7 = [_SFFluidProgressView alloc];
    [(SFCapsuleNavigationBar *)v6 bounds];
    v8 = [(_SFFluidProgressView *)v7 initWithFrame:?];
    progressView = v6->_progressView;
    v6->_progressView = v8;

    [(_SFFluidProgressView *)v6->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFFluidProgressView *)v6->_progressView setDelegate:v6];
    v10 = [(_SFFluidProgressView *)v6->_progressView layer];
    [v10 setZPosition:1.0];

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

    v21 = [MEMORY[0x1E69DC668] sharedApplication];
    v6->_keyboardInputModeIsRTL = [v21 safari_currentKeyboardInputIsRTL];

    [(SFCapsuleNavigationBar *)v6 _updateLayoutDirectionIfNeeded];
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v6 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
    [v22 addObserver:v6 selector:sel__updateKeyboardInputMode_ name:@"SFDidGetTextInputModeDirectionality" object:0];
    v80 = v22;
    [v22 addObserver:v6 selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
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
    v27 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v28 = [v23 widthAnchor];
    v29 = v28;
    if (v27)
    {
      v30 = [(SFCapsuleNavigationBar *)v6 heightAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30 multiplier:0.5];

      v32 = [v26 widthAnchor];
      v33 = [(SFCapsuleNavigationBar *)v6 heightAnchor];
      v82 = [v32 constraintGreaterThanOrEqualToAnchor:v33 multiplier:0.5];
    }

    else
    {
      if (a4 == 2)
      {
        v34 = 18.0;
      }

      else
      {
        v34 = 22.0;
      }

      v31 = [v28 constraintEqualToConstant:v34];

      v32 = [v26 widthAnchor];
      v82 = [v32 constraintEqualToConstant:v34];
    }

    v35 = [v23 trailingAnchor];
    leadingButtonCenterXAnchor = v6->_leadingButtonCenterXAnchor;
    v6->_leadingButtonCenterXAnchor = v35;

    v37 = [v26 leadingAnchor];
    trailingButtonCenterXAnchor = v6->_trailingButtonCenterXAnchor;
    v6->_trailingButtonCenterXAnchor = v37;

    v67 = MEMORY[0x1E696ACD8];
    v79 = v23;
    v76 = [v23 leadingAnchor];
    v75 = [(SFCapsuleNavigationBar *)v6 leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v85[0] = v74;
    v85[1] = v31;
    v77 = v31;
    v73 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide widthAnchor];
    v72 = [v73 constraintEqualToConstant:0.0];
    LODWORD(v39) = 1130758144;
    v71 = [v72 sf_withPriority:v39];
    v85[2] = v71;
    v70 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide heightAnchor];
    v69 = [v70 constraintEqualToConstant:0.0];
    LODWORD(v40) = 1130758144;
    v68 = [v69 sf_withPriority:v40];
    v85[3] = v68;
    v66 = [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer leadingAnchor];
    v65 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide leadingAnchor];
    v64 = [v66 constraintGreaterThanOrEqualToAnchor:v65];
    v85[4] = v64;
    v63 = [(SFUnifiedTabBarItemTitleContainerView *)v6->_titleContainer trailingAnchor];
    v62 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide trailingAnchor];
    v41 = [v63 constraintLessThanOrEqualToAnchor:v62];
    v85[5] = v41;
    v42 = [(UILayoutGuide *)v6->_textVerticalAlignmentGuide centerXAnchor];
    v43 = [(SFCapsuleNavigationBar *)v6 centerXAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    LODWORD(v45) = 1132134400;
    v46 = [v44 sf_withPriority:v45];
    v85[6] = v46;
    v78 = v26;
    v47 = [v26 trailingAnchor];
    v48 = [(SFCapsuleNavigationBar *)v6 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
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
    v53 = [MEMORY[0x1E695DF70] array];
    [(SFCapsuleNavigationBar *)v6 _initializeLayoutInfo:v6->_titleLabelLayoutInfo forPrimaryLabel:1 addingConstraints:v53];
    [MEMORY[0x1E696ACD8] activateConstraints:v53];
    v54 = [objc_alloc(MEMORY[0x1E69C9780]) initWithPresenter:v6];
    availabilityDisplayController = v6->_availabilityDisplayController;
    v6->_availabilityDisplayController = v54;

    v56 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v57 = [v56 safari_numberForKey:@"DebugReaderGlyphDisplayDuration"];

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

- (void)_updateKeyboardInputMode:(id)a3
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != v5)
  {
    self->_keyboardInputModeIsRTL = v5;

    [(SFCapsuleNavigationBar *)self _updateLayoutDirectionIfNeeded];
  }
}

- (BOOL)_shouldCenterButtonsBetweenEdgeAndTitle:(id)a3
{
  if ([a3 count] > 1)
  {
    return 0;
  }

  v5 = [(SFCapsuleNavigationBar *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v4 = UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x1E69DDC60]) == NSOrderedAscending;
  return v4;
}

- (id)_horizontalAlignmentConstraintForLabel:(id)a3
{
  v4 = a3;
  if ([(SFCapsuleNavigationBar *)self _shouldCenterLabels])
  {
    v5 = [v4 centerXAnchor];

    [(SFCapsuleNavigationBar *)self centerXAnchor];
  }

  else
  {
    v5 = [v4 leadingAnchor];

    [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
  }
  v6 = ;
  v7 = [v5 constraintEqualToAnchor:v6];
  LODWORD(v8) = 1112014848;
  v9 = [v7 sf_withPriority:v8];

  return v9;
}

- (double)_titleToButtonSpacing
{
  v2 = [(SFCapsuleNavigationBar *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC60]) == NSOrderedAscending)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 10.0;
  }

  return v4;
}

- (void)setItem:(id)a3
{
  v5 = a3;
  item = self->_item;
  if (item != v5)
  {
    v16 = v5;
    [(SFNavigationBarItem *)item removeObserver:self];
    v7 = [(SFNavigationBarItem *)self->_item fluidProgressController];
    [v7 unregisterObserver:self->_progressView];

    LODWORD(v7) = [(SFCapsuleNavigationBar *)self _shouldCenterLabels];
    objc_storeStrong(&self->_item, a3);
    [(SFNavigationBarItem *)self->_item addObserver:self];
    progressView = self->_progressView;
    v9 = [(SFNavigationBarItem *)self->_item fluidProgressStateSource];
    v10 = [v9 progressState];
    [(_SFFluidProgressView *)progressView setProgressToCurrentPositionForState:v10];

    v11 = [(SFNavigationBarItem *)self->_item fluidProgressController];
    [v11 registerObserver:self->_progressView];

    v12 = [(SFNavigationBarItem *)v16 text];
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitle:v12];

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchIcon:[(SFCapsuleNavigationBar *)self _showsSearchIconInTitleContainer]];
    [(SFCapsuleNavigationBar *)self setLeadingButtons:self->_externalLeadingButtons];
    [(SFCapsuleNavigationBar *)self _updateSecurityAnnotation];
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
    if (v7 != [(SFCapsuleNavigationBar *)self _shouldCenterLabels])
    {
      v13 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
      [v13 setActive:0];

      [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
      v14 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
      [v14 setActive:0];

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
    v5 = v16;
  }
}

- (void)prepareForSizingNavigationBar:(id)a3
{
  v4 = a3;
  v5 = [v4 leadingButtons];
  v6 = [(SFCapsuleNavigationBar *)self leadingButtons];
  v7 = [SFPlaceholderView placeholdersMatchingIntrinsicContentSizeOfViews:v5 reusingPlaceholders:v6];
  [(SFCapsuleNavigationBar *)self setLeadingButtons:v7];

  v8 = [v4 trailingButtons];
  v9 = [(SFCapsuleNavigationBar *)self trailingButtons];
  v10 = [SFPlaceholderView placeholdersMatchingIntrinsicContentSizeOfViews:v8 reusingPlaceholders:v9];
  [(SFCapsuleNavigationBar *)self setTrailingButtons:v10];

  v11 = [v4 theme];
  [(SFCapsuleNavigationBar *)self setTheme:v11];

  v12 = [v4 item];
  [(SFCapsuleNavigationBar *)self setItem:v12];

  v13 = v4[78];

  [(SFCapsuleNavigationBar *)self updateLabelTypesWithAvailabilityDisplayController:v13 animated:0];
}

- (void)willChangeToMinimized:(BOOL)a3 coordinator:(id)a4
{
  if (a3)
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
  v12 = a3;
  v6 = a4;
  [v6 addKeyframeWithRelativeStartTime:v11 relativeDuration:v5 animations:0.33];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer beginTitleTextStyleAnimation];
  v7 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo view];
  [v7 beginTextSizeAnimation];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SFCapsuleNavigationBar_willChangeToMinimized_coordinator___block_invoke_2;
  v9[3] = &unk_1E721B400;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v6 addCompletion:v9];
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

  v6 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
  [v6 setActive:0];

  [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
  v7 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
  [v7 setActive:0];

  [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo setConstraintForHorizontalAlignment:0];
  [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];
  [(SFCapsuleNavigationBar *)self setNeedsLayout];
  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  [WeakRetained invalidateHeightForCapsuleContentView:self];

  registration = self->_registration;

  [(_SFBarRegistrationToken *)registration updateBarAnimated:0];
}

- (void)setSelected:(BOOL)a3
{
  if (self->_isSelected != a3)
  {
    self->_isSelected = a3;
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

- (void)setMinimizationPercent:(double)a3
{
  if (self->_minimizationPercent != a3)
  {
    self->_minimizationPercent = a3;
    [(SFCapsuleNavigationBar *)self _updateButtonAlphaForMinimizedPercent:?];
  }
}

- (void)setMinimized:(BOOL)a3
{
  if (self->_isMinimized != a3)
  {
    self->_isMinimized = a3;
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
      if (a3)
      {
        [(_SFBarTheme *)v10 tabTitleTheme];
      }

      else
      {
        [(_SFBarTheme *)v10 titleTheme];
      }
      v12 = ;
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:v12];

      v13 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer theme];
      v14 = [v13 placeholderTextColor];
      [(UIView *)self->_searchIndicatorView setTintColor:v14];
    }

    [(SFCapsuleNavigationBar *)self _updateLabelContents];
    [(SFCapsuleNavigationBar *)self _updateButtonsTransform];
    v15 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo constraintForHorizontalAlignment];
    [v15 setActive:0];

    [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_titleLabelLayoutInfo setConstraintForHorizontalAlignment:0];
    v16 = [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo constraintForHorizontalAlignment];
    [v16 setActive:0];

    [(SFCapsuleNavigationBarLabelLayoutInfo *)self->_availabilityLabelLayoutInfo setConstraintForHorizontalAlignment:0];
    [(SFCapsuleNavigationBar *)self _updateShowsPrivateAnnotation];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFCapsuleNavigationBar;
  [(SFCapsuleNavigationBar *)&v5 setHighlighted:a3];
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

- (void)setKeyContentTransform:(CGAffineTransform *)a3
{
  p_keyContentTransform = &self->_keyContentTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_keyContentTransform.c;
  *&v11.a = *&self->_keyContentTransform.a;
  *&v11.c = v7;
  *&v11.tx = *&self->_keyContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_keyContentTransform->c = *&a3->c;
    *&p_keyContentTransform->tx = v9;
    *&p_keyContentTransform->a = v8;
    v10 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v10;
    *&t1.tx = *&a3->tx;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTransform:&t1];
  }
}

- (void)setNonKeyContentAlpha:(double)a3
{
  if (self->_nonKeyContentAlpha != a3)
  {
    self->_nonKeyContentAlpha = a3;
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
  v3 = [(_SFBarRegistrationToken *)self->_registration microphoneButton];
  v4 = [v3 imageView];

  if ([v4 isDescendantOfView:self])
  {
    v5 = MEMORY[0x1E696AD98];
    [v4 frame];
    [(SFCapsuleNavigationBar *)self convertRect:v4 fromView:?];
    v6 = [v5 numberWithDouble:CGRectGetMinX(v9)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMicrophoneContentTransform:(CGAffineTransform *)a3
{
  p_microphoneContentTransform = &self->_microphoneContentTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_microphoneContentTransform.c;
  *&t2.a = *&self->_microphoneContentTransform.a;
  *&t2.c = v7;
  *&t2.tx = *&self->_microphoneContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_microphoneContentTransform->c = *&a3->c;
    *&p_microphoneContentTransform->tx = v9;
    *&p_microphoneContentTransform->a = v8;
    *&v11.a = *&a3->a;
    *&v11.c = *&a3->c;
    *&v11.tx = *&a3->tx;
    v10 = [(_SFBarRegistrationToken *)self->_registration microphoneButton];
    t1 = v11;
    [v10 setTransform:&t1];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(SFCapsuleNavigationBar *)self _invalidateHeight];
  }
}

- (void)setTheme:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_theme, a3);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 titleTheme];
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:v7];
    }

    v8 = [(SFCapsuleNavigationBar *)self traitOverrides];
    [v8 setNSIntegerValue:objc_msgSend(v5 forTrait:{"tintStyle"), objc_opt_class()}];

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
          v15 = [v5 toolbarControlsTintColor];
          [v14 setTintColor:v15];

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
          v22 = [v5 toolbarControlsTintColor];
          [v21 setTintColor:v22];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }
}

- (void)setLeadingButtons:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695E0F0];
  v23 = v4;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;
  if (-[SFNavigationBarItem showsSearchIndicator](self->_item, "showsSearchIndicator") && ![v23 count])
  {
    searchIndicatorView = self->_searchIndicatorView;
    if (!searchIndicatorView)
    {
      v12 = MEMORY[0x1E69DCAD8];
      v13 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
      v14 = [v12 configurationWithTextStyle:v13 scale:2];

      v15 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
      v16 = [v14 configurationByApplyingConfiguration:v15];

      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass" withConfiguration:v16];
      v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
      v19 = self->_searchIndicatorView;
      self->_searchIndicatorView = v18;

      v20 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer theme];
      v21 = [v20 placeholderTextColor];
      [(UIView *)self->_searchIndicatorView setTintColor:v21];

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

- (void)setTrailingButtons:(id)a3
{
  v7 = a3;
  if ([SFCapsuleNavigationBar _transitionFromButtons:"_transitionFromButtons:toButtons:withConstraintsToDeactivate:" toButtons:self->_trailingButtons withConstraintsToDeactivate:?])
  {
    v4 = [v7 copy];
    trailingButtons = self->_trailingButtons;
    self->_trailingButtons = v4;

    trailingButtonConstraints = self->_trailingButtonConstraints;
    self->_trailingButtonConstraints = 0;

    [(SFCapsuleNavigationBar *)self _updateButtonsTransform];
  }
}

- (BOOL)_transitionFromButtons:(id)a3 toButtons:(id)a4 withConstraintsToDeactivate:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 isEqualToArray:v9];
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v29 = v10;
    v30 = v11;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v8;
    v13 = v8;
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
    v18 = v9;
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
          v25 = [(_SFBarTheme *)self->_theme toolbarControlsTintColor];
          [v24 setTintColor:v25];

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

    v10 = v29;
    [MEMORY[0x1E696ACD8] deactivateConstraints:v29];
    [(SFCapsuleNavigationBar *)self setNeedsUpdateConstraints];
    v8 = v31;
    v12 = v30;
  }

  return v12 ^ 1;
}

- (void)_updateButtonAlphaForMinimizedPercent:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _SFInterpolate(([(SFCapsuleNavigationBar *)self _shouldHideButtonsForMinimized:0]^ 1), ([(SFCapsuleNavigationBar *)self _shouldHideButtonsForMinimized:1]^ 1), a3) * self->_nonKeyContentAlpha;
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

- (void)updateLabelTypesWithAvailabilityDisplayController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  v8 = WeakRetained;
  v9 = 0;
  if (v4 && WeakRetained)
  {
    v9 = !self->_isForSizing;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = self->_availabilityLabelLayoutInfo;
  if ([v6 isDisplaying])
  {
    v12 = objc_alloc_init(SFURLLabel);
    v13 = MEMORY[0x1E69DB878];
    v14 = [(SFCapsuleNavigationBar *)self _labelTextStyle];
    v15 = [v13 preferredFontForTextStyle:v14];
    [(SFURLLabel *)v12 setFont:v15];

    v16 = [v6 currentLabel];
    [(SFURLLabel *)v12 setText:v16];

    v17 = [MEMORY[0x1E69DC888] labelColor];
    [(SFURLLabel *)v12 setTextColor:v17];

    v18 = [[SFCapsuleNavigationBarLabelLayoutInfo alloc] initWithView:v12];
    [(SFCapsuleNavigationBar *)self _initializeLayoutInfo:v18 forPrimaryLabel:0 addingConstraints:v10];
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
      [MEMORY[0x1E696ACD8] activateConstraints:v10];
      [v10 removeAllObjects];
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

    v21 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
    [(SFCapsuleNavigationBar *)self _updateLabelContents];
    v29 = v21;
    if (v9)
    {
      v22 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleTextStyle];
      v23 = WBSIsEqual();

      [MEMORY[0x1E696ACD8] activateConstraints:v10];
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
      [MEMORY[0x1E696ACD8] activateConstraints:v10];
      v24 = 0;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __85__SFCapsuleNavigationBar_updateLabelTypesWithAvailabilityDisplayController_animated___block_invoke_3;
    v37[3] = &unk_1E721B600;
    v25 = v11;
    v40 = v24;
    v38 = v25;
    v39 = self;
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
      v35 = self;
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

- (void)_initializeLayoutInfo:(id)a3 forPrimaryLabel:(BOOL)a4 addingConstraints:(id)a5
{
  v27 = a3;
  v8 = a5;
  if (!a4)
  {
    v9 = [v27 view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAdjustsFontForContentSizeCategory:1];
    [v9 setAccessibilityIdentifier:@"TabBarItemSubtitle"];
    [v9 setFadeOutEdge:1];
    LODWORD(v10) = 1131413504;
    [v9 setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1144586240;
    [v9 setContentCompressionResistancePriority:0 forAxis:v11];
    [(SFCapsuleNavigationBar *)self addSubview:v9];
  }

  v12 = [v27 view];
  v13 = [v12 topAnchor];
  v14 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v8 addObject:v15];

  v16 = [v12 bottomAnchor];
  v17 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v8 addObject:v18];

  v19 = [(SFCapsuleNavigationBar *)self _horizontalAlignmentConstraintForLabel:v12];
  [v27 setConstraintForHorizontalAlignment:v19];

  v20 = [v27 constraintForHorizontalAlignment];
  [v8 addObject:v20];

  v21 = [v12 leadingAnchor];
  v22 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide leadingAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
  [v8 addObject:v23];

  v24 = [v12 trailingAnchor];
  v25 = [(UILayoutGuide *)self->_textVerticalAlignmentGuide trailingAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25];
  [v8 addObject:v26];
}

- (void)_setHidesTitle:(BOOL)a3
{
  if (self->_hidesTitle != a3)
  {
    self->_hidesTitle = a3;
    [(SFCapsuleNavigationBar *)self _updateTitleContainerAlpha];
  }
}

- (void)navigationBarItemDidUpdateText:(id)a3
{
  v4 = [a3 text];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitle:v4];

  WeakRetained = objc_loadWeakRetained(&self->_sizeUpdater);
  [WeakRetained invalidateHeightForCapsuleContentView:self];
}

- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)a3
{
  v4 = [(SFCapsuleNavigationBar *)self _showsSearchIconInTitleContainer];
  titleContainer = self->_titleContainer;

  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setShowsSearchIcon:v4];
}

- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)a3
{
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];

  [(SFCapsuleNavigationBar *)self _updateSecurityAnnotation];
}

- (void)navigationBarItemDidUpdateContentOptions:(id)a3 resetDisplay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  }

  -[WBSContentAvailabilityDisplayController updateToContentOptions:](self->_availabilityDisplayController, "updateToContentOptions:", [v6 contentOptions]);
}

- (void)navigationBarItemDidUpdateShowsExtensionsAvailability:(id)a3
{
  v4 = a3;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:v4 shouldResetDiscovery:0];
}

- (void)navigationBarItemDidUpdateMediaStateIcon:(id)a3
{
  v4 = a3;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  [(SFCapsuleNavigationBar *)self _updateLabelContents];
  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:v4 shouldResetDiscovery:0];
}

- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)a3
{
  [(SFCapsuleNavigationBar *)self setNeedsLayout];
  registration = self->_registration;

  [(_SFBarRegistrationToken *)registration updateBarAnimated:1];
}

- (void)navigationBarItemDidUpdateOverlayNarrowConfiguration:(id)a3
{
  v4 = [a3 overlayNarrowConfiguration];
  overlayView = self->_overlayView;
  v16 = v4;
  if (v4)
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
      v13 = [(SFURLFieldOverlayView *)self->_overlayView eraserView];
      [(SFCapsuleNavigationBar *)self addSubview:v13];

      [(SFCapsuleNavigationBar *)self addSubview:self->_overlayView];
      v14 = [(SFURLFieldOverlayView *)self->_overlayView layer];
      [v14 setZPosition:1.79769313e308];

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

- (void)navigationBarItemDidUpdateFluidProgressController:(id)a3
{
  v4 = [a3 fluidProgressController];
  [v4 registerObserver:self->_progressView];
}

- (void)_updatePageFormatButtonForNavigationBarItem:(id)a3 shouldResetDiscovery:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  v6 = [(_SFBarRegistrationToken *)self->_registration pageFormatItemState];
  v7 = v6;
  if (v4)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFEFLL;
  }

  else if (!v29)
  {
    v15 = v6 | 0x10;
    goto LABEL_40;
  }

  v8 = [(_SFBarTheme *)self->_theme tintStyle];
  v9 = v8;
  if (v8)
  {
    if (_SFIsPrivateTintStyle(v8))
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

  v10 = v29;
  if ((v7 & 0x10) != 0)
  {
    v14 = 0;
    v13 = 0;
  }

  else if ([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController isDisplaying])
  {
    v11 = [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController currentOptions];
    v12 = v11 & 0x20;
    if ((v11 & 0x20) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = ([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController currentOptions]>> 4) & 4;
    }

    v10 = v29;
    v14 = v12 >> 5;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v10 = v29;
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

  v18 = ([v29 contentOptions] & 0x1F) != 0;
  v19 = [v29 contentOptions];
  if ([v29 readerButtonSelected])
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v14 | v13 | v17 | v16) & 0xFFFFFFFFFFFFEFFFLL | (v18 << 13) | ((v19 & 1) << 12) | v20;
  if ([v29 showsTranslationIcon])
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  if ([v29 menuButtonSelected])
  {
    v23 = 32;
  }

  else
  {
    v23 = 0;
  }

  if ([v29 extensionsAreActive])
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  if ([v29 needsExtensionBadge])
  {
    v25 = 512;
  }

  else
  {
    v25 = 0;
  }

  v26 = [v29 mediaStateIconToDisplay] != 0;
  v27 = [v29 hasHiddenElements];
  v28 = 0x4000;
  if (!v27)
  {
    v28 = 0;
  }

  v15 = v22 | v9 | v23 | v24 | v25 | v21 | (v26 << 6) | v28;
LABEL_40:
  [(_SFBarRegistrationToken *)self->_registration setPageFormatItemState:v15];
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  registration = self->_registration;
  v15 = a7;
  v16 = a5;
  v22 = [(_SFBarRegistrationToken *)registration viewForBarItem:a6];
  v17 = MEMORY[0x1E69DD250];
  [v22 bounds];
  [v17 _sf_animateLinkImage:a3 withAnimation:1 fromRect:v16 inView:v22 toRect:0 inView:v15 afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v18, v19, v20, v21}];
}

- (id)barItemTargetForAnimatingToBarItem:(int64_t)a3
{
  if (a3 == 11)
  {
    return &unk_1EFF73DC0;
  }

  else
  {
    return 0;
  }
}

- (CGRect)urlOutlineFrameRelativeToView:(id)a3
{
  v4 = a3;
  [(SFCapsuleNavigationBar *)self bounds];
  [(SFCapsuleNavigationBar *)self convertRect:v4 toView:?];
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

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  v4 = [(SFCapsuleNavigationBar *)self hitTest:0 withEvent:a4.x, a4.y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)availabilityDisplayController:(id)a3 didUpdateWithState:(int64_t)a4
{
  v6 = a3;
  [(SFCapsuleNavigationBar *)self _updateLabelTypesAnimated:1];
  v7 = [v6 isDisplaying];

  if (v7)
  {
    item = self->_item;
  }

  else
  {
    item = 0;
  }

  [(SFCapsuleNavigationBar *)self _updatePageFormatButtonForNavigationBarItem:item shouldResetDiscovery:a4 == 0];
}

- (id)availabilityDisplayController:(id)a3 determineBestLabelsForPresentation:(id)a4
{
  v5 = a4;
  v6 = self->_availabilityLabelLayoutInfo;
  v7 = objc_alloc_init(SFURLLabel);
  v8 = MEMORY[0x1E69DB878];
  v9 = [(SFCapsuleNavigationBar *)self _labelTextStyle];
  v10 = [v8 preferredFontForTextStyle:v9];
  [(SFURLLabel *)v7 setFont:v10];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [(SFURLLabel *)v7 setTextColor:v11];

  v12 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__SFCapsuleNavigationBar_availabilityDisplayController_determineBestLabelsForPresentation___block_invoke;
  v28[3] = &unk_1E721B650;
  v13 = v7;
  v29 = v13;
  v30 = self;
  v26 = v6;
  v27 = v12;
  v31 = v26;
  [v12 setHandler:v28];
  v14 = [[SFCapsuleNavigationBarLabelLayoutInfo alloc] initWithView:v13];
  availabilityLabelLayoutInfo = self->_availabilityLabelLayoutInfo;
  self->_availabilityLabelLayoutInfo = v14;

  v16 = [MEMORY[0x1E695DF70] array];
  [(SFCapsuleNavigationBar *)self _initializeLayoutInfo:self->_availabilityLabelLayoutInfo forPrimaryLabel:0 addingConstraints:v16];
  [MEMORY[0x1E696ACD8] activateConstraints:v16];
  v17 = [v5 count];
  v18 = v17 - 1;
  if (v17 == 1)
  {
LABEL_9:
    v20 = [v5 lastObject];
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = [v5 objectAtIndexedSubscript:v19];
      v21 = [v20 count];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = 0;
      while (1)
      {
        v24 = [v20 textForOptionsAtIndex:v23];
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

  return v20;
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