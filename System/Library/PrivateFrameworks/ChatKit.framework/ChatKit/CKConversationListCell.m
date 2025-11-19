@interface CKConversationListCell
+ (double)cellHeightForDisplayScale:(double)a3;
+ (id)identifierForConversation:(id)a3;
- (BOOL)_shouldShowSendLaterIcon;
- (BOOL)_shouldShowSummaryForSatelliteMessages;
- (BOOL)hasUnreadMessagesForConversation:(id)a3;
- (BOOL)lastMessageIsTypingIndicator;
- (BOOL)shouldAlwaysHideAvatar;
- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)a3;
- (BOOL)shouldAppearAsRecoverableConversation;
- (BOOL)shouldHideMuteIndicator;
- (CGRect)containerBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKConversationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKConversationListCellDelegate)delegate;
- (CKConversationListCellIntroductionsDelegate)introductionsDelegate;
- (id)_makeSummaryAttributedStringWithText:(id)a3 multiwayConversation:(id)a4;
- (id)makeTextAttachmentsForCurrentIndicatorState;
- (id)summaryAttributedTextForBlockedConversationWithIcon:(BOOL)a3;
- (id)summaryLabelTextBaseColor;
- (id)summaryLabelTextColor;
- (id)unreadIndicatorImageForVisibility:(BOOL)a3 withMuteState:(BOOL)a4;
- (int64_t)priorityLabelClassification;
- (unint64_t)unreadMessageCount;
- (void)_handleSatelliteStatusStateChanged;
- (void)_performBlock:(id)a3 animated:(BOOL)a4;
- (void)_prependSummaryLabelWithSIMForConversation:(id)a3;
- (void)_updateAccessoryIndicatorColor;
- (void)_updateSummaryLabelWithGeneratedSummary:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)deleteButtonTapped;
- (void)didHoverOverCell:(id)a3;
- (void)prepareForReuse;
- (void)setContainerBounds:(CGRect)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditingPins:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldHidePreviewSummary:(BOOL)a3;
- (void)simLabelImageDidChange;
- (void)updateBlockedSummaryLabelIfNeeded;
- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4;
- (void)updateDateLabel:(id)a3 conversation:(id)a4;
- (void)updateForEditing:(BOOL)a3;
- (void)updateFromLabelWithText:(id)a3;
- (void)updateLabelTextColors;
- (void)updateSummaryLabel:(id)a3 conversation:(id)a4 fastPreview:(BOOL)a5;
- (void)updateUnreadIndicatorForCurrentConversation;
- (void)updateUnreadIndicatorWithImage:(id)a3;
- (void)updateVerifiedCheckmarkForBusiness;
- (void)updateWithForwardedConfigurationState:(id)a3;
@end

@implementation CKConversationListCell

- (id)summaryLabelTextColor
{
  v3 = [(CKConversationListCell *)self summaryLabelTextBaseColor];
  if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 conversationListCellSelectedSummaryColor];

    if (v6)
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      v8 = [v7 theme];
      v9 = [v8 conversationListCellSelectedSummaryColor];

      v3 = v9;
    }
  }

  return v3;
}

- (id)summaryLabelTextBaseColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 conversationListSummaryColor];

  return v4;
}

