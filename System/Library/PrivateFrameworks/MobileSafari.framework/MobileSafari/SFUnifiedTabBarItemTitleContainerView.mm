@interface SFUnifiedTabBarItemTitleContainerView
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)_shouldShowAvailabilityLabel;
- (BOOL)_showsView:(id)a3;
- (BOOL)requiresTruncationToDisplayAvailabilityLabel:(id)a3;
- (CGRect)_searchFieldFrame;
- (CGRect)contentFrame;
- (CGRect)iconFrame;
- (CGRect)titleRect;
- (CGSize)_preferredSizeForView:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)urlSize;
- (NSArray)_arrangedViews;
- (NSArray)_arrangedViewsByContentCompressionResistancePriority;
- (NSArray)squishedAccessoryViews;
- (NSDirectionalEdgeInsets)_effectiveDirectionalLayoutMargins;
- (SFUnifiedTabBarItemTitleContainerView)initWithAlignment:(int64_t)a3;
- (UIEdgeInsets)_effectiveLayoutMargins;
- (double)_alphaForView:(id)a3;
- (double)_collapsedWidthForView:(id)a3;
- (double)_spacingBetweenView:(id)a3 nextView:(id)a4;
- (double)minimumWidthToShowTitle;
- (double)urlBaselineToBottomBoundsDistanceForHeight:(double)a3;
- (double)urlCapHeightToTopBoundsDistanceForHeight:(double)a3;
- (id)_lastVisibleViewInViews:(id)a3;
- (id)_placeholderText;
- (id)_squishedAccessorySymbolConfiguration;
- (id)_squishedIconView;
- (id)_titleFontWithTraitCollection:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)prepareForAvailabilityPresentation;
- (void)_layOutFakeClearButtonUsingPresentationFrame:(BOOL)a3;
- (void)_layOutSearchField;
- (void)_layoutArrangedViews;
- (void)_layoutSquishedAccessoryView:(id)a3 forView:(id)a4;
- (void)_leadingAlignCenteredIconIfNeededAnimatingIcon:(BOOL)a3;
- (void)_searchFieldDidChange:(id)a3;
- (void)_setShowsFakeClearButton:(BOOL)a3;
- (void)_slideArrangedViewsForSearchField:(double)a3;
- (void)_updateAlignmentForAvailabilityLabel:(id)a3;
- (void)_updateIcon;
- (void)_updateIconSpacing;
- (void)_updateKeyboardInputMode:(id)a3;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateOffsetOfTitleInSearchField;
- (void)_updatePlaceholderText;
- (void)_updateSearchFieldColor;
- (void)_updateSecurityAnnotation;
- (void)_updateSecurityAnnotationAnimated:(BOOL)a3;
- (void)_updateSquishedAccessorySymbolConfigurations;
- (void)_updateTitle;
- (void)_updateTitleColor;
- (void)_updateTitleFont;
- (void)beginTitleTextStyleAnimation;
- (void)beginTransitioningSearchField;
- (void)dismissAvailabilityLabelAnimated:(BOOL)a3;
- (void)endTitleTextStyleAnimation;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)presentAvailabilityLabelWithText:(id)a3;
- (void)presentAvailabilityLabelWithView:(id)a3;
- (void)setAlignment:(int64_t)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setDimsText:(BOOL)a3;
- (void)setFollowsKeyboardLayoutDirection:(BOOL)a3;
- (void)setHasFocusedSensitiveInputField:(BOOL)a3;
- (void)setHidesIconForHover:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setIconAlpha:(double)a3;
- (void)setLeadingAlignsIcon:(BOOL)a3;
- (void)setPlaceholderFont:(id)a3;
- (void)setSearchField:(id)a3;
- (void)setSecurityAnnotation:(int64_t)a3;
- (void)setShowsIcon:(BOOL)a3;
- (void)setShowsSearchField:(BOOL)a3;
- (void)setShowsSearchIcon:(BOOL)a3;
- (void)setShowsSquishedAccessoryViews:(BOOL)a3;
- (void)setSuppressesText:(BOOL)a3;
- (void)setTheme:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleTextStyle:(id)a3;
- (void)setTitleToSearchIconSpacing:(double)a3;
- (void)setTitleWeight:(double)a3;
- (void)setTitleWhenCollapsed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SFUnifiedTabBarItemTitleContainerView

- (void)_updateTitleColor
{
  v3 = [(SFUnifiedTabBarItemTitleContainerView *)self _showsPlaceholder];
  theme = self->_theme;
  if (v3)
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)theme placeholderTextColor];
  }

  else
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)theme primaryTextColor];
  }
  v5 = ;
  [(SFFaviconView *)self->_iconView setTintColor:v5];
  [(SFURLLabel *)self->_titleLabel setTextColor:v5];
}

- (void)_updateSearchFieldColor
{
  v3 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme primaryTextColor];
  [(UITextField *)self->_searchField setTextColor:v3];

  v5 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme placeholderTextColor];
  v4 = [(UITextField *)self->_searchField _placeholderLabel];
  [v4 setTextColor:v5];
}

- (void)_updateIconSpacing
{
  alignment = self->_alignment;
  if (alignment == 1)
  {
    [(SFFaviconView *)self->_iconView trailingInset];
    titleToSearchIconSpacing = fmax(6.0 - v5, 0.0);
  }

  else
  {
    titleToSearchIconSpacing = 0.0;
    if (!alignment)
    {
      titleToSearchIconSpacing = 6.0;
    }
  }

  if (self->_showsSearchIcon && ![(SFUnifiedTabBarItemTitleContainerView *)self _showsPlaceholder])
  {
    titleToSearchIconSpacing = self->_titleToSearchIconSpacing;
  }

  if (self->_iconSpacing != titleToSearchIconSpacing)
  {
    self->_iconSpacing = titleToSearchIconSpacing;

    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)_updateIcon
{
  if (self->_showsSearchIcon && !self->_collapsed)
  {
    [(SFFaviconView *)self->_iconView setIconContentMode:4];
    if ([(SFUnifiedTabBarItemTitleContainerView *)self _showsPlaceholder])
    {
      v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:self->_titleTextStyle scale:2];
      v6 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
      v8 = [v5 configurationByApplyingConfiguration:v6];
    }

    else
    {
      v8 = 0;
    }

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass" withConfiguration:v8];
    [(SFFaviconView *)self->_iconView setIcon:v7];
  }

  else
  {
    [(SFFaviconView *)self->_iconView setIconContentMode:1];
    icon = self->_icon;
    iconView = self->_iconView;

    [(SFFaviconView *)iconView setIcon:icon];
  }
}

- (id)_placeholderText
{
  if (self->_suppressesText)
  {
    return &stru_1EFF36230;
  }

  else
  {
    return self->_placeholder;
  }
}

- (void)_updateSecurityAnnotation
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = _WBSLocalizedString();
  theme = self->_theme;
  if (theme)
  {
    v5 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)theme overrideTintColor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] systemRedColor];
    }

    v8 = v7;

    if (self->_hasFocusedSensitiveInputField)
    {
      v9 = v8;
    }

    else
    {
      v9 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme secondaryTextColor];
    }

    v10 = v9;
    v11 = objc_alloc(MEMORY[0x1E696AD40]);
    v21 = *MEMORY[0x1E69DB650];
    v12 = v21;
    v22[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 initWithString:v3 attributes:v13];

    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = v12;
    v16 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme secondaryTextColor];
    v20 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [v15 initWithString:@" —" attributes:v17];

    [v14 appendAttributedString:v18];
    [(SFURLLabel *)self->_leadingAnnotationLabel setAttributedText:v14];
  }

  else
  {
    v8 = [v3 stringByAppendingString:@" —"];
    [(SFURLLabel *)self->_leadingAnnotationLabel setText:v8];
  }
}

