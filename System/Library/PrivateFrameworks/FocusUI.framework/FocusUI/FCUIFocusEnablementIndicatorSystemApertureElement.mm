@interface FCUIFocusEnablementIndicatorSystemApertureElement
- (FCUIFocusEnablementIndicatorSystemApertureElement)initWithActivityDescription:(id)a3 enabled:(BOOL)a4;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (SAAlertHosting)alertHost;
- (SAUILayoutHosting)layoutHost;
- (UIView)leadingView;
- (UIView)minimalView;
- (UIView)trailingView;
- (id)_customLayoutFont;
- (id)_enablementText;
- (id)initForPickerWithActivityDescription:(id)a3 enabled:(BOOL)a4;
- (id)keyColor;
- (void)_configureCustomViewsIfNecessary;
- (void)_layoutCustomActivityButtonInContainerView:(id)a3;
- (void)_layoutCustomTextViewsInContainerView:(id)a3;
- (void)_layoutHuggingObstructionForLabel:(id)a3 x:(double)a4 width:(double)a5 maxLabelHeight:(double)a6;
- (void)_updateOnOffTrailingLabelAnimated:(BOOL)a3;
- (void)_updateTrailingLabel;
- (void)_updateVisualStylingAnimated:(BOOL)a3;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3;
- (void)setActivityEnabled:(BOOL)a3;
@end

@implementation FCUIFocusEnablementIndicatorSystemApertureElement

- (FCUIFocusEnablementIndicatorSystemApertureElement)initWithActivityDescription:(id)a3 enabled:(BOOL)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = FCUIFocusEnablementIndicatorSystemApertureElement;
  v7 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)&v16 init];
  if (v7)
  {
    v8 = [v6 copyWithZone:0];
    activityDescription = v7->_activityDescription;
    v7->_activityDescription = v8;

    v7->_activityEnabled = a4;
    v7->_preferredLayoutMode = 2;
    v10 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v7->_activityManager;
    v7->_activityManager = v10;

    v12 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    [v12 sensorRegionSize];
    v7->_sensorObstructionHeight = v13;
    [v12 minimumExpandedSize];
    v7->_expandedHeight = v14;
    v7->_isForPickerPresentation = 0;
  }

  return v7;
}

- (id)initForPickerWithActivityDescription:(id)a3 enabled:(BOOL)a4
{
  result = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self initWithActivityDescription:a3 enabled:a4];
  if (result)
  {
    *(result + 80) = 1;
  }

  return result;
}

- (void)setActivityEnabled:(BOOL)a3
{
  if (self->_activityEnabled != a3)
  {
    self->_activityEnabled = a3;
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateOnOffTrailingLabelAnimated:1];
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];

    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateVisualStylingAnimated:1];
    v6 = [(UILabel *)self->_activityTitleLabel superview];
    if (v6)
    {
      [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _layoutCustomTextViewsInContainerView:v6];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    if (self->_activityEnabled)
    {
      [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
    }

    else
    {
      [MEMORY[0x277D75348] sbui_inactiveColor];
    }
    v4 = ;
    v5 = MEMORY[0x277D755D0];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
    v7 = [v5 configurationWithFont:v6 scale:2];

    v8 = MEMORY[0x277D755D0];
    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v4, 0}];
    v10 = [v8 configurationWithPaletteColors:v9];
    v11 = [v7 configurationByApplyingConfiguration:v10];

    v12 = MEMORY[0x277D755B8];
    v13 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
    v14 = [v12 _systemImageNamed:v13 withConfiguration:v11];

    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
    v16 = self->_leadingView;
    self->_leadingView = v15;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_isForPickerPresentation)
  {
    pickerTrailingView = self->_pickerTrailingView;
    if (!pickerTrailingView)
    {
      v4 = MEMORY[0x277D755D0];
      v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
      v6 = [v4 configurationWithFont:v5 scale:2];

      v7 = MEMORY[0x277D755D0];
      v8 = [MEMORY[0x277D75348] systemWhiteColor];
      v20[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v10 = [v7 configurationWithPaletteColors:v9];
      v11 = [v6 configurationByApplyingConfiguration:v10];

      v12 = [MEMORY[0x277D755B8] _systemImageNamed:@"list.bullet" withConfiguration:v11];
      v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
      v14 = self->_pickerTrailingView;
      self->_pickerTrailingView = v13;

      pickerTrailingView = self->_pickerTrailingView;
    }

    v15 = pickerTrailingView;
  }

  else
  {
    onOffTrailingTextProvider = self->_onOffTrailingTextProvider;
    if (!onOffTrailingTextProvider)
    {
      v17 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:&stru_285ECE868 style:4];
      [v17 setTextAlignment:4];
      [v17 setContentContainer:self];
      v18 = self->_onOffTrailingTextProvider;
      self->_onOffTrailingTextProvider = v17;

      [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateOnOffTrailingLabelAnimated:0];
      onOffTrailingTextProvider = self->_onOffTrailingTextProvider;
    }

    v15 = [(SBUISystemApertureTextContentProvider *)onOffTrailingTextProvider providedView];
  }

  return v15;
}

