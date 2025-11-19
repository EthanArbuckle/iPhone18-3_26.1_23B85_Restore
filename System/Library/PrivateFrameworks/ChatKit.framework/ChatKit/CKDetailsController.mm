@interface CKDetailsController
+ (void)saveGroupPhotoDataAndUpdateParticipants:(id)a3 forConversation:(id)a4;
+ (void)updateParticipantsWithGroupPhotoAtPath:(id)a3 forConversation:(id)a4;
- (BOOL)_atLeastOneEmailPresentInHandles:(id)a3;
- (BOOL)_canRemoveRecipientAtIndexPath:(id)a3;
- (BOOL)_fmfExpirationDateIsValid;
- (BOOL)_moreThanMinNumberOfParticipantsInGroup;
- (BOOL)allRecipientsAlreadyFollowingLocation;
- (BOOL)canLeaveConversation;
- (BOOL)conversationHasLeft;
- (BOOL)fmfEnabled;
- (BOOL)fmfRestricted;
- (BOOL)hasTUConversation;
- (BOOL)isContactViewController:(id)a3;
- (BOOL)isContactsSectionCollapsible;
- (BOOL)isGroupChat;
- (BOOL)shouldAddToVisibleContactRowCountForTUConversation;
- (BOOL)shouldDisplayFooterForSection:(unint64_t)a3;
- (BOOL)shouldDisplayHeaderForSection:(unint64_t)a3;
- (BOOL)shouldEnableAddContactButton;
- (BOOL)shouldShowActiveDeviceSwitchFooter;
- (BOOL)shouldShowAddMemberCell;
- (BOOL)shouldShowBusinessInfoFooter;
- (BOOL)shouldShowEnhancedGroupFeatures;
- (BOOL)shouldShowExpanseFeatures;
- (BOOL)shouldShowFMFView;
- (BOOL)shouldShowFooterInLocationSection:(int64_t)a3;
- (BOOL)shouldShowGroupCount;
- (BOOL)shouldShowGroupPhotoActionTitle;
- (BOOL)shouldShowKTSection;
- (BOOL)shouldShowLocationStringForOneToOneConversation;
- (BOOL)shouldShowSIMTypeSection;
- (BOOL)shouldShowSharedWithYouFeatures;
- (BOOL)shouldShowTranslationSection;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (CGSize)computedPreferredContentSize;
- (CGSize)screenSize;
- (CKBusinessInfoView)businessInfoView;
- (CKDetailsAddGroupNameView)groupNameView;
- (CKDetailsCell)changeGroupNamePhotoCell;
- (CKDetailsController)initWithConversation:(id)a3;
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
- (double)_heightForAuxContactCellAtIndexPath:(id)a3;
- (double)_heightForContactCellAtIndexPath:(id)a3;
- (double)_heightForExpanseActivityCell;
- (double)calculateHeightForExpanseActivityHeader;
- (double)calculateHeightForGroupPhotoHeader;
- (double)calculateHeightForKTFooter;
- (double)calculateHeightForLocationSharingFooter;
- (double)calculateHeightForShareAutomaticallyFooter;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_conversationOfferTimeExpiration;
- (id)_generateGroupImagePickerViewController;
- (id)_groupPhotoHeaderRequiredContactKeys;
- (id)_menuConfigForContactsCell:(id)a3;
- (id)_navigationBarTitle;
- (id)_tableViewCellForSendCurrentLocation;
- (id)_tableViewCellForSendOrRequestLocation;
- (id)_tableViewCellForSharingLocation:(BOOL)a3;
- (id)annotationContactForHandle:(id)a3;
- (id)annotationImageForHandle:(id)a3;
- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)businessInfoFooterViewForSection:(int64_t)a3;
- (id)chatOptionsCellForIndexPath:(id)a3;
- (id)childViewController:(id)a3 cellForIndexPath:(id)a4;
- (id)contactsManagerCellForIndexPath:(id)a3;
- (id)createAudioCallActionItemForChat:(id)a3;
- (id)createDNDCellAtIndexPath:(id)a3;
- (id)createReadReceiptsCellAtIndexPath:(id)a3;
- (id)createShareFocusStatusCellAtIndexPath:(id)a3;
- (id)createTranslationLanguageCellForLanguageCode:(id)a3 atIndexPath:(id)a4;
- (id)createTranslationSwitchCellAtIndexPath:(id)a3;
- (id)createVideoCallActionItemForChat:(id)a3;
- (id)currentLocationDeniedAlert;
- (id)currentlyActiveFMFDevice;
- (id)defaultNavBarAppearance;
- (id)deleteAndBlockCellForIndexPath:(id)a3;
- (id)downloadAttachmentsFooterViewForSection:(int64_t)a3;
- (id)downloadAttachmentsText;
- (id)downloadButtonText;
- (id)editConversationCellForIndexPath:(id)a3;
- (id)emailAddressesForChat:(id)a3;
- (id)expanseActivityCellForIndexPath:(id)a3;
- (id)expanseActivityHeaderViewForSection:(int64_t)a3;
- (id)fmfHandlesFromIMHandles:(id)a3;
- (id)fmfViewControllerCellForIndexPath:(id)a3 shouldShowLocation:(BOOL)a4;
- (id)groupCountCellForIndexPath:(id)a3;
- (id)groupHeaderCellForIndexPath:(id)a3;
- (id)groupNameCellForIndexPath:(id)a3;
- (id)groupPhotoCellForIndexPath:(id)a3;
- (id)indexPathForCell:(id)a3;
- (id)keyCommands;
- (id)ktCellForRow:(int64_t)a3;
- (id)ktSecurityFooterView;
- (id)labelForChat;
- (id)leaveCellForIndexPath:(id)a3;
- (id)locationFooterViewForSection:(int64_t)a3;
- (id)locationShareCellForIndexPathRow:(int64_t)a3;
- (id)locationShareMenu;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (id)screenShareContextMenuForEntity:(id)a3;
- (id)screenSharingActionView;
- (id)searchAttachmentViewControllerCellForIndexPath:(id)a3;
- (id)selectedSenderIdentity;
- (id)setupAlternativeCommunicationActionsForChat:(id)a3;
- (id)sharedWithYouCellForIndexPath:(id)a3;
- (id)sharedWithYouFooterView;
- (id)simCellText:(id)a3;
- (id)simSwitcherMenu;
- (id)simTypeCellForIndexPath:(id)a3;
- (id)switchSubscriptionCellForIndexPathRow:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 editActionsForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)titleForBackButton;
- (id)translationCellForIndexPath:(id)a3;
- (id)transparentNavBarAppearance;
- (id)tuConversation;
- (id)tuConversationCellForIndexPath:(id)a3;
- (int64_t)_targetToggleIndexForOptionRow:(unint64_t)a3;
- (int64_t)adjustedViewModelIndexForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)rowForAddMemberCell;
- (int64_t)rowForFirstContactCell;
- (int64_t)rowForLastContact;
- (int64_t)rowForShowMoreContactsCell;
- (int64_t)rowForTUConversationCell;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)visibleContactsRows;
- (unint64_t)_optionRowForIndexPath:(id)a3;
- (unint64_t)_purgedAttachmentCount;
- (unint64_t)_translationRowForIndexPath:(id)a3;
- (unint64_t)countOfContactViewModels;
- (void)_batchDownloadNotificationFired:(id)a3;
- (void)_chatAllowedByScreenTimeChanged:(id)a3;
- (void)_chatAutoDonatingHandleUpdateNotification:(id)a3;
- (void)_chatParticipantsChangedNotification:(id)a3;
- (void)_configureGroupPhotoHeader;
- (void)_configureSeparatorForContactCell:(id)a3 indexPath:(id)a4;
- (void)_configureSeparatorForOptionCell:(id)a3 indexPath:(id)a4;
- (void)_conversationListFinishedMerging:(id)a3;
- (void)_determineFocusStatusSharingState;
- (void)_dismissIdentityPicker:(id)a3;
- (void)_evaluateMetricsForStagingLocation;
- (void)_handleAddingHandles:(id)a3 allRecipientsAddresses:(id)a4 sender:(id)a5;
- (void)_handleAddressBookChanged:(id)a3;
- (void)_handleGroupDisplayNameChanged:(id)a3;
- (void)_handleGroupPhotoChanged:(id)a3;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3;
- (void)_handleKeyboardWillHideNotification:(id)a3;
- (void)_handleKeyboardWillShowNotification:(id)a3;
- (void)_handleLocationChanged:(id)a3;
- (void)_handleMultiWayStateChange:(id)a3;
- (void)_hideAllContactCellButtons;
- (void)_lastAddressedHandleUpdateNotification:(id)a3;
- (void)_notifyDelegateDidSelectStopSharingLocation;
- (void)_presentGroupNameAndPhotoEditor;
- (void)_presentRemoveRecipientSheetForHandle:(id)a3 fromView:(id)a4;
- (void)_reloadForReadReceiptVisibilityChangeIfNeeded:(id)a3;
- (void)_showBrandCard;
- (void)_stageCurrentLocationInEntryViewForURL:(id)a3;
- (void)_stageLocationShareComposition:(int64_t)a3;
- (void)_toggleSharingStateFromABCard;
- (void)_updateDownloadButtonStateIfNeeded;
- (void)_updateDownloadFooterView;
- (void)adjustContentOffsetReloadingSharedAssetsContentViewCell;
- (void)businessInfoView:(id)a3 infoButtonTapped:(id)a4;
- (void)collapseContactsSection;
- (void)contactsCell:(id)a3 didHoverWithState:(int64_t)a4;
- (void)contactsCellDidTapFaceTimeVideoButton:(id)a3;
- (void)contactsCellDidTapMessagesButton:(id)a3;
- (void)contactsCellDidTapPhoneButton:(id)a3;
- (void)contactsManagerViewModelsDidChange:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)detailsAddGroupNameView:(id)a3 didCommitGroupName:(id)a4;
- (void)detailsController:(id)a3 didSelectSendLocationMessage:(id)a4 completion:(id)a5;
- (void)detailsSearchController:(id)a3 requestsPushOfSearchController:(id)a4;
- (void)detailsSearchControllerContentDidChange:(id)a3;
- (void)expandContactsSection;
- (void)fmfMapViewController:(id)a3 didDeselectHandle:(id)a4;
- (void)fmfMapViewController:(id)a3 didSelectHandle:(id)a4;
- (void)getKTStatus;
- (void)groupCellDidTapFaceTimeVideoButton:(id)a3;
- (void)groupCellDidTapPhoneButton:(id)a3;
- (void)groupIdentityHeaderViewController:(id)a3 didDismissSharedProfileBannerWithUpdatedContact:(id)a4 forAction:(unint64_t)a5;
- (void)handleActiveDeviceChanged:(id)a3;
- (void)handleCancelAction:(id)a3;
- (void)handleDoneAction:(id)a3;
- (void)handleDoneButton:(id)a3;
- (void)handleFriendshipStatusChanged:(id)a3;
- (void)handleTapOnChromeAvatar:(id)a3;
- (void)initializeBusinessInfoViewIfNecessary;
- (void)initializeLocationSharingTextViewIfNecessary;
- (void)initializeSearchController;
- (void)keyTransparencyConversationViewControllerDidComplete:(id)a3;
- (void)keyTransparencyDetailsStatusCellDidSelectIgnoreFailures:(id)a3;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)openInContacts;
- (void)presentDeleteAndBlockActionSheetFromView:(id)a3;
- (void)presentFullFMFMapViewController;
- (void)presentGroupRecipientSelectionControllerAtIndexPath:(id)a3;
- (void)presentLanguagePickViewControllerWithCompletion:(id)a3;
- (void)presentLeaveActionSheetFromView:(id)a3;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)reloadTableView;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)sendCurrentLocation;
- (void)setDownloadButtonState:(unint64_t)a3;
- (void)setHideAlerts:(BOOL)a3 reload:(BOOL)a4;
- (void)setSendReadReceipts:(BOOL)a3 reload:(BOOL)a4;
- (void)setShareFocusStatus:(BOOL)a3 reload:(BOOL)a4;
- (void)setShouldAutomaticallyTranslate:(BOOL)a3;
- (void)setShowInSharedWithYou:(BOOL)a3 reload:(BOOL)a4;
- (void)setupContactsManager;
- (void)setupFMF;
- (void)setupFMFTimerIfNecessary;
- (void)setupKT;
- (void)shareLocationAction;
- (void)showContactCardForEntity:(id)a3 fromView:(id)a4;
- (void)showKTContactVerificationUI;
- (void)showLanguagePicker;
- (void)spacePressed:(id)a3;
- (void)stageCurrentLocation;
- (void)stageLocationRequest;
- (void)switchToSenderIdentity:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)toggleAutomaticallyTranslate;
- (void)toggleHideAlertsWithReload:(BOOL)a3;
- (void)toggleSendReadReceiptsWithReload:(BOOL)a3;
- (void)toggleShareFocusStatusWithReload:(BOOL)a3;
- (void)toggleShowInSharedWithYouWithReload:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContactsHeaderVerificationState;
- (void)updateLocationForRecipient:(id)a3;
- (void)updateLocationStringCellWithString:(id)a3;
- (void)updateManualScrollEdgeProgress;
- (void)userDidTapDownloadForAttachmentsFooterView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5;
@end

@implementation CKDetailsController

- (BOOL)fmfEnabled
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 isSMS];

  v5 = [MEMORY[0x1E69A5B70] sharedInstance];
  LOBYTE(v3) = [v5 disableLocationSharing] | v4;

  return (v3 & 1) == 0;
}

- (BOOL)fmfRestricted
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  v3 = [v2 restrictLocationSharing];

  return v3;
}

- (BOOL)shouldShowFooterInLocationSection:(int64_t)a3
{
  v5 = [(CKDetailsController *)self shouldShowFMFView];
  v6 = [(CKDetailsController *)self allRecipientsAlreadyFollowingLocation];
  v7 = [(CKDetailsController *)self conversation];
  v8 = [_TtC7ChatKit33CKDetailsControllerLocationHelper numberOfCellsInLocationSectionWithConversation:v7 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] isSharingLocation:v6 shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

  if ((a3 != 3 || !v5) && (a3 != 7 || v5 || v8 < 1))
  {
    return 0;
  }

  return [(CKDetailsController *)self shouldShowActiveDeviceSwitchFooter];
}

- (void)stageCurrentLocation
{
  v3 = [MEMORY[0x1E69A5BC0] sharedInstance];
  v4 = [v3 currentLocation];
  if (v4 && [v3 locationAuthorizationDetermined] && (objc_msgSend(v3, "locationAuthorizationDenied") & 1) == 0)
  {
    v5 = [(CKDetailsController *)self conversation];
    v6 = [_TtC7ChatKit33CKDetailsControllerLocationHelper mapURLFor:v4 in:v5];

    [(CKDetailsController *)self _stageCurrentLocationInEntryViewForURL:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__CKDetailsController_Location__stageCurrentLocation__block_invoke_2;
    v7[3] = &unk_1E72EC8F0;
    v8 = v4;
    objc_copyWeak(&v9, &location);
    [v3 startUpdatingCurrentLocationWithAuthorizedHandler:&__block_literal_global_11 updateHandler:v7];
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

- (void)_stageCurrentLocationInEntryViewForURL:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];

  if ([v6 authorizationToSendCurrentLocationMessageDenied])
  {
    v7 = [(CKDetailsController *)self currentLocationDeniedAlert];
    [v7 presentFromViewController:self animated:1 completion:0];
  }

  else if ([v6 canSendCurrentLocationMessage])
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ECE0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CKDetailsController_Location___stageCurrentLocationInEntryViewForURL___block_invoke;
    block[3] = &unk_1E72EB880;
    v11 = v8;
    v12 = v4;
    v13 = self;
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
    v3 = [(CKDetailsController *)self conversation];
    v4 = [v3 chat];
    [v4 stopSharingLocation];

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
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 allRecipientsFollowingLocation];

  return v4;
}

- (void)detailsController:(id)a3 didSelectSendLocationMessage:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isWaldoEnabled];

  if (v12)
  {
    v13 = [(CKDetailsController *)self findMyWaldoMapViewController];

    if (v13 == v8)
    {
      v18 = [CKComposition compositionWithMSMessage:v9 appExtensionIdentifier:*MEMORY[0x1E69A6938]];
      v19 = [(CKDetailsController *)self detailsControllerDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [(CKDetailsController *)self detailsControllerDelegate];
        [v21 detailsController:self wantsToStageComposition:v18];
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

      v10[2](v10, v17);
    }
  }
}

- (void)_notifyDelegateDidSelectStopSharingLocation
{
  v3 = [(CKDetailsController *)self detailsControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKDetailsController *)self detailsControllerDelegate];
    [v5 detailsControllerDidSelectStopSharingLocation:self];
  }
}

- (void)setupFMF
{
  if ([(CKDetailsController *)self fmfEnabled])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel_handleActiveDeviceChanged_ name:*MEMORY[0x1E69A5978] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_handleFriendshipStatusChanged_ name:*MEMORY[0x1E69A5990] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleLocationChanged_ name:*MEMORY[0x1E69A5988] object:0];

    [(CKDetailsController *)self setupFMFTimerIfNecessary];
  }
}

- (void)setupFMFTimerIfNecessary
{
  if ([(CKDetailsController *)self fmfEnabled])
  {
    v3 = [(CKDetailsController *)self _fmfExpirationDateIsValid];
    v5 = [(CKDetailsController *)self fmfUpdateTimer];
    if ([(CKDetailsController *)self allRecipientsAlreadyFollowingLocation]|| v3)
    {
      v4 = v5;
      if (!v5)
      {
        v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updateTimedFMFState selector:0 userInfo:1 repeats:60.0];
        [(CKDetailsController *)self setFmfUpdateTimer:v6];
        v4 = v6;
      }
    }

    else
    {
      [v5 invalidate];

      v4 = 0;
    }
  }
}

- (void)sendCurrentLocation
{
  v3 = [(CKDetailsController *)self conversation];
  v5 = [v3 chat];

  if ([v5 authorizationToSendCurrentLocationMessageDenied])
  {
    v4 = [(CKDetailsController *)self currentLocationDeniedAlert];
    [v4 presentFromViewController:self animated:1 completion:0];
  }

  else if ([v5 canSendCurrentLocationMessage])
  {
    [v5 sendCurrentLocationMessage];
    [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)locationShareMenu
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 supportsCapabilities:4096];

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

- (void)_stageLocationShareComposition:(int64_t)a3
{
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isWaldoEnabled];

  if (v6)
  {
    MSMessageClass = getMSMessageClass();
    if (objc_opt_respondsToSelector())
    {
      v12 = [MSMessageClass findMyLocationShareMessageWithDuration:a3];
      v8 = [CKComposition compositionWithMSMessage:"compositionWithMSMessage:appExtensionIdentifier:" appExtensionIdentifier:?];
      v9 = [(CKDetailsController *)self detailsControllerDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        [(CKDetailsController *)self _evaluateMetricsForStagingLocation];
        v11 = [(CKDetailsController *)self detailsControllerDelegate];
        [v11 detailsController:self wantsToStageComposition:v8];
      }
    }
  }
}

- (void)stageLocationRequest
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isWaldoEnabled];

  if (v4)
  {
    v5 = [(CKDetailsController *)self conversation];
    v6 = [v5 chat];
    v7 = [v6 supportsCapabilities:4096];

    if (v7)
    {
      MSMessageClass = getMSMessageClass();
      if (objc_opt_respondsToSelector())
      {
        v13 = [MSMessageClass findMyLocationRequestMessage];
        v9 = [CKComposition compositionWithMSMessage:"compositionWithMSMessage:appExtensionIdentifier:" appExtensionIdentifier:?];
        v10 = [(CKDetailsController *)self detailsControllerDelegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          [(CKDetailsController *)self _evaluateMetricsForStagingLocation];
          v12 = [(CKDetailsController *)self detailsControllerDelegate];
          [v12 detailsController:self wantsToStageComposition:v9];
        }
      }
    }
  }
}

- (void)handleFriendshipStatusChanged:(id)a3
{
  [(CKDetailsController *)self setupFMFTimerIfNecessary];

  [(CKDetailsController *)self reloadTableView];
}

- (void)_handleLocationChanged:(id)a3
{
  v12 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v12 fmfHandle];
    if (v4)
    {
      v5 = [(CKDetailsController *)self conversation];
      v6 = [v5 chat];
      v7 = [v6 allSiblingFMFHandles];
      v8 = [v7 containsObject:v4];

      if (v8)
      {
        v9 = [(CKDetailsController *)self conversation];
        v10 = [v9 recipients];
        v11 = [v10 firstObject];

        [(CKDetailsController *)self updateLocationForRecipient:v11];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)updateLocationForRecipient:(id)a3
{
  v4 = MEMORY[0x1E69A5B70];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v5 defaultIMHandle];

  v14 = [v6 findMyLocationForHandleOrSibling:v7];

  v8 = [v14 fmfLocation];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 locationShortAddressWithAgeIncludeLocating];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v14 shortAddress];
    }

    v13 = v12;

    [(CKDetailsController *)self updateLocationStringCellWithString:v13];
  }
}

- (id)currentlyActiveFMFDevice
{
  v2 = [MEMORY[0x1E69A5B70] sharedInstance];
  v3 = [v2 activeDevice];

  return v3;
}

- (BOOL)_fmfExpirationDateIsValid
{
  v3 = [MEMORY[0x1E69A5B70] sharedInstance];
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];
  v6 = [v3 timedOfferExpirationForChat:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] distantFuture];
    if ([v6 isEqualToDate:v7])
    {
      v8 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF00] date];
      [v6 timeIntervalSinceDate:v9];
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
  v2 = [MEMORY[0x1E69A8168] sharedInstance];
  [v2 trackEvent:*MEMORY[0x1E69A7570] withDictionary:v3];
}

- (BOOL)shouldShowFMFView
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];

  if ([v4 hasSiblingRecipientsSharingLocation])
  {
    v5 = [(CKDetailsController *)self fmfEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowActiveDeviceSwitchFooter
{
  v2 = self;
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 isBusinessConversation];

  if (v4)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v5 = [(CKDetailsController *)v2 currentlyActiveFMFDevice];
    v6 = [(CKDetailsController *)v2 fmfEnabled];
    LOBYTE(v2) = 0;
    if (v6 && v5)
    {
      LODWORD(v2) = [v5 isThisDevice] ^ 1;
    }
  }

  return v2;
}