- (void)updateUnreadIndicatorForCurrentConversation
{
  v3 = [(CKConversationListCell *)self conversation];

  if (v3)
  {
    v4 = [(CKConversationListCell *)self conversation];
    v5 = [(CKConversationListCell *)self hasUnreadMessagesForConversation:v4];

    v6 = [(CKConversationListCell *)self conversation];
    v7 = [v6 isMuted];

    if (v7)
    {
      v8 = [(CKConversationListCell *)self shouldHideMuteIndicator]^ 1;
    }

    else
    {
      v8 = 0;
    }

    if ((v5 | [(CKConversationListCell *)self _shouldShowSummaryForSatelliteMessages]))
    {
      v9 = 1;
    }

    else
    {
      v10 = [(CKConversationListCell *)self conversation];
      v11 = [v10 chat];
      v9 = [v11 isMarkingUnread];
    }

    v12 = [(CKConversationListCell *)self unreadIndicatorImageForVisibility:v9 withMuteState:v8];
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
  v3 = [(CKConversationListCell *)self conversation];

  if (v3)
  {
    v4 = [(CKConversationListCell *)self conversation];
    v5 = [v4 chat];

    if ([v5 pendingIncomingSatelliteMessageCount] && (objc_msgSend(v5, "isDownloadingPendingSatelliteMessages") & 1) == 0)
    {
      v6 = [MEMORY[0x1E69A5B00] sharedInstance];
      LOBYTE(v3) = [v6 isSatelliteConnectionActive];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
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
      v5 = [(CKConversationListCell *)self contentView];
      [v5 addSubview:self->_summaryBlockedLabel];
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
  v3 = [(CKConversationListCell *)self conversation];
  [(CKLabel *)fromLabel setTitleIconImageType:[CKConversationListCell _titleIconImageTypeForConversation:v3]];
}

- (BOOL)shouldAppearAsRecoverableConversation
{
  v3 = [(CKConversationListCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKConversationListCell *)self delegate];
  v6 = [v5 shouldAppearAsRecoverableConversation];

  return v6;
}

- (BOOL)lastMessageIsTypingIndicator
{
  v2 = [(CKConversationListCell *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 lastMessage];

  if ([v4 isTypingMessage])
  {
    v5 = [v4 isFromMe] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldShowSendLaterIcon
{
  v2 = [(CKConversationListCell *)self conversation];
  v3 = [v2 hasCancellableScheduledMessage];

  return v3;
}

- (BOOL)shouldAlwaysHideAvatar
{
  v3 = [(CKConversationListCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKConversationListCell *)self delegate];
  v6 = [v5 shouldAlwaysHideAvatar];

  return v6;
}

+ (double)cellHeightForDisplayScale:(double)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 conversationListSenderFont];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 conversationListSummaryFont];

  if (a3 <= 0.0)
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 bottomConversationListSpace];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 conversationListSenderFont];
  [v13 _scaledValueForValue:1 useLanguageAwareScaling:v11];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 topConversationListSpace];
  UIRoundToScale();
  v16 = v15;

  [v5 capHeight];
  UIRoundToScale();
  v18 = v17;
  [v7 capHeight];
  UIRoundToScale();
  v20 = v19;
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 senderSummaryConversationListSpace];
  UIRoundToScale();
  v23 = v22;

  [v7 _bodyLeading];
  UIRoundToScale();
  v25 = v24;
  UIRoundToScale();
  v27 = v20 + v16 + 0.0 + v18 + v23 + v25 + v26;

  return v27;
}

