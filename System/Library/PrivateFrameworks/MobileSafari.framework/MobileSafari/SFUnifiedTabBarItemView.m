@interface SFUnifiedTabBarItemView
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)_commandPressed;
- (BOOL)_hasRoomForIconAndCloseButton;
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (BOOL)_shouldUseActiveTheme;
- (BOOL)_showsAccessoryButtonOfType:(int64_t)a3;
- (BOOL)_showsCloseButtonOnHover;
- (BOOL)canBecomeFocused;
- (BOOL)showsStopReloadButton;
- (CGRect)squishedGlassFrame;
- (SFMenuConfiguring)formatMenuButtonConfigurator;
- (SFUnifiedTabBarItemTitleContainerView)squishedTitleContainer;
- (SFUnifiedTabBarItemView)initWithFrame:(CGRect)a3;
- (SFUnifiedTabBarItemViewDelegate)delegate;
- (UIButton)firstExtensionButton;
- (UIButton)secondExtensionButton;
- (UIView)menuPopoverSourceView;
- (double)_closeButtonAlphaForSquishedInset;
- (double)_heightForAccessoryButtonOfType:(int64_t)a3 withWidth:(double)a4 defaultHeight:(double)a5;
- (double)_insetForAccessoryButtonOfType:(int64_t)a3;
- (double)_layOutIndexes:(id)a3 ofAccessoryButtonTypes:(id)a4 alongEdge:(int64_t)a5 usingPresentationSize:(BOOL)a6;
- (double)_scaleForTransitioningAccessoryButtonOfType:(int64_t)a3;
- (double)_spacingBetweenAccessoryButtonOfType:(int64_t)a3 andButtonOfType:(int64_t)a4;
- (double)_squishedInsetToHideCloseButton;
- (double)_squishedInsetToHideTrailingButtons;
- (double)_widthForAccessoryButtonOfType:(int64_t)a3;
- (double)accessoryButtonAlpha;
- (id)_accessoryButtonConfigurationWithImage:(id)a3 scale:(int64_t)a4;
- (id)_accessoryButtonTintColor;
- (id)_closeButtonConfiguration;
- (id)_controlsTintColor;
- (id)_makeAccessoryButtonWithImage:(id)a3 scale:(int64_t)a4 action:(SEL)a5;
- (id)_makeMediaStateMuteButton;
- (id)_progressBarTintColor;
- (id)_searchFieldTintColor;
- (id)_secondaryAccessoryButtonTintColor;
- (id)_titleTheme;
- (id)_tooltipTextForMediaStateMuteButton;
- (id)_viewForAccessoryButtonOfType:(int64_t)a3;
- (id)availabilityDisplayController:(id)a3 determineBestLabelsForPresentation:(id)a4;
- (id)makeReaderAvailabilityAction;
- (id)makeTranslationAvailabilityAction;
- (id)pointerRegionIdentifierForInteractionLocation:(CGPoint)a3;
- (int64_t)_iconVisibility;
- (unint64_t)_individualExtensionButtonLimit;
- (unint64_t)_mediaStateIconToDisplay;
- (void)_closeButtonTapped;
- (void)_configureFirstExtensionButton;
- (void)_configureSecondExtensionButton;
- (void)_extensionButtonTapped:(id)a3;
- (void)_hover:(id)a3;
- (void)_layOutAccessoryButtons;
- (void)_layOutProgressView;
- (void)_layOutTitleContainer;
- (void)_layOutTitleContainerMask;
- (void)_makeViewForAccessoryButtonOfType:(int64_t)a3;
- (void)_mediaStateMuteButtonTapped;
- (void)_menuButtonClicked;
- (void)_menuButtonReceivedTouchDown;
- (void)_menuButtonTapped;
- (void)_readerButtonTapped;
- (void)_refreshTooltip;
- (void)_refreshTooltipIfNeeded;
- (void)_reloadButtonTapped;
- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)_searchFieldDidChange:(id)a3;
- (void)_setIndexes:(id)a3 ofAccessoryButtonTypes:(id)a4 visible:(BOOL)a5 animated:(BOOL)a6;
- (void)_setNeedsAnimatedAccessoryButtonUpdate;
- (void)_setTitleContainerMasked:(BOOL)a3;
- (void)_setTrailingButtonsHidden:(BOOL)a3;
- (void)_startReloadButtonExpirationTimer;
- (void)_stopAccessoryButtonUpdateTimer;
- (void)_stopButtonTapped;
- (void)_stopReloadButtonExpirationTimer;
- (void)_temporarilyCoalesceAccessoryButtonUpdates;
- (void)_translationButtonTapped;
- (void)_updateAccessoryButtons;
- (void)_updateAccessoryButtonsAnimated:(BOOL)a3 completion:(id)a4;
- (void)_updateBadges;
- (void)_updateCloseButtonForHover;
- (void)_updateCloseButtonForHoverPosition;
- (void)_updateExtensionButtonConfigurationShowingOverflow:(BOOL)a3 activeExtensionCount:(unint64_t)a4;
- (void)_updateFormatMenuButtonAccessories;
- (void)_updateFormatMenuButtonImage;
- (void)_updateFormatMenuButtonStyle;
- (void)_updateKeyboardInputMode:(id)a3;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateMediaStateMuteButton;
- (void)_updateMenuButtonColor;
- (void)_updateProgressViewColor;
- (void)_updateTooltipProvider;
- (void)_voiceSearchAvailabilityDidChange:(id)a3;
- (void)_voiceSearchButtonTapped;
- (void)applyTheme;
- (void)availabilityDisplayController:(id)a3 didUpdateWithState:(int64_t)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissAvailabilityLabelAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)layoutSubviews;
- (void)makeCloseButton;
- (void)makeCloseButtonForHover;
- (void)makeFirstExtensionButton;
- (void)makeFormatMenuButton;
- (void)makeMediaStateMuteButton;
- (void)makeMoreMenuButton;
- (void)makeMultipleExtensionsButton;
- (void)makeOneStepBookmarkingButton;
- (void)makeParticipantsView;
- (void)makePinnedIndicator;
- (void)makeReloadButton;
- (void)makeSearchFieldIcon;
- (void)makeSecondExtensionButton;
- (void)makeStopButton;
- (void)makeUnreadIndicator;
- (void)makeVoiceSearchButton;
- (void)prepareForReuse;
- (void)presentAvailabilityLabelWithText:(id)a3;
- (void)setAccessoryButtonLayout:(int64_t)a3;
- (void)setActive:(BOOL)a3;
- (void)setContentAlignment:(int64_t)a3;
- (void)setContentOptions:(unint64_t)a3 resetDisplay:(BOOL)a4;
- (void)setCurrentTooltipProvider:(id)a3;
- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4;
- (void)setExtensionButtonConfiguration:(id)a3;
- (void)setFluidProgressController:(id)a3 withCurrentState:(id)a4;
- (void)setFollowsKeyboardLayoutDirection:(BOOL)a3;
- (void)setFormatMenuButtonConfigurator:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGlobalMediaStateIcon:(unint64_t)a3;
- (void)setHasFocusedSensitiveInputField:(BOOL)a3;
- (void)setHasHiddenElements:(BOOL)a3;
- (void)setHovering:(BOOL)a3;
- (void)setLastReloadDate:(id)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setMenuButtonBadges:(unint64_t)a3;
- (void)setMenuButtonSelected:(BOOL)a3;
- (void)setOverlayConfiguration:(id)a3;
- (void)setPlatterStyle:(int64_t)a3;
- (void)setSearchField:(id)a3;
- (void)setSearchFieldIcon:(id)a3;
- (void)setSecurityAnnotation:(int64_t)a3;
- (void)setShareParticipants:(id)a3;
- (void)setShowsBadgeOnExtensionsButton:(BOOL)a3;
- (void)setShowsCloseButton:(BOOL)a3;
- (void)setShowsPinnedIndicator:(BOOL)a3;
- (void)setShowsReaderIcon:(BOOL)a3;
- (void)setShowsSearchField:(BOOL)a3;
- (void)setShowsSearchIcon:(BOOL)a3;
- (void)setShowsSiriReaderPlayingIcon:(BOOL)a3;
- (void)setShowsSquishedAccessoryViews:(BOOL)a3;
- (void)setShowsStopReloadButton:(BOOL)a3;
- (void)setShowsTranslationIcon:(BOOL)a3;
- (void)setShowsVoiceSearchButton:(BOOL)a3;
- (void)setSquishedInset:(double)a3;
- (void)setSquishedTitleContainer:(id)a3;
- (void)setStopReloadButtonShowsStop:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleWhenActive:(id)a3;
- (void)setTitleWhenCollapsed:(id)a3;
- (void)setUnread:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateAccessibilityIdentifier;
- (void)updateCornerRadius;
- (void)updateMenuButtonForSelection;
@end

@implementation SFUnifiedTabBarItemView

- (SFUnifiedTabBarItemView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = SFUnifiedTabBarItemView;
  v3 = [(SFUnifiedBarItemView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFUnifiedTabBarItemView *)v3 setPlatterStyle:1];
    [(SFUnifiedTabBarItemView *)v4 setFocusGroupIdentifier:0];
    v4->_downloadProgress = -2.0;
    v5 = [(SFUnifiedBarItemView *)v4 contentView];
    v6 = [[SFUnifiedTabBarItemTitleContainerView alloc] initWithAlignment:0];
    titleContainer = v4->_titleContainer;
    v4->_titleContainer = v6;

    [(SFUnifiedTabBarItemTitleContainerView *)v4->_titleContainer setShowsIcon:1];
    [(SFUnifiedTabBarItemTitleContainerView *)v4->_titleContainer setTitleTextStyle:*MEMORY[0x1E69DDD80]];
    [v5 addSubview:v4->_titleContainer];
    v8 = objc_alloc_init(_SFFluidProgressView);
    progressView = v4->_progressView;
    v4->_progressView = v8;

    [(_SFFluidProgressView *)v4->_progressView setDelegate:v4];
    [(SFUnifiedTabBarItemView *)v4 _updateProgressViewColor];
    [(SFUnifiedTabBarItemView *)v4 _updateShowsProgressView];
    v10 = [(SFUnifiedBarItemView *)v4 contentView];
    [v10 addSubview:v4->_progressView];

    v11 = objc_alloc_init(MEMORY[0x1E69784C8]);
    [v11 setDelegate:v4];
    [v11 setElementSource:v4];
    [(SFUnifiedTabBarItemView *)v4 addInteraction:v11];
    v12 = objc_alloc_init(SFUnifiedTabBarItemAccessoryButtonArrangement);
    accessoryButtonArrangement = v4->_accessoryButtonArrangement;
    v4->_accessoryButtonArrangement = v12;

    v14 = [objc_alloc(MEMORY[0x1E69C9780]) initWithPresenter:v4];
    availabilityDisplayController = v4->_availabilityDisplayController;
    v4->_availabilityDisplayController = v14;

    v16 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v17 = [v16 safari_numberForKey:@"DebugReaderGlyphDisplayDuration"];

    if (v17)
    {
      [v17 doubleValue];
    }

    else
    {
      v18 = 1.9;
    }

    [(WBSContentAvailabilityDisplayController *)v4->_availabilityDisplayController setLabelDisplayDuration:v18];
    shareParticipants = v4->_shareParticipants;
    v4->_shareParticipants = MEMORY[0x1E695E0F0];

    v20 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__hover_];
    hoverRecognizer = v4->_hoverRecognizer;
    v4->_hoverRecognizer = v20;

    [(SFUnifiedTabBarItemView *)v4 addGestureRecognizer:v4->_hoverRecognizer];
    [(SFUnifiedTabBarItemView *)v4 applyTheme];
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v4 selector:sel__setNeedsAnimatedAccessoryButtonUpdate name:*MEMORY[0x1E69DDA58] object:0];

    v23 = v4;
  }

  return v4;
}

- (void)_updateKeyboardInputMode:(id)a3
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != v5)
  {
    self->_keyboardInputModeIsRTL = v5;
    if ([(SFUnifiedTabBarItemView *)self _canUpdateLayoutDirectionImmediately])
    {

      [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
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

      [(SFUnifiedTabBarItemView *)self setSemanticContentAttribute:v5];

      [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    }
  }

  else
  {
    self->_layoutShouldBeRTL = ![(UIView *)self _sf_usesLeftToRightLayout];

    [(SFUnifiedTabBarItemView *)self setSemanticContentAttribute:0];
  }
}

- (BOOL)_canUpdateLayoutDirectionImmediately
{
  v3 = [(SFUnifiedTabBarItemView *)self searchField];
  v4 = [v3 text];
  if ([v4 length])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(SFUnifiedTabBarItemView *)self searchField];
    v7 = [v6 _fieldEditor];
    v5 = [v7 isHidden] ^ 1;
  }

  return v5;
}

- (void)setFollowsKeyboardLayoutDirection:(BOOL)a3
{
  if (self->_followsKeyboardLayoutDirection != a3)
  {
    v4 = a3;
    self->_followsKeyboardLayoutDirection = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setFollowsKeyboardLayoutDirection:?];
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

    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedTabBarItemView *)&v4 dealloc];
}

- (void)tintColorDidChange
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedTabBarItemView *)&v9 tintColorDidChange];
  if ([(SFUnifiedTabBarItemView *)self tintAdjustmentMode]== 2)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v3 setValue:&unk_1EFF73E20 forKey:@"inputAmount"];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    v5 = 0.3;
  }

  else
  {
    v4 = 0;
    v5 = 1.0;
  }

  v6 = [(UIButton *)self->_firstExtensionButton layer];
  [v6 setFilters:v4];

  v7 = [(UIButton *)self->_secondExtensionButton layer];
  [v7 setFilters:v4];

  [(UIButton *)self->_firstExtensionButton setAlpha:v5];
  [(UIButton *)self->_secondExtensionButton setAlpha:v5];
  v8 = [(SFUnifiedTabBarItemView *)self tintColor];
  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setBadgeTintColor:v8];
  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setBadgeTintColor:v8];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setBadgeTintColor:v8];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedBarItemView *)&v10 layoutSubviews];
  v3 = [(SFUnifiedBarItemView *)self barMetrics];
  [v3 itemCornerRadius];
  [(SFURLFieldOverlayView *)self->_overlayView _setContinuousCornerRadius:?];

  [(SFUnifiedBarItemView *)self squishedInset];
  v5 = v4;
  [(SFUnifiedTabBarItemView *)self _squishedInsetToHideTrailingButtons];
  [(SFUnifiedTabBarItemView *)self _setTrailingButtonsHidden:v5 > v6];
  [(SFUnifiedTabBarItemView *)self _updateAccessoryButtons];
  [(SFUnifiedTabBarItemView *)self _refreshTooltipIfNeeded];
  v7 = 0.0;
  if (self->_showsCloseButton && ![(SFUnifiedTabBarItemView *)self showsSearchField])
  {
    [(SFUnifiedTabBarItemView *)self _closeButtonAlphaForSquishedInset];
    v7 = v8;
  }

  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton setAlpha:v7];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton setUserInteractionEnabled:v7 == 1.0];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButtonForHover setAlpha:[(SFUnifiedTabBarItemView *)self _showsCloseButtonOnHover]];
  [(SFUnifiedTabBarItemView *)self _updateCloseButtonForHoverPosition];
  [(SFUnifiedTabBarItemView *)self _layOutProgressView];
  if (self->_needsAnimatedAccessoryButtonUpdate)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__SFUnifiedTabBarItemView_layoutSubviews__block_invoke;
    v9[3] = &unk_1E721B360;
    v9[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:2 animations:v9 completion:0];
  }

  else
  {
    [(SFUnifiedTabBarItemView *)self _layOutTitleContainer];
  }

  [(SFUnifiedTabBarItemView *)self updateAccessibilityIdentifier];
  self->_needsAnimatedAccessoryButtonUpdate = 0;
}

