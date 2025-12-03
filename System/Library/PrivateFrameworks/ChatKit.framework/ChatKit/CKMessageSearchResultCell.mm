@interface CKMessageSearchResultCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKGradientReferenceView)gradientReferenceView;
- (CKMessageSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (id)_annotatedResultStringForResult:(id)result searchText:(id)text;
- (id)_balloonFilterForUserInterfaceStyle:(int64_t)style;
- (void)_configureAvatarForResult:(id)result;
- (void)_configureBalloonViewForResult:(id)result searchText:(id)text;
- (void)_configureDateLabelForResult:(id)result;
- (void)_configureLabelFonts;
- (void)_configureSenderLabelForResult:(id)result searchText:(id)text;
- (void)_internalInit;
- (void)_layoutInternalSubviews;
- (void)_proposedBalloonY:(double *)y afterLayoutForView:(id)view;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode visibilityContext:(CKMessageSearchResultVisibilityContext *)context gradientReferenceView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVisibilityContext:(CKMessageSearchResultVisibilityContext *)context;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKMessageSearchResultCell

- (CKMessageSearchResultCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKMessageSearchResultCell;
  v3 = [(CKMessageSearchResultCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKMessageSearchResultCell *)v3 _internalInit];
  }

  return v4;
}

- (void)_internalInit
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CKLabel);
  [(CKLabel *)v3 setAdjustsFontForContentSizeCategory:1];
  v4 = +[CKUIBehavior sharedBehaviors];
  searchMessagesDMConversationFont = [v4 searchMessagesDMConversationFont];
  [(CKLabel *)v3 setFont:searchMessagesDMConversationFont];

  [(CKLabel *)v3 setLineBreakMode:4];
  [(CKLabel *)v3 setNumberOfLines:0];
  [(CKLabel *)v3 setOpaque:0];
  [(CKLabel *)v3 setTextAlignment:4];
  v6 = +[CKUIBehavior sharedBehaviors];
  searchMessagesConversationLabelColor = [v6 searchMessagesConversationLabelColor];
  [(CKLabel *)v3 setTextColor:searchMessagesConversationLabelColor];

  contentView = [(CKMessageSearchResultCell *)self contentView];
  [contentView addSubview:v3];

  objc_storeStrong(&self->_conversationNameLabel, v3);
  v9 = objc_alloc_init(CKLabel);
  [(CKLabel *)v9 setAdjustsFontForContentSizeCategory:1];
  v10 = +[CKUIBehavior sharedBehaviors];
  searchMessagesSenderFont = [v10 searchMessagesSenderFont];
  [(CKLabel *)v9 setFont:searchMessagesSenderFont];

  [(CKLabel *)v9 setLineBreakMode:4];
  [(CKLabel *)v9 setNumberOfLines:0];
  [(CKLabel *)v9 setOpaque:0];
  [(CKLabel *)v9 setTextAlignment:4];
  v12 = +[CKUIBehavior sharedBehaviors];
  searchMessagesSenderLabelColor = [v12 searchMessagesSenderLabelColor];
  [(CKLabel *)v9 setTextColor:searchMessagesSenderLabelColor];

  contentView2 = [(CKMessageSearchResultCell *)self contentView];
  [contentView2 addSubview:v9];

  objc_storeStrong(&self->_senderLabel, v9);
  v15 = objc_alloc_init(CKDateLabel);
  [(CKDateLabel *)v15 setAdjustsFontForContentSizeCategory:1];
  v16 = +[CKUIBehavior sharedBehaviors];
  searchMessagesDateFont = [v16 searchMessagesDateFont];
  [(CKDateLabel *)v15 setFont:searchMessagesDateFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(CKDateLabel *)v15 setTextColor:secondaryLabelColor];

  [(CKDateLabel *)v15 setNumberOfLines:0];
  [(CKDateLabel *)v15 setOpaque:0];
  contentView3 = [(CKMessageSearchResultCell *)self contentView];
  [contentView3 addSubview:v15];

  objc_storeStrong(&self->_dateLabel, v15);
  v20 = [CKTextBalloonView alloc];
  v21 = [(CKTextBalloonView *)v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKTextBalloonView *)v21 setUserInteractionEnabled:0];
  [(CKColoredBalloonView *)v21 setWantsGradient:0];
  contentView4 = [(CKMessageSearchResultCell *)self contentView];
  [contentView4 addSubview:v21];

  objc_storeStrong(&self->_balloonView, v21);
  v23 = +[CKUIBehavior sharedBehaviors];
  chevronImage = [v23 chevronImage];

  [chevronImage size];
  v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v25, v26}];
  [v27 setContentMode:4];
  v28 = +[CKUIBehavior sharedBehaviors];
  theme = [v28 theme];
  conversationListChevronColor = [theme conversationListChevronColor];
  [v27 setTintColor:conversationListChevronColor];

  [v27 setImage:chevronImage];
  contentView5 = [(CKMessageSearchResultCell *)self contentView];
  [contentView5 addSubview:v27];

  objc_storeStrong(&self->_chevronImageView, v27);
  v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v32 setBackgroundColor:separatorColor];

  contentView6 = [(CKMessageSearchResultCell *)self contentView];
  [contentView6 addSubview:v32];

  objc_storeStrong(&self->_groupingSeparatorView, v32);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(conversationListChevronColor) = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (conversationListChevronColor)
  {
    v38[0] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v37 = [(CKMessageSearchResultCell *)self registerForTraitChanges:v36 withHandler:&__block_literal_global_250];
  }
}

