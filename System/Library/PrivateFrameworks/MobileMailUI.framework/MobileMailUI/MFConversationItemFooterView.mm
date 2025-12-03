@interface MFConversationItemFooterView
+ (UIFont)nameFont;
+ (UIFont)prefixFont;
- (BOOL)isRevealActionsButtonHidden;
- (BOOL)isSeeMoreButtonHidden;
- (BOOL)isUndoSendButtonHidden;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldHideStickyFooterView;
- (ConversationSearchOverlayView)findOverlayView;
- (MFConversationItemFooterView)initWithFrame:(CGRect)frame;
- (MFMessageFooterViewDelegate)delegate;
- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace;
- (UIButton)seeMoreButton;
- (double)seeMoreButtonAlpha;
- (double)seeMoreButtonHeight;
- (id)_undoSendButton;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_fontMetricCacheDidInvalidate:(id)invalidate;
- (void)_updateBackgroundView;
- (void)_updateButtons;
- (void)_updateSeeMoreButton;
- (void)addConversationSearchOverlay;
- (void)addTarget:(id)target action:(SEL)action toButton:(int64_t)button;
- (void)layoutActionButtonWithBounds:(CGRect)bounds;
- (void)layoutMarginsDidChange;
- (void)layoutSeeMoreButton;
- (void)layoutSubviews;
- (void)layoutUndoSendButton;
- (void)moveOriginYByOffset:(double)offset;
- (void)removeConversationSearchOverlay;
- (void)setBounds:(CGRect)bounds;
- (void)setDisplayMetrics:(id)metrics;
- (void)setIsSemiExpanded:(BOOL)expanded;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setSeeMoreButtonAlpha:(double)alpha;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFConversationItemFooterView

- (MFConversationItemFooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25.receiver = self;
  v25.super_class = MFConversationItemFooterView;
  v7 = [(MFConversationItemFooterView *)&v25 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MFConversationItemFooterView *)v7 setAccessibilityIdentifier:*MEMORY[0x277D258C0]];
    [(MFConversationItemFooterView *)v8 setInsetsLayoutMarginsFromSafeArea:0];
    mailConversationViewFooterBackgroundColor = [MEMORY[0x277D75348] mailConversationViewFooterBackgroundColor];
    [(MFConversationItemFooterView *)v8 setBackgroundColor:mailConversationViewFooterBackgroundColor];

    v10 = [objc_alloc(MEMORY[0x277D756C8]) initWithDelegate:0];
    [(MFConversationItemFooterView *)v8 addInteraction:v10];
    layer = [(MFConversationItemFooterView *)v8 layer];
    [layer setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x277D75D68]);
      v13 = [MEMORY[0x277D75210] effectWithStyle:1100];
      v14 = [v12 initWithEffect:v13];

      [v14 setFrame:{x, y, width, height}];
      [v14 setClipsToBounds:1];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MFConversationItemFooterView *)v8 setBackgroundView:v14];
      backgroundView = [(MFConversationItemFooterView *)v8 backgroundView];
      [backgroundView setAlpha:1.0];

      [(MFConversationItemFooterView *)v8 addSubview:v14];
      [(MFConversationItemFooterView *)v8 _updateBackgroundView];
    }

    seeMoreButton = [(MFConversationItemFooterView *)v8 seeMoreButton];
    [(MFConversationItemFooterView *)v8 addSubview:seeMoreButton];
    [seeMoreButton sizeToFit];
    [(MFConversationItemFooterView *)v8 _updateSeeMoreButton];
    v17 = [MEMORY[0x277D75220] mf_revealActionsButtonWithAccessibilityIdentifier:*MEMORY[0x277D258C8]];
    revealActionsButton = v8->_revealActionsButton;
    v8->_revealActionsButton = v17;

    v19 = v8->_revealActionsButton;
    v20 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v8];
    [(UIButton *)v19 addInteraction:v20];

    [(MFConversationItemFooterView *)v8 addSubview:v8->_revealActionsButton];
    if (_os_feature_enabled_impl())
    {
      _undoSendButton = [(MFConversationItemFooterView *)v8 _undoSendButton];
      undoSendButton = v8->_undoSendButton;
      v8->_undoSendButton = _undoSendButton;

      [(MFConversationItemFooterView *)v8 addSubview:v8->_undoSendButton];
      [(UIButton *)v8->_undoSendButton sizeToFit];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__fontMetricCacheDidInvalidate_ name:*MEMORY[0x277CD67A0] object:0];

    [(MFConversationItemFooterView *)v8 _updateButtons];
    [(MFConversationItemFooterView *)v8 setNeedsLayout];
  }

  return v8;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  v3.receiver = self;
  v3.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v3 setLayoutMargins:margins.top, margins.left + -7.0, margins.bottom, margins.right + -7.0];
}

