@interface CKConversationListStandardCell
+ (double)leadingLayoutMargin;
+ (id)identifierForConversation:(id)a3;
- (BOOL)_boundsShouldCollapseContent:(CGRect)a3;
- (BOOL)_isCollapsed;
- (BOOL)_shouldHideUnreadIndicatorForEditing:(BOOL)a3;
- (BOOL)_shouldShowAvatarForWidth:(double)a3;
- (BOOL)_shouldShowDownloadingPendingMessages;
- (BOOL)_shouldShowPriorityLabelInsteadOfDate;
- (BOOL)_shouldShowSlashSatelliteIcon;
- (BOOL)_shouldShowTypingIndicatorForConversation:(id)a3;
- (BOOL)avatarView:(id)a3 shouldShowContact:(id)a4;
- (BOOL)shouldShowFooter;
- (CGRect)_calculateIndicatorFrameForSize:(CGSize)a3 trailing:(BOOL)a4 displayScale:(double)a5 insets:(UIEdgeInsets)a6;
- (CGRect)_calculateIndicatorViewRectVerticallyCenteredWithFirstTextLineOfLabel:(id)a3 horizontallyAlignedWithColumn:(CGRect)a4 wantsCenteringColumnAlignment:(BOOL)a5 size:(CGSize)a6 offset:(CGPoint)a7;
- (CGRect)_calculateRectVerticallyCenteredWithFirstTextLineOfLabel:(id)a3 horizontallyCenteredInColumn:(CGRect)a4 size:(CGSize)a5 offset:(CGPoint)a6;
- (CGRect)_calculateSummaryLabelFrameForColumn:(CGRect)a3 summaryLabelCapFrameYOrigin:(double)a4 displayScale:(double)a5;
- (CKConversationListStandardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_makeScreenTimeFooterIfNeeded;
- (id)_makeUnknownSenderFooterIfNeeded;
- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)contactsForPreviewInteractionForAvatarView:(id)a3 suggestedKeysToFetch:(id)a4;
- (id)overrideImageDataForPreviewInteractionForAvatarView:(id)a3;
- (void)_addFooter:(id)a3;
- (void)_calculateLayoutFrames;
- (void)_configureAccessoryLabelAppearanceForConversation:(id)a3;
- (void)_configureFooter;
- (void)_configureSummaryLabelAppearanceForConversation:(id)a3;
- (void)_removeDownloadingPendingMessagesView;
- (void)_removeFooter;
- (void)_resetTypingIndicator;
- (void)_setupDownloadingPendingMessagesView;
- (void)_startTypingIndicator;
- (void)_stopTypingIndicator;
- (void)_updateAvatarView;
- (void)_updateLabelVisibility;
- (void)_updateTypingIndicatorFrame:(BOOL)a3 isCollapsed:(BOOL)a4;
- (void)dealloc;
- (void)forceUnreadIndicatorVisibility:(BOOL)a3 forConversation:(id)a4 animated:(BOOL)a5;
- (void)increaseContrastDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)registerForEvents;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setMuted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAccessoryIndicatorsColorForHighlightedState:(BOOL)a3;
- (void)updateAccessoryIndicatorsForCurrentState;
- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4;
- (void)updateForEditing:(BOOL)a3;
- (void)updateFromLabelWithText:(id)a3;
- (void)updateTypingIndicatorIfNeeded;
- (void)updateUnreadIndicatorWithImage:(id)a3 animated:(BOOL)a4;
- (void)updateWithForwardedConfigurationState:(id)a3;
@end

@implementation CKConversationListStandardCell

- (void)registerForEvents
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_updateTypingIndicatorIfNeeded name:*MEMORY[0x1E69DDBC0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_updateAccessoryIndicatorsForCurrentState name:*MEMORY[0x1E69A5938] object:0];
}

