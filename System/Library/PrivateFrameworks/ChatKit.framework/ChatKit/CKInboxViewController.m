@interface CKInboxViewController
- (BOOL)_shouldShowJunkCell;
- (BOOL)_wantsThreeColumnLayout;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (BOOL)wantsCollapsedAppearance;
- (CKInboxViewController)initWithConversationListController:(id)a3;
- (CKInboxViewControllerDelegate)delegate;
- (NSArray)categoriesCellsDataArray;
- (NSArray)junkCellsDataArray;
- (NSArray)primaryCellsData;
- (NSArray)recentlyDeletedCellDataArray;
- (UITextView)pinnedFooterTextView;
- (UITextView)scrollingFooterTextView;
- (id)_getHeaderStringForExtension:(id)a3;
- (id)_setHeaderAttributedStringForFont:(id)a3;
- (id)_unreadCountStringForIndexPath:(id)a3;
- (id)_updateCategoriesCellsDataArray;
- (id)footerTextView;
- (int64_t)_categoriesSectionIndex;
- (int64_t)_junkSectionIndex;
- (int64_t)_lastSectionIndex;
- (int64_t)_primarySectionIndex;
- (int64_t)_recentlyDeletedSectionIndex;
- (unint64_t)_filterModeForIndexPath:(id)a3;
- (void)_chatUnreadCountDidChange:(id)a3;
- (void)_contentSizeCategoryChanged;
- (void)_conversationListDidFinishSorting:(id)a3;
- (void)_localeDidChange;
- (void)_messageFilteringEnabledDidChange:(id)a3;
- (void)_setCommonTextProperties:(uint64_t)a1;
- (void)_spamFilteringStateChanged;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)focusStateDidChange;
- (void)reloadCollectionViewData;
- (void)setupCollectionView;
- (void)updateBackButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKInboxViewController

- (CKInboxViewController)initWithConversationListController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69DC808]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CKInboxViewController_initWithConversationListController___block_invoke;
  v11[3] = &unk_1E72F87C8;
  v6 = self;
  v12 = v6;
  v7 = [v5 initWithSectionProvider:v11];
  v10.receiver = v6;
  v10.super_class = CKInboxViewController;
  v8 = [(CKInboxViewController *)&v10 initWithCollectionViewLayout:v7];

  if (v8)
  {
    [(CKInboxViewController *)v8 setConversationListController:v4];
    [(CKInboxViewController *)v8 updateBackButton];
    [(CKInboxViewController *)v8 setupCollectionView];
    v8->_shouldProcessBackButtonUpdates = 1;
  }

  return v8;
}

id __60__CKInboxViewController_initWithConversationListController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) wantsCollapsedAppearance])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:v6];
  if ([*(a1 + 32) _primarySectionIndex] == a2 && CKIsRunningInMacCatalyst() || objc_msgSend(*(a1 + 32), "_categoriesSectionIndex") == a2)
  {
    [v7 setHeaderMode:1];
  }

  else if (([*(a1 + 32) shouldHideInboxFooterTextView] & 1) == 0 && objc_msgSend(*(a1 + 32), "_lastSectionIndex") == a2)
  {
    [v7 setFooterMode:1];
  }

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v5];
  if ([*(a1 + 32) _primarySectionIndex] == a2 && !CKIsRunningInMacCatalyst())
  {
    [v8 contentInsets];
    v10 = v9;
    [v8 contentInsets];
    v12 = v11;
    [v8 contentInsets];
    [v8 setContentInsets:{10.0, v10, v12}];
  }

  return v8;
}