- (void)_updateTitle
{
  [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitleColor];
  [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitleFont];
  [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];
  [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  if (self->_collapsed)
  {
    titleWhenCollapsed = self->_titleWhenCollapsed;
LABEL_5:
    v4 = titleWhenCollapsed;
    goto LABEL_6;
  }

  if ([(NSString *)self->_title length])
  {
    titleWhenCollapsed = self->_title;
    goto LABEL_5;
  }

  v4 = [(SFUnifiedTabBarItemTitleContainerView *)self _placeholderText];
LABEL_6:
  v8 = v4;
  v5 = [(SFURLLabel *)self->_titleLabel text];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    [(SFURLLabel *)self->_titleLabel setText:v8];
    if (v8)
    {
      v7 = CTLineCreateWithString();
      self->_titleLanguageIsRightToLeft = CTLineIsRightToLeft();
      CFRelease(v7);
    }

    else
    {
      self->_titleLanguageIsRightToLeft = 0;
    }
  }
}

- (void)_updateTitleFont
{
  v7 = [(SFUnifiedTabBarItemTitleContainerView *)self _titleFontWithTraitCollection:0];
  if (![(SFUnifiedTabBarItemTitleContainerView *)self _showsPlaceholder]|| (placeholderFont = self->_placeholderFont) == 0)
  {
    placeholderFont = v7;
  }

  [(SFURLLabel *)self->_titleLabel setFont:placeholderFont];
  [(SFURLLabel *)self->_leadingAnnotationLabel setFont:v7];
  [(UILabel *)self->_trailingAnnotationLabel setFont:v7];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:self->_titleTextStyle scale:1];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v6 = [v4 configurationByApplyingConfiguration:v5];

  [(SFFaviconView *)self->_iconView setPreferredSymbolConfiguration:v6];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SFUnifiedTabBarItemTitleContainerView;
  [(SFUnifiedTabBarItemTitleContainerView *)&v8 layoutSubviews];
  v3 = (self->_showsSearchIcon || self->_collapsed || [(SFUnifiedTabBarItemTitleContainerView *)self _showsPlaceholder]) && !self->_titleLanguageIsRightToLeft;
  [(SFURLLabel *)self->_titleLabel setTextAlignmentEdge:!v3];
  [(SFURLLabel *)self->_titleLabel setFadeOutEdge:v3];
  [(UIView *)self->_availabilityLabel setAlpha:[(SFUnifiedTabBarItemTitleContainerView *)self _shouldShowAvailabilityLabel]];
  [(SFUnifiedTabBarItemTitleContainerView *)self bounds];
  Width = CGRectGetWidth(v9);
  if (Width != 0.0)
  {
    if (self->_collapsed)
    {
      v5 = Width;
      [(SFUnifiedTabBarItemTitleContainerView *)self minimumWidthToShowTitle];
      v7 = v5 < v6;
    }

    else
    {
      v7 = 0;
    }

    self->_narrow = v7;
    [(SFUnifiedTabBarItemTitleContainerView *)self _layoutArrangedViews];
    [(SFUnifiedTabBarItemTitleContainerView *)self _layOutSearchField];
    [(SFUnifiedTabBarItemTitleContainerView *)self _layoutSquishedAccessoryViews];
    [(SFUnifiedTabBarItemTitleContainerView *)self _updatePlaceholderText];
  }
}

- (BOOL)_shouldShowAvailabilityLabel
{
  availabilityLabel = self->_availabilityLabel;
  if (availabilityLabel)
  {
    LOBYTE(availabilityLabel) = !self->_collapsed && !self->_showsSearchField;
  }

  return availabilityLabel & 1;
}

void __61__SFUnifiedTabBarItemTitleContainerView_intrinsicContentSize__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [*(a1 + 32) _preferredSizeForView:v11];
  *(*(*(a1 + 48) + 8) + 32) = v5 + *(*(*(a1 + 48) + 8) + 32);
  *(*(*(a1 + 48) + 8) + 40) = fmax(*(*(*(a1 + 48) + 8) + 40), v6);
  v7 = [*(a1 + 40) lastObject];

  if (v7 != v11)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
    [v8 _spacingBetweenView:v11 nextView:v9];
    *(*(*(a1 + 48) + 8) + 32) = v10 + *(*(*(a1 + 48) + 8) + 32);
  }
}

- (NSArray)_arrangedViewsByContentCompressionResistancePriority
{
  v6[4] = *MEMORY[0x1E69E9840];
  trailingAnnotationLabel = self->_trailingAnnotationLabel;
  v6[0] = self->_iconView;
  v6[1] = trailingAnnotationLabel;
  titleLabel = self->_titleLabel;
  v6[2] = self->_leadingAnnotationLabel;
  v6[3] = titleLabel;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

uint64_t __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    return (*(a3 + 16))(a3);
  }

  else
  {
    return [MEMORY[0x1E69DD250] performWithoutAnimation:?];
  }
}

id __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  for (i = a2 + 1; i < [v5 count]; ++i)
  {
    v8 = [v6 objectAtIndexedSubscript:i];
    if ([*(a1 + 32) _showsView:v8])
    {
      goto LABEL_6;
    }

    v5 = v6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (CGSize)intrinsicContentSize
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v26 = "";
  v27 = *MEMORY[0x1E695F060];
  v3 = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViews];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__SFUnifiedTabBarItemTitleContainerView_intrinsicContentSize__block_invoke;
  v22[3] = &unk_1E721DD70;
  v22[4] = self;
  v4 = [v3 safari_filterObjectsUsingBlock:v22];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __61__SFUnifiedTabBarItemTitleContainerView_intrinsicContentSize__block_invoke_2;
  v18 = &unk_1E721DD98;
  v19 = self;
  v21 = &v23;
  v5 = v4;
  v20 = v5;
  [v5 enumerateObjectsUsingBlock:&v15];
  v6 = v24[4];
  v7 = v24[5];
  if (v6 != 0.0 && v7 != 0.0)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self _effectiveLayoutMargins:v15];
    v10 = v24;
    v6 = v8 + v9 + v24[4];
    v7 = v11 + v12 + v24[5];
    v24[4] = v6;
    v10[5] = v7;
  }

  _Block_object_dispose(&v23, 8);
  v13 = v6;
  v14 = v7;
  result.height = v14;
  result.width = v13;
  return result;
}

- (NSArray)_arrangedViews
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (self->_alignment)
  {
    leadingAnnotationLabel = self->_leadingAnnotationLabel;
    v2 = &OBJC_IVAR___SFUnifiedTabBarItemTitleContainerView__iconView;
    p_leadingAnnotationLabel = &leadingAnnotationLabel;
  }

  else
  {
    v8[0] = self->_iconView;
    v2 = &OBJC_IVAR___SFUnifiedTabBarItemTitleContainerView__leadingAnnotationLabel;
    p_leadingAnnotationLabel = v8;
  }

  titleLabel = self->_titleLabel;
  p_leadingAnnotationLabel[1] = *(&self->super.super.super.isa + *v2);
  p_leadingAnnotationLabel[2] = titleLabel;
  p_leadingAnnotationLabel[3] = self->_trailingAnnotationLabel;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v5;
}

