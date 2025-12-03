@interface CKConversationListStandardCell
+ (double)leadingLayoutMargin;
+ (id)identifierForConversation:(id)conversation;
- (BOOL)_boundsShouldCollapseContent:(CGRect)content;
- (BOOL)_isCollapsed;
- (BOOL)_shouldHideUnreadIndicatorForEditing:(BOOL)editing;
- (BOOL)_shouldShowAvatarForWidth:(double)width;
- (BOOL)_shouldShowDownloadingPendingMessages;
- (BOOL)_shouldShowPriorityLabelInsteadOfDate;
- (BOOL)_shouldShowSlashSatelliteIcon;
- (BOOL)_shouldShowTypingIndicatorForConversation:(id)conversation;
- (BOOL)avatarView:(id)view shouldShowContact:(id)contact;
- (BOOL)shouldShowFooter;
- (CGRect)_calculateIndicatorFrameForSize:(CGSize)size trailing:(BOOL)trailing displayScale:(double)scale insets:(UIEdgeInsets)insets;
- (CGRect)_calculateIndicatorViewRectVerticallyCenteredWithFirstTextLineOfLabel:(id)label horizontallyAlignedWithColumn:(CGRect)column wantsCenteringColumnAlignment:(BOOL)alignment size:(CGSize)size offset:(CGPoint)offset;
- (CGRect)_calculateRectVerticallyCenteredWithFirstTextLineOfLabel:(id)label horizontallyCenteredInColumn:(CGRect)column size:(CGSize)size offset:(CGPoint)offset;
- (CGRect)_calculateSummaryLabelFrameForColumn:(CGRect)column summaryLabelCapFrameYOrigin:(double)origin displayScale:(double)scale;
- (CKConversationListStandardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_makeScreenTimeFooterIfNeeded;
- (id)_makeUnknownSenderFooterIfNeeded;
- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)contactsForPreviewInteractionForAvatarView:(id)view suggestedKeysToFetch:(id)fetch;
- (id)overrideImageDataForPreviewInteractionForAvatarView:(id)view;
- (void)_addFooter:(id)footer;
- (void)_calculateLayoutFrames;
- (void)_configureAccessoryLabelAppearanceForConversation:(id)conversation;
- (void)_configureFooter;
- (void)_configureSummaryLabelAppearanceForConversation:(id)conversation;
- (void)_removeDownloadingPendingMessagesView;
- (void)_removeFooter;
- (void)_resetTypingIndicator;
- (void)_setupDownloadingPendingMessagesView;
- (void)_startTypingIndicator;
- (void)_stopTypingIndicator;
- (void)_updateAvatarView;
- (void)_updateLabelVisibility;
- (void)_updateTypingIndicatorFrame:(BOOL)frame isCollapsed:(BOOL)collapsed;
- (void)dealloc;
- (void)forceUnreadIndicatorVisibility:(BOOL)visibility forConversation:(id)conversation animated:(BOOL)animated;
- (void)increaseContrastDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)registerForEvents;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setMuted:(BOOL)muted;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccessoryIndicatorsColorForHighlightedState:(BOOL)state;
- (void)updateAccessoryIndicatorsForCurrentState;
- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview;
- (void)updateForEditing:(BOOL)editing;
- (void)updateFromLabelWithText:(id)text;
- (void)updateTypingIndicatorIfNeeded;
- (void)updateUnreadIndicatorWithImage:(id)image animated:(BOOL)animated;
- (void)updateWithForwardedConfigurationState:(id)state;
@end

@implementation CKConversationListStandardCell

- (void)registerForEvents
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateTypingIndicatorIfNeeded name:*MEMORY[0x1E69DDBC0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_updateAccessoryIndicatorsForCurrentState name:*MEMORY[0x1E69A5938] object:0];
}

- (void)_configureFooter
{
  if ([(CKConversationListStandardCell *)self shouldShowFooter])
  {
    _makeUnknownSenderFooterIfNeeded = [(CKConversationListStandardCell *)self _makeUnknownSenderFooterIfNeeded];
    if (_makeUnknownSenderFooterIfNeeded || ([(CKConversationListStandardCell *)self _makeScreenTimeFooterIfNeeded], (_makeUnknownSenderFooterIfNeeded = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = _makeUnknownSenderFooterIfNeeded;
      [(CKConversationListStandardCell *)self _addFooter:_makeUnknownSenderFooterIfNeeded];
    }
  }

  else
  {
    footer = [(CKConversationListStandardCell *)self footer];

    if (footer)
    {

      [(CKConversationListStandardCell *)self _removeFooter];
    }
  }
}

- (BOOL)_shouldShowDownloadingPendingMessages
{
  conversation = [(CKConversationListCell *)self conversation];
  shouldShowDownloadingPendingMessages = [conversation shouldShowDownloadingPendingMessages];

  return shouldShowDownloadingPendingMessages;
}

- (void)_stopTypingIndicator
{
  [(CKConversationListStandardCell *)self setShowTypingIndicator:0];
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {
    typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView2 stopAnimation];

    typingIndicatorView3 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView3 removeFromSuperview];

    [(CKConversationListCell *)self setTypingIndicatorView:0];
  }
}

- (void)_removeDownloadingPendingMessagesView
{
  [(CKConversationListStandardCell *)self setShowDownloadingPendingMessages:0];
  downloadingPendingMessagesView = [(CKConversationListCell *)self downloadingPendingMessagesView];
  [downloadingPendingMessagesView removeFromSuperview];

  [(CKConversationListCell *)self setDownloadingPendingMessagesView:0];
}