void __42__CKMessageSearchResultCell__internalInit__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = [v2 traitCollection];
  v3 = [v11 isTranscriptBackgroundActive];
  v4 = [v2 traitOverrides];

  if (v3)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];

    v7 = [v6 searchResultsBackgroundColor];
    v8 = [v7 resolvedColorForTraitCollection:v11];
    [v8 _luminance];
    v10 = v9;

    [v4 setCGFloatValue:objc_opt_class() forTrait:v10];
  }

  else
  {
    [v4 removeTrait:objc_opt_class()];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v26.receiver = self;
  v26.super_class = CKMessageSearchResultCell;
  changeCopy = change;
  [(CKMessageSearchResultCell *)&v26 traitCollectionDidChange:changeCopy];
  traitCollection = [(CKMessageSearchResultCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  balloonView = [(CKMessageSearchResultCell *)self balloonView];
  v8 = balloonView;
  if (balloonView)
  {
    [balloonView balloonDescriptor];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  *(&v24 + 1) = userInterfaceStyle;
  balloonView2 = [(CKMessageSearchResultCell *)self balloonView];
  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[7] = v25;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  [balloonView2 setBalloonDescriptor:v17];

  balloonView3 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView3 setNeedsPrepareForDisplay];

  balloonView4 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView4 prepareForDisplay];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle2 != userInterfaceStyle)
  {
    v13 = [(CKMessageSearchResultCell *)self _balloonFilterForUserInterfaceStyle:userInterfaceStyle];
    v14 = [MEMORY[0x1E6979378] filterWithType:v13];
    balloonView5 = [(CKMessageSearchResultCell *)self balloonView];
    layer = [balloonView5 layer];
    [layer setCompositingFilter:v14];
  }

  [(CKMessageSearchResultCell *)self setNeedsLayout];
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode visibilityContext:(CKMessageSearchResultVisibilityContext *)context gradientReferenceView:(id)view
{
  viewCopy = view;
  textCopy = text;
  resultCopy = result;
  -[CKMessageSearchResultCell setIsFromMe:](self, "setIsFromMe:", [resultCopy isFromMe]);
  conversation = [resultCopy conversation];
  -[CKMessageSearchResultCell setIsFromGroupConversation:](self, "setIsFromGroupConversation:", [conversation isGroupConversation]);

  v16 = *context;
  [(CKMessageSearchResultCell *)self setVisibilityContext:&v16];
  [(CKMessageSearchResultCell *)self setGradientReferenceView:viewCopy];

  [(CKMessageSearchResultCell *)self configureWithQueryResult:resultCopy searchText:textCopy mode:mode];
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  textCopy = text;
  resultCopy = result;
  [(CKMessageSearchResultCell *)self _configureBalloonViewForResult:resultCopy searchText:textCopy];
  [(CKMessageSearchResultCell *)self _configureAvatarForResult:resultCopy];
  [(CKMessageSearchResultCell *)self _configureSenderLabelForResult:resultCopy searchText:textCopy];

  [(CKMessageSearchResultCell *)self _configureDateLabelForResult:resultCopy];

  [(CKMessageSearchResultCell *)self _configureLabelFonts];
}

- (void)_configureLabelFonts
{
  isFromGroupConversation = [(CKMessageSearchResultCell *)self isFromGroupConversation];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (isFromGroupConversation)
  {
    [v4 searchMessagesGroupConversationFont];
  }

  else
  {
    [v4 searchMessagesDMConversationFont];
  }
  v10 = ;

  conversationNameLabel = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [conversationNameLabel setFont:v10];

  v7 = +[CKUIBehavior sharedBehaviors];
  searchMessagesSenderFont = [v7 searchMessagesSenderFont];
  senderLabel = [(CKMessageSearchResultCell *)self senderLabel];
  [senderLabel setFont:searchMessagesSenderFont];
}

- (void)_configureSenderLabelForResult:(id)result searchText:(id)text
{
  resultCopy = result;
  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    firstObject = 0;
  }

  else
  {
    item = [resultCopy item];
    attributeSet = [item attributeSet];
    attributeDictionary = [attributeSet attributeDictionary];
    v9 = [attributeDictionary valueForKey:*MEMORY[0x1E6963D18]];

    firstObject = [v9 firstObject];
  }

  conversation = [resultCopy conversation];
  if ([conversation hasDisplayName])
  {
    [conversation displayName];
  }

  else
  {
    [conversation name];
  }
  v11 = ;
  conversationNameLabel = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [conversationNameLabel setText:v11];

  if ([(CKMessageSearchResultCell *)self isFromGroupConversation])
  {
    v13 = firstObject;
  }

  else
  {
    v13 = 0;
  }

  senderLabel = [(CKMessageSearchResultCell *)self senderLabel];
  [senderLabel setText:v13];
}

