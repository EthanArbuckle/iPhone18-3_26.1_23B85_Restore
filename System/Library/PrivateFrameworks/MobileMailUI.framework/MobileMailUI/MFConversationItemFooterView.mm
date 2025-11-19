@interface MFConversationItemFooterView
+ (UIFont)nameFont;
+ (UIFont)prefixFont;
- (BOOL)isRevealActionsButtonHidden;
- (BOOL)isSeeMoreButtonHidden;
- (BOOL)isUndoSendButtonHidden;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldHideStickyFooterView;
- (ConversationSearchOverlayView)findOverlayView;
- (MFConversationItemFooterView)initWithFrame:(CGRect)a3;
- (MFMessageFooterViewDelegate)delegate;
- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace;
- (UIButton)seeMoreButton;
- (double)seeMoreButtonAlpha;
- (double)seeMoreButtonHeight;
- (id)_undoSendButton;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_fontMetricCacheDidInvalidate:(id)a3;
- (void)_updateBackgroundView;
- (void)_updateButtons;
- (void)_updateSeeMoreButton;
- (void)addConversationSearchOverlay;
- (void)addTarget:(id)a3 action:(SEL)a4 toButton:(int64_t)a5;
- (void)layoutActionButtonWithBounds:(CGRect)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSeeMoreButton;
- (void)layoutSubviews;
- (void)layoutUndoSendButton;
- (void)moveOriginYByOffset:(double)a3;
- (void)removeConversationSearchOverlay;
- (void)setBounds:(CGRect)a3;
- (void)setDisplayMetrics:(id)a3;
- (void)setIsSemiExpanded:(BOOL)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setSeeMoreButtonAlpha:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFConversationItemFooterView

- (MFConversationItemFooterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25.receiver = self;
  v25.super_class = MFConversationItemFooterView;
  v7 = [(MFConversationItemFooterView *)&v25 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MFConversationItemFooterView *)v7 setAccessibilityIdentifier:*MEMORY[0x277D258C0]];
    [(MFConversationItemFooterView *)v8 setInsetsLayoutMarginsFromSafeArea:0];
    v9 = [MEMORY[0x277D75348] mailConversationViewFooterBackgroundColor];
    [(MFConversationItemFooterView *)v8 setBackgroundColor:v9];

    v10 = [objc_alloc(MEMORY[0x277D756C8]) initWithDelegate:0];
    [(MFConversationItemFooterView *)v8 addInteraction:v10];
    v11 = [(MFConversationItemFooterView *)v8 layer];
    [v11 setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x277D75D68]);
      v13 = [MEMORY[0x277D75210] effectWithStyle:1100];
      v14 = [v12 initWithEffect:v13];

      [v14 setFrame:{x, y, width, height}];
      [v14 setClipsToBounds:1];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MFConversationItemFooterView *)v8 setBackgroundView:v14];
      v15 = [(MFConversationItemFooterView *)v8 backgroundView];
      [v15 setAlpha:1.0];

      [(MFConversationItemFooterView *)v8 addSubview:v14];
      [(MFConversationItemFooterView *)v8 _updateBackgroundView];
    }

    v16 = [(MFConversationItemFooterView *)v8 seeMoreButton];
    [(MFConversationItemFooterView *)v8 addSubview:v16];
    [v16 sizeToFit];
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
      v21 = [(MFConversationItemFooterView *)v8 _undoSendButton];
      undoSendButton = v8->_undoSendButton;
      v8->_undoSendButton = v21;

      [(MFConversationItemFooterView *)v8 addSubview:v8->_undoSendButton];
      [(UIButton *)v8->_undoSendButton sizeToFit];
    }

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v8 selector:sel__fontMetricCacheDidInvalidate_ name:*MEMORY[0x277CD67A0] object:0];

    [(MFConversationItemFooterView *)v8 _updateButtons];
    [(MFConversationItemFooterView *)v8 setNeedsLayout];
  }

  return v8;
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v3 setLayoutMargins:a3.top, a3.left + -7.0, a3.bottom, a3.right + -7.0];
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
  v3 = [(MFConversationItemFooterView *)self shouldHideStickyFooterView];
  v4 = [(MFConversationItemFooterView *)self backgroundView];
  [v4 setHidden:v3];
}