- (void)viewDidLoad
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CKInboxViewController;
  [(CKInboxViewController *)&v21 viewDidLoad];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKInboxViewController *)self setTitle:v4];

  v5 = CKIsRunningInMacCatalyst();
  v6 = [(CKInboxViewController *)self navigationController];
  v7 = [v6 navigationBar];
  v8 = v7;
  if (v5)
  {
    [v7 setPrefersLargeTitles:0];

    v9 = [(CKInboxViewController *)self navigationItem];
    [v9 setLargeTitleDisplayMode:2];

    v10 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    v22 = *MEMORY[0x1E69DB650];
    v11 = [MEMORY[0x1E69DC888] clearColor];
    v23[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v10 setTitleTextAttributes:v12];

    [v10 configureWithTransparentBackground];
    v13 = [(CKInboxViewController *)self navigationItem];
    [v13 setStandardAppearance:v10];
  }

  else
  {
    [v7 setPrefersLargeTitles:1];

    v10 = [(CKInboxViewController *)self navigationItem];
    [v10 setLargeTitleDisplayMode:1];
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A5930] object:0];
  [v14 addObserver:self selector:sel__chatUnreadCountDidChange_ name:@"CKConversationListChangedNotification" object:0];
  v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v16 = [v15 isUnreadCountRefactorEnabled];

  if (v16)
  {
    v17 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v17 = *MEMORY[0x1E69A5920];
  }

  [v14 addObserver:self selector:sel__chatUnreadCountDidChange_ name:v17 object:0];
  [v14 addObserver:self selector:sel__conversationListDidFinishSorting_ name:@"CKConversationListDidFinishSorting" object:0];
  [v14 addObserver:self selector:sel__messageFilteringEnabledDidChange_ name:CKMessageFilteringChangedNotification[0] object:0];
  [v14 addObserver:self selector:sel__spamFilteringStateChanged name:CKMessageSpamFilteringChangedNotification object:0];
  [v14 addObserver:self selector:sel__contentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];
  [v14 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = self;
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v19, _SMSSubClassificationParamsUpdated, @"CKSMSFilterExtensionParamsUpdateDistributedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v20 = [MEMORY[0x1E69A8088] sharedManager];
  [v20 addDelegate:v19];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CKInboxViewController;
  [(CKInboxViewController *)&v12 viewWillAppear:a3];
  v4 = [(CKInboxViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setNeedsLayout];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [(CKInboxViewController *)self navigationController];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setupNavBarAppearanceWithNavigationController:v7 withBackgroundColor:v8];

  [(CKInboxViewController *)self reloadCollectionViewData];
  self->_isVisible = 1;
  v9 = [MEMORY[0x1E69A8168] sharedInstance];
  v10 = *MEMORY[0x1E69A73E8];
  v13[0] = @"actionType";
  v13[1] = @"fromView";
  v14[0] = @"ViewedInbox";
  v14[1] = @"InboxView";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v9 trackEvent:v10 withDictionary:v11];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKInboxViewController;
  [(CKInboxViewController *)&v10 viewDidAppear:a3];
  if ([(CKInboxViewController *)self wantsCollapsedAppearance])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "[Filter Mode] Setting filter mode to no junk", v9, 2u);
      }
    }

    v5 = [(CKInboxViewController *)self conversationListController];
    [v5 setFilterMode:1];

    v6 = [(CKInboxViewController *)self _conversationList];
    [v6 releaseWasKnownSenderHold];

    v7 = [(CKInboxViewController *)self _conversationList];
    [v7 updateConversationsWasKnownSender];

    v8 = [(CKInboxViewController *)self _conversationList];
    [v8 clearHoldInUnreadFilter];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKInboxViewController *)self navigationController];
  [v5 setupNavBarAppearanceWithNavigationController:v6];

  v7.receiver = self;
  v7.super_class = CKInboxViewController;
  [(CKInboxViewController *)&v7 viewWillDisappear:v3];
  self->_isVisible = 0;
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CKInboxViewController;
  [(CKInboxViewController *)&v40 viewDidLayoutSubviews];
  if (![(CKInboxViewController *)self shouldHideInboxFooterTextView])
  {
    v3 = [(CKInboxViewController *)self collectionView];
    [v3 contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [(CKInboxViewController *)self collectionView];
    [v10 setContentInset:{v5, v7, 25.0, v9}];

    v11 = [(CKInboxViewController *)self collectionView];
    [v11 bounds];
    v13 = v12;

    v14 = [(CKInboxViewController *)self collectionView];
    [v14 safeAreaInsets];
    v16 = v15;
    v17 = [(CKInboxViewController *)self collectionView];
    [v17 safeAreaInsets];
    v19 = (v16 + v18);

    v20 = [(CKInboxViewController *)self pinnedFooterTextView];
    v21 = [(CKInboxViewController *)self collectionView];
    [v21 bounds];
    [v20 sizeThatFits:{(v13 - v19), v22}];
    v24 = v23;

    v25 = [(CKInboxViewController *)self scrollingFooterTextView];
    [v25 sizeToFit];

    v26 = [(CKInboxViewController *)self collectionView];
    [v26 contentSize];
    v28 = v27;
    v29 = [(CKInboxViewController *)self scrollingFooterTextView];
    [v29 bounds];
    v31 = (v28 - v30);

    v32 = [(CKInboxViewController *)self collectionView];
    [v32 adjustedContentInset];
    v34 = v33 + 25.0;

    v35 = [(CKInboxViewController *)self collectionView];
    [v35 visibleSize];
    v37 = v36 - (2 * v31) - v34;

    v38 = v37;
    v39 = v24 > v38;
    [(UITextView *)self->_scrollingFooterTextView setHidden:v24 <= v38];
    [(UITextView *)self->_pinnedFooterTextView setHidden:v39];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Selected index path: %@", buf, 0xCu);
    }
  }

  v9 = [(CKInboxViewController *)self initiallySelectedCell];
  [v9 setSelected:0];

  [(CKInboxViewController *)self setInitiallySelectedCell:0];
  v10 = [(CKInboxViewController *)self _filterModeForIndexPath:v7];
  v11 = [(CKInboxViewController *)self delegate];
  [v11 inboxViewController:self didSelectFilterMode:v10];

  [(CKInboxViewController *)self updateBackButton];
  v12 = [MEMORY[0x1E69A8210] conversationFilterModeForMessageFilter:v10];
  v13 = [MEMORY[0x1E69A8168] sharedInstance];
  v19[0] = @"ChoseFilter";
  v16 = @"actionType";
  v17 = @"filterType";
  v14 = IMConversationListFilterModeStringValue(v12);
  v19[1] = v14;
  v18 = @"fromView";
  v19[2] = @"InboxView";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v16 count:3];
  [v13 trackEvent:*MEMORY[0x1E69A73E8] withDictionary:{v15, v16, v17}];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  if (![(CKInboxViewController *)self wantsCollapsedAppearance])
  {
    v8 = [(CKInboxViewController *)self collectionViewDataSource];
    v9 = [v8 itemIdentifierForIndexPath:v7];

    v10 = [v9 filterMode];
    v11 = [(CKInboxViewController *)self conversationListController];
    v12 = [v11 filterMode];

    if (v10 == v12)
    {
      [v13 setSelected:1];
      [(CKInboxViewController *)self setInitiallySelectedCell:v13];
    }

    else
    {
      [v13 setSelected:0];
    }
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"prefs:root=MESSAGES&path=JUNK_CONVERSATIONS_BUTTON"];
  v7 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v7 openSensitiveURL:v6 withOptions:0];

  v8 = [MEMORY[0x1E69A8168] sharedInstance];
  v9 = *MEMORY[0x1E69A73E8];
  v12[0] = @"actionType";
  v12[1] = @"fromView";
  v13[0] = @"JumpToJunkInbox";
  v13[1] = @"InboxView";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v8 trackEvent:v9 withDictionary:v10];

  return 0;
}

