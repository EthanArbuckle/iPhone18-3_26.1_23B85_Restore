@interface CKConversationListCell
+ (double)cellHeightForDisplayScale:(double)scale;
+ (id)identifierForConversation:(id)conversation;
- (BOOL)_shouldShowSendLaterIcon;
- (BOOL)_shouldShowSummaryForSatelliteMessages;
- (BOOL)hasUnreadMessagesForConversation:(id)conversation;
- (BOOL)lastMessageIsTypingIndicator;
- (BOOL)shouldAlwaysHideAvatar;
- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)conversation;
- (BOOL)shouldAppearAsRecoverableConversation;
- (BOOL)shouldHideMuteIndicator;
- (CGRect)containerBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKConversationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKConversationListCellDelegate)delegate;
- (CKConversationListCellIntroductionsDelegate)introductionsDelegate;
- (id)_makeSummaryAttributedStringWithText:(id)text multiwayConversation:(id)conversation;
- (id)makeTextAttachmentsForCurrentIndicatorState;
- (id)summaryAttributedTextForBlockedConversationWithIcon:(BOOL)icon;
- (id)summaryLabelTextBaseColor;
- (id)summaryLabelTextColor;
- (id)unreadIndicatorImageForVisibility:(BOOL)visibility withMuteState:(BOOL)state;
- (int64_t)priorityLabelClassification;
- (unint64_t)unreadMessageCount;
- (void)_handleSatelliteStatusStateChanged;
- (void)_performBlock:(id)block animated:(BOOL)animated;
- (void)_prependSummaryLabelWithSIMForConversation:(id)conversation;
- (void)_updateAccessoryIndicatorColor;
- (void)_updateSummaryLabelWithGeneratedSummary:(id)summary;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)deleteButtonTapped;
- (void)didHoverOverCell:(id)cell;
- (void)prepareForReuse;
- (void)setContainerBounds:(CGRect)bounds;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEditingPins:(BOOL)pins animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShouldHidePreviewSummary:(BOOL)summary;
- (void)simLabelImageDidChange;
- (void)updateBlockedSummaryLabelIfNeeded;
- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview;
- (void)updateDateLabel:(id)label conversation:(id)conversation;
- (void)updateForEditing:(BOOL)editing;
- (void)updateFromLabelWithText:(id)text;
- (void)updateLabelTextColors;
- (void)updateSummaryLabel:(id)label conversation:(id)conversation fastPreview:(BOOL)preview;
- (void)updateUnreadIndicatorForCurrentConversation;
- (void)updateUnreadIndicatorWithImage:(id)image;
- (void)updateVerifiedCheckmarkForBusiness;
- (void)updateWithForwardedConfigurationState:(id)state;
@end

@implementation CKConversationListCell

- (id)summaryLabelTextColor
{
  summaryLabelTextBaseColor = [(CKConversationListCell *)self summaryLabelTextBaseColor];
  if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    conversationListCellSelectedSummaryColor = [theme conversationListCellSelectedSummaryColor];

    if (conversationListCellSelectedSummaryColor)
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v7 theme];
      conversationListCellSelectedSummaryColor2 = [theme2 conversationListCellSelectedSummaryColor];

      summaryLabelTextBaseColor = conversationListCellSelectedSummaryColor2;
    }
  }

  return summaryLabelTextBaseColor;
}

- (id)summaryLabelTextBaseColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  conversationListSummaryColor = [theme conversationListSummaryColor];

  return conversationListSummaryColor;
}

- (void)updateUnreadIndicatorForCurrentConversation
{
  conversation = [(CKConversationListCell *)self conversation];

  if (conversation)
  {
    conversation2 = [(CKConversationListCell *)self conversation];
    v5 = [(CKConversationListCell *)self hasUnreadMessagesForConversation:conversation2];

    conversation3 = [(CKConversationListCell *)self conversation];
    isMuted = [conversation3 isMuted];

    if (isMuted)
    {
      v8 = [(CKConversationListCell *)self shouldHideMuteIndicator]^ 1;
    }

    else
    {
      v8 = 0;
    }

    if ((v5 | [(CKConversationListCell *)self _shouldShowSummaryForSatelliteMessages]))
    {
      isMarkingUnread = 1;
    }

    else
    {
      conversation4 = [(CKConversationListCell *)self conversation];
      chat = [conversation4 chat];
      isMarkingUnread = [chat isMarkingUnread];
    }

    v12 = [(CKConversationListCell *)self unreadIndicatorImageForVisibility:isMarkingUnread withMuteState:v8];
    [(CKConversationListCell *)self updateUnreadIndicatorWithImage:v12];
  }
}

- (CKConversationListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldShowSummaryForSatelliteMessages
{
  conversation = [(CKConversationListCell *)self conversation];

  if (conversation)
  {
    conversation2 = [(CKConversationListCell *)self conversation];
    chat = [conversation2 chat];

    if ([chat pendingIncomingSatelliteMessageCount] && (objc_msgSend(chat, "isDownloadingPendingSatelliteMessages") & 1) == 0)
    {
      mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
      LOBYTE(conversation) = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];
    }

    else
    {
      LOBYTE(conversation) = 0;
    }
  }

  return conversation;
}

