@interface MessageListCellHelper
- (BOOL)senderSpecificCell;
- (EMCategory)category;
- (MessageListCellHelper)initWithParentView:(id)a3 contentView:(id)a4 cellView:(id)a5 applicationProxy:(id)a6;
- (UIView)contentView;
- (UIView)parentView;
- (id)_cellViewModelForMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5;
- (id)_generatedSummaryForUpdatingCellView:(id)a3;
- (id)_generatedSummaryString;
- (id)backgroundConfigurationForState:(id)a3;
- (id)configurationStateForCellConfigurationState:(id)a3;
- (id)contentConfigurationForState:(id)a3;
- (int64_t)_cellViewRelationshipTypeForFlags:(id)a3;
- (void)_registerUpdateGeneratedSummaryObservation;
- (void)_significantTimeChange;
- (void)_updateGeneratedSummary;
- (void)_updateViewsToMatchMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setCategory:(id)a3;
- (void)setCompact:(BOOL)a3;
- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5;
- (void)setNumberOfPreviewLines:(int64_t)a3;
- (void)setSenderSpecificCell:(BOOL)a3;
- (void)setShouldAnnotateReplyOrForward:(BOOL)a3;
- (void)setShouldDisplayUnreadAndVIP:(BOOL)a3;
- (void)setShowsAccessory:(BOOL)a3 showingDetail:(BOOL)a4;
- (void)updateViewBackgroundConfiguration:(id)a3;
- (void)updateViewConfigurationForState:(id)a3;
- (void)updateViewContentConfiguration:(id)a3;
@end

@implementation MessageListCellHelper

- (id)_generatedSummaryString
{
  v3 = [(MessageListCellHelper *)self automaticallySummarizeMessages];
  if ([v3 isEnabled])
  {
    v4 = [(MessageListCellHelper *)self messageListItem];
    v5 = [v4 generatedSummary];
    v6 = [v5 topLine];
    v7 = [v6 string];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

uint64_t ___ef_log_MessageListCellHelper_block_invoke()
{
  _ef_log_MessageListCellHelper_log = os_log_create("com.apple.email", "MessageListCellHelper");

  return MEMORY[0x2821F96F8]();
}

- (MessageListCellHelper)initWithParentView:(id)a3 contentView:(id)a4 cellView:(id)a5 applicationProxy:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = MessageListCellHelper;
  v14 = [(MessageListCellHelper *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_parentView, v10);
    objc_storeWeak(&v15->_contentView, v11);
    [v10 setMui_clipsToBounds:1];
    [v10 setAutoresizesSubviews:1];
    objc_storeStrong(&v15->_cellView, a5);
    if (v15->_cellView != v11)
    {
      [(MessageListCellViewable *)v11 addSubview:?];
    }

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v15 selector:sel__significantTimeChange name:*MEMORY[0x277D766F0] object:0];
    [v10 setAccessibilityIdentifier:*MEMORY[0x277D258B8]];
    objc_storeStrong(&v15->_applicationProxy, a6);
    v15->_disclosureEnabled = 0;
    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      objc_initWeak(&location, v15);
      v17 = objc_alloc(MEMORY[0x277D06E58]);
      v18 = *MEMORY[0x277D06C60];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __82__MessageListCellHelper_initWithParentView_contentView_cellView_applicationProxy___block_invoke;
      v22[3] = &unk_278188BD8;
      objc_copyWeak(&v23, &location);
      v19 = [v17 initWithUserDefaultKey:v18 keyRepresentsDisabled:1 handler:v22];
      automaticallySummarizeMessages = v15->_automaticallySummarizeMessages;
      v15->_automaticallySummarizeMessages = v19;

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  return v15;
}

void __82__MessageListCellHelper_initWithParentView_contentView_cellView_applicationProxy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained messageListItem];
    v3 = [v7 style];
    v4 = [v7 cellView];
    v5 = [v4 viewModel];
    v6 = [v5 hintsBySnippetZone];
    [v7 _updateViewsToMatchMessageListItem:v2 style:v3 hintsBySnippetZone:v6];

    WeakRetained = v7;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(MessageListCellHelper *)self predictedMailbox];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = MessageListCellHelper;
  [(MessageListCellHelper *)&v5 dealloc];
}

- (void)_significantTimeChange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__MessageListCellHelper__significantTimeChange__block_invoke;
  v3[3] = &unk_278188BB0;
  v3[4] = self;
  v2 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v2 performBlock:v3];
}

void __47__MessageListCellHelper__significantTimeChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellView];
  [v2 refreshForSignificantTimeChange];

  v3 = [*(a1 + 32) parentView];
  [v3 mui_setNeedsLayout];
}

