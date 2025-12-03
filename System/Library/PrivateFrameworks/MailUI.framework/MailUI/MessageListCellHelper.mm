@interface MessageListCellHelper
- (BOOL)senderSpecificCell;
- (EMCategory)category;
- (MessageListCellHelper)initWithParentView:(id)view contentView:(id)contentView cellView:(id)cellView applicationProxy:(id)proxy;
- (UIView)contentView;
- (UIView)parentView;
- (id)_cellViewModelForMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone;
- (id)_generatedSummaryForUpdatingCellView:(id)view;
- (id)_generatedSummaryString;
- (id)backgroundConfigurationForState:(id)state;
- (id)configurationStateForCellConfigurationState:(id)state;
- (id)contentConfigurationForState:(id)state;
- (int64_t)_cellViewRelationshipTypeForFlags:(id)flags;
- (void)_registerUpdateGeneratedSummaryObservation;
- (void)_significantTimeChange;
- (void)_updateGeneratedSummary;
- (void)_updateViewsToMatchMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setCategory:(id)category;
- (void)setCompact:(BOOL)compact;
- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone;
- (void)setNumberOfPreviewLines:(int64_t)lines;
- (void)setSenderSpecificCell:(BOOL)cell;
- (void)setShouldAnnotateReplyOrForward:(BOOL)forward;
- (void)setShouldDisplayUnreadAndVIP:(BOOL)p;
- (void)setShowsAccessory:(BOOL)accessory showingDetail:(BOOL)detail;
- (void)updateViewBackgroundConfiguration:(id)configuration;
- (void)updateViewConfigurationForState:(id)state;
- (void)updateViewContentConfiguration:(id)configuration;
@end

@implementation MessageListCellHelper

- (id)_generatedSummaryString
{
  automaticallySummarizeMessages = [(MessageListCellHelper *)self automaticallySummarizeMessages];
  if ([automaticallySummarizeMessages isEnabled])
  {
    messageListItem = [(MessageListCellHelper *)self messageListItem];
    generatedSummary = [messageListItem generatedSummary];
    topLine = [generatedSummary topLine];
    string = [topLine string];
  }

  else
  {
    string = 0;
  }

  return string;
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

- (MessageListCellHelper)initWithParentView:(id)view contentView:(id)contentView cellView:(id)cellView applicationProxy:(id)proxy
{
  viewCopy = view;
  contentViewCopy = contentView;
  cellViewCopy = cellView;
  proxyCopy = proxy;
  v25.receiver = self;
  v25.super_class = MessageListCellHelper;
  v14 = [(MessageListCellHelper *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_parentView, viewCopy);
    objc_storeWeak(&v15->_contentView, contentViewCopy);
    [viewCopy setMui_clipsToBounds:1];
    [viewCopy setAutoresizesSubviews:1];
    objc_storeStrong(&v15->_cellView, cellView);
    if (v15->_cellView != contentViewCopy)
    {
      [(MessageListCellViewable *)contentViewCopy addSubview:?];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__significantTimeChange name:*MEMORY[0x277D766F0] object:0];
    [viewCopy setAccessibilityIdentifier:*MEMORY[0x277D258B8]];
    objc_storeStrong(&v15->_applicationProxy, proxy);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  predictedMailbox = [(MessageListCellHelper *)self predictedMailbox];
  [predictedMailbox cancel];

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
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v3];
}

void __47__MessageListCellHelper__significantTimeChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellView];
  [v2 refreshForSignificantTimeChange];

  v3 = [*(a1 + 32) parentView];
  [v3 mui_setNeedsLayout];
}

- (void)setMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone
{
  objc_storeStrong(&self->_messageListItem, item);
  itemCopy = item;
  zoneCopy = zone;
  self->_style = style;
  [(MessageListCellHelper *)self _updateViewsToMatchMessageListItem:itemCopy style:style hintsBySnippetZone:zoneCopy];
}