- (void)updateBlockedSummaryLabelIfNeeded
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    if ([(CKConversationListCell *)self shouldHidePreviewSummary]&& !self->_summaryBlockedLabel)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      summaryBlockedLabel = self->_summaryBlockedLabel;
      self->_summaryBlockedLabel = v3;

      [(UILabel *)self->_summaryBlockedLabel setOpaque:0];
      [(UILabel *)self->_summaryBlockedLabel setBackgroundColor:0];
      [(UILabel *)self->_summaryBlockedLabel setHighlightedTextColor:0];
      [(UILabel *)self->_summaryBlockedLabel _setTextAlignmentFollowsWritingDirection:1];
      contentView = [(CKConversationListCell *)self contentView];
      [contentView addSubview:self->_summaryBlockedLabel];
    }

    if (self->_summaryBlockedLabel)
    {
      [(CKConversationListCell *)self setNeedsLayout];

      [(CKConversationListCell *)self layoutIfNeeded];
    }
  }
}

- (void)updateVerifiedCheckmarkForBusiness
{
  fromLabel = self->_fromLabel;
  conversation = [(CKConversationListCell *)self conversation];
  [(CKLabel *)fromLabel setTitleIconImageType:[CKConversationListCell _titleIconImageTypeForConversation:conversation]];
}

- (BOOL)shouldAppearAsRecoverableConversation
{
  delegate = [(CKConversationListCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CKConversationListCell *)self delegate];
  shouldAppearAsRecoverableConversation = [delegate2 shouldAppearAsRecoverableConversation];

  return shouldAppearAsRecoverableConversation;
}

- (BOOL)lastMessageIsTypingIndicator
{
  conversation = [(CKConversationListCell *)self conversation];
  chat = [conversation chat];
  lastMessage = [chat lastMessage];

  if ([lastMessage isTypingMessage])
  {
    v5 = [lastMessage isFromMe] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldShowSendLaterIcon
{
  conversation = [(CKConversationListCell *)self conversation];
  hasCancellableScheduledMessage = [conversation hasCancellableScheduledMessage];

  return hasCancellableScheduledMessage;
}

- (BOOL)shouldAlwaysHideAvatar
{
  delegate = [(CKConversationListCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CKConversationListCell *)self delegate];
  shouldAlwaysHideAvatar = [delegate2 shouldAlwaysHideAvatar];

  return shouldAlwaysHideAvatar;
}

+ (double)cellHeightForDisplayScale:(double)scale
{
  v4 = +[CKUIBehavior sharedBehaviors];
  conversationListSenderFont = [v4 conversationListSenderFont];

  v6 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont = [v6 conversationListSummaryFont];

  if (scale <= 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 bottomConversationListSpace];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  conversationListSenderFont2 = [v12 conversationListSenderFont];
  [conversationListSenderFont2 _scaledValueForValue:1 useLanguageAwareScaling:v11];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 topConversationListSpace];
  UIRoundToScale();
  v16 = v15;

  [conversationListSenderFont capHeight];
  UIRoundToScale();
  v18 = v17;
  [conversationListSummaryFont capHeight];
  UIRoundToScale();
  v20 = v19;
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 senderSummaryConversationListSpace];
  UIRoundToScale();
  v23 = v22;

  [conversationListSummaryFont _bodyLeading];
  UIRoundToScale();
  v25 = v24;
  UIRoundToScale();
  v27 = v20 + v16 + 0.0 + v18 + v23 + v25 + v26;

  return v27;
}