- (ConversationSearchOverlayView)findOverlayView
{
  findOverlayView = self->_findOverlayView;
  if (!findOverlayView)
  {
    v4 = [ConversationSearchOverlayView alloc];
    [(MFConversationItemFooterView *)self bounds];
    v5 = [(ConversationSearchOverlayView *)v4 initWithFrame:?];
    v6 = self->_findOverlayView;
    self->_findOverlayView = v5;

    [(MFConversationItemFooterView *)self addSubview:self->_findOverlayView];
    findOverlayView = self->_findOverlayView;
  }

  return findOverlayView;
}

- (void)_updateBackgroundView
{
  shouldHideStickyFooterView = [(MFConversationItemFooterView *)self shouldHideStickyFooterView];
  backgroundView = [(MFConversationItemFooterView *)self backgroundView];
  [backgroundView setHidden:shouldHideStickyFooterView];
}

- (UIButton)seeMoreButton
{
  seeMoreButton = self->_seeMoreButton;
  if (!seeMoreButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    LODWORD(v5) = -1102263091;
    [(UIButton *)v4 setCharge:v5];
    titleLabel = [(UIButton *)v4 titleLabel];
    [titleLabel _setTextColorFollowsTintColor:1];

    titleLabel2 = [(UIButton *)v4 titleLabel];
    [titleLabel2 setLineBreakMode:4];

    prefixFont = [objc_opt_class() prefixFont];
    titleLabel3 = [(UIButton *)v4 titleLabel];
    [titleLabel3 setFont:prefixFont];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SEE_MORE" value:&stru_2826D1AD8 table:@"Main"];
    [(UIButton *)v4 setTitle:v11 forState:0];

    [(UIButton *)v4 setAccessibilityIdentifier:*MEMORY[0x277D258D0]];
    v12 = self->_seeMoreButton;
    self->_seeMoreButton = v4;

    seeMoreButton = self->_seeMoreButton;
  }

  return seeMoreButton;
}

- (id)_undoSendButton
{
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v3 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  [v3 _setTouchInsets:{-20.0, -20.0, 20.0, 20.0}];
  titleLabel = [v3 titleLabel];
  [titleLabel setLineBreakMode:4];

  prefixFont = [objc_opt_class() prefixFont];
  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setFont:prefixFont];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"UNDO_SEND_BUTTON_TITLE" value:&stru_2826D1AD8 table:@"Main"];
  [v3 setTitle:v8 forState:0];

  [v3 setAccessibilityIdentifier:*MEMORY[0x277D258D8]];
  [v3 setHidden:1];

  return v3;
}