uint64_t __41__SFUnifiedTabBarItemView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) setAnimatingResize:1];
  [*(a1 + 32) _layOutTitleContainer];
  v2 = *(*(a1 + 32) + 1064);

  return [v2 setAnimatingResize:0];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedTabBarItemView *)&v3 didMoveToWindow];
  if (self->_needsVoiceSearchAvailabilityUpdate)
  {
    [(SFUnifiedTabBarItemView *)self _voiceSearchAvailabilityDidChange:0];
    self->_needsVoiceSearchAvailabilityUpdate = 0;
  }
}

- (void)setTitleWhenCollapsed:(id)a3
{
  v6 = a3;
  v4 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleWhenCollapsed];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleWhenCollapsed:v6];
  }
}

- (void)_layOutTitleContainer
{
  leadingButtonsWidth = self->_leadingButtonsWidth;
  trailingButtonsWidth = self->_trailingButtonsWidth;
  v74 = [(SFUnifiedBarItemView *)self glassView];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && objc_msgSend(v74, "isDescendantOfView:", self))
  {
    [v74 frame];
    v70 = v6;
    v72 = v5;
    v8 = v7;
    v10 = v9;
    [(SFUnifiedTabBarItemView *)self bounds];
    v76.origin.x = _SFFlipRectInCoordinateSpace(![(UIView *)self _sf_usesLeftToRightLayout], v72, v70, v8, v10, v11, v12, v13, v14);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
    leadingButtonsWidth = leadingButtonsWidth - fmin(leadingButtonsWidth, CGRectGetMinX(v76));
    [(SFUnifiedTabBarItemView *)self bounds];
    MaxX = CGRectGetMaxX(v77);
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    trailingButtonsWidth = trailingButtonsWidth - fmin(trailingButtonsWidth, MaxX - CGRectGetMaxX(v78));
  }

  v20 = [(SFUnifiedTabBarItemView *)self _iconVisibility];
  [(SFUnifiedBarItemView *)self squishedInset];
  v22 = v21;
  [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
  showsCloseButton = self->_showsCloseButton;
  v25 = leadingButtonsWidth - v24;
  v26 = fmin(v22, v24);
  v27 = leadingButtonsWidth - v26;
  v28 = trailingButtonsWidth + v26;
  if (v20)
  {
    v28 = trailingButtonsWidth;
    v27 = leadingButtonsWidth;
  }

  if (v20 == 2)
  {
    v28 = trailingButtonsWidth;
  }

  else
  {
    v25 = v27;
  }

  if (showsCloseButton)
  {
    v29 = v28;
  }

  else
  {
    v29 = trailingButtonsWidth;
  }

  if (showsCloseButton)
  {
    v30 = v25;
  }

  else
  {
    v30 = leadingButtonsWidth;
  }

  v31 = [(SFUnifiedTabBarItemView *)self _hasRoomForIconAndCloseButton:v28];
  if (v31)
  {
    active = self->_active;
    v33 = [(SFUnifiedTabBarItemView *)self contentAlignment];
    v34 = 0;
    if (!active && v33 == 1)
    {
      v35 = [(SFUnifiedBarItemView *)self barMetrics];
      [v35 tabCloseButtonWidth];
      v37 = v36;

      v30 = fmax(v30, v37);
      v29 = fmax(v29, v37 - 9.5);
      v34 = 1;
    }
  }

  else
  {
    [(SFUnifiedTabBarItemView *)self contentAlignment];
    v34 = 0;
  }

  v38 = [(SFUnifiedTabBarItemView *)self showsSearchField];
  [(SFUnifiedTabBarItemView *)self layoutMargins];
  v71 = v39;
  if (v38)
  {
    v40 = v39;
    if (![MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v30 = v40;
    }
  }

  v41 = [(SFUnifiedBarItemView *)self contentView];
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v79.origin.x = v43;
  v79.origin.y = v45;
  v79.size.width = v47;
  v79.size.height = v49;
  v73 = v22;
  v50 = v22 + CGRectGetWidth(v79) - v30 - v29;
  self->_titleContainerWidthAccountingForInset = v50;
  v80.origin.x = v43;
  v80.origin.y = v45;
  v80.size.width = v47;
  v80.size.height = v49;
  v51 = CGRectGetHeight(v80);
  v52 = [(SFUnifiedBarItemView *)self barMetrics];
  v53 = v52;
  v54 = 0.0;
  if (!((v34 | v38) & 1 | (self->_leadingButtonsWidth != 0.0)))
  {
    [v52 leadingTabIconInset];
    v56 = v55;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer leadingIconOffset];
    v54 = v56 + v57;
  }

  v58 = [(SFUnifiedTabBarItemView *)self contentAlignment];
  if (v58 == 1)
  {
    p_titleContainer = &self->_titleContainer;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setFrame:v43, v45, v47, v49];
    v81.origin.y = 0.0;
    v81.origin.x = v30;
    v81.size.width = v50;
    v81.size.height = v51;
    v62 = v54 + CGRectGetMinX(v81);
    v82.origin.x = v43;
    v82.origin.y = v45;
    v82.size.width = v47;
    v82.size.height = v49;
    v63 = CGRectGetWidth(v82);
    v83.origin.y = 0.0;
    v83.origin.x = v30;
    v83.size.width = v50;
    v83.size.height = v51;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setDirectionalLayoutMargins:0.0, v62, 0.0, v63 - CGRectGetMaxX(v83) + 3.0];
LABEL_30:
    v61 = 0.0;
    goto LABEL_31;
  }

  if (v58)
  {
    goto LABEL_32;
  }

  p_titleContainer = &self->_titleContainer;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setFrame:_SFFlipRectInCoordinateSpace(![(UIView *)self _sf_usesLeftToRightLayout], v30, 0.0, v50, v51, v43, v45, v47, v49)];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setDirectionalLayoutMargins:0.0, v54, 0.0, 3.0];
  if (!self->_showsCloseButton || !v38)
  {
    goto LABEL_30;
  }

  [v53 tabCloseButtonWidth];
  v61 = v60 - v71;
LABEL_31:
  [(SFUnifiedTabBarItemTitleContainerView *)*p_titleContainer setContentOffset:v61];
LABEL_32:
  if (v20 == 2)
  {
    v65 = &self->_titleContainer;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsIcon:1];
    [(SFUnifiedTabBarItemView *)self _closeButtonAlphaForSquishedInset];
    v68 = 1.0 - v69;
    v64 = v73;
  }

  else
  {
    v64 = v73;
    if (v20 == 1)
    {
      v65 = &self->_titleContainer;
      titleContainer = self->_titleContainer;
      v67 = 0;
    }

    else
    {
      if (v20)
      {
        goto LABEL_40;
      }

      v65 = &self->_titleContainer;
      titleContainer = self->_titleContainer;
      v67 = 1;
    }

    [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setShowsIcon:v67];
    v68 = 1.0;
  }

  [(SFUnifiedTabBarItemTitleContainerView *)*v65 setIconAlpha:v68];
LABEL_40:
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setLeadingAlignsIcon:!v31];
  [(SFUnifiedTabBarItemView *)self _setTitleContainerMasked:v64 > self->_trailingButtonsWidth];
  [(SFUnifiedTabBarItemView *)self _layOutTitleContainerMask];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer layoutIfNeeded];
}

- (void)_layOutProgressView
{
  v3 = [(SFUnifiedBarItemView *)self glassView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SFUnifiedBarItemView *)self contentView];
  }

  v7 = v5;

  v6 = [(_SFFluidProgressView *)self->_progressView superview];

  if (v6 != v7)
  {
    [v7 addSubview:self->_progressView];
  }

  [v7 _continuousCornerRadius];
  [(_SFFluidProgressView *)self->_progressView setCornerRadius:?];
  [v7 bounds];
  [(_SFFluidProgressView *)self->_progressView setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SFUnifiedTabBarItemView *)self frame];
  if (width != v9 || height != v8)
  {
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedTabBarItemView *)&v11 setFrame:x, y, width, height];
}

- (void)updateCornerRadius
{
  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedBarItemView *)&v4 updateCornerRadius];
  v3 = [(SFUnifiedBarItemView *)self barMetrics];
  [v3 itemCornerRadius];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setResizableBackgroundCornerRadius:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedBarItemView *)&v4 prepareForReuse];
  [(SFUnifiedTabBarItemView *)self setSearchField:0];
  [(SFUnifiedTabBarItemView *)self setShowsSearchField:0];
  [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  [(SFUnifiedTabBarItemView *)self _stopAccessoryButtonUpdateTimer];
  [(SFUnifiedTabBarItemView *)self _stopReloadButtonExpirationTimer];
  lastReloadDate = self->_lastReloadDate;
  self->_lastReloadDate = 0;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_title, a3);
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleWhenCollapsed:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemViewTitleChanged:self];
    }
  }
}

- (int64_t)_iconVisibility
{
  if ([(SFUnifiedTabBarItemView *)self accessoryButtonLayout])
  {
    return 1;
  }

  v4 = [(SFUnifiedTabBarItemView *)self contentAlignment];
  if (v4 == 1)
  {
    return self->_showsCloseButton && ![(SFUnifiedTabBarItemView *)self _hasRoomForIconAndCloseButton];
  }

  if (v4)
  {
    return 1;
  }

  if (!self->_active || [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer showsSearchIcon])
  {
    return 0;
  }

  if (self->_showsCloseButton)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)setTitleWhenActive:(id)a3
{
  titleContainer = self->_titleContainer;
  v5 = a3;
  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setTitle:v5];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setTitle:v5];

  [(SFUnifiedTabBarItemView *)self applyTheme];

  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)setSearchFieldIcon:(id)a3
{
  v4 = a3;
  searchFieldIconContainer = self->_searchFieldIconContainer;
  v7 = v4;
  if (!searchFieldIconContainer)
  {
    v6 = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:16];
    v4 = v7;
    searchFieldIconContainer = self->_searchFieldIconContainer;
  }

  [(SFSearchFieldIconContainerView *)searchFieldIconContainer setIcon:v4];
}

- (void)setShowsSearchIcon:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer showsSearchIcon]!= a3)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchIcon:v3];
    WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
    [WeakRetained setShowsSearchIcon:v3];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    v6 = [(SFUnifiedTabBarItemView *)self superview];
    if (v6)
    {
      v7 = v6;
      v8 = [(SFUnifiedTabBarItemView *)self isHidden];

      if ((v8 & 1) == 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __46__SFUnifiedTabBarItemView_setShowsSearchIcon___block_invoke;
        v9[3] = &unk_1E721B360;
        v9[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
      }
    }
  }
}

- (void)setShowsVoiceSearchButton:(BOOL)a3
{
  if (self->_showsVoiceSearchButton != a3)
  {
    self->_showsVoiceSearchButton = a3;
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setSecurityAnnotation:(int64_t)a3
{
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSecurityAnnotation:?];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setSecurityAnnotation:a3];
}

- (void)setHasFocusedSensitiveInputField:(BOOL)a3
{
  v3 = a3;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setHasFocusedSensitiveInputField:?];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setHasFocusedSensitiveInputField:v3];
}

- (UIView)menuPopoverSourceView
{
  if ([(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement containsButtonType:1])
  {
    v3 = self->_moreMenuButton;
  }

  else
  {
    v3 = [(SFNavigationBarToggleButton *)self->_formatMenuButton tiplessPopoverSourceView];
  }

  return v3;
}

- (void)setMenuButtonSelected:(BOOL)a3
{
  if (self->_menuButtonSelected != a3)
  {
    self->_menuButtonSelected = a3;
    [(SFUnifiedTabBarItemView *)self updateMenuButtonForSelection];
  }
}

- (void)updateMenuButtonForSelection
{
  [(SFMoreMenuButton *)self->_moreMenuButton setSelected:self->_menuButtonSelected];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setSelected:self->_menuButtonSelected];
  menuButtonSelected = self->_menuButtonSelected;
  v4 = [(SFNavigationBarToggleButton *)self->_formatMenuButton pointerInteraction];
  [v4 setEnabled:menuButtonSelected];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];

  [(SFUnifiedTabBarItemView *)self _updateMenuButtonColor];
}

- (void)setShowsReaderIcon:(BOOL)a3
{
  if (self->_showsReaderIcon != a3)
  {
    self->_showsReaderIcon = a3;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setShowsTranslationIcon:(BOOL)a3
{
  if (self->_showsTranslationIcon != a3)
  {
    self->_showsTranslationIcon = a3;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setShowsSiriReaderPlayingIcon:(BOOL)a3
{
  if (self->_showsSiriReaderPlayingIcon != a3)
  {
    self->_showsSiriReaderPlayingIcon = a3;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setContentOptions:(unint64_t)a3 resetDisplay:(BOOL)a4
{
  if (a4)
  {
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  }

  [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController updateToContentOptions:a3];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
}

- (id)makeReaderAvailabilityAction
{
  objc_initWeak(&location, self);
  v2 = _WBSLocalizedString();
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.plaintext"];
  v4 = [SFUnifiedTabBarAvailabilityItem alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFUnifiedTabBarItemView_makeReaderAvailabilityAction__block_invoke;
  v7[3] = &unk_1E721BF08;
  objc_copyWeak(&v8, &location);
  v5 = [(SFUnifiedTabBarAvailabilityItem *)v4 initWithTitle:v2 image:v3 buttonType:10 action:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

void __55__SFUnifiedTabBarItemView_makeReaderAvailabilityAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readerButtonTapped];
}

- (id)makeTranslationAvailabilityAction
{
  objc_initWeak(&location, self);
  v2 = _WBSLocalizedString();
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v4 = [SFUnifiedTabBarAvailabilityItem alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SFUnifiedTabBarItemView_makeTranslationAvailabilityAction__block_invoke;
  v7[3] = &unk_1E721BF08;
  objc_copyWeak(&v8, &location);
  v5 = [(SFUnifiedTabBarAvailabilityItem *)v4 initWithTitle:v2 image:v3 buttonType:11 action:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

void __60__SFUnifiedTabBarItemView_makeTranslationAvailabilityAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _translationButtonTapped];
}

- (BOOL)showsStopReloadButton
{
  v3 = [(SFUnifiedTabBarItemView *)self showsPersistentStopReloadButton];
  lastReloadDate = self->_lastReloadDate;
  if (lastReloadDate)
  {
    [(NSDate *)lastReloadDate safari_timeIntervalUntilNow];
    v6 = v5 < 480.0;
  }

  else
  {
    v6 = 0;
  }

  result = self->_showsStopReloadButton;
  if (!v3 && result && !v6)
  {

    return [(SFUnifiedBarItemView *)self isHovering];
  }

  return result;
}

- (void)setShowsStopReloadButton:(BOOL)a3
{
  if (self->_showsStopReloadButton != a3)
  {
    self->_showsStopReloadButton = a3;
    if ([(SFUnifiedBarItemView *)self isHovering])
    {

      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }
  }
}

- (void)setStopReloadButtonShowsStop:(BOOL)a3
{
  if (self->_stopReloadButtonShowsStop != a3)
  {
    self->_stopReloadButtonShowsStop = a3;
    if ([(SFUnifiedTabBarItemView *)self showsStopReloadButton])
    {

      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }
  }
}

- (void)setLastReloadDate:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v5 = [(SFUnifiedTabBarItemView *)self showsStopReloadButton];
    objc_storeStrong(&self->_lastReloadDate, a3);
    if (v5 != [(SFUnifiedTabBarItemView *)self showsStopReloadButton])
    {
      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }

    if (v6)
    {
      [(SFUnifiedTabBarItemView *)self _startReloadButtonExpirationTimer];
    }

    else
    {
      [(SFUnifiedTabBarItemView *)self _stopReloadButtonExpirationTimer];
    }
  }
}

- (unint64_t)_mediaStateIconToDisplay
{
  mediaStateIcon = self->_mediaStateIcon;
  if (!mediaStateIcon)
  {
    return self->_globalMediaStateIcon;
  }

  return mediaStateIcon;
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  if (self->_mediaStateIcon != a3)
  {
    self->_mediaStateIcon = a3;
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];

    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
  }
}

- (void)setGlobalMediaStateIcon:(unint64_t)a3
{
  if (self->_globalMediaStateIcon != a3)
  {
    self->_globalMediaStateIcon = a3;
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];

    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
  }
}

- (void)setFluidProgressController:(id)a3 withCurrentState:(id)a4
{
  obj = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_fluidProgressController);
  if (WeakRetained != obj)
  {
    [WeakRetained unregisterObserver:self->_progressView];
    v8 = objc_storeWeak(&self->_fluidProgressController, obj);

    [obj registerObserver:self->_progressView];
    [(_SFFluidProgressView *)self->_progressView setProgressToCurrentPositionForState:v6];
    [(SFUnifiedTabBarItemView *)self _updateShowsProgressView];
    WeakRetained = obj;
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setCollapsed:!a3];
    [(SFUnifiedTabBarItemView *)self _updateShowsProgressView];
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    if (!self->_active)
    {

      [(SFUnifiedTabBarItemView *)self _stopAccessoryButtonUpdateTimer];
    }
  }
}

- (void)setShowsCloseButton:(BOOL)a3
{
  if (self->_showsCloseButton != a3)
  {
    self->_showsCloseButton = a3;
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (BOOL)_hasRoomForIconAndCloseButton
{
  if (self->_active)
  {
    return 1;
  }

  if ([(SFUnifiedTabBarItemView *)self contentAlignment]!= 1)
  {
    return 1;
  }

  [(SFUnifiedTabBarItemView *)self bounds];
  Width = CGRectGetWidth(v8);
  [SFUnifiedTabBarMetrics minimumInactiveItemWidthForSizeClass:0];
  v6 = v5;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer maximumIconWidth];
  return Width > v6 + v7 * 2.0;
}

- (void)setFormatMenuButtonConfigurator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_formatMenuButtonConfigurator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_formatMenuButtonConfigurator, obj);
    [obj configureMenuAndAdoptButton:self->_formatMenuButton];
  }
}