- (BOOL)shouldShowLocationStringForOneToOneConversation
{
  if ([(CKDetailsController *)self shouldShowFMFView]&& ![(CKDetailsController *)self isGroupChat])
  {
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v3 = [v4 isWaldoEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unint64_t)countOfContactViewModels
{
  v2 = [(CKDetailsController *)self contactsManager];
  v3 = [v2 contactsViewModels];
  v4 = [v3 count];

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
  v3 = [(CKDetailsController *)self hasTUConversation];
  if (![(CKDetailsController *)self isContactsSectionCollapsible])
  {
    v5 = [(CKDetailsController *)self contactsManager];
    v6 = [v5 contactsViewModels];
    v4 = [v6 count] + v3;
LABEL_8:

    return v4;
  }

  if (![(CKDetailsController *)self isContactsSectionCollapsed])
  {
    v5 = [(CKDetailsController *)self contactsManager];
    v6 = [v5 contactsViewModels];
    v7 = [v6 count];
    v8 = 1;
    if (v3)
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
  v3 = [(CKDetailsController *)self visibleContactsRows];
  v4 = CKIsRunningInMacCatalyst();
  v5 = [(CKDetailsController *)self hasTUConversation];
  v6 = v5;
  v7 = 1;
  if (v5)
  {
    v7 = 2;
  }

  if (!v4)
  {
    v6 = v7;
  }

  return v6 + v3;
}

- (BOOL)shouldShowAddMemberCell
{
  if ([(CKDetailsController *)self conversationHasLeft])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(CKDetailsController *)self conversation];
    if ([v4 isGroupConversation] && !-[CKDetailsController isContactsSectionCollapsed](self, "isContactsSectionCollapsed"))
    {
      v5 = [(CKDetailsController *)self conversation];
      v6 = [v5 chat];
      if ([v6 isBusinessChat])
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v7 = [(CKDetailsController *)self conversation];
        v8 = [v7 chat];
        v3 = [v8 _suppressesMutationsFromLocalDevice] ^ 1;
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

  v4 = [(CKDetailsController *)self contactsManager];
  v5 = [v4 contactsViewModels];
  v6 = [v5 count];

  return v6;
}

- (BOOL)isContactsSectionCollapsible
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];
  if ([v4 isBusinessChat])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CKDetailsController *)self contactsManager];
    v7 = [v6 contactsViewModels];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (id)tuConversation
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 conversation];

  return v4;
}

- (BOOL)hasTUConversation
{
  v3 = [(CKDetailsController *)self tuConversation];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKDetailsController *)self tuConversation];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)shouldAddToVisibleContactRowCountForTUConversation
{
  v3 = [(CKDetailsController *)self isContactsSectionCollapsible];
  v4 = [(CKDetailsController *)self hasTUConversation];
  if (v3)
  {
    LOBYTE(v4) = v4 && ([(CKDetailsController *)self isContactsSectionCollapsed]|| ![(CKDetailsController *)self isContactsSectionCollapsed]&& [(CKDetailsController *)self visibleContactsRows]> 0);
  }

  return v4;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 _supportsForceTouch];

  if (v5)
  {
    v6 = [(CKDetailsController *)self view];
    [(CKDetailsController *)self unregisterPreviewSourceView:v6];
  }

  v7.receiver = self;
  v7.super_class = CKDetailsController;
  [(CKDetailsController *)&v7 dealloc];
}

- (CKDetailsController)initWithConversation:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = CKDetailsController;
  v5 = [(CKDetailsController *)&v39 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CKDetailsController *)v5 setConversation:v4];
    [(CKDetailsController *)v6 setupFMF];
    [(CKDetailsController *)v6 setupKT];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__handleKeyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v6 selector:sel__handleKeyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69A5818];
    v11 = [(CKDetailsController *)v6 conversation];
    v12 = [v11 chat];
    [v9 addObserver:v6 selector:sel__lastAddressedHandleUpdateNotification_ name:v10 object:v12];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v6 selector:sel__chatAutoDonatingHandleUpdateNotification_ name:*MEMORY[0x1E69A5888] object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = *MEMORY[0x1E69A5878];
    v16 = [v4 chat];
    [v14 addObserver:v6 selector:sel__batchDownloadNotificationFired_ name:v15 object:v16];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = *MEMORY[0x1E69A5880];
    v19 = [v4 chat];
    [v17 addObserver:v6 selector:sel__batchDownloadNotificationFired_ name:v18 object:v19];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v6 selector:sel__reloadForReadReceiptVisibilityChangeIfNeeded_ name:*MEMORY[0x1E69A56B8] object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = *MEMORY[0x1E69A5908];
    v23 = [v4 chat];
    [v21 addObserver:v6 selector:sel__reloadForReadReceiptVisibilityChangeIfNeeded_ name:v22 object:v23];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v6 selector:sel__handleAddressBookChanged_ name:*MEMORY[0x1E69A6828] object:0];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v6 selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v6 selector:sel__handleGroupPhotoChanged_ name:*MEMORY[0x1E69A5718] object:0];

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v6 selector:sel__handleGroupDisplayNameChanged_ name:*MEMORY[0x1E69A5700] object:0];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v6 selector:sel__chatParticipantsChangedNotification_ name:*MEMORY[0x1E69A5848] object:0];

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v6 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v30 = [v4 chat];
    v31 = [v30 allowedByScreenTime];

    if ((v31 & 1) == 0)
    {
      [(CKDetailsController *)v6 dismissViewControllerAnimated:1 completion:0];
    }

    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    v33 = *MEMORY[0x1E69A56E8];
    v34 = [v4 chat];
    [v32 addObserver:v6 selector:sel__chatAllowedByScreenTimeChanged_ name:v33 object:v34];

    v35 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v6 action:sel_handleDoneButton_];
    v36 = [(CKDetailsController *)v6 navigationItem];
    [v36 setRightBarButtonItem:v35];

    [(CKDetailsController *)v6 setTuConversationCellHeight:-1.0];
    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:v6 selector:sel__handleMultiWayStateChange_ name:*MEMORY[0x1E69A5840] object:0];

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
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(CKDetailsTableView *)v21 setBackgroundColor:v10];

  [(CKDetailsTableView *)v21 setEstimatedSectionHeaderHeight:0.0];
  [(CKDetailsTableView *)v21 setEstimatedSectionFooterHeight:0.0];
  [(CKDetailsTableView *)v21 setSeparatorStyle:0];
  [(CKDetailsTableView *)v21 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(CKDetailsTableView *)v21 setPreservesSuperviewLayoutMargins:1];
  [(CKDetailsTableView *)v21 setSectionHeaderHeight:0.0];
  [(CKDetailsTableView *)v21 setSectionFooterHeight:0.0];
  [(CKDetailsTableView *)v21 setEstimatedRowHeight:0.0];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 theme];
  v13 = [v12 detailsHeaderFooterContentViewBackgroundColor];

  [(CKDetailsTableView *)v21 setBackgroundColor:v13];
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [v14 setBackgroundColor:v13];
  [(CKDetailsTableView *)v21 setTableFooterView:v14];
  [(CKDetailsController *)self setTableView:v21];
  [(CKDetailsController *)self setView:v21];
  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 _supportsForceTouch];

  if (v16)
  {
    v17 = [(CKDetailsController *)self view];
    [(CKDetailsController *)self registerPreviewSourceView:v17 previewingDelegate:self];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v18 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsController *)self setScreenShareContextButton:v18];

    v19 = [MEMORY[0x1E69DC888] clearColor];
    v20 = [(CKDetailsController *)self screenShareContextButton];
    [v20 setBackgroundColor:v19];
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
  v3 = [(CKDetailsController *)self navigationItem];
  [v3 _setManualScrollEdgeAppearanceProgress:0.0];

  v4 = [(CKDetailsController *)self navigationItem];
  [v4 _setManualScrollEdgeAppearanceEnabled:1];

  v5 = [(CKDetailsController *)self navigationItem];
  [v5 _setAlwaysUseManualScrollEdgeAppearance:1];

  v6 = [(CKDetailsController *)self navigationItem];
  v7 = [(CKDetailsController *)self transparentNavBarAppearance];
  [v6 setScrollEdgeAppearance:v7];

  v8 = [(CKDetailsController *)self navigationItem];
  v9 = [(CKDetailsController *)self defaultNavBarAppearance];
  [v8 setStandardAppearance:v9];

  if (CKIsRunningInMacCatalyst())
  {
    v10 = [(CKDetailsController *)self detailsControllerDelegate];
    v11 = [v10 isDetailsNavigationControllerDetached];

    if ((v11 & 1) == 0)
    {
      [(CKDetailsController *)self computedPreferredContentSize];
      [(CKDetailsController *)self setPreferredContentSize:?];
    }
  }

  if (!self->_groupPhotoHeaderViewController)
  {
    [(CKDetailsController *)self _configureGroupPhotoHeader];
  }

  v12 = [MEMORY[0x1E69A5C10] sharedInstance];
  v13 = [(CKDetailsController *)self conversation];
  v14 = [v13 recipientStrings];
  v15 = [v12 createSharedProfileStateOracleForHandles:v14];

  v16 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  [v16 setSharedProfileStateOracle:v15];
}

- (void)reloadTableView
{
  v2 = [(CKDetailsController *)self tableView];
  [v2 reloadData];
}

- (void)_determineFocusStatusSharingState
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CKDetailsController__determineFocusStatusSharingState__block_invoke;
  v6[3] = &unk_1E72EF9A8;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v7 = v5;
  v8 = self;
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
  v3 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  v4 = [v3 group];
  v5 = [v4 groupName];

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKDetailsController *)self setTitle:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  v12 = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  v13[0] = v9;
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
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v7[0] = v3;
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

  v5 = [(CKDetailsController *)self navigationItem];
  v6 = [v5 _isManualScrollEdgeAppearanceEnabled];

  if ((v6 & 1) == 0)
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

  v7 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  v8 = [v7 view];
  [v8 frame];
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
  v12 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  v13 = v12;
  if (v11 == 1)
  {
    [v12 titleLabelBaselineOffset];
    v15 = v10 + v14;
  }

  else
  {
    v16 = [v12 view];
    [v16 bounds];
    v15 = v10 + v17 * 0.5;
  }

  v18 = [(CKDetailsController *)self tableView];
  [v18 contentOffset];
  v20 = v19;
  v21 = [(CKDetailsController *)self tableView];
  [v21 adjustedContentInset];
  v23 = v20 + v22;

  if (v23 <= 0.0)
  {
    v27 = [(CKDetailsController *)self navigationItem];
    [v27 _setManualScrollEdgeAppearanceProgress:0.0];

    [(CKDetailsController *)self setTitle:0];
  }

  else
  {
    v24 = [(CKDetailsController *)self navigationItem];
    [v24 _setManualScrollEdgeAppearanceProgress:{fmin(v23, 14.0) / 14.0}];

    if (updateManualScrollEdgeProgress_hasNewContactsAPI == 1)
    {
      v25 = [(CKDetailsController *)self groupPhotoHeaderViewController];
      [v25 hideTitleLabel:v23 > v15];
    }

    if (v23 <= v15)
    {
      v26 = &stru_1F04268F8;
    }

    else
    {
      v26 = [(CKDetailsController *)self _navigationBarTitle];
    }

    [(CKDetailsController *)self setTitle:v26];
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
    v4 = [(CKDetailsController *)self navigationController];
    v5 = [v4 navigationBar];
    [v3 detailsViewTableTopPaddingForNavBar:v5];
    v7 = v6;

    [(CKDetailsTableView *)self->_tableView _setTopPadding:v7];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CKDetailsController;
  [(CKViewController *)&v9 viewWillAppear:a3];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKDetailsController *)self navigationController];
    [v4 setNavigationBarHidden:1 animated:0];
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 detailsBackgroundColor];
  v8 = [(CKDetailsController *)self view];
  [v8 setBackgroundColor:v7];

  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"DetailsViewWillAppear"];
  [(CKDetailsController *)self _resetPurgedAttachmentCount];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = CKDetailsController;
  [(CKViewController *)&v17 viewDidAppear:a3];
  [(CKDetailsController *)self becomeFirstResponder];
  v4 = [(CKDetailsController *)self tableView];
  [v4 reloadData];

  v5 = [MEMORY[0x1E69A8168] sharedInstance];
  [v5 trackEvent:*MEMORY[0x1E69A73A8]];

  [(CKDetailsController *)self _updateDownloadButtonStateIfNeeded];
  if (CKIsRunningInMacCatalyst())
  {
    v6 = [(CKDetailsController *)self detailsControllerDelegate];
    v7 = [v6 isDetailsNavigationControllerDetached];

    if (v7)
    {
      [(CKDetailsController *)self computedPreferredContentSize];
      v9 = v8;
      v11 = v10;
      v12 = [(CKDetailsController *)self view];
      v13 = [v12 window];
      v14 = [v13 windowScene];

      v15 = [v14 sizeRestrictions];
      [v15 setMinimumSize:{v9, v11}];

      v16 = [v14 sizeRestrictions];
      [v16 setMaximumSize:{v9, v11}];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKDetailsController;
  [(CKViewController *)&v6 viewWillDisappear:a3];
  v4 = [(CKDetailsController *)self groupNameCell];
  v5 = [v4 groupNameView];
  [v5 commitGroupName];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CKDetailsController;
  [(CKViewController *)&v9 viewDidDisappear:a3];
  v4 = [MEMORY[0x1E69A8168] sharedInstance];
  [v4 trackEvent:*MEMORY[0x1E69A73A0]];

  v5 = [(CKDetailsController *)self fmfUpdateTimer];
  [v5 invalidate];

  if ((-[CKDetailsController isBeingDismissed](self, "isBeingDismissed") & 1) != 0 || (-[CKDetailsController navigationController](self, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isBeingDismissed], v6, v7))
  {
    v8 = [(CKDetailsController *)self detailsControllerDelegate];
    [v8 detailsControllerDidDismiss:self];
  }
}

- (id)keyCommands
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKDetailsController *)self searchViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(CKDetailsController *)self searchViewController];
    v7 = [v6 wantsSpaceKeyCommandActive];

    if (v7)
    {
      v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel_spacePressed_];
      [v3 addObject:v8];
    }
  }

  v9 = [v3 copy];

  return v9;
}

- (void)spacePressed:(id)a3
{
  v3 = [(CKDetailsController *)self searchViewController];
  [v3 handleSpacePressed];
}

- (CGSize)computedPreferredContentSize
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 isBusinessConversation];

  if (v4)
  {
    v5 = [(CKDetailsController *)self view];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 detailsPreferredContentSizeWidth];
    [v5 sizeThatFits:?];
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

- (void)handleDoneButton:(id)a3
{
  v4 = [(CKDetailsController *)self detailsControllerDelegate];

  if (v4)
  {
    v5 = [(CKDetailsController *)self detailsControllerDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CKDetailsController *)self detailsControllerDelegate];
      [v7 detailsControllerWillDismiss:self];
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

- (void)_handleKeyboardWillShowNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CKDetailsController *)self view];
  v15 = [v14 window];
  [v15 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(CKDetailsController *)self view];
  v25 = [v24 window];
  v26 = [(CKDetailsController *)self groupNameCell];
  [v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(CKDetailsController *)self groupNameCell];
  v36 = [v35 superview];
  [v25 convertRect:v36 fromView:{v28, v30, v32, v34}];
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
    v53 = [(CKDetailsController *)self tableView];
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
    [v53 contentOffset];
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
    [v53 setContentOffset:1 animated:{v50, v52 + CGRectGetHeight(v59)}];
  }
}

- (void)_handleKeyboardWillHideNotification:(id)a3
{
  v9 = [(CKDetailsController *)self tableView];
  [v9 contentOffset];
  v5 = v4;
  v7 = v6;
  [(CKDetailsController *)self contentOffsetYShiftAfterKeyboardNotification];
  [v9 setContentOffset:1 animated:{v5, v7 - v8}];
  [(CKDetailsController *)self setContentOffsetYShiftAfterKeyboardNotification:0.0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v13 = a3;
  v7 = a4;
  if (v7 != self)
  {
    v8 = [(CKDetailsController *)self navigationItem];
    v9 = [(CKDetailsController *)self titleForBackButton];
    [v8 setBackButtonTitle:v9];

    LODWORD(v8) = [(CKDetailsController *)self isContactViewController:v7];
    v10 = [(CKDetailsController *)self navigationItem];
    v11 = v10;
    if (v8)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [v10 setBackButtonDisplayMode:v12];
  }
}

- (id)titleForBackButton
{
  v2 = [(CKDetailsController *)self groupPhotoHeaderViewController];
  v3 = [v2 displayNameForGroupIdentity];

  return v3;
}

- (BOOL)isContactViewController:(id)a3
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v7 = a3;
  v8 = a4;
  if (self->_locationSharingTextView == v7)
  {
    v11 = [MEMORY[0x1E69A5B70] sharedInstance];
    [v11 makeThisDeviceActiveDevice];

    v12 = [(CKDetailsController *)self locationSharingTextView];
    [v12 setDelegate:0];

    [(CKDetailsController *)self setLocationSharingTextView:0];
    v9 = [(CKDetailsController *)self tableView];
    [v9 reloadData];
    goto LABEL_5;
  }

  if (self->_sharedWithYouFooterTextView == v7)
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=MESSAGES&path=SHARED_WITH_YOU_BUTTON"];
    v10 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v10 openSensitiveURL:v9 withOptions:0];

LABEL_5:
  }

  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isKeyTransparencyEnabled];

  if (v14 && self->_ktSecurityFooterTextView == v7)
  {
    [CKKeyTransparencyErrorUtilities learnMorePressedFromError:0];
  }

  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 detailsSectionCount];

  if ([(CKDetailsController *)self shouldShowExpanseFeatures])
  {
    v6 = CKIsRunningInMacCatalyst();
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    v5 += v7;
  }

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isKeyTransparencyEnabled];

  if (v9)
  {
    v5 += [(CKDetailsController *)self shouldShowKTSection];
  }

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isAutomaticIncomingTranslationEnabled];

  if (v11)
  {
    v5 += [(CKDetailsController *)self shouldShowTranslationSection];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(CKDetailsController *)self conversation];
  v7 = [v6 chat];
  v8 = [v7 isBusinessChat];

  if (v8)
  {
    return a4 == 6 || a4 == 9;
  }

  result = 0;
  switch(a4)
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
      v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v34 = [v33 isWaldoEnabled];

      LODWORD(result) = [(CKDetailsController *)self shouldShowFMFView];
      if (v34)
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
      v26 = [(CKDetailsController *)self visibleContactsRows];
      v27 = [(CKDetailsController *)self conversation];
      v28 = [v27 chat];
      v29 = [v28 participants];
      v30 = [v29 count];

      if (v30 < 2)
      {
        goto LABEL_23;
      }

      v31 = v26 + [(CKDetailsController *)self isContactsSectionCollapsible];
      v32 = v31 + [(CKDetailsController *)self shouldShowAddMemberCell];
      return v32 + [(CKDetailsController *)self hasTUConversation];
    case 7:
      v35 = [(CKDetailsController *)self allRecipientsAlreadyFollowingLocation];
      v36 = [(CKDetailsController *)self conversation];
      v37 = [_TtC7ChatKit33CKDetailsControllerLocationHelper numberOfCellsInLocationSectionWithConversation:v36 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] isSharingLocation:v35 shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

      return v37;
    case 8:
      LODWORD(result) = [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
      return result;
    case 9:
      v38 = [(CKDetailsController *)self conversation];
      if ([v38 isGroupConversation])
      {
        v39 = 0;
      }

      else
      {
        v40 = [(CKDetailsController *)self conversation];
        v41 = [v40 chat];
        v39 = [v41 supportsSendingReadReceipts];
      }

      v42 = [MEMORY[0x1E69A5B00] sharedInstance];
      v43 = [v42 isSatelliteConnectionActive];

      v44 = (v43 ^ 1) & v39;
      if (((v43 ^ 1) & v39) != 0)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      [(CKDetailsController *)self setWasShowingReadReceiptSwitch:v44];
      v46 = [(CKDetailsController *)self canShareFocusStatus];
      v47 = [v46 BOOLValue];

      return v45 + v47;
    case 10:
      v17 = [(CKDetailsController *)self conversation];
      v18 = [v17 supportsAutomaticTranslation];

      if (!v18)
      {
        goto LABEL_23;
      }

      v19 = [(CKDetailsController *)self conversation];
      v20 = [v19 shouldAutomaticallyTranslate];

      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = [(CKDetailsController *)self conversation];
      v22 = [v21 translationLanguageCode];

      if (v22)
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
      v23 = [(CKDetailsController *)self conversation];
      v24 = [v23 chat];
      v25 = [v24 supportsCapabilities:256];

      return v25;
    case 13:
LABEL_18:
      result = 1;
      break;
    case 14:
      v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v12 = [v11 isKeyTransparencyEnabled];

      if (v12 && [(CKDetailsController *)self shouldShowKTSection])
      {
        ktChatState = self->_ktChatState;
        v14 = [(CKDetailsController *)self conversation];
        v15 = [v14 chat];
        v16 = +[CKKTDetailsViewUtilities numberOfRowsInKTSectionForStatus:isGroupChat:](CKKTDetailsViewUtilities, "numberOfRowsInKTSectionForStatus:isGroupChat:", ktChatState, [v15 isGroupChat]);

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  switch([v5 section])
  {
    case 0:
      v6 = [(CKDetailsController *)self groupPhotoCellForIndexPath:v5];
      goto LABEL_26;
    case 1:
      v6 = [(CKDetailsController *)self expanseActivityCellForIndexPath:v5];
      goto LABEL_26;
    case 2:
      if (![(CKDetailsController *)self shouldShowSIMTypeSection])
      {
        goto LABEL_17;
      }

      v6 = -[CKDetailsController switchSubscriptionCellForIndexPathRow:](self, "switchSubscriptionCellForIndexPathRow:", [v5 row]);
      goto LABEL_26;
    case 3:
      v6 = [(CKDetailsController *)self fmfViewControllerCellForIndexPath:v5 shouldShowLocation:[(CKDetailsController *)self shouldShowLocationStringForOneToOneConversation]];
      goto LABEL_26;
    case 4:
      v6 = [(CKDetailsController *)self groupNameCellForIndexPath:v5];
      goto LABEL_26;
    case 5:
      v6 = [(CKDetailsController *)self groupCountCellForIndexPath:v5];
      goto LABEL_26;
    case 6:
      v6 = [(CKDetailsController *)self contactsManagerCellForIndexPath:v5];
      goto LABEL_26;
    case 7:
      v6 = -[CKDetailsController locationShareCellForIndexPathRow:](self, "locationShareCellForIndexPathRow:", [v5 row]);
      goto LABEL_26;
    case 8:
      v6 = [(CKDetailsController *)self sharedWithYouCellForIndexPath:v5];
      goto LABEL_26;
    case 9:
      v6 = [(CKDetailsController *)self chatOptionsCellForIndexPath:v5];
      goto LABEL_26;
    case 10:
      v6 = [(CKDetailsController *)self translationCellForIndexPath:v5];
      goto LABEL_26;
    case 11:
      v6 = [(CKDetailsController *)self leaveCellForIndexPath:v5];
      goto LABEL_26;
    case 12:
      v6 = [(CKDetailsController *)self deleteAndBlockCellForIndexPath:v5];
      goto LABEL_26;
    case 13:
      v7 = [(CKDetailsController *)self searchAttachmentViewControllerCellForIndexPath:v5];
      if (CKIsRunningInMacCatalyst())
      {
        v19[0] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v9 = [(CKDetailsController *)self popoverPresentationController];
        [v9 setPassthroughViews:v8];
      }

      break;
    case 14:
      v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v11 = [v10 isKeyTransparencyEnabled];

      if (!v11)
      {
        goto LABEL_16;
      }

      v6 = -[CKDetailsController ktCellForRow:](self, "ktCellForRow:", [v5 row]);
LABEL_26:
      v7 = v6;
      break;
    case 16:
      v14 = [(CKDetailsController *)self conversation];
      v15 = [v14 chat];
      v16 = [v15 participants];
      v17 = [v16 count];

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
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: Unsupported section in indexPath %@", "-[CKDetailsController tableView:cellForRowAtIndexPath:]", v5];
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
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
  v2 = [MEMORY[0x1E695D168] descriptorForRequiredKeys];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)shouldShowGroupPhotoActionTitle
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 supportsMutatingGroupIdentity];

  return v3;
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
    v7 = [(CKDetailsController *)self conversation];
    v8 = [v7 chat];

    v9 = [(CKDetailsController *)self setupAlternativeCommunicationActionsForChat:v8];
    actions = self->_actions;
    self->_actions = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 detailsActionViewStyle];

    v13 = [objc_alloc(MEMORY[0x1E695D170]) initWithDefaultActionItems:self->_actions displaysUnavailableActionTypes:1 actionViewStyle:v12];
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CKDetailsController *)self conversation];
      v15 = [v14 chat];
      v16 = [v15 lastAddressedSIMID];
      [v13 setGeminiChannelIdentifier:v16];
    }

    v17 = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
    v18 = [objc_opt_class() maxContactAvatars];
    v19 = [(CKDetailsController *)self conversation];
    v20 = [v19 conversationVisualIdentityWithKeys:v17 requestedNumberOfContactsToFetch:v18];

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

    v25 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
    [v25 setAutoresizingMask:18];

    [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController setDelegate:self];
    self->_needsContactsReload = 0;
  }

  [(CKDetailsController *)self updateContactsHeaderVerificationState];
  [(CKGroupPhotoCell *)self->_groupPhotoCell frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
  [v34 setFrame:{v27, v29, v31, v33}];

  v35 = self->_groupPhotoCell;
  v36 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController view];
  [(CKGroupPhotoCell *)v35 setGroupView:v36];
}