- (void)_configureFooter
{
  if ([(CKConversationListStandardCell *)self shouldShowFooter])
  {
    v3 = [(CKConversationListStandardCell *)self _makeUnknownSenderFooterIfNeeded];
    if (v3 || ([(CKConversationListStandardCell *)self _makeScreenTimeFooterIfNeeded], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v3;
      [(CKConversationListStandardCell *)self _addFooter:v3];
    }
  }

  else
  {
    v4 = [(CKConversationListStandardCell *)self footer];

    if (v4)
    {

      [(CKConversationListStandardCell *)self _removeFooter];
    }
  }
}

- (BOOL)_shouldShowDownloadingPendingMessages
{
  v2 = [(CKConversationListCell *)self conversation];
  v3 = [v2 shouldShowDownloadingPendingMessages];

  return v3;
}

- (void)_stopTypingIndicator
{
  [(CKConversationListStandardCell *)self setShowTypingIndicator:0];
  v3 = [(CKConversationListCell *)self typingIndicatorView];

  if (v3)
  {
    v4 = [(CKConversationListCell *)self typingIndicatorView];
    [v4 stopAnimation];

    v5 = [(CKConversationListCell *)self typingIndicatorView];
    [v5 removeFromSuperview];

    [(CKConversationListCell *)self setTypingIndicatorView:0];
  }
}

- (void)_removeDownloadingPendingMessagesView
{
  [(CKConversationListStandardCell *)self setShowDownloadingPendingMessages:0];
  v3 = [(CKConversationListCell *)self downloadingPendingMessagesView];
  [v3 removeFromSuperview];

  [(CKConversationListCell *)self setDownloadingPendingMessagesView:0];
}

- (void)_updateAvatarView
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 canShowContactPhotosInConversationList])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 contactPhotosEnabled];

    if (v5)
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
        v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v14 = [v13 isSwiftUIAvatarRenderingEnabled];

        if (v14)
        {
          [(CNAvatarView *)self->_avatarView setBackgroundStyle:5];
        }

        v15 = [(CKConversationListStandardCell *)self contentView];
        [v15 addSubview:self->_avatarView];
      }

      v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([v16 avatarViewAllowsStaleRendering])
      {
        v17 = [(CNAvatarView *)self->_avatarView isDisplayingContent];

        if (v17)
        {
          [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
        }
      }

      else
      {
      }

      v19 = [(CKConversationListCell *)self conversation];
      v20 = [v19 chat];
      v21 = [v20 chatIdentifier];
      [(CKAvatarView *)self->_avatarView _ck_setContextToken:v21];

      v22 = [MEMORY[0x1E695D0C0] maxContactAvatars];
      v23 = [v19 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v22];
      v24 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v23];
      if ([v19 recipientCount] == 1)
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
        if ([v19 hasDisplayName])
        {
          [v19 displayName];
        }

        else
        {
          [v19 name];
        }
        v28 = ;
        [(CNAvatarView *)self->_avatarView setName:v28];
        v29 = self->_avatarView;
        v31 = *MEMORY[0x1E695D070];
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        [(CNAvatarView *)v29 setActionCategories:v30];
      }

      -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [v19 shouldHaveRoundRectAvatar]);
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
  v2 = self;
  v3 = sub_19023EC54();
  v4 = [(CKConversationListStandardCell *)v2 indicatorContainerView];
  if (v4)
  {
    v5 = v4;
    v6 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
    *(&v4->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration) = v3;
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
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isMessagingActiveOverSatellite];

  if (v4)
  {
    if ([(CKConversationListCell *)self isGroupConversation])
    {
      return 1;
    }

    v6 = [(CKConversationListCell *)self conversation];
    v7 = [v6 recipient];
    v8 = [v7 rawAddress];
    if (IMStringIsEmail())
    {
      v9 = [(CKConversationListCell *)self conversation];
      v10 = [v9 chat];
      v11 = [v10 account];
      v12 = [v11 serviceName];
      v13 = [v12 isEqualToString:*MEMORY[0x1E69A7AF8]];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CKConversationListStandardCell.m" lineNumber:557 description:{@"%@ needs a cell layout.", v6}];
}

- (BOOL)_isCollapsed
{
  v2 = self;
  v3 = [(CKConversationListStandardCell *)self contentView];
  [v3 bounds];
  LOBYTE(v2) = [(CKConversationListStandardCell *)v2 _boundsShouldCollapseContent:?];

  return v2;
}

- (void)_calculateLayoutFrames
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationListStandardCell.m" lineNumber:839 description:{@"%@ needs a cell layout.", v5}];
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isIntroductionsEnabled];

  if (v4 && (-[CKConversationListCell conversation](self, "conversation"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[CKConversationListCell conversation](self, "conversation"), v7 = objc_claimAutoreleasedReturnValue(), [v7 chat], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8) && (-[CKConversationListStandardCell configurationState](self, "configurationState"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSelected"), v9, (v10 & 1) == 0) && !-[CKConversationListStandardCell _isCollapsed](self, "_isCollapsed") && !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation") && (-[CKConversationListStandardCell isEditing](self, "isEditing") & 1) == 0 && objc_msgSend(MEMORY[0x1E69A82A0], "isFilterUnknownSendersEnabled") && (-[CKConversationListCell introductionsDelegate](self, "introductionsDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "conversationListCellCanShowFooter:", self), v11, v12) && (-[CKConversationListCell conversation](self, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "chat"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lastSeenMessageGuid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, v13, !v16) && (-[CKConversationListCell conversation](self, "conversation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "currentlyReviewingChat"), v17, v18))
  {
    v19 = [(CKConversationListCell *)self conversation];
    v20 = [v19 inUnknownSendersFilter];

    v21 = [(CKConversationListCell *)self conversation];
    v22 = [v21 chat];
    v23 = [v22 allowedByScreenTime] ^ 1;

    v24 = v20 | v23;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

- (void)_updateLabelVisibility
{
  v3 = [(CKConversationListStandardCell *)self _isCollapsed];
  v4 = [(CKConversationListCell *)self shouldHidePreviewSummary];
  v5 = [(CKConversationListCell *)self summaryBlockedLabel];
  [v5 setHidden:v3 & 1u | !v4];

  LOBYTE(v5) = v4 || v3;
  v6 = [(CKConversationListCell *)self summaryLabel];
  [v6 setHidden:v5 & 1];

  v7 = [(CKConversationListCell *)self dateLabel];
  [v7 setHidden:v3];

  v8 = [(CKConversationListCell *)self priorityLabel];
  [v8 setHidden:v3];

  v9 = [(CKConversationListCell *)self fromLabel];
  [v9 setHidden:v3];
}

+ (id)identifierForConversation:(id)a3
{
  if ([a3 recipientCount] <= 1)
  {
    return @"CKConversationListStandardCellIdentifier";
  }

  else
  {
    return @"CKConversationListStandardCellGroupIdentifier";
  }
}

- (CKConversationListStandardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25.receiver = self;
  v25.super_class = CKConversationListStandardCell;
  v4 = [(CKConversationListCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
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
    v13 = [(CKConversationListStandardCell *)v4 contentView];
    [v13 addSubview:v12];

    indicatorContainerView = v4->_indicatorContainerView;
    v4->_indicatorContainerView = v12;
    v15 = v12;

    LODWORD(indicatorContainerView) = [(CKConversationListStandardCell *)v4 _shouldReverseLayoutDirection];
    v16 = [(CKConversationListCell *)v4 dateLabel];
    v17 = v16;
    if (indicatorContainerView)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    [v16 setTextAlignment:v18];

    v19 = [(CKConversationListCell *)v4 priorityLabel];
    [v19 setTextAlignment:v18];

    v20 = [(CKConversationListCell *)v4 dateLabel];
    v21 = +[CKUIBehavior sharedBehaviors];

    v22 = [v21 theme];
    v23 = [v22 conversationListDateColor];
    [v20 setTextColor:v23];

    [(CKConversationListStandardCell *)v4 registerForEvents];
    [(CKConversationListStandardCell *)v4 _configureFooter];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(CKConversationListStandardCell *)self avatarView];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  [(CKConversationListStandardCell *)self _stopTypingIndicator];
  [(CKConversationListStandardCell *)self _removeDownloadingPendingMessagesView];
  v3 = [(CKConversationListStandardCell *)self avatarView];
  [v3 setAllowStaleRendering:0];

  v4 = [(CKConversationListStandardCell *)self indicatorContainerView];
  [v4 prepareForReuse];

  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v5 prepareForReuse];
}

- (void)updateWithForwardedConfigurationState:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v10 updateWithForwardedConfigurationState:v4];
  v5 = [(CKConversationListCell *)self typingIndicatorView];

  if (v5)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [(CKConversationListStandardCell *)self traitCollection];
    v8 = [v6 useSelectedAppearanceForConversationCellState:v4 traitCollection:v7];

    v9 = [(CKConversationListCell *)self typingIndicatorView];
    LODWORD(v7) = [v9 isHighlighted];

    if (v8 != v7)
    {
      [(CKConversationListStandardCell *)self _resetTypingIndicator];
    }
  }

  [(CKConversationListStandardCell *)self _configureFooter];
}