- (CKConversationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v67.receiver = self;
  v67.super_class = CKConversationListCell;
  v4 = [(CKConversationListCell *)&v67 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKConversationListCell *)v4 setAutoresizingMask:2];
    [(CKConversationListCell *)v5 setSeparatorStyle:0];
    v5->__editingPins = 0;
    v6 = +[CKUIBehavior sharedBehaviors];
    theme = [v6 theme];

    v8 = objc_alloc_init(CKDateLabel);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v8;

    [(CKDateLabel *)v5->_dateLabel setOpaque:0];
    [(CKDateLabel *)v5->_dateLabel setBackgroundColor:0];
    v10 = v5->_dateLabel;
    v11 = +[CKUIBehavior sharedBehaviors];
    conversationListDateFont = [v11 conversationListDateFont];
    [(CKDateLabel *)v10 setFont:conversationListDateFont];

    v13 = v5->_dateLabel;
    conversationListDateColor = [theme conversationListDateColor];
    [(CKDateLabel *)v13 setTextColor:conversationListDateColor];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(conversationListDateColor) = [mEMORY[0x1E69A8070] isPriorityMessagesEnabled];

    if (conversationListDateColor)
    {
      v16 = [_TtC7ChatKit27CKConversationPriorityLabel alloc];
      v17 = [(CKConversationPriorityLabel *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      priorityLabel = v5->_priorityLabel;
      v5->_priorityLabel = v17;

      [(CKConversationPriorityLabel *)v5->_priorityLabel setHidden:1];
    }

    v19 = objc_alloc_init(CKLabel);
    fromLabel = v5->_fromLabel;
    v5->_fromLabel = v19;

    [(CKLabel *)v5->_fromLabel setOpaque:0];
    [(CKLabel *)v5->_fromLabel setBackgroundColor:0];
    v21 = v5->_fromLabel;
    conversationListSenderColor = [theme conversationListSenderColor];
    [(CKLabel *)v21 setTextColor:conversationListSenderColor];

    v23 = v5->_fromLabel;
    v24 = +[CKUIBehavior sharedBehaviors];
    conversationListSenderFont = [v24 conversationListSenderFont];
    [(CKLabel *)v23 setFont:conversationListSenderFont];

    [(CKLabel *)v5->_fromLabel setTextAlignment:4];
    [(CKLabel *)v5->_fromLabel setLineBreakMode:4];
    contentView = [(CKConversationListCell *)v5 contentView];
    [contentView addSubview:v5->_fromLabel];

    v27 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v24) = [v27 showsHoverToDeleteButton];

    if (v24)
    {
      layer = [MEMORY[0x1E6979380] layer];
      gradient = v5->_gradient;
      v5->_gradient = layer;

      v65 = [MEMORY[0x1E69DCAB8] imageNamed:@"SidebarCloseImage"];
      v64 = [MEMORY[0x1E69DCAB8] imageNamed:@"SidebarCloseAlternate"];
      v30 = [MEMORY[0x1E69DC738] buttonWithType:0];
      closeButton = v5->_closeButton;
      v5->_closeButton = v30;

      [(UIButton *)v5->_closeButton setImage:v65 forState:0];
      [(UIButton *)v5->_closeButton setImage:v64 forState:1];
      [(UIButton *)v5->_closeButton addTarget:v5 action:sel_deleteButtonTapped forEvents:64];
      imageView = [(UIButton *)v5->_closeButton imageView];
      +[CKUIBehavior sharedBehaviors];
      v34 = v33 = theme;
      theme2 = [v34 theme];
      conversationListSummaryColor = [theme2 conversationListSummaryColor];
      [imageView setTintColor:conversationListSummaryColor];

      theme = v33;
      contentView2 = [(CKConversationListCell *)v5 contentView];
      [contentView2 addSubview:v5->_closeButton];

      [(UIButton *)v5->_closeButton setHidden:1];
    }

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    summaryLabel = v5->_summaryLabel;
    v5->_summaryLabel = v38;

    [(UILabel *)v5->_summaryLabel setOpaque:0];
    [(UILabel *)v5->_summaryLabel setBackgroundColor:0];
    v40 = v5->_summaryLabel;
    summaryLabelTextColor = [(CKConversationListCell *)v5 summaryLabelTextColor];
    [(UILabel *)v40 setTextColor:summaryLabelTextColor];

    v42 = v5->_summaryLabel;
    v43 = +[CKUIBehavior sharedBehaviors];
    -[UILabel setNumberOfLines:](v42, "setNumberOfLines:", [v43 conversationListCellSummaryNumberOfLines]);

    v44 = v5->_summaryLabel;
    v45 = +[CKUIBehavior sharedBehaviors];
    conversationListSummaryFont = [v45 conversationListSummaryFont];
    [(UILabel *)v44 setFont:conversationListSummaryFont];

    [(UILabel *)v5->_summaryLabel _setTextAlignmentFollowsWritingDirection:1];
    v47 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v45) = [v47 showsConversationListCellChevronImage];

    if (v45)
    {
      v48 = +[CKUIBehavior sharedBehaviors];
      chevronImage = [v48 chevronImage];

      [chevronImage size];
      v51 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v49, v50}];
      chevronImageView = v5->_chevronImageView;
      v5->_chevronImageView = v51;

      [(UIImageView *)v5->_chevronImageView setContentMode:4];
      v53 = v5->_chevronImageView;
      v54 = +[CKUIBehavior sharedBehaviors];
      [v54 theme];
      v56 = v55 = theme;
      conversationListChevronColor = [v56 conversationListChevronColor];
      [(UIImageView *)v53 setTintColor:conversationListChevronColor];

      theme = v55;
      [(UIImageView *)v5->_chevronImageView setImage:chevronImage];
      contentView3 = [(CKConversationListCell *)v5 contentView];
      [contentView3 addSubview:v5->_chevronImageView];
    }

    [(CKDateLabel *)v5->_dateLabel setHighlightedTextColor:0];
    [(CKLabel *)v5->_fromLabel setHighlightedTextColor:0];
    [(UILabel *)v5->_summaryLabel setHighlightedTextColor:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v5 selector:sel__increaseContrastDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v5 selector:sel__simLabelImageDidChange_ name:@"__kCKSIMLabelImagesChanged" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:v5 selector:sel__handleSatelliteStatusStateChanged name:*MEMORY[0x1E69A5938] object:0];

  return v5;
}

- (void)updateWithForwardedConfigurationState:(id)state
{
  stateCopy = state;
  v5 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKConversationListCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection];

  if (self->_shouldLabelsBeHighlighted == v7)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

    if (stewieEnabled)
    {
      chat = [(CKConversation *)self->_conversation chat];
      isStewieChat = [chat isStewieChat];

      if (self->_isStewie != isStewieChat)
      {
        self->_isStewie = isStewieChat;

        [(CKConversationListCell *)self updateLabelTextColors];
      }
    }
  }

  else
  {
    self->_shouldLabelsBeHighlighted = v7;
    [(CKConversationListCell *)self updateLabelTextColors];
    [(CKConversationListCell *)self updateUnreadIndicatorForCurrentConversation];
    [(CKConversationListCell *)self _updateAccessoryIndicatorColor];
    shouldLabelsBeHighlighted = self->_shouldLabelsBeHighlighted;
    priorityLabel = [(CKConversationListCell *)self priorityLabel];
    [priorityLabel setCk_highlighted:shouldLabelsBeHighlighted];
  }
}