- (void)setSearchField:(id)a3
{
  v6 = a3;
  v4 = [(SFUnifiedTabBarItemView *)self searchField];
  if (v4 != v6)
  {
    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
    [v4 removeTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSearchField:v6];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    [v6 addTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    v5 = [(SFUnifiedTabBarItemView *)self _searchFieldTintColor];
    [v6 setTintColor:v5];
  }
}

- (void)setShowsSearchField:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer showsSearchField]!= a3)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchField:v3];
    [(SFUnifiedTabBarItemView *)self applyTheme];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setAccessoryButtonLayout:(int64_t)a3
{
  if (self->_accessoryButtonLayout != a3)
  {
    self->_accessoryButtonLayout = a3;
    if ([(SFUnifiedTabBarItemView *)self _showsFormatMenuButtonAccessories])
    {
      v5 = objc_alloc_init(SFMoreMenuButton);
      downloadProgressView = self->_downloadProgressView;
      self->_downloadProgressView = v5;

      [(SFMoreMenuButton *)self->_downloadProgressView setProgressStyle:1];
      [(SFMoreMenuButton *)self->_downloadProgressView setDownloadProgress:self->_downloadProgress];
      [(SFMoreMenuButton *)self->_downloadProgressView setUserInteractionEnabled:0];
    }

    else
    {
      v7 = self->_downloadProgressView;
      self->_downloadProgressView = 0;
    }

    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonStyle];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setContentAlignment:(int64_t)a3
{
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer alignment]!= a3)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setAlignment:a3];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_downloadProgress = a3;
  [SFMoreMenuButton setDownloadProgress:"setDownloadProgress:animated:" animated:?];
  [(SFMoreMenuButton *)self->_downloadProgressView setDownloadProgress:v4 animated:a3];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
}

- (void)_updateExtensionButtonConfigurationShowingOverflow:(BOOL)a3 activeExtensionCount:(unint64_t)a4
{
  v5 = a3;
  v16 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  if (v5)
  {
    v7 = @"puzzlepiece.extension.fill";
  }

  else
  {
    v7 = @"puzzlepiece.extension";
  }

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  [v16 setImage:v8];
  if (v5)
  {
    v9 = MEMORY[0x1E696ADA0];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v11 = [v9 localizedStringFromNumber:v10 numberStyle:1];
    [v16 setTitle:v11];
  }

  else
  {
    [v16 setTitle:0];
  }

  v12 = [MEMORY[0x1E69DCAD8] safari_URLFieldButtonConfiguration];
  [v16 setPreferredSymbolConfigurationForImage:v12];

  [v16 setImagePadding:2.0];
  [v16 setContentInsets:{6.0, 6.0, 6.0, 6.0}];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  v14 = [v16 background];
  [v14 setBackgroundColor:v13];

  [(UIButton *)self->_multipleExtensionsButton setConfiguration:v16];
  v15 = _WBSLocalizedString();
  [(UIButton *)self->_multipleExtensionsButton setLargeContentTitle:v15];

  [(UIButton *)self->_multipleExtensionsButton setLargeContentImage:v8];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setPositionsBadgeRelativeToLayoutMargins:!v5];
}

- (void)setExtensionButtonConfiguration:(id)a3
{
  v12 = a3;
  v5 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  v6 = [v12 buttons];
  v7 = [v5 isEqualToArray:v6];

  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_extensionButtonConfiguration, a3);
    v8 = [v12 buttons];
    [(SFUnifiedTabBarItemView *)self _configureFirstExtensionButton];
    [(SFUnifiedTabBarItemView *)self _configureSecondExtensionButton];
    v9 = [v12 alwaysShowMultipleExtensionsButton];
    v10 = [v12 activeExtensionCount];
    v11 = [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
    if ((v9 & 1) != 0 || v10 > v11)
    {
      [(SFUnifiedTabBarItemView *)self _updateExtensionButtonConfigurationShowingOverflow:v10 > v11 activeExtensionCount:v10];
    }

    if ([v8 count])
    {
      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }

    else if (!(v7 & 1 | ![(SFUnifiedTabBarItemView *)self showsStopReloadButton]))
    {
      [(SFUnifiedTabBarItemView *)self _temporarilyCoalesceAccessoryButtonUpdates];
    }

    [(SFUnifiedTabBarItemView *)self _updateBadges];
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  }
}

- (void)_configureFirstExtensionButton
{
  v3 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  v9 = [v3 firstObject];

  firstExtensionButton = self->_firstExtensionButton;
  v5 = [v9 image];
  [(UIButton *)firstExtensionButton setImage:v5 forState:0];

  v6 = [v9 extension];
  v7 = [v6 displayShortName];
  if (v7)
  {
    [(UIButton *)self->_firstExtensionButton setLargeContentTitle:v7];
  }

  else
  {
    v8 = _WBSLocalizedString();
    [(UIButton *)self->_firstExtensionButton setLargeContentTitle:v8];
  }

  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setNeedsLayout];
  -[SFBadgeContainerView setShowsBadge:](self->_firstExtensionButtonContainer, "setShowsBadge:", [v9 badged]);
}

- (void)_configureSecondExtensionButton
{
  v9 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  if ([v9 count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v9 objectAtIndexedSubscript:1];
  }

  secondExtensionButton = self->_secondExtensionButton;
  v5 = [v3 image];
  [(UIButton *)secondExtensionButton setImage:v5 forState:0];

  v6 = [v3 extension];
  v7 = [v6 displayShortName];
  if (v7)
  {
    [(UIButton *)self->_secondExtensionButton setLargeContentTitle:v7];
  }

  else
  {
    v8 = _WBSLocalizedString();
    [(UIButton *)self->_secondExtensionButton setLargeContentTitle:v8];
  }

  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setNeedsLayout];
  -[SFBadgeContainerView setShowsBadge:](self->_secondExtensionButtonContainer, "setShowsBadge:", [v3 badged]);
}

- (void)setMenuButtonBadges:(unint64_t)a3
{
  if (self->_menuButtonBadges != a3)
  {
    self->_menuButtonBadges = a3;
    [(SFUnifiedTabBarItemView *)self _updateBadges];

    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  }
}

- (void)setShowsBadgeOnExtensionsButton:(BOOL)a3
{
  if (self->_showsBadgeOnExtensionsButton != a3)
  {
    self->_showsBadgeOnExtensionsButton = a3;
    [(SFUnifiedTabBarItemView *)self _updateBadges];
  }
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    self->_unread = a3;
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setShareParticipants:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [v6 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(SFAvatarStackView *)self->_participantsView setShareParticipants:self->_shareParticipants];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setShowsPinnedIndicator:(BOOL)a3
{
  if (self->_showsPinnedIndicator != a3)
  {
    self->_showsPinnedIndicator = a3;
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setHasHiddenElements:(BOOL)a3
{
  if (self->_hasHiddenElements != a3)
  {
    self->_hasHiddenElements = a3;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  }
}

- (void)setOverlayConfiguration:(id)a3
{
  v32 = a3;
  v5 = self->_overlayConfiguration;
  objc_storeStrong(&self->_overlayConfiguration, a3);
  [(SFUnifiedTabBarItemView *)self updateAccessibilityIdentifier];
  v6 = [(SFURLFieldOverlayConfiguration *)v5 identifier];
  v7 = [v32 identifier];
  v8 = WBSIsEqual();

  overlayView = self->_overlayView;
  if (v8)
  {
    [(SFURLFieldOverlayView *)overlayView setConfiguration:v32];
  }

  else
  {
    [(SFURLFieldOverlayView *)overlayView dismissAndRemove];
    if (v32)
    {
      v10 = [(SFUnifiedBarItemView *)self contentView];
      v11 = [v10 layer];

      v12 = [v11 presentationLayer];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      v15 = v14;

      v16 = [SFURLFieldOverlayView alloc];
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = [(SFURLFieldOverlayView *)v16 initWithFrame:v32 configuration:v18, v20, v22, v24];
      v26 = self->_overlayView;
      self->_overlayView = v25;

      [(SFURLFieldOverlayView *)self->_overlayView setAutoresizingMask:18];
      v27 = [(SFUnifiedBarItemView *)self barMetrics];
      [v27 itemCornerRadius];
      [(SFURLFieldOverlayView *)self->_overlayView _setContinuousCornerRadius:?];

      v28 = [(SFUnifiedBarItemView *)self contentView];
      v29 = [(SFURLFieldOverlayView *)self->_overlayView eraserView];
      [v28 addSubview:v29];

      v30 = [(SFUnifiedBarItemView *)self contentView];
      [v30 addSubview:self->_overlayView];

      [(SFURLFieldOverlayView *)self->_overlayView present];
    }

    else
    {
      v31 = self->_overlayView;
      self->_overlayView = 0;
    }
  }
}

- (void)applyTheme
{
  v3 = [(SFUnifiedBarItemView *)self platterStyle];
  v12 = [(SFUnifiedTabBarItemView *)self _controlsTintColor];
  v4 = [(SFUnifiedBarItemView *)self contentView];
  [v4 setTintColor:v12];

  [(SFMoreMenuButton *)self->_moreMenuButton setProgressTintColor:v12];
  v5 = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:v5];

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setDimsText:v3 == 1];
  v6 = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFSearchFieldIconContainerView *)self->_searchFieldIconContainer setTheme:v6];

  v7 = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
  v8 = [(SFUnifiedTabBarItemView *)self _secondaryAccessoryButtonTintColor];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton setTintColor:v7];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButtonForHover setTintColor:v7];
  if ([(UIButton *)self->_voiceSearchButton isEnabled])
  {
    [(UIButton *)self->_voiceSearchButton setTintColor:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIButton *)self->_voiceSearchButton setTintColor:v9];
  }

  [(UIButton *)self->_reloadButton setTintColor:v7];
  [(UIButton *)self->_stopButton setTintColor:v7];
  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setTintColor:v8];
  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setTintColor:v8];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setTintColor:v8];
  v10 = [(SFUnifiedTabBarItemView *)self _searchFieldTintColor];
  v11 = [(SFUnifiedTabBarItemView *)self searchField];
  [v11 setTintColor:v10];

  [(SFUnifiedTabBarItemView *)self _updateProgressViewColor];
  [(SFUnifiedTabBarItemView *)self _updateMenuButtonColor];
  [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonStyle];
}

- (void)setPlatterStyle:(int64_t)a3
{
  if ([(SFUnifiedBarItemView *)self platterStyle]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v5 setPlatterStyle:a3];
    [(SFUnifiedTabBarItemView *)self applyTheme];
  }
}

- (id)_titleTheme
{
  v3 = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  v4 = [(SFUnifiedBarItemView *)self barTheme];
  v5 = v4;
  if (v3)
  {
    [v4 activeTabTitleTheme];
  }

  else
  {
    [v4 tabTitleTheme];
  }
  v6 = ;

  return v6;
}

- (id)_accessoryButtonTintColor
{
  v4 = [(SFUnifiedTabBarItemView *)self accessoryButtonLayout];
  if ((v4 - 1) < 2)
  {
    v5 = [(SFUnifiedBarItemView *)self barTheme];
    v6 = [v5 inputFieldAccessoryButtonTintColor];
LABEL_3:
    v2 = v6;

    goto LABEL_8;
  }

  if (!v4)
  {
    v7 = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
    v8 = [(SFUnifiedBarItemView *)self barTheme];
    v5 = v8;
    if (v7)
    {
      [v8 activeTabAccessoryButtonTintColor];
    }

    else
    {
      [v8 tabAccessoryButtonTintColor];
    }
    v6 = ;
    goto LABEL_3;
  }

LABEL_8:

  return v2;
}

- (id)_secondaryAccessoryButtonTintColor
{
  v4 = [(SFUnifiedBarItemView *)self platterStyle];
  if (v4 != 5 || !(v5 = -[SFUnifiedTabBarItemView showsSearchField](self, "showsSearchField")) && (-[SFUnifiedTabBarItemView titleWhenActive](self, "titleWhenActive"), v2 = objc_claimAutoreleasedReturnValue(), [v2 length]))
  {
    v6 = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    if (v4 != 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(SFUnifiedBarItemView *)self barTheme];
  v6 = [v8 inputFieldSecondaryAccessoryButtonTintColor];

  if (!v5)
  {
LABEL_5:
  }

LABEL_6:

  return v6;
}

- (id)_controlsTintColor
{
  v3 = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  v4 = [(SFUnifiedBarItemView *)self barTheme];
  v5 = v4;
  if (v3)
  {
    [v4 activeTabControlsTintColor];
  }

  else
  {
    [v4 tabControlsTintColor];
  }
  v6 = ;

  return v6;
}

- (id)_progressBarTintColor
{
  v3 = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  v4 = [(SFUnifiedBarItemView *)self barTheme];
  v5 = v4;
  if (v3)
  {
    [v4 activeTabProgressBarTintColor];
  }

  else
  {
    [v4 tabProgressBarTintColor];
  }
  v6 = ;

  return v6;
}

- (id)_searchFieldTintColor
{
  if ([(SFUnifiedBarItemView *)self platterStyle]== 2)
  {
    v3 = [(SFUnifiedBarItemView *)self barTheme];
    v4 = [v3 activeTabFieldTintColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldUseActiveTheme
{
  v3 = [(SFUnifiedBarItemView *)self platterStyle];
  result = 1;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x2DD3) != 0)
    {
      return 0;
    }

    else if (((1 << v3) & 0x102C) != 0)
    {
      v5 = [(SFUnifiedBarItemView *)self barTheme];
      v6 = [v5 isPrivate];

      return v6;
    }
  }

  return result;
}

- (void)setSquishedTitleContainer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_squishedTitleContainer, obj);
    [WeakRetained dismissAvailabilityLabelAnimated:0];
    if (obj)
    {
      [obj setShowsSearchIcon:{-[SFUnifiedTabBarItemTitleContainerView showsSearchIcon](self->_titleContainer, "showsSearchIcon")}];
      [obj setSecurityAnnotation:{-[SFUnifiedTabBarItemTitleContainerView securityAnnotation](self->_titleContainer, "securityAnnotation")}];
      [obj setHasFocusedSensitiveInputField:{-[SFUnifiedTabBarItemTitleContainerView hasFocusedSensitiveInputField](self->_titleContainer, "hasFocusedSensitiveInputField")}];
      v5 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer title];
      [obj setTitle:v5];
    }
  }
}

