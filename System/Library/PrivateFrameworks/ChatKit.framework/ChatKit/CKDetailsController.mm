@interface CKDetailsController
+ (void)saveGroupPhotoDataAndUpdateParticipants:(id)participants forConversation:(id)conversation;
+ (void)updateParticipantsWithGroupPhotoAtPath:(id)path forConversation:(id)conversation;
- (BOOL)_atLeastOneEmailPresentInHandles:(id)handles;
- (BOOL)_canRemoveRecipientAtIndexPath:(id)path;
- (BOOL)_fmfExpirationDateIsValid;
- (BOOL)_moreThanMinNumberOfParticipantsInGroup;
- (BOOL)allRecipientsAlreadyFollowingLocation;
- (BOOL)canLeaveConversation;
- (BOOL)conversationHasLeft;
- (BOOL)fmfEnabled;
- (BOOL)fmfRestricted;
- (BOOL)hasTUConversation;
- (BOOL)isContactViewController:(id)controller;
- (BOOL)isContactsSectionCollapsible;
- (BOOL)isGroupChat;
- (BOOL)shouldAddToVisibleContactRowCountForTUConversation;
- (BOOL)shouldDisplayFooterForSection:(unint64_t)section;
- (BOOL)shouldDisplayHeaderForSection:(unint64_t)section;
- (BOOL)shouldEnableAddContactButton;
- (BOOL)shouldShowActiveDeviceSwitchFooter;
- (BOOL)shouldShowAddMemberCell;
- (BOOL)shouldShowBusinessInfoFooter;
- (BOOL)shouldShowEnhancedGroupFeatures;
- (BOOL)shouldShowExpanseFeatures;
- (BOOL)shouldShowFMFView;
- (BOOL)shouldShowFooterInLocationSection:(int64_t)section;
- (BOOL)shouldShowGroupCount;
- (BOOL)shouldShowGroupPhotoActionTitle;
- (BOOL)shouldShowKTSection;
- (BOOL)shouldShowLocationStringForOneToOneConversation;
- (BOOL)shouldShowSIMTypeSection;
- (BOOL)shouldShowSharedWithYouFeatures;
- (BOOL)shouldShowTranslationSection;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (CGSize)computedPreferredContentSize;
- (CGSize)screenSize;
- (CKBusinessInfoView)businessInfoView;
- (CKDetailsAddGroupNameView)groupNameView;
- (CKDetailsCell)changeGroupNamePhotoCell;
- (CKDetailsController)initWithConversation:(id)conversation;
- (CKDetailsControllerDelegate)detailsControllerDelegate;
- (CKDetailsLocationShareCell)locationShareCell;
- (CKDetailsSIMCell)simCell;
- (CKDetailsSIMCell)simSwitchCell;
- (CKEnableEnhancedProtectionCell)ktEnableEnhancedProtectionCell;
- (CKKTEnhancedProtectionStatusCell)ktEnhancedProtectionStateCell;
- (CKKTVerifyConversationTableViewCell)ktVerifyConversationCell;
- (CKTranscriptDetailsResizableCell)locationSendOrRequestCell;
- (CKTranscriptDetailsResizableCell)locationStartShareCell;
- (CKTranscriptDetailsResizableCell)openInContactsCell;
- (CKTranscriptDetailsResizableCell)sendCurrentLocationCell;
- (CNContactStore)suggestionsEnabledContactStore;
- (UITextView)expanseActivityTextView;
- (UITextView)ktSecurityFooterTextView;
- (UITextView)locationSharingTextView;
- (UITextView)sharedWithYouFooterTextView;
- (double)_heightForAuxContactCellAtIndexPath:(id)path;
- (double)_heightForContactCellAtIndexPath:(id)path;
- (double)_heightForExpanseActivityCell;
- (double)calculateHeightForExpanseActivityHeader;
- (double)calculateHeightForGroupPhotoHeader;
- (double)calculateHeightForKTFooter;
- (double)calculateHeightForLocationSharingFooter;
- (double)calculateHeightForShareAutomaticallyFooter;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_conversationOfferTimeExpiration;
- (id)_generateGroupImagePickerViewController;
- (id)_groupPhotoHeaderRequiredContactKeys;
- (id)_menuConfigForContactsCell:(id)cell;
- (id)_navigationBarTitle;
- (id)_tableViewCellForSendCurrentLocation;
- (id)_tableViewCellForSendOrRequestLocation;
- (id)_tableViewCellForSharingLocation:(BOOL)location;
- (id)annotationContactForHandle:(id)handle;
- (id)annotationImageForHandle:(id)handle;
- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)businessInfoFooterViewForSection:(int64_t)section;
- (id)chatOptionsCellForIndexPath:(id)path;
- (id)childViewController:(id)controller cellForIndexPath:(id)path;
- (id)contactsManagerCellForIndexPath:(id)path;
- (id)createAudioCallActionItemForChat:(id)chat;
- (id)createDNDCellAtIndexPath:(id)path;
- (id)createReadReceiptsCellAtIndexPath:(id)path;
- (id)createShareFocusStatusCellAtIndexPath:(id)path;
- (id)createTranslationLanguageCellForLanguageCode:(id)code atIndexPath:(id)path;
- (id)createTranslationSwitchCellAtIndexPath:(id)path;
- (id)createVideoCallActionItemForChat:(id)chat;
- (id)currentLocationDeniedAlert;
- (id)currentlyActiveFMFDevice;
- (id)defaultNavBarAppearance;
- (id)deleteAndBlockCellForIndexPath:(id)path;
- (id)downloadAttachmentsFooterViewForSection:(int64_t)section;
- (id)downloadAttachmentsText;
- (id)downloadButtonText;
- (id)editConversationCellForIndexPath:(id)path;
- (id)emailAddressesForChat:(id)chat;
- (id)expanseActivityCellForIndexPath:(id)path;
- (id)expanseActivityHeaderViewForSection:(int64_t)section;
- (id)fmfHandlesFromIMHandles:(id)handles;
- (id)fmfViewControllerCellForIndexPath:(id)path shouldShowLocation:(BOOL)location;
- (id)groupCountCellForIndexPath:(id)path;
- (id)groupHeaderCellForIndexPath:(id)path;
- (id)groupNameCellForIndexPath:(id)path;
- (id)groupPhotoCellForIndexPath:(id)path;
- (id)indexPathForCell:(id)cell;
- (id)keyCommands;
- (id)ktCellForRow:(int64_t)row;
- (id)ktSecurityFooterView;
- (id)labelForChat;
- (id)leaveCellForIndexPath:(id)path;
- (id)locationFooterViewForSection:(int64_t)section;
- (id)locationShareCellForIndexPathRow:(int64_t)row;
- (id)locationShareMenu;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (id)screenShareContextMenuForEntity:(id)entity;
- (id)screenSharingActionView;
- (id)searchAttachmentViewControllerCellForIndexPath:(id)path;
- (id)selectedSenderIdentity;
- (id)setupAlternativeCommunicationActionsForChat:(id)chat;
- (id)sharedWithYouCellForIndexPath:(id)path;
- (id)sharedWithYouFooterView;
- (id)simCellText:(id)text;
- (id)simSwitcherMenu;
- (id)simTypeCellForIndexPath:(id)path;
- (id)switchSubscriptionCellForIndexPathRow:(int64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)titleForBackButton;
- (id)translationCellForIndexPath:(id)path;
- (id)transparentNavBarAppearance;
- (id)tuConversation;
- (id)tuConversationCellForIndexPath:(id)path;
- (int64_t)_targetToggleIndexForOptionRow:(unint64_t)row;
- (int64_t)adjustedViewModelIndexForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)rowForAddMemberCell;
- (int64_t)rowForFirstContactCell;
- (int64_t)rowForLastContact;
- (int64_t)rowForShowMoreContactsCell;
- (int64_t)rowForTUConversationCell;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)visibleContactsRows;
- (unint64_t)_optionRowForIndexPath:(id)path;
- (unint64_t)_purgedAttachmentCount;
- (unint64_t)_translationRowForIndexPath:(id)path;
- (unint64_t)countOfContactViewModels;
- (void)_batchDownloadNotificationFired:(id)fired;
- (void)_chatAllowedByScreenTimeChanged:(id)changed;
- (void)_chatAutoDonatingHandleUpdateNotification:(id)notification;
- (void)_chatParticipantsChangedNotification:(id)notification;
- (void)_configureGroupPhotoHeader;
- (void)_configureSeparatorForContactCell:(id)cell indexPath:(id)path;
- (void)_configureSeparatorForOptionCell:(id)cell indexPath:(id)path;
- (void)_conversationListFinishedMerging:(id)merging;
- (void)_determineFocusStatusSharingState;
- (void)_dismissIdentityPicker:(id)picker;
- (void)_evaluateMetricsForStagingLocation;
- (void)_handleAddingHandles:(id)handles allRecipientsAddresses:(id)addresses sender:(id)sender;
- (void)_handleAddressBookChanged:(id)changed;
- (void)_handleGroupDisplayNameChanged:(id)changed;
- (void)_handleGroupPhotoChanged:(id)changed;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_handleKeyboardWillHideNotification:(id)notification;
- (void)_handleKeyboardWillShowNotification:(id)notification;
- (void)_handleLocationChanged:(id)changed;
- (void)_handleMultiWayStateChange:(id)change;
- (void)_hideAllContactCellButtons;
- (void)_lastAddressedHandleUpdateNotification:(id)notification;
- (void)_notifyDelegateDidSelectStopSharingLocation;
- (void)_presentGroupNameAndPhotoEditor;
- (void)_presentRemoveRecipientSheetForHandle:(id)handle fromView:(id)view;
- (void)_reloadForReadReceiptVisibilityChangeIfNeeded:(id)needed;
- (void)_showBrandCard;
- (void)_stageCurrentLocationInEntryViewForURL:(id)l;
- (void)_stageLocationShareComposition:(int64_t)composition;
- (void)_toggleSharingStateFromABCard;
- (void)_updateDownloadButtonStateIfNeeded;
- (void)_updateDownloadFooterView;
- (void)adjustContentOffsetReloadingSharedAssetsContentViewCell;
- (void)businessInfoView:(id)view infoButtonTapped:(id)tapped;
- (void)collapseContactsSection;
- (void)contactsCell:(id)cell didHoverWithState:(int64_t)state;
- (void)contactsCellDidTapFaceTimeVideoButton:(id)button;
- (void)contactsCellDidTapMessagesButton:(id)button;
- (void)contactsCellDidTapPhoneButton:(id)button;
- (void)contactsManagerViewModelsDidChange:(id)change;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)detailsAddGroupNameView:(id)view didCommitGroupName:(id)name;
- (void)detailsController:(id)controller didSelectSendLocationMessage:(id)message completion:(id)completion;
- (void)detailsSearchController:(id)controller requestsPushOfSearchController:(id)searchController;
- (void)detailsSearchControllerContentDidChange:(id)change;
- (void)expandContactsSection;
- (void)fmfMapViewController:(id)controller didDeselectHandle:(id)handle;
- (void)fmfMapViewController:(id)controller didSelectHandle:(id)handle;
- (void)getKTStatus;
- (void)groupCellDidTapFaceTimeVideoButton:(id)button;
- (void)groupCellDidTapPhoneButton:(id)button;
- (void)groupIdentityHeaderViewController:(id)controller didDismissSharedProfileBannerWithUpdatedContact:(id)contact forAction:(unint64_t)action;
- (void)handleActiveDeviceChanged:(id)changed;
- (void)handleCancelAction:(id)action;
- (void)handleDoneAction:(id)action;
- (void)handleDoneButton:(id)button;
- (void)handleFriendshipStatusChanged:(id)changed;
- (void)handleTapOnChromeAvatar:(id)avatar;
- (void)initializeBusinessInfoViewIfNecessary;
- (void)initializeLocationSharingTextViewIfNecessary;
- (void)initializeSearchController;
- (void)keyTransparencyConversationViewControllerDidComplete:(id)complete;
- (void)keyTransparencyDetailsStatusCellDidSelectIgnoreFailures:(id)failures;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)openInContacts;
- (void)presentDeleteAndBlockActionSheetFromView:(id)view;
- (void)presentFullFMFMapViewController;
- (void)presentGroupRecipientSelectionControllerAtIndexPath:(id)path;
- (void)presentLanguagePickViewControllerWithCompletion:(id)completion;
- (void)presentLeaveActionSheetFromView:(id)view;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)reloadTableView;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)sendCurrentLocation;
- (void)setDownloadButtonState:(unint64_t)state;
- (void)setHideAlerts:(BOOL)alerts reload:(BOOL)reload;
- (void)setSendReadReceipts:(BOOL)receipts reload:(BOOL)reload;
- (void)setShareFocusStatus:(BOOL)status reload:(BOOL)reload;
- (void)setShouldAutomaticallyTranslate:(BOOL)translate;
- (void)setShowInSharedWithYou:(BOOL)you reload:(BOOL)reload;
- (void)setupContactsManager;
- (void)setupFMF;
- (void)setupFMFTimerIfNecessary;
- (void)setupKT;
- (void)shareLocationAction;
- (void)showContactCardForEntity:(id)entity fromView:(id)view;
- (void)showKTContactVerificationUI;
- (void)showLanguagePicker;
- (void)spacePressed:(id)pressed;
- (void)stageCurrentLocation;
- (void)stageLocationRequest;
- (void)switchToSenderIdentity:(id)identity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)toggleAutomaticallyTranslate;
- (void)toggleHideAlertsWithReload:(BOOL)reload;
- (void)toggleSendReadReceiptsWithReload:(BOOL)reload;
- (void)toggleShareFocusStatusWithReload:(BOOL)reload;
- (void)toggleShowInSharedWithYouWithReload:(BOOL)reload;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContactsHeaderVerificationState;
- (void)updateLocationForRecipient:(id)recipient;
- (void)updateLocationStringCellWithString:(id)string;
- (void)updateManualScrollEdgeProgress;
- (void)userDidTapDownloadForAttachmentsFooterView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image;
@end

@implementation CKDetailsController

- (BOOL)fmfEnabled
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isSMS = [chat isSMS];

  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  LOBYTE(chat) = [mEMORY[0x1E69A5B70] disableLocationSharing] | isSMS;

  return (chat & 1) == 0;
}

- (BOOL)fmfRestricted
{
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  restrictLocationSharing = [mEMORY[0x1E69A5B70] restrictLocationSharing];

  return restrictLocationSharing;
}

- (BOOL)shouldShowFooterInLocationSection:(int64_t)section
{
  shouldShowFMFView = [(CKDetailsController *)self shouldShowFMFView];
  allRecipientsAlreadyFollowingLocation = [(CKDetailsController *)self allRecipientsAlreadyFollowingLocation];
  conversation = [(CKDetailsController *)self conversation];
  v8 = [_TtC7ChatKit33CKDetailsControllerLocationHelper numberOfCellsInLocationSectionWithConversation:conversation isFMFEnabled:[(CKDetailsController *)self fmfEnabled] isSharingLocation:allRecipientsAlreadyFollowingLocation shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

  if ((section != 3 || !shouldShowFMFView) && (section != 7 || shouldShowFMFView || v8 < 1))
  {
    return 0;
  }

  return [(CKDetailsController *)self shouldShowActiveDeviceSwitchFooter];
}

- (void)stageCurrentLocation
{
  mEMORY[0x1E69A5BC0] = [MEMORY[0x1E69A5BC0] sharedInstance];
  currentLocation = [mEMORY[0x1E69A5BC0] currentLocation];
  if (currentLocation && [mEMORY[0x1E69A5BC0] locationAuthorizationDetermined] && (objc_msgSend(mEMORY[0x1E69A5BC0], "locationAuthorizationDenied") & 1) == 0)
  {
    conversation = [(CKDetailsController *)self conversation];
    v6 = [_TtC7ChatKit33CKDetailsControllerLocationHelper mapURLFor:currentLocation in:conversation];

    [(CKDetailsController *)self _stageCurrentLocationInEntryViewForURL:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__CKDetailsController_Location__stageCurrentLocation__block_invoke_2;
    v7[3] = &unk_1E72EC8F0;
    v8 = currentLocation;
    objc_copyWeak(&v9, &location);
    [mEMORY[0x1E69A5BC0] startUpdatingCurrentLocationWithAuthorizedHandler:&__block_literal_global_11 updateHandler:v7];
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }
}

void __53__CKDetailsController_Location__stageCurrentLocation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] != 42)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Received unknown error while trying to send current location: %@. Aborting _stageCurrentLocation.", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained conversation];
    v11 = [_TtC7ChatKit33CKDetailsControllerLocationHelper mapURLFor:v8 in:v10];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 _stageCurrentLocationInEntryViewForURL:v11];
  }
}

- (void)_stageCurrentLocationInEntryViewForURL:(id)l
{
  lCopy = l;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  if ([chat authorizationToSendCurrentLocationMessageDenied])
  {
    currentLocationDeniedAlert = [(CKDetailsController *)self currentLocationDeniedAlert];
    [currentLocationDeniedAlert presentFromViewController:self animated:1 completion:0];
  }

  else if ([chat canSendCurrentLocationMessage])
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ECE0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke;
    block[3] = &unk_1E72EB880;
    v11 = v8;
    v12 = lCopy;
    selfCopy = self;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke_2;
  v3[3] = &unk_1E72EC940;
  v2 = *(a1 + 40);
  v4 = vextq_s8(v2, v2, 8uLL);
  [v1 startFetchingMetadataForURL:v2.i64[0] completionHandler:v3];
}

void __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 conversation];
  v6 = [v5 chat];
  v7 = [v6 account];
  v8 = [v7 loginIMHandle];

  v9 = [v8 name];
  [v4 setTitle:v9];

  [v4 setURL:*(a1 + 40)];
  v10 = [CKBrowserItemPayload createBrowserItemPayloadWithRichLinkMetadata:v4];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke_3;
  v11[3] = &unk_1E72EC918;
  v11[4] = *(a1 + 32);
  [CKComposition compositionWithShelfPluginPayload:v10 completionHandler:v11];
}

void __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) detailsControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) detailsControllerDelegate];
    [v5 detailsController:*(a1 + 32) wantsToStageComposition:v6];
  }
}

- (id)currentLocationDeniedAlert
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_TO_SEND_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v4 = [CKAlertController alertControllerWithTitle:v3 message:0 preferredStyle:1];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [CKAlertAction actionWithTitle:v6 style:1 handler:0];
  [v4 addAction:v7];

  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [CKAlertAction actionWithTitle:v9 style:0 handler:&__block_literal_global_228];

  [v4 addAction:v10];

  return v4;
}

void __59__CKDetailsController_Location__currentLocationDeniedAlert__block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)shareLocationAction
{
  if ([(CKDetailsController *)self allRecipientsAlreadyFollowingLocation])
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    [chat stopSharingLocation];

    [(CKDetailsController *)self reloadTableView];

    [(CKDetailsController *)self _notifyDelegateDidSelectStopSharingLocation];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "We reached [CKDetailsController tableView:didSelectRowAtIndexPath:] for CKDetailsLocationShareSection, CKLocationShareFMFRow while currently sharing the user's location, but this should have been handled by the cell's embedded UIButton.", v6, 2u);
    }
  }
}

- (BOOL)allRecipientsAlreadyFollowingLocation
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  allRecipientsFollowingLocation = [chat allRecipientsFollowingLocation];

  return allRecipientsFollowingLocation;
}

- (void)detailsController:(id)controller didSelectSendLocationMessage:(id)message completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  messageCopy = message;
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (isWaldoEnabled)
  {
    findMyWaldoMapViewController = [(CKDetailsController *)self findMyWaldoMapViewController];

    if (findMyWaldoMapViewController == controllerCopy)
    {
      v18 = [CKComposition compositionWithMSMessage:messageCopy appExtensionIdentifier:*MEMORY[0x1E69A6938]];
      detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
        [detailsControllerDelegate2 detailsController:self wantsToStageComposition:v18];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKDetails detailsController:didSelectSendLocationMessage: details controller is not our current map controller. Aborting.", v22, 2u);
        }
      }

      v15 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A278];
      v24[0] = @"FMFMapViewController is not referenced by CKDetailsController. Aborting message send.";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.ChatKit.CKDetailsController" code:0 userInfo:v16];

      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)_notifyDelegateDidSelectStopSharingLocation
{
  detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
    [detailsControllerDelegate2 detailsControllerDidSelectStopSharingLocation:self];
  }
}

- (void)setupFMF
{
  if ([(CKDetailsController *)self fmfEnabled])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleActiveDeviceChanged_ name:*MEMORY[0x1E69A5978] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleFriendshipStatusChanged_ name:*MEMORY[0x1E69A5990] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__handleLocationChanged_ name:*MEMORY[0x1E69A5988] object:0];

    [(CKDetailsController *)self setupFMFTimerIfNecessary];
  }
}

- (void)setupFMFTimerIfNecessary
{
  if ([(CKDetailsController *)self fmfEnabled])
  {
    _fmfExpirationDateIsValid = [(CKDetailsController *)self _fmfExpirationDateIsValid];
    fmfUpdateTimer = [(CKDetailsController *)self fmfUpdateTimer];
    if ([(CKDetailsController *)self allRecipientsAlreadyFollowingLocation]|| _fmfExpirationDateIsValid)
    {
      v4 = fmfUpdateTimer;
      if (!fmfUpdateTimer)
      {
        v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updateTimedFMFState selector:0 userInfo:1 repeats:60.0];
        [(CKDetailsController *)self setFmfUpdateTimer:v6];
        v4 = v6;
      }
    }

    else
    {
      [fmfUpdateTimer invalidate];

      v4 = 0;
    }
  }
}

- (void)sendCurrentLocation
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  if ([chat authorizationToSendCurrentLocationMessageDenied])
  {
    currentLocationDeniedAlert = [(CKDetailsController *)self currentLocationDeniedAlert];
    [currentLocationDeniedAlert presentFromViewController:self animated:1 completion:0];
  }

  else if ([chat canSendCurrentLocationMessage])
  {
    [chat sendCurrentLocationMessage];
    [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)locationShareMenu
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v5 = [chat supportsCapabilities:4096];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKDetailsController_Location__locationShareMenu__block_invoke;
    aBlock[3] = &unk_1E72EC988;
    objc_copyWeak(&v38, location);
    v7 = _Block_copy(aBlock);
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__CKDetailsController_Location__locationShareMenu__block_invoke_2;
    v34[3] = &unk_1E72EC9B0;
    objc_copyWeak(&v36, location);
    v12 = v7;
    v35 = v12;
    v13 = [v8 actionWithTitle:v10 image:v11 identifier:0 handler:v34];

    [v6 addObject:v13];
    v14 = MEMORY[0x1E69DC628];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __50__CKDetailsController_Location__locationShareMenu__block_invoke_3;
    v31[3] = &unk_1E72EC9B0;
    objc_copyWeak(&v33, location);
    v18 = v12;
    v32 = v18;
    v19 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v31];

    [v6 addObject:v19];
    v20 = MEMORY[0x1E69DC628];
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"SHARE_INDEFINITELY" value:&stru_1F04268F8 table:@"ChatKit"];
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"infinity"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __50__CKDetailsController_Location__locationShareMenu__block_invoke_4;
    v28[3] = &unk_1E72EC9B0;
    objc_copyWeak(&v30, location);
    v24 = v18;
    v29 = v24;
    v25 = [v20 actionWithTitle:v22 image:v23 identifier:0 handler:v28];

    [v6 addObject:v25];
    v26 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v6];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __50__CKDetailsController_Location__locationShareMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained conversation];
  v6 = [v5 chat];
  [v6 shareLocationWithDuration:a2];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 reloadTableView];
}

void __50__CKDetailsController_Location__locationShareMenu__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isWaldoEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stageLocationShareComposition:0];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __50__CKDetailsController_Location__locationShareMenu__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isWaldoEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stageLocationShareComposition:1];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __50__CKDetailsController_Location__locationShareMenu__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isWaldoEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stageLocationShareComposition:2];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)_stageLocationShareComposition:(int64_t)composition
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (isWaldoEnabled)
  {
    MSMessageClass = getMSMessageClass();
    if (objc_opt_respondsToSelector())
    {
      v12 = [MSMessageClass findMyLocationShareMessageWithDuration:composition];
      v8 = [CKComposition compositionWithMSMessage:"compositionWithMSMessage:appExtensionIdentifier:" appExtensionIdentifier:?];
      detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        [(CKDetailsController *)self _evaluateMetricsForStagingLocation];
        detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
        [detailsControllerDelegate2 detailsController:self wantsToStageComposition:v8];
      }
    }
  }
}

- (void)stageLocationRequest
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (isWaldoEnabled)
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    v7 = [chat supportsCapabilities:4096];

    if (v7)
    {
      MSMessageClass = getMSMessageClass();
      if (objc_opt_respondsToSelector())
      {
        findMyLocationRequestMessage = [MSMessageClass findMyLocationRequestMessage];
        v9 = [CKComposition compositionWithMSMessage:"compositionWithMSMessage:appExtensionIdentifier:" appExtensionIdentifier:?];
        detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          [(CKDetailsController *)self _evaluateMetricsForStagingLocation];
          detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
          [detailsControllerDelegate2 detailsController:self wantsToStageComposition:v9];
        }
      }
    }
  }
}

- (void)handleFriendshipStatusChanged:(id)changed
{
  [(CKDetailsController *)self setupFMFTimerIfNecessary];

  [(CKDetailsController *)self reloadTableView];
}

- (void)_handleLocationChanged:(id)changed
{
  object = [changed object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fmfHandle = [object fmfHandle];
    if (fmfHandle)
    {
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      allSiblingFMFHandles = [chat allSiblingFMFHandles];
      v8 = [allSiblingFMFHandles containsObject:fmfHandle];

      if (v8)
      {
        conversation2 = [(CKDetailsController *)self conversation];
        recipients = [conversation2 recipients];
        firstObject = [recipients firstObject];

        [(CKDetailsController *)self updateLocationForRecipient:firstObject];
      }
    }
  }

  else
  {
    fmfHandle = 0;
  }
}

- (void)updateLocationForRecipient:(id)recipient
{
  v4 = MEMORY[0x1E69A5B70];
  recipientCopy = recipient;
  sharedInstance = [v4 sharedInstance];
  defaultIMHandle = [recipientCopy defaultIMHandle];

  v14 = [sharedInstance findMyLocationForHandleOrSibling:defaultIMHandle];

  fmfLocation = [v14 fmfLocation];
  v9 = fmfLocation;
  if (fmfLocation)
  {
    locationShortAddressWithAgeIncludeLocating = [fmfLocation locationShortAddressWithAgeIncludeLocating];
    v11 = locationShortAddressWithAgeIncludeLocating;
    if (locationShortAddressWithAgeIncludeLocating)
    {
      shortAddress = locationShortAddressWithAgeIncludeLocating;
    }

    else
    {
      shortAddress = [v14 shortAddress];
    }

    v13 = shortAddress;

    [(CKDetailsController *)self updateLocationStringCellWithString:v13];
  }
}

- (id)currentlyActiveFMFDevice
{
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  activeDevice = [mEMORY[0x1E69A5B70] activeDevice];

  return activeDevice;
}

- (BOOL)_fmfExpirationDateIsValid
{
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v6 = [mEMORY[0x1E69A5B70] timedOfferExpirationForChat:chat];

  if (v6)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    if ([v6 isEqualToDate:distantFuture])
    {
      v8 = 0;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      [v6 timeIntervalSinceDate:date];
      v8 = v10 > 0.0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_evaluateMetricsForStagingLocation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:&unk_1F04E7668 forKey:*MEMORY[0x1E69A77A0]];
  [v3 setValue:*MEMORY[0x1E69A6938] forKey:*MEMORY[0x1E69A77A8]];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7570] withDictionary:v3];
}

- (BOOL)shouldShowFMFView
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  if ([chat hasSiblingRecipientsSharingLocation])
  {
    fmfEnabled = [(CKDetailsController *)self fmfEnabled];
  }

  else
  {
    fmfEnabled = 0;
  }

  return fmfEnabled;
}

- (BOOL)shouldShowActiveDeviceSwitchFooter
{
  selfCopy = self;
  conversation = [(CKDetailsController *)self conversation];
  isBusinessConversation = [conversation isBusinessConversation];

  if (isBusinessConversation)
  {
    LOBYTE(selfCopy) = 0;
  }

  else
  {
    currentlyActiveFMFDevice = [(CKDetailsController *)selfCopy currentlyActiveFMFDevice];
    fmfEnabled = [(CKDetailsController *)selfCopy fmfEnabled];
    LOBYTE(selfCopy) = 0;
    if (fmfEnabled && currentlyActiveFMFDevice)
    {
      LODWORD(selfCopy) = [currentlyActiveFMFDevice isThisDevice] ^ 1;
    }
  }

  return selfCopy;
}

- (BOOL)shouldShowLocationStringForOneToOneConversation
{
  if ([(CKDetailsController *)self shouldShowFMFView]&& ![(CKDetailsController *)self isGroupChat])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v3 = [mEMORY[0x1E69A8070] isWaldoEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unint64_t)countOfContactViewModels
{
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v4 = [contactsViewModels count];

  return v4;
}

- (int64_t)rowForShowMoreContactsCell
{
  if (CKIsRunningInMacCatalyst() || ![(CKDetailsController *)self isGroupChat])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(CKDetailsController *)self hasTUConversation];
  }
}

- (int64_t)rowForAddMemberCell
{
  hasTUConversation = [(CKDetailsController *)self hasTUConversation];
  if (![(CKDetailsController *)self isContactsSectionCollapsible])
  {
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v4 = [contactsViewModels count] + hasTUConversation;
LABEL_8:

    return v4;
  }

  if (![(CKDetailsController *)self isContactsSectionCollapsed])
  {
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v7 = [contactsViewModels count];
    v8 = 1;
    if (hasTUConversation)
    {
      v8 = 2;
    }

    v4 = v8 + v7;
    goto LABEL_8;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)rowForFirstContactCell
{
  if (![(CKDetailsController *)self isContactsSectionCollapsible])
  {
    return 0;
  }

  if ([(CKDetailsController *)self isContactsSectionCollapsed])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(CKDetailsController *)self hasTUConversation])
  {
    return 2;
  }

  return 1;
}

- (int64_t)rowForLastContact
{
  visibleContactsRows = [(CKDetailsController *)self visibleContactsRows];
  v4 = CKIsRunningInMacCatalyst();
  hasTUConversation = [(CKDetailsController *)self hasTUConversation];
  v6 = hasTUConversation;
  v7 = 1;
  if (hasTUConversation)
  {
    v7 = 2;
  }

  if (!v4)
  {
    v6 = v7;
  }

  return v6 + visibleContactsRows;
}

- (BOOL)shouldShowAddMemberCell
{
  if ([(CKDetailsController *)self conversationHasLeft])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    conversation = [(CKDetailsController *)self conversation];
    if ([conversation isGroupConversation] && !-[CKDetailsController isContactsSectionCollapsed](self, "isContactsSectionCollapsed"))
    {
      conversation2 = [(CKDetailsController *)self conversation];
      chat = [conversation2 chat];
      if ([chat isBusinessChat])
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        conversation3 = [(CKDetailsController *)self conversation];
        chat2 = [conversation3 chat];
        v3 = [chat2 _suppressesMutationsFromLocalDevice] ^ 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (int64_t)visibleContactsRows
{
  if ([(CKDetailsController *)self isContactsSectionCollapsed])
  {
    return 0;
  }

  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v6 = [contactsViewModels count];

  return v6;
}

- (BOOL)isContactsSectionCollapsible
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  if ([chat isBusinessChat])
  {
    v5 = 0;
  }

  else
  {
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v5 = [contactsViewModels count] != 0;
  }

  return v5;
}

- (id)tuConversation
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  conversation2 = [chat conversation];

  return conversation2;
}

- (BOOL)hasTUConversation
{
  tuConversation = [(CKDetailsController *)self tuConversation];

  if (!tuConversation)
  {
    return 0;
  }

  tuConversation2 = [(CKDetailsController *)self tuConversation];
  v5 = tuConversation2 != 0;

  return v5;
}

- (BOOL)shouldAddToVisibleContactRowCountForTUConversation
{
  isContactsSectionCollapsible = [(CKDetailsController *)self isContactsSectionCollapsible];
  hasTUConversation = [(CKDetailsController *)self hasTUConversation];
  if (isContactsSectionCollapsible)
  {
    LOBYTE(hasTUConversation) = hasTUConversation && ([(CKDetailsController *)self isContactsSectionCollapsed]|| ![(CKDetailsController *)self isContactsSectionCollapsed]&& [(CKDetailsController *)self visibleContactsRows]> 0);
  }

  return hasTUConversation;
}

- (int64_t)rowForTUConversationCell
{
  if ([(CKDetailsController *)self hasTUConversation])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _supportsForceTouch = [currentDevice _supportsForceTouch];

  if (_supportsForceTouch)
  {
    view = [(CKDetailsController *)self view];
    [(CKDetailsController *)self unregisterPreviewSourceView:view];
  }

  v7.receiver = self;
  v7.super_class = CKDetailsController;
  [(CKDetailsController *)&v7 dealloc];
}