- (void)_updateSeeMoreButton
{
  if ([(MFConversationItemFooterView *)self isSemiExpanded])
  {
    selfCopy2 = self;
    v4 = 0;
LABEL_11:

    [(MFConversationItemFooterView *)selfCopy2 setSeeMoreButtonHidden:v4];
    return;
  }

  v5 = _os_feature_enabled_impl();
  messageContainsBlockQuotes = [(MFConversationItemFooterView *)self messageContainsBlockQuotes];
  if (!v5)
  {
    v4 = !messageContainsBlockQuotes || [(MFConversationItemFooterView *)self blockquotesAreExpanded];
    selfCopy2 = self;
    goto LABEL_11;
  }

  if (messageContainsBlockQuotes && ![(MFConversationItemFooterView *)self blockquotesAreExpanded])
  {
    undoSendButton = [(MFConversationItemFooterView *)self undoSendButton];
    v8 = [undoSendButton isHidden] ^ 1;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  [(MFConversationItemFooterView *)self setSeeMoreButtonHidden:v8];
  if (v7)
  {
  }
}

- (BOOL)isSeeMoreButtonHidden
{
  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  isHidden = [seeMoreButton isHidden];

  return isHidden;
}

- (BOOL)isRevealActionsButtonHidden
{
  revealActionsButton = [(MFConversationItemFooterView *)self revealActionsButton];
  isHidden = [revealActionsButton isHidden];

  return isHidden;
}

- (BOOL)isUndoSendButtonHidden
{
  undoSendButton = [(MFConversationItemFooterView *)self undoSendButton];
  isHidden = [undoSendButton isHidden];

  return isHidden;
}

- (void)setSeeMoreButtonAlpha:(double)alpha
{
  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  [seeMoreButton setAlpha:alpha];
}

- (double)seeMoreButtonAlpha
{
  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  [seeMoreButton alpha];
  v4 = v3;

  return v4;
}

- (double)seeMoreButtonHeight
{
  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  [seeMoreButton frame];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (void)setIsSemiExpanded:(BOOL)expanded
{
  if (self->_isSemiExpanded != expanded)
  {
    self->_isSemiExpanded = expanded;
    [(MFConversationItemFooterView *)self _updateSeeMoreButton];
  }
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([metricsCopy isEqual:self->_displayMetrics] & 1) == 0)
  {
    usePhoneLandscapeSymbolConfiguration = [(MFMessageDisplayMetrics *)self->_displayMetrics usePhoneLandscapeSymbolConfiguration];
    usePhoneLandscapeSymbolConfiguration2 = [metricsCopy usePhoneLandscapeSymbolConfiguration];
    objc_storeStrong(&self->_displayMetrics, metrics);
    if (usePhoneLandscapeSymbolConfiguration != usePhoneLandscapeSymbolConfiguration2)
    {
      [(MFConversationItemFooterView *)self _updateButtons];
    }

    [(MFConversationItemFooterView *)self setNeedsLayout];
  }
}

- (void)addTarget:(id)target action:(SEL)action toButton:(int64_t)button
{
  targetCopy = target;
  if (button == 2)
  {
    undoSendButton = [(MFConversationItemFooterView *)self undoSendButton];
    [undoSendButton addTarget:targetCopy action:action forControlEvents:64];
  }

  else if (button == 1)
  {
    undoSendButton = [(MFConversationItemFooterView *)self revealActionsButton];
    [undoSendButton addTarget:targetCopy action:action forControlEvents:64];
  }

  else
  {
    if (button)
    {
      goto LABEL_8;
    }

    undoSendButton = [(MFConversationItemFooterView *)self seeMoreButton];
    [undoSendButton addTarget:targetCopy action:action forControlEvents:64];
  }

LABEL_8:
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v30 layoutSubviews];
  [(MFConversationItemFooterView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  displayMetrics = [(MFConversationItemFooterView *)self displayMetrics];
  [displayMetrics estimatedFooterViewHeight];
  v11 = v10;

  [(MFConversationItemFooterView *)self setFrame:v4, v6, v8, v11];
  [(MFConversationItemFooterView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  backgroundView = [(MFConversationItemFooterView *)self backgroundView];
  [backgroundView setFrame:{v13, v15, v17, v19}];

  [(MFConversationItemFooterView *)self layoutActionButtonWithBounds:v13, v15, v17, v19];
  [(MFConversationItemFooterView *)self layoutSeeMoreButton];
  if (_os_feature_enabled_impl())
  {
    [(MFConversationItemFooterView *)self layoutUndoSendButton];
  }

  [(MFConversationItemFooterView *)self currentYOffset];
  [(MFConversationItemFooterView *)self moveOriginYByOffset:?];
  if (self->_findOverlayView)
  {
    [(MFConversationItemFooterView *)self bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    findOverlayView = [(MFConversationItemFooterView *)self findOverlayView];
    [findOverlayView setFrame:{v22, v24, v26, v28}];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v3 layoutMarginsDidChange];
  [(MFConversationItemFooterView *)self setNeedsLayout];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MFConversationItemFooterView *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v12, v10))
  {
    return 1;
  }

  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  [seeMoreButton frame];
  v11.x = x;
  v11.y = y;
  v7 = CGRectContainsPoint(v13, v11);

  return v7;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MFConversationItemFooterView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v19 setBounds:x, y, width, height];
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectGetHeight(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v17 = v16 - CGRectGetHeight(v21);
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  if (v17 >= 2.22044605e-16)
  {
    delegate = [(MFConversationItemFooterView *)self delegate];
    [delegate footerViewDidChangeHeight:self];
  }
}

- (void)layoutSeeMoreButton
{
  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  if (([seeMoreButton isHidden] & 1) == 0)
  {
    [(MFConversationItemFooterView *)self bounds];
    if (v4 != 0.0)
    {
      [seeMoreButton frame];
      rect = v5;
      v7 = v6;
      v9 = v8;
      revealActionsButton = [(MFConversationItemFooterView *)self revealActionsButton];
      [revealActionsButton frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      displayMetrics = [(MFConversationItemFooterView *)self displayMetrics];
      [displayMetrics footerViewTopToBaseline];
      v20 = seeMoreButton;
      selfCopy = self;
      mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __calculateYForSeeMoreButton_block_invoke;
      v40[3] = &unk_278181B68;
      v23 = v20;
      v41 = v23;
      [mEMORY[0x277CD6870] cachedFloat:v40 forKey:@"footerView.seeMoreButton.labelBaselineFromTop"];

      UIRoundToViewScale();
      v25 = v24;

      if ([(MFConversationItemFooterView *)selfCopy effectiveUserInterfaceLayoutDirection]== 1)
      {
        v37 = v12;
        v38 = v18;
        [(MFConversationItemFooterView *)selfCopy layoutMargins];
        [(MFConversationItemFooterView *)selfCopy bounds];
        CGRectGetWidth(v42);
        v43.origin.x = v7;
        v43.size.width = rect;
        v43.origin.y = v25;
        v43.size.height = v9;
        CGRectGetWidth(v43);
        [(MFConversationItemFooterView *)selfCopy bounds];
        Width = CGRectGetWidth(v44);
        [(MFConversationItemFooterView *)selfCopy layoutMargins];
        v29 = v28;
        v45.origin.x = v37;
        v45.size.height = v38;
        v45.origin.y = v14;
        v45.size.width = v16;
        MaxX = CGRectGetMaxX(v45);
        MinX = Width - v29;
      }

      else
      {
        [(MFConversationItemFooterView *)selfCopy layoutMargins];
        v33 = v32;
        v46.origin.x = v12;
        v46.origin.y = v14;
        v46.size.width = v16;
        v46.size.height = v18;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v33;
        v47.origin.y = v25;
        v47.size.width = rect;
        v47.size.height = v9;
        MaxX = CGRectGetMinX(v47);
      }

      UIRoundToViewScale();
      x = v48.origin.x;
      v48.origin.y = v25;
      v48.size.width = rect;
      v48.size.height = v9;
      v35 = CGRectGetWidth(v48);
      if (v35 >= MinX - (MaxX + 10.0))
      {
        v36 = MinX - (MaxX + 10.0);
      }

      else
      {
        v36 = v35;
      }

      [v23 setFrame:{x, v25, v36, v9}];
      v49.origin.x = x;
      v49.origin.y = v25;
      v49.size.width = v36;
      v49.size.height = v9;
      [(MFConversationItemFooterView *)selfCopy setDefaultSeeMoreButtonOriginY:CGRectGetMinY(v49)];
    }
  }
}

- (void)layoutUndoSendButton
{
  v25[5] = *MEMORY[0x277D85DE8];
  undoSendButton = [(MFConversationItemFooterView *)self undoSendButton];
  if (([undoSendButton isHidden] & 1) == 0)
  {
    [(MFConversationItemFooterView *)self bounds];
    if (v4 != 0.0)
    {
      seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
      if ([seeMoreButton isHidden])
      {
        isHidden = [(UIButton *)self->_revealActionsButton isHidden];

        if (isHidden)
        {
          [undoSendButton setTranslatesAutoresizingMaskIntoConstraints:0];
          v7 = MEMORY[0x277CCAAD0];
          leadingAnchor = [undoSendButton leadingAnchor];
          leadingAnchor2 = [(MFConversationItemFooterView *)self leadingAnchor];
          v20 = [leadingAnchor constraintEqualToAnchor:?];
          v25[0] = v20;
          centerXAnchor = [undoSendButton centerXAnchor];
          centerXAnchor2 = [(MFConversationItemFooterView *)self centerXAnchor];
          v18 = [centerXAnchor constraintEqualToAnchor:?];
          v25[1] = v18;
          topAnchor = [undoSendButton topAnchor];
          topAnchor2 = [(MFConversationItemFooterView *)self topAnchor];
          v8 = [topAnchor constraintEqualToAnchor:?];
          v25[2] = v8;
          centerYAnchor = [undoSendButton centerYAnchor];
          centerYAnchor2 = [(MFConversationItemFooterView *)self centerYAnchor];
          v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v25[3] = v11;
          trailingAnchor = [undoSendButton trailingAnchor];
          trailingAnchor2 = [(MFConversationItemFooterView *)self trailingAnchor];
          v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v25[4] = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
          [v7 activateConstraints:v15];
        }
      }

      else
      {
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHideStickyFooterView
{
  traitCollection = [(MFConversationItemFooterView *)self traitCollection];
  mf_hasCompactDimension = [traitCollection mf_hasCompactDimension];

  return mf_hasCompactDimension;
}

- (void)_fontMetricCacheDidInvalidate:(id)invalidate
{
  displayMetrics = [(MFConversationItemFooterView *)self displayMetrics];
  if ([displayMetrics hasCompactLayout])
  {
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {

    v7 = 1;
  }

  seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
  titleLabel = [seeMoreButton titleLabel];
  [titleLabel setNumberOfLines:v7];

  if (_os_feature_enabled_impl())
  {
    undoSendButton = [(MFConversationItemFooterView *)self undoSendButton];
    titleLabel2 = [undoSendButton titleLabel];
    [titleLabel2 setNumberOfLines:v7];
  }

  [(MFConversationItemFooterView *)self setNeedsLayout];
}

+ (UIFont)prefixFont
{
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [mEMORY[0x277CD6870] cachedFont:&__block_literal_global_4 forKey:@"conversationItemFooterView.prefixFont"];

  return v3;
}

+ (UIFont)nameFont
{
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [mEMORY[0x277CD6870] cachedPreferredFontForStyle:*MEMORY[0x277D76940]];

  return v3;
}

- (void)layoutActionButtonWithBounds:(CGRect)bounds
{
  y = bounds.origin.y;
  height = bounds.size.height;
  width = bounds.size.width;
  x = bounds.origin.x;
  revealActionsButton = [(MFConversationItemFooterView *)self revealActionsButton];
  displayMetrics = [(MFConversationItemFooterView *)self displayMetrics];
  mf_prefersRightToLeftInterfaceLayout = [(MFConversationItemFooterView *)self mf_prefersRightToLeftInterfaceLayout];
  [revealActionsButton frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = revealActionsButton;
  selfCopy = self;
  if (*&calculatePadding_imageWidth == 0.0)
  {
    imageView = [v15 imageView];
    [imageView bounds];
    calculatePadding_imageWidth = v18;
  }

  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = 51.0;
  v37.size.height = v14;
  CGRectGetWidth(v37);
  UIRoundToViewScale();

  [(MFConversationItemFooterView *)selfCopy layoutMargins];
  if (!mf_prefersRightToLeftInterfaceLayout)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.height = height;
    v38.size.width = width;
    CGRectGetWidth(v38);
    v39.origin.x = v10;
    v39.origin.y = v12;
    v39.size.width = 51.0;
    v39.size.height = v14;
    CGRectGetWidth(v39);
  }

  UIRoundToViewScale();
  v20 = v19;
  [displayMetrics footerViewTopToBaseline];
  v35 = v15;
  v21 = selfCopy;
  if (*&calculateFrameForActionButtonImageView_imageHeight == 0.0)
  {
    [v35 sizeToFit];
    imageView2 = [v35 imageView];
    [imageView2 bounds];
    calculateFrameForActionButtonImageView_imageHeight = CGRectGetHeight(v40);

    imageView3 = [v35 imageView];
    image = [imageView3 image];
    [image baselineOffsetFromBottom];
    calculateFrameForActionButtonImageView_imageBaselineOffset = v25;
  }

  UIRoundToViewScale();
  v27 = v26;
  v28 = *&calculateFrameForActionButtonImageView_imageHeight;

  v29 = -v27;
  if (v27 + v28 - (y + height) > -v27)
  {
    v29 = v27 + v28 - (y + height);
  }

  v30 = v20 + 0.0;
  v31 = v27 + v29;
  v32 = v28 - (v29 + v29);
  [v35 setFrame:{v30, v31, 51.0, v32}];
  v41.origin.x = v30;
  v41.origin.y = v31;
  v41.size.width = 51.0;
  v41.size.height = v32;
  [(MFConversationItemFooterView *)v21 setDefaultRevealActionButtonOriginY:CGRectGetMinY(v41)];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v5 traitCollectionDidChange:changeCopy];
  [(MFConversationItemFooterView *)self _updateButtons];
  [(MFConversationItemFooterView *)self _updateBackgroundView];
  [(MFConversationItemFooterView *)self _updateSeeMoreButton];
  [(MFConversationItemFooterView *)self setNeedsLayout];
}

- (void)_updateButtons
{
  shouldHideStickyFooterView = [(MFConversationItemFooterView *)self shouldHideStickyFooterView];
  v4 = 0.0;
  if (!shouldHideStickyFooterView)
  {
    [(MFConversationItemFooterView *)self currentYOffset];
  }

  [(MFConversationItemFooterView *)self setCurrentYOffset:v4];
  displayMetrics = [(MFConversationItemFooterView *)self displayMetrics];
  if ([displayMetrics usePhoneLandscapeSymbolConfiguration])
  {
    v5 = 18;
  }

  else
  {
    v5 = 17;
  }

  revealActionsButton = [(MFConversationItemFooterView *)self revealActionsButton];
  v6 = [MEMORY[0x277D755B8] mf_symbolConfigurationForView:v5];
  [revealActionsButton setPreferredSymbolConfiguration:v6 forImageInState:0];
}

- (void)moveOriginYByOffset:(double)offset
{
  [(MFConversationItemFooterView *)self setCurrentYOffset:?];
  UIRoundToViewScale();
  v5 = v4;
  [(MFConversationItemFooterView *)self defaultRevealActionButtonOriginY];
  v7 = v6;
  revealActionsButton = [(MFConversationItemFooterView *)self revealActionsButton];
  [revealActionsButton frame];
  MinY = CGRectGetMinY(v30);
  v9 = v5 + v7;

  if (v9 != MinY)
  {
    revealActionsButton2 = [(MFConversationItemFooterView *)self revealActionsButton];
    [revealActionsButton2 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    revealActionsButton3 = [(MFConversationItemFooterView *)self revealActionsButton];
    [revealActionsButton3 setFrame:{v11, v9, v13, v15}];

    seeMoreButton = [(MFConversationItemFooterView *)self seeMoreButton];
    [seeMoreButton frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [(MFConversationItemFooterView *)self defaultSeeMoreButtonOriginY];
    v23 = v5 + v22;
    seeMoreButton2 = [(MFConversationItemFooterView *)self seeMoreButton];
    [seeMoreButton2 setFrame:{v17, v23, v19, v21}];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  if ([(MFConversationItemFooterView *)self allowsPointerSnapping])
  {
    v7 = regionCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(MFConversationItemFooterView *)self revealActionsButton:interaction];
  v6 = [v5 mf_revealActionButtonPointerStyleInView:self];

  return v6;
}

- (void)addConversationSearchOverlay
{
  findOverlayView = [(MFConversationItemFooterView *)self findOverlayView];
  [(MFConversationItemFooterView *)self bringSubviewToFront:?];

  findOverlayView2 = [(MFConversationItemFooterView *)self findOverlayView];
  [findOverlayView2 show];
}

- (void)removeConversationSearchOverlay
{
  findOverlayView = [(MFConversationItemFooterView *)self findOverlayView];
  [findOverlayView hide];

  findOverlayView2 = [(MFConversationItemFooterView *)self findOverlayView];
  [(MFConversationItemFooterView *)self sendSubviewToBack:?];
}

- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace
{
  array = [MEMORY[0x277CBEB18] array];
  if (self->_seeMoreButton && ![(MFConversationItemFooterView *)self isSeeMoreButtonHidden])
  {
    [(UIButton *)self->_seeMoreButton alpha];
    if (v4 < 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      mf_exclusionRegionsInBaseWindowCoordinateSpace = [(UIButton *)self->_seeMoreButton mf_exclusionRegionsInBaseWindowCoordinateSpace];
      [array addObjectsFromArray:mf_exclusionRegionsInBaseWindowCoordinateSpace];
    }
  }

  if (self->_revealActionsButton && ![(MFConversationItemFooterView *)self isRevealActionsButtonHidden])
  {
    mf_exclusionRegionsInBaseWindowCoordinateSpace2 = [(UIButton *)self->_revealActionsButton mf_exclusionRegionsInBaseWindowCoordinateSpace];
    [array addObjectsFromArray:mf_exclusionRegionsInBaseWindowCoordinateSpace2];
  }

  return array;
}

- (MFMessageFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end