- (void)_updateAvatarView
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 canShowContactPhotosInConversationList])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    contactPhotosEnabled = [v4 contactPhotosEnabled];

    if (contactPhotosEnabled)
    {
      if (!self->_avatarView)
      {
        v6 = *MEMORY[0x1E695F058];
        v7 = *(MEMORY[0x1E695F058] + 8);
        v8 = +[CKUIBehavior sharedBehaviors];
        [v8 conversationListContactImageDiameter];
        v10 = v9;

        v11 = [[CKAvatarView alloc] initWithFrame:v6, v7, v10, v10];
        avatarView = self->_avatarView;
        self->_avatarView = v11;

        [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
        [(CKAvatarView *)self->_avatarView setUserInteractionEnabled:0];
        [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
        [(CNAvatarView *)self->_avatarView setDelegate:self];
        [(CNAvatarView *)self->_avatarView setBypassActionValidation:1];
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isSwiftUIAvatarRenderingEnabled = [mEMORY[0x1E69A8070] isSwiftUIAvatarRenderingEnabled];

        if (isSwiftUIAvatarRenderingEnabled)
        {
          [(CNAvatarView *)self->_avatarView setBackgroundStyle:5];
        }

        contentView = [(CKConversationListStandardCell *)self contentView];
        [contentView addSubview:self->_avatarView];
      }

      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([mEMORY[0x1E69A8070]2 avatarViewAllowsStaleRendering])
      {
        isDisplayingContent = [(CNAvatarView *)self->_avatarView isDisplayingContent];

        if (isDisplayingContent)
        {
          [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
        }
      }

      else
      {
      }

      conversation = [(CKConversationListCell *)self conversation];
      chat = [conversation chat];
      chatIdentifier = [chat chatIdentifier];
      [(CKAvatarView *)self->_avatarView _ck_setContextToken:chatIdentifier];

      maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
      v23 = [conversation conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
      v24 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v23];
      if ([conversation recipientCount] == 1)
      {
        [(CNAvatarView *)self->_avatarView setName:0];
        v25 = self->_avatarView;
        v26 = *MEMORY[0x1E695D070];
        v32[0] = *MEMORY[0x1E695D068];
        v32[1] = v26;
        v27 = *MEMORY[0x1E695D078];
        v32[2] = *MEMORY[0x1E695D080];
        v32[3] = v27;
        v32[4] = *MEMORY[0x1E695D060];
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
        [(CNAvatarView *)v25 setActionCategories:v28];
      }

      else
      {
        if ([conversation hasDisplayName])
        {
          [conversation displayName];
        }

        else
        {
          [conversation name];
        }
        v28 = ;
        [(CNAvatarView *)self->_avatarView setName:v28];
        v29 = self->_avatarView;
        v31 = *MEMORY[0x1E695D070];
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        [(CNAvatarView *)v29 setActionCategories:v30];
      }

      -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [conversation shouldHaveRoundRectAvatar]);
      [(CKConversationListStandardCell *)self setNeedsLayout];

      return;
    }
  }

  else
  {
  }

  [(CKAvatarView *)self->_avatarView removeFromSuperview];
  v18 = self->_avatarView;
  self->_avatarView = 0;
}