- (void)setShowsSquishedAccessoryViews:(BOOL)a3
{
  if (self->_showsSquishedAccessoryViews != a3)
  {
    self->_showsSquishedAccessoryViews = a3;
    [(SFUnifiedTabBarItemView *)self _updateProgressViewColor];
    [(SFUnifiedTabBarItemView *)self _updateShowsProgressView];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (CGRect)squishedGlassFrame
{
  if (([(SFUnifiedTabBarItemView *)self isSelected]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained squishedGlassFrameForTabBarItemView:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_closeButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewCloseButtonTapped:self];
  }
}

- (void)_menuButtonTapped
{
  v3 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem action];
  if (v3 && (v4 = v3, v5 = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton], v4, v5))
  {
    currentAvailabilityItem = self->_currentAvailabilityItem;

    [(SFUnifiedTabBarAvailabilityItem *)currentAvailabilityItem performAction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemViewMenuButtonTapped:self];
    }
  }
}

- (void)_menuButtonReceivedTouchDown
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewMenuButtonReceivedTouchDown:self];
  }
}

- (void)_menuButtonClicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewMenuButtonClicked:self];
  }
}

- (void)_reloadButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewReloadButtonTapped:self];
  }
}

- (void)_stopButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewStopButtonTapped:self];
  }
}

- (void)_voiceSearchButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewVoiceSearchButtonTapped:self];
  }
}

- (void)_readerButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewReaderButtonTapped:self];
  }
}

- (void)_translationButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewTranslationButtonTapped:self];
  }
}

- (void)_mediaStateMuteButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemViewMediaStateMuteButtonTapped:self];
  }
}

- (void)_extensionButtonTapped:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_multipleExtensionsButton == v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemView:self multipleExtensionButtonTapped:v8];
    }
  }

  else
  {
    v5 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
    v6 = [v5 objectAtIndexedSubscript:self->_firstExtensionButton != v8];
    v7 = [v6 extension];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemView:self extensionButtonTapped:v8 extension:v7];
    }
  }
}

- (void)_updateProgressViewColor
{
  v3 = [(SFUnifiedBarItemView *)self barTheme];
  v8 = v3;
  if (self->_showsSquishedAccessoryViews)
  {
    [v3 progressBarTintColor];
  }

  else
  {
    [(SFUnifiedTabBarItemView *)self _progressBarTintColor];
  }
  v4 = ;
  [(_SFFluidProgressView *)self->_progressView setProgressBarFillColor:v4];

  if (self->_showsSquishedAccessoryViews || !_SFIsPrivateTintStyle([v8 tintStyle]))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979920]];
    v6 = 1;
  }

  v7 = [(_SFFluidProgressView *)self->_progressView layer];
  [v7 setCompositingFilter:v5];

  if (v6)
  {
  }
}

- (void)_updateMenuButtonColor
{
  if ([(SFUnifiedTabBarItemView *)self menuButtonSelected])
  {
    v3 = [(SFUnifiedBarItemView *)self barTheme];
    v4 = [v3 selectedMenuButtonTintColor];
    [(SFMoreMenuButton *)self->_moreMenuButton setTintColor:v4];

    v5 = [(SFUnifiedTabBarItemView *)self _titleTheme];
    v9 = [v5 primaryTextColor];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v6 = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];

      v9 = v6;
    }

    if ([(SFUnifiedBarItemView *)self platterStyle]!= 5)
    {
      v7 = [v9 colorWithAlphaComponent:0.85];

      v8 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    [(SFMoreMenuButton *)self->_moreMenuButton setTintColor:v9];
  }

  v8 = v9;
LABEL_8:
  v10 = v8;
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setGlyphTintColor:v8];
}

- (void)_updateMediaStateMuteButton
{
  v3 = [(SFUnifiedTabBarItemView *)self _mediaStateIconToDisplay];
  v4 = [(UIButton *)self->_mediaStateMuteButton configuration];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = MEMORY[0x1E69DCFD8];
    v6 = [MEMORY[0x1E6982240] transition];
    v7 = [v5 transitionWithContentTransition:v6];
    [v4 setSymbolContentTransition:v7];
  }

  v8 = _SFImageForMediaStateIcon(v3);
  v9 = [v8 imageWithRenderingMode:2];
  [v4 setImage:v9];

  [(UIButton *)self->_mediaStateMuteButton setConfiguration:v4];
  if (!self->_active)
  {
    v11 = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    goto LABEL_9;
  }

  v10 = [(SFUnifiedTabBarItemView *)self _titleTheme];
  v11 = [v10 overrideTintColor];

  if (v11)
  {
LABEL_9:
    [(UIButton *)self->_mediaStateMuteButton setTintColor:v11];
    goto LABEL_10;
  }

  if (SFMediaStateIconIsCaptureDevice(v3))
  {
    v12 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else if (v3 == 6)
  {
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (v3 == 5)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    }
    v12 = ;
  }

  v16 = v12;
  [(UIButton *)self->_mediaStateMuteButton setTintColor:v12];

LABEL_10:
  if (self->_active)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(SFUnifiedTabBarItemView *)self isSelected];
    if (v3 == 4)
    {
      v13 = v14;
    }

    else
    {
      v13 = 1;
    }
  }

  mediaStateMuteButton = self->_mediaStateMuteButton;

  [(UIButton *)mediaStateMuteButton setUserInteractionEnabled:v13];
}

- (void)_updateFormatMenuButtonImage
{
  v3 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
  if (v3)
  {
    v4 = v3;
    v5 = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton];

    if (v5)
    {
      v16 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
      if ([(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem buttonType]!= 10)
      {
LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }

      formatMenuButton = self->_formatMenuButton;
      v7 = @"ReaderButton";
LABEL_7:
      [(SFNavigationBarToggleButton *)formatMenuButton setAccessibilityIdentifier:v7];
      goto LABEL_13;
    }
  }

  if (self->_showsSiriReaderPlayingIcon)
  {
    v16 = +[SFNavigationBarToggleButton siriReaderPlayingImage];
    formatMenuButton = self->_formatMenuButton;
    v7 = @"SiriReaderButton";
    goto LABEL_7;
  }

  if (self->_showsReaderIcon)
  {
    v8 = [SFNavigationBarToggleButton readerImageWithSummary:[(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController cumulativeOptions]& 1];
LABEL_12:
    v16 = v8;
    goto LABEL_13;
  }

  if (self->_showsTranslationIcon)
  {
    v8 = +[SFNavigationBarToggleButton translationImage];
    goto LABEL_12;
  }

  v16 = [SFNavigationBarToggleButton pageMenuImageWithIntelligence:([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController cumulativeOptions]& 0x1F) != 0];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessibilityIdentifier:@"PageFormatMenuButton"];
  v9 = 1;
LABEL_14:
  v10 = [(SFNavigationBarToggleButton *)self->_formatMenuButton accessoryItems];
  v11 = [v10 count];
  v12 = [(SFNavigationBarToggleButton *)self->_formatMenuButton accessoryView];
  if (v12)
  {
    ++v11;
  }

  if ((v11 | 2) != 2)
  {
    v13 = +[SFNavigationBarToggleButton formatMenuBottomOnlyImage];

    v16 = v13;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setImage:v16];
  v14 = self->_formatMenuButton;
  if (v9)
  {
    v15 = [(SFNavigationBarToggleButton *)v14 image];
    [(SFNavigationBarToggleButton *)self->_formatMenuButton setLargeContentImage:v15];
  }

  else
  {
    [(UIView *)v14 sf_configureLargeContentViewerForBarItem:13];
  }
}

- (void)_updateFormatMenuButtonAccessories
{
  v3 = [(SFUnifiedTabBarItemView *)self _showsFormatMenuButtonAccessories];
  v4 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
  v14 = [MEMORY[0x1E695DF70] array];
  if (self->_mediaStateIcon)
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [v14 addObject:&unk_1EFF73E38];
    formatMenuButton = self->_formatMenuButton;
    v7 = [(SFUnifiedTabBarItemView *)self _titleTheme];
    v8 = [v7 overrideTintColor];
    [(SFNavigationBarToggleButton *)formatMenuButton setOverrideColor:v8 forAccessory:3];

    [(SFNavigationBarToggleButton *)self->_formatMenuButton setMediaStateIcon:self->_mediaStateIcon];
  }

  if (v4 != 0 && v3)
  {
    [v14 addObject:&unk_1EFF73E50];
    v9 = self->_formatMenuButton;
    v10 = [(SFUnifiedBarItemView *)self barTheme];
    v11 = [v10 inputFieldSecondaryAccessoryButtonTintColor];
    [(SFNavigationBarToggleButton *)v9 setOverrideColor:v11 forAccessory:2];
  }

  if (self->_hasHiddenElements)
  {
    [v14 addObject:&unk_1EFF73E68];
  }

  [(SFMoreMenuButton *)self->_downloadProgressView downloadProgress];
  if (v12 == -2.0)
  {
    if (self->_menuButtonBadges & v3)
    {
      goto LABEL_12;
    }
  }

  else if (v3)
  {
LABEL_12:
    downloadProgressView = self->_downloadProgressView;
    goto LABEL_15;
  }

  downloadProgressView = 0;
LABEL_15:
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessoryView:downloadProgressView];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessoryItems:v14];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)_updateFormatMenuButtonStyle
{
  accessoryButtonLayout = self->_accessoryButtonLayout;
  v4 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if ((accessoryButtonLayout - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setCornerRoundingMode:v5 ^ 1u];
  v6 = 2.0;
  if ((self->_accessoryButtonLayout - 1) <= 1)
  {
    v6 = _SFOnePixel();
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setInsetFromBackground:v6];
  v7 = [(SFUnifiedBarItemView *)self barTheme];
  v8 = [v7 tintStyle];
  v9 = [v7 themeColor];
  if (_SFIsPrivateTintStyle(v8))
  {
    if (v9)
    {
      v10 = [v9 safari_meetsThresholdForDarkAppearance];
    }

    else
    {
      v10 = _SFIsDarkTintStyle(v8);
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v5 | v11;

  formatMenuButton = self->_formatMenuButton;

  [(SFNavigationBarToggleButton *)formatMenuButton setUsesInsetFromBackground:v12 & 1];
}

- (void)_updateBadges
{
  [(SFBadgeContainerView *)self->_moreMenuButtonContainer setShowsBadge:(self->_menuButtonBadges & 3) != 0];
  menuButtonBadges = self->_menuButtonBadges;
  if ([(SFUnifiedTabBarItemView *)self _showsFormatMenuButtonAccessories])
  {
    [(SFMoreMenuButton *)self->_downloadProgressView downloadProgress];
    v5 = v4;
    if ([(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount]&& self->_mediaStateIcon)
    {
      menuButtonBadges |= v5 != -2.0;
    }

    else
    {
      menuButtonBadges &= ~1uLL;
    }
  }

  accessoryButtonLayout = self->_accessoryButtonLayout;
  if (accessoryButtonLayout == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (accessoryButtonLayout != 1);
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setShowsBadge:(v7 & menuButtonBadges) != 0];
  v8 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  v9 = [v8 safari_containsObjectPassingTest:&__block_literal_global_14];

  if (v9)
  {
    v10 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
    v11 = v10 > [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
  }

  else
  {
    v11 = 0;
  }

  multipleExtensionsButtonContainer = self->_multipleExtensionsButtonContainer;
  v13 = self->_showsBadgeOnExtensionsButton || v11;

  [(SFBadgeContainerView *)multipleExtensionsButtonContainer setShowsBadge:v13];
}

- (void)_searchFieldDidChange:(id)a3
{
  if ([(SFUnifiedTabBarItemView *)self _canUpdateLayoutDirectionImmediately])
  {
    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
  }

  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)_voiceSearchAvailabilityDidChange:(id)a3
{
  v4 = +[SFVoiceSearchManager sharedManager];
  -[UIButton setEnabled:](self->_voiceSearchButton, "setEnabled:", [v4 availability] == 1);

  [(SFUnifiedTabBarItemView *)self applyTheme];
}

- (void)updateAccessibilityIdentifier
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(SFUnifiedBarItemView *)self item];
  if ((self->_accessoryButtonLayout - 1) >= 2)
  {
    v4 = @"TabBarTab";
  }

  else
  {
    v4 = @"SearchFieldItemView";
  }

  v15[0] = @"UUID";
  v5 = v4;
  v6 = [v3 UUID];
  v7 = [v6 UUIDString];
  v8 = v7;
  v9 = &stru_1EFF36230;
  if (v7)
  {
    v9 = v7;
  }

  v16[0] = v9;
  v15[1] = @"isActive";
  if ([(SFUnifiedTabBarItemView *)self isSelected])
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  v16[1] = v10;
  v15[2] = @"isPinned";
  if ([v3 isPinned])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  v15[3] = @"isDistractionControlOverlayUp";
  if (self->_overlayConfiguration)
  {
    v12 = @"true";
  }

  else
  {
    v12 = @"false";
  }

  v16[2] = v11;
  v16[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v14 = WBSMakeAccessibilityIdentifier();

  [(SFUnifiedTabBarItemView *)self setAccessibilityIdentifier:v14];
}

- (void)_setNeedsAnimatedAccessoryButtonUpdate
{
  if (![(SFUnifiedTabBarItemView *)self _coalescingAccessoryButtonUpdates])
  {
    if (self->_needsAnimatedAccessoryButtonUpdate)
    {
      v3 = 1;
    }

    else
    {
      v3 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
    }

    self->_needsAnimatedAccessoryButtonUpdate = v3;

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)_updateAccessoryButtons
{
  if (self->_needsAnimatedAccessoryButtonUpdate)
  {
    v3 = 1;
  }

  else
  {
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v3 = v4 > 0.0;
  }

  [(SFUnifiedTabBarItemView *)self _updateAccessoryButtonsAnimated:v3 completion:0];
}

- (void)_updateAccessoryButtonsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SFUnifiedTabBarItemView *)self _coalescingAccessoryButtonUpdates])
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v7 = [SFUnifiedTabBarItemAccessoryButtonArrangement alloc];
    accessoryButtonLayout = self->_accessoryButtonLayout;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke;
    v64[3] = &unk_1E721C728;
    v64[4] = self;
    v9 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)v7 initUsingButtonLayout:accessoryButtonLayout filteringButtonsUsingBlock:v64];
    if (self->_trailingButtonsHidden)
    {
      v10 = [SFUnifiedTabBarItemAccessoryButtonArrangement alloc];
      v11 = [v9 leadingButtonTypes];
      v12 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
      v13 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)v10 initWithLeadingButtonTypes:v11 trailingButtonTypes:v12];

      v9 = v13;
    }

    if ([v9 isEqualToArrangement:self->_accessoryButtonArrangement])
    {
      v14 = MEMORY[0x1E69DD250];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_2;
      v63[3] = &unk_1E721B360;
      v63[4] = self;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_3;
      v61[3] = &unk_1E721BA70;
      v62 = v6;
      [v14 sf_animate:v4 usingDefaultTimingWithOptions:2 animations:v63 completion:v61];
      v15 = v62;
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_4;
      aBlock[3] = &unk_1E721B360;
      aBlock[4] = self;
      v15 = _Block_copy(aBlock);
      v16 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement leadingButtonTypes];
      v17 = [v9 leadingButtonTypes];
      v18 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
      v19 = [v9 trailingButtonTypes];
      v39 = v9;
      objc_storeStrong(&self->_accessoryButtonArrangement, v9);
      v41 = v16;
      v20 = [v17 differenceFromArray:v16 withOptions:4];
      v21 = [v20 safari_insertionIndexes];
      v42 = [v20 safari_removalIndexes];
      v44 = v18;
      v22 = [v19 differenceFromArray:v18 withOptions:4];
      v23 = [v22 safari_insertionIndexes];
      v43 = [v22 safari_removalIndexes];
      v40 = v23;
      if (v4)
      {
        v34 = v22;
        v35 = v20;
        v24 = MEMORY[0x1E69DD250];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_5;
        v54[3] = &unk_1E721C750;
        v54[4] = self;
        v25 = v21;
        v55 = v25;
        v38 = v17;
        v26 = v17;
        v56 = v26;
        v27 = v23;
        v57 = v27;
        v36 = v19;
        v28 = v19;
        v58 = v28;
        v37 = v15;
        v59 = v15;
        [v24 performWithoutAnimation:v54];
        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          v29 = 2;
        }

        else
        {
          v29 = 98;
        }

        v30 = MEMORY[0x1E69DD250];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_6;
        v45[3] = &unk_1E721C778;
        v45[4] = self;
        v46 = v42;
        v31 = v41;
        v47 = v41;
        v48 = v43;
        v49 = v44;
        v50 = v25;
        v51 = v26;
        v52 = v27;
        v53 = v28;
        [v30 sf_animate:1 usingDefaultMotionWithOptions:v29 animations:v45 completion:0];
        if (v6)
        {
          v32 = dispatch_time(0, 200000000);
          dispatch_after(v32, MEMORY[0x1E69E96A0], v6);
        }

        v15 = v37;
        v17 = v38;
        v20 = v35;
        v19 = v36;
        v22 = v34;
        v33 = v42;
        v9 = v39;
      }

      else
      {
        v33 = v42;
        [(SFUnifiedTabBarItemView *)self _setIndexes:v42 ofAccessoryButtonTypes:v41 visible:0 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:v43 ofAccessoryButtonTypes:v44 visible:0 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:v21 ofAccessoryButtonTypes:v17 visible:1 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:v23 ofAccessoryButtonTypes:v19 visible:!self->_trailingButtonsHidden animated:0];
        v15[2](v15);
        [(SFUnifiedTabBarItemView *)self _layOutAccessoryButtons];
        v9 = v39;
        v31 = v41;
        if (v6)
        {
          v6[2](v6);
        }
      }
    }
  }
}