- (CKDetailsController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v39.receiver = self;
  v39.super_class = CKDetailsController;
  v5 = [(CKDetailsController *)&v39 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CKDetailsController *)v5 setConversation:conversationCopy];
    [(CKDetailsController *)v6 setupFMF];
    [(CKDetailsController *)v6 setupKT];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleKeyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__handleKeyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69A5818];
    conversation = [(CKDetailsController *)v6 conversation];
    chat = [conversation chat];
    [defaultCenter3 addObserver:v6 selector:sel__lastAddressedHandleUpdateNotification_ name:v10 object:chat];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__chatAutoDonatingHandleUpdateNotification_ name:*MEMORY[0x1E69A5888] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = *MEMORY[0x1E69A5878];
    chat2 = [conversationCopy chat];
    [defaultCenter5 addObserver:v6 selector:sel__batchDownloadNotificationFired_ name:v15 object:chat2];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = *MEMORY[0x1E69A5880];
    chat3 = [conversationCopy chat];
    [defaultCenter6 addObserver:v6 selector:sel__batchDownloadNotificationFired_ name:v18 object:chat3];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v6 selector:sel__reloadForReadReceiptVisibilityChangeIfNeeded_ name:*MEMORY[0x1E69A56B8] object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = *MEMORY[0x1E69A5908];
    chat4 = [conversationCopy chat];
    [defaultCenter8 addObserver:v6 selector:sel__reloadForReadReceiptVisibilityChangeIfNeeded_ name:v22 object:chat4];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v6 selector:sel__handleAddressBookChanged_ name:*MEMORY[0x1E69A6828] object:0];

    defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter10 addObserver:v6 selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];

    defaultCenter11 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter11 addObserver:v6 selector:sel__handleGroupPhotoChanged_ name:*MEMORY[0x1E69A5718] object:0];

    defaultCenter12 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter12 addObserver:v6 selector:sel__handleGroupDisplayNameChanged_ name:*MEMORY[0x1E69A5700] object:0];

    defaultCenter13 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter13 addObserver:v6 selector:sel__chatParticipantsChangedNotification_ name:*MEMORY[0x1E69A5848] object:0];

    defaultCenter14 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter14 addObserver:v6 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    chat5 = [conversationCopy chat];
    allowedByScreenTime = [chat5 allowedByScreenTime];

    if ((allowedByScreenTime & 1) == 0)
    {
      [(CKDetailsController *)v6 dismissViewControllerAnimated:1 completion:0];
    }

    defaultCenter15 = [MEMORY[0x1E696AD88] defaultCenter];
    v33 = *MEMORY[0x1E69A56E8];
    chat6 = [conversationCopy chat];
    [defaultCenter15 addObserver:v6 selector:sel__chatAllowedByScreenTimeChanged_ name:v33 object:chat6];

    v35 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v6 action:sel_handleDoneButton_];
    navigationItem = [(CKDetailsController *)v6 navigationItem];
    [navigationItem setRightBarButtonItem:v35];

    [(CKDetailsController *)v6 setTuConversationCellHeight:-1.0];
    defaultCenter16 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter16 addObserver:v6 selector:sel__handleMultiWayStateChange_ name:*MEMORY[0x1E69A5840] object:0];

    [(CKDetailsController *)v6 setAddContactCellHeight:-1.0];
    [(CKDetailsController *)v6 setShowMoreContactCellHeight:-1.0];
    [(CKDetailsController *)v6 setGroupPhotoHeaderHeight:-1.0];
    [(CKDetailsController *)v6 setSimLabelCellHeight:-1.0];
  }

  return v6;
}

- (void)loadView
{
  v3 = [CKDetailsTableView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v21 = [(CKDetailsTableView *)v3 initWithFrame:2 style:*MEMORY[0x1E695F058], v5, v6, v7];
  [(CKDetailsTableView *)v21 setAutoresizingMask:18];
  [(CKDetailsTableView *)v21 setDelegate:self];
  [(CKDetailsTableView *)v21 setDataSource:self];
  [(CKDetailsTableView *)v21 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"locationShareTextView"];
  [(CKDetailsTableView *)v21 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"CKDetailsSharedWithYouHeaderFooterView_reuseIdentifier"];
  v8 = objc_opt_class();
  v9 = +[CKGroupPhotoCell reuseIdentifier];
  [(CKDetailsTableView *)v21 registerClass:v8 forCellReuseIdentifier:v9];

  [(CKDetailsTableView *)v21 setTableHeaderViewShouldAutoHide:1];
  [(CKDetailsTableView *)v21 setContentInsetAdjustmentBehavior:2];
  [(CKDetailsTableView *)v21 _setPinsTableHeaderView:0];
  [(CKDetailsTableView *)v21 setBackgroundView:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CKDetailsTableView *)v21 setBackgroundColor:clearColor];

  [(CKDetailsTableView *)v21 setEstimatedSectionHeaderHeight:0.0];
  [(CKDetailsTableView *)v21 setEstimatedSectionFooterHeight:0.0];
  [(CKDetailsTableView *)v21 setSeparatorStyle:0];
  [(CKDetailsTableView *)v21 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(CKDetailsTableView *)v21 setPreservesSuperviewLayoutMargins:1];
  [(CKDetailsTableView *)v21 setSectionHeaderHeight:0.0];
  [(CKDetailsTableView *)v21 setSectionFooterHeight:0.0];
  [(CKDetailsTableView *)v21 setEstimatedRowHeight:0.0];
  v11 = +[CKUIBehavior sharedBehaviors];
  theme = [v11 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];

  [(CKDetailsTableView *)v21 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [v14 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];
  [(CKDetailsTableView *)v21 setTableFooterView:v14];
  [(CKDetailsController *)self setTableView:v21];
  [(CKDetailsController *)self setView:v21];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _supportsForceTouch = [currentDevice _supportsForceTouch];

  if (_supportsForceTouch)
  {
    view = [(CKDetailsController *)self view];
    [(CKDetailsController *)self registerPreviewSourceView:view previewingDelegate:self];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v18 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsController *)self setScreenShareContextButton:v18];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    screenShareContextButton = [(CKDetailsController *)self screenShareContextButton];
    [screenShareContextButton setBackgroundColor:clearColor2];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CKDetailsController;
  [(CKDetailsController *)&v17 viewDidLoad];
  [(CKDetailsController *)self setupContactsManager];
  [(CKDetailsController *)self setIsContactsSectionCollapsed:[(CKDetailsController *)self isContactsSectionCollapsible]];
  [(CKDetailsController *)self _determineFocusStatusSharingState];
  navigationItem = [(CKDetailsController *)self navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];

  navigationItem2 = [(CKDetailsController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  navigationItem3 = [(CKDetailsController *)self navigationItem];
  [navigationItem3 _setAlwaysUseManualScrollEdgeAppearance:1];

  navigationItem4 = [(CKDetailsController *)self navigationItem];
  transparentNavBarAppearance = [(CKDetailsController *)self transparentNavBarAppearance];
  [navigationItem4 setScrollEdgeAppearance:transparentNavBarAppearance];

  navigationItem5 = [(CKDetailsController *)self navigationItem];
  defaultNavBarAppearance = [(CKDetailsController *)self defaultNavBarAppearance];
  [navigationItem5 setStandardAppearance:defaultNavBarAppearance];

  if (CKIsRunningInMacCatalyst())
  {
    detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
    isDetailsNavigationControllerDetached = [detailsControllerDelegate isDetailsNavigationControllerDetached];

    if ((isDetailsNavigationControllerDetached & 1) == 0)
    {
      [(CKDetailsController *)self computedPreferredContentSize];
      [(CKDetailsController *)self setPreferredContentSize:?];
    }
  }

  if (!self->_groupPhotoHeaderViewController)
  {
    [(CKDetailsController *)self _configureGroupPhotoHeader];
  }

  mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
  conversation = [(CKDetailsController *)self conversation];
  recipientStrings = [conversation recipientStrings];
  v15 = [mEMORY[0x1E69A5C10] createSharedProfileStateOracleForHandles:recipientStrings];

  groupPhotoHeaderViewController = [(CKDetailsController *)self groupPhotoHeaderViewController];
  [groupPhotoHeaderViewController setSharedProfileStateOracle:v15];
}

- (void)reloadTableView
{
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)_determineFocusStatusSharingState
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CKDetailsController__determineFocusStatusSharingState__block_invoke;
  v6[3] = &unk_1E72EF9A8;
  objc_copyWeak(&v9, &location);
  v5 = chat;
  v7 = v5;
  selfCopy = self;
  [v5 canShareFocusStatusWithCompletion:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__CKDetailsController__determineFocusStatusSharingState__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A5B00] sharedInstance];
  v5 = [v4 isSatelliteConnectionActive];

  v6 = a2 & ~v5;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCanShareFocusStatus:v7];

  v9 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) guid];
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Checking to see if focus status is shared with chat: %@", buf, 0xCu);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_304;
    v17[3] = &unk_1E72EF980;
    v12 = *(a1 + 32);
    v17[4] = *(a1 + 40);
    objc_copyWeak(&v18, (a1 + 48));
    [v12 isInvitedToViewMyFocusStatusWithCompletion:v17];
    objc_destroyWeak(&v18);
  }

  else
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Cannot share focus status with chat, not checking to see if focus status is already shared", buf, 2u);
      }
    }

    v14 = objc_loadWeakRetained((a1 + 48));
    [v14 setIsSharingFocusStatus:0];

    v15 = objc_loadWeakRetained((a1 + 48));
    v16 = [v15 tableView];
    [v16 reloadData];
  }
}

void __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_304(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_2;
  v8[3] = &unk_1E72EF958;
  v12 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  objc_copyWeak(&v11, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(&v11);
}

void __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
    v4 = *(a1 + 56);
    v5 = IMOSLoggingEnabled();
    if (v4 == 1)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v12 = 0;
          v7 = "Determined focus status is shared with chat, enabling and updating switch";
          v8 = &v12;
LABEL_11:
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        v7 = "Determined focus status is NOT shared with chat, enabling and updating switch";
        v8 = &v11;
        goto LABEL_11;
      }

LABEL_12:
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 56), v11}];
    [*(a1 + 40) setIsSharingFocusStatus:v9];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [WeakRetained tableView];
    [v10 reloadData];

    goto LABEL_14;
  }

  WeakRetained = IMLogHandleForCategory();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_2_cold_1(v1, WeakRetained);
  }

LABEL_14:
}

- (id)transparentNavBarAppearance
{
  v13[1] = *MEMORY[0x1E69E9840];
  groupPhotoHeaderViewController = [(CKDetailsController *)self groupPhotoHeaderViewController];
  group = [groupPhotoHeaderViewController group];
  groupName = [group groupName];

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:groupName value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKDetailsController *)self setTitle:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  v12 = *MEMORY[0x1E69DB650];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v13[0] = clearColor;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v8 setTitleTextAttributes:v10];
  [v8 configureWithTransparentBackground];

  return v8;
}

- (id)defaultNavBarAppearance
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(CKDetailsController *)self setTitle:0];
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  v6 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7[0] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v2 setTitleTextAttributes:v4];
  [v2 configureWithDefaultBackground];

  return v2;
}

- (void)updateManualScrollEdgeProgress
{
  if (CKIsRunningInMacCatalyst())
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v4 = "Not updating manual scroll edge appearance progress because it does not apply to Mac.";
LABEL_13:
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
LABEL_14:

    return;
  }

  navigationItem = [(CKDetailsController *)self navigationItem];
  _isManualScrollEdgeAppearanceEnabled = [navigationItem _isManualScrollEdgeAppearanceEnabled];

  if ((_isManualScrollEdgeAppearanceEnabled & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v4 = "Not updating manual scroll edge appearance progress because it is not enabled on the navigation item.";
    goto LABEL_13;
  }

  groupPhotoHeaderViewController = [(CKDetailsController *)self groupPhotoHeaderViewController];
  view = [groupPhotoHeaderViewController view];
  [view frame];
  v10 = v9;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKDetailsController_updateManualScrollEdgeProgress__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (updateManualScrollEdgeProgress_onceToken != -1)
  {
    dispatch_once(&updateManualScrollEdgeProgress_onceToken, block);
  }

  v11 = updateManualScrollEdgeProgress_hasNewContactsAPI;
  groupPhotoHeaderViewController2 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  v13 = groupPhotoHeaderViewController2;
  if (v11 == 1)
  {
    [groupPhotoHeaderViewController2 titleLabelBaselineOffset];
    v15 = v10 + v14;
  }

  else
  {
    view2 = [groupPhotoHeaderViewController2 view];
    [view2 bounds];
    v15 = v10 + v17 * 0.5;
  }

  tableView = [(CKDetailsController *)self tableView];
  [tableView contentOffset];
  v20 = v19;
  tableView2 = [(CKDetailsController *)self tableView];
  [tableView2 adjustedContentInset];
  v23 = v20 + v22;

  if (v23 <= 0.0)
  {
    navigationItem2 = [(CKDetailsController *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceProgress:0.0];

    [(CKDetailsController *)self setTitle:0];
  }

  else
  {
    navigationItem3 = [(CKDetailsController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceProgress:{fmin(v23, 14.0) / 14.0}];

    if (updateManualScrollEdgeProgress_hasNewContactsAPI == 1)
    {
      groupPhotoHeaderViewController3 = [(CKDetailsController *)self groupPhotoHeaderViewController];
      [groupPhotoHeaderViewController3 hideTitleLabel:v23 > v15];
    }

    if (v23 <= v15)
    {
      _navigationBarTitle = &stru_1F04268F8;
    }

    else
    {
      _navigationBarTitle = [(CKDetailsController *)self _navigationBarTitle];
    }

    [(CKDetailsController *)self setTitle:_navigationBarTitle];
  }
}

void __53__CKDetailsController_updateManualScrollEdgeProgress__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) groupPhotoHeaderViewController];
  updateManualScrollEdgeProgress_hasNewContactsAPI = objc_opt_respondsToSelector() & 1;
}

- (id)_navigationBarTitle
{
  if (!-[CKDetailsController supportsChatNameAndPhotoHeader](self, "supportsChatNameAndPhotoHeader") || (-[CKDetailsController groupPhotoHeaderViewController](self, "groupPhotoHeaderViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 group], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "groupName"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5) && (-[CKDetailsController conversation](self, "conversation"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v5 = objc_claimAutoreleasedReturnValue(), v6, !v5))
  {
    v7 = CKFrameworkBundle();
    v5 = [v7 localizedStringForKey:@"DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CKDetailsController;
  [(CKDetailsController *)&v8 viewDidLayoutSubviews];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKDetailsController *)self updateScreenSharingStatusAndViews];
    [(CKDetailsController *)self initializeSearchController];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    navigationController = [(CKDetailsController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [v3 detailsViewTableTopPaddingForNavBar:navigationBar];
    v7 = v6;

    [(CKDetailsTableView *)self->_tableView _setTopPadding:v7];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CKDetailsController;
  [(CKViewController *)&v9 viewWillAppear:appear];
  if (CKIsRunningInMacCatalyst())
  {
    navigationController = [(CKDetailsController *)self navigationController];
    [navigationController setNavigationBarHidden:1 animated:0];
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  detailsBackgroundColor = [theme detailsBackgroundColor];
  view = [(CKDetailsController *)self view];
  [view setBackgroundColor:detailsBackgroundColor];

  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"DetailsViewWillAppear"];
  [(CKDetailsController *)self _resetPurgedAttachmentCount];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CKDetailsController;
  [(CKViewController *)&v17 viewDidAppear:appear];
  [(CKDetailsController *)self becomeFirstResponder];
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A73A8]];

  [(CKDetailsController *)self _updateDownloadButtonStateIfNeeded];
  if (CKIsRunningInMacCatalyst())
  {
    detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
    isDetailsNavigationControllerDetached = [detailsControllerDelegate isDetailsNavigationControllerDetached];

    if (isDetailsNavigationControllerDetached)
    {
      [(CKDetailsController *)self computedPreferredContentSize];
      v9 = v8;
      v11 = v10;
      view = [(CKDetailsController *)self view];
      window = [view window];
      windowScene = [window windowScene];

      sizeRestrictions = [windowScene sizeRestrictions];
      [sizeRestrictions setMinimumSize:{v9, v11}];

      sizeRestrictions2 = [windowScene sizeRestrictions];
      [sizeRestrictions2 setMaximumSize:{v9, v11}];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKDetailsController;
  [(CKViewController *)&v6 viewWillDisappear:disappear];
  groupNameCell = [(CKDetailsController *)self groupNameCell];
  groupNameView = [groupNameCell groupNameView];
  [groupNameView commitGroupName];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = CKDetailsController;
  [(CKViewController *)&v9 viewDidDisappear:disappear];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A73A0]];

  fmfUpdateTimer = [(CKDetailsController *)self fmfUpdateTimer];
  [fmfUpdateTimer invalidate];

  if ((-[CKDetailsController isBeingDismissed](self, "isBeingDismissed") & 1) != 0 || (-[CKDetailsController navigationController](self, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isBeingDismissed], v6, v7))
  {
    detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
    [detailsControllerDelegate detailsControllerDidDismiss:self];
  }
}

- (id)keyCommands
{
  array = [MEMORY[0x1E695DF70] array];
  searchViewController = [(CKDetailsController *)self searchViewController];
  if (searchViewController)
  {
    v5 = searchViewController;
    searchViewController2 = [(CKDetailsController *)self searchViewController];
    wantsSpaceKeyCommandActive = [searchViewController2 wantsSpaceKeyCommandActive];

    if (wantsSpaceKeyCommandActive)
    {
      v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel_spacePressed_];
      [array addObject:v8];
    }
  }

  v9 = [array copy];

  return v9;
}

- (void)spacePressed:(id)pressed
{
  searchViewController = [(CKDetailsController *)self searchViewController];
  [searchViewController handleSpacePressed];
}

- (CGSize)computedPreferredContentSize
{
  conversation = [(CKDetailsController *)self conversation];
  isBusinessConversation = [conversation isBusinessConversation];

  if (isBusinessConversation)
  {
    view = [(CKDetailsController *)self view];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 detailsPreferredContentSizeWidth];
    [view sizeThatFits:?];
    v8 = v7;
    v10 = v9;

    v11 = v10 + 40.0;
  }

  else
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 detailsPreferredContentSizeHeight];
    v11 = v13;

    if ([(CKDetailsController *)self shouldShowExpanseFeatures])
    {
      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 detailsExpanseScreenShareCellHeight];
      v11 = v11 + v15;
    }

    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 detailsPreferredContentSizeWidth];
    v8 = v17;
  }

  v18 = v8;
  v19 = v11;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)handleDoneButton:(id)button
{
  detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];

  if (detailsControllerDelegate)
  {
    detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      detailsControllerDelegate3 = [(CKDetailsController *)self detailsControllerDelegate];
      [detailsControllerDelegate3 detailsControllerWillDismiss:self];
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CKDetailsController_handleDoneButton___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:v8];
}

void __40__CKDetailsController_handleDoneButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detailsControllerDelegate];
  [v2 detailsControllerDidDismiss:*(a1 + 32)];
}