- (CKConversationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v67.receiver = self;
  v67.super_class = CKConversationListCell;
  v4 = [(CKConversationListCell *)&v67 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKConversationListCell *)v4 setAutoresizingMask:2];
    [(CKConversationListCell *)v5 setSeparatorStyle:0];
    v5->__editingPins = 0;
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];

    v8 = objc_alloc_init(CKDateLabel);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v8;

    [(CKDateLabel *)v5->_dateLabel setOpaque:0];
    [(CKDateLabel *)v5->_dateLabel setBackgroundColor:0];
    v10 = v5->_dateLabel;
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 conversationListDateFont];
    [(CKDateLabel *)v10 setFont:v12];

    v13 = v5->_dateLabel;
    v14 = [v7 conversationListDateColor];
    [(CKDateLabel *)v13 setTextColor:v14];

    v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v14) = [v15 isPriorityMessagesEnabled];

    if (v14)
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
    v22 = [v7 conversationListSenderColor];
    [(CKLabel *)v21 setTextColor:v22];

    v23 = v5->_fromLabel;
    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 conversationListSenderFont];
    [(CKLabel *)v23 setFont:v25];

    [(CKLabel *)v5->_fromLabel setTextAlignment:4];
    [(CKLabel *)v5->_fromLabel setLineBreakMode:4];
    v26 = [(CKConversationListCell *)v5 contentView];
    [v26 addSubview:v5->_fromLabel];

    v27 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v24) = [v27 showsHoverToDeleteButton];

    if (v24)
    {
      v28 = [MEMORY[0x1E6979380] layer];
      gradient = v5->_gradient;
      v5->_gradient = v28;

      v65 = [MEMORY[0x1E69DCAB8] imageNamed:@"SidebarCloseImage"];
      v64 = [MEMORY[0x1E69DCAB8] imageNamed:@"SidebarCloseAlternate"];
      v30 = [MEMORY[0x1E69DC738] buttonWithType:0];
      closeButton = v5->_closeButton;
      v5->_closeButton = v30;

      [(UIButton *)v5->_closeButton setImage:v65 forState:0];
      [(UIButton *)v5->_closeButton setImage:v64 forState:1];
      [(UIButton *)v5->_closeButton addTarget:v5 action:sel_deleteButtonTapped forEvents:64];
      v32 = [(UIButton *)v5->_closeButton imageView];
      +[CKUIBehavior sharedBehaviors];
      v34 = v33 = v7;
      v35 = [v34 theme];
      v36 = [v35 conversationListSummaryColor];
      [v32 setTintColor:v36];

      v7 = v33;
      v37 = [(CKConversationListCell *)v5 contentView];
      [v37 addSubview:v5->_closeButton];

      [(UIButton *)v5->_closeButton setHidden:1];
    }

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    summaryLabel = v5->_summaryLabel;
    v5->_summaryLabel = v38;

    [(UILabel *)v5->_summaryLabel setOpaque:0];
    [(UILabel *)v5->_summaryLabel setBackgroundColor:0];
    v40 = v5->_summaryLabel;
    v41 = [(CKConversationListCell *)v5 summaryLabelTextColor];
    [(UILabel *)v40 setTextColor:v41];

    v42 = v5->_summaryLabel;
    v43 = +[CKUIBehavior sharedBehaviors];
    -[UILabel setNumberOfLines:](v42, "setNumberOfLines:", [v43 conversationListCellSummaryNumberOfLines]);

    v44 = v5->_summaryLabel;
    v45 = +[CKUIBehavior sharedBehaviors];
    v46 = [v45 conversationListSummaryFont];
    [(UILabel *)v44 setFont:v46];

    [(UILabel *)v5->_summaryLabel _setTextAlignmentFollowsWritingDirection:1];
    v47 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v45) = [v47 showsConversationListCellChevronImage];

    if (v45)
    {
      v48 = +[CKUIBehavior sharedBehaviors];
      v66 = [v48 chevronImage];

      [v66 size];
      v51 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v49, v50}];
      chevronImageView = v5->_chevronImageView;
      v5->_chevronImageView = v51;

      [(UIImageView *)v5->_chevronImageView setContentMode:4];
      v53 = v5->_chevronImageView;
      v54 = +[CKUIBehavior sharedBehaviors];
      [v54 theme];
      v56 = v55 = v7;
      v57 = [v56 conversationListChevronColor];
      [(UIImageView *)v53 setTintColor:v57];

      v7 = v55;
      [(UIImageView *)v5->_chevronImageView setImage:v66];
      v58 = [(CKConversationListCell *)v5 contentView];
      [v58 addSubview:v5->_chevronImageView];
    }

    [(CKDateLabel *)v5->_dateLabel setHighlightedTextColor:0];
    [(CKLabel *)v5->_fromLabel setHighlightedTextColor:0];
    [(UILabel *)v5->_summaryLabel setHighlightedTextColor:0];
  }

  v59 = [MEMORY[0x1E696AD88] defaultCenter];
  [v59 addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v60 = [MEMORY[0x1E696AD88] defaultCenter];
  [v60 addObserver:v5 selector:sel__increaseContrastDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];

  v61 = [MEMORY[0x1E696AD88] defaultCenter];
  [v61 addObserver:v5 selector:sel__simLabelImageDidChange_ name:@"__kCKSIMLabelImagesChanged" object:0];

  v62 = [MEMORY[0x1E696AD88] defaultCenter];
  [v62 addObserver:v5 selector:sel__handleSatelliteStatusStateChanged name:*MEMORY[0x1E69A5938] object:0];

  return v5;
}

- (void)updateWithForwardedConfigurationState:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKConversationListCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:v4 traitCollection:v6];

  if (self->_shouldLabelsBeHighlighted == v7)
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 stewieEnabled];

    if (v9)
    {
      v10 = [(CKConversation *)self->_conversation chat];
      v11 = [v10 isStewieChat];

      if (self->_isStewie != v11)
      {
        self->_isStewie = v11;

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
    v13 = [(CKConversationListCell *)self priorityLabel];
    [v13 setCk_highlighted:shouldLabelsBeHighlighted];
  }
}

