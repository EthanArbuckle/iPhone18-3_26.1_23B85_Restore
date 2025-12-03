@interface SFUnifiedTabBarItemView
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)_commandPressed;
- (BOOL)_hasRoomForIconAndCloseButton;
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)_shouldUseActiveTheme;
- (BOOL)_showsAccessoryButtonOfType:(int64_t)type;
- (BOOL)_showsCloseButtonOnHover;
- (BOOL)canBecomeFocused;
- (BOOL)showsStopReloadButton;
- (CGRect)squishedGlassFrame;
- (SFMenuConfiguring)formatMenuButtonConfigurator;
- (SFUnifiedTabBarItemTitleContainerView)squishedTitleContainer;
- (SFUnifiedTabBarItemView)initWithFrame:(CGRect)frame;
- (SFUnifiedTabBarItemViewDelegate)delegate;
- (UIButton)firstExtensionButton;
- (UIButton)secondExtensionButton;
- (UIView)menuPopoverSourceView;
- (double)_closeButtonAlphaForSquishedInset;
- (double)_heightForAccessoryButtonOfType:(int64_t)type withWidth:(double)width defaultHeight:(double)height;
- (double)_insetForAccessoryButtonOfType:(int64_t)type;
- (double)_layOutIndexes:(id)indexes ofAccessoryButtonTypes:(id)types alongEdge:(int64_t)edge usingPresentationSize:(BOOL)size;
- (double)_scaleForTransitioningAccessoryButtonOfType:(int64_t)type;
- (double)_spacingBetweenAccessoryButtonOfType:(int64_t)type andButtonOfType:(int64_t)ofType;
- (double)_squishedInsetToHideCloseButton;
- (double)_squishedInsetToHideTrailingButtons;
- (double)_widthForAccessoryButtonOfType:(int64_t)type;
- (double)accessoryButtonAlpha;
- (id)_accessoryButtonConfigurationWithImage:(id)image scale:(int64_t)scale;
- (id)_accessoryButtonTintColor;
- (id)_closeButtonConfiguration;
- (id)_controlsTintColor;
- (id)_makeAccessoryButtonWithImage:(id)image scale:(int64_t)scale action:(SEL)action;
- (id)_makeMediaStateMuteButton;
- (id)_progressBarTintColor;
- (id)_searchFieldTintColor;
- (id)_secondaryAccessoryButtonTintColor;
- (id)_titleTheme;
- (id)_tooltipTextForMediaStateMuteButton;
- (id)_viewForAccessoryButtonOfType:(int64_t)type;
- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation;
- (id)makeReaderAvailabilityAction;
- (id)makeTranslationAvailabilityAction;
- (id)pointerRegionIdentifierForInteractionLocation:(CGPoint)location;
- (int64_t)_iconVisibility;
- (unint64_t)_individualExtensionButtonLimit;
- (unint64_t)_mediaStateIconToDisplay;
- (void)_closeButtonTapped;
- (void)_configureFirstExtensionButton;
- (void)_configureSecondExtensionButton;
- (void)_extensionButtonTapped:(id)tapped;
- (void)_hover:(id)_hover;
- (void)_layOutAccessoryButtons;
- (void)_layOutProgressView;
- (void)_layOutTitleContainer;
- (void)_layOutTitleContainerMask;
- (void)_makeViewForAccessoryButtonOfType:(int64_t)type;
- (void)_mediaStateMuteButtonTapped;
- (void)_menuButtonClicked;
- (void)_menuButtonReceivedTouchDown;
- (void)_menuButtonTapped;
- (void)_readerButtonTapped;
- (void)_refreshTooltip;
- (void)_refreshTooltipIfNeeded;
- (void)_reloadButtonTapped;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)_searchFieldDidChange:(id)change;
- (void)_setIndexes:(id)indexes ofAccessoryButtonTypes:(id)types visible:(BOOL)visible animated:(BOOL)animated;
- (void)_setNeedsAnimatedAccessoryButtonUpdate;
- (void)_setTitleContainerMasked:(BOOL)masked;
- (void)_setTrailingButtonsHidden:(BOOL)hidden;
- (void)_startReloadButtonExpirationTimer;
- (void)_stopAccessoryButtonUpdateTimer;
- (void)_stopButtonTapped;
- (void)_stopReloadButtonExpirationTimer;
- (void)_temporarilyCoalesceAccessoryButtonUpdates;
- (void)_translationButtonTapped;
- (void)_updateAccessoryButtons;
- (void)_updateAccessoryButtonsAnimated:(BOOL)animated completion:(id)completion;
- (void)_updateBadges;
- (void)_updateCloseButtonForHover;
- (void)_updateCloseButtonForHoverPosition;
- (void)_updateExtensionButtonConfigurationShowingOverflow:(BOOL)overflow activeExtensionCount:(unint64_t)count;
- (void)_updateFormatMenuButtonAccessories;
- (void)_updateFormatMenuButtonImage;
- (void)_updateFormatMenuButtonStyle;
- (void)_updateKeyboardInputMode:(id)mode;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateMediaStateMuteButton;
- (void)_updateMenuButtonColor;
- (void)_updateProgressViewColor;
- (void)_updateTooltipProvider;
- (void)_voiceSearchAvailabilityDidChange:(id)change;
- (void)_voiceSearchButtonTapped;
- (void)applyTheme;
- (void)availabilityDisplayController:(id)controller didUpdateWithState:(int64_t)state;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissAvailabilityLabelAnimated:(BOOL)animated completionHandler:(id)handler;
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
- (void)presentAvailabilityLabelWithText:(id)text;
- (void)setAccessoryButtonLayout:(int64_t)layout;
- (void)setActive:(BOOL)active;
- (void)setContentAlignment:(int64_t)alignment;
- (void)setContentOptions:(unint64_t)options resetDisplay:(BOOL)display;
- (void)setCurrentTooltipProvider:(id)provider;
- (void)setDownloadProgress:(double)progress animated:(BOOL)animated;
- (void)setExtensionButtonConfiguration:(id)configuration;
- (void)setFluidProgressController:(id)controller withCurrentState:(id)state;
- (void)setFollowsKeyboardLayoutDirection:(BOOL)direction;
- (void)setFormatMenuButtonConfigurator:(id)configurator;
- (void)setFrame:(CGRect)frame;
- (void)setGlobalMediaStateIcon:(unint64_t)icon;
- (void)setHasFocusedSensitiveInputField:(BOOL)field;
- (void)setHasHiddenElements:(BOOL)elements;
- (void)setHovering:(BOOL)hovering;
- (void)setLastReloadDate:(id)date;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setMenuButtonBadges:(unint64_t)badges;
- (void)setMenuButtonSelected:(BOOL)selected;
- (void)setOverlayConfiguration:(id)configuration;
- (void)setPlatterStyle:(int64_t)style;
- (void)setSearchField:(id)field;
- (void)setSearchFieldIcon:(id)icon;
- (void)setSecurityAnnotation:(int64_t)annotation;
- (void)setShareParticipants:(id)participants;
- (void)setShowsBadgeOnExtensionsButton:(BOOL)button;
- (void)setShowsCloseButton:(BOOL)button;
- (void)setShowsPinnedIndicator:(BOOL)indicator;
- (void)setShowsReaderIcon:(BOOL)icon;
- (void)setShowsSearchField:(BOOL)field;
- (void)setShowsSearchIcon:(BOOL)icon;
- (void)setShowsSiriReaderPlayingIcon:(BOOL)icon;
- (void)setShowsSquishedAccessoryViews:(BOOL)views;
- (void)setShowsStopReloadButton:(BOOL)button;
- (void)setShowsTranslationIcon:(BOOL)icon;
- (void)setShowsVoiceSearchButton:(BOOL)button;
- (void)setSquishedInset:(double)inset;
- (void)setSquishedTitleContainer:(id)container;
- (void)setStopReloadButtonShowsStop:(BOOL)stop;
- (void)setTitle:(id)title;
- (void)setTitleWhenActive:(id)active;
- (void)setTitleWhenCollapsed:(id)collapsed;
- (void)setUnread:(BOOL)unread;
- (void)tintColorDidChange;
- (void)updateAccessibilityIdentifier;
- (void)updateCornerRadius;
- (void)updateMenuButtonForSelection;
@end

@implementation SFUnifiedTabBarItemView

- (SFUnifiedTabBarItemView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = SFUnifiedTabBarItemView;
  v3 = [(SFUnifiedBarItemView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFUnifiedTabBarItemView *)v3 setPlatterStyle:1];
    [(SFUnifiedTabBarItemView *)v4 setFocusGroupIdentifier:0];
    v4->_downloadProgress = -2.0;
    contentView = [(SFUnifiedBarItemView *)v4 contentView];
    v6 = [[SFUnifiedTabBarItemTitleContainerView alloc] initWithAlignment:0];
    titleContainer = v4->_titleContainer;
    v4->_titleContainer = v6;

    [(SFUnifiedTabBarItemTitleContainerView *)v4->_titleContainer setShowsIcon:1];
    [(SFUnifiedTabBarItemTitleContainerView *)v4->_titleContainer setTitleTextStyle:*MEMORY[0x1E69DDD80]];
    [contentView addSubview:v4->_titleContainer];
    v8 = objc_alloc_init(_SFFluidProgressView);
    progressView = v4->_progressView;
    v4->_progressView = v8;

    [(_SFFluidProgressView *)v4->_progressView setDelegate:v4];
    [(SFUnifiedTabBarItemView *)v4 _updateProgressViewColor];
    [(SFUnifiedTabBarItemView *)v4 _updateShowsProgressView];
    contentView2 = [(SFUnifiedBarItemView *)v4 contentView];
    [contentView2 addSubview:v4->_progressView];

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

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v17 = [safari_browserDefaults safari_numberForKey:@"DebugReaderGlyphDisplayDuration"];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__setNeedsAnimatedAccessoryButtonUpdate name:*MEMORY[0x1E69DDA58] object:0];

    v23 = v4;
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
  searchField = [(SFUnifiedTabBarItemView *)self searchField];
  text = [searchField text];
  if ([text length])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    searchField2 = [(SFUnifiedTabBarItemView *)self searchField];
    _fieldEditor = [searchField2 _fieldEditor];
    v5 = [_fieldEditor isHidden] ^ 1;
  }

  return v5;
}