- (void)_handleKeyboardWillShowNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(CKDetailsController *)self view];
  window = [view window];
  [window convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  view2 = [(CKDetailsController *)self view];
  window2 = [view2 window];
  groupNameCell = [(CKDetailsController *)self groupNameCell];
  [groupNameCell frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  groupNameCell2 = [(CKDetailsController *)self groupNameCell];
  superview = [groupNameCell2 superview];
  [window2 convertRect:superview fromView:{v28, v30, v32, v34}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v55.origin.x = v17;
  v55.origin.y = v19;
  v55.size.width = v21;
  v55.size.height = v23;
  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  if (CGRectIntersectsRect(v55, v60))
  {
    tableView = [(CKDetailsController *)self tableView];
    v56.origin.x = v38;
    v56.origin.y = v40;
    v56.size.width = v42;
    v56.size.height = v44;
    v61.origin.x = v17;
    v61.origin.y = v19;
    v61.size.width = v21;
    v61.size.height = v23;
    v57 = CGRectIntersection(v56, v61);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    [tableView contentOffset];
    v50 = v49;
    v52 = v51;
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    [(CKDetailsController *)self setContentOffsetYShiftAfterKeyboardNotification:CGRectGetHeight(v58)];
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    [tableView setContentOffset:1 animated:{v50, v52 + CGRectGetHeight(v59)}];
  }
}

- (void)_handleKeyboardWillHideNotification:(id)notification
{
  tableView = [(CKDetailsController *)self tableView];
  [tableView contentOffset];
  v5 = v4;
  v7 = v6;
  [(CKDetailsController *)self contentOffsetYShiftAfterKeyboardNotification];
  [tableView setContentOffset:1 animated:{v5, v7 - v8}];
  [(CKDetailsController *)self setContentOffsetYShiftAfterKeyboardNotification:0.0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (viewControllerCopy != self)
  {
    navigationItem = [(CKDetailsController *)self navigationItem];
    titleForBackButton = [(CKDetailsController *)self titleForBackButton];
    [navigationItem setBackButtonTitle:titleForBackButton];

    LODWORD(navigationItem) = [(CKDetailsController *)self isContactViewController:viewControllerCopy];
    navigationItem2 = [(CKDetailsController *)self navigationItem];
    v11 = navigationItem2;
    if (navigationItem)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [navigationItem2 setBackButtonDisplayMode:v12];
  }
}

- (id)titleForBackButton
{
  groupPhotoHeaderViewController = [(CKDetailsController *)self groupPhotoHeaderViewController];
  displayNameForGroupIdentity = [groupPhotoHeaderViewController displayNameForGroupIdentity];

  return displayNameForGroupIdentity;
}

- (BOOL)isContactViewController:(id)controller
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  viewCopy = view;
  lCopy = l;
  if (self->_locationSharingTextView == viewCopy)
  {
    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    [mEMORY[0x1E69A5B70] makeThisDeviceActiveDevice];

    locationSharingTextView = [(CKDetailsController *)self locationSharingTextView];
    [locationSharingTextView setDelegate:0];

    [(CKDetailsController *)self setLocationSharingTextView:0];
    tableView = [(CKDetailsController *)self tableView];
    [tableView reloadData];
    goto LABEL_5;
  }

  if (self->_sharedWithYouFooterTextView == viewCopy)
  {
    tableView = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=MESSAGES&path=SHARED_WITH_YOU_BUTTON"];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:tableView withOptions:0];

LABEL_5:
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled && self->_ktSecurityFooterTextView == viewCopy)
  {
    [CKKeyTransparencyErrorUtilities learnMorePressedFromError:0];
  }

  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = +[CKUIBehavior sharedBehaviors];
  detailsSectionCount = [v4 detailsSectionCount];

  if ([(CKDetailsController *)self shouldShowExpanseFeatures])
  {
    v6 = CKIsRunningInMacCatalyst();
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    detailsSectionCount += v7;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    detailsSectionCount += [(CKDetailsController *)self shouldShowKTSection];
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070]2 isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled)
  {
    detailsSectionCount += [(CKDetailsController *)self shouldShowTranslationSection];
  }

  return detailsSectionCount;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isBusinessChat = [chat isBusinessChat];

  if (isBusinessChat)
  {
    return section == 6 || section == 9;
  }

  result = 0;
  switch(section)
  {
    case 0:
      LODWORD(result) = [(CKDetailsController *)self supportsChatNameAndPhotoHeader];
      return result;
    case 1:
      LODWORD(result) = [(CKDetailsController *)self shouldShowExpanseFeatures];
      return result;
    case 2:
      LODWORD(result) = [(CKDetailsController *)self shouldShowSIMTypeSection];
      return result;
    case 3:
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

      LODWORD(result) = [(CKDetailsController *)self shouldShowFMFView];
      if (isWaldoEnabled)
      {
        return result;
      }

      if (result)
      {
        return 3;
      }

      else
      {
        return 0;
      }

    case 5:
      LODWORD(result) = [(CKDetailsController *)self shouldShowGroupCount];
      return result;
    case 6:
      visibleContactsRows = [(CKDetailsController *)self visibleContactsRows];
      conversation2 = [(CKDetailsController *)self conversation];
      chat2 = [conversation2 chat];
      participants = [chat2 participants];
      v30 = [participants count];

      if (v30 < 2)
      {
        goto LABEL_23;
      }

      v31 = visibleContactsRows + [(CKDetailsController *)self isContactsSectionCollapsible];
      v32 = v31 + [(CKDetailsController *)self shouldShowAddMemberCell];
      return v32 + [(CKDetailsController *)self hasTUConversation];
    case 7:
      allRecipientsAlreadyFollowingLocation = [(CKDetailsController *)self allRecipientsAlreadyFollowingLocation];
      conversation3 = [(CKDetailsController *)self conversation];
      v37 = [_TtC7ChatKit33CKDetailsControllerLocationHelper numberOfCellsInLocationSectionWithConversation:conversation3 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] isSharingLocation:allRecipientsAlreadyFollowingLocation shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

      return v37;
    case 8:
      LODWORD(result) = [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
      return result;
    case 9:
      conversation4 = [(CKDetailsController *)self conversation];
      if ([conversation4 isGroupConversation])
      {
        supportsSendingReadReceipts = 0;
      }

      else
      {
        conversation5 = [(CKDetailsController *)self conversation];
        chat3 = [conversation5 chat];
        supportsSendingReadReceipts = [chat3 supportsSendingReadReceipts];
      }

      mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
      isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

      v44 = (isSatelliteConnectionActive ^ 1) & supportsSendingReadReceipts;
      if (((isSatelliteConnectionActive ^ 1) & supportsSendingReadReceipts) != 0)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      [(CKDetailsController *)self setWasShowingReadReceiptSwitch:v44];
      canShareFocusStatus = [(CKDetailsController *)self canShareFocusStatus];
      bOOLValue = [canShareFocusStatus BOOLValue];

      return v45 + bOOLValue;
    case 10:
      conversation6 = [(CKDetailsController *)self conversation];
      supportsAutomaticTranslation = [conversation6 supportsAutomaticTranslation];

      if (!supportsAutomaticTranslation)
      {
        goto LABEL_23;
      }

      conversation7 = [(CKDetailsController *)self conversation];
      shouldAutomaticallyTranslate = [conversation7 shouldAutomaticallyTranslate];

      if (!shouldAutomaticallyTranslate)
      {
        goto LABEL_18;
      }

      conversation8 = [(CKDetailsController *)self conversation];
      translationLanguageCode = [conversation8 translationLanguageCode];

      if (translationLanguageCode)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }

      break;
    case 11:
      LODWORD(result) = [(CKDetailsController *)self shouldShowEnhancedGroupFeatures];
      return result;
    case 12:
      conversation9 = [(CKDetailsController *)self conversation];
      chat4 = [conversation9 chat];
      v25 = [chat4 supportsCapabilities:256];

      return v25;
    case 13:
LABEL_18:
      result = 1;
      break;
    case 14:
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070]2 isKeyTransparencyEnabled];

      if (isKeyTransparencyEnabled && [(CKDetailsController *)self shouldShowKTSection])
      {
        ktChatState = self->_ktChatState;
        conversation10 = [(CKDetailsController *)self conversation];
        chat5 = [conversation10 chat];
        v16 = +[CKKTDetailsViewUtilities numberOfRowsInKTSectionForStatus:isGroupChat:](CKKTDetailsViewUtilities, "numberOfRowsInKTSectionForStatus:isGroupChat:", ktChatState, [chat5 isGroupChat]);

        result = v16;
      }

      else
      {
LABEL_23:
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v19[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  switch([pathCopy section])
  {
    case 0:
      v6 = [(CKDetailsController *)self groupPhotoCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 1:
      v6 = [(CKDetailsController *)self expanseActivityCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 2:
      if (![(CKDetailsController *)self shouldShowSIMTypeSection])
      {
        goto LABEL_17;
      }

      v6 = -[CKDetailsController switchSubscriptionCellForIndexPathRow:](self, "switchSubscriptionCellForIndexPathRow:", [pathCopy row]);
      goto LABEL_26;
    case 3:
      v6 = [(CKDetailsController *)self fmfViewControllerCellForIndexPath:pathCopy shouldShowLocation:[(CKDetailsController *)self shouldShowLocationStringForOneToOneConversation]];
      goto LABEL_26;
    case 4:
      v6 = [(CKDetailsController *)self groupNameCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 5:
      v6 = [(CKDetailsController *)self groupCountCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 6:
      v6 = [(CKDetailsController *)self contactsManagerCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 7:
      v6 = -[CKDetailsController locationShareCellForIndexPathRow:](self, "locationShareCellForIndexPathRow:", [pathCopy row]);
      goto LABEL_26;
    case 8:
      v6 = [(CKDetailsController *)self sharedWithYouCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 9:
      v6 = [(CKDetailsController *)self chatOptionsCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 10:
      v6 = [(CKDetailsController *)self translationCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 11:
      v6 = [(CKDetailsController *)self leaveCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 12:
      v6 = [(CKDetailsController *)self deleteAndBlockCellForIndexPath:pathCopy];
      goto LABEL_26;
    case 13:
      v7 = [(CKDetailsController *)self searchAttachmentViewControllerCellForIndexPath:pathCopy];
      if (CKIsRunningInMacCatalyst())
      {
        v19[0] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        popoverPresentationController = [(CKDetailsController *)self popoverPresentationController];
        [popoverPresentationController setPassthroughViews:v8];
      }

      break;
    case 14:
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (!isKeyTransparencyEnabled)
      {
        goto LABEL_16;
      }

      v6 = -[CKDetailsController ktCellForRow:](self, "ktCellForRow:", [pathCopy row]);
LABEL_26:
      v7 = v6;
      break;
    case 16:
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      participants = [chat participants];
      v17 = [participants count];

      if (v17 < 2)
      {
        [(CKDetailsController *)self openInContactsCell];
      }

      else
      {
        [(CKDetailsController *)self changeGroupNamePhotoCell];
      }
      v6 = ;
      goto LABEL_26;
    default:
LABEL_16:
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: Unsupported section in indexPath %@", "-[CKDetailsController tableView:cellForRowAtIndexPath:]", pathCopy];
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:pathCopy userInfo:0];
      [v13 raise];

LABEL_17:
      v7 = 0;
      break;
  }

  return v7;
}

- (id)_groupPhotoHeaderRequiredContactKeys
{
  v5[1] = *MEMORY[0x1E69E9840];
  descriptorForRequiredKeys = [MEMORY[0x1E695D168] descriptorForRequiredKeys];
  v5[0] = descriptorForRequiredKeys;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)shouldShowGroupPhotoActionTitle
{
  conversation = [(CKDetailsController *)self conversation];
  supportsMutatingGroupIdentity = [conversation supportsMutatingGroupIdentity];

  return supportsMutatingGroupIdentity;
}

- (void)_configureGroupPhotoHeader
{
  if (!self->_groupPhotoCell)
  {
    v3 = [CKGroupPhotoCell alloc];
    v4 = +[CKGroupPhotoCell reuseIdentifier];
    v5 = [(CKGroupPhotoCell *)v3 initWithStyle:0 reuseIdentifier:v4];
    groupPhotoCell = self->_groupPhotoCell;
    self->_groupPhotoCell = v5;
  }

  if (!self->_groupPhotoHeaderViewController || self->_needsContactsReload)
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];

    v9 = [(CKDetailsController *)self setupAlternativeCommunicationActionsForChat:chat];
    actions = self->_actions;
    self->_actions = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    detailsActionViewStyle = [v11 detailsActionViewStyle];

    v13 = [objc_alloc(MEMORY[0x1E695D170]) initWithDefaultActionItems:self->_actions displaysUnavailableActionTypes:1 actionViewStyle:detailsActionViewStyle];
    if (objc_opt_respondsToSelector())
    {
      conversation2 = [(CKDetailsController *)self conversation];
      chat2 = [conversation2 chat];
      lastAddressedSIMID = [chat2 lastAddressedSIMID];
      [v13 setGeminiChannelIdentifier:lastAddressedSIMID];
    }

    _groupPhotoHeaderRequiredContactKeys = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
    maxContactAvatars = [objc_opt_class() maxContactAvatars];
    conversation3 = [(CKDetailsController *)self conversation];
    v20 = [conversation3 conversationVisualIdentityWithKeys:_groupPhotoHeaderRequiredContactKeys requestedNumberOfContactsToFetch:maxContactAvatars];

    v21 = [objc_alloc(MEMORY[0x1E695D168]) initWithGroupIdentity:v20 actionsViewConfiguration:v13];
    groupPhotoHeaderViewController = self->_groupPhotoHeaderViewController;
    self->_groupPhotoHeaderViewController = v21;

    if ([(CKDetailsController *)self shouldShowGroupPhotoActionTitle])
    {
      v23 = CKFrameworkBundle();
      v24 = [v23 localizedStringForKey:@"GROUP_PHOTO_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController setActionButtonTitle:v24];
    }

    else
    {
      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController setActionButtonTitle:0];
    }

    view = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
    [view setAutoresizingMask:18];

    [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController setDelegate:self];
    self->_needsContactsReload = 0;
  }

  [(CKDetailsController *)self updateContactsHeaderVerificationState];
  [(CKGroupPhotoCell *)self->_groupPhotoCell frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  view2 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
  [view2 setFrame:{v27, v29, v31, v33}];

  v35 = self->_groupPhotoCell;
  view3 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
  [(CKGroupPhotoCell *)v35 setGroupView:view3];
}

- (id)screenSharingActionView
{
  actionsViewConfiguration = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController actionsViewConfiguration];
  supportedActionTypes = [actionsViewConfiguration supportedActionTypes];

  if (supportedActionTypes && (v5 = [supportedActionTypes indexOfObject:@"ScreenShareType"], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController viewForActionAtIndex:v5];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)calculateHeightForGroupPhotoHeader
{
  [(CKDetailsController *)self groupPhotoHeaderHeight];
  if (v3 < 0.0 && ((-[CKDetailsController tableView](self, "tableView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v8 = v7, v9 = *MEMORY[0x1E695F060], v10 = *(MEMORY[0x1E695F060] + 8), v4, v6 == v9) ? (v11 = v8 == v10) : (v11 = 0), !v11) || -[CKDetailsController shouldForceGroupPhotoHeaderReload](self, "shouldForceGroupPhotoHeaderReload"))
  {
    [(CKDetailsController *)self _configureGroupPhotoHeader];
    if (objc_opt_respondsToSelector())
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      [v12 detailsTableViewInsets];
      v14 = v13;
      v15 = +[CKUIBehavior sharedBehaviors];
      [v15 detailsTableViewInsets];
      v17 = v14 + v16;

      tableView = [(CKDetailsController *)self tableView];
      [tableView bounds];
      v19 = CGRectGetWidth(v26) - v17;

      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController sizeForLayoutInContainerSize:v19, 1.79769313e308];
      v21 = v20;
      traitCollection = [(CKDetailsController *)self traitCollection];
      [traitCollection displayScale];
      if (v23 == 0.0)
      {
        if (CKMainScreenScale_once_22 != -1)
        {
          [CKDetailsController calculateHeightForGroupPhotoHeader];
        }

        v23 = *&CKMainScreenScale_sMainScreenScale_22;
        if (*&CKMainScreenScale_sMainScreenScale_22 == 0.0)
        {
          v23 = 1.0;
        }
      }

      [(CKDetailsController *)self setGroupPhotoHeaderHeight:ceil(v21 * v23) / v23];
    }

    else
    {
      [(CKDetailsController *)self setGroupPhotoHeaderHeight:300.0];
    }

    [(CKDetailsController *)self setShouldForceGroupPhotoHeaderReload:0];
  }

  [(CKDetailsController *)self groupPhotoHeaderHeight];
  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = 0.0;
  switch([pathCopy section])
  {
    case 0:
      if ([(CKDetailsController *)self supportsChatNameAndPhotoHeader])
      {
        [(CKDetailsController *)self calculateHeightForGroupPhotoHeader];
        goto LABEL_51;
      }

      goto LABEL_52;
    case 1:
      [(CKDetailsController *)self _heightForExpanseActivityCell];
      goto LABEL_51;
    case 2:
      if (![(CKDetailsController *)self shouldShowSIMTypeSection])
      {
        goto LABEL_52;
      }

      searchViewController = -[CKDetailsController switchSubscriptionCellForIndexPathRow:](self, "switchSubscriptionCellForIndexPathRow:", [pathCopy row]);
      goto LABEL_18;
    case 3:
      if ([pathCopy row])
      {
        v22 = [pathCopy row] - 1;
LABEL_21:
        v12 = [(CKDetailsController *)self locationShareCellForIndexPathRow:v22];
        if (CKIsRunningInMacCatalyst())
        {
LABEL_22:
          [(CKDetailsSharedWithYouCell *)v12 frame];
          v8 = v23;
        }

        else
        {
LABEL_25:
          [viewCopy bounds];
          [(CKDetailsSharedWithYouCell *)v12 sizeThatFits:CGRectGetWidth(v51), 3.40282347e38];
          v8 = v26;
        }
      }

      else
      {
        v43 = +[CKUIBehavior sharedBehaviors];
        [v43 detailsViewMapHeight];
        v8 = v44;

        if ([(CKDetailsController *)self shouldShowLocationStringForOneToOneConversation])
        {
          v8 = v8 + 44.0;
        }
      }

      goto LABEL_52;
    case 5:
      +[CKDetailsGroupCountCell preferredHeight];
      goto LABEL_51;
    case 6:
      [(CKDetailsController *)self visibleContactsRows];
      [(CKDetailsController *)self shouldAddToVisibleContactRowCountForTUConversation];
      v19 = [pathCopy row];
      v20 = v19 <= [(CKDetailsController *)self rowForLastContact]&& [(CKDetailsController *)self countOfContactViewModels]!= 0;
      v39 = [pathCopy row];
      conversation = [(CKDetailsController *)self conversation];
      isBusinessConversation = [conversation isBusinessConversation];

      if (isBusinessConversation)
      {
        goto LABEL_34;
      }

      if (CKIsRunningInMacCatalyst())
      {
        if (![(CKDetailsController *)self hasTUConversation])
        {
          if (!v20)
          {
            goto LABEL_50;
          }

LABEL_34:
          [(CKDetailsController *)self _heightForContactCellAtIndexPath:pathCopy];
          goto LABEL_51;
        }

        if (!v20)
        {
          goto LABEL_50;
        }

        rowForTUConversationCell = [(CKDetailsController *)self rowForTUConversationCell];
      }

      else
      {
        if (!v20)
        {
          goto LABEL_50;
        }

        v39 = [pathCopy row];
        rowForTUConversationCell = [(CKDetailsController *)self rowForShowMoreContactsCell];
      }

      if (v39 > rowForTUConversationCell)
      {
        goto LABEL_34;
      }

LABEL_50:
      [(CKDetailsController *)self _heightForAuxContactCellAtIndexPath:pathCopy];
LABEL_51:
      v8 = v9;
LABEL_52:

      return v8;
    case 7:
      v22 = [pathCopy row];
      goto LABEL_21;
    case 8:
      v24 = [CKDetailsSharedWithYouCell alloc];
      v12 = [(CKDetailsSharedWithYouCell *)v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      textLabel = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"MARK_AS_AUTO_DONATING";
      goto LABEL_24;
    case 9:
      v33 = [CKDetailsChatOptionsCell alloc];
      v28 = [(CKDetailsChatOptionsCell *)v33 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v34 = [(CKDetailsController *)self _optionRowForIndexPath:pathCopy];
      if (v34 <= 2)
      {
        v35 = off_1E72EFB68[v34];
        textLabel2 = [(CKDetailsChatOptionsCell *)v28 textLabel];
        v37 = CKFrameworkBundle();
        v38 = [v37 localizedStringForKey:v35 value:&stru_1F04268F8 table:@"ChatKit"];
        [textLabel2 setText:v38];
      }

      goto LABEL_44;
    case 10:
      v27 = [CKDetailsChatOptionsCell alloc];
      v28 = [(CKDetailsChatOptionsCell *)v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v29 = [(CKDetailsController *)self _translationRowForIndexPath:pathCopy];
      if (v29 == 1)
      {
        conversation2 = [(CKDetailsController *)self conversation];
        translationLanguageCode = [conversation2 translationLanguageCode];

        textLabel3 = [(CKDetailsChatOptionsCell *)v28 textLabel];
        v46 = MEMORY[0x1E696AEC0];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v47 = [currentLocale localizedStringForLanguageCode:translationLanguageCode];
        v48 = [v46 localizedStringWithFormat:@"Translate From (%@)", v47];
        [textLabel3 setText:v48];
      }

      else
      {
        if (v29)
        {
          goto LABEL_44;
        }

        translationLanguageCode = [(CKDetailsChatOptionsCell *)v28 textLabel];
        textLabel3 = CKFrameworkBundle();
        currentLocale = [textLabel3 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        [translationLanguageCode setText:currentLocale];
      }

LABEL_44:
      [viewCopy bounds];
      [(CKDetailsChatOptionsCell *)v28 sizeThatFits:CGRectGetWidth(v52), 3.40282347e38];
      v8 = v49;

      goto LABEL_52;
    case 11:
      v13 = [CKDetailsLocationShareCell alloc];
      v12 = [(CKDetailsLocationShareCell *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      textLabel = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"LEAVE_CONVERSATION";
      goto LABEL_24;
    case 12:
      v21 = [CKDetailsLocationShareCell alloc];
      v12 = [(CKDetailsLocationShareCell *)v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      textLabel = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"DELETE_AND_BLOCK_THIS_CONVERSATION";
LABEL_24:
      v25 = [v15 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
      [textLabel setText:v25];

      goto LABEL_25;
    case 13:
      searchViewController = [(CKDetailsController *)self searchViewController];
LABEL_18:
      v12 = searchViewController;
      goto LABEL_25;
    case 14:
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (!isKeyTransparencyEnabled)
      {
        goto LABEL_52;
      }

      v12 = -[CKDetailsController ktCellForRow:](self, "ktCellForRow:", [pathCopy row]);
      if (!CKIsRunningInMacCatalyst())
      {
        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    default:
      goto LABEL_52;
  }
}

- (id)labelForChat
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[CKSenderIdentity fromPickerEnabled])
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    lastAddressedSIMID = [chat lastAddressedSIMID];

    conversation2 = [(CKDetailsController *)self conversation];
    chat2 = [conversation2 chat];
    lastAddressedHandleID = [chat2 lastAddressedHandleID];

    v9 = [[CKSenderIdentity alloc] initWithHandle:lastAddressedHandleID simID:lastAddressedSIMID];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = lastAddressedHandleID;
        v17 = 2112;
        v18 = lastAddressedSIMID;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Found identity %@ for phoneNumber %@ simID %@", &v13, 0x20u);
      }
    }

    label = [(CKSenderIdentity *)v9 label];
  }

  else
  {
    label = 0;
  }

  return label;
}

- (double)_heightForContactCellAtIndexPath:(id)path
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  countOfContactViewModels = [(CKDetailsController *)self countOfContactViewModels];
  v6 = [pathCopy row];
  if (v6 < countOfContactViewModels || [(CKDetailsController *)self hasTUConversation])
  {
    if ([(CKDetailsController *)self shouldAddToVisibleContactRowCountForTUConversation])
    {
      v6 = countOfContactViewModels - 2;
    }

    else
    {
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      [chat isBusinessChat];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:countOfContactViewModels];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = callStackSymbols;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "_heightForContactCellAtIndexPath passed an indexPath with an invalid row index:%@, model count:%@, backtrace:%@", &v22, 0x20u);
      }
    }

    if (!countOfContactViewModels)
    {
      v20 = 0.0;
      goto LABEL_13;
    }

    v6 = countOfContactViewModels - 1;
  }

  v13 = objc_alloc(+[CKDetailsContactsTableViewCell cellClass]);
  v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v17 = [contactsViewModels objectAtIndex:v6];

  [v14 configureWithViewModel:v17];
  tableView = [(CKDetailsController *)self tableView];
  [tableView bounds];
  [v14 sizeThatFits:{CGRectGetWidth(v29), 3.40282347e38}];
  v20 = v19;

LABEL_13:
  return v20;
}

- (double)_heightForAuxContactCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (v5 == [(CKDetailsController *)self rowForShowMoreContactsCell])
  {
    [(CKDetailsController *)self showMoreContactCellHeight];
    if (v6 < 0.0)
    {
      v7 = [CKDetailsGroupHeaderCell alloc];
      v8 = +[CKDetailsGroupHeaderCell reuseIdentifier];
      contactsManager = [(CKDetailsController *)self contactsManager];
      v10 = [contactsManager recipientsSortedByIsContact:1 alphabetically:1];
      v11 = [(CKDetailsGroupHeaderCell *)v7 initWithStyle:0 reuseIdentifier:v8 participants:v10];

      tableView = [(CKDetailsController *)self tableView];
      [tableView bounds];
      [(CKDetailsGroupHeaderCell *)v11 sizeThatFits:CGRectGetWidth(v36), 3.40282347e38];
      [(CKDetailsController *)self setShowMoreContactCellHeight:v13];
    }

    [(CKDetailsController *)self showMoreContactCellHeight];
LABEL_16:
    v22 = v14;
    goto LABEL_17;
  }

  v15 = [pathCopy row];
  if (v15 == [(CKDetailsController *)self rowForAddMemberCell])
  {
    [(CKDetailsController *)self addContactCellHeight];
    if (v16 < 0.0)
    {
      v17 = objc_alloc(+[CKDetailsAddMemberCell cellClass]);
      v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      tableView2 = [(CKDetailsController *)self tableView];
      [tableView2 bounds];
      [v18 sizeThatFits:{CGRectGetWidth(v37), 3.40282347e38}];
      [(CKDetailsController *)self setAddContactCellHeight:v20];
    }

    [(CKDetailsController *)self addContactCellHeight];
    goto LABEL_16;
  }

  v21 = [pathCopy row];
  v22 = 0.0;
  if (v21 == [(CKDetailsController *)self rowForTUConversationCell])
  {
    [(CKDetailsController *)self tuConversationCellHeight];
    if (v23 < 0.0)
    {
      v24 = [CKDetailsTUConversationCell alloc];
      v25 = +[CKDetailsTUConversationCell reuseIdentifier];
      tuConversation = [(CKDetailsController *)self tuConversation];
      v27 = [(CKDetailsTUConversationCell *)v24 initWithStyle:0 reuseIdentifier:v25 conversation:tuConversation];

      tableView3 = [(CKDetailsController *)self tableView];
      [tableView3 bounds];
      [(CKDetailsTUConversationCell *)v27 sizeThatFits:CGRectGetWidth(v38), 3.40282347e38];
      v30 = v29;

      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 detailsContactCellMinimumHeight];
      v33 = v32;

      if (v30 >= v33)
      {
        v34 = v30;
      }

      else
      {
        v34 = v33;
      }

      [(CKDetailsController *)self setTuConversationCellHeight:v34];
    }

    [(CKDetailsController *)self tuConversationCellHeight];
    goto LABEL_16;
  }

LABEL_17:

  return v22;
}

- (double)_heightForExpanseActivityCell
{
  tuConversation = [(CKDetailsController *)self tuConversation];

  if (!tuConversation)
  {
    return 0.0;
  }

  v4 = [CKDetailsExpanseActivityCell alloc];
  v5 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  tuConversation2 = [(CKDetailsController *)self tuConversation];
  v7 = [(CKDetailsExpanseActivityCell *)v4 initWithStyle:0 reuseIdentifier:v5 conversation:tuConversation2];

  v8 = MEMORY[0x1E69A5B78];
  tuConversation3 = [(CKDetailsController *)self tuConversation];
  if ([v8 isScreenShareActivityForTUConversation:tuConversation3])
  {

LABEL_7:
    tableView = [(CKDetailsController *)self tableView];
    [tableView bounds];
    [(CKDetailsExpanseActivityCell *)v7 sizeThatFits:CGRectGetWidth(v22), 3.40282347e38];
    v10 = v18;

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 detailsExpanseScreenShareCellHeight];
    goto LABEL_8;
  }

  tuConversation4 = [(CKDetailsController *)self tuConversation];
  v12 = [CKTUConversationViewUtilities activityImageForTUConversation:tuConversation4];

  if (!v12)
  {
    goto LABEL_7;
  }

  tableView2 = [(CKDetailsController *)self tableView];
  [tableView2 bounds];
  [(CKDetailsExpanseActivityCell *)v7 sizeThatFits:CGRectGetWidth(v21), 3.40282347e38];
  v10 = v14;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 detailsExpanseCellHeight];
LABEL_8:
  v19 = v16;

  if (v10 < v19)
  {
    v10 = v19;
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CKDetailsController *)self conversationHasLeft])
  {
LABEL_2:
    v6 = 0;
  }

  else
  {
    v6 = 1;
    switch([pathCopy section])
    {
      case 2:
        v7 = CKDetailsSIMCell;
        goto LABEL_19;
      case 3:
        v7 = CKDetailsMapViewCell;
        goto LABEL_19;
      case 4:
        v7 = CKDetailsGroupNameCell;
        goto LABEL_19;
      case 6:
        v13 = [pathCopy row];
        if (v13 == [(CKDetailsController *)self rowForAddMemberCell])
        {
          goto LABEL_24;
        }

        v14 = [pathCopy row];
        if (v14 == [(CKDetailsController *)self rowForShowMoreContactsCell])
        {
          goto LABEL_24;
        }

        v15 = [pathCopy row];
        if (v15 == [(CKDetailsController *)self rowForTUConversationCell])
        {
          goto LABEL_2;
        }

        v6 = CKIsRunningInMacCatalyst() == 0;
        break;
      case 7:
        v16 = [pathCopy row];
        conversation = [(CKDetailsController *)self conversation];
        v18 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:v16 conversation:conversation isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

        fmfEnabled = [(CKDetailsController *)self fmfEnabled];
        v6 = v18 == 2 || fmfEnabled;
        break;
      case 8:
        v7 = CKDetailsSharedWithYouCell;
        goto LABEL_19;
      case 9:
        v7 = CKDetailsChatOptionsCell;
        goto LABEL_19;
      case 11:
        if (CKIsRunningUITests() && (-[CKDetailsController conversation](self, "conversation"), v22 = objc_claimAutoreleasedReturnValue(), [v22 chat], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "participants"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v23, v22, v25 > 2))
        {
LABEL_24:
          v6 = 1;
        }

        else
        {
          canLeaveConversation = [(CKDetailsController *)self canLeaveConversation];
LABEL_20:
          v6 = canLeaveConversation;
        }

        break;
      case 12:
      case 16:
        break;
      case 13:
        v7 = CKDetailsSegmentedControlCell;
LABEL_19:
        canLeaveConversation = [(__objc2_class *)v7 shouldHighlight];
        goto LABEL_20;
      case 14:
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

        if (!isKeyTransparencyEnabled)
        {
          goto LABEL_2;
        }

        tableView = [(CKDetailsController *)self tableView];
        v11 = [tableView cellForRowAtIndexPath:pathCopy];

        conversation2 = [(CKDetailsController *)self conversation];
        v6 = [CKKTDetailsViewUtilities shouldHighlightCell:v11 forConversation:conversation2];

        break;
      default:
        goto LABEL_2;
    }
  }

  return v6;
}

- (BOOL)shouldDisplayHeaderForSection:(unint64_t)section
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (section > 10)
  {
    if (section == 14)
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (isKeyTransparencyEnabled)
      {
        LODWORD(self) = [(CKDetailsController *)selfCopy shouldShowKTSection];
        if (self)
        {
          LOBYTE(self) = CKIsRunningInMacCatalyst() == 0;
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }

    else if (section == 11)
    {

      LOBYTE(self) = [(CKDetailsController *)selfCopy shouldShowEnhancedGroupFeatures];
    }
  }

  else if (section == 1 || section == 3)
  {

    LOBYTE(self) = [(CKDetailsController *)selfCopy shouldShowExpanseFeatures];
  }

  return self;
}

- (BOOL)shouldDisplayFooterForSection:(unint64_t)section
{
  if (section > 7)
  {
    if (section <= 11)
    {
      if (section != 8)
      {
        return 0;
      }

      return [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
    }

    else
    {
      if (section != 14)
      {
        return 0;
      }

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (!isKeyTransparencyEnabled)
      {
        return 0;
      }

      return [(CKDetailsController *)self shouldShowKTSection];
    }
  }

  else if (section <= 1)
  {
    if (!section)
    {
      return 1;
    }

    if (section != 1)
    {
      return 0;
    }

    return [(CKDetailsController *)self shouldShowExpanseFeatures];
  }

  else
  {
    if (section != 2)
    {
      if (section == 6)
      {

        return [(CKDetailsController *)self shouldShowBusinessInfoFooter];
      }

      return 0;
    }

    return [(CKDetailsController *)self shouldShowSIMTypeSection];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section != 14)
  {
    goto LABEL_5;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (![mEMORY[0x1E69A8070] isKeyTransparencyEnabled])
  {
    v7 = 0;
    goto LABEL_7;
  }

  shouldShowKTSection = [(CKDetailsController *)self shouldShowKTSection];

  if (!shouldShowKTSection)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  mEMORY[0x1E69A8070] = CKFrameworkBundle();
  v7 = [mEMORY[0x1E69A8070] localizedStringForKey:@"KT_HEADER_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
LABEL_7:

LABEL_8:

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 14)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070] isKeyTransparencyEnabled])
    {
      shouldShowKTSection = [(CKDetailsController *)self shouldShowKTSection];

      if (shouldShowKTSection)
      {
        v8 = *MEMORY[0x1E69DE3D0];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  else if (section == 1)
  {
    [(CKDetailsController *)self calculateHeightForExpanseActivityHeader];
    v8 = v7;
    goto LABEL_13;
  }

  v11 = [(CKDetailsController *)self shouldDisplayHeaderForSection:section];
  v12 = 0.0;
  if (section == 10)
  {
    v12 = 25.0;
  }

  if (v11)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = v12;
  }

LABEL_13:

  return v8;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  v6 = headerViewCopy;
  if (headerViewCopy)
  {
    v15 = headerViewCopy;
    contentView = [headerViewCopy contentView];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
    [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

    v11 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v11 theme];
    detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
    [v15 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

    v14 = CKIsRunningInMacCatalyst();
    v6 = v15;
    if (v14)
    {
      [v15 setBackgroundView:0];
      v6 = v15;
    }
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if (CKIsRunningInMacCatalyst() && [pathCopy section] == 6 && (v9 = objc_msgSend(pathCopy, "row"), v9 != -[CKDetailsController rowForTUConversationCell](self, "rowForTUConversationCell")))
  {
    v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v10 = [(CKDetailsController *)self _menuConfigForContactsCell:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_menuConfigForContactsCell:(id)cell
{
  cellCopy = cell;
  tableView = [(CKDetailsController *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  v7 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v6];
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v10 = [contactsViewModels count];

  if (v10 <= v7)
  {
    v17 = 0;
  }

  else
  {
    v11 = [(CKDetailsController *)self _canRemoveRecipientAtIndexPath:v6];
    contactsManager2 = [(CKDetailsController *)self contactsManager];
    contactsViewModels2 = [contactsManager2 contactsViewModels];
    v14 = [contactsViewModels2 objectAtIndex:v7];
    entity = [v14 entity];

    contactsManager3 = [(CKDetailsController *)self contactsManager];
    v17 = [contactsManager3 conversationContextMenuConfigForEntity:entity allowConversationRemoval:v11];
  }

  return v17;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 16.0;
  if (section <= 7)
  {
    if (section > 2)
    {
      if (section == 3)
      {
        v7 = 0.0;
        if (![(CKDetailsController *)self shouldShowFMFView])
        {
          goto LABEL_35;
        }

LABEL_26:
        [(CKDetailsController *)self calculateHeightForLocationSharingFooter];
        goto LABEL_27;
      }

      if (section != 6)
      {
        if (section != 7)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      if ([(CKDetailsController *)self shouldShowBusinessInfoFooter])
      {
        [(CKDetailsController *)self initializeBusinessInfoViewIfNecessary];
        tableView = [(CKDetailsController *)self tableView];
        [tableView bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        tableView2 = [(CKDetailsController *)self tableView];
        [tableView2 _marginWidth];
        v26 = v25;

        businessInfoView = [(CKDetailsController *)self businessInfoView];
        v34.origin.x = v17;
        v34.origin.y = v19;
        v34.size.width = v21;
        v34.size.height = v23;
        [businessInfoView sizeThatFits:{CGRectGetWidth(v34) + v26 * -2.0, 1.79769313e308}];
        v7 = v28;

        goto LABEL_35;
      }

      conversation = [(CKDetailsController *)self conversation];
      isGroupConversation = [conversation isGroupConversation];

      if (isGroupConversation)
      {
        goto LABEL_35;
      }

      conversation2 = [(CKDetailsController *)self conversation];
      isGroupConversation2 = [conversation2 isGroupConversation];

      v12 = isGroupConversation2 == 0;
      v13 = 0.0;
      v14 = 28.0;
      goto LABEL_32;
    }

    if (!section)
    {
      supportsChatNameAndPhotoHeader = [(CKDetailsController *)self supportsChatNameAndPhotoHeader];
      goto LABEL_21;
    }

    if (section == 2)
    {
      supportsChatNameAndPhotoHeader = [(CKDetailsController *)self shouldShowSIMTypeSection];
LABEL_21:
      v12 = !supportsChatNameAndPhotoHeader;
      v13 = 0.0;
      v14 = 16.0;
      goto LABEL_32;
    }

LABEL_24:
    v7 = 0.0;
    goto LABEL_35;
  }

  if (section <= 12)
  {
    if ((section - 11) < 2)
    {
      goto LABEL_35;
    }

    if (section != 8)
    {
      goto LABEL_24;
    }

    v7 = 0.0;
    if (![(CKDetailsController *)self shouldShowSharedWithYouFeatures])
    {
      goto LABEL_35;
    }

    [(CKDetailsController *)self calculateHeightForShareAutomaticallyFooter];
LABEL_27:
    v7 = v8;
    goto LABEL_35;
  }

  if (section == 13)
  {
    if ([(CKDetailsController *)self downloadButtonState])
    {
      v12 = ![(CKDetailsController *)self isDisplayingPhotos];
      v13 = 190.0;
      v14 = 110.0;
LABEL_32:
      if (v12)
      {
        v7 = v13;
      }

      else
      {
        v7 = v14;
      }

      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (section != 14)
  {
    goto LABEL_24;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  v7 = 0.0;
  if (isKeyTransparencyEnabled && [(CKDetailsController *)self shouldShowKTSection])
  {
    [(CKDetailsController *)self calculateHeightForKTFooter];
    goto LABEL_27;
  }

LABEL_35:

  return v7;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  v9 = footerViewCopy;
  if (footerViewCopy)
  {
    v10 = footerViewCopy;
    if (section <= 6)
    {
      if (section == 1)
      {
        expanseActivityTextView = [(CKDetailsController *)self expanseActivityTextView];
        goto LABEL_14;
      }

      if (section == 6)
      {
        expanseActivityTextView = [(CKDetailsController *)self businessInfoView];
        goto LABEL_14;
      }
    }

    else
    {
      switch(section)
      {
        case 14:
          mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

          if (isKeyTransparencyEnabled)
          {
            expanseActivityTextView = [(CKDetailsController *)self ktSecurityFooterTextView];
            goto LABEL_14;
          }

          break;
        case 8:
          expanseActivityTextView = [(CKDetailsController *)self sharedWithYouFooterTextView];
          goto LABEL_14;
        case 7:
          expanseActivityTextView = [(CKDetailsController *)self locationSharingTextView];
LABEL_14:
          v14 = expanseActivityTextView;
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          [v14 setBackgroundColor:clearColor];

          break;
      }
    }

    contentView = [v10 contentView];
    v17 = +[CKUIBehavior sharedBehaviors];
    theme = [v17 theme];
    detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
    [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

    v20 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v20 theme];
    detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
    [v10 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    if ([(CKDetailsController *)self shouldDisplayHeaderForSection:1])
    {
      v6 = [(CKDetailsController *)self expanseActivityHeaderViewForSection:1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0;
  if (section <= 7)
  {
    switch(section)
    {
      case 3:
        if ([(CKDetailsController *)self shouldShowFooterInLocationSection:3])
        {
          selfCopy2 = self;
          v9 = 3;
          goto LABEL_15;
        }

        break;
      case 6:
        if ([(CKDetailsController *)self shouldShowBusinessInfoFooter])
        {
          sharedWithYouFooterView = [(CKDetailsController *)self businessInfoFooterViewForSection:6];
          goto LABEL_20;
        }

        break;
      case 7:
        if ([(CKDetailsController *)self shouldShowFooterInLocationSection:7])
        {
          selfCopy2 = self;
          v9 = 7;
LABEL_15:
          sharedWithYouFooterView = [(CKDetailsController *)selfCopy2 locationFooterViewForSection:v9];
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_26;
    }

    goto LABEL_21;
  }

  switch(section)
  {
    case 8:
      if ([(CKDetailsController *)self shouldShowSharedWithYouFeatures])
      {
        sharedWithYouFooterView = [(CKDetailsController *)self sharedWithYouFooterView];
        goto LABEL_20;
      }

LABEL_21:
      v7 = 0;
      break;
    case 13:
      if ([(CKDetailsController *)self shouldShowDownloadMoreCell])
      {
        v7 = [(CKDetailsController *)self downloadAttachmentsFooterViewForSection:13];
      }

      else
      {
        v7 = 0;
      }

      [(CKDetailsController *)self setDownloadAttachmentsFooterView:v7];
      [(CKDetailsController *)self _updateDownloadFooterView];
      break;
    case 14:
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (isKeyTransparencyEnabled && [(CKDetailsController *)self shouldShowKTSection])
      {
        sharedWithYouFooterView = [(CKDetailsController *)self ktSecurityFooterView];
LABEL_20:
        v7 = sharedWithYouFooterView;
        break;
      }

      goto LABEL_21;
  }

LABEL_26:

  return v7;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy section] == 6 && -[CKDetailsController _canRemoveRecipientAtIndexPath:](self, "_canRemoveRecipientAtIndexPath:", pathCopy);

  return v6;
}

- (double)calculateHeightForLocationSharingFooter
{
  shouldShowActiveDeviceSwitchFooter = [(CKDetailsController *)self shouldShowActiveDeviceSwitchFooter];
  result = 24.0;
  if (shouldShowActiveDeviceSwitchFooter)
  {
    [(CKDetailsController *)self initializeLocationSharingTextViewIfNecessary];
    tableView = [(CKDetailsController *)self tableView];
    [tableView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    tableView2 = [(CKDetailsController *)self tableView];
    [tableView2 _marginWidth];
    v16 = v15;

    locationSharingTextView = [(CKDetailsController *)self locationSharingTextView];
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    [locationSharingTextView sizeThatFits:{CGRectGetWidth(v20) + v16 * -2.0, 1.79769313e308}];
    v19 = v18;

    return v19 + 32.0;
  }

  return result;
}

- (double)calculateHeightForShareAutomaticallyFooter
{
  shouldShowSharedWithYouFeatures = [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
  result = 0.0;
  if (shouldShowSharedWithYouFeatures)
  {
    tableView = [(CKDetailsController *)self tableView];
    [tableView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    tableView2 = [(CKDetailsController *)self tableView];
    [tableView2 _marginWidth];
    v16 = v15;

    sharedWithYouFooterTextView = [(CKDetailsController *)self sharedWithYouFooterTextView];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    [sharedWithYouFooterTextView sizeThatFits:{CGRectGetWidth(v23) + v16 * -2.0, 1.79769313e308}];
    v19 = v18;

    +[CKDetailsSharedWithYouHeaderFooterView topPadding];
    v21 = v19 + v20;
    +[CKDetailsSharedWithYouHeaderFooterView bottomPadding];
    return v21 + v22 + 16.0;
  }

  return result;
}

- (double)calculateHeightForExpanseActivityHeader
{
  v3 = 0.0;
  if ([(CKDetailsController *)self shouldShowExpanseFeatures])
  {
    expanseActivityTextView = [(CKDetailsController *)self expanseActivityTextView];
    tableView = [(CKDetailsController *)self tableView];
    [tableView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    tableView2 = [(CKDetailsController *)self tableView];
    [tableView2 _marginWidth];
    v16 = v15;

    expanseActivityTextView2 = [(CKDetailsController *)self expanseActivityTextView];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    [expanseActivityTextView2 sizeThatFits:{CGRectGetWidth(v23) + v16 * -2.0, 1.79769313e308}];
    v19 = v18;

    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 detailsExpanseActivityDescriptionVerticalPadding];
    v3 = v19 + 0.0 + v21;
  }

  return v3;
}

- (BOOL)_canRemoveRecipientAtIndexPath:(id)path
{
  pathCopy = path;
  rowForShowMoreContactsCell = [(CKDetailsController *)self rowForShowMoreContactsCell];
  if (-[CKDetailsController shouldShowEnhancedGroupFeatures](self, "shouldShowEnhancedGroupFeatures") && -[CKDetailsController _moreThanMinNumberOfParticipantsInGroup](self, "_moreThanMinNumberOfParticipantsInGroup") && !-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") && (v6 = [pathCopy row], v6 != -[CKDetailsController rowForTUConversationCell](self, "rowForTUConversationCell")) && (rowForShowMoreContactsCell == 0x7FFFFFFFFFFFFFFFLL || (v9 = objc_msgSend(pathCopy, "row"), v9 > -[CKDetailsController rowForShowMoreContactsCell](self, "rowForShowMoreContactsCell"))))
  {
    v10 = [pathCopy row];
    v7 = v10 <= [(CKDetailsController *)self rowForLastContact];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_moreThanMinNumberOfParticipantsInGroup
{
  conversation = [(CKDetailsController *)self conversation];
  v3 = [conversation recipientCount] > 2;

  return v3;
}

- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 6 && (v8 = objc_msgSend(pathCopy, "row"), v8 != -[CKDetailsController rowForAddMemberCell](self, "rowForAddMemberCell")))
  {
    v10 = MEMORY[0x1E69DD058];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"REMOVE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __62__CKDetailsController_tableView_editActionsForRowAtIndexPath___block_invoke;
    v19 = &unk_1E72EF9D0;
    selfCopy = self;
    v21 = viewCopy;
    v13 = [v10 rowActionWithStyle:1 title:v12 handler:&v16];

    redColor = [MEMORY[0x1E69DC888] redColor];
    [v13 setBackgroundColor:redColor];

    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __62__CKDetailsController_tableView_editActionsForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 adjustedViewModelIndexForIndexPath:v5];
  v7 = [*(a1 + 32) conversation];
  v8 = [v7 sortedHandles];
  v10 = [v8 objectAtIndex:v6];

  v9 = [*(a1 + 40) cellForRowAtIndexPath:v5];

  [*(a1 + 32) _presentRemoveRecipientSheetForHandle:v10 fromView:v9];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (isWaldoEnabled && [pathCopy section] == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  section = [pathCopy section];
  if (section > 10)
  {
    if (section > 13)
    {
      if (section != 14)
      {
        if (section == 16)
        {
          conversation = [(CKDetailsController *)self conversation];
          chat = [conversation chat];
          participants = [chat participants];
          v17 = [participants count];

          if (v17 >= 2)
          {
            [(CKDetailsController *)self _presentGroupNameAndPhotoEditor];
          }
        }

        goto LABEL_28;
      }

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (!isKeyTransparencyEnabled)
      {
        goto LABEL_28;
      }

      tableView = [(CKDetailsController *)self tableView];
      v9 = [tableView cellForRowAtIndexPath:pathCopy];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CKDetailsController *)self showKTContactVerificationUI];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKDetailsController *)self enableEnhancedProtection];
        }
      }
    }

    else if (section == 11)
    {
      v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(CKDetailsController *)self presentLeaveActionSheetFromView:v9];
    }

    else
    {
      if (section != 12)
      {
        goto LABEL_28;
      }

      v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(CKDetailsController *)self presentDeleteAndBlockActionSheetFromView:v9];
    }

LABEL_27:

    goto LABEL_28;
  }

  if (section > 5)
  {
    if (section != 6)
    {
      if (section != 7)
      {
        goto LABEL_28;
      }

      conversation2 = [(CKDetailsController *)self conversation];
      v11 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:v7 conversation:conversation2 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

      if (v11 == 2)
      {
        [(CKDetailsController *)self stageCurrentLocation];
        goto LABEL_28;
      }

      if (v11 != 1)
      {
        if (v11)
        {
          goto LABEL_28;
        }

        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isWaldoEnabled = [mEMORY[0x1E69A8070]2 isWaldoEnabled];

        if (isWaldoEnabled)
        {
          [(CKDetailsController *)self stageLocationRequest];
          goto LABEL_28;
        }

        goto LABEL_42;
      }

LABEL_39:
      [(CKDetailsController *)self shareLocationAction];
      goto LABEL_28;
    }

    tableView2 = [(CKDetailsController *)self tableView];
    v9 = [tableView2 cellForRowAtIndexPath:pathCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !CKIsRunningInMacCatalyst())
    {
      conversation3 = [(CKDetailsController *)self conversation];
      isBusinessConversation = [conversation3 isBusinessConversation];

      if (isBusinessConversation)
      {
        [(CKDetailsController *)self _showBrandCard];
      }

      else
      {
        v25 = [pathCopy row];
        if ([(CKDetailsController *)self hasTUConversation])
        {
          v26 = -2;
        }

        else
        {
          v26 = -1;
        }

        contactsManager = [(CKDetailsController *)self contactsManager];
        v28 = [contactsManager recipientsSortedByIsContact:1 alphabetically:1];
        v29 = [v28 objectAtIndex:v26 + v25];

        view = [(CKDetailsController *)self view];
        [(CKDetailsController *)self showContactCardForEntity:v29 fromView:view];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        if ([(CKDetailsController *)self isContactsSectionCollapsed])
        {
          [(CKDetailsController *)self expandContactsSection];
        }

        else
        {
          [(CKDetailsController *)self collapseContactsSection];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKDetailsController *)self presentGroupRecipientSelectionControllerAtIndexPath:pathCopy];
        }
      }
    }

    goto LABEL_27;
  }

  if (section != 2)
  {
    if (section != 3)
    {
      goto LABEL_28;
    }

    if (v7 != 2)
    {
      if (v7 != 1)
      {
        if (!v7)
        {
          [(CKDetailsController *)self presentFullFMFMapViewController];
        }

        goto LABEL_28;
      }

LABEL_42:
      [(CKDetailsController *)self sendCurrentLocation];
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if ([(CKDetailsController *)self shouldShowSIMTypeSection])
  {
    tableView3 = [(CKDetailsController *)self tableView];
    [tableView3 reloadData];
  }

LABEL_28:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_showBrandCard
{
  conversation = [(CKDetailsController *)self conversation];
  businessHandle = [conversation businessHandle];
  brand = [businessHandle brand];

  v5 = brand;
  if (brand)
  {
    v6 = [MEMORY[0x1E69A7F28] makeBrandPlacecardForIMBrand:brand];
    navigationController = [(CKDetailsController *)self navigationController];
    [navigationController pushViewController:v6 animated:1];

    v5 = brand;
  }
}

- (void)setupKT
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isBusinessChat = [chat isBusinessChat];

  if ((isBusinessChat & 1) == 0)
  {
    [(CKDetailsController *)self getKTStatus];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];

    conversation2 = [(CKDetailsController *)self conversation];
    chat2 = [conversation2 chat];
    [chat2 fetchKTStatus];
  }
}

- (void)getKTStatus
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  obj = 0;
  v5 = [chat keyTransparencyStatusForAffectedHandles:&obj];
  objc_storeStrong(&self->_ktHandlesForKtChatStatus, obj);
  v6 = 0;
  self->_ktChatState = v5;
  if (v5 - 1 <= 0x12)
  {
    v6 = qword_190DD0558[v5 - 1];
  }

  self->_ktEnhancedProtectionStatusCellState = v6;
  if (self->_groupPhotoHeaderViewController)
  {
    [(CKDetailsController *)self _configureGroupPhotoHeader];
  }
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  [(CKDetailsController *)self getKTStatus];
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)_lastAddressedHandleUpdateNotification:(id)notification
{
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)_reloadForReadReceiptVisibilityChangeIfNeeded:(id)needed
{
  wasShowingReadReceiptSwitch = [(CKDetailsController *)self wasShowingReadReceiptSwitch];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  supportsSendingReadReceipts = [chat supportsSendingReadReceipts];

  if (wasShowingReadReceiptSwitch != supportsSendingReadReceipts)
  {
    tableView = [(CKDetailsController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_chatAutoDonatingHandleUpdateNotification:(id)notification
{
  notificationCopy = notification;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  object = [notificationCopy object];

  if (object != chat)
  {
    deviceIndependentID = [chat deviceIndependentID];
    deviceIndependentID2 = [object deviceIndependentID];
    v9 = [deviceIndependentID isEqualToString:deviceIndependentID2];

    if (!v9)
    {
      goto LABEL_5;
    }

    [chat setAutoDonationBehavior:{objc_msgSend(object, "autoDonationBehavior")}];
  }

  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];

LABEL_5:
}

- (void)_handleAddressBookChanged:(id)changed
{
  changedCopy = changed;
  conversation = [(CKDetailsController *)self conversation];
  _groupPhotoHeaderRequiredContactKeys = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
  v6 = [conversation conversationVisualIdentityWithKeys:_groupPhotoHeaderRequiredContactKeys requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
  [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v6];
  [(CKDetailsController *)self _chatAutoDonatingHandleUpdateNotification:changedCopy];
}

- (void)_conversationListFinishedMerging:(id)merging
{
  v17 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  conversation = [(CKDetailsController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  chat = [conversation chat];
  guid = [chat guid];
  v9 = [v6 conversationForExistingChatWithGUID:guid];

  if (v9)
  {
    if (conversation != v9)
    {
      [(CKDetailsController *)self setConversation:v9];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = conversation;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating details view conversation to %@ from %@", &v13, 0x16u);
        }
      }
    }
  }

  else if (conversation)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = conversation;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKDetailsController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v13, 0xCu);
      }
    }

    detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
    [detailsControllerDelegate dismissDetailsNavigationController];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CKDetailsController *)self setGroupPhotoHeaderHeight:change, -1.0];

  [(CKDetailsController *)self setSimLabelCellHeight:-1.0];
}

- (void)_handleGroupPhotoChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = changedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupPhotoChangedNotification _handleGroupPhotoChanged called on details controller %@ with notification %@", buf, 0x16u);
    }
  }

  object = [changedCopy object];
  chatIdentifier = [object chatIdentifier];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  chatIdentifier2 = [chat chatIdentifier];
  v11 = [chatIdentifier isEqual:chatIdentifier2];

  if (v11)
  {
    conversation2 = [(CKDetailsController *)self conversation];
    userInfo = [changedCopy userInfo];
    v14 = [userInfo valueForKey:@"sender"];
    conversation3 = [(CKDetailsController *)self conversation];
    [conversation3 updateConversationVisualIdentityGroupPhotoWithSender:v14];

    if (self->_groupPhotoHeaderViewController)
    {
      _groupPhotoHeaderRequiredContactKeys = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
      v17 = [conversation2 conversationVisualIdentityWithKeys:_groupPhotoHeaderRequiredContactKeys requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v17];
      if (!self->_groupPhotoCell)
      {
        v21 = [CKGroupPhotoCell alloc];
        v18 = +[CKGroupPhotoCell reuseIdentifier];
        v19 = [(CKGroupPhotoCell *)v21 initWithStyle:0 reuseIdentifier:v18];
        groupPhotoCell = self->_groupPhotoCell;
        self->_groupPhotoCell = v19;
      }

      self->_needsContactsReload = 1;
    }
  }
}

- (void)_handleGroupDisplayNameChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = changedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupDisplayNameChangedNotification _handleGroupDisplayNameChanged called on details controller %@ with notification %@", &v16, 0x16u);
    }
  }

  object = [changedCopy object];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v9 = [object isEqual:chat];

  if (v9)
  {
    userInfo = [changedCopy userInfo];
    v11 = [userInfo valueForKey:@"sender"];
    conversation2 = [(CKDetailsController *)self conversation];
    [conversation2 updateConversationVisualIdentityDisplayNameWithSender:v11];

    if (self->_groupPhotoHeaderViewController)
    {
      _groupPhotoHeaderRequiredContactKeys = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
      conversation3 = [(CKDetailsController *)self conversation];
      v15 = [conversation3 conversationVisualIdentityWithKeys:_groupPhotoHeaderRequiredContactKeys requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v15];
    }
  }
}

- (void)_chatParticipantsChangedNotification:(id)notification
{
  conversation = [(CKDetailsController *)self conversation];
  if ([conversation isGroupConversation] && self->_groupPhotoHeaderViewController)
  {
    [conversation setNeedsUpdatedContactOrderForVisualIdentity];
    _groupPhotoHeaderRequiredContactKeys = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
    v5 = [conversation conversationVisualIdentityWithKeys:_groupPhotoHeaderRequiredContactKeys requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
    [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v5];
    self->_needsContactsReload = 1;
    [(CKDetailsController *)self _configureGroupPhotoHeader];
  }
}

- (id)locationFooterViewForSection:(int64_t)section
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsLocationShareHeaderFooterView reuseIdentifier];
  [tableView registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsLocationShareHeaderFooterView reuseIdentifier];
  v43 = tableView;
  v42 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v7];

  locationSharingTextView = [(CKDetailsController *)self locationSharingTextView];
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  activeDevice = [mEMORY[0x1E69A5B70] activeDevice];

  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"LOCATION_CURRENTLY_SHARING_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
  deviceName = [activeDevice deviceName];
  v15 = [v11 stringWithFormat:v13, deviceName];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"LOCATION_SHARE_FROM_THIS_DEVICE" value:&stru_1F04268F8 table:@"ChatKit"];

  v41 = activeDevice;
  if (-[CKDetailsController fmfRestricted](self, "fmfRestricted") || CKIsRunningInMacCatalyst() || ([activeDevice isThisDevice] & 1) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v19, v21];
  }

  v23 = v22;
  v24 = [v22 rangeOfString:v21];
  v39 = v25;
  v40 = v24;
  v26 = [v23 length];
  v27 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v23];
  v28 = *MEMORY[0x1E69DB648];
  v29 = +[CKUIBehavior sharedBehaviors];
  headerFont = [v29 headerFont];
  [v27 addAttribute:v28 value:headerFont range:{0, v26}];

  v31 = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v27 addAttribute:v31 value:secondaryLabelColor range:{0, v26}];

  if (![(CKDetailsController *)self fmfRestricted]&& !CKIsRunningInMacCatalyst())
  {
    v38 = +[CKUIBehavior sharedBehaviors];
    theme = [v38 theme];
    appTintColor = [theme appTintColor];
    [v27 addAttribute:v31 value:appTintColor range:{v40, v39}];

    v35 = *MEMORY[0x1E69DB670];
    v36 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F04268F8];
    [v27 addAttribute:v35 value:v36 range:{v40, v39}];

    [v27 addAttribute:*MEMORY[0x1E69DB758] value:MEMORY[0x1E695E110] range:{v40, v39}];
  }

  [locationSharingTextView setAttributedText:v27];
  [locationSharingTextView setDelegate:self];
  [v42 setLocationSharingTextView:locationSharingTextView];

  return v42;
}

- (id)expanseActivityHeaderViewForSection:(int64_t)section
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsExpanseActivityHeaderView reuseIdentifier];
  [tableView registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsExpanseActivityHeaderView reuseIdentifier];
  v8 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v7];

  expanseActivityTextView = [(CKDetailsController *)self expanseActivityTextView];
  [v8 setExpanseActivityTextView:expanseActivityTextView];

  return v8;
}