- (id)_unreadCountStringForIndexPath:(id)a3
{
  v4 = [(CKInboxViewController *)self _filterModeForIndexPath:a3];
  v5 = [(CKInboxViewController *)self _conversationList];
  v6 = [v5 unreadCountForFilterMode:v4];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 __ck_localizedString];
  }

  else
  {
    v9 = &stru_1F04268F8;
  }

  return v9;
}

- (unint64_t)_filterModeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKInboxViewController *)self collectionViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [v6 filterMode];
  return v7;
}

- (UITextView)pinnedFooterTextView
{
  v3 = [(CKInboxViewController *)self shouldHideInboxFooterTextView];
  pinnedFooterTextView = self->_pinnedFooterTextView;
  if (v3)
  {
    [(UITextView *)pinnedFooterTextView removeFromSuperview];
    v5 = 0;
  }

  else
  {
    if (!pinnedFooterTextView)
    {
      v6 = [(CKInboxViewController *)self footerTextView];
      v7 = self->_pinnedFooterTextView;
      self->_pinnedFooterTextView = v6;

      v8 = [(CKInboxViewController *)self view];
      [v8 addSubview:self->_pinnedFooterTextView];

      v9 = [(UITextView *)self->_pinnedFooterTextView bottomAnchor];
      v10 = [(CKInboxViewController *)self view];
      v11 = [v10 safeAreaLayoutGuide];
      v12 = [v11 bottomAnchor];
      v13 = [v9 constraintEqualToAnchor:v12 constant:-25.0];
      [v13 setActive:1];

      v14 = [(UITextView *)self->_pinnedFooterTextView widthAnchor];
      v15 = [(CKInboxViewController *)self view];
      v16 = [v15 safeAreaLayoutGuide];
      v17 = [v16 widthAnchor];
      v18 = [v14 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [(UITextView *)self->_pinnedFooterTextView centerXAnchor];
      v20 = [(CKInboxViewController *)self view];
      v21 = [v20 safeAreaLayoutGuide];
      v22 = [v21 centerXAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];
      [v23 setActive:1];

      pinnedFooterTextView = self->_pinnedFooterTextView;
    }

    v5 = pinnedFooterTextView;
  }

  return v5;
}

- (UITextView)scrollingFooterTextView
{
  v3 = [(CKInboxViewController *)self shouldHideInboxFooterTextView];
  scrollingFooterTextView = self->_scrollingFooterTextView;
  if (v3)
  {
    [(UITextView *)scrollingFooterTextView removeFromSuperview];
    v5 = 0;
  }

  else
  {
    if (!scrollingFooterTextView)
    {
      v6 = [(CKInboxViewController *)self footerTextView];
      v7 = self->_scrollingFooterTextView;
      self->_scrollingFooterTextView = v6;

      scrollingFooterTextView = self->_scrollingFooterTextView;
    }

    v5 = scrollingFooterTextView;
  }

  return v5;
}

- (id)footerTextView
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"FILTER_JUNK_LINK" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = MEMORY[0x1E696AEC0];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"FILTER_FOOTER_TEXT_%@" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 stringWithFormat:v7, v4];

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  if (v10 == 1)
  {
    v11 = @"\u200F";
  }

  else
  {
    v11 = @"\u200E";
  }

  v12 = [(__CFString *)v11 stringByAppendingString:v8];

  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
  v14 = objc_opt_new();
  [v14 setAlignment:1];
  [v13 addAttribute:*MEMORY[0x1E69DB688] value:v14 range:{0, objc_msgSend(v13, "length")}];
  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 addAttribute:*MEMORY[0x1E69DB650] value:v15 range:{0, objc_msgSend(v13, "length")}];
  v16 = [v13 string];
  v17 = [v16 rangeOfString:v4];
  v19 = v18;

  [v13 addAttribute:*MEMORY[0x1E69DB670] value:&stru_1F04268F8 range:{v17, v19}];
  v20 = *MEMORY[0x1E69DB648];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v13 addAttribute:v20 value:v21 range:{0, objc_msgSend(v13, "length")}];

  v22 = objc_alloc(MEMORY[0x1E69DD168]);
  v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v23 _setInteractiveTextSelectionDisabled:1];
  [v23 setScrollEnabled:0];
  [v23 setEditable:0];
  [v23 setSelectable:1];
  [v23 setUserInteractionEnabled:1];
  [v23 setDelegate:self];
  v24 = [v23 textDragInteraction];
  [v24 setEnabled:0];

  [v23 setClipsToBounds:0];
  [v23 setAdjustsFontForContentSizeCategory:1];
  [v23 setAttributedText:v13];
  v25 = [(CKInboxViewController *)self view];
  v26 = [v25 backgroundColor];
  [v23 setBackgroundColor:v26];

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v23;
}