- (void)updateAccessoryIndicatorsForCurrentState
{
  selfCopy = self;
  v3 = sub_19023EC54();
  indicatorContainerView = [(CKConversationListStandardCell *)selfCopy indicatorContainerView];
  if (indicatorContainerView)
  {
    v5 = indicatorContainerView;
    v6 = *(&indicatorContainerView->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
    *(&indicatorContainerView->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration) = v3;
    sub_190D52690();
    sub_19023EF88(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)_shouldShowSlashSatelliteIcon
{
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isMessagingActiveOverSatellite = [mEMORY[0x1E69A5B00] isMessagingActiveOverSatellite];

  if (isMessagingActiveOverSatellite)
  {
    if ([(CKConversationListCell *)self isGroupConversation])
    {
      return 1;
    }

    conversation = [(CKConversationListCell *)self conversation];
    recipient = [conversation recipient];
    rawAddress = [recipient rawAddress];
    if (IMStringIsEmail())
    {
      conversation2 = [(CKConversationListCell *)self conversation];
      chat = [conversation2 chat];
      account = [chat account];
      serviceName = [account serviceName];
      v13 = [serviceName isEqualToString:*MEMORY[0x1E69A7AF8]];

      if (!v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)layoutSubviews
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKConversationListStandardCell.m" lineNumber:557 description:{@"%@ needs a cell layout.", v6}];
}

- (BOOL)_isCollapsed
{
  selfCopy = self;
  contentView = [(CKConversationListStandardCell *)self contentView];
  [contentView bounds];
  LOBYTE(selfCopy) = [(CKConversationListStandardCell *)selfCopy _boundsShouldCollapseContent:?];

  return selfCopy;
}

- (void)_calculateLayoutFrames
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKConversationListStandardCell.m" lineNumber:839 description:{@"%@ needs a cell layout.", v5}];
}

+ (double)leadingLayoutMargin
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 conversationListCellLeftMargin];
  v4 = v3;

  return v4;
}

- (BOOL)shouldShowFooter
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled && (-[CKConversationListCell conversation](self, "conversation"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[CKConversationListCell conversation](self, "conversation"), v7 = objc_claimAutoreleasedReturnValue(), [v7 chat], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8) && (-[CKConversationListStandardCell configurationState](self, "configurationState"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSelected"), v9, (v10 & 1) == 0) && !-[CKConversationListStandardCell _isCollapsed](self, "_isCollapsed") && !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation") && (-[CKConversationListStandardCell isEditing](self, "isEditing") & 1) == 0 && objc_msgSend(MEMORY[0x1E69A82A0], "isFilterUnknownSendersEnabled") && (-[CKConversationListCell introductionsDelegate](self, "introductionsDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "conversationListCellCanShowFooter:", self), v11, v12) && (-[CKConversationListCell conversation](self, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "chat"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lastSeenMessageGuid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, v13, !v16) && (-[CKConversationListCell conversation](self, "conversation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "currentlyReviewingChat"), v17, v18))
  {
    conversation = [(CKConversationListCell *)self conversation];
    inUnknownSendersFilter = [conversation inUnknownSendersFilter];

    conversation2 = [(CKConversationListCell *)self conversation];
    chat = [conversation2 chat];
    v23 = [chat allowedByScreenTime] ^ 1;

    v24 = inUnknownSendersFilter | v23;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

- (void)_updateLabelVisibility
{
  _isCollapsed = [(CKConversationListStandardCell *)self _isCollapsed];
  shouldHidePreviewSummary = [(CKConversationListCell *)self shouldHidePreviewSummary];
  summaryBlockedLabel = [(CKConversationListCell *)self summaryBlockedLabel];
  [summaryBlockedLabel setHidden:_isCollapsed & 1u | !shouldHidePreviewSummary];

  LOBYTE(summaryBlockedLabel) = shouldHidePreviewSummary || _isCollapsed;
  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel setHidden:summaryBlockedLabel & 1];

  dateLabel = [(CKConversationListCell *)self dateLabel];
  [dateLabel setHidden:_isCollapsed];

  priorityLabel = [(CKConversationListCell *)self priorityLabel];
  [priorityLabel setHidden:_isCollapsed];

  fromLabel = [(CKConversationListCell *)self fromLabel];
  [fromLabel setHidden:_isCollapsed];
}

+ (id)identifierForConversation:(id)conversation
{
  if ([conversation recipientCount] <= 1)
  {
    return @"CKConversationListStandardCellIdentifier";
  }

  else
  {
    return @"CKConversationListStandardCellGroupIdentifier";
  }
}

- (CKConversationListStandardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = CKConversationListStandardCell;
  v4 = [(CKConversationListCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 unreadIndicatorImageViewSize];
    v7 = v6;
    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v7, v9}];
    unreadIndicatorImageView = v4->_unreadIndicatorImageView;
    v4->_unreadIndicatorImageView = v10;

    [(UIImageView *)v4->_unreadIndicatorImageView setAccessibilityIdentifier:@"UnreadIndicatorImageView"];
    v12 = objc_alloc_init(_TtC7ChatKit32CKConversationListIndicatorsView);
    contentView = [(CKConversationListStandardCell *)v4 contentView];
    [contentView addSubview:v12];

    indicatorContainerView = v4->_indicatorContainerView;
    v4->_indicatorContainerView = v12;
    v15 = v12;

    LODWORD(indicatorContainerView) = [(CKConversationListStandardCell *)v4 _shouldReverseLayoutDirection];
    dateLabel = [(CKConversationListCell *)v4 dateLabel];
    v17 = dateLabel;
    if (indicatorContainerView)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    [dateLabel setTextAlignment:v18];

    priorityLabel = [(CKConversationListCell *)v4 priorityLabel];
    [priorityLabel setTextAlignment:v18];

    dateLabel2 = [(CKConversationListCell *)v4 dateLabel];
    v21 = +[CKUIBehavior sharedBehaviors];

    theme = [v21 theme];
    conversationListDateColor = [theme conversationListDateColor];
    [dateLabel2 setTextColor:conversationListDateColor];

    [(CKConversationListStandardCell *)v4 registerForEvents];
    [(CKConversationListStandardCell *)v4 _configureFooter];
  }

  return v4;
}

- (void)dealloc
{
  avatarView = [(CKConversationListStandardCell *)self avatarView];
  [avatarView setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  [(CKConversationListStandardCell *)self _stopTypingIndicator];
  [(CKConversationListStandardCell *)self _removeDownloadingPendingMessagesView];
  avatarView = [(CKConversationListStandardCell *)self avatarView];
  [avatarView setAllowStaleRendering:0];

  indicatorContainerView = [(CKConversationListStandardCell *)self indicatorContainerView];
  [indicatorContainerView prepareForReuse];

  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v5 prepareForReuse];
}

- (void)updateWithForwardedConfigurationState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v10 updateWithForwardedConfigurationState:stateCopy];
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    traitCollection = [(CKConversationListStandardCell *)self traitCollection];
    v8 = [v6 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection];

    typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
    LODWORD(traitCollection) = [typingIndicatorView2 isHighlighted];

    if (v8 != traitCollection)
    {
      [(CKConversationListStandardCell *)self _resetTypingIndicator];
    }
  }

  [(CKConversationListStandardCell *)self _configureFooter];
}

- (void)updateTypingIndicatorIfNeeded
{
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {

    [(CKConversationListStandardCell *)self _resetTypingIndicator];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListStandardCell *)&v5 traitCollectionDidChange:change];
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {
    [(CKConversationListStandardCell *)self _resetTypingIndicator];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = CKConversationListStandardCell;
  [(CKConversationListStandardCell *)&v8 setHighlighted:highlighted animated:animated];
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {
    typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView2 setHighlightedState:highlightedCopy];
  }
}