- (UIEdgeInsets)_effectiveLayoutMargins
{
  if (self->_usesInsetFromLayoutMargins)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self layoutMargins:v2];
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)_layoutArrangedViews
{
  v75 = *MEMORY[0x1E69E9840];
  [(SFUnifiedTabBarItemTitleContainerView *)self bounds];
  x = v76.origin.x;
  y = v76.origin.y;
  width = v76.size.width;
  height = v76.size.height;
  v7 = CGRectGetWidth(v76);
  v8 = x;
  v77.origin.x = x;
  v9 = y;
  v77.origin.y = y;
  v77.size.width = width;
  rect = height;
  v77.size.height = height;
  v39 = CGRectGetHeight(v77);
  v38 = [(UIView *)self _sf_usesLeftToRightLayout];
  [(SFUnifiedTabBarItemTitleContainerView *)self _effectiveDirectionalLayoutMargins];
  v40 = v10;
  v12 = v11;
  v45 = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViews];
  v42 = [(SFUnifiedTabBarItemTitleContainerView *)self _lastVisibleViewInViews:v45];
  if (v42)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke;
    aBlock[3] = &unk_1E721DC60;
    aBlock[4] = self;
    v41 = _Block_copy(aBlock);
    v13 = self->_animatingResize || self->_alignment == 1 || self->_searchField != 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViewsByContentCompressionResistancePriority];
    v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    v37 = v40 + v12;
    v15 = v7 - (v40 + v12);
    if (v14)
    {
      v16 = *v70;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v70 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v69 + 1) + 8 * i);
          v19 = [(SFUnifiedTabBarItemTitleContainerView *)self _showsView:v18, *&v37];
          [(SFUnifiedTabBarItemTitleContainerView *)self _preferredSizeForView:v18];
          v21 = v20;
          v23 = v22;
          if (v19)
          {
            [(SFUnifiedTabBarItemTitleContainerView *)self _collapsedWidthForView:v18];
            v25 = fmax(fmin(v21, v15), v24);
            v26 = v25 + 15.0 > v15 && v18 == self->_leadingAnnotationLabel;
            v21 = v26 ? v15 + -15.0 : v25;
            v15 = v15 - v21;
            if (v18 != v42)
            {
              v27 = v41[2](v41, [v45 indexOfObject:v18], v45);
              [(SFUnifiedTabBarItemTitleContainerView *)self _spacingBetweenView:v18 nextView:v27];
              v29 = v28;

              v15 = v15 - v29;
            }
          }

          v30 = v23;
          if (v18 != self->_iconView)
          {
            v78.origin.x = v8;
            v78.origin.y = v9;
            v78.size.width = width;
            v78.size.height = rect;
            v30 = CGRectGetHeight(v78);
          }

          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_3;
          v68[3] = &unk_1E721DCA8;
          v68[4] = v18;
          *&v68[5] = v21;
          *&v68[6] = v23;
          *&v68[7] = v30;
          if (v13)
          {
            [(SFURLLabel *)v18 setBounds:0.0, 0.0, v21];
          }

          else
          {
            [MEMORY[0x1E69DD250] performWithoutAnimation:v68];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v14);
    }

    v64 = 0;
    v65 = &v64;
    v31 = v40;
    v66 = 0x2020000000;
    v67 = v40;
    if (self->_narrow || self->_alignment == 1)
    {
      v32 = _SFRoundFloatToPixels((v37 + v15) * 0.5);
      v33 = v65;
      v31 = fmax(v40, fmin(v40 + v15, v32));
      v65[3] = v31;
    }

    else
    {
      v33 = &v64;
    }

    v33[3] = v31 + self->_contentOffset;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v34 = self->_showsSearchField || self->_suppressesText;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_4;
    v46[3] = &unk_1E721DD20;
    v35 = v34;
    v46[4] = self;
    v52 = v39;
    v36 = v41;
    v48 = v36;
    v57 = v35;
    v47 = v45;
    v49 = &__block_literal_global_35;
    v50 = &v60;
    v58 = v13;
    v51 = &v64;
    v53 = v8;
    v54 = v9;
    v55 = width;
    v56 = rect;
    v59 = v38;
    [v47 enumerateObjectsUsingBlock:v46];
    [(SFUnifiedTabBarItemTitleContainerView *)self _leadingAlignCenteredIconIfNeededAnimatingIcon:(v61[3] & 1) == 0];

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
  }
}

- (NSDirectionalEdgeInsets)_effectiveDirectionalLayoutMargins
{
  if (self->_usesInsetFromLayoutMargins && !self->_narrow)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self directionalLayoutMargins:v2];
  }

  else
  {
    v4 = *MEMORY[0x1E69DC5C0];
    v5 = *(MEMORY[0x1E69DC5C0] + 8);
    v6 = *(MEMORY[0x1E69DC5C0] + 16);
    v7 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  result.trailing = v7;
  result.bottom = v6;
  result.leading = v5;
  result.top = v4;
  return result;
}

uint64_t __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_5(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    [*(a1 + 40) _alphaForView:{*(a1 + 32), 0.0}];
  }

  v3 = *(a1 + 32);

  return [v3 setAlpha:v2];
}

- (void)_layOutSearchField
{
  if (self->_searchField)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateLayoutDirectionIfNeeded];
    if (([MEMORY[0x1E69DD250] areAnimationsEnabled] & 1) == 0)
    {
      v3 = [(UITextField *)self->_searchField layer];
      [v3 removeAllAnimations];
    }

    [(SFUnifiedTabBarItemTitleContainerView *)self _updateOffsetOfTitleInSearchField];
    [(SFUnifiedTabBarItemTitleContainerView *)self _searchFieldFrame];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (self->_showsSearchField)
    {
      MinX = CGRectGetMinX(*&v4);
      offsetOfTitleInSearchField = self->_offsetOfTitleInSearchField;
      [(SFURLLabel *)self->_titleLabel frame];
      v14 = CGRectGetMinX(v22);
      if (self->_layoutShouldBeRTL)
      {
        v23.origin.x = v8;
        v23.origin.y = v9;
        v23.size.width = v10;
        v23.size.height = v11;
        v15 = CGRectGetMaxX(v23) - self->_offsetOfTitleInSearchField;
        [(SFURLLabel *)self->_titleLabel frame];
        v16 = v15 - CGRectGetMaxX(v24);
      }

      else
      {
        v16 = MinX + offsetOfTitleInSearchField - v14;
      }

      [(SFUnifiedTabBarItemTitleContainerView *)self _slideArrangedViewsForSearchField:v16];
    }

    else
    {
      [(SFURLLabel *)self->_titleLabel frame];
      v17 = CGRectGetMinX(v25);
      if (self->_layoutShouldBeRTL)
      {
        v26.origin.x = v8;
        v26.origin.y = v9;
        v26.size.width = v10;
        v26.size.height = v11;
        Width = CGRectGetWidth(v26);
        [(SFURLLabel *)self->_titleLabel frame];
        v8 = v17 - (Width - CGRectGetWidth(v27)) - self->_offsetOfTitleInSearchField;
      }

      else
      {
        v8 = v17 - self->_offsetOfTitleInSearchField;
      }
    }

    [(UITextField *)self->_searchField setFrame:v8, v9, v10, v11];
    LOBYTE(v19) = self->_showsSearchField;
    [(UITextField *)self->_searchField setAlpha:v19];
    v20 = [(SFUnifiedTabBarItemTitleContainerView *)self _placeholderText];
    [(UITextField *)self->_searchField setPlaceholder:v20];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__SFUnifiedTabBarItemTitleContainerView__layOutSearchField__block_invoke;
    v21[3] = &unk_1E721B360;
    v21[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v21];
    [(SFUnifiedTabBarItemTitleContainerView *)self _layOutFakeClearButtonUsingPresentationFrame:0];
  }
}

- (CGSize)urlSize
{
  [(SFURLLabel *)self->_titleLabel urlSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (SFUnifiedTabBarItemTitleContainerView)initWithAlignment:(int64_t)a3
{
  v28.receiver = self;
  v28.super_class = SFUnifiedTabBarItemTitleContainerView;
  v4 = [(SFUnifiedTabBarItemTitleContainerView *)&v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_alignment = a3;
    v4->_collapsed = 1;
    v6 = _WBSLocalizedString();
    placeholder = v5->_placeholder;
    v5->_placeholder = v6;

    v5->_iconSpacing = 6.0;
    objc_storeStrong(&v5->_titleTextStyle, *MEMORY[0x1E69DDCF8]);
    v5->_titleWeight = *MEMORY[0x1E69DB970];
    v5->_usesInsetFromLayoutMargins = 1;
    v5->_titleToSearchIconSpacing = 6.0;
    v8 = [[SFURLLabel alloc] initWithFadeOutDistance:9.5];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    [(SFURLLabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(SFUnifiedTabBarItemTitleContainerView *)v5 addSubview:v5->_titleLabel];
    v10 = objc_alloc_init(SFFaviconView);
    iconView = v5->_iconView;
    v5->_iconView = v10;

    v12 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v5->_titleTextStyle scale:1];
    v13 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
    v14 = [v12 configurationByApplyingConfiguration:v13];

    [(SFFaviconView *)v5->_iconView setPreferredSymbolConfiguration:v14];
    [(SFUnifiedTabBarItemTitleContainerView *)v5 addSubview:v5->_iconView];
    v15 = [[SFURLLabel alloc] initWithFadeOutDistance:9.5];
    leadingAnnotationLabel = v5->_leadingAnnotationLabel;
    v5->_leadingAnnotationLabel = v15;

    [(SFURLLabel *)v5->_leadingAnnotationLabel setTextAlignmentEdge:0];
    [(SFURLLabel *)v5->_leadingAnnotationLabel setFadeOutEdge:1];
    [(SFURLLabel *)v5->_leadingAnnotationLabel setAdjustsFontForContentSizeCategory:1];
    [(SFURLLabel *)v5->_leadingAnnotationLabel setClipsToBounds:1];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(SFURLLabel *)v5->_leadingAnnotationLabel setTextColor:v17];

    [(SFUnifiedTabBarItemTitleContainerView *)v5 addSubview:v5->_leadingAnnotationLabel];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trailingAnnotationLabel = v5->_trailingAnnotationLabel;
    v5->_trailingAnnotationLabel = v18;

    [(UILabel *)v5->_trailingAnnotationLabel setAdjustsFontForContentSizeCategory:1];
    v20 = _WBSLocalizedString();
    [(UILabel *)v5->_trailingAnnotationLabel setText:v20];

    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_trailingAnnotationLabel setTextColor:v21];

    [(SFUnifiedTabBarItemTitleContainerView *)v5 addSubview:v5->_trailingAnnotationLabel];
    [(SFUnifiedTabBarItemTitleContainerView *)v5 setAccessibilityIdentifier:@"TabBarItemTitleContainer"];
    v22 = objc_alloc_init(SFUnifiedTabBarItemTitleContainerViewTheme);
    [(SFUnifiedTabBarItemTitleContainerView *)v5 setTheme:v22];

    objc_initWeak(&location, v5);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__SFUnifiedTabBarItemTitleContainerView_initWithAlignment___block_invoke;
    v25[3] = &unk_1E721BF08;
    objc_copyWeak(&v26, &location);
    [(SFFaviconView *)v5->_iconView setTrailingInsetChangeHandler:v25];
    v23 = v5;
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __59__SFUnifiedTabBarItemTitleContainerView_initWithAlignment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateIconSpacing];
    WeakRetained = v2;
  }
}