- (void)updateLabelTextColors
{
  v3 = [(CKConversationListCell *)self shouldLabelsBeHighlighted];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = v5;
  if (v3)
  {
    [v5 conversationListCellSelectedDateColor];
  }

  else
  {
    [v5 conversationListDateColor];
  }
  v21 = ;

  v7 = [(CKConversationListCell *)self shouldLabelsBeHighlighted];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = v9;
  if (v7)
  {
    [v9 conversationListCellSelectedTextColor];
  }

  else
  {
    [v9 conversationListSenderColor];
  }
  v11 = ;

  v12 = [(CKConversation *)self->_conversation chat];
  v13 = [v12 isStewieChat];

  if (v13)
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v16 = [v15 conversationListEmergencyColor];

    v11 = v16;
  }

  if (v21)
  {
    v17 = [(CKDateLabel *)self->_dateLabel textColor];

    if (v17 != v21)
    {
      [(CKDateLabel *)self->_dateLabel setTextColor:v21];
    }
  }

  if (v11)
  {
    v18 = [(CKLabel *)self->_fromLabel textColor];

    if (v18 != v11)
    {
      [(CKLabel *)self->_fromLabel setTextColor:v11];
    }
  }

  [(CKConversationListCell *)self updateVerifiedCheckmarkForBusiness];
  summaryLabel = self->_summaryLabel;
  v20 = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:v20 fastPreview:0];
}

- (void)_updateAccessoryIndicatorColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v11 = [v4 accessoryIndicatorTintColor];

  if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 accessoryIndicatorHighlightedTintColor];

    if (v7)
    {
      v8 = +[CKUIBehavior sharedBehaviors];
      v9 = [v8 theme];
      v10 = [v9 accessoryIndicatorHighlightedTintColor];

      v11 = v10;
    }
  }

  [(CKConversationListCell *)self updateAccessoryIndicatorsColorForHighlightedState:[(CKConversationListCell *)self shouldLabelsBeHighlighted]];
}

- (void)didHoverOverCell:(id)a3
{
  v4 = [a3 state];
  if (v4 == 3)
  {
    gradient = 0;
    v5 = 1;
  }

  else
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = 0;
    gradient = self->_gradient;
  }

  v7 = [(UILabel *)self->_summaryLabel layer];
  [v7 setMask:gradient];

  closeButton = self->_closeButton;

  [(UIButton *)closeButton setHidden:v5];
}

- (void)deleteButtonTapped
{
  v3 = [(CKConversationListCell *)self delegate];
  v4 = [(CKConversationListCell *)self conversation];
  [v3 selectedDeleteButtonForConversation:v4 inCell:self];

  v6 = [(CKConversationListCell *)self conversation];
  v5 = [v6 unsentComposition];
  [v5 cleanupCKShareFromComposition];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)setContainerBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_containerBounds = &self->_containerBounds;
  if (!CGRectEqualToRect(self->_containerBounds, a3))
  {
    p_containerBounds->origin.x = x;
    p_containerBounds->origin.y = y;
    p_containerBounds->size.width = width;
    p_containerBounds->size.height = height;
    v9 = [(CKConversationListCell *)self cellLayout];

    if (!v9)
    {
      [CKConversationListCell setContainerBounds:];
    }

    v10 = [(CKConversationListCell *)self cellLayout];
    [v10 invalidate];

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
  v5 = [v4 conversationListDateFont];
  [(CKDateLabel *)dateLabel setFont:v5];

  fromLabel = self->_fromLabel;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 conversationListSenderFont];
  [(CKLabel *)fromLabel setFont:v8];

  summaryLabel = self->_summaryLabel;
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 conversationListSummaryFont];
  [(UILabel *)summaryLabel setFont:v11];

  v12 = self->_summaryLabel;
  v13 = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:v12 conversation:v13 fastPreview:0];
}