- (void)_startTypingIndicator
{
  if (![(CKConversationListCell *)self shouldHidePreviewSummary])
  {
    typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

    if (!typingIndicatorView)
    {
      v4 = objc_alloc_init(CKConversationListTypingIndicatorView);
      [(CKConversationListCell *)self setTypingIndicatorView:v4];

      typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
      if ([(CKConversationListStandardCell *)self isHighlighted])
      {
        v6 = +[CKApplicationState isApplicationActive];
      }

      else
      {
        v6 = 0;
      }

      [typingIndicatorView2 setHighlightedState:v6];

      if (CKIsRunningInMacCatalyst())
      {
        typingIndicatorView3 = [(CKConversationListCell *)self typingIndicatorView];
        [typingIndicatorView3 setTypingIndicatorScale:1.0];
      }

      else
      {
        typingIndicatorView3 = +[CKUIBehavior sharedBehaviors];
        [typingIndicatorView3 conversationListCellTypingIndicatorScale];
        v9 = v8;
        typingIndicatorView4 = [(CKConversationListCell *)self typingIndicatorView];
        [typingIndicatorView4 setTypingIndicatorScale:v9];
      }
    }

    contentView = [(CKConversationListStandardCell *)self contentView];
    typingIndicatorView5 = [(CKConversationListCell *)self typingIndicatorView];
    [contentView addSubview:typingIndicatorView5];

    typingIndicatorView6 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView6 stopAnimation];

    typingIndicatorView7 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView7 startPulseAnimation];

    summaryLabel = [(CKConversationListCell *)self summaryLabel];
    [summaryLabel removeFromSuperview];
  }
}

- (void)_resetTypingIndicator
{
  [(CKConversationListStandardCell *)self setShowTypingIndicator:1];

  [(CKConversationListStandardCell *)self setNeedsLayout];
}

- (void)_setupDownloadingPendingMessagesView
{
  downloadingPendingMessagesView = [(CKConversationListCell *)self downloadingPendingMessagesView];

  if (!downloadingPendingMessagesView)
  {
    v4 = +[_TtC7ChatKit39CKDownloadingPendingMessagesViewBuilder createDownloadingPendingMessagesViewInstanceForChatKit];
    [(CKConversationListCell *)self setDownloadingPendingMessagesView:v4];

    contentView = [(CKConversationListStandardCell *)self contentView];
    downloadingPendingMessagesView2 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    [contentView addSubview:downloadingPendingMessagesView2];

    summaryLabel = [(CKConversationListCell *)self summaryLabel];
    [summaryLabel removeFromSuperview];
  }

  conversation = [(CKConversationListCell *)self conversation];
  pendingMessageCountText = [conversation pendingMessageCountText];

  downloadingPendingMessagesView3 = [(CKConversationListCell *)self downloadingPendingMessagesView];
  [downloadingPendingMessagesView3 updateMessageCountWith:pendingMessageCountText];
}

- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview
{
  previewCopy = preview;
  v7.receiver = self;
  v7.super_class = CKConversationListStandardCell;
  conversationCopy = conversation;
  [(CKConversationListCell *)&v7 updateContentsForConversation:conversationCopy fastPreview:previewCopy];
  [(CKConversationListStandardCell *)self _configureSummaryLabelAppearanceForConversation:conversationCopy, v7.receiver, v7.super_class];
  [(CKConversationListStandardCell *)self _configureAccessoryLabelAppearanceForConversation:conversationCopy];

  [(CKConversationListStandardCell *)self _updateAvatarView];
  [(CKConversationListStandardCell *)self updateAccessoryIndicatorsForCurrentState];
  [(CKConversationListStandardCell *)self _configureFooter];
}

- (void)_removeFooter
{
  footer = [(CKConversationListStandardCell *)self footer];
  [footer removeFromSuperview];

  [(CKConversationListStandardCell *)self setFooter:0];

  [(CKConversationListStandardCell *)self invalidateIntrinsicContentSize];
}

- (void)_addFooter:(id)footer
{
  if (footer)
  {
    footerCopy = footer;
    footer = [(CKConversationListStandardCell *)self footer];

    contentView = [(CKConversationListStandardCell *)self contentView];
    [contentView addSubview:footerCopy];

    [(CKConversationListStandardCell *)self setFooter:footerCopy];
    cellLayout = [(CKConversationListCell *)self cellLayout];
    [cellLayout footerFrame];
    LODWORD(contentView) = CGRectEqualToRect(v10, *MEMORY[0x1E695F058]);

    if (contentView)
    {
      cellLayout2 = [(CKConversationListCell *)self cellLayout];
      [cellLayout2 invalidate];
    }

    if (!footer)
    {
      [(CKConversationListStandardCell *)self invalidateIntrinsicContentSize];
    }

    [(CKConversationListStandardCell *)self setNeedsLayout];
  }
}