- (id)_cellViewModelForMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone
{
  itemCopy = item;
  zoneCopy = zone;
  if (itemCopy)
  {
    v10 = [MessageListCellViewModel alloc];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__MessageListCellHelper__cellViewModelForMessageListItem_style_hintsBySnippetZone___block_invoke;
    v13[3] = &unk_278188C00;
    v14 = itemCopy;
    selfCopy = self;
    v16 = zoneCopy;
    v17 = style == 1;
    styleCopy = style;
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

- (void)_updateViewsToMatchMessageListItem:(id)item style:(int64_t)style hintsBySnippetZone:(id)zone
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  zoneCopy = zone;
  cellView = [(MessageListCellHelper *)self cellView];
  if (_os_feature_enabled_impl())
  {
    [cellView setShouldShowHighImpact:{-[MessageListCellHelper shouldShowHighImpact](self, "shouldShowHighImpact")}];
  }

  v10 = [(MessageListCellHelper *)self _cellViewModelForMessageListItem:itemCopy style:style hintsBySnippetZone:zoneCopy];
  [cellView setViewModel:v10];

  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterAvailable())
    {
      v11 = [(MessageListCellHelper *)self _generatedSummaryForUpdatingCellView:cellView];
      if (v11)
      {
        v12 = v11;
        v13 = _ef_log_MessageListCellHelper();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          itemID = [itemCopy itemID];
          *buf = 134218242;
          selfCopy = self;
          v32 = 2114;
          v33 = itemID;
          _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_DEFAULT, "<%p>: Found generated summary for %{public}@, displaying generated one over classic summary", buf, 0x16u);
        }

        summary = v12;
        v16 = 1;
        v28 = summary;
        goto LABEL_10;
      }
    }
  }

  summary = [itemCopy summary];
  v16 = 0;
  v28 = 0;
  v17 = 0;
  if (summary)
  {
LABEL_10:
    if ([summary length])
    {
      v17 = summary;
    }

    else
    {
      v17 = +[MUILocalizedMessageListStrings noContentPlaceholder];
    }
  }

  if ([MEMORY[0x277D06DA0] preferenceEnabled:4])
  {
    v18 = MEMORY[0x277CCACA8];
    itemID2 = [itemCopy itemID];
    v20 = itemCopy;
    displayMessageItemID = [itemCopy displayMessageItemID];
    v22 = [v18 stringWithFormat:@"%@/%@:%@", itemID2, displayMessageItemID, v17];

    v17 = v22;
  }

  else
  {
    v20 = itemCopy;
  }

  if ([MEMORY[0x277D06DA0] preferenceEnabled:5] && objc_msgSend(v20, "searchResultType") == 3)
  {
    v23 = MEMORY[0x277CCACA8];
    searchRelevanceScore = [v20 searchRelevanceScore];
    v25 = [v23 stringWithFormat:@"RelevanceScore:%@/%@", searchRelevanceScore, v17];

    v17 = v25;
  }

  [cellView setSummary:v17];
  [cellView setHasGeneratedSummary:v16];
  flags = [v20 flags];
  [cellView setAnnotatedRelationshipType:{-[MessageListCellHelper _cellViewRelationshipTypeForFlags:](self, "_cellViewRelationshipTypeForFlags:", flags)}];

  parentView = [(MessageListCellHelper *)self parentView];
  [parentView mui_setNeedsLayout];
}