- (void)_updateKeyboardInputMode:(id)a3
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != v5)
  {
    self->_keyboardInputModeIsRTL = v5;
    if ([(SFUnifiedTabBarItemTitleContainerView *)self _canUpdateLayoutDirectionImmediately])
    {

      [(SFUnifiedTabBarItemTitleContainerView *)self _updateLayoutDirectionIfNeeded];
    }
  }
}

- (void)_updateLayoutDirectionIfNeeded
{
  if (self->_followsKeyboardLayoutDirection)
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

      [(SFUnifiedTabBarItemTitleContainerView *)self setSemanticContentAttribute:v5];

      [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
    }
  }

  else
  {
    self->_layoutShouldBeRTL = ![(UIView *)self _sf_usesLeftToRightLayout];

    [(SFUnifiedTabBarItemTitleContainerView *)self setSemanticContentAttribute:0];
  }
}

- (void)_searchFieldDidChange:(id)a3
{
  if ([(SFUnifiedTabBarItemTitleContainerView *)self _canUpdateLayoutDirectionImmediately])
  {

    [(SFUnifiedTabBarItemTitleContainerView *)self _updateLayoutDirectionIfNeeded];
  }
}

- (BOOL)_canUpdateLayoutDirectionImmediately
{
  v3 = [(UITextField *)self->_searchField text];
  if ([v3 length])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(UITextField *)self->_searchField _fieldEditor];
    v4 = [v5 isHidden] ^ 1;
  }

  return v4;
}

- (void)setFollowsKeyboardLayoutDirection:(BOOL)a3
{
  if (self->_followsKeyboardLayoutDirection != a3)
  {
    v4 = a3;
    self->_followsKeyboardLayoutDirection = a3;
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    if (v4)
    {
      v6 = [MEMORY[0x1E69DC668] sharedApplication];
      self->_keyboardInputModeIsRTL = [v6 safari_currentKeyboardInputIsRTL];

      [v7 addObserver:self selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
      [v7 addObserver:self selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    }

    else
    {
      [v7 removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];
      [v7 removeObserver:self name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    }

    [(SFUnifiedTabBarItemTitleContainerView *)self _updateLayoutDirectionIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = SFUnifiedTabBarItemTitleContainerView;
  v4 = a3;
  [(SFUnifiedTabBarItemTitleContainerView *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(SFUnifiedTabBarItemTitleContainerView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateSquishedAccessorySymbolConfigurations];
    [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setAlignment:(int64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateAlignmentForAvailabilityLabel:self->_availabilityLabel];
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIconSpacing];

    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setLeadingAlignsIcon:(BOOL)a3
{
  if (self->_leadingAlignsIcon != a3)
  {
    self->_leadingAlignsIcon = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if (self->_icon != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_icon, a3);
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIcon];
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
    [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

- (void)setTitleToSearchIconSpacing:(double)a3
{
  if (self->_titleToSearchIconSpacing != a3)
  {
    self->_titleToSearchIconSpacing = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIconSpacing];
  }
}

- (void)setTitleWhenCollapsed:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v6 copy];
    titleWhenCollapsed = self->_titleWhenCollapsed;
    self->_titleWhenCollapsed = v4;

    [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    if ([(SFUnifiedTabBarItemTitleContainerView *)self showsSearchIcon])
    {
      v5 = [(NSString *)self->_title length]== 0;
      v6 = [v4 length] == 0;
      v7 = [v4 copy];
      title = self->_title;
      self->_title = v7;

      [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
      if (v5 != v6)
      {
        [(SFUnifiedTabBarItemTitleContainerView *)self _updateIcon];
        [(SFUnifiedTabBarItemTitleContainerView *)self _updateIconSpacing];
      }
    }

    else
    {
      v9 = [v4 copy];
      v10 = self->_title;
      self->_title = v9;

      [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
    }

    if (!self->_collapsed && self->_alignment == 1)
    {
      v11 = [(SFUnifiedTabBarItemTitleContainerView *)self window];

      if (v11)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __50__SFUnifiedTabBarItemTitleContainerView_setTitle___block_invoke;
        v12[3] = &unk_1E721B360;
        v12[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v12];
      }
    }
  }
}

- (void)setTitleTextStyle:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextStyle, a3);
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
  }
}

- (void)setTitleWeight:(double)a3
{
  if (self->_titleWeight != a3)
  {
    self->_titleWeight = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
  }
}

- (void)setPlaceholderFont:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_placeholderFont, a3);
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitleFont];
  }
}

- (void)setShowsIcon:(BOOL)a3
{
  if (self->_showsIcon != a3)
  {
    self->_showsIcon = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];

    [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setIconAlpha:(double)a3
{
  if (self->_iconAlpha != a3)
  {
    self->_iconAlpha = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setShowsSearchIcon:(BOOL)a3
{
  if (self->_showsSearchIcon != a3)
  {
    self->_showsSearchIcon = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIcon];
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIconSpacing];
    [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];

    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setSecurityAnnotation:(int64_t)a3
{
  if (self->_securityAnnotation != a3)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
    [(SFUnifiedTabBarItemTitleContainerView *)self invalidateIntrinsicContentSize];
    self->_securityAnnotation = a3;
    if (self->_collapsed)
    {

      [(SFUnifiedTabBarItemTitleContainerView *)self _updateSecurityAnnotationAnimated:0];
    }

    else
    {
      v5 = [(SFUnifiedTabBarItemTitleContainerView *)self window];
      [(SFUnifiedTabBarItemTitleContainerView *)self _updateSecurityAnnotationAnimated:v5 != 0];
    }
  }
}

- (void)setHasFocusedSensitiveInputField:(BOOL)a3
{
  if (self->_hasFocusedSensitiveInputField != a3)
  {
    self->_hasFocusedSensitiveInputField = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateSecurityAnnotation];
  }
}

- (void)_updateSecurityAnnotationAnimated:(BOOL)a3
{
  if (self->_securityAnnotation)
  {
    v3 = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateSecurityAnnotation];
    if (v3)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __75__SFUnifiedTabBarItemTitleContainerView__updateSecurityAnnotationAnimated___block_invoke;
      v5[3] = &unk_1E721B360;
      v5[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v5 completion:0];
    }
  }
}

- (void)setSearchField:(id)a3
{
  v5 = a3;
  searchField = self->_searchField;
  if (searchField != v5)
  {
    [(UITextField *)searchField removeTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    [(UITextField *)v5 addTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    v7 = [(UITextField *)self->_searchField superview];

    if (v7 == self)
    {
      [(UITextField *)self->_searchField removeFromSuperview];
    }

    objc_storeStrong(&self->_searchField, a3);
    if (v5)
    {
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__SFUnifiedTabBarItemTitleContainerView_setSearchField___block_invoke;
      v9[3] = &unk_1E721B400;
      v10 = v5;
      v11 = self;
      [v8 performWithoutAnimation:v9];
    }

    else
    {
      self->_showsSearchField = 0;
    }
  }
}

uint64_t __56__SFUnifiedTabBarItemTitleContainerView_setSearchField___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 524))
  {
    v3 = &stru_1EFF36230;
  }

  else
  {
    v3 = *(v2 + 568);
  }

  [*(a1 + 32) setText:v3];
  v4 = [*(a1 + 40) _titleFontWithTraitCollection:0];
  [*(a1 + 32) setFont:v4];

  [*(a1 + 40) addSubview:*(a1 + 32)];
  [*(a1 + 40) _updateSearchFieldColor];
  [*(a1 + 40) setNeedsLayout];
  v5 = *(a1 + 40);

  return [v5 layoutIfNeeded];
}