- (void)updateLabelTextColors
{
  shouldLabelsBeHighlighted = [(CKConversationListCell *)self shouldLabelsBeHighlighted];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  v6 = theme;
  if (shouldLabelsBeHighlighted)
  {
    [theme conversationListCellSelectedDateColor];
  }

  else
  {
    [theme conversationListDateColor];
  }
  v21 = ;

  shouldLabelsBeHighlighted2 = [(CKConversationListCell *)self shouldLabelsBeHighlighted];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  v10 = theme2;
  if (shouldLabelsBeHighlighted2)
  {
    [theme2 conversationListCellSelectedTextColor];
  }

  else
  {
    [theme2 conversationListSenderColor];
  }
  v11 = ;

  chat = [(CKConversation *)self->_conversation chat];
  isStewieChat = [chat isStewieChat];

  if (isStewieChat)
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v14 theme];
    conversationListEmergencyColor = [theme3 conversationListEmergencyColor];

    v11 = conversationListEmergencyColor;
  }

  if (v21)
  {
    textColor = [(CKDateLabel *)self->_dateLabel textColor];

    if (textColor != v21)
    {
      [(CKDateLabel *)self->_dateLabel setTextColor:v21];
    }
  }

  if (v11)
  {
    textColor2 = [(CKLabel *)self->_fromLabel textColor];

    if (textColor2 != v11)
    {
      [(CKLabel *)self->_fromLabel setTextColor:v11];
    }
  }

  [(CKConversationListCell *)self updateVerifiedCheckmarkForBusiness];
  summaryLabel = self->_summaryLabel;
  conversation = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:conversation fastPreview:0];
}

- (void)_updateAccessoryIndicatorColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  accessoryIndicatorTintColor = [theme accessoryIndicatorTintColor];

  if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v5 theme];
    accessoryIndicatorHighlightedTintColor = [theme2 accessoryIndicatorHighlightedTintColor];

    if (accessoryIndicatorHighlightedTintColor)
    {
      v8 = +[CKUIBehavior sharedBehaviors];
      theme3 = [v8 theme];
      accessoryIndicatorHighlightedTintColor2 = [theme3 accessoryIndicatorHighlightedTintColor];

      accessoryIndicatorTintColor = accessoryIndicatorHighlightedTintColor2;
    }
  }

  [(CKConversationListCell *)self updateAccessoryIndicatorsColorForHighlightedState:[(CKConversationListCell *)self shouldLabelsBeHighlighted]];
}

- (void)didHoverOverCell:(id)cell
{
  state = [cell state];
  if (state == 3)
  {
    gradient = 0;
    v5 = 1;
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    v5 = 0;
    gradient = self->_gradient;
  }

  layer = [(UILabel *)self->_summaryLabel layer];
  [layer setMask:gradient];

  closeButton = self->_closeButton;

  [(UIButton *)closeButton setHidden:v5];
}

- (void)deleteButtonTapped
{
  delegate = [(CKConversationListCell *)self delegate];
  conversation = [(CKConversationListCell *)self conversation];
  [delegate selectedDeleteButtonForConversation:conversation inCell:self];

  conversation2 = [(CKConversationListCell *)self conversation];
  unsentComposition = [conversation2 unsentComposition];
  [unsentComposition cleanupCKShareFromComposition];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v4 dealloc];
}