- (id)screenSharingActionView
{
  v3 = [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController actionsViewConfiguration];
  v4 = [v3 supportedActionTypes];

  if (v4 && (v5 = [v4 indexOfObject:@"ScreenShareType"], v5 != 0x7FFFFFFFFFFFFFFFLL))
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

      v18 = [(CKDetailsController *)self tableView];
      [v18 bounds];
      v19 = CGRectGetWidth(v26) - v17;

      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController sizeForLayoutInContainerSize:v19, 1.79769313e308];
      v21 = v20;
      v22 = [(CKDetailsController *)self traitCollection];
      [v22 displayScale];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  switch([v7 section])
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

      v18 = -[CKDetailsController switchSubscriptionCellForIndexPathRow:](self, "switchSubscriptionCellForIndexPathRow:", [v7 row]);
      goto LABEL_18;
    case 3:
      if ([v7 row])
      {
        v22 = [v7 row] - 1;
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
          [v6 bounds];
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
      v19 = [v7 row];
      v20 = v19 <= [(CKDetailsController *)self rowForLastContact]&& [(CKDetailsController *)self countOfContactViewModels]!= 0;
      v39 = [v7 row];
      v40 = [(CKDetailsController *)self conversation];
      v41 = [v40 isBusinessConversation];

      if (v41)
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
          [(CKDetailsController *)self _heightForContactCellAtIndexPath:v7];
          goto LABEL_51;
        }

        if (!v20)
        {
          goto LABEL_50;
        }

        v42 = [(CKDetailsController *)self rowForTUConversationCell];
      }

      else
      {
        if (!v20)
        {
          goto LABEL_50;
        }

        v39 = [v7 row];
        v42 = [(CKDetailsController *)self rowForShowMoreContactsCell];
      }

      if (v39 > v42)
      {
        goto LABEL_34;
      }

LABEL_50:
      [(CKDetailsController *)self _heightForAuxContactCellAtIndexPath:v7];
LABEL_51:
      v8 = v9;
LABEL_52:

      return v8;
    case 7:
      v22 = [v7 row];
      goto LABEL_21;
    case 8:
      v24 = [CKDetailsSharedWithYouCell alloc];
      v12 = [(CKDetailsSharedWithYouCell *)v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v14 = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"MARK_AS_AUTO_DONATING";
      goto LABEL_24;
    case 9:
      v33 = [CKDetailsChatOptionsCell alloc];
      v28 = [(CKDetailsChatOptionsCell *)v33 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v34 = [(CKDetailsController *)self _optionRowForIndexPath:v7];
      if (v34 <= 2)
      {
        v35 = off_1E72EFB68[v34];
        v36 = [(CKDetailsChatOptionsCell *)v28 textLabel];
        v37 = CKFrameworkBundle();
        v38 = [v37 localizedStringForKey:v35 value:&stru_1F04268F8 table:@"ChatKit"];
        [v36 setText:v38];
      }

      goto LABEL_44;
    case 10:
      v27 = [CKDetailsChatOptionsCell alloc];
      v28 = [(CKDetailsChatOptionsCell *)v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v29 = [(CKDetailsController *)self _translationRowForIndexPath:v7];
      if (v29 == 1)
      {
        v45 = [(CKDetailsController *)self conversation];
        v30 = [v45 translationLanguageCode];

        v31 = [(CKDetailsChatOptionsCell *)v28 textLabel];
        v46 = MEMORY[0x1E696AEC0];
        v32 = [MEMORY[0x1E695DF58] currentLocale];
        v47 = [v32 localizedStringForLanguageCode:v30];
        v48 = [v46 localizedStringWithFormat:@"Translate From (%@)", v47];
        [v31 setText:v48];
      }

      else
      {
        if (v29)
        {
          goto LABEL_44;
        }

        v30 = [(CKDetailsChatOptionsCell *)v28 textLabel];
        v31 = CKFrameworkBundle();
        v32 = [v31 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        [v30 setText:v32];
      }

LABEL_44:
      [v6 bounds];
      [(CKDetailsChatOptionsCell *)v28 sizeThatFits:CGRectGetWidth(v52), 3.40282347e38];
      v8 = v49;

      goto LABEL_52;
    case 11:
      v13 = [CKDetailsLocationShareCell alloc];
      v12 = [(CKDetailsLocationShareCell *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v14 = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"LEAVE_CONVERSATION";
      goto LABEL_24;
    case 12:
      v21 = [CKDetailsLocationShareCell alloc];
      v12 = [(CKDetailsLocationShareCell *)v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v14 = [(CKDetailsSharedWithYouCell *)v12 textLabel];
      v15 = CKFrameworkBundle();
      v16 = v15;
      v17 = @"DELETE_AND_BLOCK_THIS_CONVERSATION";
LABEL_24:
      v25 = [v15 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
      [v14 setText:v25];

      goto LABEL_25;
    case 13:
      v18 = [(CKDetailsController *)self searchViewController];
LABEL_18:
      v12 = v18;
      goto LABEL_25;
    case 14:
      v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v11 = [v10 isKeyTransparencyEnabled];

      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = -[CKDetailsController ktCellForRow:](self, "ktCellForRow:", [v7 row]);
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
    v3 = [(CKDetailsController *)self conversation];
    v4 = [v3 chat];
    v5 = [v4 lastAddressedSIMID];

    v6 = [(CKDetailsController *)self conversation];
    v7 = [v6 chat];
    v8 = [v7 lastAddressedHandleID];

    v9 = [[CKSenderIdentity alloc] initWithHandle:v8 simID:v5];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Found identity %@ for phoneNumber %@ simID %@", &v13, 0x20u);
      }
    }

    v11 = [(CKSenderIdentity *)v9 label];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)_heightForContactCellAtIndexPath:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsController *)self countOfContactViewModels];
  v6 = [v4 row];
  if (v6 < v5 || [(CKDetailsController *)self hasTUConversation])
  {
    if ([(CKDetailsController *)self shouldAddToVisibleContactRowCountForTUConversation])
    {
      v6 = v5 - 2;
    }

    else
    {
      v7 = [(CKDetailsController *)self conversation];
      v8 = [v7 chat];
      [v8 isBusinessChat];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "row")}];
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "_heightForContactCellAtIndexPath passed an indexPath with an invalid row index:%@, model count:%@, backtrace:%@", &v22, 0x20u);
      }
    }

    if (!v5)
    {
      v20 = 0.0;
      goto LABEL_13;
    }

    v6 = v5 - 1;
  }

  v13 = objc_alloc(+[CKDetailsContactsTableViewCell cellClass]);
  v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v15 = [(CKDetailsController *)self contactsManager];
  v16 = [v15 contactsViewModels];
  v17 = [v16 objectAtIndex:v6];

  [v14 configureWithViewModel:v17];
  v18 = [(CKDetailsController *)self tableView];
  [v18 bounds];
  [v14 sizeThatFits:{CGRectGetWidth(v29), 3.40282347e38}];
  v20 = v19;

LABEL_13:
  return v20;
}

- (double)_heightForAuxContactCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5 == [(CKDetailsController *)self rowForShowMoreContactsCell])
  {
    [(CKDetailsController *)self showMoreContactCellHeight];
    if (v6 < 0.0)
    {
      v7 = [CKDetailsGroupHeaderCell alloc];
      v8 = +[CKDetailsGroupHeaderCell reuseIdentifier];
      v9 = [(CKDetailsController *)self contactsManager];
      v10 = [v9 recipientsSortedByIsContact:1 alphabetically:1];
      v11 = [(CKDetailsGroupHeaderCell *)v7 initWithStyle:0 reuseIdentifier:v8 participants:v10];

      v12 = [(CKDetailsController *)self tableView];
      [v12 bounds];
      [(CKDetailsGroupHeaderCell *)v11 sizeThatFits:CGRectGetWidth(v36), 3.40282347e38];
      [(CKDetailsController *)self setShowMoreContactCellHeight:v13];
    }

    [(CKDetailsController *)self showMoreContactCellHeight];
LABEL_16:
    v22 = v14;
    goto LABEL_17;
  }

  v15 = [v4 row];
  if (v15 == [(CKDetailsController *)self rowForAddMemberCell])
  {
    [(CKDetailsController *)self addContactCellHeight];
    if (v16 < 0.0)
    {
      v17 = objc_alloc(+[CKDetailsAddMemberCell cellClass]);
      v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v19 = [(CKDetailsController *)self tableView];
      [v19 bounds];
      [v18 sizeThatFits:{CGRectGetWidth(v37), 3.40282347e38}];
      [(CKDetailsController *)self setAddContactCellHeight:v20];
    }

    [(CKDetailsController *)self addContactCellHeight];
    goto LABEL_16;
  }

  v21 = [v4 row];
  v22 = 0.0;
  if (v21 == [(CKDetailsController *)self rowForTUConversationCell])
  {
    [(CKDetailsController *)self tuConversationCellHeight];
    if (v23 < 0.0)
    {
      v24 = [CKDetailsTUConversationCell alloc];
      v25 = +[CKDetailsTUConversationCell reuseIdentifier];
      v26 = [(CKDetailsController *)self tuConversation];
      v27 = [(CKDetailsTUConversationCell *)v24 initWithStyle:0 reuseIdentifier:v25 conversation:v26];

      v28 = [(CKDetailsController *)self tableView];
      [v28 bounds];
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
  v3 = [(CKDetailsController *)self tuConversation];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [CKDetailsExpanseActivityCell alloc];
  v5 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  v6 = [(CKDetailsController *)self tuConversation];
  v7 = [(CKDetailsExpanseActivityCell *)v4 initWithStyle:0 reuseIdentifier:v5 conversation:v6];

  v8 = MEMORY[0x1E69A5B78];
  v9 = [(CKDetailsController *)self tuConversation];
  if ([v8 isScreenShareActivityForTUConversation:v9])
  {

LABEL_7:
    v17 = [(CKDetailsController *)self tableView];
    [v17 bounds];
    [(CKDetailsExpanseActivityCell *)v7 sizeThatFits:CGRectGetWidth(v22), 3.40282347e38];
    v10 = v18;

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 detailsExpanseScreenShareCellHeight];
    goto LABEL_8;
  }

  v11 = [(CKDetailsController *)self tuConversation];
  v12 = [CKTUConversationViewUtilities activityImageForTUConversation:v11];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [(CKDetailsController *)self tableView];
  [v13 bounds];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CKDetailsController *)self conversationHasLeft])
  {
LABEL_2:
    v6 = 0;
  }

  else
  {
    v6 = 1;
    switch([v5 section])
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
        v13 = [v5 row];
        if (v13 == [(CKDetailsController *)self rowForAddMemberCell])
        {
          goto LABEL_24;
        }

        v14 = [v5 row];
        if (v14 == [(CKDetailsController *)self rowForShowMoreContactsCell])
        {
          goto LABEL_24;
        }

        v15 = [v5 row];
        if (v15 == [(CKDetailsController *)self rowForTUConversationCell])
        {
          goto LABEL_2;
        }

        v6 = CKIsRunningInMacCatalyst() == 0;
        break;
      case 7:
        v16 = [v5 row];
        v17 = [(CKDetailsController *)self conversation];
        v18 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:v16 conversation:v17 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

        v19 = [(CKDetailsController *)self fmfEnabled];
        v6 = v18 == 2 || v19;
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
          v20 = [(CKDetailsController *)self canLeaveConversation];
LABEL_20:
          v6 = v20;
        }

        break;
      case 12:
      case 16:
        break;
      case 13:
        v7 = CKDetailsSegmentedControlCell;
LABEL_19:
        v20 = [(__objc2_class *)v7 shouldHighlight];
        goto LABEL_20;
      case 14:
        v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v9 = [v8 isKeyTransparencyEnabled];

        if (!v9)
        {
          goto LABEL_2;
        }

        v10 = [(CKDetailsController *)self tableView];
        v11 = [v10 cellForRowAtIndexPath:v5];

        v12 = [(CKDetailsController *)self conversation];
        v6 = [CKKTDetailsViewUtilities shouldHighlightCell:v11 forConversation:v12];

        break;
      default:
        goto LABEL_2;
    }
  }

  return v6;
}

- (BOOL)shouldDisplayHeaderForSection:(unint64_t)a3
{
  v3 = self;
  LOBYTE(self) = 0;
  if (a3 > 10)
  {
    if (a3 == 14)
    {
      v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v5 = [v4 isKeyTransparencyEnabled];

      if (v5)
      {
        LODWORD(self) = [(CKDetailsController *)v3 shouldShowKTSection];
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

    else if (a3 == 11)
    {

      LOBYTE(self) = [(CKDetailsController *)v3 shouldShowEnhancedGroupFeatures];
    }
  }

  else if (a3 == 1 || a3 == 3)
  {

    LOBYTE(self) = [(CKDetailsController *)v3 shouldShowExpanseFeatures];
  }

  return self;
}

- (BOOL)shouldDisplayFooterForSection:(unint64_t)a3
{
  if (a3 > 7)
  {
    if (a3 <= 11)
    {
      if (a3 != 8)
      {
        return 0;
      }

      return [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
    }

    else
    {
      if (a3 != 14)
      {
        return 0;
      }

      v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v6 = [v5 isKeyTransparencyEnabled];

      if (!v6)
      {
        return 0;
      }

      return [(CKDetailsController *)self shouldShowKTSection];
    }
  }

  else if (a3 <= 1)
  {
    if (!a3)
    {
      return 1;
    }

    if (a3 != 1)
    {
      return 0;
    }

    return [(CKDetailsController *)self shouldShowExpanseFeatures];
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 6)
      {

        return [(CKDetailsController *)self shouldShowBusinessInfoFooter];
      }

      return 0;
    }

    return [(CKDetailsController *)self shouldShowSIMTypeSection];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 != 14)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (![v5 isKeyTransparencyEnabled])
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [(CKDetailsController *)self shouldShowKTSection];

  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = CKFrameworkBundle();
  v7 = [v5 localizedStringForKey:@"KT_HEADER_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
LABEL_7:

LABEL_8:

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 14)
  {
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v9 isKeyTransparencyEnabled])
    {
      v10 = [(CKDetailsController *)self shouldShowKTSection];

      if (v10)
      {
        v8 = *MEMORY[0x1E69DE3D0];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  else if (a4 == 1)
  {
    [(CKDetailsController *)self calculateHeightForExpanseActivityHeader];
    v8 = v7;
    goto LABEL_13;
  }

  v11 = [(CKDetailsController *)self shouldDisplayHeaderForSection:a4];
  v12 = 0.0;
  if (a4 == 10)
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

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v15 = v5;
    v7 = [v5 contentView];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
    [v7 setBackgroundColor:v10];

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 detailsHeaderFooterContentViewBackgroundColor];
    [v15 setBackgroundColor:v13];

    v14 = CKIsRunningInMacCatalyst();
    v6 = v15;
    if (v14)
    {
      [v15 setBackgroundView:0];
      v6 = v15;
    }
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if (CKIsRunningInMacCatalyst() && [v8 section] == 6 && (v9 = objc_msgSend(v8, "row"), v9 != -[CKDetailsController rowForTUConversationCell](self, "rowForTUConversationCell")))
  {
    v12 = [v7 cellForRowAtIndexPath:v8];
    v10 = [(CKDetailsController *)self _menuConfigForContactsCell:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_menuConfigForContactsCell:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v6];
  v8 = [(CKDetailsController *)self contactsManager];
  v9 = [v8 contactsViewModels];
  v10 = [v9 count];

  if (v10 <= v7)
  {
    v17 = 0;
  }

  else
  {
    v11 = [(CKDetailsController *)self _canRemoveRecipientAtIndexPath:v6];
    v12 = [(CKDetailsController *)self contactsManager];
    v13 = [v12 contactsViewModels];
    v14 = [v13 objectAtIndex:v7];
    v15 = [v14 entity];

    v16 = [(CKDetailsController *)self contactsManager];
    v17 = [v16 conversationContextMenuConfigForEntity:v15 allowConversationRemoval:v11];
  }

  return v17;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 16.0;
  if (a4 <= 7)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
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

      if (a4 != 6)
      {
        if (a4 != 7)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      if ([(CKDetailsController *)self shouldShowBusinessInfoFooter])
      {
        [(CKDetailsController *)self initializeBusinessInfoViewIfNecessary];
        v15 = [(CKDetailsController *)self tableView];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = [(CKDetailsController *)self tableView];
        [v24 _marginWidth];
        v26 = v25;

        v27 = [(CKDetailsController *)self businessInfoView];
        v34.origin.x = v17;
        v34.origin.y = v19;
        v34.size.width = v21;
        v34.size.height = v23;
        [v27 sizeThatFits:{CGRectGetWidth(v34) + v26 * -2.0, 1.79769313e308}];
        v7 = v28;

        goto LABEL_35;
      }

      v29 = [(CKDetailsController *)self conversation];
      v30 = [v29 isGroupConversation];

      if (v30)
      {
        goto LABEL_35;
      }

      v31 = [(CKDetailsController *)self conversation];
      v32 = [v31 isGroupConversation];

      v12 = v32 == 0;
      v13 = 0.0;
      v14 = 28.0;
      goto LABEL_32;
    }

    if (!a4)
    {
      v9 = [(CKDetailsController *)self supportsChatNameAndPhotoHeader];
      goto LABEL_21;
    }

    if (a4 == 2)
    {
      v9 = [(CKDetailsController *)self shouldShowSIMTypeSection];
LABEL_21:
      v12 = !v9;
      v13 = 0.0;
      v14 = 16.0;
      goto LABEL_32;
    }

LABEL_24:
    v7 = 0.0;
    goto LABEL_35;
  }

  if (a4 <= 12)
  {
    if ((a4 - 11) < 2)
    {
      goto LABEL_35;
    }

    if (a4 != 8)
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

  if (a4 == 13)
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

  if (a4 != 14)
  {
    goto LABEL_24;
  }

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isKeyTransparencyEnabled];

  v7 = 0.0;
  if (v11 && [(CKDetailsController *)self shouldShowKTSection])
  {
    [(CKDetailsController *)self calculateHeightForKTFooter];
    goto LABEL_27;
  }

LABEL_35:

  return v7;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v23 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    if (a5 <= 6)
    {
      if (a5 == 1)
      {
        v11 = [(CKDetailsController *)self expanseActivityTextView];
        goto LABEL_14;
      }

      if (a5 == 6)
      {
        v11 = [(CKDetailsController *)self businessInfoView];
        goto LABEL_14;
      }
    }

    else
    {
      switch(a5)
      {
        case 14:
          v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v13 = [v12 isKeyTransparencyEnabled];

          if (v13)
          {
            v11 = [(CKDetailsController *)self ktSecurityFooterTextView];
            goto LABEL_14;
          }

          break;
        case 8:
          v11 = [(CKDetailsController *)self sharedWithYouFooterTextView];
          goto LABEL_14;
        case 7:
          v11 = [(CKDetailsController *)self locationSharingTextView];
LABEL_14:
          v14 = v11;
          v15 = [MEMORY[0x1E69DC888] clearColor];
          [v14 setBackgroundColor:v15];

          break;
      }
    }

    v16 = [v10 contentView];
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 theme];
    v19 = [v18 detailsHeaderFooterContentViewBackgroundColor];
    [v16 setBackgroundColor:v19];

    v20 = +[CKUIBehavior sharedBehaviors];
    v21 = [v20 theme];
    v22 = [v21 detailsHeaderFooterContentViewBackgroundColor];
    [v10 setBackgroundColor:v22];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 7)
  {
    switch(a4)
    {
      case 3:
        if ([(CKDetailsController *)self shouldShowFooterInLocationSection:3])
        {
          v8 = self;
          v9 = 3;
          goto LABEL_15;
        }

        break;
      case 6:
        if ([(CKDetailsController *)self shouldShowBusinessInfoFooter])
        {
          v12 = [(CKDetailsController *)self businessInfoFooterViewForSection:6];
          goto LABEL_20;
        }

        break;
      case 7:
        if ([(CKDetailsController *)self shouldShowFooterInLocationSection:7])
        {
          v8 = self;
          v9 = 7;
LABEL_15:
          v12 = [(CKDetailsController *)v8 locationFooterViewForSection:v9];
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_26;
    }

    goto LABEL_21;
  }

  switch(a4)
  {
    case 8:
      if ([(CKDetailsController *)self shouldShowSharedWithYouFeatures])
      {
        v12 = [(CKDetailsController *)self sharedWithYouFooterView];
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
      v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v11 = [v10 isKeyTransparencyEnabled];

      if (v11 && [(CKDetailsController *)self shouldShowKTSection])
      {
        v12 = [(CKDetailsController *)self ktSecurityFooterView];
LABEL_20:
        v7 = v12;
        break;
      }

      goto LABEL_21;
  }

LABEL_26:

  return v7;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section] == 6 && -[CKDetailsController _canRemoveRecipientAtIndexPath:](self, "_canRemoveRecipientAtIndexPath:", v5);

  return v6;
}