- (void)setFollowsKeyboardLayoutDirection:(BOOL)direction
{
  if (self->_followsKeyboardLayoutDirection != direction)
  {
    directionCopy = direction;
    self->_followsKeyboardLayoutDirection = direction;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setFollowsKeyboardLayoutDirection:?];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (directionCopy)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      self->_keyboardInputModeIsRTL = [mEMORY[0x1E69DC668] safari_currentKeyboardInputIsRTL];

      [defaultCenter addObserver:self selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
      [defaultCenter addObserver:self selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];
      [defaultCenter removeObserver:self name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    }

    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

  layer = [(UIButton *)self->_firstExtensionButton layer];
  [layer setFilters:v4];

  layer2 = [(UIButton *)self->_secondExtensionButton layer];
  [layer2 setFilters:v4];

  [(UIButton *)self->_firstExtensionButton setAlpha:v5];
  [(UIButton *)self->_secondExtensionButton setAlpha:v5];
  tintColor = [(SFUnifiedTabBarItemView *)self tintColor];
  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setBadgeTintColor:tintColor];
  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setBadgeTintColor:tintColor];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setBadgeTintColor:tintColor];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SFUnifiedTabBarItemView;
  [(SFUnifiedBarItemView *)&v10 layoutSubviews];
  barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
  [barMetrics itemCornerRadius];
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

- (void)setTitleWhenCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  titleWhenCollapsed = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer titleWhenCollapsed];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleWhenCollapsed:collapsedCopy];
  }
}

- (void)_layOutTitleContainer
{
  leadingButtonsWidth = self->_leadingButtonsWidth;
  trailingButtonsWidth = self->_trailingButtonsWidth;
  glassView = [(SFUnifiedBarItemView *)self glassView];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && objc_msgSend(glassView, "isDescendantOfView:", self))
  {
    [glassView frame];
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

  _iconVisibility = [(SFUnifiedTabBarItemView *)self _iconVisibility];
  [(SFUnifiedBarItemView *)self squishedInset];
  v22 = v21;
  [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
  showsCloseButton = self->_showsCloseButton;
  v25 = leadingButtonsWidth - v24;
  v26 = fmin(v22, v24);
  v27 = leadingButtonsWidth - v26;
  v28 = trailingButtonsWidth + v26;
  if (_iconVisibility)
  {
    v28 = trailingButtonsWidth;
    v27 = leadingButtonsWidth;
  }

  if (_iconVisibility == 2)
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
    contentAlignment = [(SFUnifiedTabBarItemView *)self contentAlignment];
    v34 = 0;
    if (!active && contentAlignment == 1)
    {
      barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
      [barMetrics tabCloseButtonWidth];
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

  showsSearchField = [(SFUnifiedTabBarItemView *)self showsSearchField];
  [(SFUnifiedTabBarItemView *)self layoutMargins];
  v71 = v39;
  if (showsSearchField)
  {
    v40 = v39;
    if (![MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v30 = v40;
    }
  }

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView bounds];
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
  barMetrics2 = [(SFUnifiedBarItemView *)self barMetrics];
  v53 = barMetrics2;
  v54 = 0.0;
  if (!((v34 | showsSearchField) & 1 | (self->_leadingButtonsWidth != 0.0)))
  {
    [barMetrics2 leadingTabIconInset];
    v56 = v55;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer leadingIconOffset];
    v54 = v56 + v57;
  }

  contentAlignment2 = [(SFUnifiedTabBarItemView *)self contentAlignment];
  if (contentAlignment2 == 1)
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

  if (contentAlignment2)
  {
    goto LABEL_32;
  }

  p_titleContainer = &self->_titleContainer;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setFrame:_SFFlipRectInCoordinateSpace(![(UIView *)self _sf_usesLeftToRightLayout], v30, 0.0, v50, v51, v43, v45, v47, v49)];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setDirectionalLayoutMargins:0.0, v54, 0.0, 3.0];
  if (!self->_showsCloseButton || !showsSearchField)
  {
    goto LABEL_30;
  }

  [v53 tabCloseButtonWidth];
  v61 = v60 - v71;
LABEL_31:
  [(SFUnifiedTabBarItemTitleContainerView *)*p_titleContainer setContentOffset:v61];
LABEL_32:
  if (_iconVisibility == 2)
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
    if (_iconVisibility == 1)
    {
      v65 = &self->_titleContainer;
      titleContainer = self->_titleContainer;
      v67 = 0;
    }

    else
    {
      if (_iconVisibility)
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
  glassView = [(SFUnifiedBarItemView *)self glassView];
  v4 = glassView;
  if (glassView)
  {
    contentView = glassView;
  }

  else
  {
    contentView = [(SFUnifiedBarItemView *)self contentView];
  }

  v7 = contentView;

  superview = [(_SFFluidProgressView *)self->_progressView superview];

  if (superview != v7)
  {
    [v7 addSubview:self->_progressView];
  }

  [v7 _continuousCornerRadius];
  [(_SFFluidProgressView *)self->_progressView setCornerRadius:?];
  [v7 bounds];
  [(_SFFluidProgressView *)self->_progressView setFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
  [barMetrics itemCornerRadius];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_title, title);
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTitleWhenCollapsed:titleCopy];
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

  contentAlignment = [(SFUnifiedTabBarItemView *)self contentAlignment];
  if (contentAlignment == 1)
  {
    return self->_showsCloseButton && ![(SFUnifiedTabBarItemView *)self _hasRoomForIconAndCloseButton];
  }

  if (contentAlignment)
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

- (void)setTitleWhenActive:(id)active
{
  titleContainer = self->_titleContainer;
  activeCopy = active;
  [(SFUnifiedTabBarItemTitleContainerView *)titleContainer setTitle:activeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setTitle:activeCopy];

  [(SFUnifiedTabBarItemView *)self applyTheme];

  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)setSearchFieldIcon:(id)icon
{
  iconCopy = icon;
  searchFieldIconContainer = self->_searchFieldIconContainer;
  v7 = iconCopy;
  if (!searchFieldIconContainer)
  {
    v6 = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:16];
    iconCopy = v7;
    searchFieldIconContainer = self->_searchFieldIconContainer;
  }

  [(SFSearchFieldIconContainerView *)searchFieldIconContainer setIcon:iconCopy];
}

- (void)setShowsSearchIcon:(BOOL)icon
{
  iconCopy = icon;
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer showsSearchIcon]!= icon)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchIcon:iconCopy];
    WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
    [WeakRetained setShowsSearchIcon:iconCopy];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    superview = [(SFUnifiedTabBarItemView *)self superview];
    if (superview)
    {
      v7 = superview;
      isHidden = [(SFUnifiedTabBarItemView *)self isHidden];

      if ((isHidden & 1) == 0)
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

- (void)setShowsVoiceSearchButton:(BOOL)button
{
  if (self->_showsVoiceSearchButton != button)
  {
    self->_showsVoiceSearchButton = button;
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setSecurityAnnotation:(int64_t)annotation
{
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSecurityAnnotation:?];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setSecurityAnnotation:annotation];
}

- (void)setHasFocusedSensitiveInputField:(BOOL)field
{
  fieldCopy = field;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setHasFocusedSensitiveInputField:?];
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [WeakRetained setHasFocusedSensitiveInputField:fieldCopy];
}

- (UIView)menuPopoverSourceView
{
  if ([(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement containsButtonType:1])
  {
    tiplessPopoverSourceView = self->_moreMenuButton;
  }

  else
  {
    tiplessPopoverSourceView = [(SFNavigationBarToggleButton *)self->_formatMenuButton tiplessPopoverSourceView];
  }

  return tiplessPopoverSourceView;
}

- (void)setMenuButtonSelected:(BOOL)selected
{
  if (self->_menuButtonSelected != selected)
  {
    self->_menuButtonSelected = selected;
    [(SFUnifiedTabBarItemView *)self updateMenuButtonForSelection];
  }
}

- (void)updateMenuButtonForSelection
{
  [(SFMoreMenuButton *)self->_moreMenuButton setSelected:self->_menuButtonSelected];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setSelected:self->_menuButtonSelected];
  menuButtonSelected = self->_menuButtonSelected;
  pointerInteraction = [(SFNavigationBarToggleButton *)self->_formatMenuButton pointerInteraction];
  [pointerInteraction setEnabled:menuButtonSelected];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];

  [(SFUnifiedTabBarItemView *)self _updateMenuButtonColor];
}