uint64_t __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateBadges];
  v2 = [*(*(a1 + 32) + 1432) activeExtensionCount];
  v3 = v2 > [*(a1 + 32) _individualExtensionButtonLimit];
  v4 = *(a1 + 32);
  v5 = [v4[179] activeExtensionCount];

  return [v4 _updateExtensionButtonConfigurationShowingOverflow:v3 activeExtensionCount:v5];
}

uint64_t __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _setIndexes:*(a1 + 40) ofAccessoryButtonTypes:*(a1 + 48) visible:0 animated:0];
  [*(a1 + 32) _setIndexes:*(a1 + 56) ofAccessoryButtonTypes:*(a1 + 64) visible:0 animated:0];
  (*(*(a1 + 72) + 16))();
  [*(a1 + 32) _layOutIndexes:*(a1 + 40) ofAccessoryButtonTypes:*(a1 + 48) alongEdge:0 usingPresentationSize:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);

  return [v2 _layOutIndexes:v3 ofAccessoryButtonTypes:v4 alongEdge:1 usingPresentationSize:1];
}

uint64_t __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _setIndexes:*(a1 + 40) ofAccessoryButtonTypes:*(a1 + 48) visible:0 animated:1];
  [*(a1 + 32) _layOutIndexes:*(a1 + 40) ofAccessoryButtonTypes:*(a1 + 48) alongEdge:0 usingPresentationSize:0];
  [*(a1 + 32) _setIndexes:*(a1 + 56) ofAccessoryButtonTypes:*(a1 + 64) visible:0 animated:1];
  [*(a1 + 32) _layOutIndexes:*(a1 + 56) ofAccessoryButtonTypes:*(a1 + 64) alongEdge:1 usingPresentationSize:0];
  [*(a1 + 32) _setIndexes:*(a1 + 72) ofAccessoryButtonTypes:*(a1 + 80) visible:1 animated:1];
  [*(a1 + 32) _setIndexes:*(a1 + 88) ofAccessoryButtonTypes:*(a1 + 96) visible:(*(*(a1 + 32) + 1224) & 1) == 0 animated:1];
  v2 = *(a1 + 32);

  return [v2 _layOutAccessoryButtons];
}

- (void)_layOutAccessoryButtons
{
  v3 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement leadingButtonTypes];
  [(SFUnifiedTabBarItemView *)self _layOutIndexes:0 ofAccessoryButtonTypes:v3 alongEdge:0 usingPresentationSize:0];
  self->_leadingButtonsWidth = v4;

  v6 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
  [(SFUnifiedTabBarItemView *)self _layOutIndexes:0 ofAccessoryButtonTypes:v6 alongEdge:1 usingPresentationSize:0];
  self->_trailingButtonsWidth = v5;
}

- (double)_layOutIndexes:(id)a3 ofAccessoryButtonTypes:(id)a4 alongEdge:(int64_t)a5 usingPresentationSize:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  if ([v11 count])
  {
    v12 = [(SFUnifiedBarItemView *)self contentView];
    v13 = [v12 layer];

    if (v6)
    {
      v14 = [v13 presentationLayer];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v13;
      }

      v17 = v16;

      v13 = v17;
    }

    [v13 bounds];
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    v41 = CGRectGetHeight(v59);
    v22 = [(UIView *)self _sf_usesLeftToRightLayout];
    if (a5 == 1)
    {
      [v11 lastObject];
    }

    else
    {
      [v11 firstObject];
    }
    v24 = ;
    v25 = [v24 integerValue];

    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v58[3] = v25;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:v25];
    v57 = v26;
    [(SFUnifiedTabBarItemView *)self squishedGlassFrame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v60.origin.x = v28;
      v60.origin.y = v30;
      v60.size.width = v32;
      v60.size.height = v34;
      if (!CGRectIsNull(v60))
      {
        if (v22 == a5)
        {
          [(SFUnifiedTabBarItemView *)self bounds];
          MaxX = CGRectGetMaxX(v61);
          v62.origin.x = v28;
          v62.origin.y = v30;
          v62.size.width = v32;
          v62.size.height = v34;
          v35 = MaxX - CGRectGetMaxX(v62);
        }

        else
        {
          v63.origin.x = v28;
          v63.origin.y = v30;
          v63.size.width = v32;
          v63.size.height = v34;
          MinX = CGRectGetMinX(v63);
          [(SFUnifiedTabBarItemView *)self bounds];
          v35 = MinX - CGRectGetMinX(v64);
        }

        [(SFUnifiedBarItemView *)self squishTransformFactor];
        v38 = _SFInterpolate(v35, 0.0, v37);
        v55[3] = v38 + v55[3];
      }
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __97__SFUnifiedTabBarItemView__layOutIndexes_ofAccessoryButtonTypes_alongEdge_usingPresentationSize___block_invoke;
    v42[3] = &unk_1E721C7A0;
    v46 = v41;
    v47 = v25;
    v42[4] = self;
    v44 = &v54;
    v45 = v58;
    v48 = x;
    v49 = y;
    v50 = width;
    v51 = height;
    v52 = a5;
    v43 = v10;
    v53 = v22 == a5;
    [v11 enumerateObjectsWithOptions:2 * (a5 == 1) usingBlock:v42];
    v23 = v55[3];

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(v58, 8);
  }

  else
  {
    v23 = 0.0;
  }

  return v23;
}

void __97__SFUnifiedTabBarItemView__layOutIndexes_ofAccessoryButtonTypes_alongEdge_usingPresentationSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  v23 = [*(a1 + 32) _viewForAccessoryButtonOfType:v5];
  [*(a1 + 32) _widthForAccessoryButtonOfType:v5];
  v7 = v6;
  [*(a1 + 32) _heightForAccessoryButtonOfType:v5 withWidth:? defaultHeight:?];
  if (v5 != *(a1 + 72))
  {
    [*(a1 + 32) _spacingBetweenAccessoryButtonOfType:*(*(*(a1 + 56) + 8) + 24) andButtonOfType:v5];
    *(*(*(a1 + 48) + 8) + 24) = v8 + *(*(*(a1 + 48) + 8) + 24);
  }

  v9 = *(*(*(a1 + 48) + 8) + 24);
  CGRectGetHeight(*(a1 + 80));
  v10 = _SFRoundRectToPixels(v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(*(a1 + 48) + 8);
  v18 = v7 + *(v17 + 24);
  *(v17 + 24) = v18;
  *(*(*(a1 + 56) + 8) + 24) = v5;
  v19 = *(a1 + 32);
  if (*(a1 + 112) != 1 || (v18 = 0.0, (*(v19 + 1224) & 1) == 0))
  {
    v20 = [*(v19 + 1192) containsButtonType:{v5, v18}];
    v18 = 0.0;
    if (v20)
    {
      [*(a1 + 32) accessoryButtonAlpha];
    }
  }

  [v23 setAlpha:v18];
  v21 = *(a1 + 40);
  if (!v21 || [v21 containsIndex:a3])
  {
    v22 = _SFFlipRectInCoordinateSpace(*(a1 + 120), v10, v12, v14, v16, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
    [v23 ss_setUntransformedFrame:_SFRoundRectToPixels(v22)];
    [v23 layoutIfNeeded];
  }
}

- (void)_setIndexes:(id)a3 ofAccessoryButtonTypes:(id)a4 visible:(BOOL)a5 animated:(BOOL)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke;
  v6[3] = &unk_1E721C7F0;
  v6[4] = self;
  v7 = a5;
  v8 = a6;
  [a4 enumerateObjectsAtIndexes:a3 options:0 usingBlock:v6];
}

void __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _viewForAccessoryButtonOfType:{objc_msgSend(v3, "integerValue")}];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 41);
    v7 = 1.0;
  }

  else
  {
    [*(a1 + 32) _scaleForTransitioningAccessoryButtonOfType:{objc_msgSend(v3, "integerValue")}];
    v7 = v8;
    v6 = *(a1 + 41);
    v9 = 0.0;
    if ((*(a1 + 40) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [v4 setHidden:0];
  if (*(a1 + 40))
  {
    v9 = 0.1;
  }

  else
  {
    v9 = 0.0;
  }

LABEL_7:
  v10 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke_2;
  v17[3] = &unk_1E721C7C8;
  v11 = v4;
  v12 = *(a1 + 32);
  v18 = v11;
  v19 = v12;
  v20 = v5;
  v21 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke_3;
  v14[3] = &unk_1E721BF80;
  v16 = *(a1 + 40);
  v15 = v11;
  v13 = v11;
  [v10 sf_animate:v6 & 1 withDuration:50331746 delay:v17 options:v14 animations:0.2 completion:v9];
}

uint64_t __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 40) accessoryButtonAlpha];
  [*(a1 + 32) setAlpha:v2 * v3];
  CGAffineTransformMakeScale(&v7, *(a1 + 56), *(a1 + 56));
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

uint64_t __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) alpha];
    if (v2 == 0.0)
    {
      v3 = *(v1 + 32);

      return [v3 setHidden:1];
    }
  }

  return result;
}

- (double)accessoryButtonAlpha
{
  if (![MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 1.0;
  }

  [(SFUnifiedBarItemView *)self squishTransformFactor];

  return _SFClampPercent(v3, 0.85, 1.0);
}

- (void)_setTrailingButtonsHidden:(BOOL)a3
{
  if (self->_trailingButtonsHidden != a3)
  {
    v4 = a3;
    self->_trailingButtonsHidden = a3;
    v7 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
    [(SFUnifiedTabBarItemView *)self _setIndexes:v6 ofAccessoryButtonTypes:v7 visible:!v4 animated:1];
  }
}

- (BOOL)_showsAccessoryButtonOfType:(int64_t)a3
{
  v5 = [(SFUnifiedTabBarItemView *)self showsSearchField];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __55__SFUnifiedTabBarItemView__showsAccessoryButtonOfType___block_invoke;
  v37[3] = &unk_1E721C818;
  v37[4] = self;
  v38 = v5;
  v6 = _Block_copy(v37);
  v7 = v6;
  switch(a3)
  {
    case 0:
      v25 = 1361;
      goto LABEL_26;
    case 1:
      v26 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration webExtensionsController];
      v27 = [v26 extensions];
      v28 = [v27 count];

      showsPinnedIndicator = self->_active && !v5;
      if (self->_active && !v5 && !v28)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    case 2:
      if (v5 || !self->_active)
      {
        goto LABEL_48;
      }

LABEL_29:
      v29 = [(SFUnifiedTabBarItemView *)self titleWhenActive];
      showsPinnedIndicator = [v29 length] != 0;

      goto LABEL_49;
    case 3:
      if ([(SFUnifiedTabBarItemView *)self _mediaStateIconToDisplay]== 0 || v5)
      {
        goto LABEL_48;
      }

      v18 = [(SFUnifiedBarItemView *)self contentView];
      [v18 bounds];
      Width = CGRectGetWidth(v39);
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer minimumWidthToShowTitle];
      v21 = v20;
      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:3];
      showsPinnedIndicator = Width >= v21 + v22;
      goto LABEL_56;
    case 4:
      v10 = (*(v6 + 2))(v6);
      goto LABEL_9;
    case 5:
      if (!self->_active || ((*(v6 + 2))(v6) & 1) != 0 || ![(SFUnifiedTabBarItemView *)self showsStopReloadButton])
      {
        goto LABEL_48;
      }

      showsPinnedIndicator = !self->_stopReloadButtonShowsStop && !v5;
      goto LABEL_49;
    case 6:
      if (!self->_active || ((*(v6 + 2))(v6) & 1) != 0 || ![(SFUnifiedTabBarItemView *)self showsStopReloadButton])
      {
        goto LABEL_48;
      }

      v25 = 1359;