- (UIButton)seeMoreButton
{
  seeMoreButton = self->_seeMoreButton;
  if (!seeMoreButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    LODWORD(v5) = -1102263091;
    [(UIButton *)v4 setCharge:v5];
    v6 = [(UIButton *)v4 titleLabel];
    [v6 _setTextColorFollowsTintColor:1];

    v7 = [(UIButton *)v4 titleLabel];
    [v7 setLineBreakMode:4];

    v8 = [objc_opt_class() prefixFont];
    v9 = [(UIButton *)v4 titleLabel];
    [v9 setFont:v8];

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
  v2 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v3 = [MEMORY[0x277D75220] buttonWithConfiguration:v2 primaryAction:0];
  [v3 _setTouchInsets:{-20.0, -20.0, 20.0, 20.0}];
  v4 = [v3 titleLabel];
  [v4 setLineBreakMode:4];

  v5 = [objc_opt_class() prefixFont];
  v6 = [v3 titleLabel];
  [v6 setFont:v5];

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
    v3 = self;
    v4 = 0;
LABEL_11:

    [(MFConversationItemFooterView *)v3 setSeeMoreButtonHidden:v4];
    return;
  }

  v5 = _os_feature_enabled_impl();
  v6 = [(MFConversationItemFooterView *)self messageContainsBlockQuotes];
  if (!v5)
  {
    v4 = !v6 || [(MFConversationItemFooterView *)self blockquotesAreExpanded];
    v3 = self;
    goto LABEL_11;
  }

  if (v6 && ![(MFConversationItemFooterView *)self blockquotesAreExpanded])
  {
    v9 = [(MFConversationItemFooterView *)self undoSendButton];
    v8 = [v9 isHidden] ^ 1;
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
  v2 = [(MFConversationItemFooterView *)self seeMoreButton];
  v3 = [v2 isHidden];

  return v3;
}

- (BOOL)isRevealActionsButtonHidden
{
  v2 = [(MFConversationItemFooterView *)self revealActionsButton];
  v3 = [v2 isHidden];

  return v3;
}

- (BOOL)isUndoSendButtonHidden
{
  v2 = [(MFConversationItemFooterView *)self undoSendButton];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setSeeMoreButtonAlpha:(double)a3
{
  v4 = [(MFConversationItemFooterView *)self seeMoreButton];
  [v4 setAlpha:a3];
}

- (double)seeMoreButtonAlpha
{
  v2 = [(MFConversationItemFooterView *)self seeMoreButton];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (double)seeMoreButtonHeight
{
  v2 = [(MFConversationItemFooterView *)self seeMoreButton];
  [v2 frame];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (void)setIsSemiExpanded:(BOOL)a3
{
  if (self->_isSemiExpanded != a3)
  {
    self->_isSemiExpanded = a3;
    [(MFConversationItemFooterView *)self _updateSeeMoreButton];
  }
}

- (void)setDisplayMetrics:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_displayMetrics] & 1) == 0)
  {
    v5 = [(MFMessageDisplayMetrics *)self->_displayMetrics usePhoneLandscapeSymbolConfiguration];
    v6 = [v7 usePhoneLandscapeSymbolConfiguration];
    objc_storeStrong(&self->_displayMetrics, a3);
    if (v5 != v6)
    {
      [(MFConversationItemFooterView *)self _updateButtons];
    }

    [(MFConversationItemFooterView *)self setNeedsLayout];
  }
}

- (void)addTarget:(id)a3 action:(SEL)a4 toButton:(int64_t)a5
{
  v9 = a3;
  if (a5 == 2)
  {
    v8 = [(MFConversationItemFooterView *)self undoSendButton];
    [v8 addTarget:v9 action:a4 forControlEvents:64];
  }

  else if (a5 == 1)
  {
    v8 = [(MFConversationItemFooterView *)self revealActionsButton];
    [v8 addTarget:v9 action:a4 forControlEvents:64];
  }

  else
  {
    if (a5)
    {
      goto LABEL_8;
    }

    v8 = [(MFConversationItemFooterView *)self seeMoreButton];
    [v8 addTarget:v9 action:a4 forControlEvents:64];
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
  v9 = [(MFConversationItemFooterView *)self displayMetrics];
  [v9 estimatedFooterViewHeight];
  v11 = v10;

  [(MFConversationItemFooterView *)self setFrame:v4, v6, v8, v11];
  [(MFConversationItemFooterView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(MFConversationItemFooterView *)self backgroundView];
  [v20 setFrame:{v13, v15, v17, v19}];

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
    v29 = [(MFConversationItemFooterView *)self findOverlayView];
    [v29 setFrame:{v22, v24, v26, v28}];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v3 layoutMarginsDidChange];
  [(MFConversationItemFooterView *)self setNeedsLayout];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MFConversationItemFooterView *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v12, v10))
  {
    return 1;
  }

  v8 = [(MFConversationItemFooterView *)self seeMoreButton];
  [v8 frame];
  v11.x = x;
  v11.y = y;
  v7 = CGRectContainsPoint(v13, v11);

  return v7;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v18 = [(MFConversationItemFooterView *)self delegate];
    [v18 footerViewDidChangeHeight:self];
  }
}