- (double)calculateHeightForLocationSharingFooter
{
  v3 = [(CKDetailsController *)self shouldShowActiveDeviceSwitchFooter];
  result = 24.0;
  if (v3)
  {
    [(CKDetailsController *)self initializeLocationSharingTextViewIfNecessary];
    v5 = [(CKDetailsController *)self tableView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(CKDetailsController *)self tableView];
    [v14 _marginWidth];
    v16 = v15;

    v17 = [(CKDetailsController *)self locationSharingTextView];
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    [v17 sizeThatFits:{CGRectGetWidth(v20) + v16 * -2.0, 1.79769313e308}];
    v19 = v18;

    return v19 + 32.0;
  }

  return result;
}

- (double)calculateHeightForShareAutomaticallyFooter
{
  v3 = [(CKDetailsController *)self shouldShowSharedWithYouFeatures];
  result = 0.0;
  if (v3)
  {
    v5 = [(CKDetailsController *)self tableView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(CKDetailsController *)self tableView];
    [v14 _marginWidth];
    v16 = v15;

    v17 = [(CKDetailsController *)self sharedWithYouFooterTextView];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    [v17 sizeThatFits:{CGRectGetWidth(v23) + v16 * -2.0, 1.79769313e308}];
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
    v4 = [(CKDetailsController *)self expanseActivityTextView];
    v5 = [(CKDetailsController *)self tableView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(CKDetailsController *)self tableView];
    [v14 _marginWidth];
    v16 = v15;

    v17 = [(CKDetailsController *)self expanseActivityTextView];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    [v17 sizeThatFits:{CGRectGetWidth(v23) + v16 * -2.0, 1.79769313e308}];
    v19 = v18;

    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 detailsExpanseActivityDescriptionVerticalPadding];
    v3 = v19 + 0.0 + v21;
  }

  return v3;
}

- (BOOL)_canRemoveRecipientAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self rowForShowMoreContactsCell];
  if (-[CKDetailsController shouldShowEnhancedGroupFeatures](self, "shouldShowEnhancedGroupFeatures") && -[CKDetailsController _moreThanMinNumberOfParticipantsInGroup](self, "_moreThanMinNumberOfParticipantsInGroup") && !-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") && (v6 = [v4 row], v6 != -[CKDetailsController rowForTUConversationCell](self, "rowForTUConversationCell")) && (v5 == 0x7FFFFFFFFFFFFFFFLL || (v9 = objc_msgSend(v4, "row"), v9 > -[CKDetailsController rowForShowMoreContactsCell](self, "rowForShowMoreContactsCell"))))
  {
    v10 = [v4 row];
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
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 recipientCount] > 2;

  return v3;
}

- (id)tableView:(id)a3 editActionsForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] == 6 && (v8 = objc_msgSend(v7, "row"), v8 != -[CKDetailsController rowForAddMemberCell](self, "rowForAddMemberCell")))
  {
    v10 = MEMORY[0x1E69DD058];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"REMOVE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __62__CKDetailsController_tableView_editActionsForRowAtIndexPath___block_invoke;
    v19 = &unk_1E72EF9D0;
    v20 = self;
    v21 = v6;
    v13 = [v10 rowActionWithStyle:1 title:v12 handler:&v16];

    v14 = [MEMORY[0x1E69DC888] redColor];
    [v13 setBackgroundColor:v14];

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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isWaldoEnabled];

  if (v6 && [v4 section] == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [v6 section];
  if (v8 > 10)
  {
    if (v8 > 13)
    {
      if (v8 != 14)
      {
        if (v8 == 16)
        {
          v14 = [(CKDetailsController *)self conversation];
          v15 = [v14 chat];
          v16 = [v15 participants];
          v17 = [v16 count];

          if (v17 >= 2)
          {
            [(CKDetailsController *)self _presentGroupNameAndPhotoEditor];
          }
        }

        goto LABEL_28;
      }

      v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v21 = [v20 isKeyTransparencyEnabled];

      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = [(CKDetailsController *)self tableView];
      v9 = [v22 cellForRowAtIndexPath:v6];

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

    else if (v8 == 11)
    {
      v9 = [v31 cellForRowAtIndexPath:v6];
      [(CKDetailsController *)self presentLeaveActionSheetFromView:v9];
    }

    else
    {
      if (v8 != 12)
      {
        goto LABEL_28;
      }

      v9 = [v31 cellForRowAtIndexPath:v6];
      [(CKDetailsController *)self presentDeleteAndBlockActionSheetFromView:v9];
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 != 7)
      {
        goto LABEL_28;
      }

      v10 = [(CKDetailsController *)self conversation];
      v11 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:v7 conversation:v10 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

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

        v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v13 = [v12 isWaldoEnabled];

        if (v13)
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

    v19 = [(CKDetailsController *)self tableView];
    v9 = [v19 cellForRowAtIndexPath:v6];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !CKIsRunningInMacCatalyst())
    {
      v23 = [(CKDetailsController *)self conversation];
      v24 = [v23 isBusinessConversation];

      if (v24)
      {
        [(CKDetailsController *)self _showBrandCard];
      }

      else
      {
        v25 = [v6 row];
        if ([(CKDetailsController *)self hasTUConversation])
        {
          v26 = -2;
        }

        else
        {
          v26 = -1;
        }

        v27 = [(CKDetailsController *)self contactsManager];
        v28 = [v27 recipientsSortedByIsContact:1 alphabetically:1];
        v29 = [v28 objectAtIndex:v26 + v25];

        v30 = [(CKDetailsController *)self view];
        [(CKDetailsController *)self showContactCardForEntity:v29 fromView:v30];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v31 deselectRowAtIndexPath:v6 animated:1];
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
          [(CKDetailsController *)self presentGroupRecipientSelectionControllerAtIndexPath:v6];
        }
      }
    }

    goto LABEL_27;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
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
    v18 = [(CKDetailsController *)self tableView];
    [v18 reloadData];
  }

LABEL_28:
  [v31 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_showBrandCard
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 businessHandle];
  v8 = [v4 brand];

  v5 = v8;
  if (v8)
  {
    v6 = [MEMORY[0x1E69A7F28] makeBrandPlacecardForIMBrand:v8];
    v7 = [(CKDetailsController *)self navigationController];
    [v7 pushViewController:v6 animated:1];

    v5 = v8;
  }
}

- (void)setupKT
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 isBusinessChat];

  if ((v5 & 1) == 0)
  {
    [(CKDetailsController *)self getKTStatus];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];

    v8 = [(CKDetailsController *)self conversation];
    v7 = [v8 chat];
    [v7 fetchKTStatus];
  }
}

- (void)getKTStatus
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];

  obj = 0;
  v5 = [v4 keyTransparencyStatusForAffectedHandles:&obj];
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

- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3
{
  [(CKDetailsController *)self getKTStatus];
  v4 = [(CKDetailsController *)self tableView];
  [v4 reloadData];
}

- (void)_lastAddressedHandleUpdateNotification:(id)a3
{
  v3 = [(CKDetailsController *)self tableView];
  [v3 reloadData];
}

- (void)_reloadForReadReceiptVisibilityChangeIfNeeded:(id)a3
{
  v4 = [(CKDetailsController *)self wasShowingReadReceiptSwitch];
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 supportsSendingReadReceipts];

  if (v4 != v7)
  {
    v8 = [(CKDetailsController *)self tableView];
    [v8 reloadData];
  }
}

- (void)_chatAutoDonatingHandleUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v11 = [v5 chat];

  v6 = [v4 object];

  if (v6 != v11)
  {
    v7 = [v11 deviceIndependentID];
    v8 = [v6 deviceIndependentID];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_5;
    }

    [v11 setAutoDonationBehavior:{objc_msgSend(v6, "autoDonationBehavior")}];
  }

  v10 = [(CKDetailsController *)self tableView];
  [v10 reloadData];

LABEL_5:
}

- (void)_handleAddressBookChanged:(id)a3
{
  v4 = a3;
  v7 = [(CKDetailsController *)self conversation];
  v5 = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
  v6 = [v7 conversationVisualIdentityWithKeys:v5 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
  [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v6];
  [(CKDetailsController *)self _chatAutoDonatingHandleUpdateNotification:v4];
}

- (void)_conversationListFinishedMerging:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  v7 = [v5 chat];
  v8 = [v7 guid];
  v9 = [v6 conversationForExistingChatWithGUID:v8];

  if (v9)
  {
    if (v5 != v9)
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
          v16 = v5;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating details view conversation to %@ from %@", &v13, 0x16u);
        }
      }
    }
  }

  else if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKDetailsController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v13, 0xCu);
      }
    }

    v12 = [(CKDetailsController *)self detailsControllerDelegate];
    [v12 dismissDetailsNavigationController];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CKDetailsController *)self setGroupPhotoHeaderHeight:a3, -1.0];

  [(CKDetailsController *)self setSimLabelCellHeight:-1.0];
}

- (void)_handleGroupPhotoChanged:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupPhotoChangedNotification _handleGroupPhotoChanged called on details controller %@ with notification %@", buf, 0x16u);
    }
  }

  v6 = [v4 object];
  v7 = [v6 chatIdentifier];
  v8 = [(CKDetailsController *)self conversation];
  v9 = [v8 chat];
  v10 = [v9 chatIdentifier];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = [(CKDetailsController *)self conversation];
    v13 = [v4 userInfo];
    v14 = [v13 valueForKey:@"sender"];
    v15 = [(CKDetailsController *)self conversation];
    [v15 updateConversationVisualIdentityGroupPhotoWithSender:v14];

    if (self->_groupPhotoHeaderViewController)
    {
      v16 = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
      v17 = [v12 conversationVisualIdentityWithKeys:v16 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
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

- (void)_handleGroupDisplayNameChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupDisplayNameChangedNotification _handleGroupDisplayNameChanged called on details controller %@ with notification %@", &v16, 0x16u);
    }
  }

  v6 = [v4 object];
  v7 = [(CKDetailsController *)self conversation];
  v8 = [v7 chat];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [v4 userInfo];
    v11 = [v10 valueForKey:@"sender"];
    v12 = [(CKDetailsController *)self conversation];
    [v12 updateConversationVisualIdentityDisplayNameWithSender:v11];

    if (self->_groupPhotoHeaderViewController)
    {
      v13 = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
      v14 = [(CKDetailsController *)self conversation];
      v15 = [v14 conversationVisualIdentityWithKeys:v13 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

      [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v15];
    }
  }
}

- (void)_chatParticipantsChangedNotification:(id)a3
{
  v6 = [(CKDetailsController *)self conversation];
  if ([v6 isGroupConversation] && self->_groupPhotoHeaderViewController)
  {
    [v6 setNeedsUpdatedContactOrderForVisualIdentity];
    v4 = [(CKDetailsController *)self _groupPhotoHeaderRequiredContactKeys];
    v5 = [v6 conversationVisualIdentityWithKeys:v4 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
    [(CNGroupIdentityHeaderViewController *)self->_groupPhotoHeaderViewController groupIdentityDidUpdate:v5];
    self->_needsContactsReload = 1;
    [(CKDetailsController *)self _configureGroupPhotoHeader];
  }
}

- (id)locationFooterViewForSection:(int64_t)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsLocationShareHeaderFooterView reuseIdentifier];
  [v4 registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsLocationShareHeaderFooterView reuseIdentifier];
  v43 = v4;
  v42 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  v8 = [(CKDetailsController *)self locationSharingTextView];
  v9 = [MEMORY[0x1E69A5B70] sharedInstance];
  v10 = [v9 activeDevice];

  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"LOCATION_CURRENTLY_SHARING_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = [v10 deviceName];
  v15 = [v11 stringWithFormat:v13, v14];

  v16 = [MEMORY[0x1E69DC668] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
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

  v41 = v10;
  if (-[CKDetailsController fmfRestricted](self, "fmfRestricted") || CKIsRunningInMacCatalyst() || ([v10 isThisDevice] & 1) != 0)
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
  v30 = [v29 headerFont];
  [v27 addAttribute:v28 value:v30 range:{0, v26}];

  v31 = *MEMORY[0x1E69DB650];
  v32 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v27 addAttribute:v31 value:v32 range:{0, v26}];

  if (![(CKDetailsController *)self fmfRestricted]&& !CKIsRunningInMacCatalyst())
  {
    v38 = +[CKUIBehavior sharedBehaviors];
    v33 = [v38 theme];
    v34 = [v33 appTintColor];
    [v27 addAttribute:v31 value:v34 range:{v40, v39}];

    v35 = *MEMORY[0x1E69DB670];
    v36 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F04268F8];
    [v27 addAttribute:v35 value:v36 range:{v40, v39}];

    [v27 addAttribute:*MEMORY[0x1E69DB758] value:MEMORY[0x1E695E110] range:{v40, v39}];
  }

  [v8 setAttributedText:v27];
  [v8 setDelegate:self];
  [v42 setLocationSharingTextView:v8];

  return v42;
}

- (id)expanseActivityHeaderViewForSection:(int64_t)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsExpanseActivityHeaderView reuseIdentifier];
  [v4 registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsExpanseActivityHeaderView reuseIdentifier];
  v8 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  v9 = [(CKDetailsController *)self expanseActivityTextView];
  [v8 setExpanseActivityTextView:v9];

  return v8;
}

- (id)businessInfoFooterViewForSection:(int64_t)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsBusinessInfoHeaderFooterView reuseIdentifier];
  [v4 registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsBusinessInfoHeaderFooterView reuseIdentifier];
  v8 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  v9 = [(CKDetailsController *)self businessInfoView];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"BUSINESS_DESCRIPTION_IN_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setDescriptionText:v11];

  [v8 setBusinessInfoView:v9];

  return v8;
}

- (id)sharedWithYouFooterView
{
  v3 = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKDetailsSharedWithYouHeaderFooterView reuseIdentifier];
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  v6 = +[CKDetailsSharedWithYouHeaderFooterView reuseIdentifier];
  v7 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:v6];

  v8 = [(CKDetailsController *)self sharedWithYouFooterTextView];
  [v7 setSharedWithYouTextView:v8];

  return v7;
}

- (id)downloadAttachmentsFooterViewForSection:(int64_t)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsDownloadAttachmentsHeaderFooterView reuseIdentifier];
  [v4 registerClass:v5 forHeaderFooterViewReuseIdentifier:v6];

  v7 = +[CKDetailsDownloadAttachmentsHeaderFooterView reuseIdentifier];
  v8 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  [v8 setDelegate:self];

  return v8;
}

- (void)_updateDownloadFooterView
{
  v11 = [(CKDetailsController *)self downloadAttachmentsText];
  v3 = [(CKDetailsController *)self downloadButtonText];
  v4 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [v4 setTitleText:v11];

  v5 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [v5 setButtonText:v3];

  if ([(CKDetailsController *)self downloadButtonState]== 2)
  {
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v6 = [v8 appTintColor];
  }

  v9 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [v9 setDownloadButtonTextColor:v6];

  v10 = [(CKDetailsController *)self downloadAttachmentsFooterView];
  [v10 setLogoHidden:{-[CKDetailsController isDisplayingPhotos](self, "isDisplayingPhotos")}];
}

- (id)expanseActivityCellForIndexPath:(id)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [CKDetailsExpanseActivityCell alloc];
  v8 = +[CKDetailsExpanseActivityCell reuseIdentifier];
  v9 = [(CKDetailsController *)self tuConversation];
  v10 = [(CKDetailsExpanseActivityCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:v9];

  return v10;
}

- (id)leaveCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"leaveCell_reuseIdentifier"];

  v6 = [(CKDetailsController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"leaveCell_reuseIdentifier" forIndexPath:v4];

  v8 = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"LEAVE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v8 setText:v10];

  v11 = [MEMORY[0x1E69DC888] systemRedColor];
  [v8 setTextColor:v11];

  if ([(CKDetailsController *)self conversationHasLeft])
  {
    [v8 setEnabled:0];
  }

  else
  {
    v12 = [(CKDetailsController *)self conversation];
    [v8 setEnabled:{objc_msgSend(v12, "canLeave")}];
  }

  [v8 setNumberOfLines:0];
  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 isAccessibilityPreferredContentSizeCategory];

  if (v14)
  {
    LODWORD(v15) = 0.5;
    [v8 _setHyphenationFactor:v15];
  }

  v16 = [v7 topSeperator];
  [v16 setHidden:1];

  v17 = [v7 bottomSeperator];
  [v17 setHidden:1];

  return v7;
}

- (id)deleteAndBlockCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"deleteAndBlockCell_reuseIdentifier"];

  v6 = [(CKDetailsController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"deleteAndBlockCell_reuseIdentifier" forIndexPath:v4];

  v8 = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"DELETE_AND_BLOCK_THIS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v8 setText:v10];

  v11 = [MEMORY[0x1E69DC888] systemRedColor];
  [v8 setTextColor:v11];

  [v8 setEnabled:1];
  [v8 setNumberOfLines:0];
  v12 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v10) = [v12 isAccessibilityPreferredContentSizeCategory];

  if (v10)
  {
    LODWORD(v13) = 0.5;
    [v8 _setHyphenationFactor:v13];
  }

  v14 = [v7 topSeperator];
  [v14 setHidden:1];

  v15 = [v7 bottomSeperator];
  [v15 setHidden:1];

  return v7;
}

- (id)simTypeCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"CKDetailsSIM_reuseIdentifier"];

  v6 = [(CKDetailsController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"CKDetailsSIM_reuseIdentifier" forIndexPath:v4];

  v8 = [v7 textLabel];
  [v8 setNumberOfLines:0];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 isAccessibilityPreferredContentSizeCategory];

  if (v10)
  {
    LODWORD(v11) = 0.5;
    [v8 _setHyphenationFactor:v11];
  }

  v12 = [v7 bottomSeperator];
  [v12 setHidden:1];

  v13 = [v7 topSeperator];
  [v13 setHidden:1];

  return v7;
}

- (id)groupPhotoCellForIndexPath:(id)a3
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

- (id)groupNameCellForIndexPath:(id)a3
{
  v4 = [(CKDetailsController *)self groupNameCell];
  if (!v4)
  {
    v5 = [(CKDetailsController *)self tableView];
    v6 = objc_opt_class();
    v7 = +[CKDetailsGroupNameCell reuseIdentifier];
    [v5 registerClass:v6 forCellReuseIdentifier:v7];

    v8 = [CKDetailsGroupNameCell alloc];
    v9 = [(CKDetailsGroupNameCell *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKDetailsController *)self setGroupNameCell:v9];
    v10 = [(CKDetailsController *)self groupNameView];
    [(CKDetailsGroupNameCell *)v9 setGroupNameView:v10];
  }

  v11 = [(CKDetailsController *)self groupNameView];
  v12 = [(CKDetailsController *)self tableView];
  v13 = [(CKDetailsController *)self tableView:v12 numberOfRowsInSection:3];

  if (v13 > 0 || CKIsRunningInMacCatalyst())
  {
    v14 = [(CKDetailsController *)self groupNameCell];
    v15 = [v14 topSeperator];
    [v15 setHidden:1];
  }

  v16 = [(CKDetailsController *)self groupNameCell];
  v17 = [v16 bottomSeperator];
  [v17 setHidden:1];

  v18 = [(CKDetailsController *)self groupNameCell];

  return v18;
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

  v7 = [(CKDetailsController *)self conversation];
  v8 = [v7 displayName];
  [(CKDetailsAddGroupNameView *)groupNameView setGroupName:v8];

  [(CKDetailsAddGroupNameView *)self->_groupNameView setEnabled:[(CKDetailsController *)self conversationHasLeft]^ 1];
  [(CKDetailsAddGroupNameView *)self->_groupNameView setDelegate:self];
  v9 = self->_groupNameView;

  return v9;
}

- (id)fmfViewControllerCellForIndexPath:(id)a3 shouldShowLocation:(BOOL)a4
{
  v4 = a4;
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 row])
  {
    v7 = -[CKDetailsController locationShareCellForIndexPathRow:](self, "locationShareCellForIndexPathRow:", [v6 row] - 1);
    goto LABEL_41;
  }

  v8 = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsMapViewCell reuseIdentifier];
  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v9) = [v11 isWaldoEnabled];

  if (v9)
  {
    v12 = [(CKDetailsController *)self findMyWaldoMapViewController];
    if (!v12)
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
      v15 = [MEMORY[0x1E695DF70] array];
      v16 = [(CKDetailsController *)self conversation];
      v17 = [v16 chat];
      v18 = [v17 participants];
      v19 = [v18 __imArrayByApplyingBlock:&__block_literal_global_55];
      [v15 addObjectsFromArray:v19];

      v12 = objc_alloc_init(v13);
      if (!v12)
      {
        goto LABEL_34;
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 setDelegate:self];
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
      if (v20 && (objc_opt_respondsToSelector() & 1) != 0 && (([v20 messagesChatDetails], v22 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v23 = 0) : (v23 = v22), v24 = v23, v22, v24))
      {
        if (objc_opt_respondsToSelector())
        {
          [v12 setViewOptions:v24];
        }
      }

      else
      {
        v22 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v34 = [(CKDetailsController *)self groupPhotoHeaderViewController];
        v35 = [v34 displayNameForGroupIdentity];

        v36 = [(CKDetailsController *)self conversation];
        v37 = [v36 lastAddressedHandle];
        [v12 startObservingHandles:v15 callerHandle:v37 groupName:v35];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_32:
          [(CKDetailsController *)self setFindMyWaldoMapViewController:v12, v65];
          [v12 willMoveToParentViewController:self];
          [(CKDetailsController *)self addChildViewController:v12];
          [v12 didMoveToParentViewController:self];
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

        v35 = [(CKDetailsController *)self conversation];
        v36 = [v35 lastAddressedHandle];
        [v12 setRemoteParticipantHandles:v15 localParticipantHandle:v36];
      }

      goto LABEL_32;
    }
  }

  else
  {
    v12 = [(CKDetailsController *)self mapViewController];
    if (!v12)
    {
      v25 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMFUI");
      v26 = [(CKDetailsController *)self conversation];
      v27 = [v26 chat];
      v28 = [v27 participants];
      v15 = [(CKDetailsController *)self fmfHandlesFromIMHandles:v28];

      v12 = [[v25 alloc] initSimpleMapWithDelegate:self handles:v15];
      v29 = +[CKUIBehavior sharedBehaviors];
      v30 = [v29 theme];
      v31 = [v30 appTintColor];
      [v12 setAnnotationTintColor:v31];

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

      v33 = [v12 view];
      [v33 setUserInteractionEnabled:0];

      v22 = [v12 mapView];
      [v22 setZoomEnabled:0];
      [v22 setScrollEnabled:0];
      [v22 setPitchEnabled:0];
      [v22 setRotateEnabled:0];
      [(CKDetailsController *)self setMapViewController:v12];
      [v12 willMoveToParentViewController:self];
      [(CKDetailsController *)self addChildViewController:v12];
      [v12 didMoveToParentViewController:self];
      goto LABEL_33;
    }
  }