- (void)setShowsReaderIcon:(BOOL)icon
{
  if (self->_showsReaderIcon != icon)
  {
    self->_showsReaderIcon = icon;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setShowsTranslationIcon:(BOOL)icon
{
  if (self->_showsTranslationIcon != icon)
  {
    self->_showsTranslationIcon = icon;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setShowsSiriReaderPlayingIcon:(BOOL)icon
{
  if (self->_showsSiriReaderPlayingIcon != icon)
  {
    self->_showsSiriReaderPlayingIcon = icon;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  }
}

- (void)setContentOptions:(unint64_t)options resetDisplay:(BOOL)display
{
  if (display)
  {
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  }

  [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController updateToContentOptions:options];

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
  showsPersistentStopReloadButton = [(SFUnifiedTabBarItemView *)self showsPersistentStopReloadButton];
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
  if (!showsPersistentStopReloadButton && result && !v6)
  {

    return [(SFUnifiedBarItemView *)self isHovering];
  }

  return result;
}

- (void)setShowsStopReloadButton:(BOOL)button
{
  if (self->_showsStopReloadButton != button)
  {
    self->_showsStopReloadButton = button;
    if ([(SFUnifiedBarItemView *)self isHovering])
    {

      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }
  }
}

- (void)setStopReloadButtonShowsStop:(BOOL)stop
{
  if (self->_stopReloadButtonShowsStop != stop)
  {
    self->_stopReloadButtonShowsStop = stop;
    if ([(SFUnifiedTabBarItemView *)self showsStopReloadButton])
    {

      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }
  }
}

- (void)setLastReloadDate:(id)date
{
  dateCopy = date;
  if ((WBSIsEqual() & 1) == 0)
  {
    showsStopReloadButton = [(SFUnifiedTabBarItemView *)self showsStopReloadButton];
    objc_storeStrong(&self->_lastReloadDate, date);
    if (showsStopReloadButton != [(SFUnifiedTabBarItemView *)self showsStopReloadButton])
    {
      [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    }

    if (dateCopy)
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

- (void)setMediaStateIcon:(unint64_t)icon
{
  if (self->_mediaStateIcon != icon)
  {
    self->_mediaStateIcon = icon;
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];

    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
  }
}

- (void)setGlobalMediaStateIcon:(unint64_t)icon
{
  if (self->_globalMediaStateIcon != icon)
  {
    self->_globalMediaStateIcon = icon;
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];

    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
  }
}

- (void)setFluidProgressController:(id)controller withCurrentState:(id)state
{
  obj = controller;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_fluidProgressController);
  if (WeakRetained != obj)
  {
    [WeakRetained unregisterObserver:self->_progressView];
    v8 = objc_storeWeak(&self->_fluidProgressController, obj);

    [obj registerObserver:self->_progressView];
    [(_SFFluidProgressView *)self->_progressView setProgressToCurrentPositionForState:stateCopy];
    [(SFUnifiedTabBarItemView *)self _updateShowsProgressView];
    WeakRetained = obj;
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setCollapsed:!active];
    [(SFUnifiedTabBarItemView *)self _updateShowsProgressView];
    [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    if (!self->_active)
    {

      [(SFUnifiedTabBarItemView *)self _stopAccessoryButtonUpdateTimer];
    }
  }
}

- (void)setShowsCloseButton:(BOOL)button
{
  if (self->_showsCloseButton != button)
  {
    self->_showsCloseButton = button;
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

- (void)setFormatMenuButtonConfigurator:(id)configurator
{
  obj = configurator;
  WeakRetained = objc_loadWeakRetained(&self->_formatMenuButtonConfigurator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_formatMenuButtonConfigurator, obj);
    [obj configureMenuAndAdoptButton:self->_formatMenuButton];
  }
}

- (void)setSearchField:(id)field
{
  fieldCopy = field;
  searchField = [(SFUnifiedTabBarItemView *)self searchField];
  if (searchField != fieldCopy)
  {
    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
    [searchField removeTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSearchField:fieldCopy];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    [fieldCopy addTarget:self action:sel__searchFieldDidChange_ forControlEvents:0x20000];
    _searchFieldTintColor = [(SFUnifiedTabBarItemView *)self _searchFieldTintColor];
    [fieldCopy setTintColor:_searchFieldTintColor];
  }
}

- (void)setShowsSearchField:(BOOL)field
{
  fieldCopy = field;
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer showsSearchField]!= field)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setShowsSearchField:fieldCopy];
    [(SFUnifiedTabBarItemView *)self applyTheme];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setAccessoryButtonLayout:(int64_t)layout
{
  if (self->_accessoryButtonLayout != layout)
  {
    self->_accessoryButtonLayout = layout;
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

- (void)setContentAlignment:(int64_t)alignment
{
  if ([(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer alignment]!= alignment)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setAlignment:alignment];

    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)setDownloadProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_downloadProgress = progress;
  [SFMoreMenuButton setDownloadProgress:"setDownloadProgress:animated:" animated:?];
  [(SFMoreMenuButton *)self->_downloadProgressView setDownloadProgress:animatedCopy animated:progress];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
}

- (void)_updateExtensionButtonConfigurationShowingOverflow:(BOOL)overflow activeExtensionCount:(unint64_t)count
{
  overflowCopy = overflow;
  borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  if (overflowCopy)
  {
    v7 = @"puzzlepiece.extension.fill";
  }

  else
  {
    v7 = @"puzzlepiece.extension";
  }

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  [borderlessButtonConfiguration setImage:v8];
  if (overflowCopy)
  {
    v9 = MEMORY[0x1E696ADA0];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
    v11 = [v9 localizedStringFromNumber:v10 numberStyle:1];
    [borderlessButtonConfiguration setTitle:v11];
  }

  else
  {
    [borderlessButtonConfiguration setTitle:0];
  }

  safari_URLFieldButtonConfiguration = [MEMORY[0x1E69DCAD8] safari_URLFieldButtonConfiguration];
  [borderlessButtonConfiguration setPreferredSymbolConfigurationForImage:safari_URLFieldButtonConfiguration];

  [borderlessButtonConfiguration setImagePadding:2.0];
  [borderlessButtonConfiguration setContentInsets:{6.0, 6.0, 6.0, 6.0}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  background = [borderlessButtonConfiguration background];
  [background setBackgroundColor:clearColor];

  [(UIButton *)self->_multipleExtensionsButton setConfiguration:borderlessButtonConfiguration];
  v15 = _WBSLocalizedString();
  [(UIButton *)self->_multipleExtensionsButton setLargeContentTitle:v15];

  [(UIButton *)self->_multipleExtensionsButton setLargeContentImage:v8];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setPositionsBadgeRelativeToLayoutMargins:!overflowCopy];
}

- (void)setExtensionButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  buttons = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  buttons2 = [configurationCopy buttons];
  v7 = [buttons isEqualToArray:buttons2];

  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_extensionButtonConfiguration, configuration);
    buttons3 = [configurationCopy buttons];
    [(SFUnifiedTabBarItemView *)self _configureFirstExtensionButton];
    [(SFUnifiedTabBarItemView *)self _configureSecondExtensionButton];
    alwaysShowMultipleExtensionsButton = [configurationCopy alwaysShowMultipleExtensionsButton];
    activeExtensionCount = [configurationCopy activeExtensionCount];
    _individualExtensionButtonLimit = [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
    if ((alwaysShowMultipleExtensionsButton & 1) != 0 || activeExtensionCount > _individualExtensionButtonLimit)
    {
      [(SFUnifiedTabBarItemView *)self _updateExtensionButtonConfigurationShowingOverflow:activeExtensionCount > _individualExtensionButtonLimit activeExtensionCount:activeExtensionCount];
    }

    if ([buttons3 count])
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
  buttons = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  firstObject = [buttons firstObject];

  firstExtensionButton = self->_firstExtensionButton;
  image = [firstObject image];
  [(UIButton *)firstExtensionButton setImage:image forState:0];

  extension = [firstObject extension];
  displayShortName = [extension displayShortName];
  if (displayShortName)
  {
    [(UIButton *)self->_firstExtensionButton setLargeContentTitle:displayShortName];
  }

  else
  {
    v8 = _WBSLocalizedString();
    [(UIButton *)self->_firstExtensionButton setLargeContentTitle:v8];
  }

  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setNeedsLayout];
  -[SFBadgeContainerView setShowsBadge:](self->_firstExtensionButtonContainer, "setShowsBadge:", [firstObject badged]);
}

- (void)_configureSecondExtensionButton
{
  buttons = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  if ([buttons count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [buttons objectAtIndexedSubscript:1];
  }

  secondExtensionButton = self->_secondExtensionButton;
  image = [v3 image];
  [(UIButton *)secondExtensionButton setImage:image forState:0];

  extension = [v3 extension];
  displayShortName = [extension displayShortName];
  if (displayShortName)
  {
    [(UIButton *)self->_secondExtensionButton setLargeContentTitle:displayShortName];
  }

  else
  {
    v8 = _WBSLocalizedString();
    [(UIButton *)self->_secondExtensionButton setLargeContentTitle:v8];
  }

  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setNeedsLayout];
  -[SFBadgeContainerView setShowsBadge:](self->_secondExtensionButtonContainer, "setShowsBadge:", [v3 badged]);
}

- (void)setMenuButtonBadges:(unint64_t)badges
{
  if (self->_menuButtonBadges != badges)
  {
    self->_menuButtonBadges = badges;
    [(SFUnifiedTabBarItemView *)self _updateBadges];

    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  }
}

- (void)setShowsBadgeOnExtensionsButton:(BOOL)button
{
  if (self->_showsBadgeOnExtensionsButton != button)
  {
    self->_showsBadgeOnExtensionsButton = button;
    [(SFUnifiedTabBarItemView *)self _updateBadges];
  }
}

- (void)setUnread:(BOOL)unread
{
  if (self->_unread != unread)
  {
    self->_unread = unread;
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setShareParticipants:(id)participants
{
  participantsCopy = participants;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [participantsCopy copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(SFAvatarStackView *)self->_participantsView setShareParticipants:self->_shareParticipants];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setShowsPinnedIndicator:(BOOL)indicator
{
  if (self->_showsPinnedIndicator != indicator)
  {
    self->_showsPinnedIndicator = indicator;
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
  }
}

- (void)setHasHiddenElements:(BOOL)elements
{
  if (self->_hasHiddenElements != elements)
  {
    self->_hasHiddenElements = elements;
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  }
}

- (void)setOverlayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_overlayConfiguration;
  objc_storeStrong(&self->_overlayConfiguration, configuration);
  [(SFUnifiedTabBarItemView *)self updateAccessibilityIdentifier];
  identifier = [(SFURLFieldOverlayConfiguration *)v5 identifier];
  identifier2 = [configurationCopy identifier];
  v8 = WBSIsEqual();

  overlayView = self->_overlayView;
  if (v8)
  {
    [(SFURLFieldOverlayView *)overlayView setConfiguration:configurationCopy];
  }

  else
  {
    [(SFURLFieldOverlayView *)overlayView dismissAndRemove];
    if (configurationCopy)
    {
      contentView = [(SFUnifiedBarItemView *)self contentView];
      layer = [contentView layer];

      presentationLayer = [layer presentationLayer];
      v13 = presentationLayer;
      if (presentationLayer)
      {
        v14 = presentationLayer;
      }

      else
      {
        v14 = layer;
      }

      v15 = v14;

      v16 = [SFURLFieldOverlayView alloc];
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = [(SFURLFieldOverlayView *)v16 initWithFrame:configurationCopy configuration:v18, v20, v22, v24];
      v26 = self->_overlayView;
      self->_overlayView = v25;

      [(SFURLFieldOverlayView *)self->_overlayView setAutoresizingMask:18];
      barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
      [barMetrics itemCornerRadius];
      [(SFURLFieldOverlayView *)self->_overlayView _setContinuousCornerRadius:?];

      contentView2 = [(SFUnifiedBarItemView *)self contentView];
      eraserView = [(SFURLFieldOverlayView *)self->_overlayView eraserView];
      [contentView2 addSubview:eraserView];

      contentView3 = [(SFUnifiedBarItemView *)self contentView];
      [contentView3 addSubview:self->_overlayView];

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
  platterStyle = [(SFUnifiedBarItemView *)self platterStyle];
  _controlsTintColor = [(SFUnifiedTabBarItemView *)self _controlsTintColor];
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView setTintColor:_controlsTintColor];

  [(SFMoreMenuButton *)self->_moreMenuButton setProgressTintColor:_controlsTintColor];
  _titleTheme = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setTheme:_titleTheme];

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setDimsText:platterStyle == 1];
  _titleTheme2 = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFSearchFieldIconContainerView *)self->_searchFieldIconContainer setTheme:_titleTheme2];

  _accessoryButtonTintColor = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
  _secondaryAccessoryButtonTintColor = [(SFUnifiedTabBarItemView *)self _secondaryAccessoryButtonTintColor];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton setTintColor:_accessoryButtonTintColor];
  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButtonForHover setTintColor:_accessoryButtonTintColor];
  if ([(UIButton *)self->_voiceSearchButton isEnabled])
  {
    [(UIButton *)self->_voiceSearchButton setTintColor:_secondaryAccessoryButtonTintColor];
  }

  else
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIButton *)self->_voiceSearchButton setTintColor:tertiaryLabelColor];
  }

  [(UIButton *)self->_reloadButton setTintColor:_accessoryButtonTintColor];
  [(UIButton *)self->_stopButton setTintColor:_accessoryButtonTintColor];
  [(SFBadgeContainerView *)self->_firstExtensionButtonContainer setTintColor:_secondaryAccessoryButtonTintColor];
  [(SFBadgeContainerView *)self->_secondExtensionButtonContainer setTintColor:_secondaryAccessoryButtonTintColor];
  [(SFBadgeContainerView *)self->_multipleExtensionsButtonContainer setTintColor:_secondaryAccessoryButtonTintColor];
  _searchFieldTintColor = [(SFUnifiedTabBarItemView *)self _searchFieldTintColor];
  searchField = [(SFUnifiedTabBarItemView *)self searchField];
  [searchField setTintColor:_searchFieldTintColor];

  [(SFUnifiedTabBarItemView *)self _updateProgressViewColor];
  [(SFUnifiedTabBarItemView *)self _updateMenuButtonColor];
  [(SFUnifiedTabBarItemView *)self _updateMediaStateMuteButton];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonAccessories];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonStyle];
}