- (void)updateTypingIndicatorIfNeeded
{
  v3 = [(CKConversationListCell *)self typingIndicatorView];

  if (v3)
  {

    [(CKConversationListStandardCell *)self _resetTypingIndicator];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListStandardCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(CKConversationListCell *)self typingIndicatorView];

  if (v4)
  {
    [(CKConversationListStandardCell *)self _resetTypingIndicator];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKConversationListStandardCell;
  [(CKConversationListStandardCell *)&v8 setHighlighted:a3 animated:a4];
  v6 = [(CKConversationListCell *)self typingIndicatorView];

  if (v6)
  {
    v7 = [(CKConversationListCell *)self typingIndicatorView];
    [v7 setHighlightedState:v4];
  }
}

- (void)_startTypingIndicator
{
  if (![(CKConversationListCell *)self shouldHidePreviewSummary])
  {
    v3 = [(CKConversationListCell *)self typingIndicatorView];

    if (!v3)
    {
      v4 = objc_alloc_init(CKConversationListTypingIndicatorView);
      [(CKConversationListCell *)self setTypingIndicatorView:v4];

      v5 = [(CKConversationListCell *)self typingIndicatorView];
      if ([(CKConversationListStandardCell *)self isHighlighted])
      {
        v6 = +[CKApplicationState isApplicationActive];
      }

      else
      {
        v6 = 0;
      }

      [v5 setHighlightedState:v6];

      if (CKIsRunningInMacCatalyst())
      {
        v7 = [(CKConversationListCell *)self typingIndicatorView];
        [v7 setTypingIndicatorScale:1.0];
      }

      else
      {
        v7 = +[CKUIBehavior sharedBehaviors];
        [v7 conversationListCellTypingIndicatorScale];
        v9 = v8;
        v10 = [(CKConversationListCell *)self typingIndicatorView];
        [v10 setTypingIndicatorScale:v9];
      }
    }

    v11 = [(CKConversationListStandardCell *)self contentView];
    v12 = [(CKConversationListCell *)self typingIndicatorView];
    [v11 addSubview:v12];

    v13 = [(CKConversationListCell *)self typingIndicatorView];
    [v13 stopAnimation];

    v14 = [(CKConversationListCell *)self typingIndicatorView];
    [v14 startPulseAnimation];

    v15 = [(CKConversationListCell *)self summaryLabel];
    [v15 removeFromSuperview];
  }
}

- (void)_resetTypingIndicator
{
  [(CKConversationListStandardCell *)self setShowTypingIndicator:1];

  [(CKConversationListStandardCell *)self setNeedsLayout];
}

- (void)_setupDownloadingPendingMessagesView
{
  v3 = [(CKConversationListCell *)self downloadingPendingMessagesView];

  if (!v3)
  {
    v4 = +[_TtC7ChatKit39CKDownloadingPendingMessagesViewBuilder createDownloadingPendingMessagesViewInstanceForChatKit];
    [(CKConversationListCell *)self setDownloadingPendingMessagesView:v4];

    v5 = [(CKConversationListStandardCell *)self contentView];
    v6 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    [v5 addSubview:v6];

    v7 = [(CKConversationListCell *)self summaryLabel];
    [v7 removeFromSuperview];
  }

  v8 = [(CKConversationListCell *)self conversation];
  v10 = [v8 pendingMessageCountText];

  v9 = [(CKConversationListCell *)self downloadingPendingMessagesView];
  [v9 updateMessageCountWith:v10];
}

- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = CKConversationListStandardCell;
  v6 = a3;
  [(CKConversationListCell *)&v7 updateContentsForConversation:v6 fastPreview:v4];
  [(CKConversationListStandardCell *)self _configureSummaryLabelAppearanceForConversation:v6, v7.receiver, v7.super_class];
  [(CKConversationListStandardCell *)self _configureAccessoryLabelAppearanceForConversation:v6];

  [(CKConversationListStandardCell *)self _updateAvatarView];
  [(CKConversationListStandardCell *)self updateAccessoryIndicatorsForCurrentState];
  [(CKConversationListStandardCell *)self _configureFooter];
}