- (id)businessInfoFooterViewForSection:(int64_t)section
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsBusinessInfoHeaderFooterView reuseIdentifier];
  [tableView registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsBusinessInfoHeaderFooterView reuseIdentifier];
  v8 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v7];

  businessInfoView = [(CKDetailsController *)self businessInfoView];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"BUSINESS_DESCRIPTION_IN_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  [businessInfoView setDescriptionText:v11];

  [v8 setBusinessInfoView:businessInfoView];

  return v8;
}

- (id)sharedWithYouFooterView
{
  tableView = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKDetailsSharedWithYouHeaderFooterView reuseIdentifier];
  [tableView registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  v6 = +[CKDetailsSharedWithYouHeaderFooterView reuseIdentifier];
  v7 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v6];

  sharedWithYouFooterTextView = [(CKDetailsController *)self sharedWithYouFooterTextView];
  [v7 setSharedWithYouTextView:sharedWithYouFooterTextView];

  return v7;
}

- (id)downloadAttachmentsFooterViewForSection:(int64_t)section
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsDownloadAttachmentsHeaderFooterView reuseIdentifier];
  [tableView registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsDownloadAttachmentsHeaderFooterView reuseIdentifier];
  v8 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v7];

  [v8 setDelegate:self];

  return v8;
}

- (void)_updateDownloadFooterView
{
  downloadAttachmentsText = [(CKDetailsController *)self downloadAttachmentsText];
  downloadButtonText = [(CKDetailsController *)self downloadButtonText];
  downloadAttachmentsFooterView = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [downloadAttachmentsFooterView setTitleText:downloadAttachmentsText];

  downloadAttachmentsFooterView2 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [downloadAttachmentsFooterView2 setButtonText:downloadButtonText];

  if ([(CKDetailsController *)self downloadButtonState]== 2)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    secondaryLabelColor = [theme appTintColor];
  }

  downloadAttachmentsFooterView3 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [downloadAttachmentsFooterView3 setDownloadButtonTextColor:secondaryLabelColor];

  downloadAttachmentsFooterView4 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [downloadAttachmentsFooterView4 setLogoHidden:{-[CKDetailsController isDisplayingPhotos](self, "isDisplayingPhotos")}];
}

- (id)expanseActivityCellForIndexPath:(id)path
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  [tableView registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [CKDetailsExpanseActivityCell alloc];
  v8 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  tuConversation = [(CKDetailsController *)self tuConversation];
  v10 = [(CKDetailsExpanseActivityCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:tuConversation];

  return v10;
}

- (id)leaveCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"leaveCell_reuseIdentifier"];

  tableView2 = [(CKDetailsController *)self tableView];
  v7 = [tableView2 dequeueReusableCellWithIdentifier:@"leaveCell_reuseIdentifier" forIndexPath:pathCopy];

  textLabel = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"LEAVE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v10];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [textLabel setTextColor:systemRedColor];

  if ([(CKDetailsController *)self conversationHasLeft])
  {
    [textLabel setEnabled:0];
  }

  else
  {
    conversation = [(CKDetailsController *)self conversation];
    [textLabel setEnabled:{objc_msgSend(conversation, "canLeave")}];
  }

  [textLabel setNumberOfLines:0];
  v13 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v13 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    LODWORD(v15) = 0.5;
    [textLabel _setHyphenationFactor:v15];
  }

  topSeperator = [v7 topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [v7 bottomSeperator];
  [bottomSeperator setHidden:1];

  return v7;
}

- (id)deleteAndBlockCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"deleteAndBlockCell_reuseIdentifier"];

  tableView2 = [(CKDetailsController *)self tableView];
  v7 = [tableView2 dequeueReusableCellWithIdentifier:@"deleteAndBlockCell_reuseIdentifier" forIndexPath:pathCopy];

  textLabel = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"DELETE_AND_BLOCK_THIS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v10];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [textLabel setTextColor:systemRedColor];

  [textLabel setEnabled:1];
  [textLabel setNumberOfLines:0];
  v12 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v10) = [v12 isAccessibilityPreferredContentSizeCategory];

  if (v10)
  {
    LODWORD(v13) = 0.5;
    [textLabel _setHyphenationFactor:v13];
  }

  topSeperator = [v7 topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [v7 bottomSeperator];
  [bottomSeperator setHidden:1];

  return v7;
}

- (id)simTypeCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CKDetailsSIM_reuseIdentifier"];

  tableView2 = [(CKDetailsController *)self tableView];
  v7 = [tableView2 dequeueReusableCellWithIdentifier:@"CKDetailsSIM_reuseIdentifier" forIndexPath:pathCopy];

  textLabel = [v7 textLabel];
  [textLabel setNumberOfLines:0];
  v9 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v9 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    LODWORD(v11) = 0.5;
    [textLabel _setHyphenationFactor:v11];
  }

  bottomSeperator = [v7 bottomSeperator];
  [bottomSeperator setHidden:1];

  topSeperator = [v7 topSeperator];
  [topSeperator setHidden:1];

  return v7;
}

- (id)groupPhotoCellForIndexPath:(id)path
{
  groupPhotoCell = self->_groupPhotoCell;
  if (!groupPhotoCell)
  {
    [(CKDetailsController *)self _configureGroupPhotoHeader];
    [(CKDetailsController *)self addChildViewController:self->_groupPhotoHeaderViewController];
    groupPhotoCell = self->_groupPhotoCell;
  }

  return groupPhotoCell;
}

- (id)groupNameCellForIndexPath:(id)path
{
  groupNameCell = [(CKDetailsController *)self groupNameCell];
  if (!groupNameCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v6 = objc_opt_class();
    v7 = +[CKDetailsGroupNameCell reuseIdentifier];
    [tableView registerClass:v6 forCellReuseIdentifier:v7];

    v8 = [CKDetailsGroupNameCell alloc];
    v9 = [(CKDetailsGroupNameCell *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKDetailsController *)self setGroupNameCell:v9];
    groupNameView = [(CKDetailsController *)self groupNameView];
    [(CKDetailsGroupNameCell *)v9 setGroupNameView:groupNameView];
  }

  groupNameView2 = [(CKDetailsController *)self groupNameView];
  tableView2 = [(CKDetailsController *)self tableView];
  v13 = [(CKDetailsController *)self tableView:tableView2 numberOfRowsInSection:3];

  if (v13 > 0 || CKIsRunningInMacCatalyst())
  {
    groupNameCell2 = [(CKDetailsController *)self groupNameCell];
    topSeperator = [groupNameCell2 topSeperator];
    [topSeperator setHidden:1];
  }

  groupNameCell3 = [(CKDetailsController *)self groupNameCell];
  bottomSeperator = [groupNameCell3 bottomSeperator];
  [bottomSeperator setHidden:1];

  groupNameCell4 = [(CKDetailsController *)self groupNameCell];

  return groupNameCell4;
}

- (CKDetailsAddGroupNameView)groupNameView
{
  groupNameView = self->_groupNameView;
  if (!groupNameView)
  {
    v4 = [CKDetailsAddGroupNameView alloc];
    v5 = [(CKDetailsAddGroupNameView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_groupNameView;
    self->_groupNameView = v5;

    groupNameView = self->_groupNameView;
  }

  conversation = [(CKDetailsController *)self conversation];
  displayName = [conversation displayName];
  [(CKDetailsAddGroupNameView *)groupNameView setGroupName:displayName];

  [(CKDetailsAddGroupNameView *)self->_groupNameView setEnabled:[(CKDetailsController *)self conversationHasLeft]^ 1];
  [(CKDetailsAddGroupNameView *)self->_groupNameView setDelegate:self];
  v9 = self->_groupNameView;

  return v9;
}

- (id)fmfViewControllerCellForIndexPath:(id)path shouldShowLocation:(BOOL)location
{
  locationCopy = location;
  v73 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy row])
  {
    mapViewCell10 = -[CKDetailsController locationShareCellForIndexPathRow:](self, "locationShareCellForIndexPathRow:", [pathCopy row] - 1);
    goto LABEL_41;
  }

  tableView = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsMapViewCell reuseIdentifier];
  [tableView registerClass:v9 forCellReuseIdentifier:v10];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v9) = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (v9)
  {
    findMyWaldoMapViewController = [(CKDetailsController *)self findMyWaldoMapViewController];
    if (!findMyWaldoMapViewController)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v13 = getFMUILocationDetailViewControllerClass_softClass;
      v68 = getFMUILocationDetailViewControllerClass_softClass;
      if (!getFMUILocationDetailViewControllerClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v70 = __getFMUILocationDetailViewControllerClass_block_invoke;
        v71 = &unk_1E72EB968;
        v72 = &v65;
        __getFMUILocationDetailViewControllerClass_block_invoke(&buf);
        v13 = v66[3];
      }

      v14 = v13;
      _Block_object_dispose(&v65, 8);
      array = [MEMORY[0x1E695DF70] array];
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      participants = [chat participants];
      v19 = [participants __imArrayByApplyingBlock:&__block_literal_global_55];
      [array addObjectsFromArray:v19];

      findMyWaldoMapViewController = objc_alloc_init(v13);
      if (!findMyWaldoMapViewController)
      {
        goto LABEL_34;
      }

      if (objc_opt_respondsToSelector())
      {
        [findMyWaldoMapViewController setDelegate:self];
      }

      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v20 = getFMUILocationDetailViewControllerViewOptionsClass_softClass;
      v68 = getFMUILocationDetailViewControllerViewOptionsClass_softClass;
      if (!getFMUILocationDetailViewControllerViewOptionsClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v70 = __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke;
        v71 = &unk_1E72EB968;
        v72 = &v65;
        __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke(&buf);
        v20 = v66[3];
      }

      v21 = v20;
      _Block_object_dispose(&v65, 8);
      if (v20 && (objc_opt_respondsToSelector() & 1) != 0 && (([v20 messagesChatDetails], mapView = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v23 = 0) : (v23 = mapView), v24 = v23, mapView, v24))
      {
        if (objc_opt_respondsToSelector())
        {
          [findMyWaldoMapViewController setViewOptions:v24];
        }
      }

      else
      {
        mapView = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        groupPhotoHeaderViewController = [(CKDetailsController *)self groupPhotoHeaderViewController];
        displayNameForGroupIdentity = [groupPhotoHeaderViewController displayNameForGroupIdentity];

        conversation2 = [(CKDetailsController *)self conversation];
        lastAddressedHandle = [conversation2 lastAddressedHandle];
        [findMyWaldoMapViewController startObservingHandles:array callerHandle:lastAddressedHandle groupName:displayNameForGroupIdentity];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_32:
          [(CKDetailsController *)self setFindMyWaldoMapViewController:findMyWaldoMapViewController, v65];
          [findMyWaldoMapViewController willMoveToParentViewController:self];
          [(CKDetailsController *)self addChildViewController:findMyWaldoMapViewController];
          [findMyWaldoMapViewController didMoveToParentViewController:self];
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

        displayNameForGroupIdentity = [(CKDetailsController *)self conversation];
        conversation2 = [displayNameForGroupIdentity lastAddressedHandle];
        [findMyWaldoMapViewController setRemoteParticipantHandles:array localParticipantHandle:conversation2];
      }

      goto LABEL_32;
    }
  }

  else
  {
    findMyWaldoMapViewController = [(CKDetailsController *)self mapViewController];
    if (!findMyWaldoMapViewController)
    {
      v25 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMFUI");
      conversation3 = [(CKDetailsController *)self conversation];
      chat2 = [conversation3 chat];
      participants2 = [chat2 participants];
      array = [(CKDetailsController *)self fmfHandlesFromIMHandles:participants2];

      findMyWaldoMapViewController = [[v25 alloc] initSimpleMapWithDelegate:self handles:array];
      v29 = +[CKUIBehavior sharedBehaviors];
      theme = [v29 theme];
      appTintColor = [theme appTintColor];
      [findMyWaldoMapViewController setAnnotationTintColor:appTintColor];

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = @"NO";
          _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Enable Map Controls? %@", &buf, 0xCu);
        }
      }

      view = [findMyWaldoMapViewController view];
      [view setUserInteractionEnabled:0];

      mapView = [findMyWaldoMapViewController mapView];
      [mapView setZoomEnabled:0];
      [mapView setScrollEnabled:0];
      [mapView setPitchEnabled:0];
      [mapView setRotateEnabled:0];
      [(CKDetailsController *)self setMapViewController:findMyWaldoMapViewController];
      [findMyWaldoMapViewController willMoveToParentViewController:self];
      [(CKDetailsController *)self addChildViewController:findMyWaldoMapViewController];
      [findMyWaldoMapViewController didMoveToParentViewController:self];
      goto LABEL_33;
    }
  }

LABEL_35:
  view2 = [findMyWaldoMapViewController view];

  mapViewCell = [(CKDetailsController *)self mapViewCell];
  v40 = mapViewCell == 0;

  if (v40)
  {
    tableView2 = [(CKDetailsController *)self tableView];
    v42 = +[CKDetailsMapViewCell reuseIdentifier];
    v43 = [tableView2 dequeueReusableCellWithIdentifier:v42 forIndexPath:pathCopy];
    [(CKDetailsController *)self setMapViewCell:v43];

    if (locationCopy)
    {
      mapViewCell2 = [(CKDetailsController *)self mapViewCell];
      [mapViewCell2 setShouldShowLocationString:1];

      if (!self->_locationStringCell)
      {
        conversation4 = [(CKDetailsController *)self conversation];
        recipients = [conversation4 recipients];
        firstObject = [recipients firstObject];

        v48 = [CKDetailsLocationStringCell alloc];
        v49 = [(CKDetailsLocationStringCell *)v48 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        locationStringCell = self->_locationStringCell;
        self->_locationStringCell = v49;

        v51 = self->_locationStringCell;
        mapViewCell3 = [(CKDetailsController *)self mapViewCell];
        contentView = [mapViewCell3 contentView];
        [contentView layoutMargins];
        [(CKDetailsLocationStringCell *)v51 setLayoutMargins:?];

        [(CKDetailsController *)self updateLocationForRecipient:firstObject];
        mapViewCell4 = [(CKDetailsController *)self mapViewCell];
        [mapViewCell4 setLocationStringView:self->_locationStringCell];
      }
    }

    mapViewCell5 = [(CKDetailsController *)self mapViewCell];
    [mapViewCell5 setMapView:view2];

    mapViewCell6 = [(CKDetailsController *)self mapViewCell];
    contentView2 = [mapViewCell6 contentView];
    mapViewCell7 = [(CKDetailsController *)self mapViewCell];
    topSeperator = [mapViewCell7 topSeperator];
    [contentView2 bringSubviewToFront:topSeperator];

    mapViewCell8 = [(CKDetailsController *)self mapViewCell];
    contentView3 = [mapViewCell8 contentView];
    mapViewCell9 = [(CKDetailsController *)self mapViewCell];
    bottomSeperator = [mapViewCell9 bottomSeperator];
    [contentView3 bringSubviewToFront:bottomSeperator];
  }

  mapViewCell10 = [(CKDetailsController *)self mapViewCell];

LABEL_41:

  return mapViewCell10;
}