- (void)setShowsSearchField:(BOOL)a3
{
  if (self->_showsSearchField != a3)
  {
    self->_showsSearchField = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setSuppressesText:(BOOL)a3
{
  if (self->_suppressesText != a3)
  {
    self->_suppressesText = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)setHidesIconForHover:(BOOL)a3
{
  if (self->_hidesIconForHover != a3)
  {
    self->_hidesIconForHover = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _layoutArrangedViews];
  }
}

- (CGRect)iconFrame
{
  [(SFFaviconView *)self->_iconView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_collapsed = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateIcon];
    [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__SFUnifiedTabBarItemTitleContainerView_setCollapsed___block_invoke;
    v6[3] = &unk_1E721B360;
    v6[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
  }
}

- (void)setTheme:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_theme, a3);
  v5 = [v10 secondaryTextColor];
  [(SFURLLabel *)self->_leadingAnnotationLabel setTextColor:v5];

  v6 = [v10 secondaryTextColor];
  [(UILabel *)self->_trailingAnnotationLabel setTextColor:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 primaryTextColor];
    [(UIView *)self->_availabilityLabel setTextColor:v7];
  }

  v8 = [v10 primaryTextColor];
  [(UIImageView *)self->_squishedIconView setTintColor:v8];

  v9 = [v10 themeColor];
  [(SFFaviconView *)self->_iconView setThemeColor:v9];

  [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitleColor];
  [(SFUnifiedTabBarItemTitleContainerView *)self _updateSecurityAnnotation];
  [(SFUnifiedTabBarItemTitleContainerView *)self _updateSearchFieldColor];
}

- (void)setDimsText:(BOOL)a3
{
  if (self->_dimsText != a3)
  {
    self->_dimsText = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (void)_updatePlaceholderText
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(SFURLLabel *)self->_titleLabel bounds];
  Width = CGRectGetWidth(v15);
  if (Width != self->_lastTitleLabelWidthForPlaceholder)
  {
    v4 = _WBSLocalizedString();
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = *MEMORY[0x1E69DB648];
    placeholderFont = self->_placeholderFont;
    v7 = placeholderFont;
    if (!placeholderFont)
    {
      v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:self->_titleTextStyle];
    }

    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v5 initWithString:v4 attributes:v8];

    if (!placeholderFont)
    {
    }

    [v9 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
    if (v10 <= Width)
    {
      v11 = v4;
    }

    else
    {
      v11 = _WBSLocalizedString();
    }

    v12 = v11;
    self->_lastTitleLabelWidthForPlaceholder = Width;
    if ((WBSIsEqual() & 1) == 0)
    {
      objc_storeStrong(&self->_placeholder, v12);
      [(SFUnifiedTabBarItemTitleContainerView *)self _updateTitle];
    }
  }
}

- (id)_titleFontWithTraitCollection:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:self->_titleTextStyle compatibleWithTraitCollection:a3];
  v5 = [v4 fontDescriptor];
  v15 = *MEMORY[0x1E69DB8F0];
  v13 = *MEMORY[0x1E69DB990];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_titleWeight];
  v14 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = MEMORY[0x1E69DB878];
  [v4 pointSize];
  v11 = [v10 fontWithDescriptor:v9 size:?];

  return v11;
}

- (double)minimumWidthToShowTitle
{
  [(SFUnifiedTabBarItemTitleContainerView *)self _effectiveLayoutMargins];
  v4 = v3;
  [(SFUnifiedTabBarItemTitleContainerView *)self _iconSize];
  return v4 + v5 + self->_iconSpacing + 15.0;
}

void __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _showsView:v3];
  [v3 alpha];
  v6 = v5;
  [v3 bounds];
  v8 = v7;
  v10 = v9;
  if ((v4 & 1) == 0 && [*(a1 + 32) _viewCollapsesWhenHidden:v3])
  {
    [*(a1 + 32) _collapsedWidthForView:v3];
    v8 = v11;
  }

  v12 = _SFRoundFloatToPixels((*(a1 + 80) - v10) * 0.5);
  v13 = *(a1 + 32);
  v14 = (*(*(a1 + 48) + 16))();
  [v13 _spacingBetweenView:v3 nextView:v14];
  v16 = v15;

  v17 = *(a1 + 32);
  v18 = *(v17 + 525);
  if (*(v17 + 416) == v3)
  {
    v19 = *(v17 + 522);
    if ((*(v17 + 464) == 0) | v18 & 1)
    {
      v20 = ((*(v17 + 464) == 0) | v18) ^ 1;
    }

    else
    {
      v20 = *(v17 + 408) == 1;
    }
  }

  else
  {
    v19 = 0;
    v20 = (*(v17 + 464) != 0) & (v18 ^ 1);
  }

  if (*(a1 + 120))
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 | v20;
  }

  v22 = v21 & 1;
  v23 = *(a1 + 56);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_5;
  v53[3] = &unk_1E721DCD0;
  v24 = v3;
  v56 = v4;
  v57 = v22;
  v25 = *(a1 + 32);
  v54 = v24;
  v55 = v25;
  (*(v23 + 16))(v23, v18 ^ 1u, v53);
  v26 = *(a1 + 32);
  if (*(v26 + 416) == v24)
  {
    if (v6 == 0.0)
    {
      [v24 alpha];
      v28 = v27 != 0.0;
    }

    else
    {
      v28 = 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = v28;
    v26 = *(a1 + 32);
  }

  v29 = *(v26 + 424);
  if (v29 != v24 || (*(v26 + 525) & 1) != 0 || (*(v26 + 520) & 1) != 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = [v29 isAnimatingTextSize];
  }

  v31 = *(a1 + 56);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_6;
  v49[3] = &unk_1E721B3D8;
  v32 = v24;
  v50 = v32;
  v51 = v8;
  v52 = v10;
  (*(v31 + 16))(v31, v30, v49);
  v33 = *(a1 + 56);
  v34 = *(a1 + 121);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_7;
  v37[3] = &unk_1E721DCF8;
  v40 = *(a1 + 72);
  v41 = v12;
  v42 = v8;
  v43 = v10;
  v35 = v32;
  v36 = *(a1 + 32);
  v38 = v35;
  v39 = v36;
  v47 = v4;
  v44 = v16;
  v45 = *(a1 + 88);
  v46 = *(a1 + 104);
  v48 = *(a1 + 122);
  (*(v33 + 16))(v33, v34, v37);
  if (v4)
  {
    *(*(*(a1 + 72) + 8) + 24) = v8 + v16 + *(*(*(a1 + 72) + 8) + 24);
  }
}