- (void)_removeFooter
{
  v3 = [(CKConversationListStandardCell *)self footer];
  [v3 removeFromSuperview];

  [(CKConversationListStandardCell *)self setFooter:0];

  [(CKConversationListStandardCell *)self invalidateIntrinsicContentSize];
}

- (void)_addFooter:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKConversationListStandardCell *)self footer];

    v6 = [(CKConversationListStandardCell *)self contentView];
    [v6 addSubview:v4];

    [(CKConversationListStandardCell *)self setFooter:v4];
    v7 = [(CKConversationListCell *)self cellLayout];
    [v7 footerFrame];
    LODWORD(v6) = CGRectEqualToRect(v10, *MEMORY[0x1E695F058]);

    if (v6)
    {
      v8 = [(CKConversationListCell *)self cellLayout];
      [v8 invalidate];
    }

    if (!v5)
    {
      [(CKConversationListStandardCell *)self invalidateIntrinsicContentSize];
    }

    [(CKConversationListStandardCell *)self setNeedsLayout];
  }
}

- (id)_makeScreenTimeFooterIfNeeded
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCell *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 allowedByScreenTime];

  v6 = [(CKConversationListStandardCell *)self footer];
  if ((v6 != 0) | v5 & 1)
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
  v3 = [(CKConversationListCell *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 allowedByScreenTime];

  v6 = [(CKConversationListCell *)self conversation];
  LOBYTE(v3) = [v6 inUnknownSendersFilter];

  v7 = [(CKConversationListStandardCell *)self footer];
  if (((v7 == 0) & v5 & v3) == 1)
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

- (void)_configureAccessoryLabelAppearanceForConversation:(id)a3
{
  v15 = a3;
  v4 = [(CKConversationListCell *)self priorityLabelClassification];
  if (!v4)
  {
    v12 = [v15 date];
    if (v12)
    {
    }

    else if (![(CKConversationListCell *)self shouldAppearAsRecoverableConversation])
    {
      v13 = [(CKConversationListCell *)self dateLabel];
      [v13 removeFromSuperview];
      goto LABEL_9;
    }

    v13 = [(CKConversationListStandardCell *)self contentView];
    v14 = [(CKConversationListCell *)self dateLabel];
    [v13 addSubview:v14];

LABEL_9:
    v10 = [(CKConversationListCell *)self priorityLabel];
    [v10 removeFromSuperview];
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(CKConversationListCell *)self dateLabel];
  [v6 removeFromSuperview];

  v7 = [(CKConversationListCell *)self priorityLabel];
  v8 = [v7 classification];

  if (v5 != v8)
  {
    v9 = [(CKConversationListCell *)self priorityLabel];
    [v9 setClassification:v5];
  }

  v10 = [(CKConversationListStandardCell *)self contentView];
  v11 = [(CKConversationListCell *)self priorityLabel];
  [v10 addSubview:v11];

LABEL_10:
}

- (void)_configureSummaryLabelAppearanceForConversation:(id)a3
{
  v7 = a3;
  if ([(CKConversationListStandardCell *)self _shouldShowDownloadingPendingMessages])
  {
    [(CKConversationListStandardCell *)self setShowDownloadingPendingMessages:1];
  }

  else
  {
    if (![(CKConversationListStandardCell *)self _shouldShowTypingIndicatorForConversation:v7])
    {
      [(CKConversationListStandardCell *)self _stopTypingIndicator];
      [(CKConversationListStandardCell *)self _removeDownloadingPendingMessagesView];
      if ([v7 isPlaceholder] && !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation"))
      {
        v6 = [(CKConversationListCell *)self summaryLabel];
        [v6 removeFromSuperview];
      }

      else
      {
        v4 = [(CKConversationListStandardCell *)self contentView];
        v5 = [(CKConversationListCell *)self summaryLabel];
        [v4 addSubview:v5];
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

  v3 = [(CKConversationListCell *)self priorityLabel];
  v4 = [v3 classification] != 0;

  return v4;
}

- (BOOL)_shouldShowTypingIndicatorForConversation:(id)a3
{
  v4 = a3;
  v5 = !-[CKConversationListCell shouldAppearAsRecoverableConversation](self, "shouldAppearAsRecoverableConversation") && ([v4 isPlaceholder] & 1) == 0 && -[CKConversationListCell lastMessageIsTypingIndicator](self, "lastMessageIsTypingIndicator");

  return v5;
}

- (void)updateFromLabelWithText:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCell *)self fromLabel];
  [v5 setAttributedText:v4];
}

- (BOOL)_shouldHideUnreadIndicatorForEditing:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(CKConversationListCell *)self conversation];
  LOBYTE(v4) = [(CKConversationListCell *)v4 shouldAlwaysHideUnreadIndicatorForConversation:v5];

  if (v4)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v6 = [v7 hidesUnreadIndicatorWhenEditing] & v3;
  }

  return v6;
}