- (NSArray)primaryCellsData
{
  primaryCellsData = self->_primaryCellsData;
  if (!primaryCellsData)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = +[CKInboxCellData allMessagesCellData];
    [v4 addObject:v5];

    if (CKMessageFilteringEnabled())
    {
      v6 = +[CKInboxCellData knownSendersCellData];
      [v4 addObject:v6];

      v7 = +[CKInboxCellData unknownSendersCellData];
      [v4 addObject:v7];
    }

    v8 = [(CKInboxViewController *)self delegate];
    v9 = [v8 inboxViewController:self shouldShowFilterMode:8];

    if (v9)
    {
      v10 = +[CKInboxCellData unreadMessagesCellData];
      [v4 addObject:v10];
    }

    v11 = [v4 copy];
    v12 = self->_primaryCellsData;
    self->_primaryCellsData = v11;

    primaryCellsData = self->_primaryCellsData;
  }

  return primaryCellsData;
}

- (NSArray)categoriesCellsDataArray
{
  v2 = self;
  v26 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_categoriesCellsDataArray count])
  {
    v19 = v2;
    v3 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [CKInboxCellData alloc];
          v10 = [v8 iconName];
          v11 = IMSharedUtilitiesFrameworkBundle();
          v12 = [v8 folderName];
          v13 = [v11 localizedStringForKey:v12 value:&stru_1F04268F8 table:@"IMSharedUtilities"];
          v14 = -[CKInboxCellData initWithImageName:title:filterMode:](v9, "initWithImageName:title:filterMode:", v10, v13, [v8 filterMode]);

          [v3 addObject:v14];
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    v15 = [v3 copy];
    v2 = v19;
    categoriesCellsDataArray = v19->_categoriesCellsDataArray;
    v19->_categoriesCellsDataArray = v15;
  }

  v17 = v2->_categoriesCellsDataArray;

  return v17;
}