- (UIView)minimalView
{
  if (self->_isForPickerPresentation)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self trailingView];
  }

  else
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self leadingView];
  }
  v2 = ;

  return v2;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  top = result.top;
  if (a3 == 3)
  {
    trailing = a5.trailing;
    leading = a5.leading;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained edgeOutsetsForSize:{1.79769313e308, self->_expandedHeight}];
    bottom = v10;

    result.leading = leading;
    result.trailing = trailing;
  }

  else
  {
    bottom = result.bottom;
  }

  v12 = top;
  v13 = bottom;
  result.bottom = v13;
  result.top = v12;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  v12 = a3;
  if (self->_layoutMode == 3)
  {
    v4 = [(UILabel *)self->_activityTitleLabel superview];

    if (v4)
    {
      [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _layoutCustomActivityButtonInContainerView:v12];
      [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _layoutCustomTextViewsInContainerView:v12];
    }
  }

  v5 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self leadingView];
  v6 = v5;
  if (self->_layoutMode == 3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self trailingView];
  v9 = v8;
  if (self->_layoutMode == 3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v8 setAlpha:v10];

  v11 = [FCUIFocusEnablementIndicatorBannerPresentable accessibilityIdentifierForActivityDescription:self->_activityDescription];
  [v12 setAccessibilityIdentifier:v11];
}

- (id)keyColor
{
  if (self->_activityEnabled)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] sbui_inactiveColor];
  }
  v2 = ;

  return v2;
}

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self->_layoutMode == 3)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _configureCustomViewsIfNecessary];
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateVisualStylingAnimated:0];
    v9 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
    v17[3] = &unk_27901A380;
    v18 = v7;
    v19 = self;
    [v9 performWithoutAnimation:v17];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v13[3] = &unk_27901AA90;
  objc_copyWeak(&v15, &location);
  v10 = v7;
  v14 = v10;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_3;
  v11[3] = &unk_27901AAB8;
  objc_copyWeak(&v12, &location);
  [v8 animateAlongsideTransition:v13 completion:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 40) + 48)];
  [*(a1 + 32) addSubview:*(*(a1 + 40) + 56)];
  result = [*(a1 + 32) addSubview:*(*(a1 + 40) + 40)];
  v3 = *(a1 + 40);
  if (*(v3 + 24))
  {
    result = [*(a1 + 32) addSubview:?];
    v3 = *(a1 + 40);
  }

  if (*(v3 + 32))
  {
    v4 = *(a1 + 32);

    return [v4 addSubview:?];
  }

  return result;
}

void __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained layoutHostContainerViewDidLayoutSubviews:*(a1 + 32)];
}