- (id)_generatedSummaryForUpdatingCellView:(id)view
{
  viewCopy = view;
  [(MessageListCellHelper *)self setUpdateSummaryCancelationToken:0];
  _generatedSummaryString = [(MessageListCellHelper *)self _generatedSummaryString];
  if (_generatedSummaryString)
  {
    v6 = _generatedSummaryString;
    summary = [viewCopy summary];
    if ([summary length])
    {
      messageListItem = [(MessageListCellHelper *)self messageListItem];
      summary2 = [messageListItem summary];
      v10 = [summary2 isEqualToString:summary];

      if (v10)
      {
        if (([viewCopy hasGeneratedSummary] & 1) == 0 && (objc_msgSend(MEMORY[0x277D06DA0], "preferenceEnabled:", 47) & 1) == 0 && -[MessageListCellHelper isVisible](self, "isVisible"))
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
  messageListItem = [(MessageListCellHelper *)self messageListItem];
  itemID = [messageListItem itemID];

  v5 = _ef_log_MessageListCellHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v28 = 2114;
    v29 = itemID;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "<%p>: Have generated summary for %{public}@, deferring update until cell is not visible", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D07138]);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  objc_initWeak(buf, self);
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke;
  v23[3] = &unk_278188C28;
  objc_copyWeak(&v25, buf);
  v9 = *MEMORY[0x277D76E58];
  v10 = itemID;
  v24 = v10;
  v11 = [defaultCenter addObserverForName:v9 object:0 queue:mainQueue usingBlock:v23];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__MessageListCellHelper__registerUpdateGeneratedSummaryObservation__block_invoke_71;
  v18 = &unk_278188C50;
  selfCopy2 = self;
  v12 = v10;
  v20 = v12;
  v13 = defaultCenter;
  v21 = v13;
  v14 = v11;
  v22 = v14;
  [v6 addCancelationBlock:&v15];
  [(MessageListCellHelper *)self setUpdateSummaryCancelationToken:v6, v15, v16, v17, v18, selfCopy2];

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
  cellView = [(MessageListCellHelper *)self cellView];
  _generatedSummaryString = [(MessageListCellHelper *)self _generatedSummaryString];
  if (([cellView hasGeneratedSummary] & 1) == 0 && _generatedSummaryString)
  {
    [cellView setSummary:_generatedSummaryString];
    [cellView setHasGeneratedSummary:1];
    parentView = [(MessageListCellHelper *)self parentView];
    [parentView mui_setNeedsLayout];
  }
}

- (int64_t)_cellViewRelationshipTypeForFlags:(id)flags
{
  flagsCopy = flags;
  if ([flagsCopy draft])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([flagsCopy forwarded])
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  replied = [flagsCopy replied];

  if (replied)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (id)backgroundConfigurationForState:(id)state
{
  stateCopy = state;
  cellView = [(MessageListCellHelper *)self cellView];
  layoutValues = [cellView layoutValues];

  defaultBackgroundConfiguration = [layoutValues defaultBackgroundConfiguration];
  v8 = [layoutValues backgroundColorForConfigurationState:stateCopy backgroundConfiguration:defaultBackgroundConfiguration];

  if (v8)
  {
    [defaultBackgroundConfiguration setBackgroundColor:v8];
  }

  if ([layoutValues useSidebarAppearance])
  {
    [layoutValues backgroundCornerRadius];
    [defaultBackgroundConfiguration setCornerRadius:?];
  }

  return defaultBackgroundConfiguration;
}

- (id)configurationStateForCellConfigurationState:(id)state
{
  stateCopy = state;
  style = [(MessageListCellHelper *)self style];
  v6 = style == 1 && [(MessageListCellHelper *)self disclosureEnabled];
  if (style == 2)
  {
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D75518];
  cellView = [(MessageListCellHelper *)self cellView];
  v10 = [v8 focusSystemForEnvironment:cellView];

  applicationProxy = [(MessageListCellHelper *)self applicationProxy];
  focusedItem = [v10 focusedItem];
  v13 = [applicationProxy isMessageListCellObject:focusedItem];

  [stateCopy setIsParent:v6];
  [stateCopy setIsChild:v7];
  [stateCopy setIsPriority:{-[MessageListCellHelper isPriority](self, "isPriority")}];
  [stateCopy setIsFocusSystemActive:v10 != 0];
  [stateCopy setIsFocusingOnMessageListCell:v13];

  return stateCopy;
}

- (id)contentConfigurationForState:(id)state
{
  stateCopy = state;
  cellView = [(MessageListCellHelper *)self cellView];
  layoutValues = [cellView layoutValues];
  if ([layoutValues useSidebarAppearance])
  {
    [MEMORY[0x277D756E0] cellConfiguration];
  }

  else
  {
    [MEMORY[0x277D756E0] valueCellConfiguration];
  }
  v7 = ;

  v8 = [v7 updatedConfigurationForState:stateCopy];

  return v8;
}

- (void)updateViewConfigurationForState:(id)state
{
  stateCopy = state;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setConfigurationState:stateCopy];
}

- (void)updateViewContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setContentConfiguration:configurationCopy];
}