- (void)setMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5
{
  objc_storeStrong(&self->_messageListItem, a3);
  v9 = a3;
  v10 = a5;
  self->_style = a4;
  [(MessageListCellHelper *)self _updateViewsToMatchMessageListItem:v9 style:a4 hintsBySnippetZone:v10];
}

- (id)_cellViewModelForMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [MessageListCellViewModel alloc];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__MessageListCellHelper__cellViewModelForMessageListItem_style_hintsBySnippetZone___block_invoke;
    v13[3] = &unk_278188C00;
    v14 = v8;
    v15 = self;
    v16 = v9;
    v17 = a4 == 1;
    v18 = a4;
    v11 = [(MessageListCellViewModel *)v10 initWithBuilder:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __83__MessageListCellHelper__cellViewModelForMessageListItem_style_hintsBySnippetZone___block_invoke(uint64_t a1, void *a2)
{
  v48 = a2;
  v3 = [*(a1 + 32) flags];
  [v48 setRead:{objc_msgSend(v3, "read")}];
  [v48 setFlagged:{objc_msgSend(v3, "flagged")}];
  v4 = [*(a1 + 32) flagColors];
  [v48 setFlagColors:v4];

  [v48 setReplied:{objc_msgSend(v3, "replied")}];
  [v48 setForwarded:{objc_msgSend(v3, "forwarded")}];
  [v48 setRedirected:{objc_msgSend(v3, "redirected")}];
  [v48 setJunk:{objc_msgSend(v3, "isJunk")}];
  if ([*(a1 + 40) canShowReadLaterDate])
  {
    v5 = [*(a1 + 32) readLater];
    v6 = [v5 date];
    [v48 setReadLaterDate:v6];
  }

  else
  {
    [v48 setReadLaterDate:0];
  }

  v7 = [*(a1 + 32) sendLaterDate];
  [v48 setSendLaterDate:v7];

  v8 = [*(a1 + 32) followUp];
  [v48 setFollowUp:v8];

  [v48 setHintsBySnippetZone:*(a1 + 48)];
  v9 = [*(a1 + 32) date];
  [v48 setDate:v9];

  v10 = [*(a1 + 32) displayDate];
  [v48 setDisplayDate:v10];

  [v48 setHideFollowUp:{objc_msgSend(*(a1 + 40), "shouldHideFollowUp")}];
  v11 = [*(a1 + 32) itemID];
  [v48 setItemID:v11];

  if ([*(a1 + 40) isSearchResult])
  {
    v12 = [*(a1 + 40) isLocalMailboxSearchScope];
  }

  else
  {
    v12 = 0;
  }

  if ([*(a1 + 40) isOutgoingMailbox] && !objc_msgSend(*(a1 + 40), "isSearchResult") || (objc_msgSend(*(a1 + 40), "isOutgoingMailbox") & v12 & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v14 = [*(a1 + 32) followUp];
    if ([v14 isActive])
    {
      v13 = [*(a1 + 40) isInbox];
    }

    else
    {
      v13 = 0;
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (([*(a1 + 32) isGroupedSender] & 1) == 0 && objc_msgSend(MEMORY[0x277D06DA0], "preferenceEnabled:", 37))
    {
      v15 = [*(a1 + 32) category];
      v16 = EMShortStringForCategory();
      [v48 setCategorizationState:v16];
    }

    [v48 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 32), "allowAuthenticationWarning")}];
    v17 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 32) showRecipient:v13 reducePlaceholderImage:0];
    [v48 setAvatarContext:v17];
  }

  v18 = MEMORY[0x277D070D8];
  v19 = [*(a1 + 32) subject];
  v20 = [v18 subjectStringForDisplayForSubject:v19 style:*(a1 + 56)];

  [v48 setSubjectIsPresent:{objc_msgSend(v20, "length") != 0}];
  if (([v48 subjectIsPresent] & 1) == 0)
  {
    v21 = +[MUILocalizedMessageListStrings noSubjectPlaceholder];

    v20 = v21;
  }

  [v48 setSubject:v20];
  v22 = *(a1 + 32);
  if (v13)
  {
    v23 = [v22 toList];
    v24 = [v23 count];
    v25 = *(a1 + 32);
    if (v24)
    {
      [v25 toList];
    }

    else
    {
      [v25 ccList];
    }
    v26 = ;
  }

  else
  {
    v26 = [v22 senderList];
  }

  v27 = [*(a1 + 40) applicationProxy];
  v28 = [v27 addressListFormatter];

  v29 = [v28 stringFromEmailAddressList:v26 preferFullDisplayName:0];
  v30 = [v26 ef_mapSelector:sel_stringValue];
  v31 = [MEMORY[0x277D06E38] authorHintsFromHintsBySnippetZone:*(a1 + 48)];
  if ([v31 count])
  {
    v32 = [v28 attributedStringFromEmailAddressList:v26];
  }

  else
  {
    v32 = 0;
  }

  if ([v29 length])
  {
    [v48 setAddressIsPresent:1];
    [v48 setAddress:v29];
    [v48 setAttributedAddress:v32];
    [v48 setAddressList:v26];
  }

  else
  {
    if (v13)
    {
      +[MUILocalizedMessageListStrings noRecipientsPlaceholder];
    }

    else
    {
      +[MUILocalizedMessageListStrings noSenderPlaceholder];
    }
    v33 = ;
    [v48 setAddress:v33];
  }

  v47 = v32;
  if ([v30 count])
  {
    [v48 setEmailAddresses:v30];
  }

  [v48 setVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v48 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  [v48 setRecipientType:0];
  v34 = [*(a1 + 40) applicationProxy];
  v35 = [v34 showToCCIndicators];

  if (v35)
  {
    v46 = v29;
    v36 = v20;
    v37 = v31;
    v38 = v3;
    v39 = [v28 userProfileProvider];
    v40 = [*(a1 + 32) toList];
    v41 = [v39 isMyEmailAddressContainedInAddressList:v40];

    if (v41)
    {
      v42 = 1;
    }

    else
    {
      v43 = [*(a1 + 32) ccList];
      v44 = [v39 isMyEmailAddressContainedInAddressList:v43];

      if (!v44)
      {
LABEL_45:

        v3 = v38;
        v31 = v37;
        v20 = v36;
        v29 = v46;
        goto LABEL_46;
      }

      v42 = 2;
    }

    [v48 setRecipientType:v42];
    goto LABEL_45;
  }

LABEL_46:
  v45 = [*(a1 + 32) conversationNotificationLevel];
  [v48 setNotify:v45 == 2];
  [v48 setMute:v45 == 1];
  [v48 setStyle:*(a1 + 64)];
  [v48 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v48 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
}

- (void)_updateViewsToMatchMessageListItem:(id)a3 style:(int64_t)a4 hintsBySnippetZone:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v29 = a5;
  v9 = [(MessageListCellHelper *)self cellView];
  if (_os_feature_enabled_impl())
  {
    [v9 setShouldShowHighImpact:{-[MessageListCellHelper shouldShowHighImpact](self, "shouldShowHighImpact")}];
  }

  v10 = [(MessageListCellHelper *)self _cellViewModelForMessageListItem:v8 style:a4 hintsBySnippetZone:v29];
  [v9 setViewModel:v10];

  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterAvailable())
    {
      v11 = [(MessageListCellHelper *)self _generatedSummaryForUpdatingCellView:v9];
      if (v11)
      {
        v12 = v11;
        v13 = _ef_log_MessageListCellHelper();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v8 itemID];
          *buf = 134218242;
          v31 = self;
          v32 = 2114;
          v33 = v14;
          _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_DEFAULT, "<%p>: Found generated summary for %{public}@, displaying generated one over classic summary", buf, 0x16u);
        }

        v15 = v12;
        v16 = 1;
        v28 = v15;
        goto LABEL_10;
      }
    }
  }

  v15 = [v8 summary];
  v16 = 0;
  v28 = 0;
  v17 = 0;
  if (v15)
  {
LABEL_10:
    if ([v15 length])
    {
      v17 = v15;
    }

    else
    {
      v17 = +[MUILocalizedMessageListStrings noContentPlaceholder];
    }
  }

  if ([MEMORY[0x277D06DA0] preferenceEnabled:4])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v8 itemID];
    v20 = v8;
    v21 = [v8 displayMessageItemID];
    v22 = [v18 stringWithFormat:@"%@/%@:%@", v19, v21, v17];

    v17 = v22;
  }

  else
  {
    v20 = v8;
  }

  if ([MEMORY[0x277D06DA0] preferenceEnabled:5] && objc_msgSend(v20, "searchResultType") == 3)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [v20 searchRelevanceScore];
    v25 = [v23 stringWithFormat:@"RelevanceScore:%@/%@", v24, v17];

    v17 = v25;
  }

  [v9 setSummary:v17];
  [v9 setHasGeneratedSummary:v16];
  v26 = [v20 flags];
  [v9 setAnnotatedRelationshipType:{-[MessageListCellHelper _cellViewRelationshipTypeForFlags:](self, "_cellViewRelationshipTypeForFlags:", v26)}];

  v27 = [(MessageListCellHelper *)self parentView];
  [v27 mui_setNeedsLayout];
}