LABEL_35:
  v38 = [v12 view];

  v39 = [(CKDetailsController *)self mapViewCell];
  v40 = v39 == 0;

  if (v40)
  {
    v41 = [(CKDetailsController *)self tableView];
    v42 = +[CKDetailsMapViewCell reuseIdentifier];
    v43 = [v41 dequeueReusableCellWithIdentifier:v42 forIndexPath:v6];
    [(CKDetailsController *)self setMapViewCell:v43];

    if (v4)
    {
      v44 = [(CKDetailsController *)self mapViewCell];
      [v44 setShouldShowLocationString:1];

      if (!self->_locationStringCell)
      {
        v45 = [(CKDetailsController *)self conversation];
        v46 = [v45 recipients];
        v47 = [v46 firstObject];

        v48 = [CKDetailsLocationStringCell alloc];
        v49 = [(CKDetailsLocationStringCell *)v48 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        locationStringCell = self->_locationStringCell;
        self->_locationStringCell = v49;

        v51 = self->_locationStringCell;
        v52 = [(CKDetailsController *)self mapViewCell];
        v53 = [v52 contentView];
        [v53 layoutMargins];
        [(CKDetailsLocationStringCell *)v51 setLayoutMargins:?];

        [(CKDetailsController *)self updateLocationForRecipient:v47];
        v54 = [(CKDetailsController *)self mapViewCell];
        [v54 setLocationStringView:self->_locationStringCell];
      }
    }

    v55 = [(CKDetailsController *)self mapViewCell];
    [v55 setMapView:v38];

    v56 = [(CKDetailsController *)self mapViewCell];
    v57 = [v56 contentView];
    v58 = [(CKDetailsController *)self mapViewCell];
    v59 = [v58 topSeperator];
    [v57 bringSubviewToFront:v59];

    v60 = [(CKDetailsController *)self mapViewCell];
    v61 = [v60 contentView];
    v62 = [(CKDetailsController *)self mapViewCell];
    v63 = [v62 bottomSeperator];
    [v61 bringSubviewToFront:v63];
  }

  v7 = [(CKDetailsController *)self mapViewCell];

LABEL_41:

  return v7;
}

- (void)initializeLocationSharingTextViewIfNecessary
{
  v3 = [(CKDetailsController *)self locationSharingTextView];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v9 setEditable:0];
    v5 = [v9 textContainer];
    [v5 setLineFragmentPadding:0.0];

    [v9 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [v9 setBackgroundColor:0];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:v6];

    [v9 setScrollEnabled:0];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 headerFont];
    [v9 setFont:v8];

    [v9 setDelegate:self];
    [(CKDetailsController *)self setLocationSharingTextView:v9];
    v3 = v9;
  }
}

- (void)initializeBusinessInfoViewIfNecessary
{
  v3 = [(CKDetailsController *)self businessInfoView];
  if (!v3)
  {
    v4 = [[CKBusinessInfoView alloc] initWithLayoutType:1];
    [(CKBusinessInfoView *)v4 setDelegate:self];
    [(CKDetailsController *)self setBusinessInfoView:v4];
    v3 = v4;
  }
}

- (id)groupCountCellForIndexPath:(id)a3
{
  v4 = a3;
  if ([(CKDetailsController *)self shouldShowGroupCount])
  {
    v5 = [(CKDetailsController *)self tableView];
    v6 = objc_opt_class();
    v7 = +[CKDetailsGroupCountCell reuseIdentifier];
    [v5 registerClass:v6 forCellReuseIdentifier:v7];

    v8 = [(CKDetailsController *)self tableView];
    v9 = +[CKDetailsGroupCountCell reuseIdentifier];
    v10 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:v4];

    v11 = MEMORY[0x1E696AEC0];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"DETAILS_VIEW_GROUP_COUNT_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [(CKDetailsController *)self contactsManager];
    v15 = [v14 contactsViewModels];
    v16 = [v11 localizedStringWithFormat:v13, objc_msgSend(v15, "count")];

    v17 = [MEMORY[0x1E69DC668] sharedApplication];
    v18 = [v17 userInterfaceLayoutDirection];

    if (v18 == 1)
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
    v25 = [v24 headerFont];
    [v22 addAttribute:v23 value:v25 range:{0, v21}];

    v26 = *MEMORY[0x1E69DB650];
    v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v22 addAttribute:v26 value:v27 range:{0, v21}];

    v28 = [v10 textLabel];
    [v28 setAttributedText:v22];

    v29 = [v10 topSeperator];
    [v29 setHidden:0];

    v30 = [v10 bottomSeperator];
    [v30 setHidden:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contactsManagerCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(CKDetailsController *)self visibleContactsRows];
  v7 = [(CKDetailsController *)self isContactsSectionCollapsible];
  v8 = [(CKDetailsController *)self shouldAddToVisibleContactRowCountForTUConversation];
  if (v5 == [(CKDetailsController *)self rowForTUConversationCell])
  {
    v9 = [(CKDetailsController *)self tuConversationCellForIndexPath:v4];
LABEL_5:
    v13 = v9;
    goto LABEL_6;
  }

  if (v5 == [(CKDetailsController *)self rowForShowMoreContactsCell])
  {
    v10 = [(CKDetailsController *)self tableView];
    v11 = objc_opt_class();
    v12 = +[CKDetailsGroupHeaderCell reuseIdentifier];
    [v10 registerClass:v11 forCellReuseIdentifier:v12];

    v9 = [(CKDetailsController *)self groupHeaderCellForIndexPath:v4];
    goto LABEL_5;
  }

  if (v5 >= v6 + v7 + v8)
  {
    if (v5 == [(CKDetailsController *)self rowForAddMemberCell])
    {
      v30 = [(CKDetailsController *)self tableView];
      v31 = +[CKDetailsAddMemberCell cellClass];
      v32 = +[CKDetailsAddMemberCell reuseIdentifier];
      [v30 registerClass:v31 forCellReuseIdentifier:v32];

      v33 = [(CKDetailsController *)self tableView];
      v34 = +[CKDetailsAddMemberCell reuseIdentifier];
      v13 = [v33 dequeueReusableCellWithIdentifier:v34 forIndexPath:v4];

      [v13 setEnabled:{-[CKDetailsController shouldEnableAddContactButton](self, "shouldEnableAddContactButton")}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15 = [(CKDetailsController *)self tableView];
    v16 = +[CKDetailsContactsTableViewCell cellClass];
    v17 = +[CKDetailsContactsTableViewCell reuseIdentifier];
    [v15 registerClass:v16 forCellReuseIdentifier:v17];

    v18 = [(CKDetailsController *)self tableView];
    v19 = +[CKDetailsContactsTableViewCell reuseIdentifier];
    v13 = [v18 dequeueReusableCellWithIdentifier:v19 forIndexPath:v4];

    v20 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v4];
    v21 = [(CKDetailsController *)self contactsManager];
    v22 = [v21 contactsViewModels];
    v23 = [v22 objectAtIndex:v20];

    [v13 configureWithViewModel:v23];
    v24 = [v13 contactAvatarView];
    [v24 setDelegate:self];
    [v24 setShowsContactOnTap:0];
    v25 = [MEMORY[0x1E69DC938] currentDevice];
    v26 = [v25 _supportsForceTouch];

    if (v26)
    {
      [v24 setForcePressView:v13];
      [v24 setUserInteractionEnabled:1];
      [v24 setShowsActionsOnForcePress:1];
    }

    v27 = [(CKDetailsController *)self conversation];
    v28 = [v27 shouldHaveRoundRectAvatar];

    [v24 setStyle:v28];
    [v13 setDelegate:self];
    if ([v4 row] == 1 && -[CKDetailsController hasTUConversation](self, "hasTUConversation") && !-[CKDetailsController isContactsSectionCollapsed](self, "isContactsSectionCollapsed"))
    {
      v29 = [v13 topSeperator];
      [v29 setHidden:1];
    }
  }

LABEL_6:
  [(CKDetailsController *)self _configureSeparatorForContactCell:v13 indexPath:v4];

  return v13;
}

- (id)tuConversationCellForIndexPath:(id)a3
{
  v4 = [(CKDetailsController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CKDetailsTUConversationCell reuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [CKDetailsTUConversationCell alloc];
  v8 = +[CKDetailsTUConversationCell reuseIdentifier];
  v9 = [(CKDetailsController *)self tuConversation];
  v10 = [(CKDetailsTUConversationCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:v9];

  return v10;
}

- (id)groupHeaderCellForIndexPath:(id)a3
{
  v4 = [CKDetailsGroupHeaderCell alloc];
  v5 = +[CKDetailsGroupHeaderCell reuseIdentifier];
  v6 = [(CKDetailsController *)self contactsManager];
  v7 = [v6 recipientsSortedByIsContact:1 alphabetically:0];
  v8 = [(CKDetailsGroupHeaderCell *)v4 initWithStyle:0 reuseIdentifier:v5 participants:v7];

  [(CKDetailsGroupHeaderCell *)v8 configureCellIconForCollapsedState:[(CKDetailsController *)self isContactsSectionCollapsed]];

  return v8;
}

- (id)indexPathForCell:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = self;
  v5 = [(CKDetailsController *)self tableView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 contentView];
        v14 = [v13 subviews];
        v15 = [v14 containsObject:v4];

        if (v15)
        {
          v16 = [(CKDetailsController *)v19 tableView];
          v17 = [v16 indexPathForCell:v12];

          v9 = v17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contactsCellDidTapPhoneButton:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v20 = [v5 indexPathForCell:v4];

  v6 = [(CKDetailsController *)self conversation];
  LODWORD(v5) = [v6 isBusinessConversation];

  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69A5A78]);
    v8 = [MEMORY[0x1E69A5CA0] iMessageService];
    v9 = [v7 initWithService:v8];

    v10 = [(CKDetailsController *)self conversation];
    v11 = [v10 businessHandle];
    v12 = [v11 brand];
    v13 = [v12 primaryPhoneNumber];

    if ([v13 length])
    {
      v14 = [objc_alloc(MEMORY[0x1E69A5B90]) initWithAccount:v9 ID:v13 alreadyCanonical:1];
      v15 = [[CKEntity alloc] initWithIMHandle:v14];
      v16 = [(CKDetailsController *)self contactsManager];
      [v16 startCommunicationForEntity:v15 action:2 address:0];
    }
  }

  else
  {
    v17 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v20];
    v18 = [(CKDetailsController *)self contactsManager];
    v19 = [v18 contactsViewModels];
    v9 = [v19 objectAtIndex:v17];

    v13 = [(CKDetailsController *)self contactsManager];
    [v13 startCommunicationForViewModel:v9 action:2 address:0];
  }
}

- (void)contactsCellDidTapMessagesButton:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v11 = [v5 indexPathForCell:v4];

  v6 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v11];
  v7 = [(CKDetailsController *)self contactsManager];
  v8 = [v7 contactsViewModels];
  v9 = [v8 objectAtIndex:v6];

  v10 = [(CKDetailsController *)self contactsManager];
  [v10 startCommunicationForViewModel:v9 action:4 address:0];
}

- (void)contactsCellDidTapFaceTimeVideoButton:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v11 = [v5 indexPathForCell:v4];

  v6 = [(CKDetailsController *)self adjustedViewModelIndexForIndexPath:v11];
  v7 = [(CKDetailsController *)self contactsManager];
  v8 = [v7 contactsViewModels];
  v9 = [v8 objectAtIndex:v6];

  v10 = [(CKDetailsController *)self contactsManager];
  [v10 startCommunicationForViewModel:v9 action:0 address:0];
}

- (void)contactsCell:(id)a3 didHoverWithState:(int64_t)a4
{
  v9 = a3;
  v6 = [(CKDetailsController *)self tableView];
  v7 = [v6 visibleCells];
  if ([v7 containsObject:v9])
  {
    v8 = [(CKDetailsController *)self shouldShowGroupCount];

    if (v8)
    {
      if (a4 == 3)
      {
        [v9 _hideAllButtons];
      }

      else if (a4 == 1)
      {
        [v9 _updateVisibleButtons];
      }
    }
  }

  else
  {
  }
}

- (void)groupCellDidTapFaceTimeVideoButton:(id)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKDetailsController *)self contactsManager];
    [v4 beginFacetimeCallWithVideo:1];
  }
}

- (void)groupCellDidTapPhoneButton:(id)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKDetailsController *)self contactsManager];
    [v4 beginFacetimeCallWithVideo:0];
  }
}

- (void)_configureSeparatorForContactCell:(id)a3 indexPath:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [v6 section];

  v9 = [(CKDetailsController *)self tableView];
  v10 = [(CKDetailsController *)self tableView:v9 numberOfRowsInSection:v8];

  if (v7)
  {
    if (v7 < 1)
    {
      goto LABEL_9;
    }

    if (v7 == [(CKDetailsController *)self rowForFirstContactCell])
    {
      v11 = [v23 topSeperator];
      [v11 setHidden:1];
    }

    v12 = [v23 bottomSeperator];
    [v12 setHidden:1];

    if (!CKIsRunningInMacCatalyst())
    {
      [v23 setIndentTopSeperator:1];
      goto LABEL_9;
    }
  }

  else
  {
    [v23 setIndentBottomSeperator:1];
    v13 = [v23 bottomSeperator];
    [v13 setHidden:0];

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_9;
    }
  }

  v14 = [v23 topSeperator];
  [v14 setHidden:1];

LABEL_9:
  if ([(CKDetailsController *)self hasTUConversation])
  {
    if (v7 == [(CKDetailsController *)self rowForFirstContactCell])
    {
      v15 = [v23 topSeperator];
      [v15 setHidden:1];
    }

    if (v7 == [(CKDetailsController *)self rowForShowMoreContactsCell])
    {
      v16 = [v23 topSeperator];
      [v16 setHidden:1];

      v17 = [v23 bottomSeperator];
      [v17 setHidden:0];

      [v23 setIndentBottomSeperator:1];
    }
  }

  v18 = v10 - 1;
  if (v7 == v10 - 2)
  {
    v19 = [v23 bottomSeperator];
    [v19 setHidden:0];

    [v23 setIndentBottomSeperator:1];
  }

  v20 = v23;
  if (v7 == v18)
  {
    v21 = [v23 bottomSeperator];
    [v21 setHidden:1];

    if (!v7)
    {
      [v23 setIndentTopSeperator:0];
    }

    v22 = [v23 topSeperator];
    [v22 setHidden:1];

    v20 = v23;
  }
}

- (void)_configureSeparatorForOptionCell:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [a4 row] == 0;
  v7 = [v5 topSeperator];
  [v7 setHidden:v6];

  v8 = [v5 bottomSeperator];

  [v8 setHidden:1];
}

- (id)switchSubscriptionCellForIndexPathRow:(int64_t)a3
{
  v4 = [(CKDetailsController *)self simSwitchCell];
  if (+[CKSenderIdentity fromPickerEnabled])
  {
    v5 = [(CKDetailsController *)self simSwitcherMenu];
    [v4 setMenu:v5];

    v6 = [(CKDetailsController *)self labelForChat];
    if ([v6 length])
    {
      v7 = [v4 textLabel];
      v8 = [(CKDetailsController *)self simCellText:v6];
      [v7 setText:v8];
    }
  }

  v9 = [v4 bottomSeperator];
  [v9 setHidden:1];

  v10 = [v4 topSeperator];
  [v10 setHidden:1];

  return v4;
}

- (id)locationShareCellForIndexPathRow:(int64_t)a3
{
  v5 = [(CKDetailsController *)self conversation];
  v6 = [_TtC7ChatKit33CKDetailsControllerLocationHelper cellTypeForRow:a3 conversation:v5 isFMFEnabled:[(CKDetailsController *)self fmfEnabled] shouldShowFMFView:[(CKDetailsController *)self shouldShowFMFView]];

  if (v6 == 2)
  {
    v7 = [(CKDetailsController *)self _tableViewCellForSendCurrentLocation];
  }

  else if (v6 == 1)
  {
    v7 = [(CKDetailsController *)self _tableViewCellForSharingLocation:[(CKDetailsController *)self allRecipientsAlreadyFollowingLocation]];
  }

  else if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CKDetailsController *)self _tableViewCellForSendOrRequestLocation];
  }

  return v7;
}

- (id)_tableViewCellForSendOrRequestLocation
{
  v3 = [(CKDetailsController *)self locationSendOrRequestCell];
  v4 = [v3 textLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 detailsTextColor];
  [v4 setTextColor:v7];

  v8 = [(CKDetailsController *)self conversation];
  v9 = [v8 chat];
  v10 = [v9 supportsCapabilities:4096];

  v11 = [v3 textLabel];
  [v11 setEnabled:v10];

  [v3 setUserInteractionEnabled:v10];

  return v3;
}

- (id)_tableViewCellForSendCurrentLocation
{
  v3 = [(CKDetailsController *)self sendCurrentLocationCell];
  v4 = [v3 textLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 detailsTextColor];
  [v4 setTextColor:v7];

  v8 = [(CKDetailsController *)self conversation];
  v9 = [v8 chat];
  v10 = [v9 supportsCapabilities:4096];

  v11 = [v3 textLabel];
  [v11 setEnabled:v10];

  [v3 setUserInteractionEnabled:v10];

  return v3;
}

- (id)_tableViewCellForSharingLocation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsController *)self locationShareCell];
  [v5 setShowOfferTimeRemaining:0];
  v6 = [(CKDetailsController *)self isGroupChat]|| [(CKDetailsController *)self shouldShowFMFView];
  v7 = [v5 topSeperator];
  [v7 setHidden:v6];

  [v5 setIndentTopSeperator:1];
  if (v3)
  {
    [v5 setMenu:0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [v5 textLabel];
    [v10 setText:v9];

    v11 = [MEMORY[0x1E69DC888] systemRedColor];
    v12 = [v5 textLabel];
    [v12 setTextColor:v11];

    v13 = [(CKDetailsController *)self _conversationOfferTimeExpiration];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:v14];
      v16 = v15;

      v17 = [MEMORY[0x1E695DF00] distantFuture];
      v18 = [v13 isEqual:v17];

      if ((v18 & 1) == 0 && v16 > 0.0)
      {
        [v5 setShowOfferTimeRemaining:1];
        [v5 setOfferTimeRemaining:v16];
      }
    }
  }

  else
  {
    v19 = [(CKDetailsController *)self locationShareMenu];
    [v5 setMenu:v19];

    v20 = CKFrameworkBundle();
    v21 = [v20 localizedStringForKey:@"SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v22 = [v5 textLabel];
    [v22 setText:v21];

    v13 = +[CKUIBehavior sharedBehaviors];
    v23 = [v13 theme];
    v24 = [v23 detailsTextColor];
    v25 = [v5 textLabel];
    [v25 setTextColor:v24];
  }

  if (CKIsRunningInMacCatalyst())
  {
    if ([(CKDetailsController *)self allRecipientsAlreadyFollowingLocation])
    {
      v26 = [v5 bottomSeperator];
      [v26 setHidden:1];
    }

    [v5 setIndentBottomSeperator:1];
  }

  else
  {
    v27 = [v5 bottomSeperator];
    [v27 setHidden:1];
  }

  v28 = [(CKDetailsController *)self conversation];
  v29 = [v28 chat];
  v30 = [v29 supportsCapabilities:4096];

  if (v30)
  {
    v31 = [(CKDetailsController *)self fmfRestricted]^ 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v5 textLabel];
  [v32 setEnabled:v31];

  [v5 setUserInteractionEnabled:v31];

  return v5;
}

- (id)_conversationOfferTimeExpiration
{
  v3 = [MEMORY[0x1E69A5B70] sharedInstance];
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];
  v6 = [v3 timedOfferExpirationForChat:v5];

  return v6;
}

- (CKDetailsSIMCell)simCell
{
  simCell = self->_simCell;
  if (!simCell)
  {
    v4 = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsSIMCell reuseIdentifier];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

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
    v4 = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsLocationShareCell identifier];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

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
    v4 = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKDetailsSIMCell reuseIdentifier];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

    if (v3)
    {
      v7 = [(CKDetailsController *)self conversation];
      v8 = [v7 chat];
      v9 = [v8 lastAddressedSIMID];

      v10 = [(CKDetailsController *)self conversation];
      v11 = [v10 chat];
      v12 = [v11 lastAddressedHandleID];

      v13 = [[CKSenderIdentity alloc] initWithHandle:v12 simID:v9];
      v14 = [(CKSenderIdentity *)v13 sanitizingForSubscriptionsOnlyBasedOnPolicy];

      if (v14)
      {
        v15 = [CKDetailsSIMCell alloc];
        v16 = +[CKDetailsSIMCell reuseIdentifier];
        v17 = [v14 label];
        v18 = [v14 shortName];
        v19 = [(CKDetailsSIMCell *)v15 initWithStyle:0 reuseIdentifier:v16 simLabelText:v17 badgeText:v18];
        simSwitchCell = self->_simSwitchCell;
        self->_simSwitchCell = v19;
      }

      else
      {
        v25 = [MEMORY[0x1E69A7F68] sharedInstance];
        v16 = [v25 ctSubscriptionInfo];

        v17 = [v16 preferredOrDefaultSubscriptionContext];
        v18 = [v17 label];
        simSwitchCell = CKLocalizedShortNameForContext(v17);
        v26 = v12;
        v27 = v9;
        v28 = [CKDetailsSIMCell alloc];
        v29 = +[CKDetailsSIMCell reuseIdentifier];
        v30 = v28;
        v9 = v27;
        v12 = v26;
        v14 = 0;
        v31 = [(CKDetailsSIMCell *)v30 initWithStyle:0 reuseIdentifier:v29 simLabelText:v18 badgeText:simSwitchCell];
        v32 = self->_simSwitchCell;
        self->_simSwitchCell = v31;
      }

      v33 = [(CKDetailsSIMCell *)self->_simSwitchCell textLabel];
      v34 = CKFrameworkBundle();
      v35 = [v34 localizedStringForKey:@"DETAILS_VIEW_SWITCH_SIM_CELL" value:&stru_1F04268F8 table:@"ChatKit"];
      [v33 setText:v35];

      v36 = [(CKDetailsCell *)self->_simSwitchCell topSeperator];
      [v36 setHidden:1];

      v37 = [(CKDetailsCell *)self->_simSwitchCell bottomSeperator];
      [v37 setHidden:1];
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
  v3 = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKTranscriptDetailsResizableCell identifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [CKTranscriptDetailsResizableCell alloc];
  v7 = +[CKTranscriptDetailsResizableCell identifier];
  v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
  locationSendOrRequestCell = self->_locationSendOrRequestCell;
  self->_locationSendOrRequestCell = v8;

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v7) = [v10 isWaldoEnabled];

  v11 = [(CKTranscriptDetailsResizableCell *)self->_locationSendOrRequestCell textLabel];
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
  [v11 setText:v15];

  v16 = [(CKDetailsCell *)self->_locationSendOrRequestCell topSeperator];
  [v16 setHidden:1];

  v17 = [(CKDetailsCell *)self->_locationSendOrRequestCell bottomSeperator];
  [v17 setHidden:1];

  v18 = self->_locationSendOrRequestCell;

  return v18;
}