- (void)_configureDateLabelForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];

  dateLabel = [(CKMessageSearchResultCell *)self dateLabel];
  [dateLabel setDate:contentCreationDate];
}

- (void)_configureBalloonViewForResult:(id)result searchText:(id)text
{
  resultCopy = result;
  v7 = [(CKMessageSearchResultCell *)self _annotatedResultStringForResult:resultCopy searchText:text];
  service = [resultCopy service];

  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    __ck_displayColor = [service __ck_displayColor];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    __ck_displayColor = -1;
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKMessageSearchResultCell *)self traitCollection];
  v13 = *MEMORY[0x1E69A6E08];
  v14 = *(MEMORY[0x1E69A6E08] + 8);
  v15 = *(MEMORY[0x1E69A6E08] + 16);
  v16 = *(MEMORY[0x1E69A6E08] + 24);
  [v11 balloonCornerRadius];
  v18 = v17;
  memset(v44, 0, sizeof(v44));
  memset(v54, 0, sizeof(v54));
  v58 = 0;
  v59 = 0;
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  balloonView = [(CKMessageSearchResultCell *)self balloonView];
  v37 = 256;
  v38 = 0;
  v39 = v10;
  v40 = 0;
  v41 = -1;
  v42 = v18;
  v43 = __ck_displayColor;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = 0;
  v55 = userInterfaceStyle;
  memset(v56, 0, sizeof(v56));
  v57 = 1;
  [balloonView setBalloonDescriptor:&v37];

  balloonView2 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView2 setAttributedText:v7];

  balloonView3 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView3 setHasTail:1];

  balloonView4 = [(CKMessageSearchResultCell *)self balloonView];
  gradientReferenceView = [(CKMessageSearchResultCell *)self gradientReferenceView];
  [balloonView4 setGradientReferenceView:gradientReferenceView];

  balloonView5 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView5 setNeedsPrepareForDisplay];

  balloonView6 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView6 prepareForDisplay];

  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    balloonView7 = [(CKMessageSearchResultCell *)self balloonView];
    layer = [balloonView7 layer];
    [layer setCompositingFilter:0];

    contentView = [(CKMessageSearchResultCell *)self contentView];
    layer2 = [contentView layer];
    [layer2 setAllowsGroupBlending:1];
  }

  else
  {
    traitCollection2 = [(CKMessageSearchResultCell *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

    contentView = [(CKMessageSearchResultCell *)self _balloonFilterForUserInterfaceStyle:userInterfaceStyle2];
    layer2 = [MEMORY[0x1E6979378] filterWithType:contentView];
    balloonView8 = [(CKMessageSearchResultCell *)self balloonView];
    layer3 = [balloonView8 layer];
    [layer3 setCompositingFilter:layer2];

    contentView2 = [(CKMessageSearchResultCell *)self contentView];
    layer4 = [contentView2 layer];
    [layer4 setAllowsGroupBlending:0];
  }
}

- (void)_configureAvatarForResult:(id)result
{
  resultCopy = result;
  isFromMe = [(CKMessageSearchResultCell *)self isFromMe];
  avatarView = self->_avatarView;
  if (isFromMe)
  {
    [(CKAvatarView *)avatarView removeFromSuperview];
    conversation = self->_avatarView;
    self->_avatarView = 0;
  }

  else
  {
    if (!avatarView)
    {
      v7 = *MEMORY[0x1E695EFF8];
      v8 = *(MEMORY[0x1E695EFF8] + 8);
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 searchMessagesAvatarSize];
      v11 = v10;
      v13 = v12;

      v14 = [[CKAvatarView alloc] initWithFrame:v7, v8, v11, v13];
      v15 = self->_avatarView;
      self->_avatarView = v14;

      [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
      [(CKAvatarView *)self->_avatarView setUserInteractionEnabled:0];
      [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
      [(CNAvatarView *)self->_avatarView setDelegate:0];
      [(CNAvatarView *)self->_avatarView setBypassActionValidation:1];
      contentView = [(CKMessageSearchResultCell *)self contentView];
      [contentView addSubview:self->_avatarView];

      avatarView = self->_avatarView;
    }

    if ([(CNAvatarView *)avatarView isDisplayingContent])
    {
      [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
    }

    conversation = [resultCopy conversation];
    if ([conversation isBusinessConversation])
    {
      maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
      v18 = [conversation conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
      v19 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v18];
    }

    else
    {
      v18 = [CKSpotlightQueryResultUtilities contactForResult:resultCopy];
      [(CNAvatarView *)self->_avatarView setContact:v18];
    }

    -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [conversation shouldHaveRoundRectAvatar]);
    [(CKMessageSearchResultCell *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKMessageSearchResultCell *)self layoutIfNeeded:fits.width];
  contentView = [(CKMessageSearchResultCell *)self contentView];
  [contentView bounds];
  v6 = v5;

  balloonView = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView frame];
  MaxY = CGRectGetMaxY(v13);
  [(CKMessageSearchResultCell *)self visibilityContext];

  v9 = v6;
  v10 = MaxY + v11;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKMessageSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 layoutSubviews];
  [(CKMessageSearchResultCell *)self _layoutInternalSubviews];
}

- (void)_layoutInternalSubviews
{
  [(CKMessageSearchResultCell *)self marginInsets];
  v4 = v3;
  [(CKMessageSearchResultCell *)self marginInsets];
  v6 = v5;
  contentView = [(CKMessageSearchResultCell *)self contentView];
  [contentView bounds];
  v9 = v8;

  _shouldReverseLayoutDirection = [(CKMessageSearchResultCell *)self _shouldReverseLayoutDirection];
  v11 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v11 isAccessibilityPreferredContentSizeCategory];

  v141 = v9 - v4;
  v13 = v9 - v4 - v6;
  dateLabel = [(CKMessageSearchResultCell *)self dateLabel];
  [dateLabel sizeThatFits:{v13, 1.79769313e308}];
  v16 = v15;
  v18 = v17;

  dateLabel2 = [(CKMessageSearchResultCell *)self dateLabel];
  [dateLabel2 setFrame:{0.0, 0.0, v16, v18}];

  if ((isAccessibilityPreferredContentSizeCategory & 1) != 0 || v16 > v13 / 3.0)
  {
    v20 = 1;
    v21 = v9 - v4 - v6;
  }

  else
  {
    v20 = 0;
    v21 = v13 - v16;
  }

  conversationNameLabel = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [conversationNameLabel sizeThatFits:{v21, 1.79769313e308}];
  v24 = v23;
  v26 = v25;

  conversationNameLabel2 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [conversationNameLabel2 setFrame:{0.0, 0.0, v24, v26}];

  senderLabel = [(CKMessageSearchResultCell *)self senderLabel];
  [senderLabel sizeThatFits:{v21, 1.79769313e308}];
  v30 = v29;
  v32 = v31;

  senderLabel2 = [(CKMessageSearchResultCell *)self senderLabel];
  [senderLabel2 setFrame:{0.0, 0.0, v30, v32}];

  [(CKMessageSearchResultCell *)self visibilityContext];
  v34 = *&v149[2];
  [(CKMessageSearchResultCell *)self visibilityContext];
  v149[0] = v148;
  [(CKMessageSearchResultCell *)self visibilityContext];
  conversationNameLabel3 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  conversationNameLabel8 = conversationNameLabel3;
  if (v147 == 1)
  {
    [conversationNameLabel3 setHidden:0];

    conversationNameLabel4 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [conversationNameLabel4 frame];
    v39 = v38;
    conversationNameLabel5 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [conversationNameLabel5 frame];
    v42 = v41;
    conversationNameLabel6 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [conversationNameLabel6 setFrame:{v4, v34, v39, v42}];

    conversationNameLabel7 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    conversationNameLabel8 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:conversationNameLabel8];
  }

  else
  {
    [conversationNameLabel3 setHidden:1];
    conversationNameLabel7 = 0;
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v146 == 1)
  {
    [(CKMessageSearchResultCell *)self visibilityContext];
    if (v145 == 1)
    {
      [conversationNameLabel7 frame];
      MaxY = CGRectGetMaxY(v150);
      v46 = +[CKUIBehavior sharedBehaviors];
      [v46 searchMessagesConversationToSenderSpacing];
      v34 = MaxY + v47;
    }

    senderLabel3 = [(CKMessageSearchResultCell *)self senderLabel];
    [senderLabel3 setHidden:0];

    senderLabel4 = [(CKMessageSearchResultCell *)self senderLabel];
    [senderLabel4 frame];
    v51 = v50;
    senderLabel5 = [(CKMessageSearchResultCell *)self senderLabel];
    [senderLabel5 frame];
    v54 = v53;
    senderLabel6 = [(CKMessageSearchResultCell *)self senderLabel];
    [senderLabel6 setFrame:{v4, v34, v51, v54}];

    senderLabel7 = [(CKMessageSearchResultCell *)self senderLabel];

    senderLabel8 = [(CKMessageSearchResultCell *)self senderLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:senderLabel8];
    conversationNameLabel7 = senderLabel7;
  }

  else
  {
    senderLabel8 = [(CKMessageSearchResultCell *)self senderLabel];
    [senderLabel8 setHidden:0];
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v144 == 1)
  {
    if (v20)
    {
      [conversationNameLabel7 frame];
      v58 = CGRectGetMaxY(v151);
      dateLabel3 = +[CKUIBehavior sharedBehaviors];
      [dateLabel3 searchMessagesConversationToSenderSpacing];
      v34 = v58 + v60;
      v61 = v4;
    }

    else
    {
      dateLabel3 = [(CKMessageSearchResultCell *)self dateLabel];
      [dateLabel3 frame];
      v61 = v9 - v6 - v63;
    }

    dateLabel4 = [(CKMessageSearchResultCell *)self dateLabel];

    dateLabel5 = [(CKMessageSearchResultCell *)self dateLabel];
    [dateLabel5 setHidden:0];

    dateLabel6 = [(CKMessageSearchResultCell *)self dateLabel];
    [dateLabel6 frame];
    v68 = v67;
    dateLabel7 = [(CKMessageSearchResultCell *)self dateLabel];
    [dateLabel7 frame];
    v71 = v70;
    dateLabel8 = [(CKMessageSearchResultCell *)self dateLabel];
    [dateLabel8 setFrame:{v61, v34, v68, v71}];

    dateLabel9 = [(CKMessageSearchResultCell *)self dateLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:dateLabel9];
    conversationNameLabel7 = dateLabel4;
  }

  else
  {
    dateLabel9 = [(CKMessageSearchResultCell *)self dateLabel];
    [dateLabel9 setHidden:1];
  }

  v73 = *v149;
  if (conversationNameLabel7)
  {
    v74 = +[CKUIBehavior sharedBehaviors];
    [v74 searchMessagesSenderToBalloonSpacing];
    v73 = v73 + v75;
  }

  chevronImageView = [(CKMessageSearchResultCell *)self chevronImageView];
  [chevronImageView frame];
  v78 = v77;
  v80 = v79;

  v81 = +[CKUIBehavior sharedBehaviors];
  [v81 searchMessagesHorizontalBalloonMargin];
  v83 = v13 - v78 - v82;

  balloonView = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView sizeThatFits:{v83, 1.79769313e308}];
  v86 = v85;
  v88 = v87;

  v89 = v9 - v6;
  v90 = v4;
  if (!_shouldReverseLayoutDirection)
  {
    v4 = v89 - v78;
  }

  v142 = v90;
  v91 = v73;
  v92 = v86;
  v93 = v88;
  v94 = CGRectGetMidY(*&v90) - v80 * 0.5;
  chevronImageView2 = [(CKMessageSearchResultCell *)self chevronImageView];
  v140 = v4;
  [chevronImageView2 setFrame:{v4, v94, v78, v80}];

  isFromMe = [(CKMessageSearchResultCell *)self isFromMe];
  if (_shouldReverseLayoutDirection)
  {
    if (isFromMe)
    {
      v97 = v89 - v86;
LABEL_30:
      v110 = v142;
      goto LABEL_32;
    }

    chevronImageView3 = [(CKMessageSearchResultCell *)self chevronImageView];
    [chevronImageView3 frame];
    MaxX = CGRectGetMaxX(v153);
    v100 = +[CKUIBehavior sharedBehaviors];
    [v100 searchMessagesBalloonToChevronSpacing];
    v104 = MaxX + v103;
    v105 = +[CKUIBehavior sharedBehaviors];
    [v105 searchMessagesAvatarSize];
    v107 = v104 + v106;
    v108 = +[CKUIBehavior sharedBehaviors];
    [v108 contactPhotoBalloonMargin];
    v97 = v107 + v109;

LABEL_29:
    goto LABEL_30;
  }

  if (isFromMe)
  {
    chevronImageView3 = [(CKMessageSearchResultCell *)self chevronImageView];
    [chevronImageView3 frame];
    MinX = CGRectGetMinX(v152);
    v100 = +[CKUIBehavior sharedBehaviors];
    [v100 searchMessagesBalloonToChevronSpacing];
    v97 = MinX - v101 - v86;
    goto LABEL_29;
  }

  v111 = +[CKUIBehavior sharedBehaviors];
  [v111 searchMessagesAvatarSize];
  v110 = v142;
  v113 = v142 + v112;
  v114 = +[CKUIBehavior sharedBehaviors];
  [v114 contactPhotoBalloonMargin];
  v97 = v113 + v115;