- (NSArray)junkCellsDataArray
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(CKInboxViewController *)self _shouldShowJunkCell])
  {
    if (!self->_junkCellsDataArray)
    {
      if (IMIsOscarEnabled())
      {
        v3 = +[CKInboxCellData oscarCellData];
        v11[0] = v3;
        v4 = v11;
      }

      else if (CKIsBlackholeEnabled())
      {
        v3 = +[CKInboxCellData blackholeJunkCellData];
        v10 = v3;
        v4 = &v10;
      }

      else
      {
        v3 = +[CKInboxCellData junkCellData];
        v9 = v3;
        v4 = &v9;
      }

      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{1, v9, v10, v11[0]}];
      junkCellsDataArray = self->_junkCellsDataArray;
      self->_junkCellsDataArray = v6;
    }

    v5 = self->_junkCellsDataArray;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)_shouldShowJunkCell
{
  v3 = IMIsOscarEnabled();
  v4 = [(CKInboxViewController *)self delegate];
  v5 = v4;
  if (v3)
  {
    v6 = 9;
  }

  else
  {
    v6 = 6;
  }

  v7 = [v4 inboxViewController:self shouldShowFilterMode:v6];

  return v7;
}

- (NSArray)recentlyDeletedCellDataArray
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_recentlyDeletedCellDataArray)
  {
    v3 = +[CKInboxCellData recentlyDeletedCellData];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    recentlyDeletedCellDataArray = self->_recentlyDeletedCellDataArray;
    self->_recentlyDeletedCellDataArray = v4;
  }

  v6 = [(CKInboxViewController *)self delegate];
  v7 = [v6 inboxViewController:self shouldShowFilterMode:7];

  if (v7)
  {
    v8 = self->_recentlyDeletedCellDataArray;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)setupCollectionView
{
  v3 = [(CKInboxViewController *)self collectionView];
  [v3 setDelegate:self];

  v4 = [(CKInboxViewController *)self collectionView];
  [v4 setAutoresizingMask:18];

  v5 = [(CKInboxViewController *)self collectionView];
  [v5 setShowsHorizontalScrollIndicator:0];

  v6 = MEMORY[0x1E69DC870];
  v7 = objc_opt_class();
  v8 = *MEMORY[0x1E69DDC08];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __44__CKInboxViewController_setupCollectionView__block_invoke;
  v31[3] = &unk_1E72F87F0;
  v31[4] = self;
  v9 = [v6 registrationWithSupplementaryClass:v7 elementKind:v8 configurationHandler:v31];
  v10 = MEMORY[0x1E69DC800];
  v11 = objc_opt_class();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __44__CKInboxViewController_setupCollectionView__block_invoke_317;
  v30[3] = &unk_1E72F8818;
  v30[4] = self;
  v12 = [v10 registrationWithCellClass:v11 configurationHandler:v30];
  v13 = MEMORY[0x1E69DC870];
  v14 = objc_opt_class();
  v15 = *MEMORY[0x1E69DDC00];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__CKInboxViewController_setupCollectionView__block_invoke_2;
  v29[3] = &unk_1E72F87F0;
  v29[4] = self;
  v16 = [v13 registrationWithSupplementaryClass:v14 elementKind:v15 configurationHandler:v29];
  v17 = objc_alloc(MEMORY[0x1E69DC820]);
  v18 = [(CKInboxViewController *)self collectionView];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__CKInboxViewController_setupCollectionView__block_invoke_3;
  v27[3] = &unk_1E72F8840;
  v28 = v12;
  v19 = v12;
  v20 = [v17 initWithCollectionView:v18 cellProvider:v27];
  [(CKInboxViewController *)self setCollectionViewDataSource:v20];

  v21 = [(CKInboxViewController *)self collectionViewDataSource];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __44__CKInboxViewController_setupCollectionView__block_invoke_4;
  v24[3] = &unk_1E72F8868;
  v25 = v16;
  v26 = v9;
  v22 = v9;
  v23 = v16;
  [v21 setSupplementaryViewProvider:v24];
}