- (CKTranscriptDetailsResizableCell)sendCurrentLocationCell
{
  v3 = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKTranscriptDetailsResizableCell identifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [CKTranscriptDetailsResizableCell alloc];
  v7 = +[CKTranscriptDetailsResizableCell identifier];
  v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
  sendCurrentLocationCell = self->_sendCurrentLocationCell;
  self->_sendCurrentLocationCell = v8;

  v10 = [(CKTranscriptDetailsResizableCell *)self->_sendCurrentLocationCell textLabel];
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"SEND_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v10 setText:v12];

  v13 = [(CKDetailsCell *)self->_sendCurrentLocationCell topSeperator];
  [v13 setHidden:1];

  v14 = [(CKDetailsCell *)self->_sendCurrentLocationCell bottomSeperator];
  [v14 setHidden:1];

  v15 = self->_sendCurrentLocationCell;

  return v15;
}

- (CKTranscriptDetailsResizableCell)locationStartShareCell
{
  if (!self->_locationStartShareCell)
  {
    v3 = [(CKDetailsController *)self tableView];
    v4 = objc_opt_class();
    v5 = +[CKTranscriptDetailsResizableCell identifier];
    [v3 registerClass:v4 forCellReuseIdentifier:v5];

    v6 = [CKTranscriptDetailsResizableCell alloc];
    v7 = +[CKTranscriptDetailsResizableCell identifier];
    v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
    locationStartShareCell = self->_locationStartShareCell;
    self->_locationStartShareCell = v8;

    v10 = [(CKTranscriptDetailsResizableCell *)self->_locationStartShareCell textLabel];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"SHARE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v10 setText:v12];

    [(CKDetailsCell *)self->_locationStartShareCell setIndentTopSeperator:1];
    v13 = CKIsRunningInMacCatalyst();
    v14 = self->_locationStartShareCell;
    if (v13)
    {
      [(CKDetailsCell *)v14 setIndentBottomSeperator:1];
    }

    else
    {
      v15 = [(CKDetailsCell *)v14 bottomSeperator];
      [v15 setHidden:1];
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
    v4 = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKTranscriptDetailsResizableCell identifier];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

    v7 = [(CKDetailsCell *)self->_locationStartShareCell bottomSeperator];
    [v7 setHidden:1];

    v8 = [CKTranscriptDetailsResizableCell alloc];
    v9 = +[CKTranscriptDetailsResizableCell identifier];
    v10 = [(CKTranscriptDetailsResizableCell *)v8 initWithStyle:0 reuseIdentifier:v9];
    v11 = self->_openInContactsCell;
    self->_openInContactsCell = v10;

    v12 = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"OPEN_IN_CONTACTS" value:&stru_1F04268F8 table:@"ChatKit"];
    [v12 setText:v14];

    v15 = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 appTintColor];
    [v15 setTextColor:v18];

    v19 = [(CKTranscriptDetailsResizableCell *)self->_openInContactsCell textLabel];
    [v19 setEnabled:1];

    openInContactsCell = self->_openInContactsCell;
  }

  return openInContactsCell;
}

- (CKDetailsCell)changeGroupNamePhotoCell
{
  if (!self->_changeGroupNamePhotoCell && !CKIsRunningInMacCatalyst())
  {
    v3 = [(CKDetailsController *)self tableView];
    v4 = objc_opt_class();
    v5 = +[CKTranscriptDetailsResizableCell identifier];
    [v3 registerClass:v4 forCellReuseIdentifier:v5];

    v6 = [CKTranscriptDetailsResizableCell alloc];
    v7 = +[CKTranscriptDetailsResizableCell identifier];
    v8 = [(CKTranscriptDetailsResizableCell *)v6 initWithStyle:0 reuseIdentifier:v7];
    changeGroupNamePhotoCell = self->_changeGroupNamePhotoCell;
    self->_changeGroupNamePhotoCell = v8;

    v10 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"CHANGE_GROUP_NAME_AND_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
    [v10 setText:v12];

    v13 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v16 = [v15 appTintColor];
    [v13 setTextColor:v16];

    v17 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell textLabel];
    [v17 setEnabled:1];

    v18 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell bottomSeperator];
    [v18 setHidden:1];

    v19 = [(CKDetailsCell *)self->_changeGroupNamePhotoCell topSeperator];
    [v19 setHidden:1];
  }

  v20 = self->_changeGroupNamePhotoCell;

  return v20;
}

- (int64_t)_targetToggleIndexForOptionRow:(unint64_t)a3
{
  if (a3 == 2)
  {
    v7 = [(CKDetailsController *)self conversation];
    v8 = [v7 chat];
    v9 = [v8 supportsSendingReadReceipts];

    if (v9)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (a3 == 1)
  {
    v3 = [(CKDetailsController *)self conversation];
    v4 = [v3 chat];
    v5 = [v4 supportsSendingReadReceipts];

    return v5;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_optionRowForIndexPath:(id)a3
{
  result = [a3 row];
  if (result)
  {
    if (result != 2)
    {
      if (result != 1)
      {
        return -1;
      }

      v5 = [(CKDetailsController *)self conversation];
      v6 = [v5 chat];
      v7 = [v6 supportsSendingReadReceipts];

      if (v7)
      {
        return 1;
      }
    }

    v8 = [(CKDetailsController *)self canShareFocusStatus];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      return 2;
    }

    return -1;
  }

  return result;
}

- (unint64_t)_translationRowForIndexPath:(id)a3
{
  v3 = [a3 row];
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

- (id)chatOptionsCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsChatOptionsCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(CKDetailsController *)self _optionRowForIndexPath:v4];
  switch(v8)
  {
    case 2uLL:
      v13 = [(CKDetailsController *)self canShareFocusStatus];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v9 = [(CKDetailsController *)self createShareFocusStatusCellAtIndexPath:v4];
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1uLL:
      v10 = [(CKDetailsController *)self conversation];
      v11 = [v10 chat];
      v12 = [v11 supportsSendingReadReceipts];

      if (v12)
      {
        v9 = [(CKDetailsController *)self createReadReceiptsCellAtIndexPath:v4];
        goto LABEL_9;
      }

LABEL_10:
      v15 = 0;
      goto LABEL_11;
    case 0uLL:
      v9 = [(CKDetailsController *)self createDNDCellAtIndexPath:v4];
LABEL_9:
      v15 = v9;
LABEL_11:
      [(CKDetailsController *)self _configureSeparatorForOptionCell:v15 indexPath:v4];
      goto LABEL_13;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)translationCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsChatOptionsCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsLanguageSelectionCell reuseIdentifier];
  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [(CKDetailsController *)self _translationRowForIndexPath:v4];
  if (v11 == 1)
  {
    v13 = [(CKDetailsController *)self conversation];
    v14 = [v13 translationLanguageCode];

    if (v14)
    {
      v12 = [(CKDetailsController *)self createTranslationLanguageCellForLanguageCode:v14 atIndexPath:v4];
    }

    else
    {
      v12 = 0;
    }

    v15 = [v12 gestureRecognizers];
    v16 = [v15 count];

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

    v12 = [(CKDetailsController *)self createTranslationSwitchCellAtIndexPath:v4];
  }

  [(CKDetailsController *)self _configureSeparatorForOptionCell:v12 indexPath:v4];
LABEL_12:

  return v12;
}

- (id)createDNDCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6 forIndexPath:v4];

  v8 = [v7 controlSwitch];
  v9 = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setText:v11];

  [v9 setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  [v8 addTarget:self action:sel_doNotDisturbValueChange_ forControlEvents:4096];
  [v8 setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  v12 = [(CKDetailsController *)self conversation];
  [v8 setOn:objc_msgSend(v12 animated:{"isMuted"), 0}];

  v13 = 0;
  if (![(CKDetailsController *)self shouldShowEnhancedGroupFeatures])
  {
    v14 = [(CKDetailsController *)self conversation];
    v15 = [v14 chat];
    v16 = [v15 supportsCapabilities:256];

    v13 = v16 ^ 1;
  }

  if (CKIsRunningInMacCatalyst() && (v13 & 1) == 0)
  {
    v17 = [v7 bottomSeperator];
    [v17 setHidden:0];

    [v7 setIndentBottomSeperator:1];
  }

  return v7;
}

- (id)createTranslationSwitchCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6 forIndexPath:v4];

  v8 = [v7 controlSwitch];
  v9 = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"AUTOMATICALLY_TRANSLATE_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setText:v11];

  [v9 setEnabled:{-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") ^ 1}];
  [v8 addTarget:self action:sel_automaticallyTranslateValueChange_ forControlEvents:4096];
  v12 = [(CKDetailsController *)self conversation];
  [v8 setOn:objc_msgSend(v12 animated:{"shouldAutomaticallyTranslate"), 0}];

  v13 = 0;
  if (![(CKDetailsController *)self shouldShowEnhancedGroupFeatures])
  {
    v14 = [(CKDetailsController *)self conversation];
    v15 = [v14 chat];
    v16 = [v15 supportsCapabilities:256];

    v13 = v16 ^ 1;
  }

  if (CKIsRunningInMacCatalyst() && (v13 & 1) == 0)
  {
    v17 = [v7 bottomSeperator];
    [v17 setHidden:0];

    [v7 setIndentBottomSeperator:1];
  }

  return v7;
}

- (id)createTranslationLanguageCellForLanguageCode:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKDetailsController *)self tableView];
  v9 = +[CKDetailsLanguageSelectionCell reuseIdentifier];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [v12 localizedStringForLanguageCode:v7];

  v14 = [v11 localizedStringWithFormat:@"Translate From (%@)", v13];
  v15 = [v10 textLabel];
  [v15 setText:v14];

  [v10 setAccessoryType:1];

  return v10;
}

- (id)createReadReceiptsCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6 forIndexPath:v4];

  v8 = [v7 controlSwitch];
  v9 = [v7 textLabel];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"READ_RECEIPTS" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setText:v11];

  [v8 addTarget:self action:sel_readReceiptsSwitchValueChanged_ forEvents:4096];
  v12 = [(CKDetailsController *)self conversation];
  [v8 setOn:objc_msgSend(v12 animated:{"shouldSendReadReceipts"), 0}];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)createShareFocusStatusCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = +[CKDetailsChatOptionsCell reuseIdentifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6 forIndexPath:v4];

  v8 = [v7 controlSwitch];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"SHARE_FOCUS_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];

  v11 = [v7 textLabel];
  [v11 setText:v10];
  [v8 addTarget:self action:sel_shareFocusStatusSwitchValueChanged_ forEvents:4096];
  v12 = [(CKDetailsController *)self isSharingFocusStatus];
  [v8 setEnabled:v12 != 0];

  v13 = [(CKDetailsController *)self isSharingFocusStatus];
  [v8 setOn:objc_msgSend(v13 animated:{"BOOLValue"), 0}];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)sharedWithYouCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[CKDetailsSharedWithYouCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(CKDetailsController *)self tableView];
  v9 = +[CKDetailsSharedWithYouCell reuseIdentifier];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:v4];

  v11 = [v10 controlSwitch];
  v12 = [v10 textLabel];
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"MARK_AS_AUTO_DONATING" value:&stru_1F04268F8 table:@"ChatKit"];
  [v12 setText:v14];

  v15 = [v10 topSeperator];
  [v15 setHidden:1];

  v16 = [v10 bottomSeperator];
  [v16 setHidden:1];

  [v11 addTarget:self action:sel_autoDonationSwitchValueChanged_ forEvents:4096];
  v17 = [(CKDetailsController *)self conversation];
  v18 = [v17 chat];
  [v11 setOn:objc_msgSend(v18 animated:{"isAutoDonatingMessages"), 0}];

  return v10;
}

- (id)editConversationCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self tableView];
  v6 = +[CKTranscriptDetailsResizableCell identifier];
  v7 = [v5 dequeueReusableCellWithIdentifier:v6 forIndexPath:v4];

  v8 = [v7 textLabel];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"EDIT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v8 setText:v10];

  v11 = [v7 textLabel];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 appTintColor];
  [v11 setTextColor:v14];

  [v7 setIndentTopSeperator:1];

  return v7;
}

- (id)childViewController:(id)a3 cellForIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKDetailsController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[CKDetailsChildViewControllerCell reuseIdentifier];
  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [(CKDetailsController *)self tableView];
  v12 = +[CKDetailsChildViewControllerCell reuseIdentifier];
  v13 = [v11 dequeueReusableCellWithIdentifier:v12 forIndexPath:v6];

  v14 = [(CKDetailsController *)self traitCollection];
  if ([v14 horizontalSizeClass] == 1)
  {
    v15 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 orientation] - 1;

    if (v17 < 2)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v14 = [(CKDetailsController *)self traitCollection];
    v15 = [v14 verticalSizeClass] != 1;
  }

LABEL_7:
  [v13 setShouldUseLayoutMargins:v15];
  v18 = [v7 view];

  [v13 setChildViewControllerView:v18];

  return v13;
}

- (void)initializeSearchController
{
  v3 = [(CKDetailsController *)self searchViewController];

  if (!v3)
  {
    v4 = [CKDetailsSearchViewController alloc];
    v5 = +[CKSpotlightQueryUtilities detailsSearchControllers];
    v12 = [(CKDetailsSearchViewController *)v4 initWithSearchControllerClasses:v5];

    [(CKSearchViewController *)v12 setMode:3];
    v6 = [(CKDetailsController *)self conversation];
    [(CKDetailsSearchViewController *)v12 setConversation:v6];

    [(CKDetailsSearchViewController *)v12 setDetailsDelegate:self];
    [(CKDetailsController *)self setSearchViewController:v12];
    v7 = [(CKDetailsController *)self searchViewController];
    [v7 willMoveToParentViewController:self];

    v8 = [(CKDetailsController *)self searchViewController];
    [(CKDetailsController *)self addChildViewController:v8];

    v9 = [(CKDetailsController *)self searchViewController];
    [v9 searchWithText:&stru_1F04268F8];

    if (CKIsRunningInMacCatalyst())
    {
      v10 = [(CKDetailsController *)self searchViewController];
      v11 = [v10 view];
      [v11 layoutIfNeeded];
    }
  }
}

- (id)searchAttachmentViewControllerCellForIndexPath:(id)a3
{
  v4 = a3;
  [(CKDetailsController *)self initializeSearchController];
  v5 = [(CKDetailsController *)self searchViewController];
  v6 = [(CKDetailsController *)self childViewController:v5 cellForIndexPath:v4];

  [v6 setShouldUseLayoutMargins:0];
  v7 = [v6 topSeperator];
  [v7 setHidden:1];

  v8 = [v6 bottomSeperator];
  [v8 setHidden:1];

  return v6;
}

- (void)detailsSearchControllerContentDidChange:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "DISMISSED SIM switch menu", buf, 2u);
    }
  }

  v6 = [(CKDetailsController *)self simSwitchCell];
  v7 = [v6 button];
  v8 = [v7 contextMenuInteraction];
  [v8 dismissMenu];

  v9 = [(CKDetailsController *)self tableView];
  [v9 reloadData];

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

- (void)detailsSearchController:(id)a3 requestsPushOfSearchController:(id)a4
{
  v5 = a4;
  v6 = [(CKDetailsController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)setupContactsManager
{
  v3 = [CKDetailsContactsManager alloc];
  v4 = [(CKDetailsController *)self conversation];
  v5 = [(CKDetailsContactsManager *)v3 initWithConversation:v4 delegate:self];

  [(CKDetailsController *)self setContactsManager:v5];
  [(CKDetailsController *)self setShouldCollapseContactsSection:1];
}

- (void)handleTapOnChromeAvatar:(id)a3
{
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 recipients];
  v7 = [v5 firstObject];

  v6 = [(CKDetailsController *)self view];
  [(CKDetailsController *)self showContactCardForEntity:v7 fromView:v6];
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(CKDetailsController *)self tableView];
  v8 = [(CKDetailsController *)self tableView:v7 numberOfRowsInSection:3];

  if (v8)
  {
    v9 = [(CKDetailsController *)self tableView];
    v10 = [v9 indexPathForRowAtPoint:{x, y}];

    if ([v10 section] == 3 && (v11 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMF")) != 0)
    {
      v12 = [v11 alloc];
      v13 = [(CKDetailsController *)self conversation];
      v14 = [v13 chat];
      v15 = [v14 allSiblingFMFHandles];
      v16 = [v12 initWithDelegate:self handles:v15];

      v17 = +[CKUIBehavior sharedBehaviors];
      v18 = [v17 theme];
      v19 = [v18 appTintColor];
      [v16 setAnnotationTintColor:v19];

      v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMF"))
    {
      v9 = [v8 visibleViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [v8 visibleViewController];
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
        v13 = [(CKDetailsController *)self navigationController];
        [v13 showViewController:v11 sender:0];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12 = [(CKDetailsController *)self traitCollection];
  v5 = [v12 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v5)
  {
    v6 = [(CKDetailsController *)self simSwitchCell];

    if (!v6)
    {
      return;
    }

    v7 = [(CKDetailsController *)self simSwitchCell];
    v8 = [v7 button];
    v9 = [v8 contextMenuInteraction];
    [v9 dismissMenu];

    v12 = [(CKDetailsController *)self simSwitchCell];
    v10 = [v12 button];
    v11 = [(CKDetailsController *)self simSwitcherMenu];
    [v10 setMenu:v11];
  }
}

- (id)selectedSenderIdentity
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 lastAddressedSIMID];

  v6 = [(CKDetailsController *)self conversation];
  v7 = [v6 chat];
  v8 = [v7 lastAddressedHandleID];

  v9 = [[CKSenderIdentity alloc] initWithHandle:v8 simID:v5];

  return v9;
}

- (id)simSwitcherMenu
{
  if ([(CKDetailsController *)self shouldShowSIMTypeSection])
  {
    v3 = [(CKDetailsController *)self selectedSenderIdentity];
    v4 = [v3 sanitizingForSubscriptionsOnlyBasedOnPolicy];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__CKDetailsController_simSwitcherMenu__block_invoke;
    v8[3] = &unk_1E72EF9F8;
    v5 = v4;
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

- (void)handleActiveDeviceChanged:(id)a3
{
  v4 = [(CKDetailsController *)self locationSharingTextView];
  [v4 setDelegate:0];

  [(CKDetailsController *)self setLocationSharingTextView:0];
  v5 = [(CKDetailsController *)self tableView];
  [v5 reloadData];
}

- (void)updateLocationStringCellWithString:(id)a3
{
  locationStringCell = self->_locationStringCell;
  if (locationStringCell)
  {
    [(CKDetailsLocationStringCell *)locationStringCell setLocationString:a3];
  }
}

- (BOOL)shouldShowExpanseFeatures
{
  v2 = MEMORY[0x1E69A5B78];
  v3 = [(CKDetailsController *)self tuConversation];
  LOBYTE(v2) = [v2 activeTUConversationHasActivitySession:v3];

  return v2;
}

- (int64_t)adjustedViewModelIndexForIndexPath:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CKDetailsController *)self conversation];
    v7 = [v6 chat];
    v8 = [v7 isBusinessChat];

    v5 = (v8 & 1) - 1;
  }

  v9 = v5 - [(CKDetailsController *)self hasTUConversation];
  v10 = [v4 row];

  return v9 + v10;
}

- (BOOL)shouldShowBusinessInfoFooter
{
  v3 = [(CKDetailsController *)self conversation];
  if ([v3 isBusinessConversation])
  {
    v4 = [(CKDetailsController *)self conversation];
    v5 = [v4 isMakoConversation] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldShowKTSection
{
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6 && self->_ktChatState - 15 >= 2)
  {
    v8 = [(CKDetailsController *)self conversation];
    v9 = [v8 sendingService];
    v10 = MEMORY[0x1E69A79A0];
    v11 = [v9 supportsCapability:*MEMORY[0x1E69A79A0]];
    if ((v11 & 1) != 0 || (-[CKDetailsController conversation](self, "conversation"), v2 = objc_claimAutoreleasedReturnValue(), [v2 chat], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "hasMessageWithServiceCapability:", *v10)))
    {
      v12 = [(CKDetailsController *)self conversation];
      v13 = [v12 chat];
      if ([v13 isBusinessChat])
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticIncomingTranslationEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 supportsAutomaticTranslation];

  return v6;
}

- (void)expandContactsSection
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsController *)self tableView];
  v4 = [v3 numberOfRowsInSection:6];

  if (v4 && [(CKDetailsController *)self isContactsSectionCollapsible]&& [(CKDetailsController *)self isContactsSectionCollapsed])
  {
    [(CKDetailsController *)self setIsContactsSectionCollapsed:0];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(CKDetailsController *)self contactsManager];
    v7 = [v6 contactsViewModels];
    v8 = [v7 count];

    v9 = v8 + [(CKDetailsController *)self shouldShowAddMemberCell];
    v10 = v9 + [(CKDetailsController *)self hasTUConversation];
    v11 = [(CKDetailsController *)self hasTUConversation];
    if (v10 > v11)
    {
      v12 = v11;
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

    v16 = [(CKDetailsController *)self tableView];
    [v16 beginUpdates];

    v17 = [(CKDetailsController *)self tableView];
    [v17 insertRowsAtIndexPaths:v5 withRowAnimation:0];

    v18 = [(CKDetailsController *)self tableView];
    v21[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:0];

    v20 = [(CKDetailsController *)self tableView];
    [v20 endUpdates];
  }
}