- (id)_makeScreenTimeFooterIfNeeded
{
  v22[2] = *MEMORY[0x1E69E9840];
  conversation = [(CKConversationListCell *)self conversation];
  chat = [conversation chat];
  allowedByScreenTime = [chat allowedByScreenTime];

  footer = [(CKConversationListStandardCell *)self footer];
  if ((footer != 0) | allowedByScreenTime & 1)
  {
  }

  else if ([(CKConversationListStandardCell *)self shouldShowFooter])
  {
    objc_initWeak(&location, self);
    v7 = [CKFooterButtonAction alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__CKConversationListStandardCell__makeScreenTimeFooterIfNeeded__block_invoke;
    v19[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v20, &location);
    v8 = [(CKFooterButtonAction *)v7 initWithActionType:5 actionHandler:v19];
    v9 = [CKFooterButtonAction alloc];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__CKConversationListStandardCell__makeScreenTimeFooterIfNeeded__block_invoke_2;
    v17 = &unk_1E72EBCD8;
    objc_copyWeak(&v18, &location);
    v10 = [(CKFooterButtonAction *)v9 initWithActionType:2 actionHandler:&v14];
    v22[0] = v10;
    v22[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];
    v12 = [[CKFooterButtonsContainer alloc] initWithActions:v11 type:1];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

void __63__CKConversationListStandardCell__makeScreenTimeFooterIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained introductionsDelegate];
    [v2 conversationListCellDidPressAddToContacts:v3];

    WeakRetained = v3;
  }
}

void __63__CKConversationListStandardCell__makeScreenTimeFooterIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained introductionsDelegate];
    [v2 conversationListCellDidPressDelete:v3];

    WeakRetained = v3;
  }
}

- (id)_makeUnknownSenderFooterIfNeeded
{
  v23[2] = *MEMORY[0x1E69E9840];
  conversation = [(CKConversationListCell *)self conversation];
  chat = [conversation chat];
  allowedByScreenTime = [chat allowedByScreenTime];

  conversation2 = [(CKConversationListCell *)self conversation];
  LOBYTE(conversation) = [conversation2 inUnknownSendersFilter];

  footer = [(CKConversationListStandardCell *)self footer];
  if (((footer == 0) & allowedByScreenTime & conversation) == 1)
  {
    if ([(CKConversationListStandardCell *)self shouldShowFooter])
    {
      objc_initWeak(&location, self);
      v8 = [CKFooterButtonAction alloc];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__CKConversationListStandardCell__makeUnknownSenderFooterIfNeeded__block_invoke;
      v20[3] = &unk_1E72EBCD8;
      objc_copyWeak(&v21, &location);
      v9 = [(CKFooterButtonAction *)v8 initWithActionType:0 actionHandler:v20];
      v10 = [CKFooterButtonAction alloc];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __66__CKConversationListStandardCell__makeUnknownSenderFooterIfNeeded__block_invoke_2;
      v18 = &unk_1E72EBCD8;
      objc_copyWeak(&v19, &location);
      v11 = [(CKFooterButtonAction *)v10 initWithActionType:2 actionHandler:&v15];
      [(CKFooterButtonAction *)v11 setAttributes:2, v15, v16, v17, v18];
      v23[0] = v11;
      v23[1] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      v13 = [[CKFooterButtonsContainer alloc] initWithActions:v12 type:1];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

void __66__CKConversationListStandardCell__makeUnknownSenderFooterIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained introductionsDelegate];
    [v2 conversationListCellDidPressAccept:v3];

    WeakRetained = v3;
  }
}

void __66__CKConversationListStandardCell__makeUnknownSenderFooterIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained introductionsDelegate];
    [v2 conversationListCellDidPressDelete:v3];

    WeakRetained = v3;
  }
}

- (void)_configureAccessoryLabelAppearanceForConversation:(id)conversation
{
  conversationCopy = conversation;
  priorityLabelClassification = [(CKConversationListCell *)self priorityLabelClassification];
  if (!priorityLabelClassification)
  {
    date = [conversationCopy date];
    if (date)
    {
    }

    else if (![(CKConversationListCell *)self shouldAppearAsRecoverableConversation])
    {
      dateLabel = [(CKConversationListCell *)self dateLabel];
      [dateLabel removeFromSuperview];
      goto LABEL_9;
    }

    dateLabel = [(CKConversationListStandardCell *)self contentView];
    dateLabel2 = [(CKConversationListCell *)self dateLabel];
    [dateLabel addSubview:dateLabel2];

LABEL_9:
    priorityLabel = [(CKConversationListCell *)self priorityLabel];
    [priorityLabel removeFromSuperview];
    goto LABEL_10;
  }

  v5 = priorityLabelClassification;
  dateLabel3 = [(CKConversationListCell *)self dateLabel];
  [dateLabel3 removeFromSuperview];

  priorityLabel2 = [(CKConversationListCell *)self priorityLabel];
  classification = [priorityLabel2 classification];

  if (v5 != classification)
  {
    priorityLabel3 = [(CKConversationListCell *)self priorityLabel];
    [priorityLabel3 setClassification:v5];
  }

  priorityLabel = [(CKConversationListStandardCell *)self contentView];
  priorityLabel4 = [(CKConversationListCell *)self priorityLabel];
  [priorityLabel addSubview:priorityLabel4];

LABEL_10:
}

- (void)_configureSummaryLabelAppearanceForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(CKConversationListStandardCell *)self _shouldShowDownloadingPendingMessages])
  {
    [(CKConversationListStandardCell *)self setShowDownloadingPendingMessages:1];
  }

  else
  {
    if (![(CKConversationListStandardCell *)self _shouldShowTypingIndicatorForConversation:conversationCopy])
    {
      [(CKConversationListStandardCell *)self _stopTypingIndicator];
      [(CKConversationListStandardCell *)self _removeDownloadingPendingMessagesView];
      if ([conversationCopy isPlaceholder] && !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation"))
      {
        summaryLabel = [(CKConversationListCell *)self summaryLabel];
        [summaryLabel removeFromSuperview];
      }

      else
      {
        contentView = [(CKConversationListStandardCell *)self contentView];
        summaryLabel2 = [(CKConversationListCell *)self summaryLabel];
        [contentView addSubview:summaryLabel2];
      }

      goto LABEL_6;
    }

    [(CKConversationListStandardCell *)self setShowTypingIndicator:1];
  }

  [(CKConversationListStandardCell *)self setNeedsLayout];
LABEL_6:
}