- (void)simLabelImageDidChange
{
  v3 = [(CKConversationListCell *)self conversation];
  v4 = [v3 wantsLabelForDSDS];

  if (v4)
  {
    summaryLabel = self->_summaryLabel;
    v6 = [(CKConversationListCell *)self conversation];
    [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:v6 fastPreview:0];
  }
}

- (void)updateUnreadIndicatorWithImage:(id)a3
{
  if (!CKIsRunningUnitTests())
  {
    [CKConversationListCell updateUnreadIndicatorWithImage:];
  }
}

- (void)updateFromLabelWithText:(id)a3
{
  if (!CKIsRunningUnitTests())
  {
    [CKConversationListCell updateUnreadIndicatorWithImage:];
  }
}

- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Updating contents of CKConversationListCell for conversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v32 = v6;
    _CKLog();
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v6 name];
      *buf = 138412290;
      v34 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "  From: '%@'", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v32 = [v6 name];
    _CKLog();
  }

  [(CKConversationListCell *)self setConversation:v6, v32];
  self->_placeholder = [v6 isPlaceholder];
  -[CKConversationListCell setMuted:](self, "setMuted:", [v6 isMuted]);
  -[CKConversationListCell setGroupConversation:](self, "setGroupConversation:", [v6 isGroupConversation]);
  [(CKConversationListCell *)self updateUnreadIndicatorForCurrentConversation];
  if ([v6 hasDisplayName])
  {
    v10 = [v6 displayName];
  }

  else
  {
    v10 = [v6 name];
    [v6 fetchSuggestedNameIfNecessary];
  }

  v11 = v10;
  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 chat];
        v14 = [v13 guid];
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Setting conversation cell text to nil! Chat guid: %@", buf, 0xCu);
      }
    }

    v11 = &stru_1F04268F8;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v17 = [v16 isIntroductionsEnabled];

  if (v17)
  {
    if (([v6 hasDisplayName] & 1) == 0)
    {
      v18 = [v6 chat];
      v19 = [v18 hasBlockedParticipant];

      if (v19)
      {
        v20 = [v6 attributedName];

        v15 = v20;
      }
    }
  }

  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = [v21 showUnreadCountDebugggingInfo];

  if (v22)
  {
    v23 = [v6 unreadCount];
    v24 = [v15 mutableCopy];
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu) ", v23];
    v27 = [v25 initWithString:v26];
    [v24 insertAttributedString:v27 atIndex:0];

    if (v23 < 1)
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
  [(CKConversationListCell *)self updateDateLabel:self->_dateLabel conversation:v6];
  v29 = [v6 chat];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 allowedByScreenTime] ^ 1;
  }

  else
  {
    v31 = 0;
  }

  [(CKConversationListCell *)self setShouldHidePreviewSummary:v31];
  [(CKConversationListCell *)self updateSummaryLabel:self->_summaryLabel conversation:v6 fastPreview:v4];
  [(CKConversationListCell *)self updateVerifiedCheckmarkForBusiness];
  [(CKConversationListCell *)self setNeedsLayout];
}

- (void)updateDateLabel:(id)a3 conversation:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationListCell *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKConversationListCell *)self delegate];
    [v10 updateDateLabel:v6 conversation:v7];
  }

  else
  {
    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isPriorityMessagesEnabled];

    if (v12)
    {
      v13 = [(CKConversationListCell *)self priorityLabelClassification];
      if (v13)
      {
        p_priorityLabel = &self->_priorityLabel;
        if (v13 != [(CKConversationPriorityLabel *)self->_priorityLabel classification])
        {
          [(CKConversationPriorityLabel *)*p_priorityLabel setClassification:v13];
        }

        [v6 setHidden:1];
      }

      else
      {
        [v6 setHidden:0];
        p_priorityLabel = &self->_priorityLabel;
      }

      [(CKConversationPriorityLabel *)*p_priorityLabel setHidden:v13 == 0];
    }

    v15 = [v7 date];
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(26);
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "  Date: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    if (v15)
    {
      [(CKDateLabel *)self->_dateLabel setDate:v15];
    }
  }
}