uint64_t __127__FCUIFocusEnablementIndicatorSystemApertureElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([WeakRetained layoutMode] <= 2)
    {
      [v6[6] removeFromSuperview];
      [v6[7] removeFromSuperview];
      [v6[5] removeFromSuperview];
      v2 = v6;
      v3 = v6[3];
      if (v3)
      {
        [v3 removeFromSuperview];
        v2 = v6;
      }

      v4 = v2[4];
      if (v4)
      {
        [v4 removeFromSuperview];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_layoutCustomActivityButtonInContainerView:(id)a3
{
  v4 = a3;
  v5 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  v7 = v6;

  if (v5 == 1)
  {
    v8 = v7 + -56.0 + -14.0;
  }

  else
  {
    v8 = 14.0;
  }

  [(FCUICAPackageView *)self->_activityIconPackageView setFrame:v8];
  [(UIImageView *)self->_activityIconImageView setFrame:v8, 14.0, 56.0, 56.0];
  [(UIButton *)self->_activityIconButton setFrame:v8, 14.0, 56.0, 56.0];
  [(FCUICAPackageView *)self->_activityIconPackageView _setCornerRadius:28.0];
  [(UIImageView *)self->_activityIconImageView _setCornerRadius:28.0];
  activityIconButton = self->_activityIconButton;

  [(UIButton *)activityIconButton _setCornerRadius:28.0];
}

- (void)_layoutCustomTextViewsInContainerView:(id)a3
{
  v4 = a3;
  v5 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [v4 traitCollection];

  [v10 displayScale];
  v11 = [(UILabel *)self->_activityOnOffLabel font];
  [v11 lineHeight];
  UIFloorToScale();
  v13 = v12;

  v14 = v9 - self->_sensorObstructionHeight + -12.0;
  [(UILabel *)self->_activityOnOffLabel sizeThatFits:v7 + -12.0 - v13 + -84.0, v14];
  BSSizeCeilForScale();
  v16 = v7 + -12.0 - v13 + -84.0 - v15;
  if (v16 <= 0.0)
  {
    v17 = v7 + -12.0 - v13 + -84.0;
  }

  else
  {
    v17 = v15;
  }

  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v7 + -12.0 - v13 + -84.0 - v15;
  }

  if (v5 == 1)
  {
    v19 = v17 + v13 + 12.0;
  }

  else
  {
    v19 = 84.0;
  }

  [FCUIFocusEnablementIndicatorSystemApertureElement _layoutHuggingObstructionForLabel:"_layoutHuggingObstructionForLabel:x:width:maxLabelHeight:" x:self->_activityOnOffLabel width:? maxLabelHeight:?];
  activityTitleLabel = self->_activityTitleLabel;

  [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _layoutHuggingObstructionForLabel:activityTitleLabel x:v19 width:v18 maxLabelHeight:v14];
}

- (void)_layoutHuggingObstructionForLabel:(id)a3 x:(double)a4 width:(double)a5 maxLabelHeight:(double)a6
{
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = a3;
  [v11 setFrame:{a4, v9, a5, a6}];
  v10 = [v11 traitCollection];
  [v10 displayScale];

  [v11 _tightBoundingRectOfFirstLine];
  UICeilToScale();
  BSRectRoundForScale();
  [v11 setFrame:?];
}

- (void)_updateVisualStylingAnimated:(BOOL)a3
{
  v3 = a3;
  activityEnabled = self->_activityEnabled;
  if (activityEnabled)
  {
    v23 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
    v6 = 1;
  }

  else
  {
    v23 = [MEMORY[0x277D75348] sbui_inactiveColor];
    v6 = 2;
  }

  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
  v9 = [v7 configurationWithFont:v8 scale:2];

  v10 = MEMORY[0x277D755D0];
  v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v23, 0}];
  v12 = [v10 configurationWithPaletteColors:v11];
  v13 = [v9 configurationByApplyingConfiguration:v12];

  v14 = MEMORY[0x277D755B8];
  v15 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
  v16 = [v14 _systemImageNamed:v15 withConfiguration:v13];

  [(UIView *)self->_leadingView setImage:v16];
  v17 = kFCUIPackageViewStateOn;
  if (!activityEnabled)
  {
    v17 = &kFCUIPackageViewStateOff;
  }

  [(FCUICAPackageView *)self->_activityIconPackageView setState:*v17 animated:activityEnabled & v3];
  v18 = [(FCUICAPackageView *)self->_activityIconPackageView superview];
  [v18 setOverrideUserInterfaceStyle:v6];

  [(UIImageView *)self->_activityIconImageView setTintColor:v23];
  if (activityEnabled)
  {
    v19 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v20 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
    v19 = [v20 colorWithAlphaComponent:0.25];
  }

  [(FCUICAPackageView *)self->_activityIconPackageView setBackgroundColor:v19];
  [(UIImageView *)self->_activityIconImageView setBackgroundColor:v19];
  activityIconButton = self->_activityIconButton;
  v22 = [MEMORY[0x277D75348] clearColor];
  [(UIButton *)activityIconButton setBackgroundColor:v22];

  [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateTrailingLabel];
}

- (void)_updateTrailingLabel
{
  if (self->_activityEnabled)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] sbui_inactiveColor];
  }
  v7 = ;
  activityOnOffLabel = self->_activityOnOffLabel;
  v4 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _enablementText];
  [(UILabel *)activityOnOffLabel setText:v4];

  v5 = self->_activityOnOffLabel;
  v6 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _customLayoutFont];
  [(UILabel *)v5 setFont:v6];

  [(UILabel *)self->_activityOnOffLabel setTextColor:v7];
}

- (void)_updateOnOffTrailingLabelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUISystemApertureTextContentProvider *)self->_onOffTrailingTextProvider providedView];
  v6 = [v5 _shouldReverseLayoutDirection];

  if (self->_activityEnabled)
  {
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _primaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] sbui_inactiveColor];
  }
  v14 = ;
  v7 = MEMORY[0x277CCACA8];
  v8 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _enablementText];
  v9 = v8;
  v10 = &stru_285ECE868;
  if (v6)
  {
    v11 = @" ";
  }

  else
  {
    v11 = &stru_285ECE868;
  }

  if (!v6)
  {
    v10 = @" ";
  }

  v12 = [v7 stringWithFormat:@"%@%@%@", v8, v11, v10];

  onOffTrailingTextProvider = self->_onOffTrailingTextProvider;
  if (v3)
  {
    [(SBUISystemApertureTextContentProvider *)onOffTrailingTextProvider swapInText:v12 textColor:v14];
  }

  else
  {
    [(SBUISystemApertureTextContentProvider *)onOffTrailingTextProvider setText:v12];
    [(SBUISystemApertureTextContentProvider *)self->_onOffTrailingTextProvider setContentColor:v14];
  }
}