- (void)updateUnreadIndicatorWithImage:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(CKConversationListStandardCell *)self _shouldHideUnreadIndicatorForEditing:[(CKConversationListStandardCell *)self isEditing]];
  if (v6)
  {
    v8 = v7;
    v9 = [(UIImageView *)self->_unreadIndicatorImageView superview];

    if (!v9)
    {
      [(CKConversationListStandardCell *)self addSubview:self->_unreadIndicatorImageView];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CKConversationListStandardCell_updateUnreadIndicatorWithImage_animated___block_invoke;
    aBlock[3] = &unk_1E72EBBC0;
    aBlock[4] = self;
    v16 = v8;
    v15 = v6;
    v10 = _Block_copy(aBlock);

    if (!a4)
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
    if (!a4)
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

- (void)updateAccessoryIndicatorsColorForHighlightedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversationListStandardCell *)self indicatorContainerView];
  [v4 setIsHighlighted:v3];
}

- (void)updateForEditing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v5 updateForEditing:?];
  [(UIImageView *)self->_unreadIndicatorImageView setAlpha:([(CKConversationListStandardCell *)self _shouldHideUnreadIndicatorForEditing:v3]^ 1)];
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKConversationListCell *)self isMuted];
  v6.receiver = self;
  v6.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v6 setMuted:v3];
  if (v5 != v3)
  {
    [(CKConversationListStandardCell *)self setNeedsLayout];
  }
}