- (CGRect)containerBounds
{
  p_containerBounds = &self->_containerBounds;
  [(CKConversationListCell *)self bounds];
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  if (!CGRectEqualToRect(*p_containerBounds, v13))
  {
    [(CKConversationListCell *)self bounds];
    [(CKConversationListCell *)self setContainerBounds:?];
  }

  x = p_containerBounds->origin.x;
  y = p_containerBounds->origin.y;
  width = p_containerBounds->size.width;
  height = p_containerBounds->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContainerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_containerBounds = &self->_containerBounds;
  if (!CGRectEqualToRect(self->_containerBounds, bounds))
  {
    p_containerBounds->origin.x = x;
    p_containerBounds->origin.y = y;
    p_containerBounds->size.width = width;
    p_containerBounds->size.height = height;
    cellLayout = [(CKConversationListCell *)self cellLayout];

    if (!cellLayout)
    {
      [CKConversationListCell setContainerBounds:];
    }

    cellLayout2 = [(CKConversationListCell *)self cellLayout];
    [cellLayout2 invalidate];

    [(CKConversationListCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  [(CKConversationListCell *)self setConversation:0];
  [(CKDateLabel *)self->_dateLabel setTextForOverride:0];
  [(CKConversationListCell *)self setShouldHidePreviewSummary:0];
  [(CKConversationListCell *)self setEditingPins:0 animated:0];
  v3.receiver = self;
  v3.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v3 prepareForReuse];
}

- (void)contentSizeCategoryDidChange
{
  dateLabel = self->_dateLabel;
  v4 = +[CKUIBehavior sharedBehaviors];
  conversationListDateFont = [v4 conversationListDateFont];
  [(CKDateLabel *)dateLabel setFont:conversationListDateFont];

  fromLabel = self->_fromLabel;
  v7 = +[CKUIBehavior sharedBehaviors];
  conversationListSenderFont = [v7 conversationListSenderFont];
  [(CKLabel *)fromLabel setFont:conversationListSenderFont];

  summaryLabel = self->_summaryLabel;
  v10 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont = [v10 conversationListSummaryFont];
  [(UILabel *)summaryLabel setFont:conversationListSummaryFont];

  v12 = self->_summaryLabel;
  conversation = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:v12 conversation:conversation fastPreview:0];
}

- (void)simLabelImageDidChange
{
  conversation = [(CKConversationListCell *)self conversation];
  wantsLabelForDSDS = [conversation wantsLabelForDSDS];

  if (wantsLabelForDSDS)
  {
    summaryLabel = self->_summaryLabel;
    conversation2 = [(CKConversationListCell *)self conversation];
    [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:conversation2 fastPreview:0];
  }
}

- (void)updateUnreadIndicatorWithImage:(id)image
{
  if (!CKIsRunningUnitTests())
  {
    [CKConversationListCell updateUnreadIndicatorWithImage:];
  }
}

- (void)updateFromLabelWithText:(id)text
{
  if (!CKIsRunningUnitTests())
  {
    [CKConversationListCell updateUnreadIndicatorWithImage:];
  }
}

- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview
{
  previewCopy = preview;
  v35 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = conversationCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Updating contents of CKConversationListCell for conversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    name2 = conversationCopy;
    _CKLog();
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      name = [conversationCopy name];
      *buf = 138412290;
      v34 = name;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "  From: '%@'", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    name2 = [conversationCopy name];
    _CKLog();
  }

  [(CKConversationListCell *)self setConversation:conversationCopy, name2];
  self->_placeholder = [conversationCopy isPlaceholder];
  -[CKConversationListCell setMuted:](self, "setMuted:", [conversationCopy isMuted]);
  -[CKConversationListCell setGroupConversation:](self, "setGroupConversation:", [conversationCopy isGroupConversation]);
  [(CKConversationListCell *)self updateUnreadIndicatorForCurrentConversation];
  if ([conversationCopy hasDisplayName])
  {
    displayName = [conversationCopy displayName];
  }

  else
  {
    displayName = [conversationCopy name];
    [conversationCopy fetchSuggestedNameIfNecessary];
  }

  v11 = displayName;
  if (!displayName)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        chat = [conversationCopy chat];
        guid = [chat guid];
        *buf = 138412290;
        v34 = guid;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Setting conversation cell text to nil! Chat guid: %@", buf, 0xCu);
      }
    }

    v11 = &stru_1F04268F8;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    if (([conversationCopy hasDisplayName] & 1) == 0)
    {
      chat2 = [conversationCopy chat];
      hasBlockedParticipant = [chat2 hasBlockedParticipant];

      if (hasBlockedParticipant)
      {
        attributedName = [conversationCopy attributedName];

        v15 = attributedName;
      }
    }
  }

  v21 = +[CKUIBehavior sharedBehaviors];
  showUnreadCountDebugggingInfo = [v21 showUnreadCountDebugggingInfo];

  if (showUnreadCountDebugggingInfo)
  {
    unreadCount = [conversationCopy unreadCount];
    v24 = [v15 mutableCopy];
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu) ", unreadCount];
    v27 = [v25 initWithString:v26];
    [v24 insertAttributedString:v27 atIndex:0];

    if (unreadCount < 1)
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }
    v28 = ;
    [(CKConversationListCell *)self setBackgroundColor:v28];
  }

  else
  {
    v24 = v15;
  }

  [(CKConversationListCell *)self updateFromLabelWithText:v24];
  [(CKConversationListCell *)self updateDateLabel:self->_dateLabel conversation:conversationCopy];
  chat3 = [conversationCopy chat];
  v30 = chat3;
  if (chat3)
  {
    v31 = [chat3 allowedByScreenTime] ^ 1;
  }

  else
  {
    v31 = 0;
  }

  [(CKConversationListCell *)self setShouldHidePreviewSummary:v31];
  [(CKConversationListCell *)self updateSummaryLabel:self->_summaryLabel conversation:conversationCopy fastPreview:previewCopy];
  [(CKConversationListCell *)self updateVerifiedCheckmarkForBusiness];
  [(CKConversationListCell *)self setNeedsLayout];
}

- (void)updateDateLabel:(id)label conversation:(id)conversation
{
  v19 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  conversationCopy = conversation;
  delegate = [(CKConversationListCell *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CKConversationListCell *)self delegate];
    [delegate2 updateDateLabel:labelCopy conversation:conversationCopy];
  }

  else
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPriorityMessagesEnabled = [mEMORY[0x1E69A8070] isPriorityMessagesEnabled];

    if (isPriorityMessagesEnabled)
    {
      priorityLabelClassification = [(CKConversationListCell *)self priorityLabelClassification];
      if (priorityLabelClassification)
      {
        p_priorityLabel = &self->_priorityLabel;
        if (priorityLabelClassification != [(CKConversationPriorityLabel *)self->_priorityLabel classification])
        {
          [(CKConversationPriorityLabel *)*p_priorityLabel setClassification:priorityLabelClassification];
        }

        [labelCopy setHidden:1];
      }

      else
      {
        [labelCopy setHidden:0];
        p_priorityLabel = &self->_priorityLabel;
      }

      [(CKConversationPriorityLabel *)*p_priorityLabel setHidden:priorityLabelClassification == 0];
    }

    date = [conversationCopy date];
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(26);
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = date;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "  Date: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    if (date)
    {
      [(CKDateLabel *)self->_dateLabel setDate:date];
    }
  }
}