LABEL_26:
      showsPinnedIndicator = *(&self->super.super.super.super.super.super.isa + v25) & !v5;
      goto LABEL_49;
    case 7:
      v23 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
      showsPinnedIndicator = 0;
      if (v5 || !self->_active)
      {
        goto LABEL_49;
      }

      v24 = v23;
      if (!v23)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    case 8:
      v30 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
      showsPinnedIndicator = 0;
      if (!v5 && self->_active)
      {
        v24 = v30;
        if (v30 >= 2)
        {
LABEL_46:
          showsPinnedIndicator = v24 <= [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
        }
      }

      goto LABEL_49;
    case 9:
      if (v5 || !self->_active)
      {
        goto LABEL_48;
      }

      if ([(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration alwaysShowMultipleExtensionsButton])
      {
        showsPinnedIndicator = 1;
      }

      else
      {
        v35 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
        showsPinnedIndicator = v35 > [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
      }

      goto LABEL_49;
    case 10:
    case 11:
      v8 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem buttonType];
      if (!self->_active)
      {
        goto LABEL_48;
      }

      showsPinnedIndicator = (v8 == a3) & ~v5;
      goto LABEL_49;
    case 12:
      if (v5 || !self->_unread)
      {
        goto LABEL_48;
      }

      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer minimumWidthToShowTitle];
      v12 = v11;
      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:12];
      v14 = v12 + v13;
      if (self->_mediaStateIcon)
      {
        [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:3];
        v14 = v14 + v15;
      }

      if (![(NSArray *)self->_shareParticipants count])
      {
        goto LABEL_53;
      }

      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:13];
      v14 = v14 + v16;
      [(SFUnifiedTabBarItemView *)self _spacingBetweenAccessoryButtonOfType:13 andButtonOfType:12];
      break;
    case 13:
      if ([(NSArray *)self->_shareParticipants count]== 0 || v5)
      {
        goto LABEL_48;
      }

      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer minimumWidthToShowTitle];
      v33 = v32;
      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:13];
      v14 = v33 + v34;
      if (![(SFUnifiedTabBarItemView *)self _mediaStateIconToDisplay])
      {
        goto LABEL_53;
      }

      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:3];
      break;
    case 14:
      if (self->_active)
      {
        goto LABEL_48;
      }

      showsPinnedIndicator = self->_showsPinnedIndicator;
      goto LABEL_49;
    case 15:
      if (v5 || !self->_active)
      {
        goto LABEL_48;
      }

      v18 = [(SFUnifiedTabBarItemView *)self titleWhenActive];
      if ([v18 length])
      {
        if ([(SFUnifiedBarItemView *)self isHovering]|| [(SFOneStepBookmarkingButton *)self->_oneStepBookmarkingButton isShowingContextMenu]|| UIAccessibilityIsVoiceOverRunning())
        {
          showsPinnedIndicator = 1;
        }

        else
        {
          v36 = [MEMORY[0x1E695E000] safari_browserDefaults];
          showsPinnedIndicator = [v36 BOOLForKey:@"DebugAlwaysShowAddToReadingListAddressBarButton"];
        }
      }

      else
      {
        showsPinnedIndicator = 0;
      }

LABEL_56:

      goto LABEL_49;
    case 16:
      if (!self->_active || !v5)
      {
        goto LABEL_48;
      }

      v10 = [MEMORY[0x1E69C8880] isSolariumEnabled];
LABEL_9:
      showsPinnedIndicator = v10;
      goto LABEL_49;
    default:
LABEL_48:
      showsPinnedIndicator = 0;
      goto LABEL_49;
  }

  v14 = v14 + v17;
LABEL_53:
  [(SFUnifiedTabBarItemView *)self bounds];
  showsPinnedIndicator = CGRectGetWidth(v40) >= v14;
LABEL_49:

  return showsPinnedIndicator & 1;
}

uint64_t __55__SFUnifiedTabBarItemView__showsAccessoryButtonOfType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1354] == 1 && v2[1360] == 1)
  {
    if ([v2 showsSearchIcon])
    {
      v3 = 1;
    }

    else
    {
      v5 = [*(a1 + 32) titleWhenActive];
      if ([v5 length])
      {
        v3 = *(a1 + 40);
      }

      else
      {
        v3 = 1;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_viewForAccessoryButtonOfType:(int64_t)a3
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SFUnifiedTabBarItemView__viewForAccessoryButtonOfType___block_invoke;
  v10[3] = &unk_1E721C840;
  v10[4] = self;
  v10[5] = a3;
  v5 = _Block_copy(v10);
  v6 = v5[2]();
  if (!v6)
  {
    [(SFUnifiedTabBarItemView *)self _makeViewForAccessoryButtonOfType:a3];
    [(SFUnifiedTabBarItemView *)self applyTheme];
    v6 = (v5[2])(v5);
    [v6 setHidden:1];
    v7 = SFAccessibilityIdentifierForUnifiedTabBarItemAccessoryButtonType(a3);
    [v6 setAccessibilityIdentifier:v7];
  }

  v8 = v6;

  return v8;
}

id __57__SFUnifiedTabBarItemView__viewForAccessoryButtonOfType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 <= 0x10 && ((0x1F3FFu >> v2) & 1) != 0)
  {
    v3 = *(*(a1 + 32) + *off_1E721C8D8[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_makeViewForAccessoryButtonOfType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      [(SFUnifiedTabBarItemView *)self makeCloseButton];
      break;
    case 1:
      [(SFUnifiedTabBarItemView *)self makeMoreMenuButton];
      break;
    case 2:
      [(SFUnifiedTabBarItemView *)self makeFormatMenuButton];
      break;
    case 3:
      [(SFUnifiedTabBarItemView *)self makeMediaStateMuteButton];
      break;
    case 4:
      [(SFUnifiedTabBarItemView *)self makeVoiceSearchButton];
      break;
    case 5:
      [(SFUnifiedTabBarItemView *)self makeReloadButton];
      break;
    case 6:
      [(SFUnifiedTabBarItemView *)self makeStopButton];
      break;
    case 7:
      [(SFUnifiedTabBarItemView *)self makeFirstExtensionButton];
      break;
    case 8:
      [(SFUnifiedTabBarItemView *)self makeSecondExtensionButton];
      break;
    case 9:
      [(SFUnifiedTabBarItemView *)self makeMultipleExtensionsButton];
      break;
    case 12:
      [(SFUnifiedTabBarItemView *)self makeUnreadIndicator];
      break;
    case 13:
      [(SFUnifiedTabBarItemView *)self makeParticipantsView];
      break;
    case 14:
      [(SFUnifiedTabBarItemView *)self makePinnedIndicator];
      break;
    case 15:
      [(SFUnifiedTabBarItemView *)self makeOneStepBookmarkingButton];
      break;
    case 16:
      [(SFUnifiedTabBarItemView *)self makeSearchFieldIcon];
      break;
    default:
      return;
  }
}

- (void)makeCloseButton
{
  v11 = [(SFUnifiedTabBarItemView *)self _closeButtonConfiguration];
  v3 = [SFUnifiedTabBarItemViewCloseButton buttonWithConfiguration:v11 primaryAction:0];
  closeButton = self->_closeButton;
  self->_closeButton = v3;

  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton addTarget:self action:sel__closeButtonTapped forControlEvents:0x2000];
  [(UIView *)self->_closeButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  v5 = self->_closeButton;
  v6 = [v11 image];
  v7 = _WBSLocalizedString();
  [(UIView *)v5 sf_configureLargeContentViewerWithImage:v6 title:v7];

  v8 = self->_closeButton;
  v9 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(SFUnifiedTabBarItemViewCloseButton *)v8 addInteraction:v9];

  v10 = [(SFUnifiedBarItemView *)self contentView];
  [v10 insertSubview:self->_closeButton aboveSubview:self->_titleContainer];
}

- (void)makeCloseButtonForHover
{
  v3 = [MEMORY[0x1E69DCAB8] imageNamed:@"xmark.noshape"];
  v4 = [(SFUnifiedTabBarItemView *)self _accessoryButtonConfigurationWithImage:v3 scale:2];
  v5 = [SFUnifiedTabBarItemViewCloseButton buttonWithConfiguration:v4 primaryAction:0];
  closeButtonForHover = self->_closeButtonForHover;
  self->_closeButtonForHover = v5;

  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButtonForHover addTarget:self action:sel__closeButtonTapped forControlEvents:0x2000];
  [(UIView *)self->_closeButtonForHover sf_applyContentSizeCategoryLimitsForToolbarButton];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SFUnifiedTabBarItemView_makeCloseButtonForHover__block_invoke;
  v8[3] = &unk_1E721B360;
  v8[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  v7 = [(SFUnifiedBarItemView *)self contentView];
  [v7 insertSubview:self->_closeButtonForHover aboveSubview:self->_titleContainer];
}

uint64_t __50__SFUnifiedTabBarItemView_makeCloseButtonForHover__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1304) setAlpha:0.0];
  [*(a1 + 32) _updateCloseButtonForHoverPosition];
  v2 = *(a1 + 32);

  return [v2 applyTheme];
}

- (void)makeFirstExtensionButton
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  firstExtensionButton = self->_firstExtensionButton;
  self->_firstExtensionButton = v3;

  [(UIButton *)self->_firstExtensionButton addTarget:self action:sel__extensionButtonTapped_ forControlEvents:0x2000];
  UIEdgeInsetsMakeWithEdges();
  [(UIButton *)self->_firstExtensionButton setLayoutMargins:?];
  [(UIButton *)self->_firstExtensionButton sf_configureLargeContentViewerWithImage:0 title:0];
  v5 = self->_firstExtensionButton;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(UIButton *)v5 addInteraction:v6];

  v7 = objc_alloc_init(SFBadgeContainerView);
  firstExtensionButtonContainer = self->_firstExtensionButtonContainer;
  self->_firstExtensionButtonContainer = v7;

  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setPositionsBadgeRelativeToLayoutMargins:1];
  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setContentView:self->_firstExtensionButton];
  v9 = [(SFUnifiedBarItemView *)self contentView];
  [v9 insertSubview:self->_firstExtensionButtonContainer aboveSubview:self->_titleContainer];

  [(SFUnifiedTabBarItemView *)self _configureFirstExtensionButton];

  [(SFUnifiedTabBarItemView *)self tintColorDidChange];
}

- (void)makeFormatMenuButton
{
  v3 = [SFNavigationBarToggleButton alloc];
  v4 = [SFNavigationBarToggleButton pageMenuImageWithIntelligence:0];
  v5 = [(SFNavigationBarToggleButton *)v3 initWithImage:v4 forInputMode:0];
  formatMenuButton = self->_formatMenuButton;
  self->_formatMenuButton = v5;

  v7 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v8 = 6.0;
  if (v7)
  {
    v8 = 4.0;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setMinimumSideMargin:v8];
  v9 = [MEMORY[0x1E69DCAD8] safari_URLFieldButtonConfiguration];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setPreferredSymbolConfiguration:v9];

  [(SFClickableButton *)self->_formatMenuButton setClickEnabled:1];
  v10 = [(SFNavigationBarToggleButton *)self->_formatMenuButton pointerInteraction];
  [v10 setEnabled:0];

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setPointerPreviewContainer:self];
  [(UIView *)self->_formatMenuButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  [(UIView *)self->_formatMenuButton sf_configureLargeContentViewerForBarItem:13];
  v11 = self->_formatMenuButton;
  v12 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(SFNavigationBarToggleButton *)v11 addInteraction:v12];

  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonTapped forControlEvents:0x2000];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonReceivedTouchDown forControlEvents:1];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonClicked forControlEvents:0x1000000];
  v13 = [(SFUnifiedBarItemView *)self contentView];
  [v13 insertSubview:self->_formatMenuButton aboveSubview:self->_titleContainer];

  WeakRetained = objc_loadWeakRetained(&self->_formatMenuButtonConfigurator);
  [WeakRetained configureMenuAndAdoptButton:self->_formatMenuButton];

  [(SFUnifiedTabBarItemView *)self updateMenuButtonForSelection];
  [(SFUnifiedTabBarItemView *)self updateCornerRadius];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
}

- (void)makeMediaStateMuteButton
{
  v3 = [(SFUnifiedTabBarItemView *)self _makeMediaStateMuteButton];
  mediaStateMuteButton = self->_mediaStateMuteButton;
  self->_mediaStateMuteButton = v3;
}

- (void)makeMoreMenuButton
{
  v3 = objc_alloc_init(SFMoreMenuButton);
  moreMenuButton = self->_moreMenuButton;
  self->_moreMenuButton = v3;

  [(SFMoreMenuButton *)self->_moreMenuButton setIconFilled:1];
  [(SFMoreMenuButton *)self->_moreMenuButton setContentInsets:6.0, 6.0, 6.0, 6.0];
  [(SFMoreMenuButton *)self->_moreMenuButton setDownloadProgress:self->_downloadProgress];
  [(UIView *)self->_moreMenuButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  [(UIView *)self->_moreMenuButton sf_configureLargeContentViewerForBarItem:5];
  v5 = self->_moreMenuButton;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(SFMoreMenuButton *)v5 addInteraction:v6];

  [(SFMoreMenuButton *)self->_moreMenuButton addTarget:self action:sel__menuButtonTapped forControlEvents:0x2000];
  [(SFMoreMenuButton *)self->_moreMenuButton addTarget:self action:sel__menuButtonReceivedTouchDown forControlEvents:1];
  [(SFMoreMenuButton *)self->_moreMenuButton addTarget:self action:sel__menuButtonClicked forControlEvents:0x1000000];
  v7 = objc_alloc_init(SFBadgeContainerView);
  moreMenuButtonContainer = self->_moreMenuButtonContainer;
  self->_moreMenuButtonContainer = v7;

  [(SFBadgeContainerView *)self->_moreMenuButtonContainer setPositionsBadgeRelativeToLayoutMargins:1];
  [(SFBadgeContainerView *)self->_moreMenuButtonContainer setContentView:self->_moreMenuButton];
  v9 = [(SFUnifiedBarItemView *)self contentView];
  [v9 insertSubview:self->_moreMenuButtonContainer aboveSubview:self->_titleContainer];

  [(SFUnifiedTabBarItemView *)self updateMenuButtonForSelection];
}

- (void)makeMultipleExtensionsButton
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  multipleExtensionsButton = self->_multipleExtensionsButton;
  self->_multipleExtensionsButton = v3;

  [(UIButton *)self->_multipleExtensionsButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  [(UIButton *)self->_multipleExtensionsButton addTarget:self action:sel__extensionButtonTapped_ forControlEvents:0x2000];
  v5 = self->_multipleExtensionsButton;
  v6 = _WBSLocalizedString();
  [(UIButton *)v5 sf_configureLargeContentViewerWithImage:0 title:v6];

  v7 = self->_multipleExtensionsButton;
  v8 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(UIButton *)v7 addInteraction:v8];

  v9 = objc_alloc_init(SFBadgeContainerView);
  multipleExtensionsButtonContainer = self->_multipleExtensionsButtonContainer;
  self->_multipleExtensionsButtonContainer = v9;

  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setPositionsBadgeRelativeToLayoutMargins:1];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setContentView:self->_multipleExtensionsButton];
  v11 = [(SFUnifiedBarItemView *)self contentView];
  [v11 insertSubview:self->_multipleExtensionsButtonContainer aboveSubview:self->_titleContainer];
}

- (void)makeOneStepBookmarkingButton
{
  v3 = objc_alloc_init(SFOneStepBookmarkingButton);
  oneStepBookmarkingButton = self->_oneStepBookmarkingButton;
  self->_oneStepBookmarkingButton = v3;

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __55__SFUnifiedTabBarItemView_makeOneStepBookmarkingButton__block_invoke;
  v10 = &unk_1E721C868;
  objc_copyWeak(&v11, &location);
  [(SFOneStepBookmarkingButton *)self->_oneStepBookmarkingButton setDidChangeShowingContextMenu:&v7];
  v5 = [(SFUnifiedBarItemView *)self contentView:v7];
  [v5 addSubview:self->_oneStepBookmarkingButton];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemView:self didMakeOneStepBookmarkingButton:self->_oneStepBookmarkingButton];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __55__SFUnifiedTabBarItemView_makeOneStepBookmarkingButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setNeedsAnimatedAccessoryButtonUpdate];
}