- (void)forceUnreadIndicatorVisibility:(BOOL)a3 forConversation:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = -[CKConversationListCell unreadIndicatorImageForVisibility:withMuteState:](self, "unreadIndicatorImageForVisibility:withMuteState:", a3, [a4 isMuted]);
  [(CKConversationListStandardCell *)self updateUnreadIndicatorWithImage:v7 animated:v5];
}

- (void)_updateTypingIndicatorFrame:(BOOL)a3 isCollapsed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CKConversationListCell *)self typingIndicatorView];

  if (v7)
  {
    v8 = [(CKConversationListCell *)self typingIndicatorView];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v26 = v8;
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v13 = [(CKConversationListCell *)self fromLabel];
  [v13 frame];
  if (v5)
  {
    v18 = v14 + -5.0;

    v19 = [(CKConversationListCell *)self fromLabel];
    [v19 frame];
    MaxY = CGRectGetMaxY(v28) + 2.0;
  }

  else
  {
    v18 = CGRectGetMaxX(*&v14) - v10 + 5.0;

    v19 = [(CKConversationListCell *)self fromLabel];
    [v19 frame];
    MaxY = CGRectGetMaxY(v29);
  }

  v21 = [(CKConversationListCell *)self typingIndicatorView];

  if (v21)
  {
    v22 = [(CKConversationListCell *)self typingIndicatorView];
    [v22 setFlipForRTLLayout:!v5];

    v23 = [(CKConversationListCell *)self typingIndicatorView];
    [v23 setHidden:v4];
  }

  v24 = [(CKConversationListCell *)self downloadingPendingMessagesView];

  if (v24)
  {
    v25 = [(CKConversationListCell *)self downloadingPendingMessagesView];
    [v25 updateForLayoutDirectionWithScale:0.8];
  }

  [v26 setFrame:{v18, MaxY, v10, v12}];
  v8 = v26;
LABEL_13:
}