- (void)layoutSeeMoreButton
{
  v3 = [(MFConversationItemFooterView *)self seeMoreButton];
  if (([v3 isHidden] & 1) == 0)
  {
    [(MFConversationItemFooterView *)self bounds];
    if (v4 != 0.0)
    {
      [v3 frame];
      rect = v5;
      v7 = v6;
      v9 = v8;
      v10 = [(MFConversationItemFooterView *)self revealActionsButton];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [(MFConversationItemFooterView *)self displayMetrics];
      [v19 footerViewTopToBaseline];
      v20 = v3;
      v21 = self;
      v22 = [MEMORY[0x277CD6870] sharedFontMetricCache];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __calculateYForSeeMoreButton_block_invoke;
      v40[3] = &unk_278181B68;
      v23 = v20;
      v41 = v23;
      [v22 cachedFloat:v40 forKey:@"footerView.seeMoreButton.labelBaselineFromTop"];

      UIRoundToViewScale();
      v25 = v24;

      if ([(MFConversationItemFooterView *)v21 effectiveUserInterfaceLayoutDirection]== 1)
      {
        v37 = v12;
        v38 = v18;
        [(MFConversationItemFooterView *)v21 layoutMargins];
        [(MFConversationItemFooterView *)v21 bounds];
        CGRectGetWidth(v42);
        v43.origin.x = v7;
        v43.size.width = rect;
        v43.origin.y = v25;
        v43.size.height = v9;
        CGRectGetWidth(v43);
        [(MFConversationItemFooterView *)v21 bounds];
        Width = CGRectGetWidth(v44);
        [(MFConversationItemFooterView *)v21 layoutMargins];
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
        [(MFConversationItemFooterView *)v21 layoutMargins];
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
      [(MFConversationItemFooterView *)v21 setDefaultSeeMoreButtonOriginY:CGRectGetMinY(v49)];
    }
  }
}

- (void)layoutUndoSendButton
{
  v25[5] = *MEMORY[0x277D85DE8];
  v3 = [(MFConversationItemFooterView *)self undoSendButton];
  if (([v3 isHidden] & 1) == 0)
  {
    [(MFConversationItemFooterView *)self bounds];
    if (v4 != 0.0)
    {
      v5 = [(MFConversationItemFooterView *)self seeMoreButton];
      if ([v5 isHidden])
      {
        v6 = [(UIButton *)self->_revealActionsButton isHidden];

        if (v6)
        {
          [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
          v7 = MEMORY[0x277CCAAD0];
          v24 = [v3 leadingAnchor];
          v21 = [(MFConversationItemFooterView *)self leadingAnchor];
          v20 = [v24 constraintEqualToAnchor:?];
          v25[0] = v20;
          v23 = [v3 centerXAnchor];
          v19 = [(MFConversationItemFooterView *)self centerXAnchor];
          v18 = [v23 constraintEqualToAnchor:?];
          v25[1] = v18;
          v22 = [v3 topAnchor];
          v17 = [(MFConversationItemFooterView *)self topAnchor];
          v8 = [v22 constraintEqualToAnchor:?];
          v25[2] = v8;
          v9 = [v3 centerYAnchor];
          v10 = [(MFConversationItemFooterView *)self centerYAnchor];
          v11 = [v9 constraintEqualToAnchor:v10];
          v25[3] = v11;
          v12 = [v3 trailingAnchor];
          v13 = [(MFConversationItemFooterView *)self trailingAnchor];
          v14 = [v12 constraintEqualToAnchor:v13];
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
  v2 = [(MFConversationItemFooterView *)self traitCollection];
  v3 = [v2 mf_hasCompactDimension];

  return v3;
}

- (void)_fontMetricCacheDidInvalidate:(id)a3
{
  v4 = [(MFConversationItemFooterView *)self displayMetrics];
  if ([v4 hasCompactLayout])
  {
    v5 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

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

  v8 = [(MFConversationItemFooterView *)self seeMoreButton];
  v9 = [v8 titleLabel];
  [v9 setNumberOfLines:v7];

  if (_os_feature_enabled_impl())
  {
    v10 = [(MFConversationItemFooterView *)self undoSendButton];
    v11 = [v10 titleLabel];
    [v11 setNumberOfLines:v7];
  }

  [(MFConversationItemFooterView *)self setNeedsLayout];
}

+ (UIFont)prefixFont
{
  v2 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_4 forKey:@"conversationItemFooterView.prefixFont"];

  return v3;
}

+ (UIFont)nameFont
{
  v2 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [v2 cachedPreferredFontForStyle:*MEMORY[0x277D76940]];

  return v3;
}

- (void)layoutActionButtonWithBounds:(CGRect)a3
{
  y = a3.origin.y;
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  v6 = [(MFConversationItemFooterView *)self revealActionsButton];
  v7 = [(MFConversationItemFooterView *)self displayMetrics];
  v8 = [(MFConversationItemFooterView *)self mf_prefersRightToLeftInterfaceLayout];
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v6;
  v16 = self;
  if (*&calculatePadding_imageWidth == 0.0)
  {
    v17 = [v15 imageView];
    [v17 bounds];
    calculatePadding_imageWidth = v18;
  }

  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = 51.0;
  v37.size.height = v14;
  CGRectGetWidth(v37);
  UIRoundToViewScale();

  [(MFConversationItemFooterView *)v16 layoutMargins];
  if (!v8)
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
  [v7 footerViewTopToBaseline];
  v35 = v15;
  v21 = v16;
  if (*&calculateFrameForActionButtonImageView_imageHeight == 0.0)
  {
    [v35 sizeToFit];
    v22 = [v35 imageView];
    [v22 bounds];
    calculateFrameForActionButtonImageView_imageHeight = CGRectGetHeight(v40);

    v23 = [v35 imageView];
    v24 = [v23 image];
    [v24 baselineOffsetFromBottom];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFConversationItemFooterView;
  [(MFConversationItemFooterView *)&v5 traitCollectionDidChange:v4];
  [(MFConversationItemFooterView *)self _updateButtons];
  [(MFConversationItemFooterView *)self _updateBackgroundView];
  [(MFConversationItemFooterView *)self _updateSeeMoreButton];
  [(MFConversationItemFooterView *)self setNeedsLayout];
}

- (void)_updateButtons
{
  v3 = [(MFConversationItemFooterView *)self shouldHideStickyFooterView];
  v4 = 0.0;
  if (!v3)
  {
    [(MFConversationItemFooterView *)self currentYOffset];
  }

  [(MFConversationItemFooterView *)self setCurrentYOffset:v4];
  v7 = [(MFConversationItemFooterView *)self displayMetrics];
  if ([v7 usePhoneLandscapeSymbolConfiguration])
  {
    v5 = 18;
  }

  else
  {
    v5 = 17;
  }

  v8 = [(MFConversationItemFooterView *)self revealActionsButton];
  v6 = [MEMORY[0x277D755B8] mf_symbolConfigurationForView:v5];
  [v8 setPreferredSymbolConfiguration:v6 forImageInState:0];
}

- (void)moveOriginYByOffset:(double)a3
{
  [(MFConversationItemFooterView *)self setCurrentYOffset:?];
  UIRoundToViewScale();
  v5 = v4;
  [(MFConversationItemFooterView *)self defaultRevealActionButtonOriginY];
  v7 = v6;
  v24 = [(MFConversationItemFooterView *)self revealActionsButton];
  [v24 frame];
  MinY = CGRectGetMinY(v30);
  v9 = v5 + v7;

  if (v9 != MinY)
  {
    v25 = [(MFConversationItemFooterView *)self revealActionsButton];
    [v25 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v26 = [(MFConversationItemFooterView *)self revealActionsButton];
    [v26 setFrame:{v11, v9, v13, v15}];

    v27 = [(MFConversationItemFooterView *)self seeMoreButton];
    [v27 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [(MFConversationItemFooterView *)self defaultSeeMoreButtonOriginY];
    v23 = v5 + v22;
    v28 = [(MFConversationItemFooterView *)self seeMoreButton];
    [v28 setFrame:{v17, v23, v19, v21}];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  if ([(MFConversationItemFooterView *)self allowsPointerSnapping])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(MFConversationItemFooterView *)self revealActionsButton:a3];
  v6 = [v5 mf_revealActionButtonPointerStyleInView:self];

  return v6;
}

- (void)addConversationSearchOverlay
{
  v3 = [(MFConversationItemFooterView *)self findOverlayView];
  [(MFConversationItemFooterView *)self bringSubviewToFront:?];

  v4 = [(MFConversationItemFooterView *)self findOverlayView];
  [v4 show];
}

- (void)removeConversationSearchOverlay
{
  v3 = [(MFConversationItemFooterView *)self findOverlayView];
  [v3 hide];

  v4 = [(MFConversationItemFooterView *)self findOverlayView];
  [(MFConversationItemFooterView *)self sendSubviewToBack:?];
}

- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (self->_seeMoreButton && ![(MFConversationItemFooterView *)self isSeeMoreButtonHidden])
  {
    [(UIButton *)self->_seeMoreButton alpha];
    if (v4 < 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      v5 = [(UIButton *)self->_seeMoreButton mf_exclusionRegionsInBaseWindowCoordinateSpace];
      [v3 addObjectsFromArray:v5];
    }
  }

  if (self->_revealActionsButton && ![(MFConversationItemFooterView *)self isRevealActionsButtonHidden])
  {
    v6 = [(UIButton *)self->_revealActionsButton mf_exclusionRegionsInBaseWindowCoordinateSpace];
    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

- (MFMessageFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end