uint64_t __61__SFUnifiedTabBarItemTitleContainerView__layoutArrangedViews__block_invoke_7(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(a1 + 64);
  if (*(a1 + 32) == *(*(a1 + 40) + 416) && (*(a1 + 120) & 1) == 0)
  {
    v2 = v2 - (v3 + *(a1 + 80));
  }

  _SFFlipRectInCoordinateSpace((*(a1 + 121) & 1) == 0, v2, *(a1 + 56), v3, *(a1 + 72), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  UIRectGetCenter();
  v4 = *(a1 + 32);

  return [v4 setCenter:?];
}

- (BOOL)_showsView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_narrow && self->_iconView != v4)
  {
    goto LABEL_8;
  }

  iconView = self->_iconView;
  v7 = !self->_collapsed || iconView == v5;
  if (!v7 && self->_titleLabel != v5)
  {
    goto LABEL_8;
  }

  if (iconView != v5)
  {
    if (self->_leadingAnnotationLabel == v5)
    {
      v8 = self->_securityAnnotation != 0;
      goto LABEL_21;
    }

    if (self->_trailingAnnotationLabel == v5)
    {
      v9 = 517;
LABEL_20:
      v8 = *(&self->super.super.super.isa + v9);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (self->_alignment != 1 || self->_leadingAlignsIcon || ([(SFFaviconView *)iconView icon], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    if (!self->_showsIcon)
    {
      v9 = 516;
      goto LABEL_20;
    }

LABEL_17:
    v8 = 1;
    goto LABEL_21;
  }

LABEL_8:
  v8 = 0;
LABEL_21:

  return v8 & 1;
}

- (double)_alphaForView:(id)a3
{
  if (self->_iconView == a3 && !self->_showsSearchIcon)
  {
    return self->_iconAlpha;
  }

  result = 0.85;
  if (!self->_dimsText)
  {
    return 1.0;
  }

  return result;
}

- (id)_lastVisibleViewInViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(SFUnifiedTabBarItemTitleContainerView *)self _showsView:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (double)_collapsedWidthForView:(id)a3
{
  result = 0.0;
  if (self->_titleLabel == a3)
  {
    return 15.0;
  }

  return result;
}

- (CGSize)_preferredSizeForView:(id)a3
{
  if (self->_iconView == a3)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self _iconSize];
    if (self->_showsSearchIcon && !self->_collapsed)
    {
      iconView = self->_iconView;

      [(SFFaviconView *)iconView intrinsicContentSize];
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);

    [a3 sizeThatFits:{v3, v4}];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_spacingBetweenView:(id)a3 nextView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  iconSpacing = 0.0;
  if (v6 && v7)
  {
    if (self->_iconView == v6)
    {
      iconSpacing = self->_iconSpacing;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__SFUnifiedTabBarItemTitleContainerView__spacingBetweenView_nextView___block_invoke;
      v12[3] = &unk_1E721DD48;
      v13 = v6;
      v14 = v8;
      v10 = _Block_copy(v12);
      if (v10[2](v10, self->_iconView) && self->_showsSearchIcon)
      {
        iconSpacing = self->_iconSpacing;
      }

      else if (self->_spacing == 0.0)
      {
        iconSpacing = 4.0;
      }

      else
      {
        iconSpacing = self->_spacing;
      }
    }
  }

  return iconSpacing;
}

- (void)_layOutFakeClearButtonUsingPresentationFrame:(BOOL)a3
{
  if (self->_fakeClearButton)
  {
    v3 = a3;
    searchField = self->_searchField;
    [(SFUnifiedTabBarItemTitleContainerView *)self _searchFieldFrame];
    [(UITextField *)searchField clearButtonRectForBounds:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (v3)
    {
      v14 = [(SFUnifiedTabBarItemTitleContainerView *)self layer];
      v15 = [v14 presentationLayer];
      [v15 frame];
      MaxX = CGRectGetMaxX(v22);
      [(SFUnifiedTabBarItemTitleContainerView *)self frame];
      v7 = v7 + MaxX - CGRectGetMaxX(v23);
    }

    fakeClearButton = self->_fakeClearButton;
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    v21[0] = *MEMORY[0x1E695EFD0];
    v21[1] = v18;
    v21[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(UIButton *)fakeClearButton setTransform:v21];
    [(UIButton *)self->_fakeClearButton setFrame:v7, v9, v11, v13];
    v19 = 0.0;
    if (self->_showsSearchField)
    {
      v19 = 0.1;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__SFUnifiedTabBarItemTitleContainerView__layOutFakeClearButtonUsingPresentationFrame___block_invoke;
    v20[3] = &unk_1E721B360;
    v20[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659424 delay:v20 options:0 animations:0.2 completion:v19];
  }
}

uint64_t __86__SFUnifiedTabBarItemTitleContainerView__layOutFakeClearButtonUsingPresentationFrame___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.8;
  if (*(v2 + 523))
  {
    v3 = 1.0;
  }

  CGAffineTransformMakeScale(&v9, v3, v3);
  v4 = *(v2 + 496);
  v8 = v9;
  [v4 setTransform:&v8];
  v5 = *(a1 + 32);
  LOBYTE(v6) = *(v5 + 523);
  return [*(v5 + 496) setAlpha:v6];
}

- (CGRect)_searchFieldFrame
{
  [(SFUnifiedTabBarItemTitleContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFUnifiedTabBarItemTitleContainerView *)self _effectiveLayoutMargins];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_slideArrangedViewsForSearchField:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([(SFUnifiedTabBarItemTitleContainerView *)self _shouldSlideArrangedViewForSearchField:v10])
        {
          [v10 frame];
          v18 = CGRectOffset(v17, a3, 0.0);
          [v10 setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_leadingAlignCenteredIconIfNeededAnimatingIcon:(BOOL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_alignment == 1 && self->_leadingAlignsIcon)
  {
    v4 = a3;
    if ([(SFUnifiedTabBarItemTitleContainerView *)self _showsView:self->_iconView])
    {
      [(SFUnifiedTabBarItemTitleContainerView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(SFUnifiedTabBarItemTitleContainerView *)self _iconSize];
      v14 = v13;
      v15 = [(UIView *)self _sf_usesLeftToRightLayout];
      [(SFUnifiedTabBarItemTitleContainerView *)self directionalLayoutMargins];
      v17 = v16;
      v42.origin.x = v6;
      v42.origin.y = v8;
      v42.size.width = v10;
      v42.size.height = v12;
      Height = CGRectGetHeight(v42);
      v19 = _SFFlipRectInCoordinateSpace(!v15, v17, (Height - v14) * 0.5, v14, v14, v6, v8, v10, v12);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(SFFaviconView *)self->_iconView frame];
      MinX = CGRectGetMinX(v43);
      v44.origin.x = v19;
      v44.origin.y = v21;
      v44.size.width = v23;
      v44.size.height = v25;
      v27 = fmin(vabdd_f64(MinX, CGRectGetMinX(v44)), (v14 + self->_iconSpacing) * 0.5);
      v36 = 0u;
      v37 = 0u;
      if (v15)
      {
        v28 = -v27;
      }

      else
      {
        v28 = v27;
      }

      v38 = 0uLL;
      v39 = 0uLL;
      v29 = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViews];
      v30 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v37;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v37 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v36 + 1) + 8 * i);
            [v34 frame];
            v46 = CGRectOffset(v45, v28, 0.0);
            [v34 setFrame:{v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}];
          }

          v31 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v31);
      }

      if (v4)
      {
        [(SFFaviconView *)self->_iconView setFrame:v19, v21, v23, v25];
      }

      else
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __88__SFUnifiedTabBarItemTitleContainerView__leadingAlignCenteredIconIfNeededAnimatingIcon___block_invoke;
        v35[3] = &unk_1E721C180;
        v35[4] = self;
        *&v35[5] = v19;
        *&v35[6] = v21;
        *&v35[7] = v23;
        *&v35[8] = v25;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v35];
      }
    }
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = SFUnifiedTabBarItemTitleContainerView;
  [(SFUnifiedTabBarItemTitleContainerView *)&v3 layoutMarginsDidChange];
  [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
}