LABEL_32:
  balloonView2 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView2 setFrame:{v97, v73, v86, v88}];

  avatarView = [(CKMessageSearchResultCell *)self avatarView];
  [avatarView frame];
  v119 = v118;
  v121 = v120;

  v122 = v110;
  if (_shouldReverseLayoutDirection)
  {
    chevronImageView4 = [(CKMessageSearchResultCell *)self chevronImageView];
    [chevronImageView4 frame];
    v124 = CGRectGetMaxX(v154);
    v125 = +[CKUIBehavior sharedBehaviors];
    [v125 searchMessagesBalloonToChevronSpacing];
    v122 = v124 + v126;
  }

  balloonView3 = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView3 frame];
  v128 = CGRectGetMaxY(v155);
  v129 = +[CKUIBehavior sharedBehaviors];
  [v129 searchMessagesAvatarSize];
  v131 = v128 - v130;

  avatarView2 = [(CKMessageSearchResultCell *)self avatarView];
  [avatarView2 setFrame:{v122, v131, v119, v121}];

  if (_shouldReverseLayoutDirection && ![(CKMessageSearchResultCell *)self isFromMe])
  {
    v156.origin.x = v122;
    v156.origin.y = v131;
    v156.size.width = v119;
    v156.size.height = v121;
    v133 = CGRectGetMidY(v156) - v80 * 0.5;
    chevronImageView5 = [(CKMessageSearchResultCell *)self chevronImageView];
    [chevronImageView5 setFrame:{v140, v133, v78, v80}];
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v143 == 1)
  {
    v135 = +[CKUIBehavior sharedBehaviors];
    [v135 defaultSeparatorHeight];
    v137 = v136;
    groupingSeparatorView = [(CKMessageSearchResultCell *)self groupingSeparatorView];
    [groupingSeparatorView setFrame:{v110, 0.0, v141, v137}];
  }

  groupingSeparatorView2 = [(CKMessageSearchResultCell *)self groupingSeparatorView];
  [groupingSeparatorView2 setHidden:v143 ^ 1u];
}