- (void)initializeLocationSharingTextViewIfNecessary
{
  locationSharingTextView = [(CKDetailsController *)self locationSharingTextView];
  if (!locationSharingTextView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v9 setEditable:0];
    textContainer = [v9 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [v9 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [v9 setBackgroundColor:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:secondaryLabelColor];

    [v9 setScrollEnabled:0];
    v7 = +[CKUIBehavior sharedBehaviors];
    headerFont = [v7 headerFont];
    [v9 setFont:headerFont];

    [v9 setDelegate:self];
    [(CKDetailsController *)self setLocationSharingTextView:v9];
    locationSharingTextView = v9;
  }
}

- (void)initializeBusinessInfoViewIfNecessary
{
  businessInfoView = [(CKDetailsController *)self businessInfoView];
  if (!businessInfoView)
  {
    v4 = [[CKBusinessInfoView alloc] initWithLayoutType:1];
    [(CKBusinessInfoView *)v4 setDelegate:self];
    [(CKDetailsController *)self setBusinessInfoView:v4];
    businessInfoView = v4;
  }
}

- (id)groupCountCellForIndexPath:(id)path
{
  pathCopy = path;
  if ([(CKDetailsController *)self shouldShowGroupCount])
  {
    tableView = [(CKDetailsController *)self tableView];
    v6 = objc_opt_class();
    v7 = +[CKDetailsGroupCountCell reuseIdentifier];
    [tableView registerClass:v6 forCellReuseIdentifier:v7];

    tableView2 = [(CKDetailsController *)self tableView];
    v9 = +[CKDetailsGroupCountCell reuseIdentifier];
    v10 = [tableView2 dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

    v11 = MEMORY[0x1E696AEC0];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"DETAILS_VIEW_GROUP_COUNT_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v16 = [v11 localizedStringWithFormat:v13, objc_msgSend(contactsViewModels, "count")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v19 = @"\u200F";
    }

    else
    {
      v19 = @"\u200E";
    }

    v20 = [(__CFString *)v19 stringByAppendingString:v16];

    v21 = [v20 length];
    v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20];
    v23 = *MEMORY[0x1E69DB648];
    v24 = +[CKUIBehavior sharedBehaviors];
    headerFont = [v24 headerFont];
    [v22 addAttribute:v23 value:headerFont range:{0, v21}];

    v26 = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v22 addAttribute:v26 value:secondaryLabelColor range:{0, v21}];

    textLabel = [v10 textLabel];
    [textLabel setAttributedText:v22];

    topSeperator = [v10 topSeperator];
    [topSeperator setHidden:0];

    bottomSeperator = [v10 bottomSeperator];
    [bottomSeperator setHidden:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contactsManagerCellForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  visibleContactsRows = [(CKDetailsController *)self visibleContactsRows];
  isContactsSectionCollapsible = [(CKDetailsController *)self isContactsSectionCollapsible];
  shouldAddToVisibleContactRowCountForTUConversation = [(CKDetailsController *)self shouldAddToVisibleContactRowCountForTUConversation];
  if (v5 == [(CKDetailsController *)self rowForTUConversationCell])
  {
    v9 = [(CKDetailsController *)self tuConversationCellForIndexPath:pathCopy];
LABEL_5:
    v13 = v9;
    goto LABEL_6;
  }

  if (v5 == [(CKDetailsController *)self rowForShowMoreContactsCell])
  {
    tableView = [(CKDetailsController *)self tableView];
    v11 = objc_opt_class();
    v12 = +[CKDetailsGroupHeaderCell reuseIdentifier];
    [tableView registerClass:v11 forCellReuseIdentifier:v12];

    v9 = [(CKDetailsController *)self groupHeaderCellForIndexPath:pathCopy];
    goto LABEL_5;
  }

  if (v5 >= visibleContactsRows + isContactsSectionCollapsible + shouldAddToVisibleContactRowCountForTUConversation)
  {
    if (v5 == [(CKDetailsController *)self rowForAddMemberCell])
    {
      tableView2 = [(CKDetailsController *)self tableView];
      v31 = +[CKDetailsAddMemberCell cellClass];
      v32 = +[CKDetailsAddMemberCell reuseIdentifier];
      [tableView2 registerClass:v31 forCellReuseIdentifier:v32];

      tableView3 = [(CKDetailsController *)self tableView];
      v34 = +[CKDetailsAddMemberCell reuseIdentifier];
      v13 = [tableView3 dequeueReusableCellWithIdentifier:v34 forIndexPath:pathCopy];

      [v13 setEnabled:{-[CKDetailsController shouldEnableAddContactButton](self, "shouldEnableAddContactButton")}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    tableView4 = [(CKDetailsController *)self tableView];
    v16 = +[CKDetailsContactsTableViewCell cellClass];
    v17 = +[CKDetailsContactsTableViewCell reuseIdentifier];
    [tableView4 registerClass:v16 forCellReuseIdentifier:v17];

    tableView5 = [(CKDetailsController *)self tableView];
    v19 = +[CKDetailsContactsTableViewCell reuseIdentifier];
    v13 = [tableView5 dequeueReusableCellWithIdentifier:v19 forIndexPath:pathCopy];

    v20 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:pathCopy];
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v23 = [contactsViewModels objectAtIndex:v20];

    [v13 configureWithViewModel:v23];
    contactAvatarView = [v13 contactAvatarView];
    [contactAvatarView setDelegate:self];
    [contactAvatarView setShowsContactOnTap:0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    _supportsForceTouch = [currentDevice _supportsForceTouch];

    if (_supportsForceTouch)
    {
      [contactAvatarView setForcePressView:v13];
      [contactAvatarView setUserInteractionEnabled:1];
      [contactAvatarView setShowsActionsOnForcePress:1];
    }

    conversation = [(CKDetailsController *)self conversation];
    shouldHaveRoundRectAvatar = [conversation shouldHaveRoundRectAvatar];

    [contactAvatarView setStyle:shouldHaveRoundRectAvatar];
    [v13 setDelegate:self];
    if ([pathCopy row] == 1 && -[CKDetailsController hasTUConversation](self, "hasTUConversation") && !-[CKDetailsController isContactsSectionCollapsed](self, "isContactsSectionCollapsed"))
    {
      topSeperator = [v13 topSeperator];
      [topSeperator setHidden:1];
    }
  }

LABEL_6:
  [(CKDetailsController *)self _configureSeparatorForContactCell:v13 indexPath:pathCopy];

  return v13;
}

- (id)tuConversationCellForIndexPath:(id)path
{
  tableView = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsTUConversationCell reuseIdentifier];
  [tableView registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [CKDetailsTUConversationCell alloc];
  v8 = +[CKDetailsTUConversationCell reuseIdentifier];
  tuConversation = [(CKDetailsController *)self tuConversation];
  v10 = [(CKDetailsTUConversationCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:tuConversation];

  return v10;
}

- (id)groupHeaderCellForIndexPath:(id)path
{
  v4 = [CKDetailsGroupHeaderCell alloc];
  v5 = +[CKDetailsGroupHeaderCell reuseIdentifier];
  contactsManager = [(CKDetailsController *)self contactsManager];
  v7 = [contactsManager recipientsSortedByIsContact:1 alphabetically:0];
  v8 = [(CKDetailsGroupHeaderCell *)v4 initWithStyle:0 reuseIdentifier:v5 participants:v7];

  [(CKDetailsGroupHeaderCell *)v8 configureCellIconForCollapsedState:[(CKDetailsController *)self isContactsSectionCollapsed]];

  return v8;
}

- (id)indexPathForCell:(id)cell
{
  v25 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  tableView = [(CKDetailsController *)self tableView];
  visibleCells = [tableView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(visibleCells);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        contentView = [v12 contentView];
        subviews = [contentView subviews];
        v15 = [subviews containsObject:cellCopy];

        if (v15)
        {
          tableView2 = [(CKDetailsController *)selfCopy tableView];
          v17 = [tableView2 indexPathForCell:v12];

          v9 = v17;
        }
      }

      v8 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contactsCellDidTapPhoneButton:(id)button
{
  buttonCopy = button;
  tableView = [(CKDetailsController *)self tableView];
  v20 = [tableView indexPathForCell:buttonCopy];

  conversation = [(CKDetailsController *)self conversation];
  LODWORD(tableView) = [conversation isBusinessConversation];

  if (tableView)
  {
    v7 = objc_alloc(MEMORY[0x1E69A5A78]);
    iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
    v9 = [v7 initWithService:iMessageService];

    conversation2 = [(CKDetailsController *)self conversation];
    businessHandle = [conversation2 businessHandle];
    brand = [businessHandle brand];
    primaryPhoneNumber = [brand primaryPhoneNumber];

    if ([primaryPhoneNumber length])
    {
      v14 = [objc_alloc(MEMORY[0x1E69A5B90]) initWithAccount:v9 ID:primaryPhoneNumber alreadyCanonical:1];
      v15 = [[CKEntity alloc] initWithIMHandle:v14];
      contactsManager = [(CKDetailsController *)self contactsManager];
      [contactsManager startCommunicationForEntity:v15 action:2 address:0];
    }
  }

  else
  {
    v17 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v20];
    contactsManager2 = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager2 contactsViewModels];
    v9 = [contactsViewModels objectAtIndex:v17];

    primaryPhoneNumber = [(CKDetailsController *)self contactsManager];
    [primaryPhoneNumber startCommunicationForViewModel:v9 action:2 address:0];
  }
}

- (void)contactsCellDidTapMessagesButton:(id)button
{
  buttonCopy = button;
  tableView = [(CKDetailsController *)self tableView];
  v11 = [tableView indexPathForCell:buttonCopy];

  v6 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v11];
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v9 = [contactsViewModels objectAtIndex:v6];

  contactsManager2 = [(CKDetailsController *)self contactsManager];
  [contactsManager2 startCommunicationForViewModel:v9 action:4 address:0];
}

- (void)contactsCellDidTapFaceTimeVideoButton:(id)button
{
  buttonCopy = button;
  tableView = [(CKDetailsController *)self tableView];
  v11 = [tableView indexPathForCell:buttonCopy];

  v6 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v11];
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v9 = [contactsViewModels objectAtIndex:v6];

  contactsManager2 = [(CKDetailsController *)self contactsManager];
  [contactsManager2 startCommunicationForViewModel:v9 action:0 address:0];
}

- (void)contactsCell:(id)cell didHoverWithState:(int64_t)state
{
  cellCopy = cell;
  tableView = [(CKDetailsController *)self tableView];
  visibleCells = [tableView visibleCells];
  if ([visibleCells containsObject:cellCopy])
  {
    shouldShowGroupCount = [(CKDetailsController *)self shouldShowGroupCount];

    if (shouldShowGroupCount)
    {
      if (state == 3)
      {
        [cellCopy _hideAllButtons];
      }

      else if (state == 1)
      {
        [cellCopy _updateVisibleButtons];
      }
    }
  }

  else
  {
  }
}

- (void)groupCellDidTapFaceTimeVideoButton:(id)button
{
  if (CKIsRunningInMacCatalyst())
  {
    contactsManager = [(CKDetailsController *)self contactsManager];
    [contactsManager beginFacetimeCallWithVideo:1];
  }
}

- (void)groupCellDidTapPhoneButton:(id)button
{
  if (CKIsRunningInMacCatalyst())
  {
    contactsManager = [(CKDetailsController *)self contactsManager];
    [contactsManager beginFacetimeCallWithVideo:0];
  }
}

- (void)_configureSeparatorForContactCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v7 = [pathCopy row];
  section = [pathCopy section];

  tableView = [(CKDetailsController *)self tableView];
  v10 = [(CKDetailsController *)self tableView:tableView numberOfRowsInSection:section];

  if (v7)
  {
    if (v7 < 1)
    {
      goto LABEL_9;
    }

    if (v7 == [(CKDetailsController *)self rowForFirstContactCell])
    {
      topSeperator = [cellCopy topSeperator];
      [topSeperator setHidden:1];
    }

    bottomSeperator = [cellCopy bottomSeperator];
    [bottomSeperator setHidden:1];

    if (!CKIsRunningInMacCatalyst())
    {
      [cellCopy setIndentTopSeperator:1];
      goto LABEL_9;
    }
  }

  else
  {
    [cellCopy setIndentBottomSeperator:1];
    bottomSeperator2 = [cellCopy bottomSeperator];
    [bottomSeperator2 setHidden:0];

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }
  }

  topSeperator2 = [cellCopy topSeperator];
  [topSeperator2 setHidden:1];

LABEL_9:
  if ([(CKDetailsController *)self hasTUConversation])
  {
    if (v7 == [(CKDetailsController *)self rowForFirstContactCell])
    {
      topSeperator3 = [cellCopy topSeperator];
      [topSeperator3 setHidden:1];
    }

    if (v7 == [(CKDetailsController *)self rowForShowMoreContactsCell])
    {
      topSeperator4 = [cellCopy topSeperator];
      [topSeperator4 setHidden:1];

      bottomSeperator3 = [cellCopy bottomSeperator];
      [bottomSeperator3 setHidden:0];

      [cellCopy setIndentBottomSeperator:1];
    }
  }

  v18 = v10 - 1;
  if (v7 == v10 - 2)
  {
    bottomSeperator4 = [cellCopy bottomSeperator];
    [bottomSeperator4 setHidden:0];

    [cellCopy setIndentBottomSeperator:1];
  }

  v20 = cellCopy;
  if (v7 == v18)
  {
    bottomSeperator5 = [cellCopy bottomSeperator];
    [bottomSeperator5 setHidden:1];

    if (!v7)
    {
      [cellCopy setIndentTopSeperator:0];
    }

    topSeperator5 = [cellCopy topSeperator];
    [topSeperator5 setHidden:1];

    v20 = cellCopy;
  }
}

- (void)_configureSeparatorForOptionCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  v6 = [path row] == 0;
  topSeperator = [cellCopy topSeperator];
  [topSeperator setHidden:v6];

  bottomSeperator = [cellCopy bottomSeperator];

  [bottomSeperator setHidden:1];
}

- (id)switchSubscriptionCellForIndexPathRow:(int64_t)row
{
  simSwitchCell = [(CKDetailsController *)self simSwitchCell];
  if (+[CKSenderIdentity fromPickerEnabled])
  {
    simSwitcherMenu = [(CKDetailsController *)self simSwitcherMenu];
    [simSwitchCell setMenu:simSwitcherMenu];

    labelForChat = [(CKDetailsController *)self labelForChat];
    if ([labelForChat length])
    {
      textLabel = [simSwitchCell textLabel];
      v8 = [(CKDetailsController *)self simCellText:labelForChat];
      [textLabel setText:v8];
    }
  }

  bottomSeperator = [simSwitchCell bottomSeperator];
  [bottomSeperator setHidden:1];

  topSeperator = [simSwitchCell topSeperator];
  [topSeperator setHidden:1];

  return simSwitchCell;
}

- (id)locationShareCellForIndexPathRow:(int64_t)row
{
  conversation = [(CKDetailsController *)self conversation];
  v6 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:row conversation:conversation isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

  if (v6 == 2)
  {
    _tableViewCellForSendCurrentLocation = [(CKDetailsController *)self _tableViewCellForSendCurrentLocation];
  }

  else if (v6 == 1)
  {
    _tableViewCellForSendCurrentLocation = [(CKDetailsController *)self _tableViewCellForSharingLocation:[(CKDetailsController *)self allRecipientsAlreadyFollowingLocation]];
  }

  else if (v6)
  {
    _tableViewCellForSendCurrentLocation = 0;
  }

  else
  {
    _tableViewCellForSendCurrentLocation = [(CKDetailsController *)self _tableViewCellForSendOrRequestLocation];
  }

  return _tableViewCellForSendCurrentLocation;
}

- (id)_tableViewCellForSendOrRequestLocation
{
  locationSendOrRequestCell = [(CKDetailsController *)self locationSendOrRequestCell];
  textLabel = [locationSendOrRequestCell textLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  detailsTextColor = [theme detailsTextColor];
  [textLabel setTextColor:detailsTextColor];

  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v10 = [chat supportsCapabilities:4096];

  textLabel2 = [locationSendOrRequestCell textLabel];
  [textLabel2 setEnabled:v10];

  [locationSendOrRequestCell setUserInteractionEnabled:v10];

  return locationSendOrRequestCell;
}

- (id)_tableViewCellForSendCurrentLocation
{
  sendCurrentLocationCell = [(CKDetailsController *)self sendCurrentLocationCell];
  textLabel = [sendCurrentLocationCell textLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  detailsTextColor = [theme detailsTextColor];
  [textLabel setTextColor:detailsTextColor];

  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v10 = [chat supportsCapabilities:4096];

  textLabel2 = [sendCurrentLocationCell textLabel];
  [textLabel2 setEnabled:v10];

  [sendCurrentLocationCell setUserInteractionEnabled:v10];

  return sendCurrentLocationCell;
}

- (id)_tableViewCellForSharingLocation:(BOOL)location
{
  locationCopy = location;
  locationShareCell = [(CKDetailsController *)self locationShareCell];
  [locationShareCell setShowOfferTimeRemaining:0];
  shouldShowFMFView = [(CKDetailsController *)self isGroupChat]|| [(CKDetailsController *)self shouldShowFMFView];
  topSeperator = [locationShareCell topSeperator];
  [topSeperator setHidden:shouldShowFMFView];

  [locationShareCell setIndentTopSeperator:1];
  if (locationCopy)
  {
    [locationShareCell setMenu:0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    textLabel = [locationShareCell textLabel];
    [textLabel setText:v9];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    textLabel2 = [locationShareCell textLabel];
    [textLabel2 setTextColor:systemRedColor];

    _conversationOfferTimeExpiration = [(CKDetailsController *)self _conversationOfferTimeExpiration];
    if (_conversationOfferTimeExpiration)
    {
      date = [MEMORY[0x1E695DF00] date];
      [_conversationOfferTimeExpiration timeIntervalSinceDate:date];
      v16 = v15;

      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v18 = [_conversationOfferTimeExpiration isEqual:distantFuture];

      if ((v18 & 1) == 0 && v16 > 0.0)
      {
        [locationShareCell setShowOfferTimeRemaining:1];
        [locationShareCell setOfferTimeRemaining:v16];
      }
    }
  }

  else
  {
    locationShareMenu = [(CKDetailsController *)self locationShareMenu];
    [locationShareCell setMenu:locationShareMenu];

    v20 = CKFrameworkBundle();
    v21 = [v20 localizedStringForKey:@"SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    textLabel3 = [locationShareCell textLabel];
    [textLabel3 setText:v21];

    _conversationOfferTimeExpiration = +[CKUIBehavior sharedBehaviors];
    theme = [_conversationOfferTimeExpiration theme];
    detailsTextColor = [theme detailsTextColor];
    textLabel4 = [locationShareCell textLabel];
    [textLabel4 setTextColor:detailsTextColor];
  }

  if (CKIsRunningInMacCatalyst())
  {
    if ([(CKDetailsController *)self allRecipientsAlreadyFollowingLocation])
    {
      bottomSeperator = [locationShareCell bottomSeperator];
      [bottomSeperator setHidden:1];
    }

    [locationShareCell setIndentBottomSeperator:1];
  }

  else
  {
    bottomSeperator2 = [locationShareCell bottomSeperator];
    [bottomSeperator2 setHidden:1];
  }

  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v30 = [chat supportsCapabilities:4096];

  if (v30)
  {
    v31 = [(CKDetailsController *)self fmfRestricted]^ 1;
  }

  else
  {
    v31 = 0;
  }

  textLabel5 = [locationShareCell textLabel];
  [textLabel5 setEnabled:v31];

  [locationShareCell setUserInteractionEnabled:v31];

  return locationShareCell;
}

- (id)_conversationOfferTimeExpiration
{
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v6 = [mEMORY[0x1E69A5B70] timedOfferExpirationForChat:chat];

  return v6;
}

- (CKDetailsSIMCell)simCell
{
  simCell = self->_simCell;
  if (!simCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsSIMCell reuseIdentifier];
    [tableView registerClass:v5 forCellReuseIdentifier:v6];

    v7 = [CKDetailsSIMCell alloc];
    v8 = +[CKDetailsSIMCell reuseIdentifier];
    v9 = [(CKDetailsSIMCell *)v7 initWithStyle:1 reuseIdentifier:v8];
    v10 = self->_simCell;
    self->_simCell = v9;

    [(CKDetailsCell *)self->_simCell setIndentTopSeperator:1];
    simCell = self->_simCell;
  }

  return simCell;
}

- (CKDetailsLocationShareCell)locationShareCell
{
  locationShareCell = self->_locationShareCell;
  if (!locationShareCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsLocationShareCell identifier];
    [tableView registerClass:v5 forCellReuseIdentifier:v6];

    v7 = [CKDetailsLocationShareCell alloc];
    v8 = +[CKDetailsLocationShareCell identifier];
    v9 = [(CKDetailsLocationShareCell *)v7 initWithStyle:1 reuseIdentifier:v8];
    v10 = self->_locationShareCell;
    self->_locationShareCell = v9;

    [(CKDetailsLocationShareCell *)self->_locationShareCell setShowOfferTimeRemaining:0];
    [(CKDetailsCell *)self->_locationShareCell setIndentTopSeperator:1];
    locationShareCell = self->_locationShareCell;
  }

  return locationShareCell;
}

- (CKDetailsSIMCell)simSwitchCell
{
  if (!self->_simSwitchCell)
  {
    v3 = +[CKSenderIdentity identityTrackingEnabled];
    tableView = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsSIMCell reuseIdentifier];
    [tableView registerClass:v5 forCellReuseIdentifier:v6];

    if (v3)
    {
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      lastAddressedSIMID = [chat lastAddressedSIMID];

      conversation2 = [(CKDetailsController *)self conversation];
      chat2 = [conversation2 chat];
      lastAddressedHandleID = [chat2 lastAddressedHandleID];

      v13 = [[CKSenderIdentity alloc] initWithHandle:lastAddressedHandleID simID:lastAddressedSIMID];
      sanitizingForSubscriptionsOnlyBasedOnPolicy = [(CKSenderIdentity *)v13 sanitizingForSubscriptionsOnlyBasedOnPolicy];

      if (sanitizingForSubscriptionsOnlyBasedOnPolicy)
      {
        v15 = [CKDetailsSIMCell alloc];
        ctSubscriptionInfo = +[CKDetailsSIMCell reuseIdentifier];
        label = [sanitizingForSubscriptionsOnlyBasedOnPolicy label];
        shortName = [sanitizingForSubscriptionsOnlyBasedOnPolicy shortName];
        v19 = [(CKDetailsSIMCell *)v15 initWithStyle:0 reuseIdentifier:ctSubscriptionInfo simLabelText:label badgeText:shortName];
        simSwitchCell = self->_simSwitchCell;
        self->_simSwitchCell = v19;
      }

      else
      {
        mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
        ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];

        label = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];
        shortName = [label label];
        simSwitchCell = CKLocalizedShortNameForContext(label);
        v26 = lastAddressedHandleID;
        v27 = lastAddressedSIMID;
        v28 = [CKDetailsSIMCell alloc];
        v29 = +[CKDetailsSIMCell reuseIdentifier];
        v30 = v28;
        lastAddressedSIMID = v27;
        lastAddressedHandleID = v26;
        sanitizingForSubscriptionsOnlyBasedOnPolicy = 0;
        v31 = [(CKDetailsSIMCell *)v30 initWithStyle:0 reuseIdentifier:v29 simLabelText:shortName badgeText:simSwitchCell];
        v32 = self->_simSwitchCell;
        self->_simSwitchCell = v31;
      }

      textLabel = [(CKDetailsSIMCell *)self->_simSwitchCell textLabel];
      v34 = CKFrameworkBundle();
      v35 = [v34 localizedStringForKey:@"DETAILS_VIEW_SWITCH_SIM_CELL" value:&stru_1F04268F8 table:@"ChatKit"];
      [textLabel setText:v35];

      topSeperator = [(CKDetailsCell *)self->_simSwitchCell topSeperator];
      [topSeperator setHidden:1];

      bottomSeperator = [(CKDetailsCell *)self->_simSwitchCell bottomSeperator];
      [bottomSeperator setHidden:1];
    }

    else
    {
      v21 = [CKDetailsSIMCell alloc];
      v22 = +[CKDetailsSIMCell reuseIdentifier];
      v23 = [(CKDetailsSIMCell *)v21 initWithStyle:1 reuseIdentifier:v22];
      v24 = self->_simSwitchCell;
      self->_simSwitchCell = v23;

      [(CKDetailsCell *)self->_simSwitchCell setIndentTopSeperator:1];
    }
  }

  v38 = self->_simSwitchCell;

  return v38;
}

- (CKTranscriptDetailsResizableCell)locationSendOrRequestCell
{
  tableView = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKTranscriptDetailsResizableCell identifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [CKTranscriptDetailsResizableCell alloc];
  v7 = +[CKTranscriptDetailsResizableCell identifier];
  v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
  locationSendOrRequestCell = self->_locationSendOrRequestCell;
  self->_locationSendOrRequestCell = v8;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v7) = [mEMORY[0x1E69A8070] isWaldoEnabled];

  textLabel = [(CKTranscriptDetailsResizableCell *)self->_locationSendOrRequestCell textLabel];
  v12 = CKFrameworkBundle();
  v13 = v12;
  if (v7)
  {
    v14 = @"REQUEST_LOCATION";
  }

  else
  {
    v14 = @"SEND_LOCATION";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v15];

  topSeperator = [(CKDetailsCell *)self->_locationSendOrRequestCell topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self->_locationSendOrRequestCell bottomSeperator];
  [bottomSeperator setHidden:1];

  v18 = self->_locationSendOrRequestCell;

  return v18;
}

- (CKTranscriptDetailsResizableCell)sendCurrentLocationCell
{
  tableView = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKTranscriptDetailsResizableCell identifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [CKTranscriptDetailsResizableCell alloc];
  v7 = +[CKTranscriptDetailsResizableCell identifier];
  v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
  sendCurrentLocationCell = self->_sendCurrentLocationCell;
  self->_sendCurrentLocationCell = v8;

  textLabel = [(CKTranscriptDetailsResizableCell *)self->_sendCurrentLocationCell textLabel];
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"SEND_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v12];

  topSeperator = [(CKDetailsCell *)self->_sendCurrentLocationCell topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self->_sendCurrentLocationCell bottomSeperator];
  [bottomSeperator setHidden:1];

  v15 = self->_sendCurrentLocationCell;

  return v15;
}

- (CKTranscriptDetailsResizableCell)locationStartShareCell
{
  if (!self->_locationStartShareCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v4 = objc_opt_class();
    v5 = +[CKTranscriptDetailsResizableCell identifier];
    [tableView registerClass:v4 forCellReuseIdentifier:v5];

    v6 = [CKTranscriptDetailsResizableCell alloc];
    v7 = +[CKTranscriptDetailsResizableCell identifier];
    v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
    locationStartShareCell = self->_locationStartShareCell;
    self->_locationStartShareCell = v8;

    textLabel = [(CKTranscriptDetailsResizableCell *)self->_locationStartShareCell textLabel];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    [textLabel setText:v12];

    [(CKDetailsCell *)self->_locationStartShareCell setIndentTopSeperator:1];
    v13 = CKIsRunningInMacCatalyst();
    v14 = self->_locationStartShareCell;
    if (v13)
    {
      [(CKDetailsCell *)v14 setIndentBottomSeperator:1];
    }

    else
    {
      bottomSeperator = [(CKDetailsCell *)v14 bottomSeperator];
      [bottomSeperator setHidden:1];
    }
  }

  v16 = self->_locationStartShareCell;

  return v16;
}

- (CKTranscriptDetailsResizableCell)openInContactsCell
{
  openInContactsCell = self->_openInContactsCell;
  if (!openInContactsCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKTranscriptDetailsResizableCell identifier];
    [tableView registerClass:v5 forCellReuseIdentifier:v6];

    bottomSeperator = [(CKDetailsCell *)self->_locationStartShareCell bottomSeperator];
    [bottomSeperator setHidden:1];

    v8 = [CKTranscriptDetailsResizableCell alloc];
    v9 = +[CKTranscriptDetailsResizableCell identifier];
    v10 = [(CKTranscriptDetailsResizableCell *)v8 initWithStyle:0 reuseIdentifier:v9];
    v11 = self->_openInContactsCell;
    self->_openInContactsCell = v10;

    textLabel = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"OPEN_IN_CONTACTS" value:&stru_1F04268F8 table:@"ChatKit"];
    [textLabel setText:v14];

    textLabel2 = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    appTintColor = [theme appTintColor];
    [textLabel2 setTextColor:appTintColor];

    textLabel3 = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    [textLabel3 setEnabled:1];

    openInContactsCell = self->_openInContactsCell;
  }

  return openInContactsCell;
}

- (CKDetailsCell)changeGroupNamePhotoCell
{
  if (!self->_changeGroupNamePhotoCell && !CKIsRunningInMacCatalyst())
  {
    tableView = [(CKDetailsController *)self tableView];
    v4 = objc_opt_class();
    v5 = +[CKTranscriptDetailsResizableCell identifier];
    [tableView registerClass:v4 forCellReuseIdentifier:v5];

    v6 = [CKTranscriptDetailsResizableCell alloc];
    v7 = +[CKTranscriptDetailsResizableCell identifier];
    v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
    changeGroupNamePhotoCell = self->_changeGroupNamePhotoCell;
    self->_changeGroupNamePhotoCell = v8;

    textLabel = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"CHANGE_GROUP_NAME_AND_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
    [textLabel setText:v12];

    textLabel2 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    v14 = +[CKUIBehavior sharedBehaviors];
    theme = [v14 theme];
    appTintColor = [theme appTintColor];
    [textLabel2 setTextColor:appTintColor];

    textLabel3 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    [textLabel3 setEnabled:1];

    bottomSeperator = [(CKDetailsCell *)self->_changeGroupNamePhotoCell bottomSeperator];
    [bottomSeperator setHidden:1];

    topSeperator = [(CKDetailsCell *)self->_changeGroupNamePhotoCell topSeperator];
    [topSeperator setHidden:1];
  }

  v20 = self->_changeGroupNamePhotoCell;

  return v20;
}

- (int64_t)_targetToggleIndexForOptionRow:(unint64_t)row
{
  if (row == 2)
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    supportsSendingReadReceipts = [chat supportsSendingReadReceipts];

    if (supportsSendingReadReceipts)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (row == 1)
  {
    conversation2 = [(CKDetailsController *)self conversation];
    chat2 = [conversation2 chat];
    supportsSendingReadReceipts2 = [chat2 supportsSendingReadReceipts];

    return supportsSendingReadReceipts2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_optionRowForIndexPath:(id)path
{
  result = [path row];
  if (result)
  {
    if (result != 2)
    {
      if (result != 1)
      {
        return -1;
      }

      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      supportsSendingReadReceipts = [chat supportsSendingReadReceipts];

      if (supportsSendingReadReceipts)
      {
        return 1;
      }
    }

    canShareFocusStatus = [(CKDetailsController *)self canShareFocusStatus];
    bOOLValue = [canShareFocusStatus BOOLValue];

    if (bOOLValue)
    {
      return 2;
    }

    return -1;
  }

  return result;
}

- (unint64_t)_translationRowForIndexPath:(id)path
{
  v3 = [path row];
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)chatOptionsCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsChatOptionsCell reuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(CKDetailsController *)self _optionRowForIndexPath:pathCopy];
  switch(v8)
  {
    case 2uLL:
      canShareFocusStatus = [(CKDetailsController *)self canShareFocusStatus];
      bOOLValue = [canShareFocusStatus BOOLValue];

      if (bOOLValue)
      {
        v9 = [(CKDetailsController *)self createShareFocusStatusCellAtIndexPath:pathCopy];
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1uLL:
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      supportsSendingReadReceipts = [chat supportsSendingReadReceipts];

      if (supportsSendingReadReceipts)
      {
        v9 = [(CKDetailsController *)self createReadReceiptsCellAtIndexPath:pathCopy];
        goto LABEL_9;
      }

LABEL_10:
      v15 = 0;
      goto LABEL_11;
    case 0uLL:
      v9 = [(CKDetailsController *)self createDNDCellAtIndexPath:pathCopy];
LABEL_9:
      v15 = v9;
LABEL_11:
      [(CKDetailsController *)self _configureSeparatorForOptionCell:v15 indexPath:pathCopy];
      goto LABEL_13;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)translationCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsChatOptionsCell reuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  tableView2 = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsLanguageSelectionCell reuseIdentifier];
  [tableView2 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [(CKDetailsController *)self _translationRowForIndexPath:pathCopy];
  if (v11 == 1)
  {
    conversation = [(CKDetailsController *)self conversation];
    translationLanguageCode = [conversation translationLanguageCode];

    if (translationLanguageCode)
    {
      v12 = [(CKDetailsController *)self createTranslationLanguageCellForLanguageCode:translationLanguageCode atIndexPath:pathCopy];
    }

    else
    {
      v12 = 0;
    }

    gestureRecognizers = [v12 gestureRecognizers];
    v16 = [gestureRecognizers count];

    if (!v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_showLanguagePicker];
      [v12 addGestureRecognizer:v17];
    }
  }

  else
  {
    if (v11)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v12 = [(CKDetailsController *)self createTranslationSwitchCellAtIndexPath:pathCopy];
  }

  [(CKDetailsController *)self _configureSeparatorForOptionCell:v12 indexPath:pathCopy];
LABEL_12:

  return v12;
}

- (id)createDNDCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [tableView dequeueReusableCellWithIdentifier:v6 forIndexPath:pathCopy];

  controlSwitch = [v7 controlSwitch];
  textLabel = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v11];

  [textLabel setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  [controlSwitch addTarget:self action:sel_doNotDisturbValueChange_ forControlEvents:4096];
  [controlSwitch setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  conversation = [(CKDetailsController *)self conversation];
  [controlSwitch setOn:objc_msgSend(conversation animated:{"isMuted"), 0}];

  v13 = 0;
  if (![(CKDetailsController *)self shouldShowEnhancedGroupFeatures])
  {
    conversation2 = [(CKDetailsController *)self conversation];
    chat = [conversation2 chat];
    v16 = [chat supportsCapabilities:256];

    v13 = v16 ^ 1;
  }

  if (CKIsRunningInMacCatalyst() && (v13 & 1) == 0)
  {
    bottomSeperator = [v7 bottomSeperator];
    [bottomSeperator setHidden:0];

    [v7 setIndentBottomSeperator:1];
  }

  return v7;
}

- (id)createTranslationSwitchCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [tableView dequeueReusableCellWithIdentifier:v6 forIndexPath:pathCopy];

  controlSwitch = [v7 controlSwitch];
  textLabel = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"AUTOMATICALLY_TRANSLATE_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v11];

  [textLabel setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  [controlSwitch addTarget:self action:sel_automaticallyTranslateValueChange_ forControlEvents:4096];
  conversation = [(CKDetailsController *)self conversation];
  [controlSwitch setOn:objc_msgSend(conversation animated:{"shouldAutomaticallyTranslate"), 0}];

  v13 = 0;
  if (![(CKDetailsController *)self shouldShowEnhancedGroupFeatures])
  {
    conversation2 = [(CKDetailsController *)self conversation];
    chat = [conversation2 chat];
    v16 = [chat supportsCapabilities:256];

    v13 = v16 ^ 1;
  }

  if (CKIsRunningInMacCatalyst() && (v13 & 1) == 0)
  {
    bottomSeperator = [v7 bottomSeperator];
    [bottomSeperator setHidden:0];

    [v7 setIndentBottomSeperator:1];
  }

  return v7;
}

- (id)createTranslationLanguageCellForLanguageCode:(id)code atIndexPath:(id)path
{
  pathCopy = path;
  codeCopy = code;
  tableView = [(CKDetailsController *)self tableView];
  v9 = +[CKDetailsLanguageSelectionCell reuseIdentifier];
  v10 = [tableView dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = MEMORY[0x1E696AEC0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [currentLocale localizedStringForLanguageCode:codeCopy];

  v14 = [v11 localizedStringWithFormat:@"Translate From (%@)", v13];
  textLabel = [v10 textLabel];
  [textLabel setText:v14];

  [v10 setAccessoryType:1];

  return v10;
}

- (id)createReadReceiptsCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [tableView dequeueReusableCellWithIdentifier:v6 forIndexPath:pathCopy];

  controlSwitch = [v7 controlSwitch];
  textLabel = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"READ_RECEIPTS" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v11];

  [controlSwitch addTarget:self action:sel_readReceiptsSwitchValueChanged_ forEvents:4096];
  conversation = [(CKDetailsController *)self conversation];
  [controlSwitch setOn:objc_msgSend(conversation animated:{"shouldSendReadReceipts"), 0}];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)createShareFocusStatusCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [tableView dequeueReusableCellWithIdentifier:v6 forIndexPath:pathCopy];

  controlSwitch = [v7 controlSwitch];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"SHARE_FOCUS_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];

  textLabel = [v7 textLabel];
  [textLabel setText:v10];
  [controlSwitch addTarget:self action:sel_shareFocusStatusSwitchValueChanged_ forEvents:4096];
  isSharingFocusStatus = [(CKDetailsController *)self isSharingFocusStatus];
  [controlSwitch setEnabled:isSharingFocusStatus != 0];

  isSharingFocusStatus2 = [(CKDetailsController *)self isSharingFocusStatus];
  [controlSwitch setOn:objc_msgSend(isSharingFocusStatus2 animated:{"BOOLValue"), 0}];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)sharedWithYouCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsSharedWithYouCell reuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  tableView2 = [(CKDetailsController *)self tableView];
  v9 = +[CKDetailsSharedWithYouCell reuseIdentifier];
  v10 = [tableView2 dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  controlSwitch = [v10 controlSwitch];
  textLabel = [v10 textLabel];
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"MARK_AS_AUTO_DONATING" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v14];

  topSeperator = [v10 topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [v10 bottomSeperator];
  [bottomSeperator setHidden:1];

  [controlSwitch addTarget:self action:sel_autoDonationSwitchValueChanged_ forEvents:4096];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  [controlSwitch setOn:objc_msgSend(chat animated:{"isAutoDonatingMessages"), 0}];

  return v10;
}