- (BOOL)_shouldShowPriorityLabelInsteadOfDate
{
  if (![(CKConversationListCell *)self priorityLabelClassification])
  {
    return 0;
  }

  priorityLabel = [(CKConversationListCell *)self priorityLabel];
  v4 = [priorityLabel classification] != 0;

  return v4;
}

- (BOOL)_shouldShowTypingIndicatorForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation") && ([conversationCopy isPlaceholder] & 1) == 0 && -[CKConversationListCell lastMessageIsTypingIndicator](self, "lastMessageIsTypingIndicator");

  return v5;
}

- (void)updateFromLabelWithText:(id)text
{
  textCopy = text;
  fromLabel = [(CKConversationListCell *)self fromLabel];
  [fromLabel setAttributedText:textCopy];
}

- (BOOL)_shouldHideUnreadIndicatorForEditing:(BOOL)editing
{
  editingCopy = editing;
  selfCopy = self;
  conversation = [(CKConversationListCell *)self conversation];
  LOBYTE(selfCopy) = [(CKConversationListCell *)selfCopy shouldAlwaysHideUnreadIndicatorForConversation:conversation];

  if (selfCopy)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v6 = [v7 hidesUnreadIndicatorWhenEditing] & editingCopy;
  }

  return v6;
}

- (void)updateUnreadIndicatorWithImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  v7 = [(CKConversationListStandardCell *)self _shouldHideUnreadIndicatorForEditing:[(CKConversationListStandardCell *)self isEditing]];
  if (imageCopy)
  {
    v8 = v7;
    superview = [(UIImageView *)self->_unreadIndicatorImageView superview];

    if (!superview)
    {
      [(CKConversationListStandardCell *)self addSubview:self->_unreadIndicatorImageView];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CKConversationListStandardCell_updateUnreadIndicatorWithImage_animated___block_invoke;
    aBlock[3] = &unk_1E72EBBC0;
    aBlock[4] = self;
    v16 = v8;
    v15 = imageCopy;
    v10 = _Block_copy(aBlock);

    if (!animated)
    {
      v10[2](v10);
      goto LABEL_10;
    }

    v11 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__CKConversationListStandardCell_updateUnreadIndicatorWithImage_animated___block_invoke_2;
    v13[3] = &unk_1E72EBA18;
    v13[4] = self;
    v10 = _Block_copy(v13);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__CKConversationListStandardCell_updateUnreadIndicatorWithImage_animated___block_invoke_3;
    v12[3] = &unk_1E72EB9C8;
    v12[4] = self;
    v11 = _Block_copy(v12);
    if (!animated)
    {
      v10[2](v10);
      if (!v11)
      {
        goto LABEL_10;
      }

      v11[2](v11, 1);
      goto LABEL_8;
    }
  }

  [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v11 completion:0.300000012];
LABEL_8:

LABEL_10:
}

uint64_t __74__CKConversationListStandardCell_updateUnreadIndicatorWithImage_animated___block_invoke(uint64_t a1)
{
  v2 = 1.0;
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 1208) setAlpha:v2];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 1208);

  return [v4 setImage:v3];
}

- (void)updateAccessoryIndicatorsColorForHighlightedState:(BOOL)state
{
  stateCopy = state;
  indicatorContainerView = [(CKConversationListStandardCell *)self indicatorContainerView];
  [indicatorContainerView setIsHighlighted:stateCopy];
}

- (void)updateForEditing:(BOOL)editing
{
  editingCopy = editing;
  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v5 updateForEditing:?];
  [(UIImageView *)self->_unreadIndicatorImageView setAlpha:([(CKConversationListStandardCell *)self _shouldHideUnreadIndicatorForEditing:editingCopy]^ 1)];
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  isMuted = [(CKConversationListCell *)self isMuted];
  v6.receiver = self;
  v6.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v6 setMuted:mutedCopy];
  if (isMuted != mutedCopy)
  {
    [(CKConversationListStandardCell *)self setNeedsLayout];
  }
}

- (void)forceUnreadIndicatorVisibility:(BOOL)visibility forConversation:(id)conversation animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = -[CKConversationListCell unreadIndicatorImageForVisibility:withMuteState:](self, "unreadIndicatorImageForVisibility:withMuteState:", visibility, [conversation isMuted]);
  [(CKConversationListStandardCell *)self updateUnreadIndicatorWithImage:v7 animated:animatedCopy];
}