void __44__CKInboxViewController_setupCollectionView__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [*(a1 + 32) _primarySectionIndex] && CKIsRunningInMacCatalyst())
  {
    v9 = [MEMORY[0x1E69DCC28] prominentInsetGroupedHeaderConfiguration];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    [v9 setText:v11];

    [v6 setContentConfiguration:v9];
  }

  else
  {
    v12 = [v7 section];
    if (v12 == [*(a1 + 32) _categoriesSectionIndex])
    {
      v13 = [MEMORY[0x1E69DCC28] groupedHeaderConfiguration];
      v14 = [*(a1 + 32) _getSpamExtensionName];
      if ([v14 length])
      {
        v16 = *(a1 + 32);
        v17 = [v13 textProperties];
        v18 = [v17 font];
        v19 = [v16 _setHeaderAttributedStringForFont:v18];
        [v13 setAttributedText:v19];

        [(CKInboxViewController *)*(a1 + 32) _setCommonTextProperties:v13];
      }

      else
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __44__CKInboxViewController_setupCollectionView__block_invoke_cold_1(v15);
        }
      }

      [v6 setContentConfiguration:v13];
    }
  }
}

void __44__CKInboxViewController_setupCollectionView__block_invoke_317(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v19 defaultContentConfiguration];
  v10 = [v8 image];
  v11 = [MEMORY[0x1E69DCAD8] defaultConfiguration];
  v12 = [v10 imageWithSymbolConfiguration:v11];
  [v9 setImage:v12];

  v13 = [v8 title];

  [v9 setText:v13];
  [v19 setContentConfiguration:v9];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = objc_alloc(MEMORY[0x1E69DC7B8]);
  v16 = [*(a1 + 32) _unreadCountStringForIndexPath:v7];
  v17 = [v15 initWithText:v16];
  [v14 addObject:v17];

  if ([*(a1 + 32) wantsCollapsedAppearance])
  {
    v18 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v14 addObject:v18];
  }

  [v19 setAccessories:v14];
  [v19 setIndentationLevel:{objc_msgSend(*(a1 + 32), "_folderIndentationAtIndexPath:", v7)}];
}

void __44__CKInboxViewController_setupCollectionView__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v6 = [a4 section];
  if (v6 == [*(a1 + 32) _lastSectionIndex])
  {
    v7 = [*(a1 + 32) scrollingFooterTextView];
    v8 = [v7 superview];

    if (v8 != v27)
    {
      v9 = [*(a1 + 32) scrollingFooterTextView];
      [v9 removeFromSuperview];

      v10 = [*(a1 + 32) scrollingFooterTextView];
      [v27 addSubview:v10];

      v11 = [*(a1 + 32) scrollingFooterTextView];
      v12 = [v11 leadingAnchor];
      v13 = [v27 leadingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      [v14 setActive:1];

      v15 = [*(a1 + 32) scrollingFooterTextView];
      v16 = [v15 trailingAnchor];
      v17 = [v27 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [*(a1 + 32) scrollingFooterTextView];
      v20 = [v19 topAnchor];
      v21 = [v27 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:25.0];
      [v22 setActive:1];

      v23 = [*(a1 + 32) scrollingFooterTextView];
      v24 = [v23 bottomAnchor];
      v25 = [v27 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      [v26 setActive:1];
    }
  }
}

id __44__CKInboxViewController_setupCollectionView__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 40;
  if (*MEMORY[0x1E69DDC00] == a3)
  {
    v3 = 32;
  }

  v4 = [a2 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v3) forIndexPath:?];

  return v4;
}

- (void)reloadCollectionViewData
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v17[0] = @"CKInboxViewPrimarySectionID";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = [(CKInboxViewController *)self primaryCellsData];
  [v3 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"CKInboxViewPrimarySectionID"];

  if ([(CKInboxViewController *)self _spamFilteringEnabled])
  {
    v16 = @"CKInboxViewCategoriesSectionID";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v3 appendSectionsWithIdentifiers:v6];

    v7 = [(CKInboxViewController *)self categoriesCellsDataArray];
    [v3 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:@"CKInboxViewCategoriesSectionID"];
  }

  v8 = [(CKInboxViewController *)self junkCellsDataArray];
  if ([v8 count])
  {
    v15 = @"CKInboxViewJunkSectionID";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v3 appendSectionsWithIdentifiers:v9];

    [v3 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:@"CKInboxViewJunkSectionID"];
  }

  v10 = [(CKInboxViewController *)self recentlyDeletedCellDataArray];
  if ([v10 count])
  {
    v14 = @"kCKInboxViewRecentlyDeletedSectionID";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v3 appendSectionsWithIdentifiers:v11];

    [v3 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:@"kCKInboxViewRecentlyDeletedSectionID"];
  }

  v12 = [(CKInboxViewController *)self collectionViewDataSource];
  [v12 applySnapshot:v3 animatingDifferences:self->_isVisible];

  v13 = [(CKInboxViewController *)self collectionView];
  [v13 reloadData];
}