- (void)setPlatterStyle:(int64_t)style
{
  if ([(SFUnifiedBarItemView *)self platterStyle]!= style)
  {
    v5.receiver = self;
    v5.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v5 setPlatterStyle:style];
    [(SFUnifiedTabBarItemView *)self applyTheme];
  }
}

- (id)_titleTheme
{
  _shouldUseActiveTheme = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  v5 = barTheme;
  if (_shouldUseActiveTheme)
  {
    [barTheme activeTabTitleTheme];
  }

  else
  {
    [barTheme tabTitleTheme];
  }
  v6 = ;

  return v6;
}

- (id)_accessoryButtonTintColor
{
  accessoryButtonLayout = [(SFUnifiedTabBarItemView *)self accessoryButtonLayout];
  if ((accessoryButtonLayout - 1) < 2)
  {
    barTheme = [(SFUnifiedBarItemView *)self barTheme];
    inputFieldAccessoryButtonTintColor = [barTheme inputFieldAccessoryButtonTintColor];
LABEL_3:
    v2 = inputFieldAccessoryButtonTintColor;

    goto LABEL_8;
  }

  if (!accessoryButtonLayout)
  {
    _shouldUseActiveTheme = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
    barTheme2 = [(SFUnifiedBarItemView *)self barTheme];
    barTheme = barTheme2;
    if (_shouldUseActiveTheme)
    {
      [barTheme2 activeTabAccessoryButtonTintColor];
    }

    else
    {
      [barTheme2 tabAccessoryButtonTintColor];
    }
    inputFieldAccessoryButtonTintColor = ;
    goto LABEL_3;
  }

LABEL_8:

  return v2;
}

- (id)_secondaryAccessoryButtonTintColor
{
  platterStyle = [(SFUnifiedBarItemView *)self platterStyle];
  if (platterStyle != 5 || !(v5 = -[SFUnifiedTabBarItemView showsSearchField](self, "showsSearchField")) && (-[SFUnifiedTabBarItemView titleWhenActive](self, "titleWhenActive"), v2 = objc_claimAutoreleasedReturnValue(), [v2 length]))
  {
    _accessoryButtonTintColor = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    if (platterStyle != 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  _accessoryButtonTintColor = [barTheme inputFieldSecondaryAccessoryButtonTintColor];

  if (!v5)
  {
LABEL_5:
  }

LABEL_6:

  return _accessoryButtonTintColor;
}

- (id)_controlsTintColor
{
  _shouldUseActiveTheme = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  v5 = barTheme;
  if (_shouldUseActiveTheme)
  {
    [barTheme activeTabControlsTintColor];
  }

  else
  {
    [barTheme tabControlsTintColor];
  }
  v6 = ;

  return v6;
}

- (id)_progressBarTintColor
{
  _shouldUseActiveTheme = [(SFUnifiedTabBarItemView *)self _shouldUseActiveTheme];
  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  v5 = barTheme;
  if (_shouldUseActiveTheme)
  {
    [barTheme activeTabProgressBarTintColor];
  }

  else
  {
    [barTheme tabProgressBarTintColor];
  }
  v6 = ;

  return v6;
}

- (id)_searchFieldTintColor
{
  if ([(SFUnifiedBarItemView *)self platterStyle]== 2)
  {
    barTheme = [(SFUnifiedBarItemView *)self barTheme];
    activeTabFieldTintColor = [barTheme activeTabFieldTintColor];
  }

  else
  {
    activeTabFieldTintColor = 0;
  }

  return activeTabFieldTintColor;
}

- (BOOL)_shouldUseActiveTheme
{
  platterStyle = [(SFUnifiedBarItemView *)self platterStyle];
  result = 1;
  if (platterStyle <= 0xD)
  {
    if (((1 << platterStyle) & 0x2DD3) != 0)
    {
      return 0;
    }

    else if (((1 << platterStyle) & 0x102C) != 0)
    {
      barTheme = [(SFUnifiedBarItemView *)self barTheme];
      isPrivate = [barTheme isPrivate];

      return isPrivate;
    }
  }

  return result;
}

- (void)setSquishedTitleContainer:(id)container
{
  obj = container;
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
      title = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer title];
      [obj setTitle:title];
    }
  }
}

- (void)setShowsSquishedAccessoryViews:(BOOL)views
{
  if (self->_showsSquishedAccessoryViews != views)
  {
    self->_showsSquishedAccessoryViews = views;
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
  action = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem action];
  if (action && (v4 = action, v5 = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton], v4, v5))
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

- (void)_extensionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_multipleExtensionsButton == tappedCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemView:self multipleExtensionButtonTapped:tappedCopy];
    }
  }

  else
  {
    buttons = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
    tappedCopy = [buttons objectAtIndexedSubscript:self->_firstExtensionButton != tappedCopy];
    extension = [tappedCopy extension];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarItemView:self extensionButtonTapped:tappedCopy extension:extension];
    }
  }
}

- (void)_updateProgressViewColor
{
  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  v8 = barTheme;
  if (self->_showsSquishedAccessoryViews)
  {
    [barTheme progressBarTintColor];
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

  layer = [(_SFFluidProgressView *)self->_progressView layer];
  [layer setCompositingFilter:v5];

  if (v6)
  {
  }
}

- (void)_updateMenuButtonColor
{
  if ([(SFUnifiedTabBarItemView *)self menuButtonSelected])
  {
    barTheme = [(SFUnifiedBarItemView *)self barTheme];
    selectedMenuButtonTintColor = [barTheme selectedMenuButtonTintColor];
    [(SFMoreMenuButton *)self->_moreMenuButton setTintColor:selectedMenuButtonTintColor];

    _titleTheme = [(SFUnifiedTabBarItemView *)self _titleTheme];
    primaryTextColor = [_titleTheme primaryTextColor];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      _accessoryButtonTintColor = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];

      primaryTextColor = _accessoryButtonTintColor;
    }

    if ([(SFUnifiedBarItemView *)self platterStyle]!= 5)
    {
      v7 = [primaryTextColor colorWithAlphaComponent:0.85];

      v8 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    primaryTextColor = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    [(SFMoreMenuButton *)self->_moreMenuButton setTintColor:primaryTextColor];
  }

  v8 = primaryTextColor;
LABEL_8:
  v10 = v8;
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setGlyphTintColor:v8];
}