- (id)_generatedSummaryForUpdatingCellView:(id)a3
{
  v4 = a3;
  [(MessageListCellHelper *)self setUpdateSummaryCancelationToken:0];
  v5 = [(MessageListCellHelper *)self _generatedSummaryString];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 summary];
    if ([v7 length])
    {
      v8 = [(MessageListCellHelper *)self messageListItem];
      v9 = [v8 summary];
      v10 = [v9 isEqualToString:v7];

      if (v10)
      {
        if (([v4 hasGeneratedSummary] & 1) == 0 && (objc_msgSend(MEMORY[0x277D06DA0], "preferenceEnabled:", 47) & 1) == 0 && -[MessageListCellHelper isVisible](self, "isVisible"))
        {

          [(MessageListCellHelper *)self _registerUpdateGeneratedSummaryObservation];
          v6 = 0;
        }
      }
    }

    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_registerUpdateGeneratedSummaryObservation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(MessageListCellHelper *)self messageListItem];
  v4 = [v3 itemID];

  v5 = _ef_log_MessageListCellHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v27 = self;
    v28 = 2114;
    v29 = v4;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "<%p>: Have generated summary for %{public}@, deferring update until cell is not visible", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D07138]);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  objc_initWeak(buf, self);
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke;
  v23[3] = &unk_278188C28;
  objc_copyWeak(&v25, buf);
  v9 = *MEMORY[0x277D76E58];
  v10 = v4;
  v24 = v10;
  v11 = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:v23];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke_71;
  v18 = &unk_278188C50;
  v19 = self;
  v12 = v10;
  v20 = v12;
  v13 = v7;
  v21 = v13;
  v14 = v11;
  v22 = v14;
  [v6 addCancelationBlock:&v15];
  [(MessageListCellHelper *)self setUpdateSummaryCancelationToken:v6, v15, v16, v17, v18, v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _ef_log_MessageListCellHelper();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 134218242;
      v6 = WeakRetained;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "<%p>: Applying generated summary for %{public}@ due to scene backgrounding", &v5, 0x16u);
    }

    [WeakRetained _updateGeneratedSummary];
    [WeakRetained setUpdateSummaryCancelationToken:0];
  }
}