- (void)_updateTypingIndicatorFrame:(BOOL)frame isCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  frameCopy = frame;
  typingIndicatorView = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView)
  {
    typingIndicatorView2 = [(CKConversationListCell *)self typingIndicatorView];
    if (!typingIndicatorView2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    typingIndicatorView2 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    if (!typingIndicatorView2)
    {
      goto LABEL_13;
    }
  }

  v26 = typingIndicatorView2;
  [typingIndicatorView2 frame];
  v10 = v9;
  v12 = v11;
  fromLabel = [(CKConversationListCell *)self fromLabel];
  [fromLabel frame];
  if (frameCopy)
  {
    v18 = v14 + -5.0;

    fromLabel2 = [(CKConversationListCell *)self fromLabel];
    [fromLabel2 frame];
    MaxY = CGRectGetMaxY(v28) + 2.0;
  }

  else
  {
    v18 = CGRectGetMaxX(*&v14) - v10 + 5.0;

    fromLabel2 = [(CKConversationListCell *)self fromLabel];
    [fromLabel2 frame];
    MaxY = CGRectGetMaxY(v29);
  }

  typingIndicatorView3 = [(CKConversationListCell *)self typingIndicatorView];

  if (typingIndicatorView3)
  {
    typingIndicatorView4 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView4 setFlipForRTLLayout:!frameCopy];

    typingIndicatorView5 = [(CKConversationListCell *)self typingIndicatorView];
    [typingIndicatorView5 setHidden:collapsedCopy];
  }

  downloadingPendingMessagesView = [(CKConversationListCell *)self downloadingPendingMessagesView];

  if (downloadingPendingMessagesView)
  {
    downloadingPendingMessagesView2 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    [downloadingPendingMessagesView2 updateForLayoutDirectionWithScale:0.8];
  }

  [v26 setFrame:{v18, MaxY, v10, v12}];
  typingIndicatorView2 = v26;
LABEL_13:
}

- (void)increaseContrastDidChange
{
  v7.receiver = self;
  v7.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v7 increaseContrastDidChange];
  dateLabel = [(CKConversationListCell *)self dateLabel];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  conversationListDateColor = [theme conversationListDateColor];
  [dateLabel setTextColor:conversationListDateColor];
}

- (BOOL)_boundsShouldCollapseContent:(CGRect)content
{
  width = content.size.width;
  if (!CKIsRunningInMacCatalyst())
  {
    return 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 minConversationListWidth];
  v6 = width <= v5;

  return v6;
}

- (CGRect)_calculateRectVerticallyCenteredWithFirstTextLineOfLabel:(id)label horizontallyCenteredInColumn:(CGRect)column size:(CGSize)size offset:(CGPoint)offset
{
  height = size.height;
  width = size.width;
  v8 = column.size.width;
  x = column.origin.x;
  labelCopy = label;
  [labelCopy frame];
  v12 = v11;
  v14 = v13;
  [labelCopy _capOffsetFromBoundsTop];
  v16 = v15;
  [labelCopy _firstLineBaselineOffsetFromBoundsTop];
  v18 = v17;

  if (CKMainScreenScale_once_46 != -1)
  {
    [CKConversationListStandardCell _calculateRectVerticallyCenteredWithFirstTextLineOfLabel:horizontallyCenteredInColumn:size:offset:];
  }

  v19 = *&CKMainScreenScale_sMainScreenScale_46;
  if (*&CKMainScreenScale_sMainScreenScale_46 == 0.0)
  {
    v19 = 1.0;
  }

  v20 = offset.x + floor((x + (v8 - width) * 0.5) * v19) / v19;
  v21 = offset.y + floor((v16 + v12 + (v14 - (v16 + v14 - v18) - height) * 0.5) * v19) / v19;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_calculateIndicatorViewRectVerticallyCenteredWithFirstTextLineOfLabel:(id)label horizontallyAlignedWithColumn:(CGRect)column wantsCenteringColumnAlignment:(BOOL)alignment size:(CGSize)size offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  alignmentCopy = alignment;
  v11 = column.size.width;
  v12 = column.origin.x;
  labelCopy = label;
  [labelCopy frame];
  v37 = v15;
  v17 = v16;
  [labelCopy _capOffsetFromBoundsTop];
  v19 = v18;
  [labelCopy _firstLineBaselineOffsetFromBoundsTop];
  v36 = v20;

  if (CKMainScreenScale_once_46 != -1)
  {
    [CKConversationListStandardCell _calculateRectVerticallyCenteredWithFirstTextLineOfLabel:horizontallyCenteredInColumn:size:offset:];
  }

  if (*&CKMainScreenScale_sMainScreenScale_46 == 0.0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = *&CKMainScreenScale_sMainScreenScale_46;
  }

  v22 = x + floor((v12 + (v11 - width) * 0.5) * v21) / v21;
  if (alignmentCopy)
  {
    contentView = [(CKConversationListStandardCell *)self contentView];
    effectiveUserInterfaceLayoutDirection = [contentView effectiveUserInterfaceLayoutDirection];

    indicatorContainerView = [(CKConversationListStandardCell *)self indicatorContainerView];
    [indicatorContainerView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v27 = v26;

    indicatorContainerView2 = [(CKConversationListStandardCell *)self indicatorContainerView];
    [indicatorContainerView2 xOriginForCenteringWithTrailingSlot];
    v30 = v27 - v29;

    v31 = -v30;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v31 = v30;
    }

    v22 = v22 + v31;
  }

  v32 = y + floor((v19 + v37 + (v17 - (v19 + v17 - v36) - height) * 0.5) * v21) / v21;
  v33 = v22;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v32;
  result.origin.x = v33;
  return result;
}