- (void)updateSummaryLabel:(id)label conversation:(id)conversation fastPreview:(BOOL)preview
{
  previewCopy = preview;
  v62 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  conversationCopy = conversation;
  delegate = [(CKConversationListCell *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CKConversationListCell *)self delegate];
    [delegate2 updateSummaryLabel:labelCopy conversation:conversationCopy fastPreview:previewCopy];

    goto LABEL_42;
  }

  if (![(CKConversationListCell *)self freezeSummaryText]|| ([(UILabel *)self->_summaryLabel attributedText], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (previewCopy)
    {
      [conversationCopy fastPreviewTextIgnoringPluginContent];
    }

    else
    {
      [conversationCopy previewText];
    }
    v12 = ;
  }

  if ([(CKConversationListCell *)self _shouldShowSummaryForSatelliteMessages])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"NEW_SATELLITE_MESSAGE_COUNT" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
    conversation = [(CKConversationListCell *)self conversation];
    chat = [conversation chat];
    v18 = [v13 localizedStringWithFormat:v15, objc_msgSend(chat, "pendingIncomingSatelliteMessageCount")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v21 = @"\u200F";
    }

    else
    {
      v21 = @"\u200E";
    }

    v22 = [(__CFString *)v21 stringByAppendingString:v18];

    v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v22];
    [(CKConversationListCell *)self updateUnreadIndicatorForCurrentConversation];

    v12 = v23;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v59 = [v12 length];
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_DEBUG, "  Summary Length: %ld", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v56 = [v12 length];
    _CKLog();
  }

  v25 = [v12 length];
  v26 = +[CKUIBehavior sharedBehaviors];
  v27 = v25 > [v26 conversationListCellMaxSummaryLength];

  if (v27)
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [v12 attributedSubstringFromRange:{0, objc_msgSend(v28, "conversationListCellMaxSummaryLength")}];

    v12 = v29;
  }

  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    chat2 = [conversationCopy chat];
    chatSummary = [chat2 chatSummary];

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        conversation2 = [(CKConversationListCell *)self conversation];
        chat3 = [conversation2 chat];
        guid = [chat3 guid];
        *buf = 67109634;
        *v59 = chatSummary != 0;
        *&v59[4] = 2112;
        *&v59[6] = guid;
        v60 = 1024;
        v61 = chatSummary == 0;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Showing chat summary: (%d) for conversation with GUID %@, isNilChatSummary=%{BOOL}d", buf, 0x18u);
      }

      if (!chatSummary)
      {
        goto LABEL_28;
      }
    }

    else if (!chatSummary)
    {
      goto LABEL_28;
    }

    [(CKConversationListCell *)self _updateSummaryLabelWithGeneratedSummary:chatSummary];
    [(UILabel *)self->_summaryLabel setAccessibilityIdentifier:@"previewWithSummary"];
    goto LABEL_39;
  }

LABEL_28:
  [(UILabel *)self->_summaryLabel setAccessibilityIdentifier:0];
  chat4 = [conversationCopy chat];
  if ([chat4 chatStyle] != 43)
  {

    goto LABEL_32;
  }

  chat5 = [conversationCopy chat];
  conversation3 = [chat5 conversation];
  v39 = conversation3 == 0;

  if (v39)
  {
LABEL_32:
    v44 = +[CKUIBehavior sharedBehaviors];
    conversationListSummaryFont = [v44 conversationListSummaryFont];

    summaryLabelTextColor = [(CKConversationListCell *)self summaryLabelTextColor];
    v47 = objc_alloc_init(CKPreviewTextDisplayContext);
    [(CKPreviewTextDisplayContext *)v47 setBaseTextFont:conversationListSummaryFont];
    [(CKPreviewTextDisplayContext *)v47 setBaseTextColor:summaryLabelTextColor];
    v48 = MEMORY[0x1E69DB878];
    fontDescriptor = [conversationListSummaryFont fontDescriptor];
    v50 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    v51 = [v48 fontWithDescriptor:v50 size:0.0];
    [(CKPreviewTextDisplayContext *)v47 setMentionsFont:v51];

    if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
    {
      [(CKPreviewTextDisplayContext *)v47 setMentionsColor:summaryLabelTextColor];
    }

    else
    {
      v52 = +[CKUIBehavior sharedBehaviors];
      theme = [v52 theme];
      meMentionTextColor = [theme meMentionTextColor];
      [(CKPreviewTextDisplayContext *)v47 setMentionsColor:meMentionTextColor];
    }

    v55 = CKPreviewTextForDisplay(v12, v47);
    [(UILabel *)self->_summaryLabel setAttributedText:v55];

    goto LABEL_36;
  }

  string = [v12 string];
  chat6 = [conversationCopy chat];
  conversation4 = [chat6 conversation];
  v43 = [(CKConversationListCell *)self _makeSummaryAttributedStringWithText:string multiwayConversation:conversation4];

  [(UILabel *)self->_summaryLabel setAttributedText:v43];
LABEL_36:
  chatSummary = 0;
LABEL_39:
  [(CKConversationListCell *)self _prependSummaryLabelWithSIMForConversation:conversationCopy];
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    [(UILabel *)self->_summaryLabel setHidden:[(CKConversationListCell *)self shouldHidePreviewSummary]];
    [(CKConversationListCell *)self updateBlockedSummaryLabelIfNeeded];
  }

LABEL_42:
}

- (void)_updateSummaryLabelWithGeneratedSummary:(id)summary
{
  string = [summary string];
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:string];
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 systemFontOfSize:? weight:?];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7 scale:1];
  v9 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"text.line.2.summary" withConfiguration:v8];
  v11 = [v10 imageWithRenderingMode:2];
  [v9 setImage:v11];

  if (v9)
  {
    v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v4 insertAttributedString:v13 atIndex:0];

    [v4 insertAttributedString:v12 atIndex:0];
  }

  v14 = [v4 length];
  summaryLabelTextColor = [(CKConversationListCell *)self summaryLabelTextColor];
  v16 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont = [v16 conversationListSummaryFont];

  [v4 addAttribute:*MEMORY[0x1E69DB650] value:summaryLabelTextColor range:{0, v14}];
  [v4 addAttribute:*MEMORY[0x1E69DB648] value:conversationListSummaryFont range:{0, v14}];

  [(UILabel *)self->_summaryLabel setAttributedText:v4];
  [(CKConversationListCell *)self setShouldHidePreviewSummary:0];
}