- (void)updateBackButton
{
  if (self->_shouldProcessBackButtonUpdates)
  {
    v3 = [(CKInboxViewController *)self conversationListController];
    v4 = [v3 filterMode];

    if (v4 == 1)
    {
      goto LABEL_13;
    }

    v5 = [(CKInboxViewController *)self _conversationList];
    v6 = [v5 unreadCountForFilterMode:1];

    v7 = [(CKInboxViewController *)self conversationListController];
    if ([v7 filterMode] == 6)
    {
      v8 = 0;
    }

    else
    {
      v10 = [(CKInboxViewController *)self _conversationList];
      v11 = [(CKInboxViewController *)self conversationListController];
      v8 = [v10 unreadCountForFilterMode:{objc_msgSend(v11, "filterMode")}];
    }

    v12 = v6 - v8;
    if (v12 < 1)
    {
LABEL_13:
      v13 = [CKBackBarButtonItem alloc];
      v14 = CKFrameworkBundle();
      v15 = [v14 localizedStringForKey:@"FILTERS_BACK_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
      v17 = [(CKBackBarButtonItem *)v13 initWithTitle:v15];
    }

    else
    {
      v17 = [[CKBackBarButtonItem alloc] initWithUnreadCount:v12];
    }

    v16 = [(CKInboxViewController *)self navigationItem];
    [v16 setBackBarButtonItem:v17];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "ignoring back button updates", buf, 2u);
    }
  }
}

- (int64_t)_primarySectionIndex
{
  v2 = [(CKInboxViewController *)self collectionViewDataSource];
  v3 = [v2 indexForSectionIdentifier:@"CKInboxViewPrimarySectionID"];

  return v3;
}

- (int64_t)_categoriesSectionIndex
{
  v2 = [(CKInboxViewController *)self collectionViewDataSource];
  v3 = [v2 indexForSectionIdentifier:@"CKInboxViewCategoriesSectionID"];

  return v3;
}

- (int64_t)_junkSectionIndex
{
  v2 = [(CKInboxViewController *)self collectionViewDataSource];
  v3 = [v2 indexForSectionIdentifier:@"CKInboxViewJunkSectionID"];

  return v3;
}

- (int64_t)_recentlyDeletedSectionIndex
{
  v2 = [(CKInboxViewController *)self collectionViewDataSource];
  v3 = [v2 indexForSectionIdentifier:@"kCKInboxViewRecentlyDeletedSectionID"];

  return v3;
}

- (int64_t)_lastSectionIndex
{
  v3 = [(CKInboxViewController *)self collectionViewDataSource];
  v4 = [(CKInboxViewController *)self collectionView];
  v5 = [v3 numberOfSectionsInCollectionView:v4] - 1;

  return v5;
}

- (void)_chatUnreadCountDidChange:(id)a3
{
  v3 = [(CKInboxViewController *)self _conversationList];
  [v3 updateConversationListsAndSortIfEnabled];
}

- (void)_conversationListDidFinishSorting:(id)a3
{
  if (self->_isVisible)
  {
    [(CKInboxViewController *)self reloadCollectionViewData];
  }

  else
  {
    [(CKInboxViewController *)self updateBackButton];
  }
}

- (void)_messageFilteringEnabledDidChange:(id)a3
{
  v4 = a3;
  primaryCellsData = self->_primaryCellsData;
  self->_primaryCellsData = 0;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "_messageFilteringEnabledDidChange", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKInboxViewController__messageFilteringEnabledDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__CKInboxViewController__messageFilteringEnabledDidChange___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69A8210] updateSMSFilterExtensionParams];
  v2 = [*(a1 + 32) _updateCategoriesCellsDataArray];
  v3 = [*(a1 + 32) _conversationList];
  [v3 updateConversationListsAndSortIfEnabled];

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