- (void)collapseContactsSection
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKDetailsController *)self shouldShowAddMemberCell];
  [(CKDetailsController *)self setIsContactsSectionCollapsed:1];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(CKDetailsController *)self contactsManager];
  v6 = [v5 contactsViewModels];
  v7 = [v6 count];

  v8 = v7 + v3 + [(CKDetailsController *)self hasTUConversation];
  v9 = [(CKDetailsController *)self hasTUConversation];
  if (v8 > v9)
  {
    v10 = v9;
    do
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:6];
      [v4 addObject:v11];

      ++v10;
    }

    while (v10 < v8);
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:6];
  v13 = [(CKDetailsController *)self tableView];
  [v13 beginUpdates];

  v14 = [(CKDetailsController *)self tableView];
  [v14 deleteRowsAtIndexPaths:v4 withRowAnimation:0];

  v15 = [(CKDetailsController *)self tableView];
  v18[0] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v15 reloadRowsAtIndexPaths:v16 withRowAnimation:0];

  v17 = [(CKDetailsController *)self tableView];
  [v17 endUpdates];
}

- (void)presentGroupRecipientSelectionControllerAtIndexPath:(id)a3
{
  v35 = a3;
  v4 = [(CKDetailsController *)self conversation];
  v5 = [[CKGroupRecipientSelectionController alloc] initWithConversation:v4];
  [(CKDetailsController *)self setAddRecipientsController:v5];
  if (CKIsRunningInMacCatalyst())
  {
    v6 = [(CKDetailsController *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:v35];

    v8 = +[CKUIBehavior sharedBehaviors];
    -[CKGroupRecipientSelectionController setModalPresentationStyle:](v5, "setModalPresentationStyle:", [v8 groupRecipientSelectionPresentationStyle]);

    v9 = [(CKGroupRecipientSelectionController *)v5 popoverPresentationController];
    [v9 setSourceView:v7];

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

    v16 = [(CKDetailsController *)self groupNavigationController];
    v17 = [v16 navigationBar];
    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 theme];
    [v17 setBarStyle:{objc_msgSend(v19, "navBarStyle")}];

    if ([v4 hasDisplayName])
    {
      v7 = [v4 displayName];
    }

    else
    {
      v20 = CKFrameworkBundle();
      v7 = [v20 localizedStringForKey:@"MADRID_GROUP" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    [(CKGroupRecipientSelectionController *)v5 setTitle:v7];
    v21 = [(CKDetailsController *)self groupNavigationController];
    v22 = +[CKUIBehavior sharedBehaviors];
    [v21 setModalPresentationStyle:{objc_msgSend(v22, "groupRecipientSelectionPresentationStyle")}];

    v23 = [MEMORY[0x1E69DC938] currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if ((v24 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v25 = [(CKDetailsController *)self view];
      [v25 frame];
      v27 = v26;
      v28 = [(CKDetailsController *)self view];
      [v28 frame];
      [(CKDetailsController *)self setPreferredContentSize:v27, v29];
    }

    v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancelAction_];
    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDoneAction_];
    v32 = [(CKGroupRecipientSelectionController *)v5 navigationItem];
    [v32 setLeftBarButtonItem:v30];

    v33 = [(CKGroupRecipientSelectionController *)v5 navigationItem];
    [v33 setRightBarButtonItem:v31];

    [(CKGroupRecipientSelectionController *)v5 setCancelButton:v30];
    [(CKGroupRecipientSelectionController *)v5 setDoneButton:v31];
    v34 = [(CKDetailsController *)self groupNavigationController];
    [(CKDetailsController *)self presentViewController:v34 animated:1 completion:0];
  }
}

- (void)handleDoneAction:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self addRecipientsController];
  v6 = [v5 toField];
  v7 = [v6 recipients];

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = [(CKDetailsController *)self conversation];
  v11 = [v10 recipientStrings];
  v12 = [v9 initWithArray:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CKDetailsController_handleDoneAction___block_invoke;
  v15[3] = &unk_1E72EFA20;
  v15[4] = self;
  v16 = v8;
  v17 = v12;
  v13 = v12;
  v14 = v8;
  [v7 enumerateObjectsUsingBlock:v15];
  [(CKDetailsController *)self _handleAddingHandles:v14 allRecipientsAddresses:v13 sender:v4];
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

- (void)handleCancelAction:(id)a3
{
  v4 = [(CKDetailsController *)self addRecipientsController];
  [v4 stopCheckingRecipientAvailabilityAndRemoveAllTimers];
  [v4 invalidateOutstandingIDStatusRequests];
  [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
  [(CKDetailsController *)self setAddRecipientsController:0];
}

- (void)toggleHideAlertsWithReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 isMuted];

  [(CKDetailsController *)self setHideAlerts:v6 ^ 1u reload:v3];
}

- (void)toggleAutomaticallyTranslate
{
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 shouldAutomaticallyTranslate];

  [(CKDetailsController *)self setShouldAutomaticallyTranslate:v4 ^ 1u];
}

- (void)setShouldAutomaticallyTranslate:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Set shouldAutomaticallyTranslate to %@", &v15, 0xCu);
    }
  }

  v7 = [(CKDetailsController *)self conversation];
  v8 = [v7 translationLanguageCode];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  if (v9)
  {
    [(CKDetailsController *)self showLanguagePicker];
  }

  else
  {
    v10 = [(CKDetailsController *)self conversation];
    v11 = [(CKDetailsController *)self conversation];
    v12 = [v11 translationLanguageCode];
    [v10 setAutomaticallyTranslate:v3 languageCode:v12 userLanguageCode:0];

    v13 = [(CKDetailsController *)self tableView];
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:10];
    [v13 reloadSections:v14 withRowAnimation:5];
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

- (void)setHideAlerts:(BOOL)a3 reload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Set hideAlerts to %@", buf, 0xCu);
    }
  }

  v9 = [(CKDetailsController *)self conversation];
  v10 = v9;
  if (v5)
  {
    v11 = [MEMORY[0x1E695DF00] distantFuture];
    [v10 setMutedUntilDate:v11];
  }

  else
  {
    [v9 unmute];
  }

  if (v4)
  {
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:9];
    v13 = [(CKDetailsController *)self tableView];
    v15 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:0];
  }
}

- (void)toggleSendReadReceiptsWithReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 shouldSendReadReceipts];

  [(CKDetailsController *)self setSendReadReceipts:v6 ^ 1u reload:v3];
}

- (void)setSendReadReceipts:(BOOL)a3 reload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(CKDetailsController *)self conversation];
  v8 = [v7 chat];
  v9 = [v8 isSMS];

  if ((v9 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"NO";
        if (v5)
        {
          v11 = @"YES";
        }

        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Set sendReadReceipts to %@", buf, 0xCu);
      }
    }

    v12 = [(CKDetailsController *)self conversation];
    [v12 setSendReadReceipts:v5];

    if (v4)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:9];
      v14 = [(CKDetailsController *)self tableView];
      v16 = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [v14 reloadRowsAtIndexPaths:v15 withRowAnimation:0];
    }
  }
}

- (void)toggleShareFocusStatusWithReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsController *)self isSharingFocusStatus];
  v6 = [v5 BOOLValue];

  [(CKDetailsController *)self setShareFocusStatus:v6 ^ 1u reload:v3];
}

- (void)setShareFocusStatus:(BOOL)a3 reload:(BOOL)a4
{
  v5 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v7 = [(CKDetailsController *)self canShareFocusStatus];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke;
    aBlock[3] = &unk_1E72EFA70;
    v31 = a4;
    aBlock[4] = self;
    objc_copyWeak(&v30, &location);
    v9 = _Block_copy(aBlock);
    v10 = [(CKDetailsController *)self conversation];
    v11 = [v10 chat];

    v12 = [v11 recipient];
    v13 = [v12 normalizedID];

    if (v5)
    {
      v14 = [v11 lastAddressedHandleID];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v34 = v13;
          v35 = 2112;
          v36 = v14;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "User requested begin sharing focus status with handleID: %@ fromHandleID: %@", buf, 0x16u);
        }
      }

      v16 = [MEMORY[0x1E69A7F08] sharedInstance];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_585;
      v24[3] = &unk_1E72EFA98;
      v25 = v13;
      v17 = v14;
      v26 = v17;
      objc_copyWeak(&v28, &location);
      v27 = v9;
      [v16 manuallyShareFocusStatusWithHandleID:v25 fromHandleID:v17 completion:v24];

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
          v34 = v13;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "User requested end sharing focus status with handleID: %@", buf, 0xCu);
        }
      }

      v19 = [MEMORY[0x1E69A7F08] sharedInstance];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50__CKDetailsController_setShareFocusStatus_reload___block_invoke_587;
      v20[3] = &unk_1E72EFAC0;
      v21 = v13;
      objc_copyWeak(&v23, &location);
      v22 = v9;
      [v19 manuallyRemoveSharingOfFocusStatusWithHandleID:v21 completion:v20];

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

- (void)toggleShowInSharedWithYouWithReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 isAutoDonatingMessages];

  [(CKDetailsController *)self setShowInSharedWithYou:v7 ^ 1u reload:v3];
}

- (void)setShowInSharedWithYou:(BOOL)a3 reload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(CKDetailsController *)self shouldShowSharedWithYouFeatures])
  {
    v7 = [(CKDetailsController *)self conversation];
    v8 = [v7 chat];
    [v8 sendAutoDonationUpdate:v5];

    if (v4)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:8];
      v10 = [(CKDetailsController *)self tableView];
      v12[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:0];
    }
  }
}

- (void)adjustContentOffsetReloadingSharedAssetsContentViewCell
{
  v2 = [(CKDetailsController *)self tableView];
  [v2 reloadData];
}

- (void)contactsManagerViewModelsDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = [v4 contactsViewModels];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
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

  v10 = [(CKDetailsController *)self simSwitchCell];
  v11 = [v10 button];
  v12 = [v11 contextMenuInteraction];
  [v12 dismissMenu];

  v13 = [(CKDetailsController *)self tableView];
  [v13 reloadData];
}

- (void)_hideAllContactCellButtons
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(CKDetailsController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(CKDetailsController *)self tableView];
        v11 = [v10 indexPathForCell:v9];

        if ([v11 section] == 6)
        {
          if (CKIsRunningInMacCatalyst())
          {
            v12 = [(CKDetailsController *)self conversation];
            v13 = [v12 isGroupConversation];

            if (v13)
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
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_presentRemoveRecipientSheetForHandle:(id)a3 fromView:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v35 = a4;
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"REMOVE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [v6 fullName];
  v11 = [v7 stringWithFormat:v9, v10];

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v13 = [v12 userInterfaceLayoutDirection];

  if (v13 == 1)
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
  v37 = v6;
  v19 = v6;
  v20 = [CKAlertAction actionWithTitle:v18 style:2 handler:v36];
  [v16 addAction:v20];

  v21 = CKFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v23 = [CKAlertAction actionWithTitle:v22 style:1 handler:0];
  [v16 addAction:v23];

  v24 = [v16 popoverPresentationController];
  [v35 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v24 setSourceRect:{v26, v28, v30, v32}];
  v33 = [v16 popoverPresentationController];
  v34 = [(CKDetailsController *)self view];
  [v33 setSourceView:v34];

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

- (void)presentLeaveActionSheetFromView:(id)a3
{
  v4 = a3;
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

  v16 = self;
  v17 = [(CKDetailsController *)v16 detailsControllerDelegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  v18 = v16;
  if ((v13 & 1) == 0 || ((-[CKDetailsController detailsControllerDelegate](v16, "detailsControllerDelegate"), v19 = objc_claimAutoreleasedReturnValue(), [v19 presentingViewControllerForAlertsFromDetailsController:v16], v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0) ? (v22 = v20) : (v22 = v16), v18 = v22, v16, v21, v19, v18 == v16))
  {
    v23 = [v11 popoverPresentationController];
    [v4 frame];
    [v23 setSourceRect:?];

    v24 = [v11 popoverPresentationController];
    v25 = [(CKDetailsController *)v16 view];
    [v24 setSourceView:v25];
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

- (void)presentDeleteAndBlockActionSheetFromView:(id)a3
{
  v4 = a3;
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

  v18 = self;
  v19 = [(CKDetailsController *)v18 detailsControllerDelegate];
  LOBYTE(v15) = objc_opt_respondsToSelector();

  v20 = v18;
  if ((v15 & 1) == 0 || ((-[CKDetailsController detailsControllerDelegate](v18, "detailsControllerDelegate"), v21 = objc_claimAutoreleasedReturnValue(), [v21 presentingViewControllerForAlertsFromDetailsController:v18], v22 = objc_claimAutoreleasedReturnValue(), (v23 = v22) != 0) ? (v24 = v22) : (v24 = v18), v20 = v24, v18, v23, v21, v20 == v18))
  {
    v25 = [v13 popoverPresentationController];
    [v4 frame];
    [v25 setSourceRect:?];

    v26 = [v13 popoverPresentationController];
    v27 = [(CKDetailsController *)v18 view];
    [v26 setSourceView:v27];
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

- (void)detailsAddGroupNameView:(id)a3 didCommitGroupName:(id)a4
{
  v5 = a4;
  v6 = [(CKDetailsController *)self conversation];
  [v6 setDisplayName:v5];
}

- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v7 = a4;
  if ([a5 isEqualToString:*MEMORY[0x1E695D070]])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v7;
    obj = v7;
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
            v17 = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v27];

            if (v19)
            {
              v20 = [v14 value];
              v17 = [v20 stringValue];
            }

            else
            {
              v17 = 0;
            }
          }

          v21 = IMStripFormattingFromAddress();

          v22 = [v29 preferredHandle];
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

    v7 = v26;
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
    v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v4 = [v3 isIntroductionsEnabled];

    if (v4)
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
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CKDetailsController *)self groupNameCell];
  v5 = [v4 groupNameView];
  [v5 commitGroupName];

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
    v5 = [(CKDetailsController *)self conversation];
    v6 = [v5 chat];
    v7 = [v6 allSiblingFMFHandles];
    v12 = [v4 initWithDelegate:self handles:v7];

    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 appTintColor];
    [v12 setAnnotationTintColor:v10];

    v11 = [(CKDetailsController *)self navigationController];
    [v11 pushViewController:v12 animated:1];
  }
}

- (id)fmfHandlesFromIMHandles:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
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
        v10 = [MEMORY[0x1E69A5B70] sharedInstance];
        v11 = [v10 findMyLocationForHandleOrSibling:v9];
        v12 = [v11 fmfLocation];

        if (v12)
        {
          v13 = [v12 location];

          if (v13)
          {
            v14 = [v12 handle];
LABEL_10:
            [v4 addObject:v14];
            goto LABEL_22;
          }
        }

        v14 = [v9 findMyHandle];
        v15 = [MEMORY[0x1E69A5B70] sharedInstance];
        v16 = [v15 findMyHandleIsSharingLocationWithMe:v14];

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v17 = [v9 findMySiblingHandles];
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              v23 = [MEMORY[0x1E69A5B70] sharedInstance];
              v24 = [v23 findMyHandleIsSharingLocationWithMe:v22];

              if (v24)
              {
                v4 = v27;
                [v27 addObject:v22];

                goto LABEL_21;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
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

- (id)annotationImageForHandle:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 participants];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v7;
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
        v12 = [v11 siblings];
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v27 + 1) + 8 * j);
              v18 = [v17 ID];
              v19 = [v4 identifier];
              v20 = [v18 isEqualToIgnoringCase:v19];

              if (v20)
              {
                v22 = [[CKEntity alloc] initWithIMHandle:v17];
                v21 = [(CKEntity *)v22 locationMapViewContactImage];

                v8 = v26;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

      v21 = 0;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  return v21;
}

- (id)annotationContactForHandle:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 participants];

  v8 = [MEMORY[0x1E695D188] descriptorForRequiredKeysIncludingImage:1];
  v38[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v7;
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
        v14 = [v13 findMySiblingHandles];
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v28 + 1) + 8 * j) identifier];
              v20 = [v4 identifier];
              v21 = [v19 isEqualToIgnoringCase:v20];

              if (v21)
              {
                v9 = v25;
                v22 = [v13 cnContactWithKeys:v25];

                v10 = v27;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
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

- (void)fmfMapViewController:(id)a3 didSelectHandle:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Map participant selected: %@", &v11, 0xCu);
    }
  }

  v9 = [(CKDetailsController *)self contactsManager];
  v10 = [v9 contacts];
  [v10 enumerateObjectsUsingBlock:&__block_literal_global_632_0];
}

- (void)fmfMapViewController:(id)a3 didDeselectHandle:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v6;
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
    v7 = [(UITextView *)self->_locationSharingTextView textContainer];
    [v7 setLineFragmentPadding:0.0];

    [(UITextView *)self->_locationSharingTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_locationSharingTextView setBackgroundColor:0];
    v8 = self->_locationSharingTextView;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:v9];

    [(UITextView *)self->_locationSharingTextView setScrollEnabled:0];
    v10 = self->_locationSharingTextView;
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 headerFont];
    [(UITextView *)v10 setFont:v12];

    v13 = [MEMORY[0x1E69A5B70] sharedInstance];
    v14 = [v13 activeDevice];

    v15 = MEMORY[0x1E696AEC0];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"LOCATION_CURRENTLY_SHARING_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = v14;
    v18 = [v14 deviceName];
    v19 = [v15 stringWithFormat:v17, v18];

    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection];

    if (v21 == 1)
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
    v34 = [v33 headerFont];
    [v31 addAttribute:v32 value:v34 range:{0, v30}];

    v35 = *MEMORY[0x1E69DB650];
    v36 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v31 addAttribute:v35 value:v36 range:{0, v30}];

    if (![(CKDetailsController *)self fmfRestricted]&& !CKIsRunningInMacCatalyst())
    {
      v42 = +[CKUIBehavior sharedBehaviors];
      v37 = [v42 theme];
      v38 = [v37 appTintColor];
      [v31 addAttribute:v35 value:v38 range:{v44, v43}];

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
    v7 = [(UITextView *)self->_expanseActivityTextView textContainer];
    [v7 setLineFragmentPadding:0.0];

    [(UITextView *)self->_expanseActivityTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_expanseActivityTextView setBackgroundColor:0];
    v8 = self->_expanseActivityTextView;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:v9];

    [(UITextView *)self->_expanseActivityTextView setScrollEnabled:0];
    v10 = self->_expanseActivityTextView;
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 headerFont];
    [(UITextView *)v10 setFont:v12];

    v13 = self->_expanseActivityTextView;
    v14 = [(CKDetailsController *)self tuConversation];
    v15 = [CKTUConversationViewUtilities activityDescriptionStringForTUConversation:v14];
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
    v7 = [(UITextView *)self->_sharedWithYouFooterTextView textContainer];
    [v7 setLineFragmentPadding:0.0];

    [(UITextView *)self->_sharedWithYouFooterTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_sharedWithYouFooterTextView setBackgroundColor:0];
    v8 = self->_sharedWithYouFooterTextView;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v8 setTextColor:v9];

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
    v18 = [v17 headerFont];
    v28 = [CKUIBehavior font:v18 adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC28]];

    [v16 addAttribute:*MEMORY[0x1E69DB648] value:v28 range:{0, v15}];
    v19 = *MEMORY[0x1E69DB650];
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v16 addAttribute:v19 value:v20 range:{0, v15}];

    v21 = +[CKUIBehavior sharedBehaviors];
    v22 = [v21 theme];
    v23 = [v22 linkColor];
    [v16 addAttribute:v19 value:v23 range:{v27, v14}];

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

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  if (v8 == 1)
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
  v2 = [(CKDetailsController *)self downloadButtonState];
  v3 = @"DOWNLOAD";
  if (v2 == 2)
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

- (void)businessInfoView:(id)a3 infoButtonTapped:(id)a4
{
  v9 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:{*MEMORY[0x1E69B7D78], a4}];
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [(CKDetailsController *)self detailsControllerDelegate];
    v6 = [v5 detailsControllerBusinessPrivacyInfoPresentingViewController:self];

    if (v6 && v6 != self)
    {
      v7 = [(CKDetailsController *)self detailsControllerDelegate];
      [v7 dismissDetailsNavigationController];
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = self;
  }

  [v9 setPresentingViewController:v8];
  [v9 present];
}

+ (void)saveGroupPhotoDataAndUpdateParticipants:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Saving the group photo and updating the recipients.", v12, 2u);
    }
  }

  if (v6)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 im_randomTemporaryFileURLWithFileName:*MEMORY[0x1E69A7018]];
    v11 = [v10 path];

    [v6 writeToFile:v11 atomically:1];
  }

  else
  {
    v11 = 0;
  }

  [a1 updateParticipantsWithGroupPhotoAtPath:v11 forConversation:v7];
}

+ (void)updateParticipantsWithGroupPhotoAtPath:(id)a3 forConversation:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Should update group photo at path: %@", &v15, 0xCu);
    }
  }

  if (!v5)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
  v9 = [MEMORY[0x1E69A5B80] sharedInstance];
  v10 = [v9 createNewOutgoingGroupPhotoTransferWithLocalFileURL:v8];

  v11 = [MEMORY[0x1E69A5B80] sharedInstance];
  v12 = [v11 transferForGUID:v10];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v13 registerTransferWithDaemon:v10];

LABEL_13:
    v8 = [v6 chat];
    [v8 sendGroupPhotoUpdate:v10];
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

- (void)userDidTapDownloadForAttachmentsFooterView:(id)a3
{
  if ([(CKDetailsController *)self downloadButtonState]!= 2)
  {
    [(CKDetailsController *)self setDownloadButtonState:2];
    v5 = [(CKDetailsController *)self conversation];
    v4 = [v5 chat];
    [v4 downloadPurgedAttachments];
  }
}

- (unint64_t)_purgedAttachmentCount
{
  if (!self->_didPerformPurgedAttachmentsCheck)
  {
    v3 = [(CKDetailsController *)self conversation];
    v4 = [v3 chat];
    v5 = [v4 countOfAttachmentsNotCachedLocally];
    self->_undownloadedPhotoAttachmentCount = [v5 integerValue];

    self->_didPerformPurgedAttachmentsCheck = 1;
  }

  return self->_undownloadedPhotoAttachmentCount;
}

- (void)setDownloadButtonState:(unint64_t)a3
{
  self->_downloadButtonState = a3;
  if (a3 - 1 <= 1)
  {
    [(CKDetailsController *)self _updateDownloadFooterView];
  }
}