- (CGRect)_calculateSummaryLabelFrameForColumn:(CGRect)column summaryLabelCapFrameYOrigin:(double)origin displayScale:(double)scale
{
  width = column.size.width;
  y = column.origin.y;
  x = column.origin.x;
  v11 = [(CKConversationListCell *)self summaryLabel:column.origin.x];
  [v11 sizeThatFits:{width, 600.0}];
  v13 = v12;

  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel _setFirstLineCapFrameOriginY:origin];

  v15 = round(x * scale) / scale;
  v16 = round(y * scale) / scale;
  v17 = round(width * scale) / scale;
  v18 = round((v13 + 5.0) * scale) / scale;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_calculateIndicatorFrameForSize:(CGSize)size trailing:(BOOL)trailing displayScale:(double)scale insets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  trailingCopy = trailing;
  height = size.height;
  width = size.width;
  [(CKConversationListStandardCell *)self safeAreaInsets:size.width];
  v33 = v11;
  v34 = v12;
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 conversationListCellLeftMargin];
  v15 = v14;

  [(CKConversationListCell *)self containerBounds];
  v17 = v16;
  v19 = v18;
  v20 = objc_opt_class();
  traitCollection = [(CKConversationListStandardCell *)self traitCollection];
  [traitCollection displayScale];
  [v20 cellHeightForDisplayScale:?];
  v23 = v22;

  if (CKMainScreenScale_once_46 != -1)
  {
    [CKConversationListStandardCell _calculateRectVerticallyCenteredWithFirstTextLineOfLabel:horizontallyCenteredInColumn:size:offset:];
  }

  if (*&CKMainScreenScale_sMainScreenScale_46 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = *&CKMainScreenScale_sMainScreenScale_46;
  }

  v25 = floor(((v15 - width) * 0.5 + v17) * v24) / v24;
  if (trailingCopy)
  {
    contentView = [(CKConversationListStandardCell *)self contentView];
    [contentView bounds];
    v28 = left + v27 - v25 - width - v34;
  }

  else
  {
    v28 = right + v33 + v25;
  }

  v29 = round(v28 * scale) / scale;
  v30 = round(floor((v19 + (v23 - height) * 0.5) * v24) / v24 * scale) / scale;
  v31 = round(width * scale) / scale;
  v32 = round(height * scale) / scale;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  v56 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([category isEqualToString:*MEMORY[0x1E695D070]] && objc_msgSend(propertiesCopy, "count"))
  {
    firstObject = [propertiesCopy firstObject];
    contact = [firstObject contact];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    conversation = [(CKConversationListCell *)self conversation];
    recipients = [conversation recipients];

    v42 = [recipients countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v42)
    {
      v12 = *v51;
      v45 = *MEMORY[0x1E695C208];
      v44 = *MEMORY[0x1E695C330];
      v40 = contact;
      v41 = propertiesCopy;
      v38 = *v51;
      v39 = recipients;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(recipients);
          }

          v43 = v13;
          v14 = *(*(&v50 + 1) + 8 * v13);
          v15 = [v14 cnContactWithKeys:{MEMORY[0x1E695E0F0], v38}];
          identifier = [v15 identifier];
          identifier2 = [contact identifier];
          v18 = [identifier isEqual:identifier2];

          if (v18)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v19 = propertiesCopy;
            v20 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v47;
LABEL_11:
              v23 = 0;
              while (1)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v46 + 1) + 8 * v23);
                v25 = [v24 key];
                v26 = [v25 isEqualToString:v45];

                if (v26)
                {
                  value = [v24 value];
                }

                else
                {
                  v28 = [v24 key];
                  v29 = [v28 isEqualToString:v44];

                  if (v29)
                  {
                    value2 = [v24 value];
                    value = [value2 stringValue];
                  }

                  else
                  {
                    value = 0;
                  }
                }

                v31 = IMStripFormattingFromAddress();

                rawAddress = [v14 rawAddress];
                v33 = IMStripFormattingFromAddress();
                v34 = MEMORY[0x193AF6640](v31, v33);

                if (v34)
                {
                  break;
                }

                if (v21 == ++v23)
                {
                  v21 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
                  if (v21)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_22;
                }
              }

              v35 = v24;

              contact = v40;
              propertiesCopy = v41;
              v12 = v38;
              recipients = v39;
              if (!v35)
              {
                goto LABEL_24;
              }

              v36 = [MEMORY[0x1E695DF70] arrayWithArray:v19];
              [v36 removeObject:v35];
              [v36 insertObject:v35 atIndex:0];
              recipients = v35;
              goto LABEL_29;
            }

LABEL_22:

            contact = v40;
            propertiesCopy = v41;
            v12 = v38;
            recipients = v39;
          }

LABEL_24:
          v13 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [recipients countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v36 = 0;
LABEL_29:
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)avatarView:(id)view shouldShowContact:(id)contact
{
  viewCopy = view;
  delegate = [(CKConversationListCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    presentingViewController = [viewCopy presentingViewController];
    presentedViewController = [presentingViewController presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];

    delegate2 = [(CKConversationListCell *)self delegate];
    conversation = [(CKConversationListCell *)self conversation];
    [delegate2 avatarHeaderWasTappedForConversation:conversation inCell:self];
  }

  return (v7 & 1) == 0;
}

- (id)contactsForPreviewInteractionForAvatarView:(id)view suggestedKeysToFetch:(id)fetch
{
  v4 = [(CKConversationListCell *)self conversation:view];
  v5 = [v4 orderedContactsForAvatar3DTouchUIWithKeysToFetch:MEMORY[0x1E695E0F0]];

  return v5;
}

- (id)overrideImageDataForPreviewInteractionForAvatarView:(id)view
{
  conversation = [(CKConversationListCell *)self conversation];
  maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v5 = [conversation conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
  groupPhoto = [v5 groupPhoto];

  return groupPhoto;
}

- (BOOL)_shouldShowAvatarForWidth:(double)width
{
  if ([(CKConversationListCell *)self shouldAlwaysHideAvatar])
  {
    return 0;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 shouldShowAvatarForWidth:width];

  return v6;
}

@end