- (CGRect)titleRect
{
  [(SFURLLabel *)self->_titleLabel frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)urlBaselineToBottomBoundsDistanceForHeight:(double)a3
{
  [(SFURLLabel *)self->_titleLabel urlSize];
  v6 = (a3 - v5) * 0.5;
  [(SFURLLabel *)self->_titleLabel baselineOffsetFromBottom];
  return v7 + v6;
}

- (double)urlCapHeightToTopBoundsDistanceForHeight:(double)a3
{
  [(SFURLLabel *)self->_titleLabel urlSize];
  v6 = (a3 - v5) * 0.5;
  [(SFURLLabel *)self->_titleLabel labelCapHeightInsetFromTop];
  return v7 + v6;
}

- (void)beginTitleTextStyleAnimation
{
  [(SFURLLabel *)self->_titleLabel beginTextSizeAnimation];
  leadingAnnotationLabel = self->_leadingAnnotationLabel;

  [(SFURLLabel *)leadingAnnotationLabel beginTextSizeAnimation];
}

- (void)endTitleTextStyleAnimation
{
  [(SFURLLabel *)self->_titleLabel endTextSizeAnimation];
  leadingAnnotationLabel = self->_leadingAnnotationLabel;

  [(SFURLLabel *)leadingAnnotationLabel endTextSizeAnimation];
}

- (CGRect)contentFrame
{
  v31 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(SFUnifiedTabBarItemTitleContainerView *)self _arrangedViews];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([(SFUnifiedTabBarItemTitleContainerView *)self _showsView:v12])
        {
          [v12 frame];
          v37.origin.x = v13;
          v37.origin.y = v14;
          v37.size.width = v15;
          v37.size.height = v16;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v37);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  availabilityLabel = self->_availabilityLabel;
  if (availabilityLabel)
  {
    [(UIView *)availabilityLabel frame];
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v20;
    v38.size.height = v21;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v35 = CGRectUnion(v34, v38);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)beginTransitioningSearchField
{
  v3 = [(UITextField *)self->_searchField text];
  -[SFUnifiedTabBarItemTitleContainerView _setShowsFakeClearButton:](self, "_setShowsFakeClearButton:", [v3 length] != 0);
}

- (void)_setShowsFakeClearButton:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedTabBarItemTitleContainerView *)self _showsFakeClearButton]!= a3)
  {
    v5 = [(UITextField *)self->_searchField _clearButton];
    [v5 setHidden:v3];

    if (v3)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DC738]);
      fakeClearButton = self->_fakeClearButton;
      self->_fakeClearButton = v6;

      v8 = self->_fakeClearButton;
      v9 = [(UITextField *)self->_searchField _clearButton];
      v10 = [v9 imageForState:0];
      [(UIButton *)v8 setImage:v10 forState:0];

      [(SFUnifiedTabBarItemTitleContainerView *)self addSubview:self->_fakeClearButton];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__SFUnifiedTabBarItemTitleContainerView__setShowsFakeClearButton___block_invoke;
      v12[3] = &unk_1E721B360;
      v12[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v12];
    }

    else
    {
      [(UIButton *)self->_fakeClearButton removeFromSuperview];
      v11 = self->_fakeClearButton;
      self->_fakeClearButton = 0;
    }
  }
}

- (void)_updateOffsetOfTitleInSearchField
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_title length]&& [(NSString *)self->_textWhenExpanded length]&& ((v3 = self->_startIndexOfTitleInTextWhenExpanded, v3 != 0x7FFFFFFFFFFFFFFFLL) ? (v4 = v3 == 0) : (v4 = 1), !v4))
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    textWhenExpanded = self->_textWhenExpanded;
    v13 = *MEMORY[0x1E69DB648];
    v7 = [(SFUnifiedTabBarItemTitleContainerView *)self traitCollection];
    v8 = [(SFUnifiedTabBarItemTitleContainerView *)self _titleFontWithTraitCollection:v7];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v5 initWithString:textWhenExpanded attributes:v9];

    startIndexOfTitleInTextWhenExpanded = self->_startIndexOfTitleInTextWhenExpanded;
    if ([(NSString *)self->_title characterAtIndex:0]== 8206)
    {
      ++startIndexOfTitleInTextWhenExpanded;
    }

    v12 = CTLineCreateWithAttributedString(v10);
    self->_offsetOfTitleInSearchField = CTLineGetOffsetForStringIndex(v12, startIndexOfTitleInTextWhenExpanded, 0);
    CFRelease(v12);
  }

  else
  {
    self->_offsetOfTitleInSearchField = 0.0;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SFUnifiedTabBarItemTitleContainerView;
  v5 = [(SFUnifiedTabBarItemTitleContainerView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (self->_showsSearchField && [v5 isDescendantOfView:self->_searchField])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)squishedAccessoryViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(SFUnifiedTabBarItemTitleContainerView *)self _squishedIconView];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setShowsSquishedAccessoryViews:(BOOL)a3
{
  if (self->_showsSquishedAccessoryViews != a3)
  {
    self->_showsSquishedAccessoryViews = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self setNeedsLayout];
  }
}

- (id)_squishedIconView
{
  squishedIconView = self->_squishedIconView;
  if (!squishedIconView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
    v6 = [v4 initWithImage:v5];
    v7 = self->_squishedIconView;
    self->_squishedIconView = v6;

    v8 = [(SFUnifiedTabBarItemTitleContainerView *)self _squishedAccessorySymbolConfiguration];
    [(UIImageView *)self->_squishedIconView setPreferredSymbolConfiguration:v8];

    v9 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme primaryTextColor];
    [(UIImageView *)self->_squishedIconView setTintColor:v9];

    squishedIconView = self->_squishedIconView;
  }

  v10 = squishedIconView;

  return v10;
}

- (void)_layoutSquishedAccessoryView:(id)a3 forView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    [v7 setHidden:self->_showsSquishedAccessoryViews];
    [v6 setHidden:{-[SFUnifiedTabBarItemTitleContainerView _showsView:](self, "_showsView:", v8) ^ 1}];
    if (self->_showsSquishedAccessoryViews)
    {
      [v6 sizeToFit];
      v9 = [v8 superview];
      [v8 center];
      v11 = v10;
      v13 = v12;
      v14 = [v6 superview];
      [v9 convertPoint:v14 toView:{v11, v13}];
      v16 = v15;
      v18 = v17;

      if (_SFPointIsInvalid())
      {
        v19 = WBS_LOG_CHANNEL_PREFIXTabBar();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [(SFUnifiedTabBarItemTitleContainerView *)v19 _layoutSquishedAccessoryView:v6 forView:v8];
        }
      }

      else
      {
        [v6 setCenter:{v16, v18}];
        [v6 frame];
        [v6 setFrame:_SFRoundRectToPixels(v20)];
        [v8 alpha];
        [v6 setAlpha:?];
      }
    }
  }
}

- (id)_squishedAccessorySymbolConfiguration
{
  titleTextStyle = self->_titleTextStyle;
  v4 = MEMORY[0x1E69DB878];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v6 = [v4 preferredFontForTextStyle:titleTextStyle compatibleWithTraitCollection:v5];

  +[SFUnifiedBarMetrics minimumSquishScale];
  v8 = v7;
  [v6 pointSize];
  v10 = ceil(v8 * v9);
  v11 = [MEMORY[0x1E69DCA40] metricsForTextStyle:self->_titleTextStyle];
  v12 = [(SFUnifiedTabBarItemTitleContainerView *)self traitCollection];
  [v11 scaledValueForValue:v12 compatibleWithTraitCollection:v10];
  v14 = v13;

  v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:1 scale:v14];

  return v15;
}

- (void)_updateSquishedAccessorySymbolConfigurations
{
  v3 = [(SFUnifiedTabBarItemTitleContainerView *)self _squishedAccessorySymbolConfiguration];
  [(UIImageView *)self->_squishedIconView setPreferredSymbolConfiguration:v3];
}

- (id)prepareForAvailabilityPresentation
{
  availabilityTransitionCoordinator = self->_availabilityTransitionCoordinator;
  if (!availabilityTransitionCoordinator)
  {
    v4 = [[SFTransitionCoordinator alloc] initWithDuration:50331648 delay:0 options:0 animations:0.5 completion:0.06];
    v5 = self->_availabilityTransitionCoordinator;
    self->_availabilityTransitionCoordinator = v4;

    availabilityTransitionCoordinator = self->_availabilityTransitionCoordinator;
  }

  return [(SFTransitionCoordinator *)availabilityTransitionCoordinator publicCoordinator];
}