- (void)increaseContrastDidChange
{
  v7.receiver = self;
  v7.super_class = CKConversationListStandardCell;
  [(CKConversationListCell *)&v7 increaseContrastDidChange];
  v3 = [(CKConversationListCell *)self dateLabel];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 conversationListDateColor];
  [v3 setTextColor:v6];
}

- (BOOL)_boundsShouldCollapseContent:(CGRect)a3
{
  width = a3.size.width;
  if (!CKIsRunningInMacCatalyst())
  {
    return 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 minConversationListWidth];
  v6 = width <= v5;

  return v6;
}

- (CGRect)_calculateRectVerticallyCenteredWithFirstTextLineOfLabel:(id)a3 horizontallyCenteredInColumn:(CGRect)a4 size:(CGSize)a5 offset:(CGPoint)a6
{
  height = a5.height;
  width = a5.width;
  v8 = a4.size.width;
  x = a4.origin.x;
  v10 = a3;
  [v10 frame];
  v12 = v11;
  v14 = v13;
  [v10 _capOffsetFromBoundsTop];
  v16 = v15;
  [v10 _firstLineBaselineOffsetFromBoundsTop];
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

  v20 = a6.x + floor((x + (v8 - width) * 0.5) * v19) / v19;
  v21 = a6.y + floor((v16 + v12 + (v14 - (v16 + v14 - v18) - height) * 0.5) * v19) / v19;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_calculateIndicatorViewRectVerticallyCenteredWithFirstTextLineOfLabel:(id)a3 horizontallyAlignedWithColumn:(CGRect)a4 wantsCenteringColumnAlignment:(BOOL)a5 size:(CGSize)a6 offset:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.height;
  width = a6.width;
  v10 = a5;
  v11 = a4.size.width;
  v12 = a4.origin.x;
  v14 = a3;
  [v14 frame];
  v37 = v15;
  v17 = v16;
  [v14 _capOffsetFromBoundsTop];
  v19 = v18;
  [v14 _firstLineBaselineOffsetFromBoundsTop];
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
  if (v10)
  {
    v23 = [(CKConversationListStandardCell *)self contentView];
    v24 = [v23 effectiveUserInterfaceLayoutDirection];

    v25 = [(CKConversationListStandardCell *)self indicatorContainerView];
    [v25 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v27 = v26;

    v28 = [(CKConversationListStandardCell *)self indicatorContainerView];
    [v28 xOriginForCenteringWithTrailingSlot];
    v30 = v27 - v29;

    v31 = -v30;
    if (v24 == 1)
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

- (CGRect)_calculateSummaryLabelFrameForColumn:(CGRect)a3 summaryLabelCapFrameYOrigin:(double)a4 displayScale:(double)a5
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(CKConversationListCell *)self summaryLabel:a3.origin.x];
  [v11 sizeThatFits:{width, 600.0}];
  v13 = v12;

  v14 = [(CKConversationListCell *)self summaryLabel];
  [v14 _setFirstLineCapFrameOriginY:a4];

  v15 = round(x * a5) / a5;
  v16 = round(y * a5) / a5;
  v17 = round(width * a5) / a5;
  v18 = round((v13 + 5.0) * a5) / a5;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_calculateIndicatorFrameForSize:(CGSize)a3 trailing:(BOOL)a4 displayScale:(double)a5 insets:(UIEdgeInsets)a6
{
  right = a6.right;
  left = a6.left;
  v7 = a4;
  height = a3.height;
  width = a3.width;
  [(CKConversationListStandardCell *)self safeAreaInsets:a3.width];
  v33 = v11;
  v34 = v12;
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 conversationListCellLeftMargin];
  v15 = v14;

  [(CKConversationListCell *)self containerBounds];
  v17 = v16;
  v19 = v18;
  v20 = objc_opt_class();
  v21 = [(CKConversationListStandardCell *)self traitCollection];
  [v21 displayScale];
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
  if (v7)
  {
    v26 = [(CKConversationListStandardCell *)self contentView];
    [v26 bounds];
    v28 = left + v27 - v25 - width - v34;
  }

  else
  {
    v28 = right + v33 + v25;
  }

  v29 = round(v28 * a5) / a5;
  v30 = round(floor((v19 + (v23 - height) * 0.5) * v24) / v24 * a5) / a5;
  v31 = round(width * a5) / a5;
  v32 = round(height * a5) / a5;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([a5 isEqualToString:*MEMORY[0x1E695D070]] && objc_msgSend(v7, "count"))
  {
    v8 = [v7 firstObject];
    v9 = [v8 contact];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = [(CKConversationListCell *)self conversation];
    v11 = [v10 recipients];

    v42 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v42)
    {
      v12 = *v51;
      v45 = *MEMORY[0x1E695C208];
      v44 = *MEMORY[0x1E695C330];
      v40 = v9;
      v41 = v7;
      v38 = *v51;
      v39 = v11;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v43 = v13;
          v14 = *(*(&v50 + 1) + 8 * v13);
          v15 = [v14 cnContactWithKeys:{MEMORY[0x1E695E0F0], v38}];
          v16 = [v15 identifier];
          v17 = [v9 identifier];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v19 = v7;
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
                  v27 = [v24 value];
                }

                else
                {
                  v28 = [v24 key];
                  v29 = [v28 isEqualToString:v44];

                  if (v29)
                  {
                    v30 = [v24 value];
                    v27 = [v30 stringValue];
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                v31 = IMStripFormattingFromAddress();

                v32 = [v14 rawAddress];
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

              v9 = v40;
              v7 = v41;
              v12 = v38;
              v11 = v39;
              if (!v35)
              {
                goto LABEL_24;
              }

              v36 = [MEMORY[0x1E695DF70] arrayWithArray:v19];
              [v36 removeObject:v35];
              [v36 insertObject:v35 atIndex:0];
              v11 = v35;
              goto LABEL_29;
            }

LABEL_22:

            v9 = v40;
            v7 = v41;
            v12 = v38;
            v11 = v39;
          }

LABEL_24:
          v13 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
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

- (BOOL)avatarView:(id)a3 shouldShowContact:(id)a4
{
  v5 = a3;
  v6 = [(CKConversationListCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v5 presentingViewController];
    v9 = [v8 presentedViewController];
    [v9 dismissViewControllerAnimated:1 completion:0];

    v10 = [(CKConversationListCell *)self delegate];
    v11 = [(CKConversationListCell *)self conversation];
    [v10 avatarHeaderWasTappedForConversation:v11 inCell:self];
  }

  return (v7 & 1) == 0;
}

- (id)contactsForPreviewInteractionForAvatarView:(id)a3 suggestedKeysToFetch:(id)a4
{
  v4 = [(CKConversationListCell *)self conversation:a3];
  v5 = [v4 orderedContactsForAvatar3DTouchUIWithKeysToFetch:MEMORY[0x1E695E0F0]];

  return v5;
}

- (id)overrideImageDataForPreviewInteractionForAvatarView:(id)a3
{
  v3 = [(CKConversationListCell *)self conversation];
  v4 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v5 = [v3 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v4];
  v6 = [v5 groupPhoto];

  return v6;
}

- (BOOL)_shouldShowAvatarForWidth:(double)a3
{
  if ([(CKConversationListCell *)self shouldAlwaysHideAvatar])
  {
    return 0;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 shouldShowAvatarForWidth:a3];

  return v6;
}

@end