- (void)updateSummaryLabel:(id)a3 conversation:(id)a4 fastPreview:(BOOL)a5
{
  v5 = a5;
  v62 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v8 = a4;
  v9 = [(CKConversationListCell *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CKConversationListCell *)self delegate];
    [v11 updateSummaryLabel:v57 conversation:v8 fastPreview:v5];

    goto LABEL_42;
  }

  if (![(CKConversationListCell *)self freezeSummaryText]|| ([(UILabel *)self->_summaryLabel attributedText], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (v5)
    {
      [v8 fastPreviewTextIgnoringPluginContent];
    }

    else
    {
      [v8 previewText];
    }
    v12 = ;
  }

  if ([(CKConversationListCell *)self _shouldShowSummaryForSatelliteMessages])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"NEW_SATELLITE_MESSAGE_COUNT" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
    v16 = [(CKConversationListCell *)self conversation];
    v17 = [v16 chat];
    v18 = [v13 localizedStringWithFormat:v15, objc_msgSend(v17, "pendingIncomingSatelliteMessageCount")];

    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    v20 = [v19 userInterfaceLayoutDirection];

    if (v20 == 1)
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
    v30 = [v8 chat];
    v31 = [v30 chatSummary];

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [(CKConversationListCell *)self conversation];
        v34 = [v33 chat];
        v35 = [v34 guid];
        *buf = 67109634;
        *v59 = v31 != 0;
        *&v59[4] = 2112;
        *&v59[6] = v35;
        v60 = 1024;
        v61 = v31 == 0;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Showing chat summary: (%d) for conversation with GUID %@, isNilChatSummary=%{BOOL}d", buf, 0x18u);
      }

      if (!v31)
      {
        goto LABEL_28;
      }
    }

    else if (!v31)
    {
      goto LABEL_28;
    }

    [(CKConversationListCell *)self _updateSummaryLabelWithGeneratedSummary:v31];
    [(UILabel *)self->_summaryLabel setAccessibilityIdentifier:@"previewWithSummary"];
    goto LABEL_39;
  }

LABEL_28:
  [(UILabel *)self->_summaryLabel setAccessibilityIdentifier:0];
  v36 = [v8 chat];
  if ([v36 chatStyle] != 43)
  {

    goto LABEL_32;
  }

  v37 = [v8 chat];
  v38 = [v37 conversation];
  v39 = v38 == 0;

  if (v39)
  {
LABEL_32:
    v44 = +[CKUIBehavior sharedBehaviors];
    v45 = [v44 conversationListSummaryFont];

    v46 = [(CKConversationListCell *)self summaryLabelTextColor];
    v47 = objc_alloc_init(CKPreviewTextDisplayContext);
    [(CKPreviewTextDisplayContext *)v47 setBaseTextFont:v45];
    [(CKPreviewTextDisplayContext *)v47 setBaseTextColor:v46];
    v48 = MEMORY[0x1E69DB878];
    v49 = [v45 fontDescriptor];
    v50 = [v49 fontDescriptorWithSymbolicTraits:2];
    v51 = [v48 fontWithDescriptor:v50 size:0.0];
    [(CKPreviewTextDisplayContext *)v47 setMentionsFont:v51];

    if ([(CKConversationListCell *)self shouldLabelsBeHighlighted])
    {
      [(CKPreviewTextDisplayContext *)v47 setMentionsColor:v46];
    }

    else
    {
      v52 = +[CKUIBehavior sharedBehaviors];
      v53 = [v52 theme];
      v54 = [v53 meMentionTextColor];
      [(CKPreviewTextDisplayContext *)v47 setMentionsColor:v54];
    }

    v55 = CKPreviewTextForDisplay(v12, v47);
    [(UILabel *)self->_summaryLabel setAttributedText:v55];

    goto LABEL_36;
  }

  v40 = [v12 string];
  v41 = [v8 chat];
  v42 = [v41 conversation];
  v43 = [(CKConversationListCell *)self _makeSummaryAttributedStringWithText:v40 multiwayConversation:v42];

  [(UILabel *)self->_summaryLabel setAttributedText:v43];
LABEL_36:
  v31 = 0;
LABEL_39:
  [(CKConversationListCell *)self _prependSummaryLabelWithSIMForConversation:v8];
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    [(UILabel *)self->_summaryLabel setHidden:[(CKConversationListCell *)self shouldHidePreviewSummary]];
    [(CKConversationListCell *)self updateBlockedSummaryLabelIfNeeded];
  }