- (void)_updateMediaStateMuteButton
{
  _mediaStateIconToDisplay = [(SFUnifiedTabBarItemView *)self _mediaStateIconToDisplay];
  configuration = [(UIButton *)self->_mediaStateMuteButton configuration];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = MEMORY[0x1E69DCFD8];
    transition = [MEMORY[0x1E6982240] transition];
    v7 = [v5 transitionWithContentTransition:transition];
    [configuration setSymbolContentTransition:v7];
  }

  v8 = _SFImageForMediaStateIcon(_mediaStateIconToDisplay);
  v9 = [v8 imageWithRenderingMode:2];
  [configuration setImage:v9];

  [(UIButton *)self->_mediaStateMuteButton setConfiguration:configuration];
  if (!self->_active)
  {
    _accessoryButtonTintColor = [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    goto LABEL_9;
  }

  _titleTheme = [(SFUnifiedTabBarItemView *)self _titleTheme];
  _accessoryButtonTintColor = [_titleTheme overrideTintColor];

  if (_accessoryButtonTintColor)
  {
LABEL_9:
    [(UIButton *)self->_mediaStateMuteButton setTintColor:_accessoryButtonTintColor];
    goto LABEL_10;
  }

  if (SFMediaStateIconIsCaptureDevice(_mediaStateIconToDisplay))
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else if (_mediaStateIconToDisplay == 6)
  {
    systemRedColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (_mediaStateIconToDisplay == 5)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [(SFUnifiedTabBarItemView *)self _accessoryButtonTintColor];
    }
    systemRedColor = ;
  }

  v16 = systemRedColor;
  [(UIButton *)self->_mediaStateMuteButton setTintColor:systemRedColor];

LABEL_10:
  if (self->_active)
  {
    v13 = 1;
  }

  else
  {
    isSelected = [(SFUnifiedTabBarItemView *)self isSelected];
    if (_mediaStateIconToDisplay == 4)
    {
      v13 = isSelected;
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
  image = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
  if (image)
  {
    v4 = image;
    _availabilityButtonsReplaceFormatMenuButton = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton];

    if (_availabilityButtonsReplaceFormatMenuButton)
    {
      image2 = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
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
    image2 = +[SFNavigationBarToggleButton siriReaderPlayingImage];
    formatMenuButton = self->_formatMenuButton;
    v7 = @"SiriReaderButton";
    goto LABEL_7;
  }

  if (self->_showsReaderIcon)
  {
    v8 = [SFNavigationBarToggleButton readerImageWithSummary:[(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController cumulativeOptions]& 1];
LABEL_12:
    image2 = v8;
    goto LABEL_13;
  }

  if (self->_showsTranslationIcon)
  {
    v8 = +[SFNavigationBarToggleButton translationImage];
    goto LABEL_12;
  }

  image2 = [SFNavigationBarToggleButton pageMenuImageWithIntelligence:([(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController cumulativeOptions]& 0x1F) != 0];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessibilityIdentifier:@"PageFormatMenuButton"];
  v9 = 1;
LABEL_14:
  accessoryItems = [(SFNavigationBarToggleButton *)self->_formatMenuButton accessoryItems];
  v11 = [accessoryItems count];
  accessoryView = [(SFNavigationBarToggleButton *)self->_formatMenuButton accessoryView];
  if (accessoryView)
  {
    ++v11;
  }

  if ((v11 | 2) != 2)
  {
    v13 = +[SFNavigationBarToggleButton formatMenuBottomOnlyImage];

    image2 = v13;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setImage:image2];
  v14 = self->_formatMenuButton;
  if (v9)
  {
    image3 = [(SFNavigationBarToggleButton *)v14 image];
    [(SFNavigationBarToggleButton *)self->_formatMenuButton setLargeContentImage:image3];
  }

  else
  {
    [(UIView *)v14 sf_configureLargeContentViewerForBarItem:13];
  }
}

- (void)_updateFormatMenuButtonAccessories
{
  _showsFormatMenuButtonAccessories = [(SFUnifiedTabBarItemView *)self _showsFormatMenuButtonAccessories];
  activeExtensionCount = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_mediaStateIcon)
  {
    v5 = !_showsFormatMenuButtonAccessories;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [array addObject:&unk_1EFF73E38];
    formatMenuButton = self->_formatMenuButton;
    _titleTheme = [(SFUnifiedTabBarItemView *)self _titleTheme];
    overrideTintColor = [_titleTheme overrideTintColor];
    [(SFNavigationBarToggleButton *)formatMenuButton setOverrideColor:overrideTintColor forAccessory:3];

    [(SFNavigationBarToggleButton *)self->_formatMenuButton setMediaStateIcon:self->_mediaStateIcon];
  }

  if (activeExtensionCount != 0 && _showsFormatMenuButtonAccessories)
  {
    [array addObject:&unk_1EFF73E50];
    v9 = self->_formatMenuButton;
    barTheme = [(SFUnifiedBarItemView *)self barTheme];
    inputFieldSecondaryAccessoryButtonTintColor = [barTheme inputFieldSecondaryAccessoryButtonTintColor];
    [(SFNavigationBarToggleButton *)v9 setOverrideColor:inputFieldSecondaryAccessoryButtonTintColor forAccessory:2];
  }

  if (self->_hasHiddenElements)
  {
    [array addObject:&unk_1EFF73E68];
  }

  [(SFMoreMenuButton *)self->_downloadProgressView downloadProgress];
  if (v12 == -2.0)
  {
    if (self->_menuButtonBadges & _showsFormatMenuButtonAccessories)
    {
      goto LABEL_12;
    }
  }

  else if (_showsFormatMenuButtonAccessories)
  {
LABEL_12:
    downloadProgressView = self->_downloadProgressView;
    goto LABEL_15;
  }

  downloadProgressView = 0;
LABEL_15:
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessoryView:downloadProgressView];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessoryItems:array];
  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)_updateFormatMenuButtonStyle
{
  accessoryButtonLayout = self->_accessoryButtonLayout;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if ((accessoryButtonLayout - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = 1;
  }

  else
  {
    v5 = isSolariumEnabled;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setCornerRoundingMode:v5 ^ 1u];
  v6 = 2.0;
  if ((self->_accessoryButtonLayout - 1) <= 1)
  {
    v6 = _SFOnePixel();
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setInsetFromBackground:v6];
  barTheme = [(SFUnifiedBarItemView *)self barTheme];
  tintStyle = [barTheme tintStyle];
  themeColor = [barTheme themeColor];
  if (_SFIsPrivateTintStyle(tintStyle))
  {
    if (themeColor)
    {
      safari_meetsThresholdForDarkAppearance = [themeColor safari_meetsThresholdForDarkAppearance];
    }

    else
    {
      safari_meetsThresholdForDarkAppearance = _SFIsDarkTintStyle(tintStyle);
    }

    v11 = safari_meetsThresholdForDarkAppearance ^ 1;
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
  buttons = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration buttons];
  v9 = [buttons safari_containsObjectPassingTest:&__block_literal_global_14];

  if (v9)
  {
    activeExtensionCount = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
    v11 = activeExtensionCount > [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
  }

  else
  {
    v11 = 0;
  }

  multipleExtensionsButtonContainer = self->_multipleExtensionsButtonContainer;
  v13 = self->_showsBadgeOnExtensionsButton || v11;

  [(SFBadgeContainerView *)multipleExtensionsButtonContainer setShowsBadge:v13];
}

- (void)_searchFieldDidChange:(id)change
{
  if ([(SFUnifiedTabBarItemView *)self _canUpdateLayoutDirectionImmediately])
  {
    [(SFUnifiedTabBarItemView *)self _updateLayoutDirectionIfNeeded];
  }

  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
}

- (void)_voiceSearchAvailabilityDidChange:(id)change
{
  v4 = +[SFVoiceSearchManager sharedManager];
  -[UIButton setEnabled:](self->_voiceSearchButton, "setEnabled:", [v4 availability] == 1);

  [(SFUnifiedTabBarItemView *)self applyTheme];
}

- (void)updateAccessibilityIdentifier
{
  v16[4] = *MEMORY[0x1E69E9840];
  item = [(SFUnifiedBarItemView *)self item];
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
  uUID = [item UUID];
  uUIDString = [uUID UUIDString];
  v8 = uUIDString;
  v9 = &stru_1EFF36230;
  if (uUIDString)
  {
    v9 = uUIDString;
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
  if ([item isPinned])
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
      areAnimationsEnabled = 1;
    }

    else
    {
      areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
    }

    self->_needsAnimatedAccessoryButtonUpdate = areAnimationsEnabled;

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

- (void)_updateAccessoryButtonsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SFUnifiedTabBarItemView *)self _coalescingAccessoryButtonUpdates])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
      leadingButtonTypes = [v9 leadingButtonTypes];
      trailingButtonTypes = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
      v13 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)v10 initWithLeadingButtonTypes:leadingButtonTypes trailingButtonTypes:trailingButtonTypes];

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
      v62 = completionCopy;
      [v14 sf_animate:animatedCopy usingDefaultTimingWithOptions:2 animations:v63 completion:v61];
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
      leadingButtonTypes2 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement leadingButtonTypes];
      leadingButtonTypes3 = [v9 leadingButtonTypes];
      trailingButtonTypes2 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
      trailingButtonTypes3 = [v9 trailingButtonTypes];
      v39 = v9;
      objc_storeStrong(&self->_accessoryButtonArrangement, v9);
      v41 = leadingButtonTypes2;
      v20 = [leadingButtonTypes3 differenceFromArray:leadingButtonTypes2 withOptions:4];
      safari_insertionIndexes = [v20 safari_insertionIndexes];
      safari_removalIndexes = [v20 safari_removalIndexes];
      v44 = trailingButtonTypes2;
      v22 = [trailingButtonTypes3 differenceFromArray:trailingButtonTypes2 withOptions:4];
      safari_insertionIndexes2 = [v22 safari_insertionIndexes];
      safari_removalIndexes2 = [v22 safari_removalIndexes];
      v40 = safari_insertionIndexes2;
      if (animatedCopy)
      {
        v34 = v22;
        v35 = v20;
        v24 = MEMORY[0x1E69DD250];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __70__SFUnifiedTabBarItemView__updateAccessoryButtonsAnimated_completion___block_invoke_5;
        v54[3] = &unk_1E721C750;
        v54[4] = self;
        v25 = safari_insertionIndexes;
        v55 = v25;
        v38 = leadingButtonTypes3;
        v26 = leadingButtonTypes3;
        v56 = v26;
        v27 = safari_insertionIndexes2;
        v57 = v27;
        v36 = trailingButtonTypes3;
        v28 = trailingButtonTypes3;
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
        v46 = safari_removalIndexes;
        v31 = v41;
        v47 = v41;
        v48 = safari_removalIndexes2;
        v49 = v44;
        v50 = v25;
        v51 = v26;
        v52 = v27;
        v53 = v28;
        [v30 sf_animate:1 usingDefaultMotionWithOptions:v29 animations:v45 completion:0];
        if (completionCopy)
        {
          v32 = dispatch_time(0, 200000000);
          dispatch_after(v32, MEMORY[0x1E69E96A0], completionCopy);
        }

        v15 = v37;
        leadingButtonTypes3 = v38;
        v20 = v35;
        trailingButtonTypes3 = v36;
        v22 = v34;
        v33 = safari_removalIndexes;
        v9 = v39;
      }

      else
      {
        v33 = safari_removalIndexes;
        [(SFUnifiedTabBarItemView *)self _setIndexes:safari_removalIndexes ofAccessoryButtonTypes:v41 visible:0 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:safari_removalIndexes2 ofAccessoryButtonTypes:v44 visible:0 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:safari_insertionIndexes ofAccessoryButtonTypes:leadingButtonTypes3 visible:1 animated:0];
        [(SFUnifiedTabBarItemView *)self _setIndexes:safari_insertionIndexes2 ofAccessoryButtonTypes:trailingButtonTypes3 visible:!self->_trailingButtonsHidden animated:0];
        v15[2](v15);
        [(SFUnifiedTabBarItemView *)self _layOutAccessoryButtons];
        v9 = v39;
        v31 = v41;
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
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
  leadingButtonTypes = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement leadingButtonTypes];
  [(SFUnifiedTabBarItemView *)self _layOutIndexes:0 ofAccessoryButtonTypes:leadingButtonTypes alongEdge:0 usingPresentationSize:0];
  self->_leadingButtonsWidth = v4;

  trailingButtonTypes = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
  [(SFUnifiedTabBarItemView *)self _layOutIndexes:0 ofAccessoryButtonTypes:trailingButtonTypes alongEdge:1 usingPresentationSize:0];
  self->_trailingButtonsWidth = v5;
}