- (unint64_t)unreadMessageCount
{
  conversation = [(CKConversationListCell *)self conversation];
  chat = [conversation chat];
  unreadMessageCount = [chat unreadMessageCount];

  return unreadMessageCount;
}

- (id)summaryAttributedTextForBlockedConversationWithIcon:(BOOL)icon
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"CONVERSATION_LIST_CELL_SUMMARY_TEXT_SCREENTIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = [v4 localizedStringWithFormat:v6, -[CKConversationListCell unreadMessageCount](self, "unreadMessageCount")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v10 = @"\u200F";
    }

    else
    {
      v10 = @"\u200E";
    }

    v11 = [(__CFString *)v10 stringByAppendingString:v7];

    v12 = [v11 length];
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
    v14 = *MEMORY[0x1E69DB650];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v13 addAttribute:v14 value:tertiaryLabelColor range:{0, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_makeSummaryAttributedStringWithText:(id)text multiwayConversation:(id)conversation
{
  textCopy = text;
  conversationCopy = conversation;
  if (!textCopy)
  {
    textCopy = [MEMORY[0x1E696AEC0] string];
  }

  v47 = textCopy;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = [MEMORY[0x1E69A5B78] conversationIsVideoCall:conversationCopy];
  v9 = [MEMORY[0x1E69A5B78] conversationIsAVLessSharePlay:conversationCopy];
  configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  if (v9)
  {
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemGreenColor"];
    v13 = [v11 configurationWithHierarchicalColor:v12];

    v14 = +[CKUIBehavior sharedBehaviors];
    conversationListSharePlayIcon = [v14 conversationListSharePlayIcon];
    configurationPreferringMulticolor = v13;
  }

  else
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    v14 = v16;
    if (v8)
    {
      [v16 conversationListFacetimeVideoIcon];
    }

    else
    {
      [v16 conversationListFacetimeAudioIcon];
    }
    conversationListSharePlayIcon = ;
  }

  v46 = configurationPreferringMulticolor;

  v45 = [conversationListSharePlayIcon imageWithSymbolConfiguration:configurationPreferringMulticolor];

  v17 = MEMORY[0x1E696AAB0];
  v18 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v45];
  v44 = [v17 attributedStringWithAttachment:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [conversationCopy avMode]);
  v43 = [v19 stringWithFormat:@" %@", v20];

  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = +[CKUIBehavior sharedBehaviors];
  conversationCellSummaryBoldPreviewTextAttributes = [v22 conversationCellSummaryBoldPreviewTextAttributes];
  v24 = [v21 initWithString:v43 attributes:conversationCellSummaryBoldPreviewTextAttributes];

  [v7 appendAttributedString:v24];
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v26 = [activeRemoteParticipants count];

  v27 = MEMORY[0x1E696AEC0];
  v28 = IMSharedUtilitiesFrameworkBundle();
  v29 = [v28 localizedStringForKey:@"%lu People Active" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v30 = [v27 localizedStringWithFormat:v29, v26];

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@\n", v30];
  v32 = objc_alloc(MEMORY[0x1E696AAB0]);
  v33 = +[CKUIBehavior sharedBehaviors];
  conversationCellSummaryPreviewTextAttributes = [v33 conversationCellSummaryPreviewTextAttributes];
  v35 = [v32 initWithString:v31 attributes:conversationCellSummaryPreviewTextAttributes];

  [v7 appendAttributedString:v35];
  v36 = objc_alloc(MEMORY[0x1E696AAB0]);
  v37 = +[CKUIBehavior sharedBehaviors];
  conversationCellSummaryPreviewTextAttributes2 = [v37 conversationCellSummaryPreviewTextAttributes];
  v39 = [v36 initWithString:v47 attributes:conversationCellSummaryPreviewTextAttributes2];

  [v7 appendAttributedString:v39];
  v40 = *MEMORY[0x1E69DB650];
  summaryLabelTextColor = [(CKConversationListCell *)self summaryLabelTextColor];
  [v7 addAttribute:v40 value:summaryLabelTextColor range:{0, objc_msgSend(v7, "length")}];

  [v7 insertAttributedString:v44 atIndex:0];

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = objc_opt_class();
  traitCollection = [(CKConversationListCell *)self traitCollection];
  [traitCollection displayScale];
  [v5 cellHeightForDisplayScale:?];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)updateForEditing:(BOOL)editing
{
  showingEditControl = [(CKConversationListCell *)self showingEditControl];
  v5 = 1.0;
  if (showingEditControl)
  {
    v5 = 0.0;
  }

  chevronImageView = self->_chevronImageView;

  [(UIImageView *)chevronImageView setAlpha:v5];
}

- (void)setEditingPins:(BOOL)pins animated:(BOOL)animated
{
  editingPins = self->__editingPins;
  self->__editingPins = pins;
  if (editingPins != pins)
  {
    v17 = v7;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    animatedCopy = animated;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKConversationListCell_setEditingPins_animated___block_invoke;
    aBlock[3] = &unk_1E72ED8D8;
    aBlock[4] = self;
    pinsCopy = pins;
    v11 = _Block_copy(aBlock);
    [(CKConversationListCell *)self _performBlock:v11 animated:animatedCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__CKConversationListCell_setEditingPins_animated___block_invoke_2;
    v14[3] = &unk_1E72EBA18;
    v14[4] = self;
    v12 = _Block_copy(v14);
    v13 = v12;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] transitionWithView:self->_summaryLabel duration:5242880 options:v12 animations:0 completion:0.300000012];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

uint64_t __50__CKConversationListCell_setEditingPins_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(*(a1 + 32) + 1048) setAlpha:v2];
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(*(a1 + 32) + 1064);

  return [v4 setAlpha:v3];
}