uint64_t __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke_71(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ef_log_MessageListCellHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "<%p>: Canceling generated summary update observation for %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 48) removeObserver:*(a1 + 56)];
}

- (void)_updateGeneratedSummary
{
  v5 = [(MessageListCellHelper *)self cellView];
  v3 = [(MessageListCellHelper *)self _generatedSummaryString];
  if (([v5 hasGeneratedSummary] & 1) == 0 && v3)
  {
    [v5 setSummary:v3];
    [v5 setHasGeneratedSummary:1];
    v4 = [(MessageListCellHelper *)self parentView];
    [v4 mui_setNeedsLayout];
  }
}

- (int64_t)_cellViewRelationshipTypeForFlags:(id)a3
{
  v3 = a3;
  if ([v3 draft])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([v3 forwarded])
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 replied];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (id)backgroundConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  v6 = [v5 layoutValues];

  v7 = [v6 defaultBackgroundConfiguration];
  v8 = [v6 backgroundColorForConfigurationState:v4 backgroundConfiguration:v7];

  if (v8)
  {
    [v7 setBackgroundColor:v8];
  }

  if ([v6 useSidebarAppearance])
  {
    [v6 backgroundCornerRadius];
    [v7 setCornerRadius:?];
  }

  return v7;
}

- (id)configurationStateForCellConfigurationState:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self style];
  v6 = v5 == 1 && [(MessageListCellHelper *)self disclosureEnabled];
  if (v5 == 2)
  {
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D75518];
  v9 = [(MessageListCellHelper *)self cellView];
  v10 = [v8 focusSystemForEnvironment:v9];

  v11 = [(MessageListCellHelper *)self applicationProxy];
  v12 = [v10 focusedItem];
  v13 = [v11 isMessageListCellObject:v12];

  [v4 setIsParent:v6];
  [v4 setIsChild:v7];
  [v4 setIsPriority:{-[MessageListCellHelper isPriority](self, "isPriority")}];
  [v4 setIsFocusSystemActive:v10 != 0];
  [v4 setIsFocusingOnMessageListCell:v13];

  return v4;
}