- (void)_updateDownloadButtonStateIfNeeded
{
  v3 = [(CKDetailsController *)self downloadButtonState];
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CKDetailsController__updateDownloadButtonStateIfNeeded__block_invoke;
  v6[3] = &unk_1E72EFB08;
  v6[4] = self;
  v6[5] = v3;
  [v5 fetchIsCurrentlyDownloadingPurgedAttachments:v6];
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

- (void)_batchDownloadNotificationFired:(id)a3
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
  v4 = [(CKDetailsController *)self _generateGroupImagePickerViewController];
  v5 = [v3 initWithRootViewController:v4];

  [(CKDetailsController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)_generateGroupImagePickerViewController
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 conversationVisualIdentityWithKeys:v4 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

  v7 = [MEMORY[0x1E695D1E0] imagePickerForGroupIdentity:v6];
  [v7 setDelegate:self];
  [v7 setPresenterDelegate:self];

  return v7;
}

- (void)groupIdentityHeaderViewController:(id)a3 didDismissSharedProfileBannerWithUpdatedContact:(id)a4 forAction:(unint64_t)a5
{
  [(CKDetailsController *)self setShouldForceGroupPhotoHeaderReload:1, a4, a5];
  v6 = [(CKDetailsController *)self tableView];
  [v6 reloadData];
}

- (void)_dismissIdentityPicker:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v35[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];

  v13 = [(CKDetailsController *)self conversation];
  v14 = [v13 conversationVisualIdentityWithKeys:v12 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];

  v15 = [v9 thumbnailImageData];
  v16 = [v14 groupPhoto];
  v17 = [v15 isEqualToData:v16];

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

    v19 = [(CKDetailsController *)self conversation];
    v20 = [v19 chat];
    v21 = [v20 isGroupChat];

    if (v21)
    {
      v22 = [v9 thumbnailImageData];
      v23 = [(CKDetailsController *)self conversation];
      [CKDetailsController saveGroupPhotoDataAndUpdateParticipants:v22 forConversation:v23];
    }

    v24 = [(CKDetailsController *)self conversation];
    [v24 setNeedsUpdatedGroupPhotoForVisualIdentity];
  }

  v25 = [v9 name];
  v26 = [(CKDetailsController *)self conversation];
  v27 = [v26 displayName];
  v28 = [v25 isEqualToString:v27];

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

    v30 = [(CKDetailsController *)self conversation];
    v31 = [v9 name];
    [v30 setDisplayName:v31];

    v32 = [(CKDetailsController *)self conversation];
    [v32 setNeedsUpdatedGroupNameForVisualIdentity];
  }

  v33 = [(CKDetailsController *)self conversation];
  [v33 setGroupIdentityUpdateHandleID:0];

  [(CKDetailsController *)self _dismissIdentityPicker:v8];
}

- (void)_handleAddingHandles:(id)a3 allRecipientsAddresses:(id)a4 sender:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CKDetailsController *)self addRecipientsController];
  v10 = [(CKDetailsController *)self conversation];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CKDetailsController__handleAddingHandles_allRecipientsAddresses_sender___block_invoke;
  v12[3] = &unk_1E72EFB30;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v9 handleAddingHandles:v8 conversation:v10 viewController:self allRecipientAddresses:v11 completion:v12];
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

- (BOOL)_atLeastOneEmailPresentInHandles:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) ID];
        IsEmail = IMStringIsEmail();

        if (IsEmail)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_chatAllowedByScreenTimeChanged:(id)a3
{
  v5 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 allowedByScreenTime] & 1) == 0)
  {
    if (CKIsRunningInMacCatalyst())
    {
      v4 = [(CKDetailsController *)self detailsControllerDelegate];
      [v4 dismissDetailsNavigationController];
    }

    else
    {
      [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_handleMultiWayStateChange:(id)a3
{
  v4 = [a3 userInfo];
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [v5 existingConversationForTelephonyConversationUUID:v13];

  v7 = [v6 UUID];
  v8 = [(CKDetailsController *)self tuConversation];
  v9 = [v8 UUID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(CKDetailsController *)self expanseActivityTextView];
    [v11 removeFromSuperview];

    [(CKDetailsController *)self setExpanseActivityTextView:0];
    v12 = [(CKDetailsController *)self tableView];
    [v12 reloadData];
  }
}

- (void)updateContactsHeaderVerificationState
{
  groupPhotoHeaderViewController = self->_groupPhotoHeaderViewController;
  v3 = [(CKDetailsController *)self shouldShowKeyTransparency];

  [(CNGroupIdentityHeaderViewController *)groupPhotoHeaderViewController setShouldShowStaticKeyBadge:v3];
}

- (id)ktCellForRow:(int64_t)a3
{
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 isGroupChat];

  v8 = 0;
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
    v8 = [(CKDetailsController *)self ktEnhancedProtectionStateCell];
    goto LABEL_20;
  }

  if (ktChatState > 3)
  {
    if ((ktChatState - 5) >= 4 && ktChatState != 4)
    {
      goto LABEL_20;
    }

LABEL_4:
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = [(CKDetailsController *)self ktVerifyConversationCell];
    goto LABEL_20;
  }

  if ((ktChatState - 1) < 2)
  {
    goto LABEL_18;
  }

  if (!ktChatState)
  {
    v8 = [(CKDetailsController *)self ktEnableEnhancedProtectionCell];
    goto LABEL_20;
  }

  if (ktChatState == 3)
  {
LABEL_17:
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:

  return v8;
}

- (CKEnableEnhancedProtectionCell)ktEnableEnhancedProtectionCell
{
  ktEnableEnhancedProtectionCell = self->_ktEnableEnhancedProtectionCell;
  if (!ktEnableEnhancedProtectionCell)
  {
    v4 = [(CKDetailsController *)self tableView];
    v5 = objc_opt_class();
    v6 = +[CKEnableEnhancedProtectionCell reuseIdentifier];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

    v7 = [CKEnableEnhancedProtectionCell alloc];
    v8 = +[CKEnableEnhancedProtectionCell reuseIdentifier];
    v9 = [(CKDetailsController *)self tuConversation];
    v10 = [(CKEnableEnhancedProtectionCell *)v7 initWithStyle:0 reuseIdentifier:v8 conversation:v9 shouldShowMacHeader:1];
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
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];

  v50 = [CKKTDetailsViewUtilities verifiedHandlesInChat:v5];
  v6 = [v5 participants];
  v7 = [v6 count];

  if (v7 < 2)
  {
    v13 = [v5 participants];
    v14 = [v13 count];

    if (v14 == 1)
    {
      v15 = [v5 participants];
      v16 = [v15 firstObject];
      v52 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v18 = [CKKTDetailsViewUtilities namesFromHandles:v17 shouldUseShortFormat:0];
      v12 = [v18 firstObject];
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

      v12 = &stru_1F04268F8;
    }
  }

  else
  {
    v8 = [(CKDetailsController *)self conversation];
    v9 = [v8 displayName];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(CKDetailsController *)self conversation];
      v12 = [v11 displayName];
    }

    else
    {
      v20 = [v5 participants];
      v21 = [v20 firstObject];

      v53[0] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      v23 = [CKKTDetailsViewUtilities namesFromHandles:v22 shouldUseShortFormat:1];
      v24 = [v23 firstObject];

      v25 = MEMORY[0x1E696AEC0];
      v26 = CKFrameworkBundle();
      v27 = [v26 localizedStringForKey:@"X_AND_N_PEOPLE" value:&stru_1F04268F8 table:@"ChatKitFormats-Key-Transparency"];
      v28 = [v5 participants];
      v29 = [v25 localizedStringWithFormat:v27, v24, objc_msgSend(v28, "count") - 1];

      v30 = [MEMORY[0x1E69DC668] sharedApplication];
      v31 = [v30 userInterfaceLayoutDirection] == 1;

      if (v31)
      {
        v32 = @"\u200F";
      }

      else
      {
        v32 = @"\u200E";
      }

      v12 = [(__CFString *)v32 stringByAppendingString:v29];
    }
  }

  ktEnhancedProtectionStateCell = self->_ktEnhancedProtectionStateCell;
  if (ktEnhancedProtectionStateCell)
  {
    [(CKKTEnhancedProtectionStatusCell *)ktEnhancedProtectionStateCell setEnhancedProtectionStatusCellState:ktEnhancedProtectionStatusCellState];
    v34 = self->_ktEnhancedProtectionStateCell;
    v35 = [v5 participants];
    -[CKKTEnhancedProtectionStatusCell setHandlesInChatCount:](v34, "setHandlesInChatCount:", [v35 count]);

    -[CKKTEnhancedProtectionStatusCell setVerifiedHandlesCount:](self->_ktEnhancedProtectionStateCell, "setVerifiedHandlesCount:", [v50 count]);
    [(CKKTEnhancedProtectionStatusCell *)self->_ktEnhancedProtectionStateCell setTitleString:v12];
    [(CKKTEnhancedProtectionStatusCell *)self->_ktEnhancedProtectionStateCell updateTitleAndStatusButtonConfiguration];
  }

  else
  {
    v36 = [(CKDetailsController *)self tableView];
    v37 = objc_opt_class();
    v38 = +[CKKTEnhancedProtectionStatusCell reuseIdentifier];
    [v36 registerClass:v37 forCellReuseIdentifier:v38];

    v39 = [CKKTEnhancedProtectionStatusCell alloc];
    v40 = +[CKKTEnhancedProtectionStatusCell reuseIdentifier];
    v41 = [(CKDetailsController *)self conversation];
    v42 = [v41 chat];
    v43 = [v42 participants];
    LOBYTE(v49) = 1;
    v44 = [(CKKTEnhancedProtectionStatusCell *)v39 initWithStyle:0 reuseIdentifier:v40 state:ktEnhancedProtectionStatusCellState delegate:self handlesInChat:v43 verifiedHandles:v50 titleString:v12 shouldShowMacHeader:v49];
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
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];
  v6 = +[CKKTDetailsViewUtilities numberOfRowsInKTSectionForStatus:isGroupChat:](CKKTDetailsViewUtilities, "numberOfRowsInKTSectionForStatus:isGroupChat:", ktChatState, [v5 isGroupChat]);

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
    v8 = [(CKDetailsController *)self tableView];
    v9 = objc_opt_class();
    v10 = +[CKKTVerifyConversationTableViewCell reuseIdentifier];
    [v8 registerClass:v9 forCellReuseIdentifier:v10];

    v11 = [CKKTVerifyConversationTableViewCell alloc];
    v12 = +[CKKTVerifyConversationTableViewCell reuseIdentifier];
    v13 = [(CKKTVerifyConversationTableViewCell *)v11 initWithStyle:0 reuseIdentifier:v12 numberOfRowsInSection:v6 shouldShowMacHeader:v6 == 1 ktStatus:[(CKDetailsController *)self ktChatState]];
    v14 = self->_ktVerifyConversationCell;
    self->_ktVerifyConversationCell = v13;
  }

  v15 = self->_ktVerifyConversationCell;
  v16 = [(CKDetailsController *)self conversation];
  v17 = [v16 chat];
  -[CKKTVerifyConversationTableViewCell setEnabled:](v15, "setEnabled:", [v17 hasKnownParticipants]);

  v18 = self->_ktVerifyConversationCell;

  return v18;
}

- (id)ktSecurityFooterView
{
  v3 = [(CKDetailsController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKKTSecurityHeaderFooterView footerReuseIdentifier];
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  v6 = +[CKKTSecurityHeaderFooterView footerReuseIdentifier];
  v7 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:v6];

  v8 = [(CKDetailsController *)self ktSecurityFooterTextView];
  [v7 setKtSecurityTextView:v8];
  [v7 setIsAccessibilityElement:1];
  [v7 setAccessibilityIdentifier:@"KeyTransparencyDetailsFooter"];
  v9 = [v8 attributedText];
  v10 = [v9 string];
  [v7 setAccessibilityLabel:v10];

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
    v9 = [v8 theme];
    v10 = [v9 linkColor];
    v18[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(UITextView *)self->_ktSecurityFooterTextView setLinkTextAttributes:v11];

    [(UITextView *)self->_ktSecurityFooterTextView setDelegate:self];
    v12 = [(CKDetailsController *)self tableView];
    [v12 _marginWidth];
    v14 = v13;

    [(UITextView *)self->_ktSecurityFooterTextView setTextContainerInset:0.0, v14, 0.0, v14];
  }

  v15 = self->_ktSecurityFooterTextView;

  return v15;
}

- (double)calculateHeightForKTFooter
{
  v3 = [(CKDetailsController *)self tableView];
  [v3 bounds];
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
    v14 = [(CKDetailsController *)self tableView];
    [v14 _sectionContentInset];
    v16 = v15;
    v18 = v17;

    v19 = [(CKDetailsController *)self ktSecurityFooterTextView];
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    [v19 sizeThatFits:{CGRectGetWidth(v24) - (v16 + v18), 1.79769313e308}];
    v21 = v20;

    +[CKKTSecurityHeaderFooterView footerVerticalPadding];
    return v21 + v22 + v22 + 16.0;
  }

  return result;
}

- (void)keyTransparencyConversationViewControllerDidComplete:(id)a3
{
  v4 = [(CKDetailsController *)self conversation];
  v5 = [v4 chat];
  [v5 fetchKTStatus];

  [(CKDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)showKTContactVerificationUI
{
  v3 = [(CKDetailsController *)self conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:v3 fromViewController:self];
}

- (void)keyTransparencyDetailsStatusCellDidSelectIgnoreFailures:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CKDetailsController *)self conversation];
  v6 = [v5 chat];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79__CKDetailsController_keyTransparencyDetailsStatusCellDidSelectIgnoreFailures___block_invoke;
  v12 = &unk_1E72EC460;
  objc_copyWeak(&v13, &location);
  v7 = [CKKeyTransparencyErrorUtilities ktClearWarningAlertControllerForChat:v6 confirmationHandler:&v9];

  if (!CKIsRunningInMacCatalyst() && [CKUtilities isIpad:v9])
  {
    v8 = [v7 popoverPresentationController];
    [v8 setSourceView:v4];
    [v4 bounds];
    [v8 setSourceRect:?];
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

- (id)simCellText:(id)a3
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"DETAILS_VIEW_SWITCH_SIM_CELL" value:&stru_1F04268F8 table:@"ChatKit"];

  return v4;
}

- (void)switchToSenderIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  [v5 switchToSenderIdentity:v4];
}

- (BOOL)shouldShowSIMTypeSection
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 supportsHandleSelection];

  return v3;
}

- (BOOL)isGroupChat
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 isGroupChat];

  return v4;
}

- (BOOL)canLeaveConversation
{
  v2 = [(CKDetailsController *)self conversation];
  if ([v2 hasLeft])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 canLeave];
  }

  return v3;
}

- (BOOL)shouldShowGroupCount
{
  v3 = CKIsRunningInMacCatalyst();
  if (v3)
  {
    v4 = [(CKDetailsController *)self conversation];
    v5 = [v4 isGroupConversation];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)shouldShowSharedWithYouFeatures
{
  v2 = [(CKDetailsController *)self conversation];
  v3 = [v2 chat];
  v4 = [v3 shouldShowAutoDonationAction];

  return v4;
}

- (BOOL)shouldShowEnhancedGroupFeatures
{
  v2 = [(CKDetailsController *)self conversation];
  if ([v2 isGroupConversation])
  {
    v3 = [v2 supportsMutatingGroupMembers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)conversationHasLeft
{
  v2 = [(CKDetailsController *)self conversation];
  if ([v2 isGroupConversation] && objc_msgSend(v2, "canLeave"))
  {
    v3 = [v2 hasLeft];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldEnableAddContactButton
{
  v3 = [(CKDetailsController *)self isGroupChat];
  if (v3)
  {
    if (-[CKDetailsController conversationHasLeft](self, "conversationHasLeft") || (-[CKDetailsController conversation](self, "conversation"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isReadOnlyChat], v4, (v5 & 1) != 0))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E69A5B00] sharedInstance];
      v7 = [v6 isSatelliteConnectionActive];

      LOBYTE(v3) = v7 ^ 1;
    }
  }

  return v3;
}

- (id)emailAddressesForChat:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 participants];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)screenShareContextMenuForEntity:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (v4)
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
    v9 = v4;
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
    [v5 addObjectsFromArray:v15];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v16 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v5];

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
  v3 = [(CKDetailsController *)self conversation];
  v4 = [v3 recipients];
  v9 = [v4 firstObject];

  v5 = [v9 defaultIMHandle];
  v6 = [v5 cnContactWithKeys:MEMORY[0x1E695E0F0]];

  v7 = [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v6];
  if (!CKIsRunningInMacCatalyst() || v7)
  {
    v8 = [(CKDetailsController *)self view];
    [(CKDetailsController *)self showContactCardForEntity:v9 fromView:v8];
  }
}

- (id)setupAlternativeCommunicationActionsForChat:(id)a3
{
  v38[2] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v4 = objc_opt_new();
  if (CKIsRunningInMacCatalyst() || ![(CKDetailsController *)self conversationHasLeft])
  {
    v30 = [(CKDetailsController *)self createAudioCallActionItemForChat:v32];
    v29 = [(CKDetailsController *)self createVideoCallActionItemForChat:v32];
    [v4 addObject:v30];
    [v4 addObject:v29];
    v31 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    v5 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
    v38[0] = v5;
    v6 = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
    v38[1] = v6;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

    v7 = [(CKDetailsController *)self conversation];
    v8 = [v7 chat];
    v9 = [v8 participants];
    v10 = [v9 count];

    v11 = [(CKDetailsController *)self conversation];
    v27 = [v11 conversationVisualIdentityWithKeys:v28 requestedNumberOfContactsToFetch:v10];

    if (objc_opt_respondsToSelector())
    {
      v12 = [v27 contacts];
      v13 = [v31 mailUrlForContacts:v12 needsEmailAddresses:1];
    }

    else
    {
      v13 = 0;
    }

    v26 = v13 != 0;
    v14 = [v32 supportsCapabilities:0x4000];
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

- (id)createAudioCallActionItemForChat:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:v5];

  v7 = [(CKDetailsController *)self conversation];
  LODWORD(v5) = [v7 isGroupConversation];

  v8 = v5 ^ 1 | v6;
  if ((v5 & 1) == 0 && !v6)
  {
    v8 = +[CKFaceTimeUtilities isTelephonyAvailable];
  }

  v9 = [v4 supportsCapabilities:0x4000] & v8;
  v10 = objc_alloc(MEMORY[0x1E695D160]);
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 __ck_localizedString:@"CALL_BUTTON_TITLE"];
  v13 = *MEMORY[0x1E695C150];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __72__CKDetailsController_ContactActions__createAudioCallActionItemForChat___block_invoke;
  v20 = &unk_1E72F5C48;
  v22 = v9;
  v14 = v4;
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

- (id)createVideoCallActionItemForChat:(id)a3
{
  v4 = a3;
  v5 = [(CKDetailsController *)self conversation];
  v6 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:v5];

  v7 = [v4 supportsCapabilities:0x4000] & v6;
  v8 = objc_alloc(MEMORY[0x1E695D160]);
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 __ck_localizedString:@"VIDEO_BUTTON_TITLE"];
  v11 = *MEMORY[0x1E695C1B8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__CKDetailsController_ContactActions__createVideoCallActionItemForChat___block_invoke;
  v18 = &unk_1E72F5C48;
  v20 = v7;
  v12 = v4;
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

- (void)showContactCardForEntity:(id)a3 fromView:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKDetailsController *)self navigationController];
  v7 = [v6 topViewController];

  if (v7 == self)
  {
    v8 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v39[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    v10 = MEMORY[0x1E69A7FD0];
    v11 = [v5 defaultIMHandle];
    v12 = [v11 cnContactWithKeys:v9];
    v13 = [v10 isCNContactAKnownContact:v12];

    if (v13)
    {
      v14 = [(CKDetailsController *)self suggestionsEnabledContactStore];
      v15 = [v5 defaultIMHandle];
      v16 = [v15 cnContactWithKeys:MEMORY[0x1E695E0F0]];
      v17 = [v16 identifier];
      v18 = [v14 unifiedContactWithIdentifier:v17 keysToFetch:v9 error:0];
    }

    else
    {
      v18 = [v5 cnContactWithKeys:v9 shouldFetchSuggestedContact:1];
    }

    v19 = [v5 defaultIMHandle];
    v20 = [v19 ID];
    v21 = [v20 _appearsToBePhoneNumber];
    v22 = MEMORY[0x1E695C330];
    if (!v21)
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
    v25 = [v5 defaultIMHandle];
    v26 = [v25 ID];
    v27 = [v18 identifierForKey:v23 withDestination:v26];
    [v24 highlightPropertyWithKey:v23 identifier:v27];

    v28 = [(CKDetailsController *)self suggestionsEnabledContactStore];
    [v24 setContactStore:v28];

    [v24 setActions:{objc_msgSend(v24, "actions") | 0x80}];
    if (objc_opt_respondsToSelector())
    {
      [v24 setShouldUseModernNavigationBarHiding:1];
    }

    if ((CNUIIsMessages() & v13) == 1 && [(CKDetailsController *)self fmfEnabled]&& ![(CKDetailsController *)self fmfRestricted])
    {
      v29 = [MEMORY[0x1E69A5B70] sharedInstance];
      v30 = [v5 defaultIMHandle];
      v31 = [v29 handleIsFollowingMyLocation:v30];

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

      [(CKDetailsController *)self setPresentedEntity:v5];
      v36 = [v24 contentViewController];
      [v36 setShouldShowLinkedContacts:1];
      v37 = [v36 cardFooterGroup];
      [v36 addActionWithTitle:v35 target:self selector:sel__toggleSharingStateFromABCard inGroup:v37 destructive:v31];
    }

    v38 = [(CKDetailsController *)self navigationController];
    [v38 pushViewController:v24 animated:1];
  }
}

- (void)_toggleSharingStateFromABCard
{
  v3 = [(CKDetailsController *)self presentedEntity];
  v4 = [v3 defaultIMHandle];

  v5 = [(CKDetailsController *)self conversation];
  v44 = [v5 chat];

  v6 = [MEMORY[0x1E69A5B70] sharedInstance];
  v7 = [v6 handleIsFollowingMyLocation:v4];

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
    v59 = v4;
    v42 = &v60;
    v13 = &v61;
    v60 = v44;
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
    v21 = v4;
    v55 = v21;
    v42 = &v56;
    v22 = v44;
    v56 = v22;
    v23 = v45;
    v57 = v23;
    v24 = [v9 actionWithTitle:v20 style:0 handler:v54];
    [v8 addAction:v24];

    v25 = MEMORY[0x1E69DC648];
    v26 = CKFrameworkBundle();
    [v26 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = v41 = v4;
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
    v4 = v41;

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

- (void)presentLanguagePickViewControllerWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
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
  v11 = self;
  sub_19029063C(v8);
  v12 = sub_190D57290();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
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