- (id)editConversationCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CKDetailsController *)self tableView];
  v6 = +[CKTranscriptDetailsResizableCell identifier];
  v7 = [tableView dequeueReusableCellWithIdentifier:v6 forIndexPath:pathCopy];

  textLabel = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"EDIT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [textLabel setText:v10];

  textLabel2 = [v7 textLabel];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  appTintColor = [theme appTintColor];
  [textLabel2 setTextColor:appTintColor];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)childViewController:(id)controller cellForIndexPath:(id)path
{
  pathCopy = path;
  controllerCopy = controller;
  tableView = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsChildViewControllerCell reuseIdentifier];
  [tableView registerClass:v9 forCellReuseIdentifier:v10];

  tableView2 = [(CKDetailsController *)self tableView];
  v12 = +[CKDetailsChildViewControllerCell reuseIdentifier];
  v13 = [tableView2 dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

  traitCollection = [(CKDetailsController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v15 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [currentDevice orientation] - 1;

    if (v17 < 2)
    {
      v15 = 0;
      goto LABEL_7;
    }

    traitCollection = [(CKDetailsController *)self traitCollection];
    v15 = [traitCollection verticalSizeClass] != 1;
  }

LABEL_7:
  [v13 setShouldUseLayoutMargins:v15];
  view = [controllerCopy view];

  [v13 setChildViewControllerView:view];

  return v13;
}

- (void)initializeSearchController
{
  searchViewController = [(CKDetailsController *)self searchViewController];

  if (!searchViewController)
  {
    v4 = [CKDetailsSearchViewController alloc];
    v5 = +[CKSpotlightQueryUtilities detailsSearchControllers];
    v12 = [(CKDetailsSearchViewController *)v4 initWithSearchControllerClasses:v5];

    [(CKSearchViewController *)v12 setMode:3];
    conversation = [(CKDetailsController *)self conversation];
    [(CKDetailsSearchViewController *)v12 setConversation:conversation];

    [(CKDetailsSearchViewController *)v12 setDetailsDelegate:self];
    [(CKDetailsController *)self setSearchViewController:v12];
    searchViewController2 = [(CKDetailsController *)self searchViewController];
    [searchViewController2 willMoveToParentViewController:self];

    searchViewController3 = [(CKDetailsController *)self searchViewController];
    [(CKDetailsController *)self addChildViewController:searchViewController3];

    searchViewController4 = [(CKDetailsController *)self searchViewController];
    [searchViewController4 searchWithText:&stru_1F04268F8];

    if (CKIsRunningInMacCatalyst())
    {
      searchViewController5 = [(CKDetailsController *)self searchViewController];
      view = [searchViewController5 view];
      [view layoutIfNeeded];
    }
  }
}

- (id)searchAttachmentViewControllerCellForIndexPath:(id)path
{
  pathCopy = path;
  [(CKDetailsController *)self initializeSearchController];
  searchViewController = [(CKDetailsController *)self searchViewController];
  v6 = [(CKDetailsController *)self childViewController:searchViewController cellForIndexPath:pathCopy];

  [v6 setShouldUseLayoutMargins:0];
  topSeperator = [v6 topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [v6 bottomSeperator];
  [bottomSeperator setHidden:1];

  return v6;
}

- (void)detailsSearchControllerContentDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "DISMISSED SIM switch menu", buf, 2u);
    }
  }

  simSwitchCell = [(CKDetailsController *)self simSwitchCell];
  button = [simSwitchCell button];
  contextMenuInteraction = [button contextMenuInteraction];
  [contextMenuInteraction dismissMenu];

  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];

  v10 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CKDetailsController_detailsSearchControllerContentDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
}

void __63__CKDetailsController_detailsSearchControllerContentDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) tableView];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 32) tableView];
  [v4 layoutIfNeeded];
}

- (void)detailsSearchController:(id)controller requestsPushOfSearchController:(id)searchController
{
  searchControllerCopy = searchController;
  navigationController = [(CKDetailsController *)self navigationController];
  [navigationController pushViewController:searchControllerCopy animated:1];
}

- (void)setupContactsManager
{
  v3 = [CKDetailsContactsManager alloc];
  conversation = [(CKDetailsController *)self conversation];
  v5 = [(CKDetailsContactsManager *)v3 initWithConversation:conversation delegate:self];

  [(CKDetailsController *)self setContactsManager:v5];
  [(CKDetailsController *)self setShouldCollapseContactsSection:1];
}

- (void)handleTapOnChromeAvatar:(id)avatar
{
  conversation = [(CKDetailsController *)self conversation];
  recipients = [conversation recipients];
  firstObject = [recipients firstObject];

  view = [(CKDetailsController *)self view];
  [(CKDetailsController *)self showContactCardForEntity:firstObject fromView:view];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  tableView = [(CKDetailsController *)self tableView];
  v8 = [(CKDetailsController *)self tableView:tableView numberOfRowsInSection:3];

  if (v8)
  {
    tableView2 = [(CKDetailsController *)self tableView];
    v10 = [tableView2 indexPathForRowAtPoint:{x, y}];

    if ([v10 section] == 3 && (v11 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMF")) != 0)
    {
      v12 = [v11 alloc];
      conversation = [(CKDetailsController *)self conversation];
      chat = [conversation chat];
      allSiblingFMFHandles = [chat allSiblingFMFHandles];
      v16 = [v12 initWithDelegate:self handles:allSiblingFMFHandles];

      v17 = +[CKUIBehavior sharedBehaviors];
      theme = [v17 theme];
      appTintColor = [theme appTintColor];
      [v16 setAnnotationTintColor:appTintColor];

      v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = controllerCopy;
    if (MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMF"))
    {
      visibleViewController = [v8 visibleViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        visibleViewController2 = [v8 visibleViewController];
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = v8;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "navController: %@, clearing viewControllers", &v14, 0xCu);
          }
        }

        [v8 setViewControllers:MEMORY[0x1E695E0F0]];
        navigationController = [(CKDetailsController *)self navigationController];
        [navigationController showViewController:visibleViewController2 sender:0];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(CKDetailsController *)self traitCollection];
  v5 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v5)
  {
    simSwitchCell = [(CKDetailsController *)self simSwitchCell];

    if (!simSwitchCell)
    {
      return;
    }

    simSwitchCell2 = [(CKDetailsController *)self simSwitchCell];
    button = [simSwitchCell2 button];
    contextMenuInteraction = [button contextMenuInteraction];
    [contextMenuInteraction dismissMenu];

    traitCollection = [(CKDetailsController *)self simSwitchCell];
    button2 = [traitCollection button];
    simSwitcherMenu = [(CKDetailsController *)self simSwitcherMenu];
    [button2 setMenu:simSwitcherMenu];
  }
}

- (id)selectedSenderIdentity
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  lastAddressedSIMID = [chat lastAddressedSIMID];

  conversation2 = [(CKDetailsController *)self conversation];
  chat2 = [conversation2 chat];
  lastAddressedHandleID = [chat2 lastAddressedHandleID];

  v9 = [[CKSenderIdentity alloc] initWithHandle:lastAddressedHandleID simID:lastAddressedSIMID];

  return v9;
}

- (id)simSwitcherMenu
{
  if ([(CKDetailsController *)self shouldShowSIMTypeSection])
  {
    selectedSenderIdentity = [(CKDetailsController *)self selectedSenderIdentity];
    sanitizingForSubscriptionsOnlyBasedOnPolicy = [selectedSenderIdentity sanitizingForSubscriptionsOnlyBasedOnPolicy];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__CKDetailsController_simSwitcherMenu__block_invoke;
    v8[3] = &unk_1E72EF9F8;
    v5 = sanitizingForSubscriptionsOnlyBasedOnPolicy;
    v9 = v5;
    objc_copyWeak(&v10, &location);
    v6 = [CKSenderIdentity identitySwitcherMenuWithSelectedIdentity:v5 selectIdentity:v8];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __38__CKDetailsController_simSwitcherMenu__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) isEqual:?];
  v4 = [MEMORY[0x1E69A8168] sharedInstance];
  v5 = v4;
  v6 = *MEMORY[0x1E69A7390];
  if (v3)
  {
    [v4 trackEvent:v6 withDictionary:&unk_1F04E91B8];
  }

  else
  {
    [v4 trackEvent:v6 withDictionary:&unk_1F04E9190];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained switchToSenderIdentity:v16];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 simSwitchCell];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 labelForChat];
    v12 = [v16 shortName];
    [v9 setSIMLabelText:v11 badgeText:v12];

    v5 = objc_loadWeakRetained((a1 + 40));
    v13 = [v5 simSwitchCell];
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 simSwitcherMenu];
    [v13 setMenu:v15];
  }
}

- (void)handleActiveDeviceChanged:(id)changed
{
  locationSharingTextView = [(CKDetailsController *)self locationSharingTextView];
  [locationSharingTextView setDelegate:0];

  [(CKDetailsController *)self setLocationSharingTextView:0];
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)updateLocationStringCellWithString:(id)string
{
  locationStringCell = self->_locationStringCell;
  if (locationStringCell)
  {
    [(CKDetailsLocationStringCell *)locationStringCell setLocationString:string];
  }
}

- (BOOL)shouldShowExpanseFeatures
{
  v2 = MEMORY[0x1E69A5B78];
  tuConversation = [(CKDetailsController *)self tuConversation];
  LOBYTE(v2) = [v2 activeTUConversationHasActivitySession:tuConversation];

  return v2;
}

- (int64_t)adjustedViewModelIndexForIndexPath:(id)path
{
  pathCopy = path;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = 0;
  }

  else
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    isBusinessChat = [chat isBusinessChat];

    v5 = (isBusinessChat & 1) - 1;
  }

  v9 = v5 - [(CKDetailsController *)self hasTUConversation];
  v10 = [pathCopy row];

  return v9 + v10;
}

- (BOOL)shouldShowBusinessInfoFooter
{
  conversation = [(CKDetailsController *)self conversation];
  if ([conversation isBusinessConversation])
  {
    conversation2 = [(CKDetailsController *)self conversation];
    v5 = [conversation2 isMakoConversation] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldShowKTSection
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled && self->_ktChatState - 15 >= 2)
  {
    conversation = [(CKDetailsController *)self conversation];
    sendingService = [conversation sendingService];
    v10 = MEMORY[0x1E69A79A0];
    v11 = [sendingService supportsCapability:*MEMORY[0x1E69A79A0]];
    if ((v11 & 1) != 0 || (-[CKDetailsController conversation](self, "conversation"), v2 = objc_claimAutoreleasedReturnValue(), [v2 chat], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "hasMessageWithServiceCapability:", *v10)))
    {
      conversation2 = [(CKDetailsController *)self conversation];
      chat = [conversation2 chat];
      if ([chat isBusinessChat])
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = ![(CKDetailsController *)self conversationHasLeft];
      }

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }

LABEL_13:
    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (BOOL)shouldShowTranslationSection
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (!isAutomaticIncomingTranslationEnabled)
  {
    return 0;
  }

  conversation = [(CKDetailsController *)self conversation];
  supportsAutomaticTranslation = [conversation supportsAutomaticTranslation];

  return supportsAutomaticTranslation;
}

- (void)expandContactsSection
{
  v21[1] = *MEMORY[0x1E69E9840];
  tableView = [(CKDetailsController *)self tableView];
  v4 = [tableView numberOfRowsInSection:6];

  if (v4 && [(CKDetailsController *)self isContactsSectionCollapsible]&& [(CKDetailsController *)self isContactsSectionCollapsed])
  {
    [(CKDetailsController *)self setIsContactsSectionCollapsed:0];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactsManager = [(CKDetailsController *)self contactsManager];
    contactsViewModels = [contactsManager contactsViewModels];
    v8 = [contactsViewModels count];

    v9 = v8 + [(CKDetailsController *)self shouldShowAddMemberCell];
    v10 = v9 + [(CKDetailsController *)self hasTUConversation];
    hasTUConversation = [(CKDetailsController *)self hasTUConversation];
    if (v10 > hasTUConversation)
    {
      v12 = hasTUConversation;
      do
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:6];
        [v5 addObject:v13];

        ++v12;
      }

      while (v12 < v10);
    }

    v14 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:6];
    if ([(CKDetailsController *)self hasTUConversation])
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:6];

      v14 = v15;
    }

    tableView2 = [(CKDetailsController *)self tableView];
    [tableView2 beginUpdates];

    tableView3 = [(CKDetailsController *)self tableView];
    [tableView3 insertRowsAtIndexPaths:v5 withRowAnimation:0];

    tableView4 = [(CKDetailsController *)self tableView];
    v21[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [tableView4 reloadRowsAtIndexPaths:v19 withRowAnimation:0];

    tableView5 = [(CKDetailsController *)self tableView];
    [tableView5 endUpdates];
  }
}

- (void)collapseContactsSection
{
  v18[1] = *MEMORY[0x1E69E9840];
  shouldShowAddMemberCell = [(CKDetailsController *)self shouldShowAddMemberCell];
  [(CKDetailsController *)self setIsContactsSectionCollapsed:1];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactsManager = [(CKDetailsController *)self contactsManager];
  contactsViewModels = [contactsManager contactsViewModels];
  v7 = [contactsViewModels count];

  v8 = v7 + shouldShowAddMemberCell + [(CKDetailsController *)self hasTUConversation];
  hasTUConversation = [(CKDetailsController *)self hasTUConversation];
  if (v8 > hasTUConversation)
  {
    v10 = hasTUConversation;
    do
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:6];
      [v4 addObject:v11];

      ++v10;
    }

    while (v10 < v8);
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:6];
  tableView = [(CKDetailsController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(CKDetailsController *)self tableView];
  [tableView2 deleteRowsAtIndexPaths:v4 withRowAnimation:0];

  tableView3 = [(CKDetailsController *)self tableView];
  v18[0] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [tableView3 reloadRowsAtIndexPaths:v16 withRowAnimation:0];

  tableView4 = [(CKDetailsController *)self tableView];
  [tableView4 endUpdates];
}

- (void)presentGroupRecipientSelectionControllerAtIndexPath:(id)path
{
  pathCopy = path;
  conversation = [(CKDetailsController *)self conversation];
  v5 = [[CKGroupRecipientSelectionController alloc] initWithConversation:conversation];
  [(CKDetailsController *)self setAddRecipientsController:v5];
  if (CKIsRunningInMacCatalyst())
  {
    tableView = [(CKDetailsController *)self tableView];
    displayName = [tableView cellForRowAtIndexPath:pathCopy];

    v8 = +[CKUIBehavior sharedBehaviors];
    -[CKGroupRecipientSelectionController setModalPresentationStyle:](v5, "setModalPresentationStyle:", [v8 groupRecipientSelectionPresentationStyle]);

    popoverPresentationController = [(CKGroupRecipientSelectionController *)v5 popoverPresentationController];
    [popoverPresentationController setSourceView:displayName];

    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 popOverWidthInDetailsView];
    v12 = v11;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 popOverMaxHeightInDetailsView];
    [(CKGroupRecipientSelectionController *)v5 setPreferredContentSize:v12, v14];

    [(CKDetailsController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v15 = [[CKNavigationController alloc] initWithRootViewController:v5];
    [(CKDetailsController *)self setGroupNavigationController:v15];

    groupNavigationController = [(CKDetailsController *)self groupNavigationController];
    navigationBar = [groupNavigationController navigationBar];
    v18 = +[CKUIBehavior sharedBehaviors];
    theme = [v18 theme];
    [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];

    if ([conversation hasDisplayName])
    {
      displayName = [conversation displayName];
    }

    else
    {
      v20 = CKFrameworkBundle();
      displayName = [v20 localizedStringForKey:@"MADRID_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    [(CKGroupRecipientSelectionController *)v5 setTitle:displayName];
    groupNavigationController2 = [(CKDetailsController *)self groupNavigationController];
    v22 = +[CKUIBehavior sharedBehaviors];
    [groupNavigationController2 setModalPresentationStyle:{objc_msgSend(v22, "groupRecipientSelectionPresentationStyle")}];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      view = [(CKDetailsController *)self view];
      [view frame];
      v27 = v26;
      view2 = [(CKDetailsController *)self view];
      [view2 frame];
      [(CKDetailsController *)self setPreferredContentSize:v27, v29];
    }

    v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancelAction_];
    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDoneAction_];
    navigationItem = [(CKGroupRecipientSelectionController *)v5 navigationItem];
    [navigationItem setLeftBarButtonItem:v30];

    navigationItem2 = [(CKGroupRecipientSelectionController *)v5 navigationItem];
    [navigationItem2 setRightBarButtonItem:v31];

    [(CKGroupRecipientSelectionController *)v5 setCancelButton:v30];
    [(CKGroupRecipientSelectionController *)v5 setDoneButton:v31];
    groupNavigationController3 = [(CKDetailsController *)self groupNavigationController];
    [(CKDetailsController *)self presentViewController:groupNavigationController3 animated:1 completion:0];
  }
}

- (void)handleDoneAction:(id)action
{
  actionCopy = action;
  addRecipientsController = [(CKDetailsController *)self addRecipientsController];
  toField = [addRecipientsController toField];
  recipients = [toField recipients];

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recipients, "count")}];
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  conversation = [(CKDetailsController *)self conversation];
  recipientStrings = [conversation recipientStrings];
  v12 = [v9 initWithArray:recipientStrings];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CKDetailsController_handleDoneAction___block_invoke;
  v15[3] = &unk_1E72EFA20;
  v15[4] = self;
  v16 = v8;
  v17 = v12;
  v13 = v12;
  v14 = v8;
  [recipients enumerateObjectsUsingBlock:v15];
  [(CKDetailsController *)self _handleAddingHandles:v14 allRecipientsAddresses:v13 sender:actionCopy];
}

void __40__CKDetailsController_handleDoneAction___block_invoke(id *a1, void *a2)
{
  v7 = [a2 rawAddress];
  v3 = [a1[4] conversation];
  v4 = [v3 chat];
  v5 = [v4 account];
  v6 = [v5 imHandleWithID:v7 alreadyCanonical:0];

  [a1[5] addObject:v6];
  [a1[6] addObject:v7];
}

- (void)handleCancelAction:(id)action
{
  addRecipientsController = [(CKDetailsController *)self addRecipientsController];
  [addRecipientsController stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  [addRecipientsController invalidateOutstandingIDStatusRequests];
  [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
  [(CKDetailsController *)self setAddRecipientsController:0];
}

- (void)toggleHideAlertsWithReload:(BOOL)reload
{
  reloadCopy = reload;
  conversation = [(CKDetailsController *)self conversation];
  isMuted = [conversation isMuted];

  [(CKDetailsController *)self setHideAlerts:isMuted ^ 1u reload:reloadCopy];
}

- (void)toggleAutomaticallyTranslate
{
  conversation = [(CKDetailsController *)self conversation];
  shouldAutomaticallyTranslate = [conversation shouldAutomaticallyTranslate];

  [(CKDetailsController *)self setShouldAutomaticallyTranslate:shouldAutomaticallyTranslate ^ 1u];
}

- (void)setShouldAutomaticallyTranslate:(BOOL)translate
{
  translateCopy = translate;
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (translateCopy)
      {
        v6 = @"YES";
      }

      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Set shouldAutomaticallyTranslate to %@", &v15, 0xCu);
    }
  }

  conversation = [(CKDetailsController *)self conversation];
  translationLanguageCode = [conversation translationLanguageCode];
  if (translationLanguageCode)
  {
    v9 = 0;
  }

  else
  {
    v9 = translateCopy;
  }

  if (v9)
  {
    [(CKDetailsController *)self showLanguagePicker];
  }

  else
  {
    conversation2 = [(CKDetailsController *)self conversation];
    conversation3 = [(CKDetailsController *)self conversation];
    translationLanguageCode2 = [conversation3 translationLanguageCode];
    [conversation2 setAutomaticallyTranslate:translateCopy languageCode:translationLanguageCode2 userLanguageCode:0];

    tableView = [(CKDetailsController *)self tableView];
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:10];
    [tableView reloadSections:v14 withRowAnimation:5];
  }
}

- (void)showLanguagePicker
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__CKDetailsController_showLanguagePicker__block_invoke;
  v2[3] = &unk_1E72EFA48;
  v2[4] = self;
  [(CKDetailsController *)self presentLanguagePickViewControllerWithCompletion:v2];
}

void __41__CKDetailsController_showLanguagePicker__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 conversation];
  [v8 setAutomaticallyTranslate:1 languageCode:v6 userLanguageCode:v7];

  v10 = [*(a1 + 32) tableView];
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:10];
  [v10 reloadSections:v9 withRowAnimation:5];
}

- (void)setHideAlerts:(BOOL)alerts reload:(BOOL)reload
{
  reloadCopy = reload;
  alertsCopy = alerts;
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (alertsCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Set hideAlerts to %@", buf, 0xCu);
    }
  }

  conversation = [(CKDetailsController *)self conversation];
  v10 = conversation;
  if (alertsCopy)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [v10 setMutedUntilDate:distantFuture];
  }

  else
  {
    [conversation unmute];
  }

  if (reloadCopy)
  {
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:9];
    tableView = [(CKDetailsController *)self tableView];
    v15 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [tableView reloadRowsAtIndexPaths:v14 withRowAnimation:0];
  }
}

- (void)toggleSendReadReceiptsWithReload:(BOOL)reload
{
  reloadCopy = reload;
  conversation = [(CKDetailsController *)self conversation];
  shouldSendReadReceipts = [conversation shouldSendReadReceipts];

  [(CKDetailsController *)self setSendReadReceipts:shouldSendReadReceipts ^ 1u reload:reloadCopy];
}

- (void)setSendReadReceipts:(BOOL)receipts reload:(BOOL)reload
{
  reloadCopy = reload;
  receiptsCopy = receipts;
  v19 = *MEMORY[0x1E69E9840];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isSMS = [chat isSMS];

  if ((isSMS & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"NO";
        if (receiptsCopy)
        {
          v11 = @"YES";
        }

        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Set sendReadReceipts to %@", buf, 0xCu);
      }
    }

    conversation2 = [(CKDetailsController *)self conversation];
    [conversation2 setSendReadReceipts:receiptsCopy];

    if (reloadCopy)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:9];
      tableView = [(CKDetailsController *)self tableView];
      v16 = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [tableView reloadRowsAtIndexPaths:v15 withRowAnimation:0];
    }
  }
}

- (void)toggleShareFocusStatusWithReload:(BOOL)reload
{
  reloadCopy = reload;
  isSharingFocusStatus = [(CKDetailsController *)self isSharingFocusStatus];
  bOOLValue = [isSharingFocusStatus BOOLValue];

  [(CKDetailsController *)self setShareFocusStatus:bOOLValue ^ 1u reload:reloadCopy];
}

- (void)setShareFocusStatus:(BOOL)status reload:(BOOL)reload
{
  statusCopy = status;
  v37 = *MEMORY[0x1E69E9840];
  canShareFocusStatus = [(CKDetailsController *)self canShareFocusStatus];
  bOOLValue = [canShareFocusStatus BOOLValue];

  if (bOOLValue)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke;
    aBlock[3] = &unk_1E72EFA70;
    reloadCopy = reload;
    aBlock[4] = self;
    objc_copyWeak(&v30, &location);
    v9 = _Block_copy(aBlock);
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];

    recipient = [chat recipient];
    normalizedID = [recipient normalizedID];

    if (statusCopy)
    {
      lastAddressedHandleID = [chat lastAddressedHandleID];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v34 = normalizedID;
          v35 = 2112;
          v36 = lastAddressedHandleID;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "User requested begin sharing focus status with handleID: %@ fromHandleID: %@", buf, 0x16u);
        }
      }

      mEMORY[0x1E69A7F08] = [MEMORY[0x1E69A7F08] sharedInstance];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_585;
      v24[3] = &unk_1E72EFA98;
      v25 = normalizedID;
      v17 = lastAddressedHandleID;
      v26 = v17;
      objc_copyWeak(&v28, &location);
      v27 = v9;
      [mEMORY[0x1E69A7F08] manuallyShareFocusStatusWithHandleID:v25 fromHandleID:v17 completion:v24];

      objc_destroyWeak(&v28);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = normalizedID;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "User requested end sharing focus status with handleID: %@", buf, 0xCu);
        }
      }

      mEMORY[0x1E69A7F08]2 = [MEMORY[0x1E69A7F08] sharedInstance];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_587;
      v20[3] = &unk_1E72EFAC0;
      v21 = normalizedID;
      objc_copyWeak(&v23, &location);
      v22 = v9;
      [mEMORY[0x1E69A7F08]2 manuallyRemoveSharingOfFocusStatusWithHandleID:v21 completion:v20];

      objc_destroyWeak(&v23);
      v17 = v21;
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_2;
    v3[3] = &unk_1E72EE0D0;
    v3[4] = *(a1 + 32);
    objc_copyWeak(v4, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(v4);
  }
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(a1 + 32) inSection:{"_targetToggleIndexForOptionRow:", 2), 9}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained tableView];
  v6[0] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:0];
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_585(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6 || (a3 & 1) == 0)
  {
    WeakRetained = IMLogHandleForCategory();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_585_cold_1();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Successfully shared focus status with handleID: %@ fromHandleID: %@", &v11, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setIsSharingFocusStatus:MEMORY[0x1E695E118]];
  }

  (*(*(a1 + 48) + 16))();
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_587(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    WeakRetained = IMLogHandleForCategory();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_587_cold_1();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Successfully manually unshared focus status with handleID: %@", &v7, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setIsSharingFocusStatus:MEMORY[0x1E695E110]];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)toggleShowInSharedWithYouWithReload:(BOOL)reload
{
  reloadCopy = reload;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isAutoDonatingMessages = [chat isAutoDonatingMessages];

  [(CKDetailsController *)self setShowInSharedWithYou:isAutoDonatingMessages ^ 1u reload:reloadCopy];
}

- (void)setShowInSharedWithYou:(BOOL)you reload:(BOOL)reload
{
  reloadCopy = reload;
  youCopy = you;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(CKDetailsController *)self shouldShowSharedWithYouFeatures])
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    [chat sendAutoDonationUpdate:youCopy];

    if (reloadCopy)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:8];
      tableView = [(CKDetailsController *)self tableView];
      v12[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [tableView reloadRowsAtIndexPaths:v11 withRowAnimation:0];
    }
  }
}

- (void)adjustContentOffsetReloadingSharedAssetsContentViewCell
{
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)contactsManagerViewModelsDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x1E696AD98];
      contactsViewModels = [changeCopy contactsViewModels];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(contactsViewModels, "count")}];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Contacts view models changed, new model count:%@", &v14, 0xCu);
    }
  }

  if ([(CKDetailsController *)self shouldCollapseContactsSection])
  {
    [(CKDetailsController *)self setIsContactsSectionCollapsed:[(CKDetailsController *)self isContactsSectionCollapsible]];
    [(CKDetailsController *)self setShouldCollapseContactsSection:0];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "DISMISSED SIM switch menu", &v14, 2u);
    }
  }

  simSwitchCell = [(CKDetailsController *)self simSwitchCell];
  button = [simSwitchCell button];
  contextMenuInteraction = [button contextMenuInteraction];
  [contextMenuInteraction dismissMenu];

  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)_hideAllContactCellButtons
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  tableView = [(CKDetailsController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        tableView2 = [(CKDetailsController *)self tableView];
        v11 = [tableView2 indexPathForCell:v9];

        if ([v11 section] == 6)
        {
          if (CKIsRunningInMacCatalyst())
          {
            conversation = [(CKDetailsController *)self conversation];
            isGroupConversation = [conversation isGroupConversation];

            if (isGroupConversation)
            {
              v14 = [v11 row];
              if (v14 != [(CKDetailsController *)self rowForShowMoreContactsCell])
              {
                v15 = [v11 row];
                if (v15 != [(CKDetailsController *)self rowForAddMemberCell])
                {
                  v16 = [v11 row];
                  if (v16 != [(CKDetailsController *)self rowForTUConversationCell])
                  {
                    [v9 _hideAllButtons];
                  }
                }
              }
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_presentRemoveRecipientSheetForHandle:(id)handle fromView:(id)view
{
  handleCopy = handle;
  v7 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"REMOVE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  fullName = [handleCopy fullName];
  v11 = [v7 stringWithFormat:v9, fullName];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v14 = @"\u200F";
  }

  else
  {
    v14 = @"\u200E";
  }

  v15 = [(__CFString *)v14 stringByAppendingString:v11];

  v16 = [CKAlertController alertControllerWithTitle:v15 message:0 preferredStyle:0];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"REMOVE" value:&stru_1F04268F8 table:@"ChatKit"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __70__CKDetailsController__presentRemoveRecipientSheetForHandle_fromView___block_invoke;
  v36[3] = &unk_1E72EC710;
  v36[4] = self;
  v37 = handleCopy;
  v19 = handleCopy;
  v20 = [CKAlertAction actionWithTitle:v18 style:2 handler:v36];
  [v16 addAction:v20];

  v21 = CKFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v23 = [CKAlertAction actionWithTitle:v22 style:1 handler:0];
  [v16 addAction:v23];

  popoverPresentationController = [v16 popoverPresentationController];
  [viewCopy frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [popoverPresentationController setSourceRect:{v26, v28, v30, v32}];
  popoverPresentationController2 = [v16 popoverPresentationController];
  view = [(CKDetailsController *)self view];
  [popoverPresentationController2 setSourceView:view];

  [v16 presentFromViewController:self animated:1 completion:0];
}

void __70__CKDetailsController__presentRemoveRecipientSheetForHandle_fromView___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) conversation];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 removeRecipientHandles:v3];
}

- (void)presentLeaveActionSheetFromView:(id)view
{
  viewCopy = view;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"LEAVE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];

  if (CKIsRunningInMacCatalyst())
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"LEAVE_CONVERSATION_CONFIRMATION" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"LEAVE_CONVERSATION_EXTRA_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

    v6 = v10;
  }

  else
  {
    v8 = 0;
  }

  v11 = [CKAlertController alertControllerWithTitle:0 message:v8 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__CKDetailsController_presentLeaveActionSheetFromView___block_invoke;
  v26[3] = &unk_1E72EBFE8;
  v26[4] = self;
  v12 = [CKAlertAction actionWithTitle:v6 style:2 handler:v26];
  [v11 addAction:v12];

  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v15 = [CKAlertAction actionWithTitle:v14 style:1 handler:0];
  [v11 addAction:v15];

  selfCopy = self;
  detailsControllerDelegate = [(CKDetailsController *)selfCopy detailsControllerDelegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  v18 = selfCopy;
  if ((v13 & 1) == 0 || ((-[CKDetailsController detailsControllerDelegate](selfCopy, "detailsControllerDelegate"), v19 = objc_claimAutoreleasedReturnValue(), [v19 presentingViewControllerForAlertsFromDetailsController:selfCopy], v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0) ? (v22 = v20) : (v22 = selfCopy), v18 = v22, selfCopy, v21, v19, v18 == selfCopy))
  {
    popoverPresentationController = [v11 popoverPresentationController];
    [viewCopy frame];
    [popoverPresentationController setSourceRect:?];

    popoverPresentationController2 = [v11 popoverPresentationController];
    view = [(CKDetailsController *)selfCopy view];
    [popoverPresentationController2 setSourceView:view];
  }

  [v11 presentFromViewController:v18 animated:1 completion:0];
}

void __55__CKDetailsController_presentLeaveActionSheetFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  [v3 leave];

  v4 = [*(a1 + 32) conversation];
  v5 = [v4 chat];
  v6 = [v5 hasRecipientsFollowingLocation];

  if (v6)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARING_ON_DELETE_OR_LEAVE_BODY" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [v7 alertControllerWithTitle:0 message:v9 preferredStyle:1];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"YES" value:&stru_1F04268F8 table:@"ChatKit"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__CKDetailsController_presentLeaveActionSheetFromView___block_invoke_2;
    v18[3] = &unk_1E72EBFE8;
    v18[4] = *(a1 + 32);
    v13 = [CKAlertAction actionWithTitle:v12 style:0 handler:v18];
    [v10 addAction:v13];

    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"NO" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
    [v10 addAction:v16];

    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  v17 = [*(a1 + 32) tableView];
  [v17 reloadData];
}

void __55__CKDetailsController_presentLeaveActionSheetFromView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v1 = [v2 chat];
  [v1 stopSharingLocation];
}