void __50__CKConversationListCell_setEditingPins_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[132];
  v3 = [v1 conversation];
  [v1 updateSummaryLabel:v2 conversation:v3 fastPreview:0];
}

- (void)_performBlock:(id)block animated:(BOOL)animated
{
  if (animated)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:block animations:0.300000012];
  }

  else
  {
    (*(block + 2))(block);
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  [(CKConversationListCell *)self setNeedsLayout];
  v10.receiver = self;
  v10.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v10 setEditing:editingCopy animated:animatedCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CKConversationListCell_setEditing_animated___block_invoke;
  v8[3] = &unk_1E72ED8D8;
  v8[4] = self;
  v9 = editingCopy;
  v7 = _Block_copy(v8);
  [(CKConversationListCell *)self _performBlock:v7 animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v11 setSelected:selected animated:animated];
  imageView = [(UIButton *)self->_closeButton imageView];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  v9 = theme;
  if (selectedCopy)
  {
    [theme conversationListCellSelectedSummaryColor];
  }

  else
  {
    [theme conversationListSummaryColor];
  }
  v10 = ;
  [imageView setTintColor:v10];
}

- (void)setShouldHidePreviewSummary:(BOOL)summary
{
  summaryCopy = summary;
  shouldHidePreviewSummary = self->_shouldHidePreviewSummary;
  self->_shouldHidePreviewSummary = summary;
  isContactLimitsFeatureEnabled = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  if (shouldHidePreviewSummary != summaryCopy && isContactLimitsFeatureEnabled != 0)
  {
    summaryLabel = self->_summaryLabel;
    conversation = [(CKConversationListCell *)self conversation];
    [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:conversation fastPreview:0];
  }
}

- (int64_t)priorityLabelClassification
{
  introductionsDelegate = [(CKConversationListCell *)self introductionsDelegate];

  if (!introductionsDelegate)
  {
    return 0;
  }

  introductionsDelegate2 = [(CKConversationListCell *)self introductionsDelegate];
  v5 = [introductionsDelegate2 conversationListCellCanShowPriorityLabelInCurrentFilterMode:self];

  if (!v5)
  {
    return 0;
  }

  conversation = [(CKConversationListCell *)self conversation];
  chat = [conversation chat];
  priorityClassification = [chat priorityClassification];

  return priorityClassification;
}

- (void)_handleSatelliteStatusStateChanged
{
  summaryLabel = self->_summaryLabel;
  conversation = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:conversation fastPreview:0];
}

- (BOOL)hasUnreadMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKConversationListCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKConversationListCell *)self delegate];
    hasUnreadMessages = [delegate2 hasUnreadMessagesForConversation:conversationCopy];
  }

  else
  {
    hasUnreadMessages = [conversationCopy hasUnreadMessages];
  }

  return hasUnreadMessages;
}

- (id)unreadIndicatorImageForVisibility:(BOOL)visibility withMuteState:(BOOL)state
{
  if (visibility)
  {
    if (-[CKConversationListCell shouldLabelsBeHighlighted](self, "shouldLabelsBeHighlighted", visibility, state) && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 shouldUnreadIndicatorChangeOnSelection], v4, v5))
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      unreadIndicatorSelectedImage = [v6 unreadIndicatorSelectedImage];
    }

    else
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      unreadIndicatorSelectedImage = [v6 unreadIndicatorTintedImage];
    }

    v8 = unreadIndicatorSelectedImage;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldHideMuteIndicator
{
  if (![(CKConversationListCell *)self isMuted])
  {
    return 1;
  }

  return [(CKConversationListCell *)self shouldAppearAsRecoverableConversation];
}

- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKConversationListCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKConversationListCell *)self delegate];
    v8 = [delegate2 shouldAlwaysHideUnreadIndicatorForConversation:conversationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_prependSummaryLabelWithSIMForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy wantsLabelForDSDS])
  {
    attributedText = [(UILabel *)self->_summaryLabel attributedText];
    v5 = [CKDualSIMUtilities makeSummaryAttributedStringWithSIMImageUsingAttributedString:attributedText forConversation:conversationCopy];

    [(UILabel *)self->_summaryLabel setAttributedText:v5];
  }
}

- (CKConversationListCellIntroductionsDelegate)introductionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_introductionsDelegate);

  return WeakRetained;
}

- (id)makeTextAttachmentsForCurrentIndicatorState
{
  selfCopy = self;
  CKConversationListCell.makeTextAttachmentsForCurrentIndicatorState()();

  sub_1908C1BD8();
  v3 = sub_190D57160();

  return v3;
}

+ (id)identifierForConversation:(id)conversation
{
  OUTLINED_FUNCTION_9();
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setContainerBounds:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"CKConversationListCell.m" lineNumber:331 description:{@"%@ needs a cell layout.", v3}];
}

- (uint64_t)updateUnreadIndicatorWithImage:.cold.1()
{
  OUTLINED_FUNCTION_9();
  objc_opt_class();
  OUTLINED_FUNCTION_0_6();

  return NSRequestConcreteImplementation();
}

@end