LABEL_42:
}

- (void)_updateSummaryLabelWithGeneratedSummary:(id)a3
{
  v18 = [a3 string];
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v18];
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
  v15 = [(CKConversationListCell *)self summaryLabelTextColor];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 conversationListSummaryFont];

  [v4 addAttribute:*MEMORY[0x1E69DB650] value:v15 range:{0, v14}];
  [v4 addAttribute:*MEMORY[0x1E69DB648] value:v17 range:{0, v14}];

  [(UILabel *)self->_summaryLabel setAttributedText:v4];
  [(CKConversationListCell *)self setShouldHidePreviewSummary:0];
}

- (unint64_t)unreadMessageCount
{
  v2 = [(CKConversationListCell *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 unreadMessageCount];

  return v4;
}

- (id)summaryAttributedTextForBlockedConversationWithIcon:(BOOL)a3
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"CONVERSATION_LIST_CELL_SUMMARY_TEXT_SCREENTIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = [v4 localizedStringWithFormat:v6, -[CKConversationListCell unreadMessageCount](self, "unreadMessageCount")];

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 userInterfaceLayoutDirection];

    if (v9 == 1)
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
    v15 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v13 addAttribute:v14 value:v15 range:{0, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_makeSummaryAttributedStringWithText:(id)a3 multiwayConversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AEC0] string];
  }

  v47 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = [MEMORY[0x1E69A5B78] conversationIsVideoCall:v6];
  v9 = [MEMORY[0x1E69A5B78] conversationIsAVLessSharePlay:v6];
  v10 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  if (v9)
  {
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemGreenColor"];
    v13 = [v11 configurationWithHierarchicalColor:v12];

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 conversationListSharePlayIcon];
    v10 = v13;
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
    v15 = ;
  }

  v46 = v10;

  v45 = [v15 imageWithSymbolConfiguration:v10];

  v17 = MEMORY[0x1E696AAB0];
  v18 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v45];
  v44 = [v17 attributedStringWithAttachment:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [v6 avMode]);
  v43 = [v19 stringWithFormat:@" %@", v20];

  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = +[CKUIBehavior sharedBehaviors];
  v23 = [v22 conversationCellSummaryBoldPreviewTextAttributes];
  v24 = [v21 initWithString:v43 attributes:v23];

  [v7 appendAttributedString:v24];
  v25 = [v6 activeRemoteParticipants];
  v26 = [v25 count];

  v27 = MEMORY[0x1E696AEC0];
  v28 = IMSharedUtilitiesFrameworkBundle();
  v29 = [v28 localizedStringForKey:@"%lu People Active" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v30 = [v27 localizedStringWithFormat:v29, v26];

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@\n", v30];
  v32 = objc_alloc(MEMORY[0x1E696AAB0]);
  v33 = +[CKUIBehavior sharedBehaviors];
  v34 = [v33 conversationCellSummaryPreviewTextAttributes];
  v35 = [v32 initWithString:v31 attributes:v34];

  [v7 appendAttributedString:v35];
  v36 = objc_alloc(MEMORY[0x1E696AAB0]);
  v37 = +[CKUIBehavior sharedBehaviors];
  v38 = [v37 conversationCellSummaryPreviewTextAttributes];
  v39 = [v36 initWithString:v47 attributes:v38];

  [v7 appendAttributedString:v39];
  v40 = *MEMORY[0x1E69DB650];
  v41 = [(CKConversationListCell *)self summaryLabelTextColor];
  [v7 addAttribute:v40 value:v41 range:{0, objc_msgSend(v7, "length")}];

  [v7 insertAttributedString:v44 atIndex:0];

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  v6 = [(CKConversationListCell *)self traitCollection];
  [v6 displayScale];
  [v5 cellHeightForDisplayScale:?];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)updateForEditing:(BOOL)a3
{
  v4 = [(CKConversationListCell *)self showingEditControl];
  v5 = 1.0;
  if (v4)
  {
    v5 = 0.0;
  }

  chevronImageView = self->_chevronImageView;

  [(UIImageView *)chevronImageView setAlpha:v5];
}