- (void)presentDeleteAndBlockActionSheetFromView:(id)view
{
  viewCopy = view;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"DELETE_AND_BLOCK_CONVERSATION_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"DELETE_AND_BLOCK_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];

  if (CKIsRunningInMacCatalyst())
  {
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"DELETE_AND_BLOCK_CONVERSATION_TITLE_CATALYST" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"DELETE_AND_BLOCK_CONVERSATION_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = v12;
  }

  else
  {
    v10 = 0;
  }

  v13 = [CKAlertController alertControllerWithTitle:v10 message:v6 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__CKDetailsController_presentDeleteAndBlockActionSheetFromView___block_invoke;
  v28[3] = &unk_1E72EBFE8;
  v28[4] = self;
  v14 = [CKAlertAction actionWithTitle:v8 style:2 handler:v28];
  [v13 addAction:v14];

  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v17 = [CKAlertAction actionWithTitle:v16 style:1 handler:0];
  [v13 addAction:v17];

  selfCopy = self;
  detailsControllerDelegate = [(CKDetailsController *)selfCopy detailsControllerDelegate];
  LOBYTE(v15) = objc_opt_respondsToSelector();

  v20 = selfCopy;
  if ((v15 & 1) == 0 || ((-[CKDetailsController detailsControllerDelegate](selfCopy, "detailsControllerDelegate"), v21 = objc_claimAutoreleasedReturnValue(), [v21 presentingViewControllerForAlertsFromDetailsController:selfCopy], v22 = objc_claimAutoreleasedReturnValue(), (v23 = v22) != 0) ? (v24 = v22) : (v24 = selfCopy), v20 = v24, selfCopy, v23, v21, v20 == selfCopy))
  {
    popoverPresentationController = [v13 popoverPresentationController];
    [viewCopy frame];
    [popoverPresentationController setSourceRect:?];

    popoverPresentationController2 = [v13 popoverPresentationController];
    view = [(CKDetailsController *)selfCopy view];
    [popoverPresentationController2 setSourceView:view];
  }

  [v13 presentFromViewController:v20 animated:1 completion:0];
}

void __64__CKDetailsController_presentDeleteAndBlockActionSheetFromView___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  v4 = [v3 hasRecipientsFollowingLocation];

  if (v4)
  {
    v5 = MEMORY[0x1E69DC650];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"STOP_SHARING_ON_DELETE_OR_LEAVE_BODY" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 alertControllerWithTitle:0 message:v7 preferredStyle:1];

    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"YES" value:&stru_1F04268F8 table:@"ChatKit"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__CKDetailsController_presentDeleteAndBlockActionSheetFromView___block_invoke_2;
    v22[3] = &unk_1E72EBFE8;
    v22[4] = *(a1 + 32);
    v11 = [CKAlertAction actionWithTitle:v10 style:0 handler:v22];
    [v8 addAction:v11];

    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"NO" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [CKAlertAction actionWithTitle:v13 style:1 handler:0];
    [v8 addAction:v14];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  v15 = [*(a1 + 32) conversation];
  v16 = [v15 chat];
  [v16 setDeletingIncomingMessages:1];

  v17 = +[CKConversationList sharedConversationList];
  v18 = [*(a1 + 32) conversation];
  v23[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20 = [MEMORY[0x1E695DF00] now];
  [v17 recoverableDeleteForConversations:v19 deleteDate:v20 synchronousQuery:0 completionHandler:0];

  v21 = [*(a1 + 32) detailsControllerDelegate];
  [v21 dismissDetailsViewAndShowConversationList];
}

void __64__CKDetailsController_presentDeleteAndBlockActionSheetFromView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v1 = [v2 chat];
  [v1 stopSharingLocation];
}

- (void)detailsAddGroupNameView:(id)view didCommitGroupName:(id)name
{
  nameCopy = name;
  conversation = [(CKDetailsController *)self conversation];
  [conversation setDisplayName:nameCopy];
}

- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  propertiesCopy = properties;
  if ([category isEqualToString:*MEMORY[0x1E695D070]])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = propertiesCopy;
    obj = propertiesCopy;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v12 = *MEMORY[0x1E695C208];
      v27 = *MEMORY[0x1E695C330];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [v14 key];
          v16 = [v15 isEqualToString:v12];

          if (v16)
          {
            value = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v27];

            if (v19)
            {
              value2 = [v14 value];
              value = [value2 stringValue];
            }

            else
            {
              value = 0;
            }
          }

          v21 = IMStripFormattingFromAddress();

          preferredHandle = [viewCopy preferredHandle];
          v23 = IMStripFormattingFromAddress();
          v24 = MEMORY[0x193AF6640](v21, v23);

          if (v24)
          {
            [v8 insertObject:v14 atIndex:0];
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    propertiesCopy = v26;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNContactStore)suggestionsEnabledContactStore
{
  if (!self->_suggestionsEnabledContactStore)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695CE28]);
      [(CNContactStore *)v5 setIncludeLocalContacts:1];
      -[CNContactStore setIncludeSuggestedContacts:](v5, "setIncludeSuggestedContacts:", [MEMORY[0x1E695CD58] suggestionsEnabled]);
      if (objc_opt_respondsToSelector())
      {
        [(CNContactStore *)v5 setIncludeAcceptedIntroductions:1];
      }

      v6 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v5];
      suggestionsEnabledContactStore = self->_suggestionsEnabledContactStore;
      self->_suggestionsEnabledContactStore = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695CE18];
      if ([MEMORY[0x1E695CD58] suggestionsEnabled])
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      v10 = [v8 storeWithOptions:v9];
      v5 = self->_suggestionsEnabledContactStore;
      self->_suggestionsEnabledContactStore = v10;
    }
  }

  v11 = self->_suggestionsEnabledContactStore;

  return v11;
}

- (CGSize)screenSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  groupNameCell = [(CKDetailsController *)self groupNameCell];
  groupNameView = [groupNameCell groupNameView];
  [groupNameView commitGroupName];

  if (CKIsRunningInMacCatalyst())
  {

    [(CKDetailsController *)self _hideAllContactCellButtons];
  }
}

- (void)presentFullFMFMapViewController
{
  v3 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMF");
  if (v3)
  {
    v4 = [v3 alloc];
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    allSiblingFMFHandles = [chat allSiblingFMFHandles];
    v12 = [v4 initWithDelegate:self handles:allSiblingFMFHandles];

    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    appTintColor = [theme appTintColor];
    [v12 setAnnotationTintColor:appTintColor];

    navigationController = [(CKDetailsController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];
  }
}

- (id)fmfHandlesFromIMHandles:(id)handles
{
  v40 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = handlesCopy;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    v26 = *v35;
    v27 = v4;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
        v11 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:v9];
        fmfLocation = [v11 fmfLocation];

        if (fmfLocation)
        {
          location = [fmfLocation location];

          if (location)
          {
            handle = [fmfLocation handle];
LABEL_10:
            [v4 addObject:handle];
            goto LABEL_22;
          }
        }

        handle = [v9 findMyHandle];
        mEMORY[0x1E69A5B70]2 = [MEMORY[0x1E69A5B70] sharedInstance];
        v16 = [mEMORY[0x1E69A5B70]2 findMyHandleIsSharingLocationWithMe:handle];

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        findMySiblingHandles = [v9 findMySiblingHandles];
        v18 = [findMySiblingHandles countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(findMySiblingHandles);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              mEMORY[0x1E69A5B70]3 = [MEMORY[0x1E69A5B70] sharedInstance];
              v24 = [mEMORY[0x1E69A5B70]3 findMyHandleIsSharingLocationWithMe:v22];

              if (v24)
              {
                v4 = v27;
                [v27 addObject:v22];

                goto LABEL_21;
              }
            }

            v19 = [findMySiblingHandles countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v4 = v27;
LABEL_21:
        v7 = v26;
        v6 = v28;
LABEL_22:

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)annotationImageForHandle:(id)handle
{
  v37 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  participants = [chat participants];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = participants;
  v25 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v9 = *v32;
    v26 = v8;
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        siblings = [v11 siblings];
        v13 = [siblings countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(siblings);
              }

              v17 = *(*(&v27 + 1) + 8 * j);
              v18 = [v17 ID];
              identifier = [handleCopy identifier];
              v20 = [v18 isEqualToIgnoringCase:identifier];

              if (v20)
              {
                v22 = [[CKEntity alloc] initWithIMHandle:v17];
                locationMapViewContactImage = [(CKEntity *)v22 locationMapViewContactImage];

                v8 = v26;
                goto LABEL_19;
              }
            }

            v14 = [siblings countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v8 = v26;
        v9 = v24;
      }

      locationMapViewContactImage = 0;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    locationMapViewContactImage = 0;
  }

LABEL_19:

  return locationMapViewContactImage;
}

- (id)annotationContactForHandle:(id)handle
{
  v38[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  participants = [chat participants];

  v8 = [MEMORY[0x1E695D188] descriptorForRequiredKeysIncludingImage:1];
  v38[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = participants;
  v26 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v11 = *v33;
    v24 = *v33;
    v25 = v9;
    v27 = v10;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        findMySiblingHandles = [v13 findMySiblingHandles];
        v15 = [findMySiblingHandles countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(findMySiblingHandles);
              }

              identifier = [*(*(&v28 + 1) + 8 * j) identifier];
              identifier2 = [handleCopy identifier];
              v21 = [identifier isEqualToIgnoringCase:identifier2];

              if (v21)
              {
                v9 = v25;
                v22 = [v13 cnContactWithKeys:v25];

                v10 = v27;
                goto LABEL_19;
              }
            }

            v16 = [findMySiblingHandles countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v10 = v27;
        v11 = v24;
      }

      v22 = 0;
      v9 = v25;
      v26 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  return v22;
}

- (void)fmfMapViewController:(id)controller didSelectHandle:(id)handle
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = handleCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Map participant selected: %@", &v11, 0xCu);
    }
  }

  contactsManager = [(CKDetailsController *)self contactsManager];
  contacts = [contactsManager contacts];
  [contacts enumerateObjectsUsingBlock:&__block_literal_global_632_0];
}

- (void)fmfMapViewController:(id)controller didDeselectHandle:(id)handle
{
  v10 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = handleCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Map participant de-selected: %@", &v8, 0xCu);
    }
  }
}

- (UITextView)locationSharingTextView
{
  locationSharingTextView = self->_locationSharingTextView;
  if (!locationSharingTextView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_locationSharingTextView;
    self->_locationSharingTextView = v5;

    [(UITextView *)self->_locationSharingTextView setEditable:0];
    [(UITextView *)self->_locationSharingTextView _setInteractiveTextSelectionDisabled:1];
    textContainer = [(UITextView *)self->_locationSharingTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)self->_locationSharingTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_locationSharingTextView setBackgroundColor:0];
    v8 = self->_locationSharingTextView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:secondaryLabelColor];

    [(UITextView *)self->_locationSharingTextView setScrollEnabled:0];
    v10 = self->_locationSharingTextView;
    v11 = +[CKUIBehavior sharedBehaviors];
    headerFont = [v11 headerFont];
    [(UITextView *)v10 setFont:headerFont];

    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    activeDevice = [mEMORY[0x1E69A5B70] activeDevice];

    v15 = MEMORY[0x1E696AEC0];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"LOCATION_CURRENTLY_SHARING_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = activeDevice;
    deviceName = [activeDevice deviceName];
    v19 = [v15 stringWithFormat:v17, deviceName];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v22 = @"\u200F";
    }

    else
    {
      v22 = @"\u200E";
    }

    v23 = [(__CFString *)v22 stringByAppendingString:v19];

    v24 = CKFrameworkBundle();
    v25 = [v24 localizedStringForKey:@"LOCATION_SHARE_FROM_THIS_DEVICE" value:&stru_1F04268F8 table:@"ChatKit"];

    if (-[CKDetailsController fmfRestricted](self, "fmfRestricted") || CKIsRunningInMacCatalyst() || ([v45 isThisDevice] & 1) != 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v23, v25];
    }

    v27 = v26;
    v28 = [v26 rangeOfString:v25];
    v43 = v29;
    v44 = v28;
    v30 = [v27 length];
    v31 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v27];
    v32 = *MEMORY[0x1E69DB648];
    v33 = +[CKUIBehavior sharedBehaviors];
    headerFont2 = [v33 headerFont];
    [v31 addAttribute:v32 value:headerFont2 range:{0, v30}];

    v35 = *MEMORY[0x1E69DB650];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v31 addAttribute:v35 value:secondaryLabelColor2 range:{0, v30}];

    if (![(CKDetailsController *)self fmfRestricted]&& !CKIsRunningInMacCatalyst())
    {
      v42 = +[CKUIBehavior sharedBehaviors];
      theme = [v42 theme];
      appTintColor = [theme appTintColor];
      [v31 addAttribute:v35 value:appTintColor range:{v44, v43}];

      v39 = *MEMORY[0x1E69DB670];
      v40 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F04268F8];
      [v31 addAttribute:v39 value:v40 range:{v44, v43}];

      [v31 addAttribute:*MEMORY[0x1E69DB758] value:MEMORY[0x1E695E110] range:{v44, v43}];
    }

    [(UITextView *)self->_locationSharingTextView setAttributedText:v31];
    [(UITextView *)self->_locationSharingTextView setDelegate:self];

    locationSharingTextView = self->_locationSharingTextView;
  }

  return locationSharingTextView;
}

- (UITextView)expanseActivityTextView
{
  expanseActivityTextView = self->_expanseActivityTextView;
  if (!expanseActivityTextView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_expanseActivityTextView;
    self->_expanseActivityTextView = v5;

    [(UITextView *)self->_expanseActivityTextView setEditable:0];
    textContainer = [(UITextView *)self->_expanseActivityTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)self->_expanseActivityTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_expanseActivityTextView setBackgroundColor:0];
    v8 = self->_expanseActivityTextView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:secondaryLabelColor];

    [(UITextView *)self->_expanseActivityTextView setScrollEnabled:0];
    v10 = self->_expanseActivityTextView;
    v11 = +[CKUIBehavior sharedBehaviors];
    headerFont = [v11 headerFont];
    [(UITextView *)v10 setFont:headerFont];

    v13 = self->_expanseActivityTextView;
    tuConversation = [(CKDetailsController *)self tuConversation];
    v15 = [CKTUConversationViewUtilities activityDescriptionStringForTUConversation:tuConversation];
    [(UITextView *)v13 setText:v15];

    expanseActivityTextView = self->_expanseActivityTextView;
  }

  return expanseActivityTextView;
}

- (UITextView)sharedWithYouFooterTextView
{
  sharedWithYouFooterTextView = self->_sharedWithYouFooterTextView;
  if (!sharedWithYouFooterTextView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_sharedWithYouFooterTextView;
    self->_sharedWithYouFooterTextView = v5;

    [(UITextView *)self->_sharedWithYouFooterTextView setEditable:0];
    [(UITextView *)self->_sharedWithYouFooterTextView _setInteractiveTextSelectionDisabled:1];
    textContainer = [(UITextView *)self->_sharedWithYouFooterTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)self->_sharedWithYouFooterTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_sharedWithYouFooterTextView setBackgroundColor:0];
    v8 = self->_sharedWithYouFooterTextView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:secondaryLabelColor];

    [(UITextView *)self->_sharedWithYouFooterTextView setScrollEnabled:0];
    v10 = CKFrameworkBundle();
    v30 = [v10 localizedStringForKey:@"MARK_AS_AUTO_DONATING_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = CKFrameworkBundle();
    v29 = [v11 localizedStringForKey:@"SHARED_WITH_YOU_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v30, v29];
    v27 = [v12 rangeOfString:v29];
    v14 = v13;
    v15 = [v12 length];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
    v17 = +[CKUIBehavior sharedBehaviors];
    headerFont = [v17 headerFont];
    v28 = [CKUIBehavior font:headerFont adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC28]];

    [v16 addAttribute:*MEMORY[0x1E69DB648] value:v28 range:{0, v15}];
    v19 = *MEMORY[0x1E69DB650];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v16 addAttribute:v19 value:secondaryLabelColor2 range:{0, v15}];

    v21 = +[CKUIBehavior sharedBehaviors];
    theme = [v21 theme];
    linkColor = [theme linkColor];
    [v16 addAttribute:v19 value:linkColor range:{v27, v14}];

    v24 = *MEMORY[0x1E69DB670];
    v25 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F04268F8];
    [v16 addAttribute:v24 value:v25 range:{v27, v14}];

    [v16 addAttribute:*MEMORY[0x1E69DB758] value:MEMORY[0x1E695E110] range:{v27, v14}];
    [(UITextView *)self->_sharedWithYouFooterTextView setAttributedText:v16];
    [(UITextView *)self->_sharedWithYouFooterTextView setDelegate:self];

    sharedWithYouFooterTextView = self->_sharedWithYouFooterTextView;
  }

  return sharedWithYouFooterTextView;
}

- (id)downloadAttachmentsText
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKDetailsController _purgedAttachmentCount](self, "_purgedAttachmentCount")}];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"THERE_ARE_IMAGE_ATTACHMENTS_IN_ICLOUD" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [v3 localizedStringWithFormat:v5, v2];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v9 = @"\u200F";
  }

  else
  {
    v9 = @"\u200E";
  }

  v10 = [(__CFString *)v9 stringByAppendingString:v6];

  return v10;
}

- (id)downloadButtonText
{
  downloadButtonState = [(CKDetailsController *)self downloadButtonState];
  v3 = @"DOWNLOAD";
  if (downloadButtonState == 2)
  {
    v3 = @"DOWNLOADING";
  }

  v4 = v3;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

  return v6;
}

- (CKBusinessInfoView)businessInfoView
{
  businessInfoView = self->_businessInfoView;
  if (!businessInfoView)
  {
    v4 = [[CKBusinessInfoView alloc] initWithLayoutType:1];
    v5 = self->_businessInfoView;
    self->_businessInfoView = v4;

    [(CKBusinessInfoView *)self->_businessInfoView setDelegate:self];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"BUSINESS_DESCRIPTION_IN_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
    [(CKBusinessInfoView *)self->_businessInfoView setDescriptionText:v7];

    businessInfoView = self->_businessInfoView;
  }

  return businessInfoView;
}

- (void)businessInfoView:(id)view infoButtonTapped:(id)tapped
{
  v9 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:{*MEMORY[0x1E69B7D78], tapped}];
  if (CKIsRunningInMacCatalyst())
  {
    detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
    v6 = [detailsControllerDelegate detailsControllerBusinessPrivacyInfoPresentingViewController:self];

    if (v6 && v6 != self)
    {
      detailsControllerDelegate2 = [(CKDetailsController *)self detailsControllerDelegate];
      [detailsControllerDelegate2 dismissDetailsNavigationController];
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  [v9 setPresentingViewController:selfCopy];
  [v9 present];
}

+ (void)saveGroupPhotoDataAndUpdateParticipants:(id)participants forConversation:(id)conversation
{
  participantsCopy = participants;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Saving the group photo and updating the recipients.", v12, 2u);
    }
  }

  if (participantsCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager im_randomTemporaryFileURLWithFileName:*MEMORY[0x1E69A7018]];
    path = [v10 path];

    [participantsCopy writeToFile:path atomically:1];
  }

  else
  {
    path = 0;
  }

  [self updateParticipantsWithGroupPhotoAtPath:path forConversation:conversationCopy];
}

+ (void)updateParticipantsWithGroupPhotoAtPath:(id)path forConversation:(id)conversation
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = pathCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Should update group photo at path: %@", &v15, 0xCu);
    }
  }

  if (!pathCopy)
  {
    v10 = 0;
    goto LABEL_13;
  }

  chat = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  v10 = [mEMORY[0x1E69A5B80] createNewOutgoingGroupPhotoTransferWithLocalFileURL:chat];

  mEMORY[0x1E69A5B80]2 = [MEMORY[0x1E69A5B80] sharedInstance];
  v12 = [mEMORY[0x1E69A5B80]2 transferForGUID:v10];

  if (v12)
  {
    mEMORY[0x1E69A5B80]3 = [MEMORY[0x1E69A5B80] sharedInstance];
    [mEMORY[0x1E69A5B80]3 registerTransferWithDaemon:v10];

LABEL_13:
    chat = [conversationCopy chat];
    [chat sendGroupPhotoUpdate:v10];
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "IMFileTransfer is nil.", &v15, 2u);
    }
  }

LABEL_14:
}

- (void)userDidTapDownloadForAttachmentsFooterView:(id)view
{
  if ([(CKDetailsController *)self downloadButtonState]!= 2)
  {
    [(CKDetailsController *)self setDownloadButtonState:2];
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    [chat downloadPurgedAttachments];
  }
}

- (unint64_t)_purgedAttachmentCount
{
  if (!self->_didPerformPurgedAttachmentsCheck)
  {
    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    countOfAttachmentsNotCachedLocally = [chat countOfAttachmentsNotCachedLocally];
    self->_undownloadedPhotoAttachmentCount = [countOfAttachmentsNotCachedLocally integerValue];

    self->_didPerformPurgedAttachmentsCheck = 1;
  }

  return self->_undownloadedPhotoAttachmentCount;
}

- (void)setDownloadButtonState:(unint64_t)state
{
  self->_downloadButtonState = state;
  if (state - 1 <= 1)
  {
    [(CKDetailsController *)self _updateDownloadFooterView];
  }
}

- (void)_updateDownloadButtonStateIfNeeded
{
  downloadButtonState = [(CKDetailsController *)self downloadButtonState];
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CKDetailsController__updateDownloadButtonStateIfNeeded__block_invoke;
  v6[3] = &unk_1E72EFB08;
  v6[4] = self;
  v6[5] = downloadButtonState;
  [chat fetchIsCurrentlyDownloadingPurgedAttachments:v6];
}

void __57__CKDetailsController__updateDownloadButtonStateIfNeeded__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v5 = [v3 shouldShowDownloadMoreCell];
    v3 = *(a1 + 32);
    v4 = v5 != 0;
  }

  [v3 setDownloadButtonState:v4];
  v6 = *(a1 + 40);
  if (v6 != [*(a1 + 32) downloadButtonState])
  {
    v7 = [*(a1 + 32) tableView];
    [v7 reloadData];
  }
}

- (void)_batchDownloadNotificationFired:(id)fired
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CKDetailsController__batchDownloadNotificationFired___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CKDetailsController__batchDownloadNotificationFired___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetPurgedAttachmentCount];
  [*(a1 + 32) _updateDownloadButtonStateIfNeeded];
  [*(a1 + 32) _updateDownloadFooterView];
  v2 = [*(a1 + 32) searchViewController];
  [v2 rekickZKWSearchForAttachmentBatchUpdate];
}

- (void)_presentGroupNameAndPhotoEditor
{
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  _generateGroupImagePickerViewController = [(CKDetailsController *)self _generateGroupImagePickerViewController];
  v5 = [v3 initWithRootViewController:_generateGroupImagePickerViewController];

  [(CKDetailsController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)_generateGroupImagePickerViewController
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptorForRequiredKeys = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v9[0] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  conversation = [(CKDetailsController *)self conversation];
  v6 = [conversation conversationVisualIdentityWithKeys:v4 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

  v7 = [MEMORY[0x1E695D1E0] imagePickerForGroupIdentity:v6];
  [v7 setDelegate:self];
  [v7 setPresenterDelegate:self];

  return v7;
}

- (void)groupIdentityHeaderViewController:(id)controller didDismissSharedProfileBannerWithUpdatedContact:(id)contact forAction:(unint64_t)action
{
  [(CKDetailsController *)self setShouldForceGroupPhotoHeaderReload:1, contact, action];
  tableView = [(CKDetailsController *)self tableView];
  [tableView reloadData];
}

- (void)_dismissIdentityPicker:(id)picker
{
  presentingViewController = [picker presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image
{
  v35[1] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  identityCopy = identity;
  imageCopy = image;
  descriptorForRequiredKeys = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v35[0] = descriptorForRequiredKeys;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];

  conversation = [(CKDetailsController *)self conversation];
  v14 = [conversation conversationVisualIdentityWithKeys:v12 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

  thumbnailImageData = [identityCopy thumbnailImageData];
  groupPhoto = [v14 groupPhoto];
  v17 = [thumbnailImageData isEqualToData:groupPhoto];

  if ((v17 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Updating visual identity.", v34, 2u);
      }
    }

    conversation2 = [(CKDetailsController *)self conversation];
    chat = [conversation2 chat];
    isGroupChat = [chat isGroupChat];

    if (isGroupChat)
    {
      thumbnailImageData2 = [identityCopy thumbnailImageData];
      conversation3 = [(CKDetailsController *)self conversation];
      [CKDetailsController saveGroupPhotoDataAndUpdateParticipants:thumbnailImageData2 forConversation:conversation3];
    }

    conversation4 = [(CKDetailsController *)self conversation];
    [conversation4 setNeedsUpdatedGroupPhotoForVisualIdentity];
  }

  name = [identityCopy name];
  conversation5 = [(CKDetailsController *)self conversation];
  displayName = [conversation5 displayName];
  v28 = [name isEqualToString:displayName];

  if ((v28 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Updating display name.", v34, 2u);
      }
    }

    conversation6 = [(CKDetailsController *)self conversation];
    name2 = [identityCopy name];
    [conversation6 setDisplayName:name2];

    conversation7 = [(CKDetailsController *)self conversation];
    [conversation7 setNeedsUpdatedGroupNameForVisualIdentity];
  }

  conversation8 = [(CKDetailsController *)self conversation];
  [conversation8 setGroupIdentityUpdateHandleID:0];

  [(CKDetailsController *)self _dismissIdentityPicker:pickerCopy];
}

- (void)_handleAddingHandles:(id)handles allRecipientsAddresses:(id)addresses sender:(id)sender
{
  addressesCopy = addresses;
  handlesCopy = handles;
  addRecipientsController = [(CKDetailsController *)self addRecipientsController];
  conversation = [(CKDetailsController *)self conversation];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke;
  v12[3] = &unk_1E72EFB30;
  v12[4] = self;
  v13 = addressesCopy;
  v11 = addressesCopy;
  [addRecipientsController handleAddingHandles:handlesCopy conversation:conversation viewController:self allRecipientAddresses:v11 completion:v12];
}

void __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a2)
  {
    goto LABEL_27;
  }

  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"CREATE_NEW_GROUP_DESC" value:&stru_1F04268F8 table:@"ChatKit"];

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"CREATE_NEW_GROUP_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v13 = [*(a1 + 32) conversation];
  v14 = [v13 sendingService];
  v15 = [v14 name];
  v16 = [v15 isEqualToString:*MEMORY[0x1E69A7AF0]];

  v17 = *(a1 + 32);
  v77 = v7;
  if (v16)
  {
    v18 = [v17 _atLeastOneEmailPresentInHandles:v7];
    v19 = CKFrameworkBundle();
    v20 = v19;
    if (v18)
    {
      v21 = @"CREATE_NEW_GROUP_IMESSAGE_HAS_EMAILS_DESC";
    }

    else
    {
      v21 = @"CREATE_NEW_GROUP_IMESSAGE_DESC";
    }

    v49 = [v19 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKit"];
    v50 = 1;
  }

  else
  {
    v22 = [v17 conversation];
    v23 = [v22 sendingService];
    v24 = [v23 name];
    v25 = [v24 isEqualToString:*MEMORY[0x1E69A7AD8]];

    if (!v25)
    {
      v51 = v8;
      v50 = 1;
      v52 = v10;
      goto LABEL_18;
    }

    v75 = v12;
    v26 = [MEMORY[0x1E69A5CA0] smsService];
    v27 = [*(a1 + 32) conversation];
    v28 = [v27 lastAddressedHandle];
    v29 = [*(a1 + 32) conversation];
    v30 = [v29 lastAddressedSIMID];
    v31 = [v26 __ck_maxRecipientCountForHandle:v28 simID:v30];

    if ([v8 count] <= v31)
    {
      v72 = [*(a1 + 32) _atLeastOneEmailPresentInHandles:v7];
      v73 = CKFrameworkBundle();
      v20 = v73;
      if (v72)
      {
        v74 = @"CREATE_NEW_GROUP_RCS_HAS_EMAILS_DESC";
      }

      else
      {
        v74 = @"CREATE_NEW_GROUP_RCS_DESC";
      }

      v49 = [v73 localizedStringForKey:v74 value:&stru_1F04268F8 table:@"ChatKit"];
      v50 = 1;
      v12 = v75;
    }

    else
    {
      v32 = MEMORY[0x1E696ADA0];
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
      v20 = [v32 localizedStringFromNumber:v33 numberStyle:1];

      v34 = MEMORY[0x1E696AEC0];
      v35 = CKFrameworkBundle();
      v36 = [v35 localizedStringForKey:@"CANNOT_ADD_RECIPIENT" value:&stru_1F04268F8 table:@"ChatKit"];
      v37 = [v34 stringWithFormat:v36];

      v38 = [MEMORY[0x1E69DC668] sharedApplication];
      v39 = [v38 userInterfaceLayoutDirection];

      if (v39 == 1)
      {
        v40 = @"\u200F";
      }

      else
      {
        v40 = @"\u200E";
      }

      v41 = [(__CFString *)v40 stringByAppendingString:v37];

      v42 = MEMORY[0x1E696AEC0];
      v43 = CKFrameworkBundle();
      v44 = [v43 localizedStringForKey:@"ERR_ALL_RECIPIENTS_NEED_IMESSAGE_OR_RCS" value:&stru_1F04268F8 table:@"ChatKit"];
      v45 = [v42 stringWithFormat:v44, v20];

      v46 = [MEMORY[0x1E69DC668] sharedApplication];
      v47 = [v46 userInterfaceLayoutDirection];

      if (v47 == 1)
      {
        v48 = @"\u200F";
      }

      else
      {
        v48 = @"\u200E";
      }

      v49 = [(__CFString *)v48 stringByAppendingString:v45];

      v50 = 0;
      v12 = v41;
    }
  }

  v51 = v8;

  v52 = v49;
LABEL_18:
  v53 = v12;
  v76 = v52;
  v54 = [CKAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v12 preferredStyle:?];
  v55 = CKFrameworkBundle();
  v56 = [v55 localizedStringForKey:@"CREATE_NEW_GROUP_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke_2;
  v78[3] = &unk_1E72EC710;
  v57 = *(a1 + 40);
  v78[4] = *(a1 + 32);
  v79 = v57;
  v58 = [CKAlertAction actionWithTitle:v56 style:0 handler:v78];

  v59 = CKFrameworkBundle();
  v60 = v59;
  if (v50)
  {
    v61 = [v59 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v62 = [CKAlertAction actionWithTitle:v61 style:1 handler:0];

    [v54 addAction:v58];
    [v54 setPreferredAction:v58];
  }

  else
  {
    v63 = [v59 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    v62 = [CKAlertAction actionWithTitle:v63 style:1 handler:0];
  }

  [v54 addAction:v62];
  v64 = [*(a1 + 32) addRecipientsController];
  v65 = [*(a1 + 32) detailsControllerDelegate];
  v66 = objc_opt_respondsToSelector();

  v8 = v51;
  if (v66)
  {
    v67 = [*(a1 + 32) detailsControllerDelegate];
    v68 = [v67 presentingViewControllerForAlertsFromDetailsController:*(a1 + 32)];
    v69 = v68;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = v64;
    }

    v71 = v70;

    v64 = v71;
  }

  v7 = v77;
  [v54 presentFromViewController:v64 animated:1 completion:0];

LABEL_27:
}

void __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke_3;
  v2[3] = &unk_1E72EB8D0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:0 completion:v2];
}

void __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) detailsControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) detailsControllerDelegate];
    [v4 detailsController:*(a1 + 32) shouldComposeConversationWithRecipientAddresses:*(a1 + 40)];
  }
}