- (double)_layOutIndexes:(id)indexes ofAccessoryButtonTypes:(id)types alongEdge:(int64_t)edge usingPresentationSize:(BOOL)size
{
  sizeCopy = size;
  indexesCopy = indexes;
  typesCopy = types;
  if ([typesCopy count])
  {
    contentView = [(SFUnifiedBarItemView *)self contentView];
    layer = [contentView layer];

    if (sizeCopy)
    {
      presentationLayer = [layer presentationLayer];
      v15 = presentationLayer;
      if (presentationLayer)
      {
        v16 = presentationLayer;
      }

      else
      {
        v16 = layer;
      }

      v17 = v16;

      layer = v17;
    }

    [layer bounds];
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    v41 = CGRectGetHeight(v59);
    _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
    if (edge == 1)
    {
      [typesCopy lastObject];
    }

    else
    {
      [typesCopy firstObject];
    }
    v24 = ;
    integerValue = [v24 integerValue];

    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v58[3] = integerValue;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:integerValue];
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
        if (_sf_usesLeftToRightLayout == edge)
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
    v47 = integerValue;
    v42[4] = self;
    v44 = &v54;
    v45 = v58;
    v48 = x;
    v49 = y;
    v50 = width;
    v51 = height;
    edgeCopy = edge;
    v43 = indexesCopy;
    v53 = _sf_usesLeftToRightLayout == edge;
    [typesCopy enumerateObjectsWithOptions:2 * (edge == 1) usingBlock:v42];
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

- (void)_setIndexes:(id)indexes ofAccessoryButtonTypes:(id)types visible:(BOOL)visible animated:(BOOL)animated
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__SFUnifiedTabBarItemView__setIndexes_ofAccessoryButtonTypes_visible_animated___block_invoke;
  v6[3] = &unk_1E721C7F0;
  v6[4] = self;
  visibleCopy = visible;
  animatedCopy = animated;
  [types enumerateObjectsAtIndexes:indexes options:0 usingBlock:v6];
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

- (void)_setTrailingButtonsHidden:(BOOL)hidden
{
  if (self->_trailingButtonsHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_trailingButtonsHidden = hidden;
    trailingButtonTypes = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self->_accessoryButtonArrangement trailingButtonTypes];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(trailingButtonTypes, "count")}];
    [(SFUnifiedTabBarItemView *)self _setIndexes:v6 ofAccessoryButtonTypes:trailingButtonTypes visible:!hiddenCopy animated:1];
  }
}