- (id)contentConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  v6 = [v5 layoutValues];
  if ([v6 useSidebarAppearance])
  {
    [MEMORY[0x277D756E0] cellConfiguration];
  }

  else
  {
    [MEMORY[0x277D756E0] valueCellConfiguration];
  }
  v7 = ;

  v8 = [v7 updatedConfigurationForState:v4];

  return v8;
}

- (void)updateViewConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  [v5 setConfigurationState:v4];
}

- (void)updateViewContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  [v5 setContentConfiguration:v4];
}

- (void)updateViewBackgroundConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  [v5 setBackgroundConfiguration:v4];
}

- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_disclosureEnabled != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_disclosureEnabled = a3;
    v8 = [(MessageListCellHelper *)self cellView];
    [v8 setDisclosureEnabled:v6 animated:v5];

    v9 = [(MessageListCellHelper *)self parentView];
    [v9 mui_setNeedsLayout];
  }
}

- (void)setShowsAccessory:(BOOL)a3 showingDetail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MessageListCellHelper *)self cellView];
  v8 = [v7 chevronType];

  v9 = [(MessageListCellHelper *)self cellView];
  v10 = [v9 viewModel];
  v11 = [v10 style];

  v12 = 2;
  if (v11 != 1)
  {
    v12 = !v4;
  }

  if (!v5)
  {
    v12 = 0;
  }

  if (v11 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v8 != v13)
  {
    v14 = [(MessageListCellHelper *)self cellView];
    [v14 setChevronType:v13];
  }
}

- (void)setShouldAnnotateReplyOrForward:(BOOL)a3
{
  if (self->_shouldAnnotateReplyOrForward != a3)
  {
    v4 = a3;
    self->_shouldAnnotateReplyOrForward = a3;
    v5 = [(MessageListCellHelper *)self cellView];
    [v5 setShouldAnnotateReplyOrForward:v4];
  }
}

- (void)setShouldDisplayUnreadAndVIP:(BOOL)a3
{
  v3 = a3;
  if (self->_shouldDisplayUnreadAndVIP != a3)
  {
    self->_shouldDisplayUnreadAndVIP = a3;
  }

  v5 = [(MessageListCellHelper *)self cellView];
  [v5 setDisplayUnreadDot:v3];

  v6 = [(MessageListCellHelper *)self cellView];
  [v6 setDisplayVIP:v3];
}

- (void)setSenderSpecificCell:(BOOL)a3
{
  v3 = a3;
  v4 = [(MessageListCellHelper *)self cellView];
  [v4 setSenderSpecificCell:v3];
}

- (BOOL)senderSpecificCell
{
  v2 = [(MessageListCellHelper *)self cellView];
  v3 = [v2 isSenderSpecificCell];

  return v3;
}

- (EMCategory)category
{
  v2 = [(MessageListCellHelper *)self cellView];
  v3 = [v2 category];

  return v3;
}

- (void)setCategory:(id)a3
{
  v4 = a3;
  v5 = [(MessageListCellHelper *)self cellView];
  [v5 setCategory:v4];
}

- (void)setCompact:(BOOL)a3
{
  if (self->_compact != a3)
  {
    v4 = a3;
    self->_compact = a3;
    v6 = [(MessageListCellHelper *)self cellView];
    [v6 setCompact:v4];

    v7 = [(MessageListCellHelper *)self parentView];
    [v7 mui_setNeedsLayout];
  }
}

- (void)setNumberOfPreviewLines:(int64_t)a3
{
  if (self->_numberOfPreviewLines != a3)
  {
    self->_numberOfPreviewLines = a3;
    v5 = [(MessageListCellHelper *)self cellView];
    [v5 setNumberOfPreviewLines:a3];
  }
}

- (void)prepareForReuse
{
  messageListItem = self->_messageListItem;
  self->_messageListItem = 0;

  self->_style = 0;
  v4 = [(MessageListCellHelper *)self cellView];
  [v4 prepareForReuse];

  v5 = [(MessageListCellHelper *)self predictedMailbox];
  [v5 cancel];

  [(MessageListCellHelper *)self setPredictedMailbox:0];
  [(MessageListCellHelper *)self setDisclosureEnabled:0];
  [(MessageListCellHelper *)self setExpanded:0];
  [(MessageListCellHelper *)self setCompact:0];
  [(MessageListCellHelper *)self setSearchResult:0];
  [(MessageListCellHelper *)self setLocalMailboxSearchScope:0];
  [(MessageListCellHelper *)self setVisible:0];
  [(MessageListCellHelper *)self setUpdateSummaryCancelationToken:0];

  [(MessageListCellHelper *)self setPriority:0];
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end