- (BOOL)_atLeastOneEmailPresentInHandles:(id)handles
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  handlesCopy = handles;
  v4 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) ID];
        IsEmail = IMStringIsEmail();

        if (IsEmail)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_chatAllowedByScreenTimeChanged:(id)changed
{
  object = [changed object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([object allowedByScreenTime] & 1) == 0)
  {
    if (CKIsRunningInMacCatalyst())
    {
      detailsControllerDelegate = [(CKDetailsController *)self detailsControllerDelegate];
      [detailsControllerDelegate dismissDetailsNavigationController];
    }

    else
    {
      [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_handleMultiWayStateChange:(id)change
{
  userInfo = [change userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:v13];

  uUID = [v6 UUID];
  tuConversation = [(CKDetailsController *)self tuConversation];
  uUID2 = [tuConversation UUID];
  v10 = [uUID isEqual:uUID2];

  if (v10)
  {
    expanseActivityTextView = [(CKDetailsController *)self expanseActivityTextView];
    [expanseActivityTextView removeFromSuperview];

    [(CKDetailsController *)self setExpanseActivityTextView:0];
    tableView = [(CKDetailsController *)self tableView];
    [tableView reloadData];
  }
}

- (void)updateContactsHeaderVerificationState
{
  groupPhotoHeaderViewController = self->_groupPhotoHeaderViewController;
  shouldShowKeyTransparency = [(CKDetailsController *)self shouldShowKeyTransparency];

  [(CNGroupIdentityHeaderViewController *)groupPhotoHeaderViewController setShouldShowStaticKeyBadge:shouldShowKeyTransparency];
}

- (id)ktCellForRow:(int64_t)row
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isGroupChat = [chat isGroupChat];

  ktEnhancedProtectionStateCell = 0;
  ktChatState = self->_ktChatState;
  if (ktChatState > 8)
  {
    if (ktChatState <= 16)
    {
      if ((ktChatState - 9) >= 6)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (ktChatState == 17)
    {
      goto LABEL_17;
    }

    if (ktChatState == 18)
    {
      goto LABEL_4;
    }

    if (ktChatState != 19)
    {
      goto LABEL_20;
    }

LABEL_18:
    ktEnhancedProtectionStateCell = [(CKDetailsController *)self ktEnhancedProtectionStateCell];
    goto LABEL_20;
  }

  if (ktChatState > 3)
  {
    if ((ktChatState - 5) >= 4 && ktChatState != 4)
    {
      goto LABEL_20;
    }

LABEL_4:
    if (!row)
    {
      goto LABEL_18;
    }

LABEL_19:
    ktEnhancedProtectionStateCell = [(CKDetailsController *)self ktVerifyConversationCell];
    goto LABEL_20;
  }

  if ((ktChatState - 1) < 2)
  {
    goto LABEL_18;
  }

  if (!ktChatState)
  {
    ktEnhancedProtectionStateCell = [(CKDetailsController *)self ktEnableEnhancedProtectionCell];
    goto LABEL_20;
  }

  if (ktChatState == 3)
  {
LABEL_17:
    if (!isGroupChat)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:

  return ktEnhancedProtectionStateCell;
}

- (CKEnableEnhancedProtectionCell)ktEnableEnhancedProtectionCell
{
  ktEnableEnhancedProtectionCell = self->_ktEnableEnhancedProtectionCell;
  if (!ktEnableEnhancedProtectionCell)
  {
    tableView = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKEnableEnhancedProtectionCell reuseIdentifier];
    [tableView registerClass:v5 forCellReuseIdentifier:v6];

    v7 = [CKEnableEnhancedProtectionCell alloc];
    v8 = +[CKEnableEnhancedProtectionCell reuseIdentifier];
    tuConversation = [(CKDetailsController *)self tuConversation];
    v10 = [(CKEnableEnhancedProtectionCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:tuConversation shouldShowMacHeader:1];
    v11 = self->_ktEnableEnhancedProtectionCell;
    self->_ktEnableEnhancedProtectionCell = v10;

    ktEnableEnhancedProtectionCell = self->_ktEnableEnhancedProtectionCell;
  }

  return ktEnableEnhancedProtectionCell;
}

- (CKKTEnhancedProtectionStatusCell)ktEnhancedProtectionStateCell
{
  v53[1] = *MEMORY[0x1E69E9840];
  ktEnhancedProtectionStatusCellState = self->_ktEnhancedProtectionStatusCellState;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  v50 = [CKKTDetailsViewUtilities verifiedHandlesInChat:chat];
  participants = [chat participants];
  v7 = [participants count];

  if (v7 < 2)
  {
    participants2 = [chat participants];
    v14 = [participants2 count];

    if (v14 == 1)
    {
      participants3 = [chat participants];
      firstObject = [participants3 firstObject];
      v52 = firstObject;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v18 = [CKKTDetailsViewUtilities namesFromHandles:v17 shouldUseShortFormat:0];
      firstObject2 = [v18 firstObject];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "CKDetailsController_KT: There are no handles in the chat", buf, 2u);
        }
      }

      firstObject2 = &stru_1F04268F8;
    }
  }

  else
  {
    conversation2 = [(CKDetailsController *)self conversation];
    displayName = [conversation2 displayName];
    v10 = [displayName length];

    if (v10)
    {
      conversation3 = [(CKDetailsController *)self conversation];
      firstObject2 = [conversation3 displayName];
    }

    else
    {
      participants4 = [chat participants];
      firstObject3 = [participants4 firstObject];

      v53[0] = firstObject3;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      v23 = [CKKTDetailsViewUtilities namesFromHandles:v22 shouldUseShortFormat:1];
      firstObject4 = [v23 firstObject];

      v25 = MEMORY[0x1E696AEC0];
      v26 = CKFrameworkBundle();
      v27 = [v26 localizedStringForKey:@"X_AND_N_PEOPLE" value:&stru_1F04268F8 table:@"ChatKitFormats-Key-Transparency"];
      participants5 = [chat participants];
      v29 = [v25 localizedStringWithFormat:v27, firstObject4, objc_msgSend(participants5, "count") - 1];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v31 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

      if (v31)
      {
        v32 = @"\u200F";
      }

      else
      {
        v32 = @"\u200E";
      }

      firstObject2 = [(__CFString *)v32 stringByAppendingString:v29];
    }
  }

  ktEnhancedProtectionStateCell = self->_ktEnhancedProtectionStateCell;
  if (ktEnhancedProtectionStateCell)
  {
    [(CKKTEnhancedProtectionStatusCell *)ktEnhancedProtectionStateCell setEnhancedProtectionStatusCellState:ktEnhancedProtectionStatusCellState];
    v34 = self->_ktEnhancedProtectionStateCell;
    participants6 = [chat participants];
    -[CKKTEnhancedProtectionStatusCell setHandlesInChatCount:](v34, "setHandlesInChatCount:", [participants6 count]);

    -[CKKTEnhancedProtectionStatusCell setVerifiedHandlesCount:](self->_ktEnhancedProtectionStateCell, "setVerifiedHandlesCount:", [v50 count]);
    [(CKKTEnhancedProtectionStatusCell *)self->_ktEnhancedProtectionStateCell setTitleString:firstObject2];
    [(CKKTEnhancedProtectionStatusCell *)self->_ktEnhancedProtectionStateCell updateTitleAndStatusButtonConfiguration];
  }

  else
  {
    tableView = [(CKDetailsController *)self tableView];
    v37 = objc_opt_class();
    v38 = +[CKKTEnhancedProtectionStatusCell reuseIdentifier];
    [tableView registerClass:v37 forCellReuseIdentifier:v38];

    v39 = [CKKTEnhancedProtectionStatusCell alloc];
    v40 = +[CKKTEnhancedProtectionStatusCell reuseIdentifier];
    conversation4 = [(CKDetailsController *)self conversation];
    chat2 = [conversation4 chat];
    participants7 = [chat2 participants];
    LOBYTE(v49) = 1;
    v44 = [(CKKTEnhancedProtectionStatusCell *)v39 initWithStyle:0 reuseIdentifier:v40 state:ktEnhancedProtectionStatusCellState delegate:self handlesInChat:participants7 verifiedHandles:v50 titleString:firstObject2 shouldShowMacHeader:v49];
    v45 = self->_ktEnhancedProtectionStateCell;
    self->_ktEnhancedProtectionStateCell = v44;
  }

  v46 = self->_ktEnhancedProtectionStateCell;
  v47 = v46;

  return v46;
}

- (CKKTVerifyConversationTableViewCell)ktVerifyConversationCell
{
  ktChatState = self->_ktChatState;
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v6 = +[CKKTDetailsViewUtilities numberOfRowsInKTSectionForStatus:isGroupChat:](CKKTDetailsViewUtilities, "numberOfRowsInKTSectionForStatus:isGroupChat:", ktChatState, [chat isGroupChat]);

  ktVerifyConversationCell = self->_ktVerifyConversationCell;
  if (ktVerifyConversationCell)
  {
    [(CKKTVerifyConversationTableViewCell *)ktVerifyConversationCell setNumberOfRowsInSection:v6];
    [(CKKTVerifyConversationTableViewCell *)self->_ktVerifyConversationCell setShouldShowMacHeader:v6 == 1];
    [(CKKTVerifyConversationTableViewCell *)self->_ktVerifyConversationCell setKtStatus:[(CKDetailsController *)self ktChatState]];
    [(CKKTVerifyConversationTableViewCell *)self->_ktVerifyConversationCell updateForNewKTState];
  }

  else
  {
    tableView = [(CKDetailsController *)self tableView];
    v9 = objc_opt_class();
    v10 = +[CKKTVerifyConversationTableViewCell reuseIdentifier];
    [tableView registerClass:v9 forCellReuseIdentifier:v10];

    v11 = [CKKTVerifyConversationTableViewCell alloc];
    v12 = +[CKKTVerifyConversationTableViewCell reuseIdentifier];
    v13 = [(CKKTVerifyConversationTableViewCell *)v11 initWithStyle:0 reuseIdentifier:v12 numberOfRowsInSection:v6 shouldShowMacHeader:v6 == 1 ktStatus:[(CKDetailsController *)self ktChatState]];
    v14 = self->_ktVerifyConversationCell;
    self->_ktVerifyConversationCell = v13;
  }

  v15 = self->_ktVerifyConversationCell;
  conversation2 = [(CKDetailsController *)self conversation];
  chat2 = [conversation2 chat];
  -[CKKTVerifyConversationTableViewCell setEnabled:](v15, "setEnabled:", [chat2 hasKnownParticipants]);

  v18 = self->_ktVerifyConversationCell;

  return v18;
}

- (id)ktSecurityFooterView
{
  tableView = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKKTSecurityHeaderFooterView footerReuseIdentifier];
  [tableView registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  v6 = +[CKKTSecurityHeaderFooterView footerReuseIdentifier];
  v7 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v6];

  ktSecurityFooterTextView = [(CKDetailsController *)self ktSecurityFooterTextView];
  [v7 setKtSecurityTextView:ktSecurityFooterTextView];
  [v7 setIsAccessibilityElement:1];
  [v7 setAccessibilityIdentifier:@"KeyTransparencyDetailsFooter"];
  attributedText = [ktSecurityFooterTextView attributedText];
  string = [attributedText string];
  [v7 setAccessibilityLabel:string];

  return v7;
}

- (UITextView)ktSecurityFooterTextView
{
  v18[1] = *MEMORY[0x1E69E9840];
  ktChatState = self->_ktChatState;
  ktHandlesForKtChatStatus = self->_ktHandlesForKtChatStatus;
  if (self->_ktSecurityFooterTextView)
  {
    v5 = [CKKTDetailsViewUtilities securityFooterStringForKTChatState:ktChatState handles:ktHandlesForKtChatStatus];
    [(UITextView *)self->_ktSecurityFooterTextView setAttributedText:v5];
  }

  else
  {
    v6 = [CKKTDetailsViewUtilities ktSecuritySectionFooterTextViewForKTStatus:ktChatState withHandles:ktHandlesForKtChatStatus];
    ktSecurityFooterTextView = self->_ktSecurityFooterTextView;
    self->_ktSecurityFooterTextView = v6;

    v17 = *MEMORY[0x1E69DB650];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    linkColor = [theme linkColor];
    v18[0] = linkColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(UITextView *)self->_ktSecurityFooterTextView setLinkTextAttributes:v11];

    [(UITextView *)self->_ktSecurityFooterTextView setDelegate:self];
    tableView = [(CKDetailsController *)self tableView];
    [tableView _marginWidth];
    v14 = v13;

    [(UITextView *)self->_ktSecurityFooterTextView setTextContainerInset:0.0, v14, 0.0, v14];
  }

  v15 = self->_ktSecurityFooterTextView;

  return v15;
}

- (double)calculateHeightForKTFooter
{
  tableView = [(CKDetailsController *)self tableView];
  [tableView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  IsEmpty = CGRectIsEmpty(v23);
  result = 0.0;
  if (!IsEmpty)
  {
    tableView2 = [(CKDetailsController *)self tableView];
    [tableView2 _sectionContentInset];
    v16 = v15;
    v18 = v17;

    ktSecurityFooterTextView = [(CKDetailsController *)self ktSecurityFooterTextView];
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    [ktSecurityFooterTextView sizeThatFits:{CGRectGetWidth(v24) - (v16 + v18), 1.79769313e308}];
    v21 = v20;

    +[CKKTSecurityHeaderFooterView footerVerticalPadding];
    return v21 + v22 + v22 + 16.0;
  }

  return result;
}

- (void)keyTransparencyConversationViewControllerDidComplete:(id)complete
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  [chat fetchKTStatus];

  [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)showKTContactVerificationUI
{
  conversation = [(CKDetailsController *)self conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:conversation fromViewController:self];
}

- (void)keyTransparencyDetailsStatusCellDidSelectIgnoreFailures:(id)failures
{
  failuresCopy = failures;
  objc_initWeak(&location, self);
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79__CKDetailsController_keyTransparencyDetailsStatusCellDidSelectIgnoreFailures___block_invoke;
  v12 = &unk_1E72EC460;
  objc_copyWeak(&v13, &location);
  v7 = [CKKeyTransparencyErrorUtilities ktClearWarningAlertControllerForChat:chat confirmationHandler:&v9];

  if (!CKIsRunningInMacCatalyst() && [CKUtilities isIpad:v9])
  {
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceView:failuresCopy];
    [failuresCopy bounds];
    [popoverPresentationController setSourceRect:?];
  }

  [(CKDetailsController *)self presentViewController:v7 animated:1 completion:0, v9, v10, v11, v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __79__CKDetailsController_keyTransparencyDetailsStatusCellDidSelectIgnoreFailures___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained detailsControllerDelegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained detailsControllerDelegate];
    [v3 detailsControllerWillDismiss:WeakRetained];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v4 = [WeakRetained detailsControllerDelegate];
    [v4 dismissDetailsNavigationController];

    v5 = [WeakRetained detailsControllerDelegate];
    [v5 detailsControllerDidDismiss:WeakRetained];
  }

  else
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (CKDetailsControllerDelegate)detailsControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsControllerDelegate);

  return WeakRetained;
}

- (id)simCellText:(id)text
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"DETAILS_VIEW_SWITCH_SIM_CELL" value:&stru_1F04268F8 table:@"ChatKit"];

  return v4;
}

- (void)switchToSenderIdentity:(id)identity
{
  identityCopy = identity;
  conversation = [(CKDetailsController *)self conversation];
  [conversation switchToSenderIdentity:identityCopy];
}

- (BOOL)shouldShowSIMTypeSection
{
  conversation = [(CKDetailsController *)self conversation];
  supportsHandleSelection = [conversation supportsHandleSelection];

  return supportsHandleSelection;
}

- (BOOL)isGroupChat
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  isGroupChat = [chat isGroupChat];

  return isGroupChat;
}

- (BOOL)canLeaveConversation
{
  conversation = [(CKDetailsController *)self conversation];
  if ([conversation hasLeft])
  {
    canLeave = 0;
  }

  else
  {
    canLeave = [conversation canLeave];
  }

  return canLeave;
}

- (BOOL)shouldShowGroupCount
{
  v3 = CKIsRunningInMacCatalyst();
  if (v3)
  {
    conversation = [(CKDetailsController *)self conversation];
    isGroupConversation = [conversation isGroupConversation];

    LOBYTE(v3) = isGroupConversation;
  }

  return v3;
}

- (BOOL)shouldShowSharedWithYouFeatures
{
  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];
  shouldShowAutoDonationAction = [chat shouldShowAutoDonationAction];

  return shouldShowAutoDonationAction;
}

- (BOOL)shouldShowEnhancedGroupFeatures
{
  conversation = [(CKDetailsController *)self conversation];
  if ([conversation isGroupConversation])
  {
    supportsMutatingGroupMembers = [conversation supportsMutatingGroupMembers];
  }

  else
  {
    supportsMutatingGroupMembers = 0;
  }

  return supportsMutatingGroupMembers;
}

- (BOOL)conversationHasLeft
{
  conversation = [(CKDetailsController *)self conversation];
  if ([conversation isGroupConversation] && objc_msgSend(conversation, "canLeave"))
  {
    hasLeft = [conversation hasLeft];
  }

  else
  {
    hasLeft = 0;
  }

  return hasLeft;
}

- (BOOL)shouldEnableAddContactButton
{
  isGroupChat = [(CKDetailsController *)self isGroupChat];
  if (isGroupChat)
  {
    if (-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") || (-[CKDetailsController conversation](self, "conversation"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isReadOnlyChat], v4, (v5 & 1) != 0))
    {
      LOBYTE(isGroupChat) = 0;
    }

    else
    {
      mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
      isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

      LOBYTE(isGroupChat) = isSatelliteConnectionActive ^ 1;
    }
  }

  return isGroupChat;
}

- (id)emailAddressesForChat:(id)chat
{
  v22 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  participants = [chatCopy participants];
  v6 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(participants);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 ID];
        IsEmail = IMStringIsEmail();

        if ((IsEmail & 1) == 0)
        {

          v15 = &stru_1F04268F8;
          goto LABEL_14;
        }

        v13 = [v10 ID];
        [v4 addObject:v13];
      }

      v7 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 count])
  {
    v14 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v14 = &stru_1F04268F8;
  }

  v15 = v14;
LABEL_14:

  return v15;
}

- (id)screenShareContextMenuForEntity:(id)entity
{
  v28[2] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  array = [MEMORY[0x1E695DF70] array];
  if (entityCopy)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DC628];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"INVITE_TO_SHARE_MY_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71__CKDetailsController_ContactActions__screenShareContextMenuForEntity___block_invoke;
    v24[3] = &unk_1E72EBF48;
    objc_copyWeak(&v26, &location);
    v9 = entityCopy;
    v25 = v9;
    v10 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v24];

    v11 = MEMORY[0x1E69DC628];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"ASK_TO_SHARE_THEIR_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __71__CKDetailsController_ContactActions__screenShareContextMenuForEntity___block_invoke_2;
    v21 = &unk_1E72EBF48;
    objc_copyWeak(&v23, &location);
    v22 = v9;
    v14 = [v11 actionWithTitle:v13 image:0 identifier:0 handler:&v18];

    v28[0] = v10;
    v28[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{2, v18, v19, v20, v21}];
    [array addObjectsFromArray:v15];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v16 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:array];

  return v16;
}

void __71__CKDetailsController_ContactActions__screenShareContextMenuForEntity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained contactsManager];
  [v2 startCommunicationForEntity:*(a1 + 32) action:5 address:0];
}

void __71__CKDetailsController_ContactActions__screenShareContextMenuForEntity___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained contactsManager];
  [v2 startCommunicationForEntity:*(a1 + 32) action:6 address:0];
}

- (void)openInContacts
{
  conversation = [(CKDetailsController *)self conversation];
  recipients = [conversation recipients];
  firstObject = [recipients firstObject];

  defaultIMHandle = [firstObject defaultIMHandle];
  v6 = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];

  v7 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v6];
  if (!CKIsRunningInMacCatalyst() || v7)
  {
    view = [(CKDetailsController *)self view];
    [(CKDetailsController *)self showContactCardForEntity:firstObject fromView:view];
  }
}

- (id)setupAlternativeCommunicationActionsForChat:(id)chat
{
  v38[2] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v4 = objc_opt_new();
  if (CKIsRunningInMacCatalyst() || ![(CKDetailsController *)self conversationHasLeft])
  {
    v30 = [(CKDetailsController *)self createAudioCallActionItemForChat:chatCopy];
    v29 = [(CKDetailsController *)self createVideoCallActionItemForChat:chatCopy];
    [v4 addObject:v30];
    [v4 addObject:v29];
    v31 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    descriptorForRequiredKeys = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
    v38[0] = descriptorForRequiredKeys;
    descriptorForRequiredKeys2 = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
    v38[1] = descriptorForRequiredKeys2;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

    conversation = [(CKDetailsController *)self conversation];
    chat = [conversation chat];
    participants = [chat participants];
    v10 = [participants count];

    conversation2 = [(CKDetailsController *)self conversation];
    v27 = [conversation2 conversationVisualIdentityWithKeys:v28 requestedNumberOfContactsToFetch:v10];

    if (objc_opt_respondsToSelector())
    {
      contacts = [v27 contacts];
      v13 = [v31 mailUrlForContacts:contacts needsEmailAddresses:1];
    }

    else
    {
      v13 = 0;
    }

    v26 = v13 != 0;
    v14 = [chatCopy supportsCapabilities:0x4000];
    v15 = objc_alloc(MEMORY[0x1E695D160]);
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"MAIL_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = *MEMORY[0x1E695C170];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke;
    v36[3] = &unk_1E72F5BF8;
    v19 = v13;
    v37 = v19;
    v20 = [v15 initWithTitle:v17 actionType:v18 actionBlock:v36];

    if (objc_opt_respondsToSelector())
    {
      [v20 setShouldOverrideEnabledState:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v20 setOverrideEnabledState:v14 & v26];
    }

    [v4 addObject:v20];
    objc_initWeak(&location, self);
    if (v10 == 1)
    {
      v21 = objc_alloc(MEMORY[0x1E695D160]);
      v22 = CKFrameworkBundle();
      v23 = [v22 localizedStringForKey:@"INFO_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke_83;
      v33[3] = &unk_1E72F5C20;
      objc_copyWeak(&v34, &location);
      v24 = [v21 initWithTitle:v23 actionType:@"OpenInContacts" systemImageName:@"person.crop.circle.fill" overrideEnabledState:1 actionBlock:v33];

      [v24 setShouldPresentDisambiguationUI:0];
      [v4 addObject:v24];

      objc_destroyWeak(&v34);
    }

    objc_destroyWeak(&location);
  }

  return v4;
}

void __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke_2;
  v4[3] = &unk_1E72EB9C8;
  v5 = v3;
  [v2 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:v4];
}

void __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Opened URL: %@ successfully: %@", &v7, 0x16u);
  }
}

void __83__CKDetailsController_ContactActions__setupAlternativeCommunicationActionsForChat___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openInContacts];
}

- (id)createAudioCallActionItemForChat:(id)chat
{
  chatCopy = chat;
  conversation = [(CKDetailsController *)self conversation];
  v6 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:conversation];

  conversation2 = [(CKDetailsController *)self conversation];
  LODWORD(conversation) = [conversation2 isGroupConversation];

  v8 = conversation ^ 1 | v6;
  if ((conversation & 1) == 0 && !v6)
  {
    v8 = +[CKFaceTimeUtilities isTelephonyAvailable];
  }

  v9 = [chatCopy supportsCapabilities:0x4000] & v8;
  v10 = objc_alloc(MEMORY[0x1E695D160]);
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 __ck_localizedString:@"CALL_BUTTON_TITLE"];
  v13 = *MEMORY[0x1E695C150];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __72__CKDetailsController_ContactActions__createAudioCallActionItemForChat___block_invoke;
  v20 = &unk_1E72F5C48;
  v22 = v9;
  v14 = chatCopy;
  v21 = v14;
  v15 = [v10 initWithTitle:v12 actionType:v13 actionBlock:&v17];

  if (objc_opt_respondsToSelector())
  {
    [v15 setShouldOverrideEnabledState:{1, v17, v18, v19, v20}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v15 setOverrideEnabledState:v9];
  }

  return v15;
}

uint64_t __72__CKDetailsController_ContactActions__createAudioCallActionItemForChat___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) initiateTUConversationWithVideoEnabled:0];
  }

  return result;
}

- (id)createVideoCallActionItemForChat:(id)chat
{
  chatCopy = chat;
  conversation = [(CKDetailsController *)self conversation];
  v6 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:conversation];

  v7 = [chatCopy supportsCapabilities:0x4000] & v6;
  v8 = objc_alloc(MEMORY[0x1E695D160]);
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 __ck_localizedString:@"VIDEO_BUTTON_TITLE"];
  v11 = *MEMORY[0x1E695C1B8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__CKDetailsController_ContactActions__createVideoCallActionItemForChat___block_invoke;
  v18 = &unk_1E72F5C48;
  v20 = v7;
  v12 = chatCopy;
  v19 = v12;
  v13 = [v8 initWithTitle:v10 actionType:v11 actionBlock:&v15];

  if (objc_opt_respondsToSelector())
  {
    [v13 setShouldOverrideEnabledState:{1, v15, v16, v17, v18}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 setOverrideEnabledState:v7];
  }

  return v13;
}

uint64_t __72__CKDetailsController_ContactActions__createVideoCallActionItemForChat___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) initiateTUConversationWithVideoEnabled:1];
  }

  return result;
}

- (void)showContactCardForEntity:(id)entity fromView:(id)view
{
  v39[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  navigationController = [(CKDetailsController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v39[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    v10 = MEMORY[0x1E69A7FD0];
    defaultIMHandle = [entityCopy defaultIMHandle];
    v12 = [defaultIMHandle cnContactWithKeys:v9];
    v13 = [v10 isCNContactAKnownContact:v12];

    if (v13)
    {
      suggestionsEnabledContactStore = [(CKDetailsController *)self suggestionsEnabledContactStore];
      defaultIMHandle2 = [entityCopy defaultIMHandle];
      v16 = [defaultIMHandle2 cnContactWithKeys:MEMORY[0x1E695E0F0]];
      identifier = [v16 identifier];
      v18 = [suggestionsEnabledContactStore unifiedContactWithIdentifier:identifier keysToFetch:v9 error:0];
    }

    else
    {
      v18 = [entityCopy cnContactWithKeys:v9 shouldFetchSuggestedContact:1];
    }

    defaultIMHandle3 = [entityCopy defaultIMHandle];
    v20 = [defaultIMHandle3 ID];
    _appearsToBePhoneNumber = [v20 _appearsToBePhoneNumber];
    v22 = MEMORY[0x1E695C330];
    if (!_appearsToBePhoneNumber)
    {
      v22 = MEMORY[0x1E695C208];
    }

    v23 = *v22;

    if (v13)
    {
      [MEMORY[0x1E695D148] viewControllerForContact:v18];
    }

    else
    {
      [MEMORY[0x1E695D148] viewControllerForUnknownContact:v18];
    }
    v24 = ;
    defaultIMHandle4 = [entityCopy defaultIMHandle];
    v26 = [defaultIMHandle4 ID];
    v27 = [v18 identifierForKey:v23 withDestination:v26];
    [v24 highlightPropertyWithKey:v23 identifier:v27];

    suggestionsEnabledContactStore2 = [(CKDetailsController *)self suggestionsEnabledContactStore];
    [v24 setContactStore:suggestionsEnabledContactStore2];

    [v24 setActions:{objc_msgSend(v24, "actions") | 0x80}];
    if (objc_opt_respondsToSelector())
    {
      [v24 setShouldUseModernNavigationBarHiding:1];
    }

    if ((CNUIIsMessages() & v13) == 1 && [(CKDetailsController *)self fmfEnabled]&& ![(CKDetailsController *)self fmfRestricted])
    {
      mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
      defaultIMHandle5 = [entityCopy defaultIMHandle];
      v31 = [mEMORY[0x1E69A5B70] handleIsFollowingMyLocation:defaultIMHandle5];

      v32 = CKFrameworkBundle();
      v33 = v32;
      if (v31)
      {
        v34 = @"STOP_SHARE_LOCATION";
      }

      else
      {
        v34 = @"SHARE_LOCATION";
      }

      v35 = [v32 localizedStringForKey:v34 value:&stru_1F04268F8 table:@"ChatKit"];

      [(CKDetailsController *)self setPresentedEntity:entityCopy];
      contentViewController = [v24 contentViewController];
      [contentViewController setShouldShowLinkedContacts:1];
      cardFooterGroup = [contentViewController cardFooterGroup];
      [contentViewController addActionWithTitle:v35 target:self selector:sel__toggleSharingStateFromABCard inGroup:cardFooterGroup destructive:v31];
    }

    navigationController2 = [(CKDetailsController *)self navigationController];
    [navigationController2 pushViewController:v24 animated:1];
  }
}

- (void)_toggleSharingStateFromABCard
{
  presentedEntity = [(CKDetailsController *)self presentedEntity];
  defaultIMHandle = [presentedEntity defaultIMHandle];

  conversation = [(CKDetailsController *)self conversation];
  chat = [conversation chat];

  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  v7 = [mEMORY[0x1E69A5B70] handleIsFollowingMyLocation:defaultIMHandle];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke;
  aBlock[3] = &unk_1E72EB9C8;
  aBlock[4] = self;
  v45 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v9 = MEMORY[0x1E69DC648];
  v10 = CKFrameworkBundle();
  v11 = v10;
  if (v7)
  {
    v12 = [v10 localizedStringForKey:@"STOP_SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_2;
    v58[3] = &unk_1E72EDEF0;
    v43 = &v59;
    v59 = defaultIMHandle;
    v42 = &v60;
    v13 = &v61;
    v60 = chat;
    v61 = v45;
    v14 = v45;
    v15 = [v9 actionWithTitle:v12 style:2 handler:v58];
    [v8 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [v16 actionWithTitle:v18 style:1 handler:0];
    [v8 addAction:v19];
  }

  else
  {
    v20 = [v10 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR" value:&stru_1F04268F8 table:@"ChatKit"];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_3;
    v54[3] = &unk_1E72EDEF0;
    v43 = &v55;
    v21 = defaultIMHandle;
    v55 = v21;
    v42 = &v56;
    v22 = chat;
    v56 = v22;
    v23 = v45;
    v57 = v23;
    v24 = [v9 actionWithTitle:v20 style:0 handler:v54];
    [v8 addAction:v24];

    v25 = MEMORY[0x1E69DC648];
    v26 = CKFrameworkBundle();
    [v26 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = v41 = defaultIMHandle;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_4;
    v50[3] = &unk_1E72EDEF0;
    v28 = v21;
    v51 = v28;
    v29 = v22;
    v52 = v29;
    v30 = v23;
    v53 = v30;
    v31 = [v25 actionWithTitle:v27 style:0 handler:v50];
    [v8 addAction:v31];

    v32 = MEMORY[0x1E69DC648];
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"SHARE_INDEFINITELY" value:&stru_1F04268F8 table:@"ChatKit"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_5;
    v46[3] = &unk_1E72EDEF0;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    v35 = v30;
    v36 = [v32 actionWithTitle:v34 style:0 handler:v46];
    [v8 addAction:v36];

    v37 = MEMORY[0x1E69DC648];
    v38 = CKFrameworkBundle();
    v39 = [v38 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v40 = [v37 actionWithTitle:v39 style:1 handler:0];
    [v8 addAction:v40];

    v13 = &v57;
    defaultIMHandle = v41;

    v17 = v51;
  }

  [(CKDetailsController *)self presentViewController:v8 animated:1 completion:0];
}

void __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) navigationController];
  v16 = [v4 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v16;
    v6 = CKFrameworkBundle();
    v7 = v6;
    if (a2)
    {
      v8 = @"STOP_SHARE_LOCATION";
    }

    else
    {
      v8 = @"SHARE_LOCATION";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];

    v10 = [v5 contentViewController];
    v11 = *(a1 + 32);
    v12 = [v10 cardFooterGroup];
    [v10 removeActionWithTarget:v11 selector:sel__toggleSharingStateFromABCard inGroup:v12];

    v13 = *(a1 + 32);
    v14 = [v10 cardFooterGroup];
    [v10 addActionWithTitle:v9 target:v13 selector:sel__toggleSharingStateFromABCard inGroup:v14 destructive:a2];
  }

  else
  {
    v5 = [*(a1 + 32) navigationController];
    v15 = [v5 popToViewController:*(a1 + 32) animated:1];
  }
}

uint64_t __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  [v2 stopSharingWithHandle:a1[4] inChat:a1[5]];

  v3 = *(a1[6] + 16);

  return v3();
}

uint64_t __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  [v2 startSharingWithHandle:a1[4] inChat:a1[5] withDuration:0];

  v3 = *(a1[6] + 16);

  return v3();
}

uint64_t __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_4(void *a1)
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  [v2 startSharingWithHandle:a1[4] inChat:a1[5] withDuration:1];

  v3 = *(a1[6] + 16);

  return v3();
}

uint64_t __68__CKDetailsController_ContactActions___toggleSharingStateFromABCard__block_invoke_5(void *a1)
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  [v2 startSharingWithHandle:a1[4] inChat:a1[5] withDuration:2];

  v3 = *(a1[6] + 16);

  return v3();
}

- (void)presentLanguagePickViewControllerWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1908701C4;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_190D572E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_190D572A0();
  selfCopy = self;
  sub_19029063C(v8);
  v12 = sub_190D57290();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = v8;
  v13[6] = v9;
  sub_190857E08(0, 0, v7, &unk_190DD8888, v13);

  sub_19022123C(v8);
}

void __56__CKDetailsController__determineFocusStatusSharingState__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Error determining if focus status is shared with chat, leaving switch disabled. Error: %@", &v3, 0xCu);
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_585_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_19020E000, v3, OS_LOG_TYPE_ERROR, "Error manually sharing focus with handleID: %@ fromHandleID: %@ error: %@", v4, 0x20u);
}

void __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_587_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "Error manually unsharing focus with handleID: %@ error: %@", v2, 0x16u);
}

@end