- (BOOL)_showsAccessoryButtonOfType:(int64_t)type
{
  showsSearchField = [(SFUnifiedTabBarItemView *)self showsSearchField];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __55__SFUnifiedTabBarItemView__showsAccessoryButtonOfType___block_invoke;
  v37[3] = &unk_1E721C818;
  v37[4] = self;
  v38 = showsSearchField;
  v6 = _Block_copy(v37);
  v7 = v6;
  switch(type)
  {
    case 0:
      v25 = 1361;
      goto LABEL_26;
    case 1:
      webExtensionsController = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration webExtensionsController];
      extensions = [webExtensionsController extensions];
      v28 = [extensions count];

      showsPinnedIndicator = self->_active && !showsSearchField;
      if (self->_active && !showsSearchField && !v28)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    case 2:
      if (showsSearchField || !self->_active)
      {
        goto LABEL_48;
      }

LABEL_29:
      titleWhenActive = [(SFUnifiedTabBarItemView *)self titleWhenActive];
      showsPinnedIndicator = [titleWhenActive length] != 0;

      goto LABEL_49;
    case 3:
      if ([(SFUnifiedTabBarItemView *)self _mediaStateIconToDisplay]== 0 || showsSearchField)
      {
        goto LABEL_48;
      }

      contentView = [(SFUnifiedBarItemView *)self contentView];
      [contentView bounds];
      Width = CGRectGetWidth(v39);
      [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer minimumWidthToShowTitle];
      v21 = v20;
      [(SFUnifiedTabBarItemView *)self _widthForAccessoryButtonOfType:3];
      showsPinnedIndicator = Width >= v21 + v22;
      goto LABEL_56;
    case 4:
      isSolariumEnabled = (*(v6 + 2))(v6);
      goto LABEL_9;
    case 5:
      if (!self->_active || ((*(v6 + 2))(v6) & 1) != 0 || ![(SFUnifiedTabBarItemView *)self showsStopReloadButton])
      {
        goto LABEL_48;
      }

      showsPinnedIndicator = !self->_stopReloadButtonShowsStop && !showsSearchField;
      goto LABEL_49;
    case 6:
      if (!self->_active || ((*(v6 + 2))(v6) & 1) != 0 || ![(SFUnifiedTabBarItemView *)self showsStopReloadButton])
      {
        goto LABEL_48;
      }

      v25 = 1359;
LABEL_26:
      showsPinnedIndicator = *(&self->super.super.super.super.super.super.isa + v25) & !showsSearchField;
      goto LABEL_49;
    case 7:
      activeExtensionCount = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
      showsPinnedIndicator = 0;
      if (showsSearchField || !self->_active)
      {
        goto LABEL_49;
      }

      v24 = activeExtensionCount;
      if (!activeExtensionCount)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    case 8:
      activeExtensionCount2 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
      showsPinnedIndicator = 0;
      if (!showsSearchField && self->_active)
      {
        v24 = activeExtensionCount2;
        if (activeExtensionCount2 >= 2)
        {
LABEL_46:
          showsPinnedIndicator = v24 <= [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
        }
      }

      goto LABEL_49;
    case 9:
      if (showsSearchField || !self->_active)
      {
        goto LABEL_48;
      }

      if ([(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration alwaysShowMultipleExtensionsButton])
      {
        showsPinnedIndicator = 1;
      }

      else
      {
        activeExtensionCount3 = [(SFWebExtensionButtonConfiguration *)self->_extensionButtonConfiguration activeExtensionCount];
        showsPinnedIndicator = activeExtensionCount3 > [(SFUnifiedTabBarItemView *)self _individualExtensionButtonLimit];
      }

      goto LABEL_49;
    case 10:
    case 11:
      buttonType = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem buttonType];
      if (!self->_active)
      {
        goto LABEL_48;
      }

      showsPinnedIndicator = (buttonType == type) & ~showsSearchField;
      goto LABEL_49;
    case 12:
      if (showsSearchField || !self->_unread)
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
      if ([(NSArray *)self->_shareParticipants count]== 0 || showsSearchField)
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
      if (showsSearchField || !self->_active)
      {
        goto LABEL_48;
      }

      contentView = [(SFUnifiedTabBarItemView *)self titleWhenActive];
      if ([contentView length])
      {
        if ([(SFUnifiedBarItemView *)self isHovering]|| [(SFOneStepBookmarkingButton *)self->_oneStepBookmarkingButton isShowingContextMenu]|| UIAccessibilityIsVoiceOverRunning())
        {
          showsPinnedIndicator = 1;
        }

        else
        {
          safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
          showsPinnedIndicator = [safari_browserDefaults BOOLForKey:@"DebugAlwaysShowAddToReadingListAddressBarButton"];
        }
      }

      else
      {
        showsPinnedIndicator = 0;
      }

LABEL_56:

      goto LABEL_49;
    case 16:
      if (!self->_active || !showsSearchField)
      {
        goto LABEL_48;
      }

      isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
LABEL_9:
      showsPinnedIndicator = isSolariumEnabled;
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

- (id)_viewForAccessoryButtonOfType:(int64_t)type
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SFUnifiedTabBarItemView__viewForAccessoryButtonOfType___block_invoke;
  v10[3] = &unk_1E721C840;
  v10[4] = self;
  v10[5] = type;
  v5 = _Block_copy(v10);
  v6 = v5[2]();
  if (!v6)
  {
    [(SFUnifiedTabBarItemView *)self _makeViewForAccessoryButtonOfType:type];
    [(SFUnifiedTabBarItemView *)self applyTheme];
    v6 = (v5[2])(v5);
    [v6 setHidden:1];
    v7 = SFAccessibilityIdentifierForUnifiedTabBarItemAccessoryButtonType(type);
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

- (void)_makeViewForAccessoryButtonOfType:(int64_t)type
{
  switch(type)
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
  _closeButtonConfiguration = [(SFUnifiedTabBarItemView *)self _closeButtonConfiguration];
  v3 = [SFUnifiedTabBarItemViewCloseButton buttonWithConfiguration:_closeButtonConfiguration primaryAction:0];
  closeButton = self->_closeButton;
  self->_closeButton = v3;

  [(SFUnifiedTabBarItemViewCloseButton *)self->_closeButton addTarget:self action:sel__closeButtonTapped forControlEvents:0x2000];
  [(UIView *)self->_closeButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  v5 = self->_closeButton;
  image = [_closeButtonConfiguration image];
  v7 = _WBSLocalizedString();
  [(UIView *)v5 sf_configureLargeContentViewerWithImage:image title:v7];

  v8 = self->_closeButton;
  v9 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(SFUnifiedTabBarItemViewCloseButton *)v8 addInteraction:v9];

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_closeButton aboveSubview:self->_titleContainer];
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_closeButtonForHover aboveSubview:self->_titleContainer];
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_firstExtensionButtonContainer aboveSubview:self->_titleContainer];

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

  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v8 = 6.0;
  if (isSolariumEnabled)
  {
    v8 = 4.0;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setMinimumSideMargin:v8];
  safari_URLFieldButtonConfiguration = [MEMORY[0x1E69DCAD8] safari_URLFieldButtonConfiguration];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton setPreferredSymbolConfiguration:safari_URLFieldButtonConfiguration];

  [(SFClickableButton *)self->_formatMenuButton setClickEnabled:1];
  pointerInteraction = [(SFNavigationBarToggleButton *)self->_formatMenuButton pointerInteraction];
  [pointerInteraction setEnabled:0];

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setPointerPreviewContainer:self];
  [(UIView *)self->_formatMenuButton sf_applyContentSizeCategoryLimitsForToolbarButton];
  [(UIView *)self->_formatMenuButton sf_configureLargeContentViewerForBarItem:13];
  v11 = self->_formatMenuButton;
  v12 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(SFNavigationBarToggleButton *)v11 addInteraction:v12];

  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonTapped forControlEvents:0x2000];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonReceivedTouchDown forControlEvents:1];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton addTarget:self action:sel__menuButtonClicked forControlEvents:0x1000000];
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_formatMenuButton aboveSubview:self->_titleContainer];

  WeakRetained = objc_loadWeakRetained(&self->_formatMenuButtonConfigurator);
  [WeakRetained configureMenuAndAdoptButton:self->_formatMenuButton];

  [(SFUnifiedTabBarItemView *)self updateMenuButtonForSelection];
  [(SFUnifiedTabBarItemView *)self updateCornerRadius];

  [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
}

- (void)makeMediaStateMuteButton
{
  _makeMediaStateMuteButton = [(SFUnifiedTabBarItemView *)self _makeMediaStateMuteButton];
  mediaStateMuteButton = self->_mediaStateMuteButton;
  self->_mediaStateMuteButton = _makeMediaStateMuteButton;
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_moreMenuButtonContainer aboveSubview:self->_titleContainer];

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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_multipleExtensionsButtonContainer aboveSubview:self->_titleContainer];
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_participantsView aboveSubview:self->_titleContainer];
}

- (void)makePinnedIndicator
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin.fill"];
  v4 = [(SFUnifiedTabBarItemView *)self _makeAccessoryButtonWithImage:v3 scale:1 action:0];
  pinnedIndicator = self->_pinnedIndicator;
  self->_pinnedIndicator = v4;

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIButton *)self->_pinnedIndicator setTintColor:tertiaryLabelColor];

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
  configuration = [(UIButton *)v9 configuration];
  [configuration contentInsets];
  [configuration setContentInsets:v8 + v10];
  [(UIButton *)v9 setConfiguration:configuration];
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_secondExtensionButtonContainer aboveSubview:self->_titleContainer];

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

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_unreadIndicator aboveSubview:self->_titleContainer];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__voiceSearchAvailabilityDidChange_ name:@"SFVoiceSearchAvailabilityDidChangeNotification" object:0];

  window = [(SFUnifiedTabBarItemView *)self window];

  if (window)
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

  _titleTheme = [(SFUnifiedTabBarItemView *)self _titleTheme];
  [(SFSearchFieldIconContainerView *)self->_searchFieldIconContainer setTheme:_titleTheme];

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:self->_searchFieldIconContainer aboveSubview:self->_titleContainer];
}

- (double)_widthForAccessoryButtonOfType:(int64_t)type
{
  if (type > 6)
  {
    if ((type - 7) < 2)
    {
      return 19.0 + 6.0 + 6.0;
    }

    if (type == 16)
    {
      [(SFUnifiedTabBarItemView *)self bounds];
      Height = CGRectGetHeight(v20);
      [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:16];
      return Height + v16 * -2.0;
    }

    goto LABEL_11;
  }

  if ((type - 4) >= 3)
  {
    if (!type)
    {
      barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
      [barMetrics tabCloseButtonWidth];
      goto LABEL_13;
    }

    if (type == 2)
    {
      [(SFUnifiedTabBarItemView *)self bounds];
      v10 = CGRectGetHeight(v19);
      [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:2];
      v12 = v10 + v11 * -2.0;
      [(SFNavigationBarToggleButton *)self->_formatMenuButton intrinsicContentSize];
      return fmax(v13, v12);
    }

LABEL_11:
    barMetrics = [(SFUnifiedTabBarItemView *)self _viewForAccessoryButtonOfType:?];
    [barMetrics intrinsicContentSize];
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

- (double)_heightForAccessoryButtonOfType:(int64_t)type withWidth:(double)width defaultHeight:(double)height
{
  if (type != 16 && type != 2)
  {
    return height;
  }

  [(SFUnifiedTabBarItemView *)self _insetForAccessoryButtonOfType:width];
  return height + v6 * -2.0;
}

- (double)_insetForAccessoryButtonOfType:(int64_t)type
{
  result = 0.0;
  if (type && type != 16)
  {
    if (type == 2)
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

- (double)_scaleForTransitioningAccessoryButtonOfType:(int64_t)type
{
  result = 1.0;
  if (type > 12)
  {
    if (type != 13 && type != 15)
    {
LABEL_8:
      +[SFUnifiedBarMetrics transitioningItemScale];
    }
  }

  else if (type)
  {
    if (type == 12)
    {
      return 0.5;
    }

    goto LABEL_8;
  }

  return result;
}

- (double)_spacingBetweenAccessoryButtonOfType:(int64_t)type andButtonOfType:(int64_t)ofType
{
  v4 = ofType == 12 && type == 13;
  result = 0.0;
  if (v4)
  {
    return 6.0;
  }

  return result;
}

- (id)_makeAccessoryButtonWithImage:(id)image scale:(int64_t)scale action:(SEL)action
{
  v7 = [(SFUnifiedTabBarItemView *)self _accessoryButtonConfigurationWithImage:image scale:scale];
  v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:0];
  [v8 sf_applyContentSizeCategoryLimitsForToolbarButton];
  if (action)
  {
    [v8 addTarget:self action:action forControlEvents:0x2000];
  }

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:v8 aboveSubview:self->_titleContainer];

  return v8;
}

- (id)_accessoryButtonConfigurationWithImage:(id)image scale:(int64_t)scale
{
  v5 = MEMORY[0x1E69DC740];
  imageCopy = image;
  plainButtonConfiguration = [v5 plainButtonConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  background = [plainButtonConfiguration background];
  [background setBackgroundColor:clearColor];

  [plainButtonConfiguration setImage:imageCopy];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:scale];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v12];
  [plainButtonConfiguration setContentInsets:{6.0, 6.0, 6.0, 6.0}];

  return plainButtonConfiguration;
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
  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView insertSubview:v4 aboveSubview:self->_titleContainer];

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

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_accessoryButtonUpdateTimer forMode:*MEMORY[0x1E695DA28]];

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

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_reloadButtonExpirationTimer forMode:*MEMORY[0x1E695DA28]];

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

- (void)setCurrentTooltipProvider:(id)provider
{
  providerCopy = provider;
  if (self->_currentTooltipProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_currentTooltipProvider, provider);
    [(SFUnifiedTabBarItemView *)self _setNeedsRefreshTooltip];
    providerCopy = v6;
  }
}