- (void)_proposedBalloonY:(double *)y afterLayoutForView:(id)view
{
  [view frame];
  MaxY = CGRectGetMaxY(v6);
  if (*y >= MaxY)
  {
    MaxY = *y;
  }

  *y = MaxY;
}

- (id)_annotatedResultStringForResult:(id)result searchText:(id)text
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  textCopy = text;
  item = [resultCopy item];
  attributeSet = [item attributeSet];
  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];

  v11 = [__ck_spotlightItemSnippet length];
  v12 = +[CKUIBehavior sharedBehaviors];
  searchMessagesMaxSummaryLength = [v12 searchMessagesMaxSummaryLength];

  if (v11 > searchMessagesMaxSummaryLength)
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [__ck_spotlightItemSnippet ck_trimmedStringWithPreferredLength:objc_msgSend(v14 anchoredAroundSubstring:{"searchMessagesMaxSummaryLength"), textCopy}];

    __ck_spotlightItemSnippet = v15;
  }

  if ([__ck_spotlightItemSnippet length])
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    searchMessagesBalloonFont = [v16 searchMessagesBalloonFont];

    if ([(CKMessageSearchResultCell *)self isFromMe])
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      searchMessagesFromMeUnannotatedLabelColor = [v18 searchMessagesFromMeUnannotatedLabelColor];
    }

    else
    {
      searchMessagesFromMeUnannotatedLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    if ([(CKMessageSearchResultCell *)self isFromMe])
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v22 = ;
    v21 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:textCopy resultText:__ck_spotlightItemSnippet primaryTextColor:searchMessagesFromMeUnannotatedLabelColor primaryFont:searchMessagesBalloonFont annotatedTextColor:v22 annotatedFont:searchMessagesBalloonFont];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = resultCopy;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Could not identify snippet for result: %@", &v24, 0xCu);
      }
    }

    v21 = 0;
  }

  return v21;
}