- (void)setEditingPins:(BOOL)a3 animated:(BOOL)a4
{
  editingPins = self->__editingPins;
  self->__editingPins = a3;
  if (editingPins != a3)
  {
    v17 = v7;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    v9 = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKConversationListCell_setEditingPins_animated___block_invoke;
    aBlock[3] = &unk_1E72ED8D8;
    aBlock[4] = self;
    v16 = a3;
    v11 = _Block_copy(aBlock);
    [(CKConversationListCell *)self _performBlock:v11 animated:v9];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__CKConversationListCell_setEditingPins_animated___block_invoke_2;
    v14[3] = &unk_1E72EBA18;
    v14[4] = self;
    v12 = _Block_copy(v14);
    v13 = v12;
    if (v9)
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

- (void)_performBlock:(id)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:a3 animations:0.300000012];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(CKConversationListCell *)self setNeedsLayout];
  v10.receiver = self;
  v10.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v10 setEditing:v5 animated:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CKConversationListCell_setEditing_animated___block_invoke;
  v8[3] = &unk_1E72ED8D8;
  v8[4] = self;
  v9 = v5;
  v7 = _Block_copy(v8);
  [(CKConversationListCell *)self _performBlock:v7 animated:v4];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKConversationListCell;
  [(CKConversationListCell *)&v11 setSelected:a3 animated:a4];
  v6 = [(UIButton *)self->_closeButton imageView];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = v8;
  if (v4)
  {
    [v8 conversationListCellSelectedSummaryColor];
  }

  else
  {
    [v8 conversationListSummaryColor];
  }
  v10 = ;
  [v6 setTintColor:v10];
}

- (void)setShouldHidePreviewSummary:(BOOL)a3
{
  v3 = a3;
  shouldHidePreviewSummary = self->_shouldHidePreviewSummary;
  self->_shouldHidePreviewSummary = a3;
  v6 = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  if (shouldHidePreviewSummary != v3 && v6 != 0)
  {
    summaryLabel = self->_summaryLabel;
    v9 = [(CKConversationListCell *)self conversation];
    [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:v9 fastPreview:0];
  }
}

- (int64_t)priorityLabelClassification
{
  v3 = [(CKConversationListCell *)self introductionsDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKConversationListCell *)self introductionsDelegate];
  v5 = [v4 conversationListCellCanShowPriorityLabelInCurrentFilterMode:self];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CKConversationListCell *)self conversation];
  v7 = [v6 chat];
  v8 = [v7 priorityClassification];

  return v8;
}

- (void)_handleSatelliteStatusStateChanged
{
  summaryLabel = self->_summaryLabel;
  v4 = [(CKConversationListCell *)self conversation];
  [(CKConversationListCell *)self updateSummaryLabel:summaryLabel conversation:v4 fastPreview:0];
}

- (BOOL)hasUnreadMessagesForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKConversationListCell *)self delegate];
    v8 = [v7 hasUnreadMessagesForConversation:v4];
  }

  else
  {
    v8 = [v4 hasUnreadMessages];
  }

  return v8;
}

- (id)unreadIndicatorImageForVisibility:(BOOL)a3 withMuteState:(BOOL)a4
{
  if (a3)
  {
    if (-[CKConversationListCell shouldLabelsBeHighlighted](self, "shouldLabelsBeHighlighted", a3, a4) && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 shouldUnreadIndicatorChangeOnSelection], v4, v5))
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 unreadIndicatorSelectedImage];
    }

    else
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 unreadIndicatorTintedImage];
    }

    v8 = v7;
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

- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKConversationListCell *)self delegate];
    v8 = [v7 shouldAlwaysHideUnreadIndicatorForConversation:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_prependSummaryLabelWithSIMForConversation:(id)a3
{
  v6 = a3;
  if ([v6 wantsLabelForDSDS])
  {
    v4 = [(UILabel *)self->_summaryLabel attributedText];
    v5 = [CKDualSIMUtilities makeSummaryAttributedStringWithSIMImageUsingAttributedString:v4 forConversation:v6];

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
  v2 = self;
  CKConversationListCell.makeTextAttachmentsForCurrentIndicatorState()();

  sub_1908C1BD8();
  v3 = sub_190D57160();

  return v3;
}

+ (id)identifierForConversation:(id)a3
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