- (void)updateViewBackgroundConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setBackgroundConfiguration:configurationCopy];
}

- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_disclosureEnabled != enabled)
  {
    animatedCopy = animated;
    enabledCopy = enabled;
    self->_disclosureEnabled = enabled;
    cellView = [(MessageListCellHelper *)self cellView];
    [cellView setDisclosureEnabled:enabledCopy animated:animatedCopy];

    parentView = [(MessageListCellHelper *)self parentView];
    [parentView mui_setNeedsLayout];
  }
}

- (void)setShowsAccessory:(BOOL)accessory showingDetail:(BOOL)detail
{
  detailCopy = detail;
  accessoryCopy = accessory;
  cellView = [(MessageListCellHelper *)self cellView];
  chevronType = [cellView chevronType];

  cellView2 = [(MessageListCellHelper *)self cellView];
  viewModel = [cellView2 viewModel];
  style = [viewModel style];

  v12 = 2;
  if (style != 1)
  {
    v12 = !detailCopy;
  }

  if (!accessoryCopy)
  {
    v12 = 0;
  }

  if (style == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (chevronType != v13)
  {
    cellView3 = [(MessageListCellHelper *)self cellView];
    [cellView3 setChevronType:v13];
  }
}

- (void)setShouldAnnotateReplyOrForward:(BOOL)forward
{
  if (self->_shouldAnnotateReplyOrForward != forward)
  {
    forwardCopy = forward;
    self->_shouldAnnotateReplyOrForward = forward;
    cellView = [(MessageListCellHelper *)self cellView];
    [cellView setShouldAnnotateReplyOrForward:forwardCopy];
  }
}

- (void)setShouldDisplayUnreadAndVIP:(BOOL)p
{
  pCopy = p;
  if (self->_shouldDisplayUnreadAndVIP != p)
  {
    self->_shouldDisplayUnreadAndVIP = p;
  }

  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setDisplayUnreadDot:pCopy];

  cellView2 = [(MessageListCellHelper *)self cellView];
  [cellView2 setDisplayVIP:pCopy];
}

- (void)setSenderSpecificCell:(BOOL)cell
{
  cellCopy = cell;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setSenderSpecificCell:cellCopy];
}

- (BOOL)senderSpecificCell
{
  cellView = [(MessageListCellHelper *)self cellView];
  isSenderSpecificCell = [cellView isSenderSpecificCell];

  return isSenderSpecificCell;
}

- (EMCategory)category
{
  cellView = [(MessageListCellHelper *)self cellView];
  category = [cellView category];

  return category;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView setCategory:categoryCopy];
}

- (void)setCompact:(BOOL)compact
{
  if (self->_compact != compact)
  {
    compactCopy = compact;
    self->_compact = compact;
    cellView = [(MessageListCellHelper *)self cellView];
    [cellView setCompact:compactCopy];

    parentView = [(MessageListCellHelper *)self parentView];
    [parentView mui_setNeedsLayout];
  }
}

- (void)setNumberOfPreviewLines:(int64_t)lines
{
  if (self->_numberOfPreviewLines != lines)
  {
    self->_numberOfPreviewLines = lines;
    cellView = [(MessageListCellHelper *)self cellView];
    [cellView setNumberOfPreviewLines:lines];
  }
}

- (void)prepareForReuse
{
  messageListItem = self->_messageListItem;
  self->_messageListItem = 0;

  self->_style = 0;
  cellView = [(MessageListCellHelper *)self cellView];
  [cellView prepareForReuse];

  predictedMailbox = [(MessageListCellHelper *)self predictedMailbox];
  [predictedMailbox cancel];

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