- (void)_configureCustomViewsIfNecessary
{
  v3 = self->_activityDescription;
  if (!self->_activityTitleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    activityTitleLabel = self->_activityTitleLabel;
    self->_activityTitleLabel = v4;

    v6 = self->_activityTitleLabel;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v6 setTextColor:v7];

    v8 = self->_activityTitleLabel;
    v9 = [(FCActivityDescribing *)v3 activityDisplayName];
    [(UILabel *)v8 setText:v9];

    v10 = self->_activityTitleLabel;
    v11 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _customLayoutFont];
    [(UILabel *)v10 setFont:v11];
  }

  if (!self->_activityOnOffLabel)
  {
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    activityOnOffLabel = self->_activityOnOffLabel;
    self->_activityOnOffLabel = v12;

    [(UILabel *)self->_activityOnOffLabel setTextAlignment:2];
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)self _updateTrailingLabel];
  }

  if (!self->_activityIconPackageView)
  {
    v14 = [FCUICAPackageView packageViewForActivity:v3];
    activityIconPackageView = self->_activityIconPackageView;
    self->_activityIconPackageView = v14;

    [(FCUICAPackageView *)self->_activityIconPackageView setUserInteractionEnabled:0];
    if (!self->_activityIconPackageView && !self->_activityIconImageView)
    {
      v16 = objc_alloc_init(MEMORY[0x277D755E8]);
      activityIconImageView = self->_activityIconImageView;
      self->_activityIconImageView = v16;

      [(UIImageView *)self->_activityIconImageView setContentMode:4];
      [(UIImageView *)self->_activityIconImageView setUserInteractionEnabled:0];
      v18 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
      v19 = MEMORY[0x277D755B8];
      v20 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
      v21 = [v19 _systemImageNamed:v20 withConfiguration:v18];

      [(UIImageView *)self->_activityIconImageView setImage:v21];
    }
  }

  if (!self->_activityIconButton)
  {
    objc_initWeak(&location, self);
    v22 = MEMORY[0x277D750C8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__FCUIFocusEnablementIndicatorSystemApertureElement__configureCustomViewsIfNecessary__block_invoke;
    v26[3] = &unk_27901AAE0;
    objc_copyWeak(&v28, &location);
    v27 = v3;
    v23 = [v22 actionWithHandler:v26];
    v24 = objc_alloc_init(MEMORY[0x277D67DD0]);
    activityIconButton = self->_activityIconButton;
    self->_activityIconButton = v24;

    [(UIButton *)self->_activityIconButton addAction:v23 forControlEvents:64];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __85__FCUIFocusEnablementIndicatorSystemApertureElement__configureCustomViewsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCUILogSelection;
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __85__FCUIFocusEnablementIndicatorSystemApertureElement__configureCustomViewsIfNecessary__block_invoke_cold_1(v4, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[96];
    v8 = *(WeakRetained + 2);
    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCACA8];
    v11 = [v3 sender];
    v12 = [v10 stringWithFormat:@"System aperture activity control tapped: %@", v11];
    [v8 setActivity:v9 active:(v7 & 1) == 0 reason:v12];

    *(v6 + 16) = 2;
    v13 = objc_loadWeakRetained(v6 + 17);
    [v13 preferredLayoutModeDidInvalidateForLayoutSpecifier:v6];
  }
}

- (id)_enablementText
{
  activityEnabled = self->_activityEnabled;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (activityEnabled)
  {
    v5 = @"FLANKING_BANNER_ON";
  }

  else
  {
    v5 = @"FLANKING_BANNER_OFF";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285ECE868 table:0];

  return v6;
}

- (id)_customLayoutFont
{
  v2 = MEMORY[0x277D75C80];
  v3 = SBUISystemApertureDefaultContentSizeCategory();
  v4 = [v2 traitCollectionWithPreferredContentSizeCategory:v3];

  v5 = [MEMORY[0x277D74300] sbui_systemAperturePreferredFontForTextStyle:0 compatibleWithTraitCollection:v4];

  return v5;
}

- (SAAlertHosting)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

void __85__FCUIFocusEnablementIndicatorSystemApertureElement__configureCustomViewsIfNecessary__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 sender];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_24BB26000, v3, OS_LOG_TYPE_DEBUG, "System aperture activity control tapped: %{public}@", &v5, 0xCu);
}

@end