- (id)_balloonFilterForUserInterfaceStyle:(int64_t)style
{
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_6;
  }

  if (style == 1)
  {
    v4 = MEMORY[0x1E6979CE8];
    goto LABEL_11;
  }

  if (style != 2)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E6979CF8];
LABEL_11:
  v5 = *v4;
LABEL_7:

  return v5;
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = CKMessageSearchResultCell;
  [(CKEditableSearchResultCell *)&v8 prepareForReuse];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  balloonView = [(CKMessageSearchResultCell *)self balloonView];
  [balloonView setFrame:{v3, v4, v5, v6}];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v11.receiver = self;
  v11.super_class = CKMessageSearchResultCell;
  [(CKMessageSearchResultCell *)&v11 setHighlighted:?];
  v5 = [CKBalloonSelectionState balloonSelectionState:0];
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CKMessageSearchResultCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E72EBBC0;
  highlightedCopy = highlighted;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performWithoutAnimation:v8];
}

void __44__CKMessageSearchResultCell_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonView];
  [v2 setSelected:*(a1 + 48) withSelectionState:*(a1 + 40)];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setVisibilityContext:(CKMessageSearchResultVisibilityContext *)context
{
  bottomSpacing = context->bottomSpacing;
  *&self->_visibilityContext.isGroupedResult = *&context->isGroupedResult;
  self->_visibilityContext.bottomSpacing = bottomSpacing;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

@end