- (void)_spamFilteringStateChanged
{
  primaryCellsData = self->_primaryCellsData;
  self->_primaryCellsData = 0;

  categoriesCellsDataArray = self->_categoriesCellsDataArray;
  self->_categoriesCellsDataArray = 0;

  junkCellsDataArray = self->_junkCellsDataArray;
  self->_junkCellsDataArray = 0;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "_spamFilteringStateChanged", v11, 2u);
    }
  }

  [MEMORY[0x1E69A8210] updateSMSFilterExtensionParams];
  v7 = [(CKInboxViewController *)self _updateCategoriesCellsDataArray];
  v8 = [(CKInboxViewController *)self _conversationList];
  [v8 updateConversationListsAndSortIfEnabled];

  v9 = [(CKInboxViewController *)self view];
  [v9 setNeedsLayout];

  v10 = [(CKInboxViewController *)self view];
  [v10 layoutIfNeeded];
}

- (id)_updateCategoriesCellsDataArray
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v8 = [CKInboxCellData alloc];
        v9 = [v7 iconName];
        v10 = IMSharedUtilitiesFrameworkBundle();
        v11 = [v7 folderName];
        v12 = [v10 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"IMSharedUtilities"];
        v13 = -[CKInboxCellData initWithImageName:title:filterMode:](v8, "initWithImageName:title:filterMode:", v9, v12, [v7 filterMode]);

        [v2 addObject:v13];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v14 = [v2 copy];
  categoriesCellsDataArray = self->_categoriesCellsDataArray;
  self->_categoriesCellsDataArray = v14;

  v16 = self->_categoriesCellsDataArray;
  v17 = v16;

  return v16;
}

- (void)_contentSizeCategoryChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CKInboxViewController__contentSizeCategoryChanged__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__CKInboxViewController__contentSizeCategoryChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

- (void)_localeDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_localeDidChange", v4, 2u);
    }
  }

  [(CKInboxViewController *)self _spamFilteringStateChanged];
}

- (void)focusStateDidChange
{
  v3 = [(CKInboxViewController *)self _conversationList];
  [v3 updateConversationListsAndSortIfEnabled];

  v4 = [(CKInboxViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(CKInboxViewController *)self view];
  [v5 layoutIfNeeded];
}

- (id)_setHeaderAttributedStringForFont:(id)a3
{
  v4 = a3;
  v5 = [(CKInboxViewController *)self _getSpamExtensionName];
  if ([v5 length])
  {
    v6 = [(CKInboxViewController *)self _getHeaderStringForExtension:v5];
    v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
    v8 = [v7 string];
    v9 = [v5 localizedUppercaseString];
    v10 = [v8 rangeOfString:v9];
    v12 = v11;

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = *MEMORY[0x1E69DB648];
      v14 = [MEMORY[0x1E69DB878] __ck_emphasizedFontFromFont:v4];
      [v7 addAttribute:v13 value:v14 range:{v10, v12}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getHeaderStringForExtension:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"FILTERED_BY_APP_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [v3 stringWithFormat:v6, v4];

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

  v12 = [v11 localizedUppercaseString];

  return v12;
}

- (BOOL)wantsCollapsedAppearance
{
  v3 = [(CKInboxViewController *)self _wantsThreeColumnLayout];
  v4 = [(CKInboxViewController *)self splitViewController];
  v5 = [v4 isCollapsed];
  v6 = !v3 | v5;
  if (!v3 && (v5 & 1) == 0)
  {
    v7 = [(CKInboxViewController *)self splitViewController];
    v6 = [v7 displayMode] == 2;
  }

  return v6 & 1;
}

- (BOOL)_wantsThreeColumnLayout
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 wantsUniversalThreeColumn];

  return v3;
}

- (CKInboxViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setCommonTextProperties:(uint64_t)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

    v5 = [v10 textProperties];
    v6 = v5;
    if (IsAccessibilityCategory)
    {
      [v5 setNumberOfLines:0];
    }

    else
    {
      [v5 setNumberOfLines:1];

      v7 = [v10 textProperties];
      [v7 setLineBreakMode:4];

      v8 = [v10 textProperties];
      [v8 setAdjustsFontSizeToFitWidth:1];

      v9 = [v10 textProperties];
      [v9 setMinimumScaleFactor:0.949999988];

      v6 = [v10 textProperties];
      [v6 setAllowsDefaultTighteningForTruncation:1];
    }
  }
}

@end