- (void)presentAvailabilityLabelWithText:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(SFURLLabel);
  [(SFURLLabel *)v7 setAdjustsFontForContentSizeCategory:1];
  [(SFURLLabel *)v7 setFadeOutEdge:1];
  v5 = [(SFUnifiedTabBarItemTitleContainerView *)self _titleFontWithTraitCollection:0];
  [(SFURLLabel *)v7 setFont:v5];

  v6 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self->_theme primaryTextColor];
  [(SFURLLabel *)v7 setTextColor:v6];

  [(SFURLLabel *)v7 setText:v4];
  [(SFUnifiedTabBarItemTitleContainerView *)self presentAvailabilityLabelWithView:v7];
}

- (void)presentAvailabilityLabelWithView:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = self->_availabilityLabel;
  if (v29)
  {
    availabilityLabelAlignmentConstraint = self->_availabilityLabelAlignmentConstraint;
    self->_availabilityLabelAlignmentConstraint = 0;
  }

  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFUnifiedTabBarItemTitleContainerView *)self addSubview:v4];
  v6 = [(SFUnifiedTabBarItemTitleContainerView *)self layoutMarginsGuide];
  v23 = MEMORY[0x1E696ACD8];
  v28 = [(UIView *)v4 leadingAnchor];
  v30 = v6;
  v27 = [v6 leadingAnchor];
  v26 = [v28 constraintGreaterThanOrEqualToAnchor:v27];
  v37[0] = v26;
  v25 = [(UIView *)v4 topAnchor];
  v24 = [(SFUnifiedTabBarItemTitleContainerView *)self topAnchor];
  v7 = [v25 constraintEqualToAnchor:v24];
  v37[1] = v7;
  v8 = [v6 trailingAnchor];
  v9 = [(UIView *)v4 trailingAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
  v37[2] = v10;
  v11 = [(SFUnifiedTabBarItemTitleContainerView *)self bottomAnchor];
  v12 = [(UIView *)v4 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v37[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v23 activateConstraints:v14];

  [(SFUnifiedTabBarItemTitleContainerView *)self _updateAlignmentForAvailabilityLabel:v4];
  [(SFUnifiedTabBarItemTitleContainerView *)self layoutIfNeeded];
  availabilityLabel = self->_availabilityLabel;
  self->_availabilityLabel = v4;
  v16 = v4;

  v17 = MEMORY[0x1E69DD250];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __74__SFUnifiedTabBarItemTitleContainerView_presentAvailabilityLabelWithView___block_invoke;
  v34[3] = &unk_1E721B400;
  v35 = v29;
  v36 = self;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__SFUnifiedTabBarItemTitleContainerView_presentAvailabilityLabelWithView___block_invoke_2;
  v32[3] = &unk_1E721B510;
  v33 = v35;
  v18 = v35;
  [v17 animateWithDuration:50331648 delay:v34 options:v32 animations:0.2 completion:0.0];
  v19 = [(SFUnifiedTabBarItemTitleContainerView *)self prepareForAvailabilityPresentation];
  availabilityTransitionCoordinator = self->_availabilityTransitionCoordinator;
  self->_availabilityTransitionCoordinator = 0;
  v21 = availabilityTransitionCoordinator;

  [(UIView *)self->_availabilityLabel setAlpha:0.0];
  v22 = [(SFTransitionCoordinator *)v21 publicCoordinator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __74__SFUnifiedTabBarItemTitleContainerView_presentAvailabilityLabelWithView___block_invoke_3;
  v31[3] = &unk_1E721BD58;
  v31[4] = self;
  [v22 addAnimations:v31];

  [(SFTransitionCoordinator *)v21 performTransitionWithAnimation:1 inContextOfContainerView:self];
}

uint64_t __74__SFUnifiedTabBarItemTitleContainerView_presentAvailabilityLabelWithView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 _layoutArrangedViews];
}

uint64_t __74__SFUnifiedTabBarItemTitleContainerView_presentAvailabilityLabelWithView___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldShowAvailabilityLabel];
  v3 = *(*(a1 + 32) + 464);

  return [v3 setAlpha:v2];
}

- (void)dismissAvailabilityLabelAnimated:(BOOL)a3
{
  availabilityLabel = self->_availabilityLabel;
  if (availabilityLabel)
  {
    v4 = a3;
    v6 = availabilityLabel;
    v7 = self->_availabilityLabel;
    self->_availabilityLabel = 0;

    availabilityLabelAlignmentConstraint = self->_availabilityLabelAlignmentConstraint;
    self->_availabilityLabelAlignmentConstraint = 0;

    v9 = [(SFUnifiedTabBarItemTitleContainerView *)self prepareForAvailabilityPresentation];
    v10 = self->_availabilityTransitionCoordinator;
    availabilityTransitionCoordinator = self->_availabilityTransitionCoordinator;
    self->_availabilityTransitionCoordinator = 0;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke;
    aBlock[3] = &unk_1E721B650;
    v17 = v6;
    v18 = v10;
    v19 = self;
    v12 = v10;
    v13 = v6;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v4)
    {
      (*(v14 + 2))(v14);
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
    }
  }
}

void __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke_2;
  v7[3] = &unk_1E721B360;
  v8 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke_3;
  v5[3] = &unk_1E721B510;
  v6 = *(a1 + 32);
  [v2 animateWithDuration:50331648 delay:v7 options:v5 animations:0.2 completion:0.0];
  v3 = [*(a1 + 40) publicCoordinator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke_4;
  v4[3] = &unk_1E721BD58;
  v4[4] = *(a1 + 48);
  [v3 addAnimations:v4];

  [*(a1 + 40) performTransitionWithAnimation:1 inContextOfContainerView:*(a1 + 48)];
}

uint64_t __74__SFUnifiedTabBarItemTitleContainerView_dismissAvailabilityLabelAnimated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _layoutArrangedViews];
  v2 = *(a1 + 32);

  return [v2 _layoutSquishedAccessoryViews];
}

- (void)_updateAlignmentForAvailabilityLabel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    [(NSLayoutConstraint *)self->_availabilityLabelAlignmentConstraint setActive:0];
    alignment = self->_alignment;
    if (alignment == 1)
    {
      v6 = [v12 centerXAnchor];
      v7 = [(SFUnifiedTabBarItemTitleContainerView *)self centerXAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
    }

    else
    {
      if (alignment)
      {
LABEL_10:
        [(NSLayoutConstraint *)self->_availabilityLabelAlignmentConstraint setActive:1];
        v4 = v12;
        goto LABEL_11;
      }

      if (!self->_showsIcon && !self->_showsSearchIcon)
      {
        v6 = [v12 leadingAnchor];
        v7 = [(SFUnifiedTabBarItemTitleContainerView *)self layoutMarginsGuide];
        v9 = [v7 leadingAnchor];
        v10 = [v6 constraintEqualToAnchor:v9];
        availabilityLabelAlignmentConstraint = self->_availabilityLabelAlignmentConstraint;
        self->_availabilityLabelAlignmentConstraint = v10;

        goto LABEL_9;
      }

      v6 = [v12 leadingAnchor];
      v7 = [(SFFaviconView *)self->_iconView trailingAnchor];
      v8 = [v6 constraintEqualToAnchor:v7 constant:self->_iconSpacing];
    }

    v9 = self->_availabilityLabelAlignmentConstraint;
    self->_availabilityLabelAlignmentConstraint = v8;
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)requiresTruncationToDisplayAvailabilityLabel:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = *MEMORY[0x1E69DB648];
  v4 = a3;
  v5 = [(SFUnifiedTabBarItemTitleContainerView *)self traitCollection];
  v6 = [(SFUnifiedTabBarItemTitleContainerView *)self _titleFontWithTraitCollection:v5];
  v18[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v7];
  v9 = CTLineCreateWithAttributedString(v8);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  CFRelease(v9);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v14 = CGRectGetWidth(v20);
  v15 = [(SFUnifiedTabBarItemTitleContainerView *)self layoutMarginsGuide];
  [v15 layoutFrame];
  LOBYTE(self) = v14 > CGRectGetWidth(v21);

  return self;
}

- (void)_layoutSquishedAccessoryView:(uint64_t)a3 forView:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 sf_commonAncestrySummaryWithView:a3];
  v7 = 138412290;
  v8 = v6;
  _os_log_fault_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_FAULT, "Invalid center for squished accessory view:\n%@", &v7, 0xCu);
}

@end