- (void)_refreshTooltip
{
  self->_needsRefreshTooltip = 0;
  tooltip = [(SFTooltipProviding *)self->_currentTooltipProvider tooltip];
  v5 = tooltip;
  if (tooltip)
  {
    text = [tooltip text];
    [(SFUnifiedTabBarItemView *)self presentAvailabilityLabelWithText:text];
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

- (void)presentAvailabilityLabelWithText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_squishedTitleContainer);
  [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained alpha];
  titleContainer = WeakRetained;
  if (v7 <= 0.999)
  {
    titleContainer = self->_titleContainer;
  }

  v8 = titleContainer;
  prepareForAvailabilityPresentation = [(SFUnifiedTabBarItemTitleContainerView *)v8 prepareForAvailabilityPresentation];
  [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SFUnifiedTabBarItemView_presentAvailabilityLabelWithText___block_invoke;
  v10[3] = &unk_1E721BD58;
  v10[4] = self;
  [prepareForAvailabilityPresentation addAnimations:v10];
  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer presentAvailabilityLabelWithText:textCopy];
  [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained presentAvailabilityLabelWithText:textCopy];
}

- (void)dismissAvailabilityLabelAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
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
    prepareForAvailabilityPresentation = [(SFUnifiedTabBarItemTitleContainerView *)v10 prepareForAvailabilityPresentation];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SFUnifiedTabBarItemView_dismissAvailabilityLabelAnimated_completionHandler___block_invoke;
    v12[3] = &unk_1E721BD58;
    v12[4] = self;
    [prepareForAvailabilityPresentation addAnimations:v12];
    if (handlerCopy)
    {
      [prepareForAvailabilityPresentation addCompletion:handlerCopy];
    }

    [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer dismissAvailabilityLabelAnimated:animatedCopy];
    [(SFUnifiedTabBarItemTitleContainerView *)WeakRetained dismissAvailabilityLabelAnimated:animatedCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)setSquishedInset:(double)inset
{
  [(SFUnifiedBarItemView *)self squishedInset];
  if (v5 != inset)
  {
    v6.receiver = self;
    v6.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v6 setSquishedInset:inset];
    [(SFUnifiedTabBarItemView *)self setNeedsLayout];
  }
}

- (void)_setTitleContainerMasked:(BOOL)masked
{
  if (self->_titleContainerMasked != masked)
  {
    v19 = v6;
    v20 = v5;
    v21 = v3;
    v22 = v4;
    self->_titleContainerMasked = masked;
    if (masked)
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
      selfCopy = self;
      v12 = v10;
      [v11 performWithoutAnimation:v16];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__SFUnifiedTabBarItemView__setTitleContainerMasked___block_invoke_2;
    v14[3] = &unk_1E721BFA8;
    v14[4] = self;
    maskedCopy = masked;
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
  maskView = [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer maskView];
  if (maskView)
  {
    v20 = maskView;
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
    maskView = v20;
  }
}

- (double)_squishedInsetToHideCloseButton
{
  barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
  [barMetrics tabCloseButtonWidth];
  v4 = v3;
  [barMetrics leadingTabIconInset];
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
  _iconVisibility = [(SFUnifiedTabBarItemView *)self _iconVisibility];
  result = 8.0;
  if (!_iconVisibility)
  {
    [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton];
    return v5 + 8.0;
  }

  return result;
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:willBeginWritingInElement:];
  }

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSuppressesText:1];
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v5 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:didFinishWritingInElement:];
  }

  [(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer setSuppressesText:0];
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v11[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:requestElementsInRect:completion:];
  }

  searchField = [(SFUnifiedTabBarItemView *)self searchField];
  if ([searchField isFirstResponder])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11[0] = @"pencilTextInputElementIdentifier";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  completionCopy[2](completionCopy, v10, v9);
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  v10 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SFUnifiedTabBarItemView _scribbleInteraction:focusElement:initialFocusSelectionReferencePoint:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([elementCopy isEqual:@"pencilTextInputElementIdentifier"])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __108__SFUnifiedTabBarItemView__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v12[3] = &unk_1E721C1A8;
    v12[4] = self;
    v13 = completionCopy;
    [WeakRetained tabBarItemViewDidRequestFocusForPencilInput:self completionHandler:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)availabilityDisplayController:(id)controller didUpdateWithState:(int64_t)state
{
  controllerCopy = controller;
  if (![controllerCopy isDisplaying])
  {
    currentAvailabilityItem = self->_currentAvailabilityItem;
    self->_currentAvailabilityItem = 0;

    [(SFUnifiedTabBarItemView *)self dismissAvailabilityLabelAnimated:1 completionHandler:0];
LABEL_7:
    [(SFUnifiedTabBarItemView *)self _updateFormatMenuButtonImage];
    goto LABEL_8;
  }

  tooltip = [(SFTooltipProviding *)self->_currentTooltipProvider tooltip];

  if (tooltip)
  {
    goto LABEL_8;
  }

  currentOptions = [controllerCopy currentOptions];
  if ((currentOptions & 0x20) != 0)
  {
    makeReaderAvailabilityAction = [(SFUnifiedTabBarItemView *)self makeReaderAvailabilityAction];
LABEL_13:
    v13 = self->_currentAvailabilityItem;
    self->_currentAvailabilityItem = makeReaderAvailabilityAction;

    currentLabel = [controllerCopy currentLabel];
    [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem setTitle:currentLabel];
    goto LABEL_14;
  }

  if ((currentOptions & 0x40) != 0)
  {
    makeReaderAvailabilityAction = [(SFUnifiedTabBarItemView *)self makeTranslationAvailabilityAction];
    goto LABEL_13;
  }

  v7 = [SFUnifiedTabBarAvailabilityItem alloc];
  currentLabel = [controllerCopy currentLabel];
  v9 = [(SFUnifiedTabBarAvailabilityItem *)v7 initWithTitle:currentLabel];
  v10 = self->_currentAvailabilityItem;
  self->_currentAvailabilityItem = v9;

LABEL_14:
  title = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem title];
  [(SFUnifiedTabBarItemView *)self presentAvailabilityLabelWithText:title];

  image = [(SFUnifiedTabBarAvailabilityItem *)self->_currentAvailabilityItem image];
  if (image)
  {
    v16 = image;
    _availabilityButtonsReplaceFormatMenuButton = [(SFUnifiedTabBarItemView *)self _availabilityButtonsReplaceFormatMenuButton];

    if (_availabilityButtonsReplaceFormatMenuButton)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation
{
  presentationCopy = presentation;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__SFUnifiedTabBarItemView_availabilityDisplayController_determineBestLabelsForPresentation___block_invoke;
  v16[3] = &unk_1E721B360;
  v16[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  v6 = [presentationCopy count];
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    lastObject = [presentationCopy lastObject];
  }

  else
  {
    v8 = 0;
    while (1)
    {
      lastObject = [presentationCopy objectAtIndexedSubscript:v8];
      v10 = [lastObject count];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = 0;
      while (1)
      {
        v13 = [lastObject textForOptionsAtIndex:v12];
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

  return lastObject;
}

- (void)_hover:(id)_hover
{
  _hoverCopy = _hover;
  if (([_hoverCopy state] - 1) >= 2)
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
    [_hoverCopy locationInView:self];
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
  _showsCloseButtonOnHover = [(SFUnifiedTabBarItemView *)self _showsCloseButtonOnHover];
  v4 = _showsCloseButtonOnHover;
  if (_showsCloseButtonOnHover && !self->_closeButtonForHover)
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

- (void)setHovering:(BOOL)hovering
{
  hoveringCopy = hovering;
  if ([(SFUnifiedBarItemView *)self isHovering]!= hovering)
  {
    v5.receiver = self;
    v5.super_class = SFUnifiedTabBarItemView;
    [(SFUnifiedBarItemView *)&v5 setHovering:hoveringCopy];
    [(SFUnifiedTabBarItemView *)self _setNeedsAnimatedAccessoryButtonUpdate];
    [(SFUnifiedTabBarItemView *)self _updateCloseButtonForHover];
    [(SFUnifiedTabBarItemView *)self _updateTooltipProvider];
  }
}

- (BOOL)_showsCloseButtonOnHover
{
  isHovering = [(SFUnifiedBarItemView *)self isHovering];
  if (isHovering)
  {
    if (![(SFUnifiedTabBarItemTitleContainerView *)self->_titleContainer isNarrow]|| (isHovering = [(SFUnifiedTabBarItemView *)self _commandPressed]) != 0)
    {
      if (self->_active && ([(SFUnifiedBarItemView *)self squishedInset], v5 = v4, [(SFUnifiedTabBarItemView *)self _squishedInsetToHideCloseButton], v5 <= v6) || [(SFUnifiedBarItemView *)self isOccluded])
      {
        LOBYTE(isHovering) = 0;
      }

      else
      {
        LOBYTE(isHovering) = [(SFUnifiedTabBarItemView *)self isSelected]^ 1;
      }
    }
  }

  return isHovering;
}

- (BOOL)_commandPressed
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = ([mEMORY[0x1E69DC668] sf_currentKeyboardModifierFlags] >> 20) & 1;

  return v3;
}

- (void)_updateCloseButtonForHoverPosition
{
  barMetrics = [(SFUnifiedBarItemView *)self barMetrics];
  [barMetrics tabCloseButtonWidth];
  v5 = v4;

  contentView = [(SFUnifiedBarItemView *)self contentView];
  [contentView bounds];
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

- (id)pointerRegionIdentifierForInteractionLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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
    superview = [(SFUnifiedTabBarItemViewCloseButton *)v6 superview];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      superview2 = [(SFUnifiedTabBarItemViewCloseButton *)v6 superview];

      v14 = 0;
      v6 = superview2;
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