- (void)makeParticipantsView
{
  v3 = objc_alloc_init(SFAvatarStackView);
  participantsView = self->_participantsView;
  self->_participantsView = v3;

  [(SFAvatarStackView *)self->_participantsView setShareParticipants:self->_shareParticipants];
  v5 = [(SFUnifiedBarItemView *)self contentView];
  [v5 insertSubview:self->_participantsView aboveSubview:self->_titleContainer];
}

- (void)makePinnedIndicator
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin.fill"];
  v4 = [(SFUnifiedTabBarItemView *)self _makeAccessoryButtonWithImage:v3 scale:1 action:0];
  pinnedIndicator = self->_pinnedIndicator;
  self->_pinnedIndicator = v4;

  v6 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIButton *)self->_pinnedIndicator setTintColor:v6];

  v7 = self->_pinnedIndicator;

  [(UIButton *)v7 setUserInteractionEnabled:0];
}

- (void)makeReloadButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.clockwise"];
  v4 = [(SFUnifiedTabBarItemView *)self _makeAccessoryButtonWithImage:v3 action:sel__reloadButtonTapped];
  reloadButton = self->_reloadButton;
  self->_reloadButton = v4;

  [(UIButton *)self->_reloadButton sf_configureLargeContentViewerForBarItem:15];
  v6 = self->_reloadButton;
  v7 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(UIButton *)v6 addInteraction:v7];

  v8 = _SFOnePixel();
  v9 = self->_reloadButton;
  v11 = [(UIButton *)v9 configuration];
  [v11 contentInsets];
  [v11 setContentInsets:v8 + v10];
  [(UIButton *)v9 setConfiguration:v11];
}

- (void)makeSecondExtensionButton
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  secondExtensionButton = self->_secondExtensionButton;
  self->_secondExtensionButton = v3;

  [(UIButton *)self->_secondExtensionButton addTarget:self action:sel__extensionButtonTapped_ forControlEvents:0x2000];
  UIEdgeInsetsMakeWithEdges();
  [(UIButton *)self->_secondExtensionButton setLayoutMargins:?];
  [(UIButton *)self->_secondExtensionButton sf_configureLargeContentViewerWithImage:0 title:0];
  v5 = self->_secondExtensionButton;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(UIButton *)v5 addInteraction:v6];

  v7 = objc_alloc_init(SFBadgeContainerView);
  secondExtensionButtonContainer = self->_secondExtensionButtonContainer;
  self->_secondExtensionButtonContainer = v7;

  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setPositionsBadgeRelativeToLayoutMargins:1];
  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setContentView:self->_secondExtensionButton];
  v9 = [(SFUnifiedBarItemView *)self contentView];
  [v9 insertSubview:self->_secondExtensionButtonContainer aboveSubview:self->_titleContainer];

  [(SFUnifiedTabBarItemView *)self _configureSecondExtensionButton];

  [(SFUnifiedTabBarItemView *)self tintColorDidChange];
}

- (void)makeStopButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v4 = [(SFUnifiedTabBarItemView *)self _makeAccessoryButtonWithImage:v3 action:sel__stopButtonTapped];
  stopButton = self->_stopButton;
  self->_stopButton = v4;

  v6 = self->_stopButton;
  v7 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(UIButton *)v6 addInteraction:v7];

  v8 = self->_stopButton;

  [(UIButton *)v8 sf_configureLargeContentViewerForBarItem:14];
}

- (void)makeUnreadIndicator
{
  v3 = objc_alloc_init(SFUnreadIndicator);
  unreadIndicator = self->_unreadIndicator;
  self->_unreadIndicator = v3;

  v5 = [(SFUnifiedBarItemView *)self contentView];
  [v5 insertSubview:self->_unreadIndicator aboveSubview:self->_titleContainer];
}

- (void)makeVoiceSearchButton
{
  v3 = MEMORY[0x1E69DCAB8];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v4 = @"mic";
  }

  else
  {
    v4 = @"mic.fill";
  }

  v5 = [v3 systemImageNamed:v4];
  v6 = [(SFUnifiedTabBarItemView *)self _makeAccessoryButtonWithImage:v5 action:sel__voiceSearchButtonTapped];
  voiceSearchButton = self->_voiceSearchButton;
  self->_voiceSearchButton = v6;

  [(UIButton *)self->_voiceSearchButton _setDisableDictationTouchCancellation:1];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__voiceSearchAvailabilityDidChange_ name:@"SFVoiceSearchAvailabilityDidChangeNotification" object:0];

  v9 = [(SFUnifiedTabBarItemView *)self window];

  if (v9)
  {

    [(SFUnifiedTabBarItemView *)self _voiceSearchAvailabilityDidChange:0];
  }

  else
  {
    self->_needsVoiceSearchAvailabilityUpdate = 1;
  }
}

- (void)makeSearchFieldIcon
{
  v3 = objc_alloc_init(SFSearchFieldIconContainerView);
  searchFieldIconContainer = self->_searchFieldIconContainer;
  self->_searchFieldIconContainer = v3;

  v5 = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFSearchFieldIconContainerView *)self->_searchFieldIconContainer setTheme:v5];

  v6 = [(SFUnifiedBarItemView *)self contentView];
  [v6 insertSubview:self->_searchFieldIconContainer aboveSubview:self->_titleContainer];
}

- (double)_widthForAccessoryButtonOfType:(int64_t)a3
{
  if (a3 > 6)
  {
    if ((a3 - 7) < 2)
    {
      return 19.0 + 6.0 + 6.0;
    }

    if (a3 == 16)
    {
      [(SFUnifiedTabBarItemView *)self bounds];
      Height = CGRectGetHeight(v20);
      [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:16];
      return Height + v16 * -2.0;
    }

    goto LABEL_11;
  }

  if ((a3 - 4) >= 3)
  {
    if (!a3)
    {
      v17 = [(SFUnifiedBarItemView *)self barMetrics];
      [v17 tabCloseButtonWidth];
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      [(SFUnifiedTabBarItemView *)self bounds];
      v10 = CGRectGetHeight(v19);
      [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:2];
      v12 = v10 + v11 * -2.0;
      [(SFNavigationBarToggleButton *)self->_formatMenuButton intrinsicContentSize];
      return fmax(v13, v12);
    }

LABEL_11:
    v17 = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:?];
    [v17 intrinsicContentSize];
LABEL_13:
    v9 = v18;

    return v9;
  }

  v4 = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:6];
  v5 = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:5];
  [v4 intrinsicContentSize];
  v7 = v6;
  [v5 intrinsicContentSize];
  v9 = fmax(v7, v8);

  return v9;
}

- (double)_heightForAccessoryButtonOfType:(int64_t)a3 withWidth:(double)a4 defaultHeight:(double)a5
{
  if (a3 != 16 && a3 != 2)
  {
    return a5;
  }

  [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:a4];
  return a5 + v6 * -2.0;
}

- (double)_insetForAccessoryButtonOfType:(int64_t)a3
{
  result = 0.0;
  if (a3 && a3 != 16)
  {
    if (a3 == 2)
    {
      v6 = [MEMORY[0x1E69C8880] isSolariumEnabled] == 0;
      result = 0.0;
      v7 = 4.0;
    }

    else
    {
      v6 = [MEMORY[0x1E69C8880] isSolariumEnabled] == 0;
      result = 3.5;
      v7 = 9.0;
    }

    if (!v6)
    {
      return v7;
    }
  }

  return result;
}

- (double)_scaleForTransitioningAccessoryButtonOfType:(int64_t)a3
{
  result = 1.0;
  if (a3 > 12)
  {
    if (a3 != 13 && a3 != 15)
    {
LABEL_8:
      +[SFUnifiedBarMetrics transitioningItemScale];
    }
  }

  else if (a3)
  {
    if (a3 == 12)
    {
      return 0.5;
    }

    goto LABEL_8;
  }

  return result;
}

- (double)_spacingBetweenAccessoryButtonOfType:(int64_t)a3 andButtonOfType:(int64_t)a4
{
  v4 = a4 == 12 && a3 == 13;
  result = 0.0;
  if (v4)
  {
    return 6.0;
  }

  return result;
}

- (id)_makeAccessoryButtonWithImage:(id)a3 scale:(int64_t)a4 action:(SEL)a5
{
  v7 = [(SFUnifiedTabBarItemView *)self _accessoryButtonConfigurationWithImage:a3 scale:a4];
  v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:0];
  [v8 sf_applyContentSizeCategoryLimitsForToolbarButton];
  if (a5)
  {
    [v8 addTarget:self action:a5 forControlEvents:0x2000];
  }

  v9 = [(SFUnifiedBarItemView *)self contentView];
  [v9 insertSubview:v8 aboveSubview:self->_titleContainer];

  return v8;
}

- (id)_accessoryButtonConfigurationWithImage:(id)a3 scale:(int64_t)a4
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a3;
  v7 = [v5 plainButtonConfiguration];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = [v7 background];
  [v9 setBackgroundColor:v8];

  [v7 setImage:v6];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:a4];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  [v7 setPreferredSymbolConfigurationForImage:v12];
  [v7 setContentInsets:{6.0, 6.0, 6.0, 6.0}];

  return v7;
}

- (id)_makeMediaStateMuteButton
{
  v3 = [(SFUnifiedTabBarItemView *)self _accessoryButtonConfigurationWithImage:0 scale:2];
  v4 = [SFTooltipProvidingButton buttonWithConfiguration:v3 primaryAction:0];
  [v4 sf_applyContentSizeCategoryLimitsForToolbarButton];
  [v4 addTarget:self action:sel__mediaStateMuteButtonTapped forControlEvents:0x2000];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DCC60];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__SFUnifiedTabBarItemView__makeMediaStateMuteButton__block_invoke;
  v11[3] = &unk_1E721C890;
  objc_copyWeak(&v12, &location);
  v6 = [v5 safari_menuWithUncachedChildrenProvider:v11];
  [v4 setMenu:v6];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SFUnifiedTabBarItemView__makeMediaStateMuteButton__block_invoke_2;
  v9[3] = &unk_1E721C8B8;
  objc_copyWeak(&v10, &location);
  [v4 setTooltipTextProvider:v9];
  [v4 setShowsMenuFromSource:0];
  v7 = [(SFUnifiedBarItemView *)self contentView];
  [v7 insertSubview:v4 aboveSubview:self->_titleContainer];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v4;
}

id __52__SFUnifiedTabBarItemView__makeMediaStateMuteButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 171);
    v4 = [v3 mediaStateMuteButtonMenuElementsForTabBarItemView:v2];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id __52__SFUnifiedTabBarItemView__makeMediaStateMuteButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _tooltipTextForMediaStateMuteButton];

  return v2;
}

- (id)_closeButtonConfiguration
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v3 = @"xmark.circle.fill";
  }

  else
  {
    v3 = @"xmark.square.fill";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  v5 = [(SFUnifiedTabBarItemView *)self _accessoryButtonConfigurationWithImage:v4 scale:1];

  return v5;
}

- (void)_temporarilyCoalesceAccessoryButtonUpdates
{
  if (self->_active && !self->_accessoryButtonUpdateTimer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __69__SFUnifiedTabBarItemView__temporarilyCoalesceAccessoryButtonUpdates__block_invoke;
    v10 = &unk_1E721B4E8;
    objc_copyWeak(&v11, &location);
    v4 = [v3 timerWithTimeInterval:0 repeats:&v7 block:0.2];
    accessoryButtonUpdateTimer = self->_accessoryButtonUpdateTimer;
    self->_accessoryButtonUpdateTimer = v4;

    v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v6 addTimer:self->_accessoryButtonUpdateTimer forMode:*MEMORY[0x1E695DA28]];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __69__SFUnifiedTabBarItemView__temporarilyCoalesceAccessoryButtonUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopAccessoryButtonUpdateTimer];
    [v2 _setNeedsAnimatedAccessoryButtonUpdate];
    WeakRetained = v2;
  }
}

- (void)_stopAccessoryButtonUpdateTimer
{
  [(NSTimer *)self->_accessoryButtonUpdateTimer invalidate];
  accessoryButtonUpdateTimer = self->_accessoryButtonUpdateTimer;
  self->_accessoryButtonUpdateTimer = 0;
}

- (void)_startReloadButtonExpirationTimer
{
  [(SFUnifiedTabBarItemView *)self _stopReloadButtonExpirationTimer];
  v3 = [(NSDate *)self->_lastReloadDate dateByAddingTimeInterval:480.0];
  [v3 timeIntervalSinceNow];
  if (v4 > 0.0)
  {
    v5 = v4;
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E695DFF0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __60__SFUnifiedTabBarItemView__startReloadButtonExpirationTimer__block_invoke;
    v13 = &unk_1E721B4E8;
    objc_copyWeak(&v14, &location);
    v7 = [v6 timerWithTimeInterval:0 repeats:&v10 block:v5];
    reloadButtonExpirationTimer = self->_reloadButtonExpirationTimer;
    self->_reloadButtonExpirationTimer = v7;

    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v9 addTimer:self->_reloadButtonExpirationTimer forMode:*MEMORY[0x1E695DA28]];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __60__SFUnifiedTabBarItemView__startReloadButtonExpirationTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setNeedsAnimatedAccessoryButtonUpdate];
    [v2 _stopReloadButtonExpirationTimer];
    WeakRetained = v2;
  }
}

- (void)_stopReloadButtonExpirationTimer
{
  [(NSTimer *)self->_reloadButtonExpirationTimer invalidate];
  reloadButtonExpirationTimer = self->_reloadButtonExpirationTimer;
  self->_reloadButtonExpirationTimer = 0;
}

- (unint64_t)_individualExtensionButtonLimit
{
  [(SFUnifiedTabBarItemView *)self bounds];
  Width = CGRectGetWidth(v6);
  [(SFUnifiedBarItemView *)self squishedInset];
  if (Width + v4 < 330.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (UIButton)firstExtensionButton
{
  if ([(SFUnifiedTabBarItemView *)self _showsAccessoryButtonOfType:7])
  {
    v3 = self->_firstExtensionButton;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIButton)secondExtensionButton
{
  if ([(SFUnifiedTabBarItemView *)self _showsAccessoryButtonOfType:8])
  {
    v3 = self->_secondExtensionButton;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurrentTooltipProvider:(id)a3
{
  v5 = a3;
  if (self->_currentTooltipProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentTooltipProvider, a3);
    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
    v5 = v6;
  }
}

- (void)_refreshTooltip
{
  self->_needsRefreshTooltip = 0;
  v3 = [(SFTooltipProviding *)self->_currentTooltipProvider tooltip];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 text];
    [(SFUnifiedTabBarItemView *)self presentAvailabilityLabelWithText:v4];
  }

  else
  {
    [(SFUnifiedTabBarItemView *)self dismissAvailabilityLabelAnimated:1 completionHandler:0];
  }
}

- (void)_refreshTooltipIfNeeded
{
  if (self->_needsRefreshTooltip)
  {
    [(SFUnifiedTabBarItemView *)self _refreshTooltip];
  }
}

- (id)_tooltipTextForMediaStateMuteButton
{
  if (self->_accessoryButtonLayout != 1)
  {
    goto LABEL_7;
  }

  mediaStateIcon = self->_mediaStateIcon;
  if (mediaStateIcon - 5 < 2)
  {
    globalMediaStateIcon = SFTitleForTogglingMediaStateIcon(self->_mediaStateIcon);
    goto LABEL_8;
  }

  if (mediaStateIcon)
  {
LABEL_7:
    globalMediaStateIcon = 0;
  }

  else
  {
    globalMediaStateIcon = self->_globalMediaStateIcon;
    if (globalMediaStateIcon)
    {
      globalMediaStateIcon = SFOtherTabsTitleForTogglingMediaStateIcon(globalMediaStateIcon);
    }
  }

LABEL_8:

  return globalMediaStateIcon;
}

- (void)presentAvailabilityLabelWithText:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained alpha];
  titleContainer = WeakRetained;
  if (v7 <= 0.999)
  {
    titleContainer = self->_titleContainer;
  }

  v8 = titleContainer;
  v9 = [(SFUnifiedTabBarItemTitleContainerView *)v8 prepareForAvailabilityPresentation];
  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SFUnifiedTabBarItemView_presentAvailabilityLabelWithText___block_invoke;
  v10[3] = &unk_1E721BD58;
  v10[4] = self;
  [v9 addAnimations:v10];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer presentAvailabilityLabelWithText:v4];
  [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained presentAvailabilityLabelWithText:v4];
}

- (void)dismissAvailabilityLabelAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained alpha];
  titleContainer = WeakRetained;
  if (v9 <= 0.999)
  {
    titleContainer = self->_titleContainer;
  }

  v10 = titleContainer;
  if ([(SFUnifiedTabBarItemTitleContainerView *)v10 isPresentingAvailabilityLabel])
  {
    v11 = [(SFUnifiedTabBarItemTitleContainerView *)v10 prepareForAvailabilityPresentation];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SFUnifiedTabBarItemView_dismissAvailabilityLabelAnimated_completionHandler___block_invoke;
    v12[3] = &unk_1E721BD58;
    v12[4] = self;
    [v11 addAnimations:v12];
    if (v6)
    {
      [v11 addCompletion:v6];
    }

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer dismissAvailabilityLabelAnimated:v4];
    [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained dismissAvailabilityLabelAnimated:v4];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)setSquishedInset:(double)a3
{
  [(SFUnifiedBarItemView *)self squishedInset];
  if (v5 != a3)
  {
    v6.receiver = self;
    v6.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v6 setSquishedInset:a3];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)_setTitleContainerMasked:(BOOL)a3
{
  if (self->_titleContainerMasked != a3)
  {
    v19 = v6;
    v20 = v5;
    v21 = v3;
    v22 = v4;
    self->_titleContainerMasked = a3;
    if (a3)
    {
      v9 = SFFadeOutImage([(UIView *)self _sf_usesLeftToRightLayout], 9.5);
      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setMaskView:v10];
      v11 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke;
      v16[3] = &unk_1E721B400;
      v17 = v10;
      v18 = self;
      v12 = v10;
      [v11 performWithoutAnimation:v16];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke_2;
    v14[3] = &unk_1E721BFA8;
    v14[4] = self;
    v15 = a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke_3;
    v13[3] = &unk_1E721B510;
    v13[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:50331650 animations:v14 completion:v13];
  }
}

uint64_t __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [*(a1 + 32) setBackgroundColor:v2];

  v3 = *(a1 + 40);

  return [v3 _layOutTitleContainerMask];
}

void __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
  }

  v3 = [*(*(a1 + 32) + 1064) maskView];
  [v3 setBackgroundColor:v4];

  if ((v2 & 1) == 0)
  {
  }
}

uint64_t __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 1170) & 1) == 0)
  {
    return [*(v1 + 1064) setMaskView:0];
  }

  return result;
}

- (void)_layOutTitleContainerMask
{
  v3 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer maskView];
  if (v3)
  {
    v20 = v3;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    trailingButtonsWidth = self->_trailingButtonsWidth;
    [(SFUnifiedBarItemView *)self squishedInset];
    v14 = v9 + trailingButtonsWidth - v13 + -3.0;
    if (![(SFUnifiedTabBarItemView *)self _iconVisibility])
    {
      [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
      v14 = v14 + v15;
    }

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer bounds];
    [v20 setFrame:{_SFFlipRectInCoordinateSpace(!-[UIView _sf_usesLeftToRightLayout](self, "_sf_usesLeftToRightLayout"), v5, v7, v14, v11, v16, v17, v18, v19)}];
    v3 = v20;
  }
}

- (double)_squishedInsetToHideCloseButton
{
  v2 = [(SFUnifiedBarItemView *)self barMetrics];
  [v2 tabCloseButtonWidth];
  v4 = v3;
  [v2 leadingTabIconInset];
  v6 = v4 - v5;

  return v6;
}

- (double)_closeButtonAlphaForSquishedInset
{
  [(SFUnifiedBarItemView *)self squishedInset];
  v4 = v3;
  [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
  return fmax(fmin(_SFUninterpolate(v4, v5 * 0.5, 0.0), 1.0), 0.0);
}

- (double)_squishedInsetToHideTrailingButtons
{
  v3 = [(SFUnifiedTabBarItemView *)self _iconVisibility];
  result = 8.0;
  if (!v3)
  {
    [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
    return v5 + 8.0;
  }

  return result;
}

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SFUnifiedBarItemView *)self hitTest:0 withEvent:?];
  v8 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:v8 shouldBeginAtLocation:?];
  }

  if ([(SFUnifiedTabBarItemView *)self showsSearchField])
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer frame];
    v11.x = x;
    v11.y = y;
    v9 = CGRectContainsPoint(v12, v11);
  }

  return v9 & 1;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:willBeginWritingInElement:];
  }

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSuppressesText:1];
}

- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:didFinishWritingInElement:];
  }

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSuppressesText:0];
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:requestElementsInRect:completion:];
  }

  v8 = [(SFUnifiedTabBarItemView *)self searchField];
  if ([v8 isFirstResponder])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11[0] = @"pencilTextInputElementIdentifier";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6[2](v6, v10, v9);
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:focusElement:initialFocusSelectionReferencePoint:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 isEqual:@"pencilTextInputElementIdentifier"])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __108__SFUnifiedTabBarItemView__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v12[3] = &unk_1E721C1A8;
    v12[4] = self;
    v13 = v9;
    [WeakRetained tabBarItemViewDidRequestFocusForPencilInput:self completionHandler:v12];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __108__SFUnifiedTabBarItemView__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __108__SFUnifiedTabBarItemView__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) searchField];
  (*(v3 + 16))(v3, v4);
}

- (void)availabilityDisplayController:(id)a3 didUpdateWithState:(int64_t)a4
{
  v18 = a3;
  if (![v18 isDisplaying])
  {
    currentAvailabilityItem = self->_currentAvailabilityItem;
    self->_currentAvailabilityItem = 0;

    [(SFUnifiedTabBarItemView *)self dismissAvailabilityLabelAnimated:1 completionHandler:0];
LABEL_7:
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
    goto LABEL_8;
  }

  v5 = [(SFTooltipProviding *)self->_currentTooltipProvider tooltip];

  if (v5)
  {
    goto LABEL_8;
  }

  v6 = [v18 currentOptions];
  if ((v6 & 0x20) != 0)
  {
    v12 = [(SFUnifiedTabBarItemView *)self makeReaderAvailabilityAction];
LABEL_13:
    v13 = self->_currentAvailabilityItem;
    self->_currentAvailabilityItem = v12;

    v8 = [v18 currentLabel];
    [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem setTitle:v8];
    goto LABEL_14;
  }

  if ((v6 & 0x40) != 0)
  {
    v12 = [(SFUnifiedTabBarItemView *)self makeTranslationAvailabilityAction];
    goto LABEL_13;
  }

  v7 = [SFUnifiedTabBarAvailabilityItem alloc];
  v8 = [v18 currentLabel];
  v9 = [(SFUnifiedTabBarAvailabilityItem *)v7 initWithTitle:v8];
  v10 = self->_currentAvailabilityItem;
  self->_currentAvailabilityItem = v9;

LABEL_14:
  v14 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem title];
  [(SFUnifiedTabBarItemView *)self presentAvailabilityLabelWithText:v14];

  v15 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
  if (v15)
  {
    v16 = v15;
    v17 = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton];

    if (v17)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)availabilityDisplayController:(id)a3 determineBestLabelsForPresentation:(id)a4
{
  v5 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__SFUnifiedTabBarItemView_availabilityDisplayController_determineBestLabelsForPresentation___block_invoke;
  v16[3] = &unk_1E721B360;
  v16[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  v6 = [v5 count];
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v9 = [v5 lastObject];
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v9 count];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = 0;
      while (1)
      {
        v13 = [v9 textForOptionsAtIndex:v12];
        v14 = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer requiresTruncationToDisplayAvailabilityLabel:v13];

        if (v14)
        {
          break;
        }

        if (v11 == ++v12)
        {
          goto LABEL_10;
        }
      }

      if (++v8 == v7)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return v9;
}

- (void)_hover:(id)a3
{
  v16 = a3;
  if (([v16 state] - 1) >= 2)
  {
    if (![(SFUnifiedBarItemView *)self isHovering])
    {
LABEL_9:
      [(SFUnifiedTabBarItemView *)self _updateTooltipProvider];
      goto LABEL_10;
    }

    v14 = 0;
  }

  else
  {
    [(SFUnifiedTabBarItemView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v16 locationInView:self];
    v18.x = v12;
    v18.y = v13;
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    v14 = CGRectContainsPoint(v19, v18);
    if (v14 == [(SFUnifiedBarItemView *)self isHovering])
    {
      goto LABEL_9;
    }
  }

  [(SFUnifiedTabBarItemView *)self setHovering:v14];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarItemView:self didUpdateHovering:{-[SFUnifiedBarItemView isHovering](self, "isHovering")}];
  }

LABEL_10:
}

- (void)_updateCloseButtonForHover
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SFUnifiedTabBarItemView__updateCloseButtonForHover__block_invoke;
  v7[3] = &unk_1E721B360;
  v7[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  v3 = [(SFUnifiedTabBarItemView *)self _showsCloseButtonOnHover];
  v4 = v3;
  if (v3 && !self->_closeButtonForHover)
  {
    [(SFUnifiedTabBarItemView *)self makeCloseButtonForHover];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SFUnifiedTabBarItemView__updateCloseButtonForHover__block_invoke_2;
  v5[3] = &unk_1E721BFA8;
  v5[4] = self;
  v6 = v4;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v5 options:0 animations:0.2 completion:0.0];
}

uint64_t __53__SFUnifiedTabBarItemView__updateCloseButtonForHover__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePlatterEffect];
  LOBYTE(v2) = *(a1 + 40);
  [*(*(a1 + 32) + 1304) setAlpha:v2];
  v3 = [*(a1 + 32) contentView];
  [*(*(a1 + 32) + 1064) iconFrame];
  [v3 convertRect:*(*(a1 + 32) + 1064) fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 1304) frame];
    v21.origin.x = v12;
    v21.origin.y = v13;
    v21.size.width = v14;
    v21.size.height = v15;
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    v16 = CGRectIntersectsRect(v20, v21);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*(a1 + 32) + 1064);

  return [v17 setHidesIconForHover:v16];
}

- (void)_updateTooltipProvider
{
  if ([(SFUnifiedBarItemView *)self isHovering])
  {
    [(UIHoverGestureRecognizer *)self->_hoverRecognizer locationInView:self];
    v3 = [(SFUnifiedBarItemView *)self hitTest:0 withEvent:?];
    v4 = objc_opt_respondsToSelector();
    v5 = 0;
    if (v4)
    {
      v5 = v3;
    }

    v7 = v5;

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  [(SFUnifiedTabBarItemView *)self setCurrentTooltipProvider:v6];
}

- (void)setHovering:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedBarItemView *)self isHovering]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v5 setHovering:v3];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    [(SFUnifiedTabBarItemView *)self _updateCloseButtonForHover];
    [(SFUnifiedTabBarItemView *)self _updateTooltipProvider];
  }
}

- (BOOL)_showsCloseButtonOnHover
{
  v3 = [(SFUnifiedBarItemView *)self isHovering];
  if (v3)
  {
    if (![(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer isNarrow]|| (v3 = [(SFUnifiedTabBarItemView *)self _commandPressed]) != 0)
    {
      if (self->_active && ([(SFUnifiedBarItemView *)self squishedInset], v5 = v4, [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton], v5 <= v6) || [(SFUnifiedBarItemView *)self isOccluded])
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = [(SFUnifiedTabBarItemView *)self isSelected]^ 1;
      }
    }
  }

  return v3;
}

- (BOOL)_commandPressed
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = ([v2 sf_currentKeyboardModifierFlags] >> 20) & 1;

  return v3;
}

- (void)_updateCloseButtonForHoverPosition
{
  v3 = [(SFUnifiedBarItemView *)self barMetrics];
  [v3 tabCloseButtonWidth];
  v5 = v4;

  v6 = [(SFUnifiedBarItemView *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  Height = CGRectGetHeight(v19);
  v16 = _SFFlipRectInCoordinateSpace(![(UIView *)self _sf_usesLeftToRightLayout], 0.0, 0.0, v5, Height, v8, v10, v12, v14);
  closeButtonForHover = self->_closeButtonForHover;

  [(SFUnifiedTabBarItemViewCloseButton *)closeButtonForHover setFrame:v16];
}

- (id)pointerRegionIdentifierForInteractionLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SFUnifiedBarItemView *)self hitTest:0 withEvent:?];
  closeButton = self->_closeButton;
  if (v6 == closeButton && ([(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton convertPoint:self fromView:x, y], ![(SFUnifiedTabBarItemViewCloseButton *)closeButton pointInsideForPointer:?]) || (closeButtonForHover = self->_closeButtonForHover, v6 == closeButtonForHover) && ([(SFUnifiedTabBarItemViewCloseButton *)self->_closeButtonForHover convertPoint:self fromView:x, y], ![(SFUnifiedTabBarItemViewCloseButton *)closeButtonForHover pointInsideForPointer:?]))
  {
    v10 = 0;
    goto LABEL_16;
  }

  if (v6 == self->_closeButton)
  {
    v14 = 1;
LABEL_15:
    v10 = objc_alloc_init(SFUnifiedTabBarPointerRegionIdentifier);
    [(SFUnifiedTabBarPointerRegionIdentifier *)v10 setPointerStyle:v14];
    [(SFUnifiedTabBarPointerRegionIdentifier *)v10 setViewForPreview:v6];
    goto LABEL_16;
  }

  if (v6 == self->_closeButtonForHover)
  {
    v14 = 2;
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = 0;
  if (v6 != self && (isKindOfClass & 1) != 0)
  {
    v11 = [(SFUnifiedTabBarItemViewCloseButton *)v6 superview];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = [(SFUnifiedTabBarItemViewCloseButton *)v6 superview];

      v14 = 0;
      v6 = v13;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

- (BOOL)canBecomeFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained tabBarItemViewCanBecomeFocused:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SFUnifiedTabBarItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFMenuConfiguring)formatMenuButtonConfigurator
{
  WeakRetained = objc_loadWeakRetained(&self->_formatMenuButtonConfigurator);

  return WeakRetained;
}

- (SFUnifiedTabBarItemTitleContainerView)squishedTitleContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);

  return WeakRetained;
}

- (void)_scribbleInteraction:(void *)a1 shouldBeginAtLocation:.cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_18B7AC000, v1, OS_LOG_TYPE_DEBUG, "Should begin Scribble interaction in <%{public}@>", &v4, 0xCu);
}

@end