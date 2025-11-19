@interface IMDNotificationsController
+ (BOOL)_isFacetimeHighlighted:(id)a3;
+ (id)_addressBookNameForAddress:(id)a3 orContact:(id)a4;
+ (id)_addressForHandle:(id)a3;
+ (id)_displayNameForBusinessChatAddress:(id)a3 businessNameManager:(id)a4;
+ (id)_displayNameForChatRecord:(id)a3;
+ (id)_displayNameForHandle:(id)a3 andContact:(id)a4 businessNameManager:(id)a5 suggestionProvider:(id)a6;
+ (id)_lpLinkMetadataForMessage:(id)a3 attachmentPaths:(id)a4 originalURL:(id)a5;
+ (id)_pluginPayloadAttachmentPathsForMessage:(id)a3;
+ (id)_truncateNameIfNeeded:(id)a3;
+ (id)logger;
+ (id)sharedInstance;
+ (int)reminderAlertCount;
+ (int)validateAlertCount:(int)a3;
- (BOOL)_UTITypeMightBeAnimated:(id)a3;
- (BOOL)_amIMentionedInMessage:(id)a3;
- (BOOL)_areAllMessagePartsRetractedForMessageDictionary:(id)a3;
- (BOOL)_chatHasCategoryMuted:(id)a3 isFromContact:(BOOL)a4;
- (BOOL)_chatIsMuted:(id)a3;
- (BOOL)_chatIsMutedBasedOnChatGUID:(id)a3 chatIdentifier:(id)a4 groupID:(id)a5 domainIdentifiers:(id)a6 handles:(id)a7 lastAddressedHandleString:(id)a8 originalGroupID:(id)a9 style:(int64_t)a10;
- (BOOL)_contentBodyHasLocationURL:(id)a3;
- (BOOL)_deviceIsElgibileToBeForcedIntoFilteringUnknownSenders;
- (BOOL)_deviceUnderFirstUnlock;
- (BOOL)_filteringSettingConfirmed;
- (BOOL)_handleIsSpokenMessageAllowlisted:(id)a3 chat:(id)a4 message:(id)a5;
- (BOOL)_isChatbotChat:(id)a3;
- (BOOL)_isMostActiveDevice;
- (BOOL)_isRaiseGestureEnabled;
- (BOOL)_isUnknownSenders:(id)a3;
- (BOOL)_messageIsBusiness:(id)a3;
- (BOOL)_messageIsFromFavorite:(id)a3;
- (BOOL)_messageIsFromKnownContact:(id)a3;
- (BOOL)_messageIsSOSMapURL:(id)a3;
- (BOOL)_messageIsStewieEmergency:(id)a3;
- (BOOL)_messageShouldBeSilentlyDeliveredForBusinessChat:(id)a3;
- (BOOL)_messageShouldBeSpoken:(id)a3 chatDictionary:(id)a4;
- (BOOL)_notificationIsFromAFilteredSender:(id)a3 messageDictionary:(id)a4;
- (BOOL)_shouldOverrideChatSilencingBecauseImMentioned:(id)a3;
- (BOOL)_shouldPostNotificationForChat:(id)a3 messageDictionary:(id)a4;
- (BOOL)_shouldPostNotificationRequest:(id)a3 withCurrentlyPostedNotifications:(id)a4;
- (BOOL)_shouldRepostNotification:(id)a3 withAlreadyPostedNotification:(id)a4;
- (BOOL)areMyTokens:(id)a3 inMessage:(id)a4;
- (BOOL)copyFirstFrameOfMultiFrameImageAtFileURL:(id)a3 toFileURL:(id)a4;
- (BOOL)imagePreviewIsMultiFrameAtFileURL:(id)a3;
- (BOOL)isFromChatBotNotOTC:(id)a3;
- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)a3 participants:(id)a4;
- (IMDNotificationsController)init;
- (UNUserNotificationCenter)notificationCenter;
- (id)RCSCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (id)SMSCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (id)_adaptiveImageGlyphForAttachment:(id)a3;
- (id)_attachmentRecordsForAssociatedMessagePartText:(id)a3;
- (id)_attributedMessageBodyByInsertingAdaptiveImageGlyphsInMessageBody:(id)a3 attachments:(id)a4;
- (id)_attributedSummaryOfTapback:(id)a3 messageDictionary:(id)a4 senderDisplayName:(id)a5;
- (id)_chatDictionaryForChatRecord:(id)a3;
- (id)_chatDictionaryForMessageRecord:(id)a3;
- (id)_coreSpotlightChatParticipantsFromChatDictionary:(id)a3 senderHandleID:(id)a4;
- (id)_dateForMessage:(id)a3;
- (id)_displayNameForHandle:(id)a3;
- (id)_displayNameForHandle:(id)a3 andContact:(id)a4 fallbackName:(id)a5;
- (id)_failedMessageRecordsAfterDateInNanoseconds:(int64_t)a3;
- (id)_fallbackNameOfChatbotFrom:(id)a3;
- (id)_groupPhotoInternalFilePathForGroupPhotoGuid:(id)a3;
- (id)_handleIDsForChatDictionary:(id)a3;
- (id)_interactionDonationContextWithContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5 isUrgentMessageTrigger:(BOOL)a6;
- (id)_lastMessageTimeForChat:(id)a3;
- (id)_lastTwoMessagesForChat:(id)a3;
- (id)_makeNotificationCategories;
- (id)_messageDictionaryForMessageRecord:(id)a3 copyThreadOriginator:(BOOL)a4;
- (id)_messagePredicateForNewMessagesAfterDate:(int64_t)a3;
- (id)_messages:(id)a3 newerThanDate:(int64_t)a4;
- (id)_nicknameDisplayNameForID:(id)a3;
- (id)_notificationsSafePreviewFileURLForTransferURL:(id)a3 utiType:(id)a4 knownSender:(BOOL)a5;
- (id)_requestForNonMostActiveDeviceRequest:(id)a3;
- (id)_senderDisplayNameForTapback:(id)a3 sendMessageIntent:(id)a4 chatParticipants:(id)a5;
- (id)_stickerTapbackTransferGUIDFromMessageDictionary:(id)a3;
- (id)_tapbackFromMessageDictionary:(id)a3;
- (id)_userNotificationForParticipantChangeMessageRecord:(id)a3;
- (id)_userNotificationsForFailedDeliveryMessageRecords:(id)a3 isCarouselUITriggered:(BOOL)a4;
- (id)_userNotificationsForMessageRecords:(id)a3 newerThanDate:(int64_t)a4 isUrgentMessageTrigger:(BOOL)a5 isCarouselUITriggered:(BOOL)a6;
- (id)allTokens;
- (id)contactForHandleRecord:(id)a3;
- (id)madridBusinessCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (id)madridCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (id)madridGroupCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (id)noRelayCategoryWithIdentifier:(id)a3 actions:(id)a4;
- (int64_t)_legacyDateForMessageWithRowIDPreference:(int64_t)a3;
- (int64_t)lastAlertedFailedMessageDate;
- (int64_t)lastAlertedMessageDate;
- (unint64_t)_getMessagesSpokenAllowlistLevel:(BOOL *)a3;
- (unint64_t)_getSpokenMessageAllowlistLevelVersion;
- (unint64_t)screenTimeNotificationOptionsForChatDictionary:(id)a3;
- (unint64_t)screenTimeNotificationOptionsForContext:(id)a3;
- (void)__postNotificationRequests:(id)a3 isMostActiveDevice:(BOOL)a4;
- (void)__postNotifications;
- (void)_migrateLastedPostedPreferencesIfNeeded;
- (void)_populateAttachmentsForNotificationContent:(id)a3 messageDictionary:(id)a4 messageRecord:(id)a5 knownSender:(BOOL)a6;
- (void)_populateBasicNotificationIdentifyingContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5 isCarouselUITriggered:(BOOL)a6;
- (void)_populateBodyAndTitleForSendFailedNotificationContent:(id)a3 messageDictionary:(id)a4;
- (void)_populateBodyAndTitleForSendReceivedAsJunkNotificationContent:(id)a3 messageDictionary:(id)a4;
- (void)_populateBodyForNotificationContent:(id)a3 messageDictionary:(id)a4;
- (void)_populateIgnoresDoNotDisturb:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateNotificationContentForTranscriptSharing:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateRealertCountForNotificationContent:(id)a3;
- (void)_populateSoundAndDisplayActivationForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateSubtitleForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateTimeSensitiveOrCriticalForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateTitleForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5;
- (void)_populateUserInfoForMessageContent:(id)a3 messageDictionary:(id)a4 messageIsAddressedToMe:(BOOL)a5;
- (void)_populateUserInfoOnContentForWatch:(id)a3 messageDictionary:(id)a4 chatDictionary:(id)a5 isCarouselUITriggered:(BOOL)a6;
- (void)_postNotificationRequests:(id)a3 isMostActiveDevice:(BOOL)a4;
- (void)_postUnreadNotificationRequests:(id)a3 failedNotificationRequests:(id)a4;
- (void)_postUrgentNotificationRequests:(id)a3;
- (void)_removeAllDeliveredMessageNotifications;
- (void)_setContactInMessageDictionary:(id)a3 messageDictionary:(id)a4;
- (void)_setMessagesSpokenAllowlistLevelInPreferences:(unint64_t)a3;
- (void)_setSpokenMessageAllowlistLevelVersion:(unint64_t)a3;
- (void)_setUpNotificationCenter;
- (void)_setupBusinessNameManager;
- (void)_setupCriticalNotifications;
- (void)_setupFirstLoad;
- (void)_setupMeContactAndTokens;
- (void)_storeLastAlertedFailedMessageDate:(int64_t)a3;
- (void)_storeLastAlertedMessageDate:(int64_t)a3;
- (void)advanceLastAlertedFailedMessageDate:(int64_t)a3;
- (void)advanceLastAlertedMessageDate:(int64_t)a3;
- (void)postFirstUnlockMessage:(id)a3 forIdentifier:(id)a4;
- (void)postNotificationsWithContext:(id)a3;
- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6;
- (void)postUrgentNotificationForMessages:(id)a3 withContext:(id)a4;
- (void)repostNotificationsFromFirstUnlockWithContext:(id)a3;
- (void)retractNotificationsForReadMessages:(id)a3;
- (void)setLastAlertedFailedMessageDate:(int64_t)a3;
- (void)setLastAlertedMessageDate:(int64_t)a3;
- (void)updatePostedNotificationsForMessages:(id)a3 withContext:(id)a4;
@end

@implementation IMDNotificationsController

+ (id)sharedInstance
{
  if (IMSupportsUserNotifications())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B09E14;
    block[3] = &unk_1E7CB6A70;
    block[4] = a1;
    if (qword_1EDBE62B0 != -1)
    {
      dispatch_once(&qword_1EDBE62B0, block);
    }

    v3 = qword_1EDBE7928;
  }

  else
  {
    v4 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Tried to access IMDNotificationsController on unsupported platform, returning nil.", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)_isMostActiveDevice
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v2 = objc_alloc_init(MEMORY[0x1E69CDE80]);
  objc_msgSend_setType_(v2, v3, 1);
  if (qword_1EBA53BF8 != -1)
  {
    sub_1B7CECFE8();
  }

  v4 = qword_1EBA53BF0;
  objc_msgSend_setDispatchQueue_(v2, v5, v4);

  v6 = v2;
  v7 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7AF8670;
  v18[3] = &unk_1E7CB6CD0;
  v21 = &v22;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  objc_msgSend_setCompletionHandler_(v8, v10, v18);
  objc_msgSend_start(v8, v11, v12);
  v13 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v9, v13))
  {
    v14 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "timeout waiting for completionHandler from SFCoordinatedAlertRequest", v17, 2u);
    }
  }

  v15 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v15;
}

- (UNUserNotificationCenter)notificationCenter
{
  sub_1B7AF61B8(1);
  notificationCenter = self->_notificationCenter;

  return notificationCenter;
}

+ (id)logger
{
  if (qword_1EBA53ED8 != -1)
  {
    sub_1B7CECAB8();
  }

  v3 = qword_1EBA53ED0;

  return v3;
}

- (IMDNotificationsController)init
{
  v15.receiver = self;
  v15.super_class = IMDNotificationsController;
  v2 = [(IMDNotificationsController *)&v15 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__setupFirstLoad(v2, v3, v4);
    objc_msgSend__setUpNotificationCenter(v5, v6, v7);
    objc_msgSend__setupCriticalNotifications(v5, v8, v9);
    objc_msgSend__setupBusinessNameManager(v5, v10, v11);
    objc_msgSend__setupMeContactAndTokens(v5, v12, v13);
  }

  return v5;
}

- (void)_setupBusinessNameManager
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F40], a2, v2);
  objc_msgSend_setBusinessNameManager_(self, v4, v5);
}

- (void)_setUpNotificationCenter
{
  v3 = objc_alloc(MEMORY[0x1E6983308]);
  v5 = objc_msgSend_initWithBundleIdentifier_(v3, v4, @"com.apple.MobileSMS");
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v5;

  v10 = objc_msgSend__makeNotificationCategories(self, v7, v8);
  objc_msgSend_setNotificationCategories_(self->_notificationCenter, v9, v10);
}

- (id)_makeNotificationCategories
{
  v50[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v50[0] = *MEMORY[0x1E696E698];
  v5 = v50[0];
  v50[1] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v50, 2);
  v9 = MEMORY[0x1E695E0F0];
  v48 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_options_(v4, v10, @"MessageExtension", MEMORY[0x1E695E0F0], v8, 14);

  objc_msgSend_addObject_(v3, v11, v48);
  v47 = objc_msgSend_madridCategoryWithIdentifier_actions_(self, v12, @"MessageExtension-Madrid", v9);
  objc_msgSend_addObject_(v3, v13, v47);
  v46 = objc_msgSend_madridGroupCategoryWithIdentifier_actions_(self, v14, @"MessageExtension-MadridGroup", v9);
  objc_msgSend_addObject_(v3, v15, v46);
  v45 = objc_msgSend_madridBusinessCategoryWithIdentifier_actions_(self, v16, @"MessageExtension-MadridBusiness", v9);
  objc_msgSend_addObject_(v3, v17, v45);
  v19 = objc_msgSend_SMSCategoryWithIdentifier_actions_(self, v18, @"MessageExtension-SMS", v9);
  objc_msgSend_addObject_(v3, v20, v19);
  v22 = objc_msgSend_noRelayCategoryWithIdentifier_actions_(self, v21, @"MessageExtension-NoRelay", v9);
  objc_msgSend_addObject_(v3, v23, v22);
  v25 = objc_msgSend_RCSCategoryWithIdentifier_actions_(self, v24, @"MessageExtension-RCS", v9);
  objc_msgSend_addObject_(v3, v26, v25);
  v27 = MEMORY[0x1E6983218];
  v49[0] = v5;
  v49[1] = v6;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, v49, 2);
  v31 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_options_(v27, v30, @"MessageExtension-AudioRaise", v9, v29, 33554446);

  objc_msgSend_addObject_(v3, v32, v31);
  v35 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v33, v34);
  v38 = objc_msgSend_notificationCategories(v35, v36, v37);
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v9;
  }

  v41 = v40;

  objc_msgSend_addObjectsFromArray_(v3, v42, v41);
  v43 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_setupCriticalNotifications
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isCriticalAlertingEnabled = objc_msgSend_isCriticalAlertingEnabled(v4, v5, v6);

  if (isCriticalAlertingEnabled)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B0A3A4;
    v8[3] = &unk_1E7CB6AE0;
    v8[4] = self;
    sub_1B7AF6150(v8);
  }
}

- (void)_setupMeContactAndTokens
{
  v4 = objc_msgSend__IMDContactStore(self, a2, v2);
  v5 = IMMentionContactKeysForMe();
  v11 = 0;
  v7 = objc_msgSend__crossPlatformUnifiedMeContactWithKeysToFetch_error_(v4, v6, v5, &v11);

  v8 = IMMentionMeTokensForContact();
  objc_msgSend_setMeTokens_(self, v9, v8);
  objc_msgSend_setMeContact_(self, v10, v7);
}

- (id)madridCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)madridGroupCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"GROUP_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)madridBusinessCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_BUSINESS_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)SMSCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)RCSCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)noRelayCategoryWithIdentifier:(id)a3 actions:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v20[0] = *MEMORY[0x1E696E698];
  v20[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v20, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, v9, v8, v11, v13, v15, 14);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (int64_t)_legacyDateForMessageWithRowIDPreference:(int64_t)a3
{
  v3 = IMDMessageRecordCopyMessageForRowID(a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_rawDate(v3, v4, v5);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_migrateLastedPostedPreferencesIfNeeded
{
  v30 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend__hasMigratedPreferences(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend__legacyDatePreference(self, v4, v5);
    v7 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "We have not migrated the SMSBBPlugin preferences to the new UserNotifications domain...doing so now with last posted date %@", &v26, 0xCu);
    }

    if (v6 && objc_msgSend_integerValue(v6, v8, v9))
    {
      v10 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "We are setting the date to be %@", &v26, 0xCu);
      }

      objc_msgSend__setLastPostedDateFromMigration_(self, v11, v6);
    }

    else
    {
      v12 = objc_msgSend__legacyRowIDPreference(self, v8, v9);
      v13 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "The SMSBBPlugin last posted date was null, so migrating the rowid", &v26, 2u);
      }

      if (v12 >= 1)
      {
        v15 = objc_msgSend__legacyDateForMessageWithRowIDPreference_(self, v14, v12);
        v16 = IMDNotificationsControllerLogHandle();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15 == -1)
        {
          if (v17)
          {
            v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, v12);
            v26 = 138412290;
            v27 = v24;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "lastAlertedMessage is null for the old rowid: %@ -- this device hasn't posted any message notifications", &v26, 0xCu);
          }
        }

        else
        {
          if (v17)
          {
            v19 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, v12);
            v21 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v20, v15);
            v26 = 138412546;
            v27 = v19;
            v28 = 2112;
            v29 = v21;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "The last posted rowid is %@ and the date for that message is %@", &v26, 0x16u);
          }

          v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, v15);
          objc_msgSend__setLastPostedDateFromMigration_(self, v23, v16);
        }
      }
    }
  }

  objc_msgSend__setHasMigratedPreferenceTrue(self, v4, v5);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setupFirstLoad
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend__migrateLastedPostedPreferencesIfNeeded(self, a2, v2);
  v4 = IMGetCachedDomainValueForKey();
  v7 = objc_msgSend_longLongValue(v4, v5, v6);

  v8 = IMGetCachedDomainValueForKey();
  v11 = objc_msgSend_longLongValue(v8, v9, v10);

  MostRecentMessageDate = IMDMessageRecordGetMostRecentMessageDate();
  if (v7 >= MostRecentMessageDate)
  {
    v13 = MostRecentMessageDate;
  }

  else
  {
    v13 = v7;
  }

  if (v11 >= MostRecentMessageDate)
  {
    v14 = MostRecentMessageDate;
  }

  else
  {
    v14 = v11;
  }

  if (MostRecentMessageDate == -1)
  {
    v13 = v7;
    v14 = v11;
  }

  self->_lastAlertedMessageDate = v13;
  self->_lastAlertedFailedMessageDate = v14;
  v15 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v16, self->_lastAlertedMessageDate);
    v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v18, self->_lastAlertedFailedMessageDate);
    v21 = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Setup first load lastAlertedMessageDate %@ lastAlertedFailedMessageDate %@", &v21, 0x16u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (int64_t)lastAlertedMessageDate
{
  v2 = self;
  objc_sync_enter(v2);
  lastAlertedMessageDate = v2->_lastAlertedMessageDate;
  objc_sync_exit(v2);

  return lastAlertedMessageDate;
}

- (int64_t)lastAlertedFailedMessageDate
{
  v2 = self;
  objc_sync_enter(v2);
  lastAlertedFailedMessageDate = v2->_lastAlertedFailedMessageDate;
  objc_sync_exit(v2);

  return lastAlertedFailedMessageDate;
}

- (void)_storeLastAlertedMessageDate:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B0B420;
  block[3] = &unk_1E7CB6A70;
  block[4] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_storeLastAlertedFailedMessageDate:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B0B4F8;
  block[3] = &unk_1E7CB6A70;
  block[4] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setLastAlertedMessageDate:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v4->_lastAlertedMessageDate = a3;
  objc_msgSend__storeLastAlertedMessageDate_(v4, v5, a3);
  v6 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v4->_lastAlertedMessageDate);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "setting last alerted message date to %@", &v10, 0xCu);
  }

  objc_sync_exit(v4);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)advanceLastAlertedMessageDate:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lastAlertedMessageDate < a3)
  {
    objc_msgSend_setLastAlertedMessageDate_(obj, v4, a3);
  }

  objc_sync_exit(obj);
}

- (void)setLastAlertedFailedMessageDate:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_lastAlertedFailedMessageDate = a3;
  objc_msgSend__storeLastAlertedFailedMessageDate_(obj, v4, a3);
  objc_sync_exit(obj);
}

- (void)advanceLastAlertedFailedMessageDate:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lastAlertedFailedMessageDate < a3)
  {
    objc_msgSend_setLastAlertedFailedMessageDate_(obj, v4, a3);
  }

  objc_sync_exit(obj);
}

- (id)_messages:(id)a3 newerThanDate:(int64_t)a4
{
  v4 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B0B980;
  v11[3] = &unk_1E7CB6B20;
  v11[4] = a4;
  v5 = a3;
  v7 = objc_msgSend_predicateWithBlock_(v4, v6, v11);
  v9 = objc_msgSend_filteredArrayUsingPredicate_(v5, v8, v7);

  return v9;
}

- (id)_userNotificationForParticipantChangeMessageRecord:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMDCreateIMItemFromIMDMessageRecord(v4, 0, 1, 0);
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECD5C();
    }

    goto LABEL_8;
  }

  if (objc_msgSend_changeType(v5, v6, v7))
  {
    v10 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CECB70(v5, v10, v11);
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isFromMe(v5, v8, v9))
  {
    v10 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CECCE8();
    }

    goto LABEL_8;
  }

  v10 = objc_msgSend_chatRecord(v4, v15, v16);
  if (!v10)
  {
    v77 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECC50(v4, v77, v78);
    }

    goto LABEL_8;
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v19 = objc_msgSend_synchronousDatabase(IMDDatabase, v17, v18);
  v22 = objc_msgSend_guid(v10, v20, v21);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_1B7B0BFEC;
  v82[3] = &unk_1E7CB6860;
  v82[4] = &v83;
  objc_msgSend_fetchScheduledMessageRecordsForChatRecordWithGUID_limit_completionHandler_(v19, v23, v22, 2, v82);

  if (v84[3])
  {
    v26 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25);
    v29 = objc_msgSend_guid(v4, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v29, @"__kmessageGUIDKey");

    v33 = objc_msgSend_handleRecord(v4, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v34, v33, @"__kmessageHandleKey");

    v37 = objc_msgSend_handleRecord(v4, v35, v36);
    v39 = objc_msgSend__displayNameForHandle_(self, v38, v37);

    v42 = objc_msgSend_otherHandleRecord(v4, v40, v41);
    v44 = objc_msgSend__displayNameForHandle_(self, v43, v42);

    v45 = v84[3];
    v46 = MEMORY[0x1E696AEC0];
    v47 = IMSharedUtilitiesFrameworkBundle();
    v49 = v47;
    if (v45 <= 1)
    {
      objc_msgSend_localizedStringForKey_value_table_(v47, v48, @"NOTIFICATION_PARTICIPANT_CHANGE_SCHEDULED_MESSAGE_SINGULAR", &stru_1F2FA9728, @"IMSharedUtilities");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v47, v48, @"NOTIFICATION_PARTICIPANT_CHANGE_SCHEDULED_MESSAGE_PLURAL", &stru_1F2FA9728, @"IMSharedUtilities");
    }
    v50 = ;
    v52 = objc_msgSend_localizedStringWithFormat_(v46, v51, v50, v39, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v53, v52, @"__kmessageTextKey");

    v54 = MEMORY[0x1E696AD98];
    v57 = objc_msgSend_rawDate(v4, v55, v56);
    v59 = objc_msgSend_numberWithLongLong_(v54, v58, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v60, v59, @"__kmessageDateKey");

    v61 = MEMORY[0x1E696AD98];
    v64 = objc_msgSend_rawDate(v4, v62, v63);
    v66 = objc_msgSend_numberWithLongLong_(v61, v65, v64);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v67, v66, @"__kmessageDateDeliveredKey");

    v70 = objc_msgSend_handleRecord(v4, v68, v69);
    objc_msgSend__setContactInMessageDictionary_messageDictionary_(self, v71, v70, v26);

    v72 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = v84[3];
      *buf = 138412802;
      v88 = v39;
      v89 = 2112;
      v90 = v44;
      v91 = 2048;
      v92 = v73;
      _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_DEFAULT, "%@ added %@ and chat has scheduled message count: %lu", buf, 0x20u);
    }

    buf[0] = 1;
    v75 = objc_msgSend__chatDictionaryForChatRecord_(self, v74, v10);
    v12 = objc_msgSend__generateNotificationRequestForMessageRecord_messageDictionary_chatDictionary_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v76, 0, v26, v75, 0, 0, buf);
  }

  else
  {
    v26 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v81 = objc_msgSend_guid(v10, v79, v80);
      sub_1B7CECBF8(v81, buf, v26);
    }

    v12 = 0;
  }

  _Block_object_dispose(&v83, 8);
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_userNotificationsForMessageRecords:(id)a3 newerThanDate:(int64_t)a4 isUrgentMessageTrigger:(BOOL)a5 isCarouselUITriggered:(BOOL)a6
{
  v60 = a6;
  v6 = a5;
  v73 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = v6;
  v57 = v8;
  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_msgSend__messages_newerThanDate_(self, v9, v8, a4);
  }

  v12 = objc_msgSend__messagesSortedByDate_(self, v11, v10, v10);
  v15 = objc_msgSend_count(v12, v13, v14);
  if (v15)
  {
    v18 = v15;
    v19 = 0;
    v58 = self;
    do
    {
      v20 = objc_autoreleasePoolPush();
      v22 = objc_msgSend_objectAtIndex_(v12, v21, v19);
      v25 = objc_msgSend_rawDate(v22, v23, v24);
      v26 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v27, v28, v25);
        v32 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v30, v31, a4);
        *buf = 134218754;
        v66 = v25;
        v67 = 2112;
        v68 = v29;
        v69 = 2048;
        v70 = a4;
        v71 = 2112;
        v72 = v32;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_DEFAULT, "iterating new messages for newMessageDate: [%lld]-[%@], last alerted date: [%lld]-[%@]", buf, 0x2Au);
      }

      v64 = 1;
      if (objc_msgSend_itemType(v22, v33, v34) == 1)
      {
        objc_msgSend__userNotificationForParticipantChangeMessageRecord_(self, v35, v22);
      }

      else
      {
        objc_msgSend__generateNotificationRequestForMessageRecord_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v35, v22, v59, v60, &v64);
      }
      v37 = ;
      if (v37)
      {
        v38 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_identifier(v37, v39, v40);
          v41 = v62 = v20;
          v44 = objc_msgSend_content(v37, v42, v43);
          objc_msgSend_categoryIdentifier(v44, v45, v46);
          v47 = v18;
          v49 = v48 = v12;
          *buf = 138412546;
          v66 = v41;
          v67 = 2112;
          v68 = v49;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "Generated notification request for identifier %@ with category identifier %@", buf, 0x16u);

          self = v58;
          v12 = v48;
          v18 = v47;

          v20 = v62;
        }

        objc_msgSend_advanceLastAlertedMessageDate_(self, v50, v25);
        objc_msgSend_addObject_(v63, v51, v37);
      }

      else if (v64 == 1)
      {
        objc_msgSend_advanceLastAlertedMessageDate_(self, v36, v25);
      }

      objc_autoreleasePoolPop(v20);
      ++v19;
    }

    while (v18 != v19);
  }

  if (sub_1B7B0C380(v15, v16, v17))
  {
    objc_msgSend_removeAllObjects(v63, v52, v53);
  }

  v54 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)_userNotificationsForFailedDeliveryMessageRecords:(id)a3 isCarouselUITriggered:(BOOL)a4
{
  v6 = objc_msgSend__messagesSortedByDate_(self, a2, a3);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B0C4C0;
  v13[3] = &unk_1E7CB6B48;
  v13[4] = self;
  v15 = a4;
  v8 = v7;
  v14 = v8;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v6, v9, 2, v13);
  v10 = v14;
  v11 = v8;

  return v8;
}

- (id)_messagePredicateForNewMessagesAfterDate:(int64_t)a3
{
  v25[5] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], a2, @"%K == 0", *MEMORY[0x1E69A7190]);
  v25[0] = v5;
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v6, @"%K == 1", *MEMORY[0x1E69A7180]);
  v25[1] = v7;
  v9 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v8, @"%K == 0", *MEMORY[0x1E69A7188]);
  v25[2] = v9;
  v11 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v10, @"%K == 0", *MEMORY[0x1E69A71B0]);
  v25[3] = v11;
  v13 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v12, @"%K == 0", *MEMORY[0x1E69A71A0]);
  v25[4] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v25, 5);

  if (objc_msgSend__useDateInPredicate(self, v16, v17))
  {
    v19 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v18, @"%K > %ld", *MEMORY[0x1E69A7148], a3);
    v21 = objc_msgSend_arrayByAddingObject_(v15, v20, v19);

    v15 = v21;
  }

  v22 = objc_msgSend_andPredicateWithSubpredicates_(MEMORY[0x1E696AB28], v18, v15);

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)__postNotifications
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Post notifications after coalescing, background threading", buf, 2u);
  }

  FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
  v61 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  AlertedMessageDate = objc_msgSend_lastAlertedMessageDate(self, v5, v6);
  AlertedFailedMessageDate = objc_msgSend_lastAlertedFailedMessageDate(self, v8, v9);
  v11 = IMGetCachedDomainValueForKey();
  v14 = objc_msgSend___im_nanosecondTimeInterval(v11, v12, v13);

  v15 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_msgSend_count(v61, v16, v17);
    v21 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v19, v20, AlertedMessageDate);
    v24 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v22, v23, AlertedFailedMessageDate);
    v27 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v25, v26, FailedMessageDate);
    *buf = 134219522;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = AlertedMessageDate;
    *&buf[22] = 2112;
    v78 = v21;
    *v79 = 2048;
    *&v79[2] = AlertedFailedMessageDate;
    *&v79[10] = 2112;
    *&v79[12] = v24;
    v80 = 2048;
    v81 = FailedMessageDate;
    v82 = 2112;
    v83 = v27;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "new participant changes number: [%lu] lastAlertedDate: [%lld]-[%@] lastFailedMessageAlertDate: [%lld]-[%@] lastFailedMessageDate: [%lld]-[%@]", buf, 0x48u);
  }

  if (FailedMessageDate > AlertedFailedMessageDate || v14 > AlertedFailedMessageDate)
  {
    v30 = objc_msgSend__failedMessageRecordsAfterDateInNanoseconds_(self, v28, AlertedFailedMessageDate);
    v29 = objc_msgSend__userNotificationsForFailedDeliveryMessageRecords_isCarouselUITriggered_(self, v31, v30, 0);
  }

  else
  {
    v29 = 0;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v78 = sub_1B7AE18F4;
  *v79 = sub_1B7AE2470;
  *&v79[8] = MEMORY[0x1E695E0F0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B0CE80;
  aBlock[3] = &unk_1E7CB6B70;
  v67 = &v70;
  aBlock[4] = self;
  v32 = v61;
  v68 = buf;
  v69 = AlertedMessageDate;
  v66 = v32;
  v33 = _Block_copy(aBlock);
  if (objc_msgSend__useBatchFetcherForNotificationPosting(self, v34, v35))
  {
    v36 = [IMDMessageRecordBatchFetcher alloc];
    v39 = objc_msgSend__chatPredicateForNewMessages(self, v37, v38);
    v41 = objc_msgSend_initWithChatPredicate_sortAscending_(v36, v40, v39, 0);

    v43 = objc_msgSend__messagePredicateForNewMessagesAfterDate_(self, v42, AlertedMessageDate);
    objc_msgSend_setPredicate_(v41, v44, v43);

    do
    {
      v47 = objc_msgSend_nextBatch(v41, v45, v46);
      v48 = v33[2](v33, v47);
    }

    while ((v48 & 1) != 0);
  }

  else
  {
    v41 = IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID(-1, 0);
    v33[2](v33, v41);
  }

  v49 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = v71[3];
    LODWORD(v74) = 134217984;
    *(&v74 + 4) = v50;
    _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_DEFAULT, "new messages number: [%lu]", &v74, 0xCu);
  }

  if (v71[3] <= 0 && !objc_msgSend_count(v29, v51, v52))
  {
    *&v74 = 0;
    *(&v74 + 1) = &v74;
    v75 = 0x2020000000;
    v76 = 0;
    if (objc_msgSend__useBatchFetcherForNotificationPosting(self, v51, v53))
    {
      v57 = objc_msgSend_synchronousDatabase(IMDDatabase, v55, v56);
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_1B7B0CF4C;
      v64[3] = &unk_1E7CB6B98;
      v64[4] = &v74;
      objc_msgSend_fetchUnreadIncomingMessagesCount_(v57, v58, v64);

      if (!*(*(&v74 + 1) + 24))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v59 = v71[3];
      *(*(&v74 + 1) + 24) = v59;
      if (!v59)
      {
LABEL_24:
        v60 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 0;
          _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_DEFAULT, "Queuing retraction of all delivered notifications, as we had nothing unread.", v63, 2u);
        }

        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = sub_1B7B0CF5C;
        v62[3] = &unk_1E7CB6AE0;
        v62[4] = self;
        sub_1B7AF6150(v62);
      }
    }

    _Block_object_dispose(&v74, 8);
    goto LABEL_19;
  }

  objc_msgSend__postUnreadNotificationRequests_failedNotificationRequests_(self, v51, *(*&buf[8] + 40), v29);
LABEL_19:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v70, 8);

  v54 = *MEMORY[0x1E69E9840];
}

- (void)_removeAllDeliveredMessageNotifications
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Retracting all unread message notifications", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = self;
  v7 = objc_msgSend_notificationCenter(self, v5, v6);
  v10 = objc_msgSend_deliveredNotifications(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v41, v46, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = objc_msgSend_request(v18, v13, v14);
        v22 = objc_msgSend_content(v19, v20, v21);

        v25 = objc_msgSend_categoryIdentifier(v22, v23, v24);
        hasPrefix = objc_msgSend_hasPrefix_(v25, v26, @"MessageExtension");

        if (hasPrefix)
        {
          v30 = objc_msgSend_request(v18, v28, v29);
          v33 = objc_msgSend_identifier(v30, v31, v32);
          objc_msgSend_addObject_(v4, v34, v33);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v41, v46, 16);
    }

    while (v15);
  }

  v37 = objc_msgSend_notificationCenter(v40, v35, v36);
  objc_msgSend_removeDeliveredNotificationsWithIdentifiers_(v37, v38, v4);

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_failedMessageRecordsAfterDateInNanoseconds:(int64_t)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate(10, a3);
  objc_msgSend_addObjectsFromArray_(v4, v6, v5);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v7, @"%K = %@", *MEMORY[0x1E69A71C8], MEMORY[0x1E695E118]);
  v9 = MEMORY[0x1E696AE18];
  v10 = *MEMORY[0x1E69A7148];
  v13 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v11, v12, a3);
  v15 = objc_msgSend_predicateWithFormat_(v9, v14, @"%K > %@", v10, v13);

  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = objc_msgSend_synchronousDatabase(IMDDatabase, v17, v18);
  v20 = MEMORY[0x1E696AB28];
  v35[0] = v8;
  v35[1] = v15;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v35, 2);
  v24 = objc_msgSend_andPredicateWithSubpredicates_(v20, v23, v22);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1B7B0D394;
  v32[3] = &unk_1E7CB6BC0;
  v33 = v16;
  v25 = v4;
  v34 = v25;
  v26 = v16;
  objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v19, v27, v24, 0, 10, v32);

  v28 = v34;
  v29 = v25;

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)_postUnreadNotificationRequests:(id)a3 failedNotificationRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B0D5C4;
  v10[3] = &unk_1E7CB6798;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  sub_1B7AF6150(v10);
}

- (void)_postUrgentNotificationRequests:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B0D6F0;
  v6[3] = &unk_1E7CB6770;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_1B7AF6150(v6);
}

- (void)_postNotificationRequests:(id)a3 isMostActiveDevice:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B0D7CC;
  v8[3] = &unk_1E7CB6BE8;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  sub_1B7AF6150(v8);
}

- (void)__postNotificationRequests:(id)a3 isMostActiveDevice:(BOOL)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_notificationCenter(self, v7, v8);
  v12 = objc_msgSend_deliveredNotifications(v9, v10, v11);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v43, v47, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    v36 = v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * v17);
        if (!a4)
        {
          v20 = objc_msgSend__requestForNonMostActiveDeviceRequest_(self, v18, v19, v36);

          v19 = v20;
        }

        if (objc_msgSend__shouldPostNotificationRequest_withCurrentlyPostedNotifications_(self, v18, v19, v12, v36))
        {
          v21 = dispatch_semaphore_create(0);
          v24 = objc_msgSend_notificationCenter(self, v22, v23);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v40[0] = sub_1B7B0DA84;
          v40[1] = &unk_1E7CB6C10;
          v25 = v19;
          v41 = v25;
          v26 = v21;
          v42 = v26;
          objc_msgSend_addNotificationRequest_withCompletionHandler_(v24, v27, v25, v39);

          v28 = dispatch_time(0, 3000000000);
          if (dispatch_semaphore_wait(v26, v28))
          {
            v29 = IMDNotificationsControllerLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_DEFAULT, "timeout waiting for completionHandler from UNNotificationCenter", buf, 2u);
            }
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v43, v47, 16);
    }

    while (v15);
  }

  v33 = objc_msgSend_notificationCenter(self, v31, v32);
  objc_msgSend_getNotificationSettingsWithCompletionHandler_(v33, v34, &unk_1F2FA0910);

  v35 = *MEMORY[0x1E69E9840];
}

- (id)_requestForNonMostActiveDeviceRequest:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_content(v3, v4, v5);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);

  v10 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Coordinated Alerts -- this is not the most active device, suppressing the screen from lighting up and not playing sound for message", buf, 2u);
  }

  objc_msgSend_setShouldIgnoreDoNotDisturb_(v9, v11, 0);
  objc_msgSend_setShouldSuppressScreenLightUp_(v9, v12, 1);
  objc_msgSend_setSound_(v9, v13, 0);
  v14 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Coordinated Alerts -- this is not the most active device, suppressing spoken messages", v34, 2u);
  }

  if (objc_msgSend_interruptionLevel(v9, v15, v16) == 3)
  {
    objc_msgSend_setShouldSuppressScreenLightUp_(v9, v17, 0);
    v21 = objc_msgSend_sound(v9, v19, v20);
    if (!v21 || (v22 = v21, objc_msgSend_sound(v9, v17, v18), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_alertType(v23, v24, v25), v23, v22, v26 == 2))
    {
      v27 = objc_msgSend_defaultCriticalSound(MEMORY[0x1E69832B8], v17, v18);
      objc_msgSend_setSound_(v9, v28, v27);
    }
  }

  v29 = MEMORY[0x1E6983298];
  v30 = objc_msgSend_identifier(v3, v17, v18);
  v32 = objc_msgSend_requestWithIdentifier_content_trigger_destinations_(v29, v31, v30, v9, 0, 15);

  return v32;
}

- (void)postNotificationsWithContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Post notifications called from client with context %@", &v16, 0xCu);
  }

  if (objc_msgSend__haveMigrated(self, v6, v7))
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"IMActiveAccountAliasesKey");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v10, v9);
      objc_msgSend_setActiveAccountAliases_(self, v13, v12);
    }

    objc_msgSend___postNotifications(self, v10, v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "We don't post notifications during system migration", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)retractNotificationsForReadMessages:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Withdrawing message notifications for message guids %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B0E0F0;
  v8[3] = &unk_1E7CB6770;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  sub_1B7AF6150(v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)repostNotificationsFromFirstUnlockWithContext:(id)a3
{
  v4 = a3;
  v5 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Retract and re-post iMessage notifications sent before first unlock", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B0E294;
  v7[3] = &unk_1E7CB6770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_1B7AF6150(v7);
}

- (void)postUrgentNotificationForMessages:(id)a3 withContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "We need to post these urgent message requests %@ with context %@", &v17, 0x16u);
  }

  v9 = IMDMessageRecordCopyMessagesForGUIDs(v6);
  AlertedMessageDate = objc_msgSend_lastAlertedMessageDate(self, v10, v11);
  v14 = objc_msgSend__userNotificationsForMessageRecords_newerThanDate_isUrgentMessageTrigger_isCarouselUITriggered_(self, v13, v9, AlertedMessageDate, 1, 0);
  objc_msgSend__postUrgentNotificationRequests_(self, v15, v14);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updatePostedNotificationsForMessages:(id)a3 withContext:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Updating posted notifications for messages %@", buf, 0xCu);
  }

  v37 = v5;
  v7 = IMDMessageRecordCopyMessagesForGUIDs(v5);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v43, v47, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v42 = 0;
        v17 = objc_msgSend__generateNotificationRequestForMessageRecord_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v12, v16, 0, 0, &v42, v37);
        v20 = v17;
        if (v17)
        {
          v21 = objc_msgSend_identifier(v17, v18, v19);
          v22 = IMDNotificationsControllerLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v21;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Generated an updated notification request for notification: %@", buf, 0xCu);
          }

          v25 = objc_msgSend_content(v20, v23, v24);
          if (objc_msgSend_length(v21, v26, v27))
          {
            v29 = v25 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v8, v28, v25, v21);
          }
        }

        else
        {
          v21 = objc_msgSend_guid(v16, v18, v19);
          v30 = IMDNotificationsControllerLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v21;
            _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_DEFAULT, "Could not generate an updated notification request for edited message, message may have been retracted. Retracting outstanding notifications for messageGUID: %@", buf, 0xCu);
          }

          if (objc_msgSend_length(v21, v31, v32))
          {
            objc_msgSend_addObject_(v38, v33, v21);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v43, v47, 16);
    }

    while (v13);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1B7B0E7B8;
  v39[3] = &unk_1E7CB6798;
  v39[4] = self;
  v40 = v8;
  v41 = v38;
  v34 = v38;
  v35 = v8;
  sub_1B7AF6150(v39);

  v36 = *MEMORY[0x1E69E9840];
}

- (void)postFirstUnlockMessage:(id)a3 forIdentifier:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((sub_1B7B0C380(v7, v8, v9) & 1) == 0)
  {
    if (v6)
    {
      v10 = IMSharedUtilitiesFrameworkBundle();
      v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"MADRID_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities");

      v13 = objc_alloc_init(MEMORY[0x1E6983220]);
      objc_msgSend_setTitle_(v13, v14, v7);
      objc_msgSend_setBody_(v13, v15, v12);
      objc_msgSend_setCategoryIdentifier_(v13, v16, @"MessageExtension-Madrid");
      objc_msgSend_setThreadIdentifier_(v13, v17, v7);
      v20 = objc_msgSend_userInfo(v13, v18, v19);
      Mutable = objc_msgSend_mutableCopy(v20, v21, v22);

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionarySetValue(Mutable, @"CKBBContextKeyMessageGUID", v6);
      CFDictionarySetValue(Mutable, @"CKBBContextKeyIsFirstUnlock", MEMORY[0x1E695E118]);
      objc_msgSend_setUserInfo_(v13, v24, Mutable);
      v26 = objc_msgSend_triggerWithTimeInterval_repeats_(MEMORY[0x1E6983300], v25, 0, 0.1);
      v28 = objc_msgSend_requestWithIdentifier_content_trigger_(MEMORY[0x1E6983298], v27, v6, v13, v26);
      v29 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = v28;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_DEFAULT, "adding notification request under first unlock %@ with content %@", buf, 0x16u);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_1B7B0EDB4;
      v34[3] = &unk_1E7CB6798;
      v34[4] = self;
      v35 = v28;
      v36 = v13;
      v30 = v13;
      v31 = v28;
      sub_1B7AF6150(v34);
    }

    else if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[IMDNotificationsController postFirstUnlockMessage:forIdentifier:]";
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "IMDNotificationsController - %s asked to post notification with nil messageGUID", buf, 0xCu);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6
{
  v100 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = IMDNotificationsControllerLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v10 && v11 && v12)
  {
    if (v15)
    {
      buf = 138412802;
      v95 = v10;
      v96 = 2112;
      v97 = v12;
      v98 = 2112;
      v99 = v13;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Posting SharePlay notification for chat GUID %@ and handle identifier %@ with app name %@", &buf, 0x20u);
    }

    v16 = IMDChatRecordCopyChatForGUID(v10);
    v14 = v16;
    if (!v16)
    {
      v25 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        buf = 138412290;
        v95 = v10;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "No chat record for guid: %@", &buf, 0xCu);
      }

      goto LABEL_38;
    }

    v85 = v13;
    v86 = v10;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v19 = objc_msgSend_handleRecords(v16, v17, v18);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v88, v93, 16);
    if (v21)
    {
      v24 = v21;
      v83 = v11;
      v84 = self;
      v25 = 0;
      v26 = *v89;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v89 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v88 + 1) + 8 * i);
          v29 = objc_msgSend_canonicalizedURIString(v28, v22, v23);
          isEqualToString = objc_msgSend_isEqualToString_(v29, v30, v12);

          if (isEqualToString)
          {
            v32 = v28;

            v25 = v32;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v88, v93, 16);
      }

      while (v24);

      v11 = v83;
      if (v25)
      {
        v35 = objc_msgSend_date(MEMORY[0x1E695DF00], v33, v34);
        v82 = objc_msgSend___im_nanosecondTimeInterval(v35, v36, v37);

        v40 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v38, v39);
        v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"%@-%@", v86, v83);
        objc_msgSend_setObject_forKeyedSubscript_(v40, v43, v42, @"__kmessageGUIDKey");

        objc_msgSend_setObject_forKeyedSubscript_(v40, v44, v25, @"__kmessageHandleKey");
        if (v85)
        {
          v45 = MEMORY[0x1E696AEC0];
          v46 = IMSharedUtilitiesFrameworkBundle();
          v48 = objc_msgSend_localizedStringForKey_value_table_(v46, v47, @"SharePlay “%@” Together", &stru_1F2FA9728, @"IMSharedUtilities");
          v50 = objc_msgSend_localizedStringWithFormat_(v45, v49, v48, v85);
          objc_msgSend_setObject_forKeyedSubscript_(v40, v51, v50, @"__kmessageTextKey");
        }

        else
        {
          v46 = IMSharedUtilitiesFrameworkBundle();
          v48 = objc_msgSend_localizedStringForKey_value_table_(v46, v52, @"SharePlay Together", &stru_1F2FA9728, @"IMSharedUtilities");
          objc_msgSend_setObject_forKeyedSubscript_(v40, v53, v48, @"__kmessageTextKey");
        }

        v55 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v54, v82);
        objc_msgSend_setObject_forKeyedSubscript_(v40, v56, v55, @"__kmessageDateKey");

        v58 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v57, v82);
        objc_msgSend_setObject_forKeyedSubscript_(v40, v59, v58, @"__kmessageDateDeliveredKey");

        objc_msgSend__setContactInMessageDictionary_messageDictionary_(v84, v60, v25, v40);
        v62 = objc_msgSend__chatDictionaryForChatRecord_(v84, v61, v14);
        v87 = 1;
        v64 = objc_msgSend__generateNotificationRequestForMessageRecord_messageDictionary_chatDictionary_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(v84, v63, 0, v40, v62, 0, 0, &v87);
        v65 = IMDNotificationsControllerLogHandle();
        v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
        if (v64)
        {
          v81 = v62;
          v10 = v86;
          if (v66)
          {
            v69 = objc_msgSend_identifier(v64, v67, v68);
            v80 = objc_msgSend_content(v64, v70, v71);
            v74 = objc_msgSend_categoryIdentifier(v80, v72, v73);
            buf = 138412546;
            v95 = v69;
            v96 = 2112;
            v97 = v74;
            _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_DEFAULT, "Generated notification request for identifier %@ with category identifier %@", &buf, 0x16u);
          }

          v92 = v64;
          v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v75, &v92, 1);
          objc_msgSend__postNotificationRequests_isMostActiveDevice_(v84, v77, v76, 1);

          v62 = v81;
          if (v87 == 1)
          {
            objc_msgSend_advanceLastAlertedMessageDate_(v84, v78, v82);
          }
        }

        else
        {
          v10 = v86;
          if (v66)
          {
            buf = 138412546;
            v95 = v86;
            v96 = 2112;
            v97 = v12;
            _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_DEFAULT, "Failed to generate SharePlay notification request for chat GUID %@ and handle identifier %@", &buf, 0x16u);
          }
        }

LABEL_37:
        v13 = v85;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
    }

    v25 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      v95 = v12;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "No handle record for identifier: %@", &buf, 0xCu);
    }

    v10 = v86;
    goto LABEL_37;
  }

  if (v15)
  {
    buf = 138412802;
    v95 = v10;
    v96 = 2112;
    v97 = v11;
    v98 = 2112;
    v99 = v12;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Not posting SharePlay notification because chatGUID (%@), faceTimeConversationUUID (%@), or handleIdentifier (%@) were missing.", &buf, 0x20u);
  }

LABEL_39:

  v79 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isRaiseGestureEnabled
{
  v3 = objc_msgSend_defaultsSharedInstance(self, a2, v2);
  v5 = objc_msgSend_getValueFromDomain_forKey_(v3, v4, @"com.apple.MobileSMS", @"RaiseToListenEnabled");

  if (v5)
  {
    v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  }

  else
  {
    v9 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "We have never set the raise to listen default, marking it as enabled", v11, 2u);
    }

    v8 = 1;
  }

  return v8;
}

- (id)_dateForMessage:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"__kmessageDateKey");
  v6 = objc_msgSend_longLongValue(v3, v4, v5);

  v9 = MEMORY[0x1E695DF00];

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v9, v7, v8, v6);
}

- (void)_populateBasicNotificationIdentifyingContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5 isCarouselUITriggered:(BOOL)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v80 = objc_msgSend__dateForMessage_(self, v12, v11);
  objc_msgSend_setDate_(v9, v13, v80);
  v81 = v10;
  v15 = objc_msgSend_objectForKey_(v10, v14, @"__kchatChatIdentifierKey");
  v17 = objc_msgSend_objectForKey_(v11, v16, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x1E69A7AE0]);

  v21 = objc_msgSend_objectForKey_(v11, v20, @"__kmessageServiceKey");
  v23 = objc_msgSend_isEqualToString_(v21, v22, *MEMORY[0x1E69A7AD8]);

  IsBusiness = objc_msgSend__messageIsBusiness_(self, v24, v11);
  v27 = IsBusiness;
  v28 = 0;
  v29 = isEqualToString | v23;
  if ((v29 & 1) == 0 && (IsBusiness & 1) == 0)
  {
    if (objc_msgSend__amIMentionedInMessage_(self, v26, v11))
    {
      objc_msgSend_objectForKey_(v11, v30, @"__kmessageGUIDKey");
      v28 = LABEL_7:;
      goto LABEL_12;
    }

    v31 = objc_msgSend_objectForKey_(v11, v30, @"__kmessageAssociatedMessageTypeKey");
    v34 = objc_msgSend_longLongValue(v31, v32, v33);

    if ((v34 - 2000) <= 0x3EE)
    {
      objc_msgSend_objectForKey_(v11, v35, @"__kmessageAssociatedMessageGUIDKey");
      goto LABEL_7;
    }

    v36 = objc_msgSend_objectForKey_(v11, v35, @"__kmessageBalloonBundleIDKey");
    v37 = *MEMORY[0x1E69A6928];
    v38 = IMBalloonExtensionIDWithSuffix();
    v78 = v36;
    LODWORD(v36) = objc_msgSend_isEqualToString_(v36, v39, v38);

    v28 = 0;
    if (v36 && v34 == 4000)
    {
      v28 = objc_msgSend_objectForKey_(v11, v40, @"__kmessageAssociatedMessageGUIDKey");
    }
  }

LABEL_12:
  v79 = v28;
  v41 = objc_msgSend___im_URLForChatIdentifier_entryBody_messageGUID_sourceID_(MEMORY[0x1E695DFF8], v26, v15, 0, v28, @"notification");
  v43 = objc_msgSend_objectForKey_(v11, v42, @"__kmessageFlagsKey");
  v46 = objc_msgSend_unsignedLongLongValue(v43, v44, v45);

  if ((v46 & 0x200000) == 0)
  {
    v49 = v41;
    objc_msgSend_setDefaultActionURL_(v9, v47, v41);
LABEL_18:
    v57 = objc_msgSend_objectForKey_(v81, v50, @"__kchatStyleKey");
    v60 = objc_msgSend_longLongValue(v57, v58, v59);

    if (v29)
    {
      if (isEqualToString)
      {
        objc_msgSend_setCategoryIdentifier_(v9, v61, @"MessageExtension-SMS");
      }

      else
      {
        objc_msgSend_setCategoryIdentifier_(v9, v61, @"MessageExtension-RCS");
      }

      v41 = v49;
      if (MEMORY[0x1B8CAF9D0](v15))
      {
        v62 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v62, OS_LOG_TYPE_DEFAULT, "Do not relay notification", buf, 2u);
        }

        objc_msgSend_setCategoryIdentifier_(v9, v63, @"MessageExtension-NoRelay");
      }
    }

    else if (v27)
    {
      objc_msgSend_setCategoryIdentifier_(v9, v61, @"MessageExtension-MadridBusiness");
      v41 = v49;
    }

    else
    {
      v41 = v49;
      if (v60 == 43)
      {
        objc_msgSend_setCategoryIdentifier_(v9, v61, @"MessageExtension-MadridGroup");
      }

      else
      {
        objc_msgSend_setCategoryIdentifier_(v9, v61, @"MessageExtension-Madrid");
      }
    }

    v64 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_DEFAULT, "This was not an audio message", buf, 2u);
    }

    goto LABEL_34;
  }

  isRaiseGestureEnabled = objc_msgSend__isRaiseGestureEnabled(self, v47, v48);
  v49 = v41;
  objc_msgSend_setDefaultActionURL_(v9, v52, v41);
  if (!isRaiseGestureEnabled)
  {
    goto LABEL_18;
  }

  v53 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_DEFAULT, "We got an audio message and raise to listen is enabled setting audio notification category", buf, 2u);
  }

  objc_msgSend_setCategoryIdentifier_(v9, v54, @"MessageExtension-AudioRaise");
LABEL_34:
  if (objc_msgSend_length(v15, v55, v56))
  {
    objc_msgSend_setThreadIdentifier_(v9, v65, v15);
  }

  else
  {
    v66 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECF08();
    }
  }

  v67 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v70 = objc_msgSend_date(v9, v68, v69);
    v73 = objc_msgSend_categoryIdentifier(v9, v71, v72);
    v76 = objc_msgSend_threadIdentifier(v9, v74, v75);
    *buf = 138412802;
    v83 = v70;
    v84 = 2112;
    v85 = v73;
    v86 = 2112;
    v87 = v76;
    _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_DEFAULT, "Setting the date %@ category identifier %@ thread identifier %@", buf, 0x20u);
  }

  v77 = *MEMORY[0x1E69E9840];
}

- (void)_populateBodyForNotificationContent:(id)a3 messageDictionary:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_objectForKey_(v6, v7, @"__kmessageAttributedBodyKey");
  v13 = objc_msgSend___im_richCardsPreviewText(v8, v9, v10);
  if (!v13)
  {
    v15 = objc_msgSend___im_suggestedReplyPreviewText(v8, v11, v12);
    if (v15)
    {
      objc_msgSend_setBody_(v5, v14, v15);
LABEL_18:

      goto LABEL_19;
    }

    v16 = objc_msgSend_objectForKey_(v6, v14, @"__kmessageExpressiveSendStyleIDKey");
    if (objc_msgSend_isEqualToString_(v16, v17, *MEMORY[0x1E69A7088]))
    {
      v55 = v16;
      v19 = MEMORY[0x1E696AEC0];
      v20 = IMSharedUtilitiesFrameworkBundle();
      v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Message sent with Invisible Ink", &stru_1F2FA9728, @"IMSharedUtilities");
      v24 = objc_msgSend_localizedStringWithFormat_(v19, v23, v22);

      v26 = *MEMORY[0x1E69A5F00];
      v27 = *MEMORY[0x1E69A5F20];
    }

    else
    {
      v24 = objc_msgSend_objectForKey_(v6, v18, @"__kmessageTextKey");
      if (!objc_msgSend_length(v24, v39, v40))
      {
        v53 = objc_msgSend_objectForKey_(v6, v41, @"__kmessageGUIDKey");
        if (v53)
        {
          v54 = IMDNotificationsControllerLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v53;
            _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_DEFAULT, "We don't have a message body for message guid %@", buf, 0xCu);
          }
        }

        else
        {
          v54 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CECF78();
          }
        }

        goto LABEL_17;
      }

      v55 = v16;
      v34 = objc_alloc_init(MEMORY[0x1E696AD48]);
      v26 = *MEMORY[0x1E69A5F00];
      objc_msgSend_addCharactersInString_(v34, v42, *MEMORY[0x1E69A5F00]);
      v27 = *MEMORY[0x1E69A5F20];
      objc_msgSend_addCharactersInString_(v34, v43, *MEMORY[0x1E69A5F20]);
      if (!objc_msgSend_length(v24, v44, v45))
      {
LABEL_14:
        v38 = 0;
        goto LABEL_15;
      }

      v47 = 0;
      while (1)
      {
        v48 = objc_msgSend_characterAtIndex_(v24, v46, v47);
        if ((objc_msgSend_characterIsMember_(v34, v49, v48) & 1) == 0)
        {
          break;
        }

        if (++v47 >= objc_msgSend_length(v24, v50, v51))
        {
          goto LABEL_14;
        }
      }
    }

    v28 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v24, v25, v26, @" ");
    v30 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v28, v29, v27, &stru_1F2FA9728);
    v32 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v30, v31, *MEMORY[0x1E69A6CF0], &stru_1F2FA9728);
    v34 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v32, v33, *MEMORY[0x1E69A78B0], &stru_1F2FA9728);

    if (objc_msgSend_length(v34, v35, v36) < 0x3E9)
    {
LABEL_16:
      objc_msgSend_setBody_(v5, v37, v34);

      v16 = v55;
LABEL_17:

      goto LABEL_18;
    }

    v38 = objc_msgSend_substringToIndex_(v34, v37, 1000);
LABEL_15:

    v34 = v38;
    goto LABEL_16;
  }

  objc_msgSend_setBody_(v5, v11, v13);
LABEL_19:

  v52 = *MEMORY[0x1E69E9840];
}

- (void)_populateSubtitleForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v122 = *MEMORY[0x1E69E9840];
  v103 = a3;
  v105 = a4;
  v107 = a5;
  v109 = objc_msgSend_objectForKey_(v107, v7, @"__kmessageHandleKey");
  v8 = objc_opt_class();
  v104 = objc_msgSend__addressForHandle_(v8, v9, v109);
  if (v104 && (MEMORY[0x1B8CAF990]() & 1) != 0)
  {
    v101 = 0;
    v11 = 0;
  }

  else
  {
    v12 = v105;
    if (objc_msgSend__isChatbotChat_(self, v10, v105))
    {
      v101 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v101 = objc_msgSend_objectForKeyedSubscript_(v105, v10, @"__kchatGroupNameKey");
    v11 = 1;
  }

  v12 = v105;
LABEL_8:
  v102 = objc_msgSend_objectForKeyedSubscript_(v12, v10, @"__kchatHandlesForChatKey");
  v13 = v101;
  if (!objc_msgSend_length(v101, v14, v15) && objc_msgSend_count(v102, v16, v17))
  {
    v48 = objc_msgSend_objectForKeyedSubscript_(v105, v16, @"__kchatStyleKey");
    v51 = objc_msgSend_longLongValue(v48, v49, v50);

    v53 = v11 ^ 1;
    if (v51 == 45)
    {
      v53 = 1;
    }

    if (v53)
    {
      v13 = v101;
    }

    else
    {
      v54 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v52);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v55 = v102;
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v114, v121, 16);
      if (v59)
      {
        v60 = *v115;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v115 != v60)
            {
              objc_enumerationMutation(v55);
            }

            v62 = *(*(&v114 + 1) + 8 * i);
            v63 = objc_msgSend_rowID(v62, v57, v58);
            if (v63 != objc_msgSend_rowID(v109, v64, v65))
            {
              v67 = objc_msgSend__displayNameForHandle_andContact_(self, v57, v62, 0);
              if (v67)
              {
                objc_msgSend_addObject_(v54, v66, v67);
              }

              else if (IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  v70 = objc_msgSend_objectForKeyedSubscript_(v107, v69, @"__kmessageGUIDKey");
                  *buf = 138412290;
                  v120 = v70;
                  _os_log_impl(&dword_1B7AD5000, v68, OS_LOG_TYPE_INFO, "Unable to create formatted display string for other recipient handle from messageGUID %@", buf, 0xCu);
                }
              }
            }
          }

          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v114, v121, 16);
        }

        while (v59);
      }

      v71 = IMSharedUtilitiesFrameworkBundle();
      v13 = objc_msgSend_localizedStringForKey_value_table_(v71, v72, @"PARTICIPANT_ADDRESS_TO_YOU_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v73 = v54;
      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v110, v118, 16);
      if (v77)
      {
        v78 = 0;
        v79 = *v111;
        do
        {
          v80 = 0;
          v81 = v13;
          v106 = v78;
          do
          {
            if (*v111 != v79)
            {
              objc_enumerationMutation(v73);
            }

            v82 = *(*(&v110 + 1) + 8 * v80);
            v83 = v78 == objc_msgSend_count(v73, v75, v76) - 1;
            v84 = MEMORY[0x1E696AEC0];
            v85 = IMSharedUtilitiesFrameworkBundle();
            v87 = v85;
            if (v83)
            {
              objc_msgSend_localizedStringForKey_value_table_(v85, v86, @"PARTICIPANT_ADDRESS_FINAL_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");
            }

            else
            {
              objc_msgSend_localizedStringForKey_value_table_(v85, v86, @"PARTICIPANT_ADDRESS_NON_FINAL_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");
            }
            v88 = ;
            v90 = objc_msgSend_localizedStringWithFormat_(v84, v89, v88, v82);
            v13 = objc_msgSend_stringByAppendingString_(v81, v91, v90);

            ++v78;
            ++v80;
            v81 = v13;
          }

          while (v77 != v80);
          v78 = v106 + v77;
          v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v75, &v110, v118, 16);
        }

        while (v77);
      }
    }
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(v107, v16, @"__kmessageThreadOriginatorKey");
  v20 = objc_msgSend_objectForKey_(v107, v19, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x1E69A7AE0]);

  v24 = objc_msgSend__amIMentionedInMessage_(self, v23, v107);
  if (!objc_msgSend_length(v13, v25, v26))
  {
    goto LABEL_17;
  }

  if (!(isEqualToString & 1 | ((v24 & 1) == 0)))
  {
    v92 = MEMORY[0x1E696AEC0];
    v29 = IMSharedUtilitiesFrameworkBundle();
    v37 = objc_msgSend_localizedStringForKey_value_table_(v29, v93, @"GROUP_MENTION_RECEIVED_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v45 = objc_msgSend_localizedStringWithFormat_(v92, v94, v37, v13);
LABEL_54:

    goto LABEL_55;
  }

  if (!v18)
  {
LABEL_17:
    v45 = v13;
    v46 = objc_msgSend_length(v13, v27, v28);
    goto LABEL_56;
  }

  v29 = objc_msgSend_objectForKey_(v18, v27, @"__kmessageHandleKey");
  v31 = objc_msgSend_objectForKey_(v18, v30, @"__kmessageFlagsKey");
  v34 = objc_msgSend_unsignedLongLongValue(v31, v32, v33);

  if (v29)
  {
    v36 = (v34 & 4) == 0;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v37 = objc_msgSend_objectForKey_(v18, v35, @"__kmessageCNContactForSenderKey");
    v39 = objc_msgSend__displayNameForHandle_andContact_(self, v38, v29, v37);
    v40 = MEMORY[0x1E696AEC0];
    v41 = IMSharedUtilitiesFrameworkBundle();
    v43 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"GROUP_REPLY_RECEIVED_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v45 = objc_msgSend_localizedStringWithFormat_(v40, v44, v43, v39, v13);

LABEL_53:
    v13 = v39;
    goto LABEL_54;
  }

  if ((v34 & 4) != 0)
  {
    v95 = MEMORY[0x1E696AEC0];
    v37 = IMSharedUtilitiesFrameworkBundle();
    v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v96, @"GROUP_REPLY_RECEIVED_TO_YOU_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v45 = objc_msgSend_localizedStringWithFormat_(v95, v97, v39, v13);
    v41 = v13;
    goto LABEL_53;
  }

  v45 = v13;
LABEL_55:

  v46 = objc_msgSend_length(v45, v98, v99);
LABEL_56:
  if (v46)
  {
    objc_msgSend_setSubtitle_(v103, v47, v45);
  }

  v100 = *MEMORY[0x1E69E9840];
}

- (void)_populateBodyAndTitleForSendReceivedAsJunkNotificationContent:(id)a3 messageDictionary:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMSharedUtilitiesFrameworkBundle();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"MESSAGE_SEND_RECEIVED_AS_JUNK_DEFAULT", &stru_1F2FA9728, @"IMSharedUtilities");

  v11 = IMSharedUtilitiesFrameworkBundle();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_DEFAULT", &stru_1F2FA9728, @"IMSharedUtilities");

  v16 = objc_msgSend_userInfo(v6, v14, v15);
  Mutable = objc_msgSend_mutableCopy(v16, v17, v18);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v22 = objc_msgSend_objectForKeyedSubscript_(v7, v20, @"__kmessageHandleKey");
  if (v22)
  {
    v23 = objc_msgSend_objectForKey_(v7, v21, @"__kmessageCNContactForSenderKey");
    v25 = objc_msgSend__displayNameForHandle_andContact_(self, v24, v22, v23);

    if (v25)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = IMSharedUtilitiesFrameworkBundle();
      v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"MESSAGE_SEND_TO_%@_RECEIVED_AS_JUNK", &stru_1F2FA9728, @"IMSharedUtilities");
      v31 = objc_msgSend_localizedStringWithFormat_(v26, v30, v29, v25);

      objc_msgSend_setObject_forKey_(Mutable, v32, v25, @"CKBBContextKeySenderName");
      v10 = v31;
    }
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(v7, v21, @"__kmessageDestinationCallerIDKey");
  if (!v33)
  {
    v41 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v42 = "Sender (self) ID not found (senderID is NULL). Displaying default summary for received-as-junk notification";
      v43 = v41;
      v44 = 2;
LABEL_16:
      _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!IMStringIsEmail())
  {
    if (MEMORY[0x1B8CAF9C0](v33))
    {
      v45 = IMFormattedDisplayStringForNumber();
      v55 = MEMORY[0x1E696AEC0];
      v56 = v45;
      v46 = IMSharedUtilitiesFrameworkBundle();
      v48 = objc_msgSend_localizedStringForKey_value_table_(v46, v47, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_PHONE_NUMBER_%@", &stru_1F2FA9728, @"IMSharedUtilities");
      v50 = objc_msgSend_localizedStringWithFormat_(v55, v49, v48, v45);

      v13 = v50;
      goto LABEL_18;
    }

    v41 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v33;
      v42 = "Sender (self) ID %@ type not identified as email or phone number. Displaying default summary for received-as-junk notification";
      v43 = v41;
      v44 = 12;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v34 = MEMORY[0x1E696AEC0];
  v35 = IMSharedUtilitiesFrameworkBundle();
  v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_EMAIL_ADDRESS_%@", &stru_1F2FA9728, @"IMSharedUtilities");
  v39 = objc_msgSend_localizedStringWithFormat_(v34, v38, v37, v33);

  v13 = v39;
LABEL_18:
  objc_msgSend_setTitle_(v6, v40, v10);
  objc_msgSend_setBody_(v6, v51, v13);
  objc_msgSend_setObject_forKey_(Mutable, v52, MEMORY[0x1E695E118], @"CKBBContextKeyIsFailedMessage");
  objc_msgSend_setUserInfo_(v6, v53, Mutable);

  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)_contentBodyHasLocationURL:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"__kmessageAttributedBodyKey");
  v6 = objc_msgSend___im_dataDetectedURLsFromAttributes(v3, v4, v5);
  if (!objc_msgSend_count(v6, v7, v8))
  {
LABEL_10:
    v35 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    v11 = objc_msgSend_objectAtIndex_(v6, v9, v10);
    v14 = objc_msgSend_scheme(v11, v12, v13);
    v17 = objc_msgSend_lowercaseString(v14, v15, v16);
    v20 = objc_msgSend_trimmedString(v17, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v20, v21, @"http");

    v24 = objc_msgSend_locationInfoFromURL_(MEMORY[0x1E69A8100], v23, v11);
    v27 = v24;
    if (!isEqualToString)
    {
      goto LABEL_8;
    }

    v30 = objc_msgSend_location(v24, v25, v26);
    if (!v30)
    {

LABEL_8:
      goto LABEL_9;
    }

    v31 = objc_msgSend_address(v27, v28, v29);

    if (!v31)
    {
      break;
    }

LABEL_9:
    if (++v10 >= objc_msgSend_count(v6, v32, v33))
    {
      goto LABEL_10;
    }
  }

  v35 = 1;
LABEL_11:

  return v35;
}

- (void)_populateNotificationContentForTranscriptSharing:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v125 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  LODWORD(a4) = objc_msgSend_isTranscriptSharingEnabled(v12, v13, v14);

  if (!a4)
  {
    goto LABEL_31;
  }

  v16 = MEMORY[0x1E69A8270];
  v17 = objc_msgSend_objectForKey_(v8, v15, @"__kchatEmergencyUserInfo");
  v19 = objc_msgSend_infoFromDictionary_isStewieTranscriptSharingMessage_(v16, v18, v17, 0);

  v114 = v19;
  if (!v19)
  {
    goto LABEL_31;
  }

  v111 = v7;
  v21 = objc_msgSend_objectForKey_(v9, v20, @"__kmessageIsInitialTranscriptSharingItem");
  v107 = objc_msgSend_BOOLValue(v21, v22, v23);

  v113 = v9;
  v25 = objc_msgSend_objectForKey_(v9, v24, @"__kmessageHandleKey");
  v26 = objc_opt_class();
  v109 = v25;
  v28 = objc_msgSend__addressForHandle_(v26, v27, v25);
  v29 = *MEMORY[0x1E69A6EA0];
  v108 = v28;
  hasSuffix = objc_msgSend_hasSuffix_(v28, v30, *MEMORY[0x1E69A6EA0]);
  v110 = v8;
  objc_msgSend_objectForKeyedSubscript_(v8, v31, @"__kchatHandlesForChatKey");
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v121 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v118, v124, 16);
  if (!v33)
  {
    v35 = 0;
    v116 = 0;
    goto LABEL_22;
  }

  v34 = v33;
  v35 = 0;
  v116 = 0;
  v36 = *v119;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v119 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v118 + 1) + 8 * i);
      v39 = objc_opt_class();
      v41 = objc_msgSend__addressForHandle_(v39, v40, v38);
      v42 = _IMDCoreSpotlightCNContactForHandle(v38);
      if (objc_msgSend_hasSuffix_(v41, v43, v29))
      {
        v46 = IMSharedUtilitiesFrameworkBundle();
        v48 = objc_msgSend_localizedStringForKey_value_table_(v46, v47, @"TS_NOTIFICATION_EMERGENCY_SUBTITLE_DISPLAYNAME", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");

        v35 = v48;
        goto LABEL_18;
      }

      v49 = v35;
      if (v42 || (objc_msgSend_emergencyUserPersona(v114, v44, v45), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend_suggestedDisplayName(v53, v54, v55), v56 = objc_claimAutoreleasedReturnValue(), v56, v53, !v56))
      {
        v50 = objc_msgSend__displayNameForHandle_andContact_(self, v44, v38, v42);

        v46 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v123 = v50;
          v51 = v46;
          v52 = "Not using suggested display name for user in emergency. Using display name = %@";
LABEL_16:
          _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
        }
      }

      else
      {
        v58 = objc_msgSend_emergencyUserPersona(v114, v44, v57);
        v50 = objc_msgSend_suggestedDisplayName(v58, v59, v60);

        v46 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v123 = v50;
          v51 = v46;
          v52 = "Using suggested display name for user in emergency = %@";
          goto LABEL_16;
        }
      }

      v116 = v50;
      v35 = v49;
LABEL_18:
    }

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v118, v124, 16);
  }

  while (v34);
LABEL_22:
  v62 = MEMORY[0x1E696AEC0];
  v63 = IMSharedUtilitiesFrameworkBundle();
  v65 = objc_msgSend_localizedStringForKey_value_table_(v63, v64, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v67 = objc_msgSend_localizedStringWithFormat_(v62, v66, v65);

  v68 = MEMORY[0x1E696AEC0];
  v69 = IMSharedUtilitiesFrameworkBundle();
  v71 = objc_msgSend_localizedStringForKey_value_table_(v69, v70, @"TS_EMERGENCY_USER_BODY_FIRST_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v73 = objc_msgSend_stringWithFormat_(v68, v72, v71, v116);

  v74 = MEMORY[0x1E696AEC0];
  v75 = IMSharedUtilitiesFrameworkBundle();
  v77 = objc_msgSend_localizedStringForKey_value_table_(v75, v76, @"TS_EMERGENCY_USER_SUBTITLE_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v79 = objc_msgSend_localizedStringWithFormat_(v74, v78, v77, v35, v116);

  if ((hasSuffix & 1) == 0)
  {
    v81 = MEMORY[0x1E696AEC0];
    v82 = IMSharedUtilitiesFrameworkBundle();
    v84 = objc_msgSend_localizedStringForKey_value_table_(v82, v83, @"TS_EMERGENCY_USER_SUBTITLE_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v86 = objc_msgSend_stringWithFormat_(v81, v85, v84, v116, v35);

    v79 = v86;
  }

  v7 = v111;
  if (v107)
  {
    v87 = MEMORY[0x1E696AEC0];
    v88 = IMSharedUtilitiesFrameworkBundle();
    v90 = objc_msgSend_localizedStringForKey_value_table_(v88, v89, @"TS_NOTIFICATION_EMERGENCY_SUBTITLE_DISPLAYNAME_FIRST_MESSASGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v91 = v116;
    v93 = objc_msgSend_stringWithFormat_(v87, v92, v90, v116);

    objc_msgSend_setBody_(v111, v94, v73);
    v79 = v93;
    goto LABEL_29;
  }

  if (hasSuffix & 1 | ((objc_msgSend__contentBodyHasLocationURL_(self, v80, v113) & 1) == 0))
  {
    v96 = v109;
    v8 = v110;
    v97 = v108;
    v91 = v116;
  }

  else
  {
    v98 = MEMORY[0x1E696AEC0];
    v99 = IMSharedUtilitiesFrameworkBundle();
    v101 = objc_msgSend_localizedStringForKey_value_table_(v99, v100, @"TS_LOCATION_SHARED", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v91 = v116;
    v103 = objc_msgSend_stringWithFormat_(v98, v102, v101, v116);
    objc_msgSend_setBody_(v111, v104, v103);

LABEL_29:
    v96 = v109;
    v8 = v110;
    v97 = v108;
  }

  objc_msgSend_setTitle_(v111, v95, v67);
  objc_msgSend_setSubtitle_(v111, v105, v79);

  v9 = v113;
LABEL_31:

  v106 = *MEMORY[0x1E69E9840];
}

- (void)_populateBodyAndTitleForSendFailedNotificationContent:(id)a3 messageDictionary:(id)a4
{
  v67 = a3;
  v6 = a4;
  v7 = IMSharedUtilitiesFrameworkBundle();
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"MESSAGE_SEND_FAILED", &stru_1F2FA9728, @"IMSharedUtilities");

  v10 = IMSharedUtilitiesFrameworkBundle();
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"MESSAGE_SEND_TO_UNKNOWN_FAILED", &stru_1F2FA9728, @"IMSharedUtilities");

  v15 = objc_msgSend_userInfo(v67, v13, v14);
  Mutable = objc_msgSend_mutableCopy(v15, v16, v17);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, @"__kmessageHandleKey");
  v22 = objc_msgSend_objectForKey_(v6, v21, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v22, v23, *MEMORY[0x1E69A7AF8]);

  v26 = objc_msgSend_objectForKey_(v6, v25, @"__kmessageServiceKey");
  v28 = objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x1E69A7AE8]);

  if ((isEqualToString & 1) != 0 || v28)
  {
    v30 = IMSharedUtilitiesFrameworkBundle();
    v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"MESSAGE_SEND_FAILURE_VIA_SATELLITE_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");

    v9 = v32;
  }

  if (v20)
  {
    v33 = objc_msgSend_objectForKey_(v6, v29, @"__kmessageCNContactForSenderKey");
    v35 = objc_msgSend__displayNameForHandle_andContact_(self, v34, v20, v33);

    if (v35)
    {
      v66 = v20;
      v36 = MEMORY[0x1E696AEC0];
      v37 = IMSharedUtilitiesFrameworkBundle();
      v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v38, @"MESSAGE_SEND_TO_PERSON_FAILED_FORMAT", &stru_1F2FA9728, @"IMSharedUtilities");
      v41 = objc_msgSend_localizedStringWithFormat_(v36, v40, v39, v35);

      objc_msgSend_setObject_forKey_(Mutable, v42, v35, @"CKBBContextKeySenderName");
      v44 = objc_msgSend_objectForKeyedSubscript_(v6, v43, @"__kmessageFlagsKey");
      v47 = objc_msgSend_unsignedLongLongValue(v44, v45, v46);

      v49 = objc_msgSend_objectForKeyedSubscript_(v6, v48, @"__kmessageItemTypeKey");
      v52 = v49;
      if ((v47 & 0x20000000000) != 0 && !((objc_msgSend_longValue(v49, v50, v51) != 0) | isEqualToString & 1 | v28 & 1))
      {
        v53 = IMSharedUtilitiesFrameworkBundle();
        v55 = objc_msgSend_localizedStringForKey_value_table_(v53, v54, @"MESSAGE_SEND_FAILED_USER_OFFGRID", &stru_1F2FA9728, @"IMSharedUtilities");

        v56 = MEMORY[0x1E696AEC0];
        v57 = IMSharedUtilitiesFrameworkBundle();
        v59 = objc_msgSend_localizedStringForKey_value_table_(v57, v58, @"MESSAGE_SEND_TO_PERSON_FAILED_FORMAT_USER_OFFGRID", &stru_1F2FA9728, @"IMSharedUtilities");
        v61 = objc_msgSend_localizedStringWithFormat_(v56, v60, v59, v35);

        v41 = v61;
        v9 = v55;
      }

      v20 = v66;

      v12 = v41;
    }
  }

  objc_msgSend_setTitle_(v67, v29, v9);
  objc_msgSend_setBody_(v67, v62, v12);
  objc_msgSend_setInterruptionLevel_(v67, v63, 2);
  objc_msgSend_setObject_forKey_(Mutable, v64, MEMORY[0x1E695E118], @"CKBBContextKeyIsFailedMessage");
  objc_msgSend_setUserInfo_(v67, v65, Mutable);
}

- (void)_populateTitleForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v88 = a3;
  v8 = a4;
  v9 = a5;
  v11 = objc_msgSend_objectForKey_(v9, v10, @"__kmessageHandleKey");
  v12 = MEMORY[0x1E69A8270];
  v14 = objc_msgSend_objectForKey_(v8, v13, @"__kchatEmergencyUserInfo");
  v87 = objc_msgSend_infoFromDictionary_isStewieTranscriptSharingMessage_(v12, v15, v14, 0);

  if (v11)
  {
    v16 = objc_opt_class();
    v18 = objc_msgSend__addressForHandle_(v16, v17, v11);
    if (objc_msgSend_length(v18, v19, v20))
    {
      v23 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v21, v22);
      v26 = objc_msgSend_stewieEnabled(v23, v24, v25);

      if (v26 && (MEMORY[0x1B8CAF9D0](v18) & 1) != 0)
      {
        v85 = 1;
        v86 = 0;
      }

      else
      {
        v85 = MEMORY[0x1B8CAF990](v18) ^ 1;
        v86 = 1;
      }

      v29 = objc_msgSend_objectForKey_(v9, v27, @"__kmessageCNContactForSenderKey");
      v31 = objc_msgSend__fallbackNameOfChatbotFrom_(self, v30, v8);
      v28 = objc_msgSend__displayNameForHandle_andContact_fallbackName_(self, v32, v11, v29, v31);

      if (v28 && objc_msgSend_length(v28, v33, v34))
      {
        objc_msgSend_setTitle_(v88, v35, v28);
        v38 = objc_msgSend_userInfo(v88, v36, v37);
        Mutable = objc_msgSend_mutableCopy(v38, v39, v40);

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        objc_msgSend_setObject_forKey_(Mutable, v42, v28, @"CKBBContextKeySenderName");
        v82 = Mutable;
        objc_msgSend_setUserInfo_(v88, v43, Mutable);
        v84 = objc_msgSend_objectForKeyedSubscript_(v8, v44, @"__kchatHandlesForChatKey");
        v83 = objc_msgSend_objectForKeyedSubscript_(v9, v45, @"__kmessageThreadOriginatorKey");
        if (objc_msgSend_count(v84, v46, v47) < 2)
        {
          v54 = 0;
        }

        else
        {
          v50 = objc_msgSend_objectForKeyedSubscript_(v8, v48, @"__kchatStyleKey");
          v54 = objc_msgSend_longLongValue(v50, v51, v52) != 45 && (v85 & v86) != 0;
        }

        v58 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v48, v49);
        isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v58, v59, v60);

        if (isTranscriptSharingEnabled)
        {
          v54 &= v87 == 0;
        }

        v63 = objc_msgSend_objectForKey_(v9, v62, @"__kmessageServiceKey");
        isEqualToString = objc_msgSend_isEqualToString_(v63, v64, *MEMORY[0x1E69A7AE0]);

        v67 = objc_msgSend__amIMentionedInMessage_(self, v66, v9);
        if (v54)
        {
          goto LABEL_35;
        }

        if (isEqualToString & 1 | ((v67 & 1) == 0))
        {
          if (!v83)
          {
            goto LABEL_35;
          }

          v69 = objc_msgSend_objectForKey_(v83, v68, @"__kmessageFlagsKey");
          v72 = objc_msgSend_unsignedLongLongValue(v69, v70, v71);

          if ((v72 & 4) == 0)
          {
            goto LABEL_35;
          }

          v73 = @"REPLY_RECEIVED_TITLE";
        }

        else
        {
          v73 = @"MENTION_RECEIVED_TITLE";
        }

        v74 = MEMORY[0x1E696AEC0];
        v75 = IMSharedUtilitiesFrameworkBundle();
        v77 = objc_msgSend_localizedStringForKey_value_table_(v75, v76, v73, &stru_1F2FA9728, @"IMSharedUtilities");
        v79 = objc_msgSend_localizedStringWithFormat_(v74, v78, v77, v28);
        objc_msgSend_setTitle_(v88, v80, v79);

LABEL_35:
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v57 = objc_msgSend_objectForKeyedSubscript_(v9, v56, @"__kmessageGUIDKey");
          *buf = 138412290;
          v90 = v57;
          _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "Unable to create formatted display string for handle from messageGUID %@", buf, 0xCu);
        }
      }

      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
    v18 = 0;
  }

  v81 = *MEMORY[0x1E69E9840];
}

- (void)_populateSoundAndDisplayActivationForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v9 = objc_msgSend_soundWithAlertType_(MEMORY[0x1E6983238], v8, 2);
  v11 = objc_msgSend_objectForKey_(v7, v10, @"__kmessageCNContactForSenderKey");
  v13 = v11;
  if (v11)
  {
    v14 = objc_msgSend_valueForKey_(v11, v12, *MEMORY[0x1E695C3F8]);
    v17 = v14;
    if (v14)
    {
      v18 = objc_msgSend_vibration(v14, v15, v16);
      objc_msgSend_setVibrationIdentifier_(v9, v19, v18);

      v22 = objc_msgSend_sound(v17, v20, v21);
      objc_msgSend_setToneIdentifier_(v9, v23, v22);

      v26 = objc_msgSend_ignoreMute(v17, v24, v25);
      objc_msgSend_setShouldIgnoreRingerSwitch_(v9, v27, v26);
      v30 = objc_msgSend_ignoreMute(v17, v28, v29);
      objc_msgSend_setShouldIgnoreDoNotDisturb_(v6, v31, v30);
      if (objc_msgSend_ignoreMute(v17, v32, v33))
      {
        v34 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_DEFAULT, "ignoreMute is YES. Contact is Emergency Broadcast enabled. Expecting notification to bypass system mute and/or system DND.", &v59, 2u);
        }
      }
    }
  }

  else
  {
    v17 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v59) = 0;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "messageCNContactForSenderKey not found in messageDictionary.", &v59, 2u);
    }
  }

  v36 = objc_msgSend_objectForKey_(v7, v35, @"__kmessageAssociatedMessageGUIDKey");
  v39 = objc_msgSend_length(v36, v37, v38);

  if (v39)
  {
    v41 = objc_msgSend_objectForKey_(v7, v40, @"__kmessageAssociatedMessageTypeKey");
    v44 = objc_msgSend_longLongValue(v41, v42, v43);
    if ((v44 - 2000) <= 5)
    {
      objc_msgSend_setAlertTopic_(v9, v45, **(&unk_1E7CB6EF8 + v44 - 2000));
    }
  }

  objc_msgSend_setShouldSuppressScreenLightUp_(v6, v40, 0);
  objc_msgSend_setSound_(v6, v46, v9);
  v47 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v50 = objc_msgSend_sound(v6, v48, v49);
    if (objc_msgSend_shouldIgnoreDoNotDisturb(v6, v51, v52))
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    shouldSuppressScreenLightUp = objc_msgSend_shouldSuppressScreenLightUp(v6, v53, v54);
    v59 = 138412802;
    if (shouldSuppressScreenLightUp)
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    v60 = v50;
    v61 = 2112;
    v62 = v55;
    v63 = 2112;
    v64 = v57;
    _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_DEFAULT, "Populating sound and display sound %@ ignoreDND %@ suppress screen light up %@", &v59, 0x20u);
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_populateIgnoresDoNotDisturb:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v10 = objc_msgSend_objectForKey_(a4, v9, @"__kchatChatIdentifierKey");
  if (MEMORY[0x1B8CAF9D0]())
  {
    v12 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_objectForKey_(v8, v13, @"__kmessageGUIDKey");
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Chat is flagged as Stewie for message %@ punching through DND", &v22, 0xCu);
    }

    if ((objc_msgSend_hasPrefix_(v10, v15, *MEMORY[0x1E69A7DB0]) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!objc_msgSend_hasPrefix_(v10, v11, *MEMORY[0x1E69A7DB0]))
  {
    goto LABEL_13;
  }

  v16 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_msgSend_objectForKey_(v8, v17, @"__kmessageGUIDKey");
    v22 = 138412290;
    v23 = v18;
    _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Chat is flagged as Stewie TS for message %@ punching through DND", &v22, 0xCu);
  }

LABEL_10:
  v19 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Setting ShouldIgnoreDoNotDisturb = YES", &v22, 2u);
  }

  objc_msgSend_setShouldIgnoreDoNotDisturb_(v7, v20, 1);
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_populateTimeSensitiveOrCriticalForNotificationContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5
{
  v94 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v10 = objc_msgSend_objectForKey_(v8, v9, @"__kmessageFlagsKey");
  v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);

  if ((v13 & 0x8000000000) == 0)
  {
    if (!objc_msgSend__messageIsSOSMapURL_(self, v14, v8))
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v15 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Message has an SOS flag", buf, 2u);
  }

  if (objc_msgSend__messageIsSOSMapURL_(self, v16, v8))
  {
LABEL_7:
    v18 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Message has an SOS URL match", buf, 2u);
    }

    v21 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v19, v20);
    objc_msgSend_trackEvent_(v21, v22, *MEMORY[0x1E69A75B8]);

    v79 = 1;
    goto LABEL_10;
  }

  v79 = 0;
LABEL_10:
  v23 = objc_msgSend_objectForKey_(v8, v17, @"__kmessageFlagsKey");
  v26 = objc_msgSend_unsignedLongLongValue(v23, v24, v25) & 0x4000000000;

  sub_1B7B124D4(v27, v28, v29);
  v30 = objc_opt_respondsToSelector();
  v80 = v8;
  if (v30)
  {
    v33 = sub_1B7B124D4(v30, v31, v32);
    isSOSMessagesUrgentAlertingEnabled = objc_msgSend_isSOSMessagesUrgentAlertingEnabled(v33, v34, v35);
    v38 = objc_msgSend__messageIsFromKnownContact_(self, v37, v8);
    v41 = v38;
    v42 = 1;
    v43 = 2;
    if (v26 && isSOSMessagesUrgentAlertingEnabled && v38)
    {
      if (objc_msgSend_realertCount(v7, v39, v40) >= 4)
      {
        v46 = objc_msgSend_realertCount(v7, v44, v45);
        objc_msgSend_setRealertCount_(v7, v47, v46);
      }

      else
      {
        objc_msgSend_setRealertCount_(v7, v44, 4);
      }

      v42 = 0;
      v78 = 1;
      v43 = 3;
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    v41 = objc_msgSend__messageIsFromKnownContact_(self, v31, v8);
    isSOSMessagesUrgentAlertingEnabled = 0;
    v78 = 0;
    v42 = 1;
    v43 = 2;
  }

  v48 = IMDNotificationsControllerLogHandle();
  v81 = v7;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v51 = objc_msgSend_realertCount(v7, v49, v50);
    *buf = 67110144;
    v85 = v26 >> 38;
    v86 = 1024;
    v87 = isSOSMessagesUrgentAlertingEnabled;
    v88 = 1024;
    v89 = v41;
    v90 = 2048;
    v91 = v43;
    v92 = 2048;
    v93 = v51;
    _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_DEFAULT, "SOS Message - hasCriticalFlag:%{BOOL}d, prefEnabled:%{BOOL}d, isFromContact:%{BOOL}d => interruptionLevel:%tu, realertCount:%tu", buf, 0x28u);
  }

  v52 = (v13 >> 39) & 1;

  objc_msgSend_setInterruptionLevel_(v7, v53, v43);
  v56 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v54, v55);
  v77 = *MEMORY[0x1E69A75A0];
  v82[0] = @"markedSOS";
  v58 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v57, v52);
  v83[0] = v58;
  v82[1] = @"markedCritical";
  v60 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v59, v26 != 0);
  v83[1] = v60;
  v82[2] = @"sosMapURL";
  v62 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v61, v79);
  v83[2] = v62;
  v82[3] = @"sosCriticalPrefEnabled";
  v64 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v63, isSOSMessagesUrgentAlertingEnabled);
  v83[3] = v64;
  v82[4] = @"receivedFromContact";
  v66 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v65, v41);
  v83[4] = v66;
  v82[5] = @"interruptionLevel";
  v68 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v67, v43);
  v83[5] = v68;
  v82[6] = @"interruptionLevelTimeSensitive";
  v70 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v69, v42);
  v83[6] = v70;
  v82[7] = @"interruptionLevelCritical";
  v72 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v71, v78);
  v83[7] = v72;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v73, v83, v82, 8);
  objc_msgSend_trackEvent_withDictionary_(v56, v75, v77, v74);

  v7 = v81;
  v8 = v80;
LABEL_23:

  v76 = *MEMORY[0x1E69E9840];
}

- (BOOL)_messageIsSOSMapURL:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x1E69A7AE0]);

  if (isEqualToString)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"__kmessageTextKey");
    v12 = objc_msgSend_im_matchesSOSMapURL(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isFromChatBotNotOTC:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"__kmessageBalloonBundleIDKey");
  if (objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x1E69A68F0]))
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v3, v7, @"__kmessageAttributedBodyKey");
    v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"__kmessageGUIDKey");
    v11 = v10;
    v12 = 1;
    if (!v8 || !v10)
    {
      goto LABEL_12;
    }

    v13 = objc_alloc_init(MEMORY[0x1E69A81B0]);
    OTCFromMessageBody_sender_guid = objc_msgSend_createOTCFromMessageBody_sender_guid_(v13, v14, v8, @"sender", v11);

    v12 = OTCFromMessageBody_sender_guid == 0;
    v16 = IMDNotificationsControllerLogHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (OTCFromMessageBody_sender_guid)
    {
      if (v17)
      {
        v21 = 138412290;
        v22 = v11;
        v18 = "message %@ is from a chat bot and is OTC";
LABEL_10:
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, v18, &v21, 0xCu);
      }
    }

    else if (v17)
    {
      v21 = 138412290;
      v22 = v11;
      v18 = "message %@ is from a chat bot but is not OTC";
      goto LABEL_10;
    }

LABEL_12:
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_populateUserInfoOnContentForWatch:(id)a3 messageDictionary:(id)a4 chatDictionary:(id)a5 isCarouselUITriggered:(BOOL)a6
{
  v138[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (objc_msgSend_isFromChatBotNotOTC_(self, v12, v10))
  {
    goto LABEL_61;
  }

  v15 = objc_msgSend_userInfo(v9, v13, v14);
  Mutable = objc_msgSend_mutableCopy(v15, v16, v17);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v20 = objc_msgSend_objectForKey_(v10, v19, @"__kmessageGUIDKey");
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"CKBBContextKeyMessageGUID", v20);
  }

  v22 = objc_msgSend_objectForKey_(v11, v21, @"__kchatChatIdentifierKey");
  if (v22)
  {
    CFDictionarySetValue(Mutable, @"CKBBUserInfoKeyChatIdentifier", v22);
  }

  v24 = objc_msgSend_objectForKey_(v11, v23, @"__kchatChatGUIDKey");

  if (v24)
  {
    v26 = objc_msgSend_objectForKey_(v11, v25, @"__kchatChatGUIDKey");
    v138[0] = v26;
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v138, 1);

    v29 = v28;
    if (v29)
    {
      v30 = v29;
      CFDictionarySetValue(Mutable, @"CKBBContextKeyChatGUIDs", v29);
    }
  }

  v31 = objc_msgSend_objectForKey_(v11, v25, @"__kchatStyleKey");
  if (objc_msgSend_integerValue(v31, v32, v33) == 43)
  {
    v35 = objc_msgSend_objectForKey_(v11, v34, @"__kchatGroupIDKey");
    if (v35)
    {
      CFDictionarySetValue(Mutable, @"CKBBContextKeyChatGroupID", v35);
    }
  }

  else
  {
    v35 = objc_msgSend_objectForKey_(v10, v34, @"__kmessageCNContactForSenderKey");
    v38 = objc_msgSend_identifier(v35, v36, v37);
    if (v38)
    {
      CFDictionarySetValue(Mutable, @"CKBBContextKeySenderPersonCentricID", v38);
    }
  }

  v40 = objc_msgSend_objectForKey_(v10, v39, @"__kmessageAssociatedMessageGUIDKey");
  v43 = objc_msgSend_length(v40, v41, v42);

  if (v43)
  {
    v45 = objc_msgSend_objectForKey_(v10, v44, @"__kmessageAssociatedMessageTypeKey");
    v48 = objc_msgSend_longLongValue(v45, v46, v47);
    if ((v48 & 0xFFFFFFFFFFFFFFF8) == 0x7D0)
    {
      objc_msgSend_setObject_forKey_(Mutable, v49, MEMORY[0x1E695E118], @"CKBBContextKeyIsAcknowledgment");
    }

    else if (v48 == 1000)
    {
      objc_msgSend_setObject_forKey_(Mutable, v49, MEMORY[0x1E695E118], @"CKBBContextKeyIsSticker");
    }
  }

  v50 = objc_msgSend_objectForKey_(v10, v44, @"__kmessageBalloonBundleIDKey");
  if (objc_msgSend_length(v50, v51, v52))
  {
    objc_msgSend_setObject_forKey_(Mutable, v53, MEMORY[0x1E695E118], @"CKBBContextKeyIsBalloonPluginBulletin");
    objc_msgSend_setObject_forKey_(Mutable, v54, v50, @"CKBBContextKeyBalloonBundleID");
  }

  v55 = objc_msgSend_objectForKey_(v10, v53, @"__kmessageExpressiveSendStyleIDKey");
  if (objc_msgSend_containsString_(v55, v56, *MEMORY[0x1E69A7080]))
  {
  }

  else
  {
    v59 = objc_msgSend_objectForKey_(v10, v57, @"__kmessageExpressiveSendStyleIDKey");
    v61 = objc_msgSend_containsString_(v59, v60, *MEMORY[0x1E69A7028]);

    if (!v61)
    {
      v64 = 0;
      goto LABEL_30;
    }
  }

  v62 = objc_msgSend_objectForKey_(v10, v58, @"__kmessageExpressiveSendStyleIDKey");
  objc_msgSend_setObject_forKey_(Mutable, v63, v62, @"CKBBContextKeyEffectIdentifier");

  v64 = 1;
LABEL_30:
  v65 = objc_msgSend_objectForKey_(v10, v58, @"__kmessageAttachmentsKey");
  if (objc_msgSend_count(v65, v66, v67))
  {
    v117 = v50;
    v118 = v31;
    v119 = self;
    v121 = v11;
    v122 = v10;
    if (v64)
    {
      objc_msgSend_setObject_forKey_(Mutable, v68, MEMORY[0x1E695E118], @"CKBBContextKeyIsAttachmentWithEffectBulletin");
    }

    v123 = v9;
    v70 = objc_msgSend_body(v9, v68, v69);
    v120 = Mutable;
    objc_msgSend_setObject_forKey_(Mutable, v71, v70, @"CKBBContentKeyAttachmentSummary");

    v72 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v116 = v65;
    v73 = v65;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v131, v137, 16);
    if (v75)
    {
      v78 = v75;
      v79 = *v132;
      v125 = *MEMORY[0x1E69A83C0];
      v124 = *MEMORY[0x1E69A83B0];
      v126 = *MEMORY[0x1E69A83B8];
      v127 = *MEMORY[0x1E69A83A8];
      v128 = *MEMORY[0x1E69A8408];
      v129 = *MEMORY[0x1E69A8418];
      v130 = *MEMORY[0x1E69A8410];
      v80 = *MEMORY[0x1E69A8400];
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v132 != v79)
          {
            objc_enumerationMutation(v73);
          }

          v82 = objc_msgSend_utiString(*(*(&v131 + 1) + 8 * i), v76, v77);
          IsImage = IMUTTypeIsImage();
          v84 = v80;
          if ((IsImage & 1) == 0)
          {
            IsMovie = IMUTTypeIsMovie();
            v84 = v130;
            if ((IsMovie & 1) == 0)
            {
              IsPass = IMUTTypeIsPass();
              v84 = v129;
              if ((IsPass & 1) == 0)
              {
                IsMap = IMUTTypeIsMap();
                v84 = v128;
                if ((IsMap & 1) == 0)
                {
                  IsAudio = IMUTTypeIsAudio();
                  v84 = v127;
                  if ((IsAudio & 1) == 0)
                  {
                    IsVCard = IMUTTypeIsVCard();
                    v84 = v126;
                    if ((IsVCard & 1) == 0)
                    {
                      IsCalendar = IMUTTypeIsCalendar();
                      v84 = v125;
                      if (IsCalendar)
                      {
                        v84 = v124;
                      }
                    }
                  }
                }
              }
            }
          }

          v92 = v84;
          if (v92)
          {
            v93 = objc_msgSend_objectForKey_(v72, v91, v92);
            v96 = v93;
            if (v93)
            {
              v97 = MEMORY[0x1E696AD98];
              v98 = objc_msgSend_unsignedIntegerValue(v93, v94, v95);
              v100 = objc_msgSend_numberWithUnsignedInteger_(v97, v99, v98 + 1);
              objc_msgSend_setObject_forKey_(v72, v101, v100, v92);
            }

            else
            {
              objc_msgSend_setObject_forKey_(v72, v94, &unk_1F2FCA260, v92);
            }
          }
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v131, v137, 16);
      }

      while (v78);
    }

    Mutable = v120;
    if (objc_msgSend_count(v72, v102, v103))
    {
      v106 = MEMORY[0x1E696AD98];
      v107 = objc_msgSend_count(v73, v104, v105);
      v109 = objc_msgSend_numberWithUnsignedInteger_(v106, v108, v107);
      objc_msgSend_setObject_forKey_(v120, v110, v109, @"CKBBContentKeyAttachmentCount");

      objc_msgSend_setObject_forKey_(v120, v111, v72, @"CKBBContentKeyCountByAttachmentType");
    }

    v10 = v122;
    v9 = v123;
    v11 = v121;
    v31 = v118;
    self = v119;
    v65 = v116;
    v50 = v117;
  }

  if (objc_msgSend__amIMentionedInMessage_(self, v68, v10))
  {
    objc_msgSend_setObject_forKey_(Mutable, v112, MEMORY[0x1E695E118], @"messageMentionsMe");
  }

  v113 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v136 = Mutable;
    _os_log_impl(&dword_1B7AD5000, v113, OS_LOG_TYPE_DEFAULT, "Set userInfo for dictionaries %@", buf, 0xCu);
  }

  objc_msgSend_setUserInfo_(v9, v114, Mutable);
LABEL_61:

  v115 = *MEMORY[0x1E69E9840];
}

- (void)_populateUserInfoForMessageContent:(id)a3 messageDictionary:(id)a4 messageIsAddressedToMe:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_userInfo(v6, v7, v8);
  Mutable = objc_msgSend_mutableCopy(v9, v10, v11);

  if (Mutable)
  {
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5)
  {
LABEL_3:
    objc_msgSend_setObject_forKey_(Mutable, v13, MEMORY[0x1E695E118], @"messageIsAddressedToMe");
  }

LABEL_4:
  v14 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = Mutable;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Set userInfo for message content dictionaries %@", &v17, 0xCu);
  }

  objc_msgSend_setUserInfo_(v6, v15, Mutable);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_populateAttachmentsForNotificationContent:(id)a3 messageDictionary:(id)a4 messageRecord:(id)a5 knownSender:(BOOL)a6
{
  v121 = a6;
  v146 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v8 = a4;
  v109 = a5;
  v111 = v8;
  v110 = objc_msgSend_objectForKey_(v8, v9, @"__kmessageAttributedBodyKey");
  if ((objc_msgSend___im_isRichCardsOrSuggestedReply(v110, v10, v11) & 1) == 0)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v8, v12, @"__kmessageExpressiveSendStyleIDKey");

    if (!v13 || (objc_msgSend_objectForKeyedSubscript_(v8, v14, @"__kmessageExpressiveSendStyleIDKey"), v15 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x1E69A7088]), v15, (isEqualToString & 1) == 0))
    {
      v18 = objc_msgSend_objectForKeyedSubscript_(v111, v14, @"__kmessageAttachmentsKey");
      v114 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20);
      v125 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v21, v22);
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      obj = v18;
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v131, v145, 16);
      if (v126)
      {
        v112 = 0;
        v26 = 0;
        v124 = *v132;
        inConformsToUTI = *MEMORY[0x1E6963788];
        v116 = *MEMORY[0x1E69833D8];
        do
        {
          for (i = 0; i != v126; ++i)
          {
            if (*v132 != v124)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v131 + 1) + 8 * i);
            inUTI = objc_msgSend_utiString(v28, v24, v25);
            v31 = objc_msgSend_path(v28, v29, v30);
            v34 = objc_msgSend_guid(v28, v32, v33);
            v37 = objc_msgSend_transferState(v28, v35, v36);
            objc_msgSend_setObject_forKeyedSubscript_(v125, v38, v28, v34);
            if (objc_msgSend_length(v31, v39, v40))
            {
              v43 = v37 == 5;
            }

            else
            {
              v43 = 0;
            }

            if (v43)
            {
              v44 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v41, v31, 0);
              v45 = UTTypeConformsTo(inUTI, inConformsToUTI);
              if (!v26)
              {
                if (v45)
                {
                  v117 = IMPreviewCachesDirectoryWithAttachmentURL();
                  v118 = objc_msgSend_lastPathComponent(v44, v46, v47);
                  v49 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v117, v48, v118, 0);
                  v119 = objc_msgSend_URLByAppendingPathExtension_(v49, v50, @"plist");

                  v130 = 0;
                  v52 = objc_msgSend_dictionaryWithContentsOfURL_error_(MEMORY[0x1E695DF20], v51, v119, &v130);
                  v53 = v130;
                  v54 = IMDNotificationsControllerLogHandle();
                  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
                  v115 = v53;
                  if (v52)
                  {
                    if (v55)
                    {
                      *buf = 138412290;
                      v136 = v119;
                      _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_DEFAULT, "Successfully loaded contact plist at: %@", buf, 0xCu);
                    }

                    v57 = objc_msgSend_objectForKeyedSubscript_(v52, v56, @"contactFormatterTitle");
                    v59 = objc_msgSend_objectForKeyedSubscript_(v52, v58, @"organizationNameTitle");
                    if (objc_msgSend_length(v59, v60, v61))
                    {
                      v63 = v59;

                      v57 = v63;
                    }

                    v54 = objc_msgSend__truncateNameIfNeeded_(IMDNotificationsController, v62, v57);

                    if (v54)
                    {
                      objc_msgSend_setBody_(v113, v64, v54);
                      v112 = 1;
                    }

                    v26 = v28;
                  }

                  else
                  {
                    if (v55)
                    {
                      *buf = 138412546;
                      v136 = v119;
                      v137 = 2112;
                      v138 = v53;
                      _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_DEFAULT, "Failed to load contact plist at: %@ (error: %@)", buf, 0x16u);
                    }

                    v26 = 0;
                  }
                }

                else
                {
                  v26 = 0;
                }
              }
            }

            if (objc_msgSend_length(v31, v41, v42) != 0 && v37 == 5)
            {
              v66 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v65, v31, 0);
              v68 = objc_msgSend__notificationsSafePreviewFileURLForTransferURL_utiType_knownSender_(self, v67, v66, inUTI, v121);
              isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v28, v69, v70);
              isAdaptiveImageGlyph = objc_msgSend_isAdaptiveImageGlyph(v28, v72, v73);
              if (IMOSLoggingEnabled())
              {
                v76 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                {
                  v78 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v77, isCommSafetySensitive);
                  *buf = 138412290;
                  v136 = v78;
                  _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "CommSafety Sensitive value on the record: %@", buf, 0xCu);
                }
              }

              if ((v68 == 0) | (isCommSafetySensitive | isAdaptiveImageGlyph) & 1)
              {
                if (IMOSLoggingEnabled())
                {
                  v79 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v136 = v66;
                    _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "We didn't generate a previewFileURL for transfer %@ to generate a notification preview", buf, 0xCu);
                  }
                }
              }

              else
              {
                v143 = v116;
                v144 = @"public.jpeg";
                v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v75, &v144, &v143, 1);
                v129 = 0;
                v85 = objc_msgSend_attachmentWithIdentifier_URL_options_error_(MEMORY[0x1E6983268], v84, v34, v68, v83, &v129);
                v86 = v129;
                v87 = IMDNotificationsControllerLogHandle();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v136 = v68;
                  v137 = 2112;
                  v138 = v66;
                  v139 = 2112;
                  v140 = v85;
                  v141 = 2112;
                  v142 = v86;
                  _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_DEFAULT, "generated previewfile url %@ for transfer %@ as unnotificationattachment %@ with error %@", buf, 0x2Au);
                }

                if (v85)
                {
                  objc_msgSend_addObject_(v114, v88, v85);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v80 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
              {
                v82 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v81, v37);
                *buf = 138412802;
                v136 = v31;
                v137 = 2112;
                v138 = v82;
                v139 = 2112;
                v140 = v34;
                _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Filename was null (%@) or transfer state was not finished (%@) for file transfer %@ -- did not generate attachment preview", buf, 0x20u);
              }
            }
          }

          v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v131, v145, 16);
        }

        while (v126);
      }

      else
      {
        v112 = 0;
        v26 = 0;
      }

      v91 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v109, 0, 1, 0);
      if (v91)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = objc_msgSend_objectForKey_(v111, v89, @"__kmessageHandleKey");
          v94 = objc_msgSend_objectForKey_(v111, v93, @"__kmessageCNContactForSenderKey");
          v96 = objc_msgSend__displayNameForHandle_andContact_(self, v95, v92, v94);
          v98 = objc_msgSend_firstNameForCNContact_(MEMORY[0x1E69A7FD0], v97, v94);
          if (!objc_msgSend_length(v98, v99, v100))
          {
            v101 = v96;

            v98 = v101;
          }

          v128 = v125;
          v102 = IMSharedMessageSummaryCreateWithShortName();
          v105 = v102;
          if ((v112 & 1) == 0 && objc_msgSend_length(v102, v103, v104))
          {
            objc_msgSend_setBody_(v113, v106, v105);
          }
        }
      }

      if (objc_msgSend_count(v114, v89, v90))
      {
        objc_msgSend_setAttachments_(v113, v107, v114);
      }
    }
  }

  v108 = *MEMORY[0x1E69E9840];
}

+ (int)validateAlertCount:(int)a3
{
  if (a3 > 0xB)
  {
    return 2;
  }

  else
  {
    return dword_1B7D09430[a3];
  }
}

+ (int)reminderAlertCount
{
  result = dword_1EDBE1D60;
  if (dword_1EDBE1D60 == -1)
  {
    if ((byte_1EDBE5C40 & 1) == 0)
    {
      byte_1EDBE5C40 = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1B7B13CAC, @"com.apple.MobileSMS.IncomingMessageAlertCount.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    keyExistsAndHasValidFormat = 0;
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IncomingMessageAlertCount", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat == 1)
    {
      result = objc_msgSend_validateAlertCount_(a1, v6, AppIntegerValue);
    }

    else
    {
      result = 2;
    }

    dword_1EDBE1D60 = result;
  }

  return result;
}

- (void)_populateRealertCountForNotificationContent:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_reminderAlertCount(v4, v5, v6) - 1;
    v8 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Setting repeat alert count to %d", v11, 8u);
    }

    objc_msgSend_setRealertCount_(v3, v9, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_messageShouldBeSpoken:(id)a3 chatDictionary:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_objectForKey_(v6, v8, @"__kmessageHandleKey");
  if (v10)
  {
    if (objc_msgSend__chatIsMuted_(self, v9, v7))
    {
      v12 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Chat has isMuted set %@, not marking as spoken message allowlisted", &v16, 0xCu);
      }

      LOBYTE(IsSpokenMessageAllowlisted_chat_message) = 0;
    }

    else
    {
      IsSpokenMessageAllowlisted_chat_message = objc_msgSend__handleIsSpokenMessageAllowlisted_chat_message_(self, v11, v10, v7, v6);
      v12 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v10;
        v18 = 1024;
        v19 = IsSpokenMessageAllowlisted_chat_message;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Contact %@ isSpokenMessageAllowlisted: %d", &v16, 0x12u);
      }
    }
  }

  else
  {
    LOBYTE(IsSpokenMessageAllowlisted_chat_message) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return IsSpokenMessageAllowlisted_chat_message;
}

- (BOOL)_UTITypeMightBeAnimated:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && (UTTypeConformsTo(v3, *MEMORY[0x1E69637D8]) || UTTypeConformsTo(v4, *MEMORY[0x1E6963860]));

  return v5;
}

- (id)_notificationsSafePreviewFileURLForTransferURL:(id)a3 utiType:(id)a4 knownSender:(BOOL)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = IMPreviewExtension();
  v10 = IMAttachmentPreviewFileURL();

  if (!v10)
  {
    goto LABEL_16;
  }

  if (objc_msgSend__UTITypeMightBeAnimated_(self, v11, v7) && objc_msgSend_imagePreviewIsMultiFrameAtFileURL_(self, v12, v10))
  {
    v14 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "The image is animated - lets copy the first frame", buf, 2u);
    }

    v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16);
    v20 = objc_msgSend_lastPathComponent(v10, v18, v19);
    v22 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v17, v21, v20);

    if (v22)
    {
      if (objc_msgSend_copyFirstFrameOfMultiFrameImageAtFileURL_toFileURL_(self, v23, v10, v22))
      {
        goto LABEL_21;
      }

      v24 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED010();
      }
    }

    else
    {
      v24 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED04C();
      }
    }

    v22 = 0;
    goto LABEL_20;
  }

  v25 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13);
  v28 = objc_msgSend_path(v10, v26, v27);
  v30 = objc_msgSend_fileExistsAtPath_(v25, v29, v28);

  if (!v30)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_21;
  }

  v31 = IMSafeTemporaryDirectory();
  v34 = objc_msgSend_path(v31, v32, v33);
  v37 = objc_msgSend_lastPathComponent(v10, v35, v36);
  v39 = objc_msgSend_stringByAppendingPathComponent_(v34, v38, v37);

  v22 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v40, v39, 0);
  v43 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v41, v42);
  v48 = 0;
  objc_msgSend_copyItemAtURL_toURL_error_(v43, v44, v10, v22, &v48);
  v24 = v48;

  if (v24)
  {
    v45 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v24;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_DEFAULT, "Error when copy preview image: [%@]", buf, 0xCu);
    }
  }

LABEL_20:
LABEL_21:

  v46 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)_handleIsSpokenMessageAllowlisted:(id)a3 chat:(id)a4 message:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  MessagesSpokenAllowlistLevel = objc_msgSend__getMessagesSpokenAllowlistLevel_(self, v9, 0);
  v11 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 134217984;
    v38 = *&MessagesSpokenAllowlistLevel;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "SpokenMessageAllowlistLevel: %lu", &v37, 0xCu);
  }

  if (MessagesSpokenAllowlistLevel == 3)
  {
LABEL_9:
    isDateInYesterday = 1;
    goto LABEL_23;
  }

  if (MessagesSpokenAllowlistLevel != 2)
  {
    if (MessagesSpokenAllowlistLevel != 1 && objc_msgSend__messageIsFromKnownContact_(self, v12, v8))
    {
      if (MessagesSpokenAllowlistLevel == 4)
      {
        isDateInYesterday = objc_msgSend__messageIsFromFavorite_(self, v13, v8);
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v15 = objc_msgSend_objectForKey_(v7, v12, @"__kchatLastMessageTimestamp");
  v18 = objc_msgSend_longLongValue(v15, v16, v17);

  v19 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 134217984;
    v38 = v18;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Last message timestamp: %f", &v37, 0xCu);
  }

  if (!v18)
  {
    v29 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_valueForKey_(v7, v30, @"__kchatChatGUIDKey");
      v37 = 138412290;
      v38 = *&v31;
      _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_DEFAULT, "Missing last read date for chatID %@", &v37, 0xCu);
    }

LABEL_20:
    isDateInYesterday = 0;
    goto LABEL_23;
  }

  v22 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v20, v21, v18);
  v23 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = *&v22;
    _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Last message date: %@", &v37, 0xCu);
  }

  v26 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v24, v25);
  if (objc_msgSend_isDateInToday_(v26, v27, v22))
  {
    isDateInYesterday = 1;
  }

  else
  {
    isDateInYesterday = objc_msgSend_isDateInYesterday_(v26, v28, v22);
  }

LABEL_23:
  v32 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_valueForKey_(v8, v33, @"__kmessageGUIDKey");
    v37 = 138412546;
    v38 = *&v34;
    v39 = 1024;
    v40 = isDateInYesterday;
    _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "Message: %@ is spoken message allowlisted: %d", &v37, 0x12u);
  }

  v35 = *MEMORY[0x1E69E9840];
  return isDateInYesterday;
}

- (unint64_t)_getSpokenMessageAllowlistLevelVersion
{
  v3 = objc_msgSend_defaultsSharedInstance(self, a2, v2);
  v5 = objc_msgSend_getValueFromDomain_forKey_(v3, v4, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevelVersion");
  v8 = objc_msgSend_unsignedIntegerValue(v5, v6, v7);

  return v8;
}

- (void)_setSpokenMessageAllowlistLevelVersion:(unint64_t)a3
{
  v7 = objc_msgSend_defaultsSharedInstance(self, a2, a3);
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, a3);
  objc_msgSend_setValue_forDomain_forKey_(v7, v6, v5, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevelVersion");
}

- (id)_lastMessageTimeForChat:(id)a3
{
  v3 = objc_msgSend__lastTwoMessagesForChat_(self, a2, a3);
  if (objc_msgSend_count(v3, v4, v5) == 2)
  {
    v8 = objc_msgSend_firstObject(v3, v6, v7);
    v11 = objc_msgSend_date(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_lastTwoMessagesForChat:(id)a3
{
  v3 = IMDChatRecordCopyMessagesWithLimit(a3, 2);

  return v3;
}

- (BOOL)_messageIsFromFavorite:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v4, v5);
  v8 = objc_msgSend_objectForKey_(v3, v7, @"__kmessageCNContactForSenderKey");

  LOBYTE(v3) = objc_msgSend_isCNContactFavorited_(v6, v9, v8);
  return v3;
}

- (unint64_t)_getMessagesSpokenAllowlistLevel:(BOOL *)a3
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"kSpokenMessageWhitelistLevel", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (a3)
  {
    *a3 = keyExistsAndHasValidFormat == 0;
  }

  return result;
}

- (void)_setMessagesSpokenAllowlistLevelInPreferences:(unint64_t)a3
{
  v7 = objc_msgSend_defaultsSharedInstance(self, a2, a3);
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, a3);
  objc_msgSend_setValue_forDomain_forKey_(v7, v6, v5, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevel");
}

+ (id)_truncateNameIfNeeded:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5) >= 0xC9)
  {
    v7 = objc_msgSend_substringWithRange_(v3, v6, 0, 200);
  }

  return v7;
}

+ (id)_addressBookNameForAddress:(id)a3 orContact:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    goto LABEL_7;
  }

  v10 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "We don't have a contact to use. Fetching one", &v20, 2u);
  }

  v13 = objc_msgSend__stripFZIDPrefix(v6, v11, v12);
  v9 = objc_msgSend__IMDCoreSpotlightCNContactForAddress_(a1, v14, v13);
  v15 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v13;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Stripped address: %@, contactToUse: %@", &v20, 0x16u);
  }

  if (v9)
  {
LABEL_7:
    v16 = objc_msgSend_displayNameForContact_(MEMORY[0x1E69A7FD0], v7, v9);
    v17 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Contact to use valid. AddressBookName : %@", &v20, 0xCu);
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_addressForHandle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_canonicalizedURIString(v4, v5, v6);
  v10 = v7;
  if (!v7 || !objc_msgSend_length(v7, v8, v9))
  {
    v11 = objc_msgSend__uncanonicalizedAddressForHandle_(a1, v8, v4);

    v10 = v11;
  }

  return v10;
}

+ (id)_displayNameForHandle:(id)a3 andContact:(id)a4 businessNameManager:(id)a5 suggestionProvider:(id)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v16 = objc_msgSend__addressForHandle_(v14, v15, v10);
  v19 = objc_msgSend_im_stripCategoryLabel(v16, v17, v18);

  if (objc_msgSend_hasSuffix_(v19, v20, *MEMORY[0x1E69A6EA0]))
  {
    v23 = IMSharedUtilitiesFrameworkBundle();
    v25 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v21, v22);
  v29 = objc_msgSend_stewieEnabled(v26, v27, v28);

  if (v29)
  {
    if (IMIsStringStewieEmergency())
    {
      v32 = IMSharedUtilitiesFrameworkBundle();
      objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"STEWIE_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
      goto LABEL_7;
    }

    if (IMIsStringStewieRoadside())
    {
      v35 = objc_msgSend__database(a1, v30, v31);
      v37 = objc_msgSend_chatRecordsWithIdentifier_(v35, v36, v19);
      v32 = objc_msgSend_firstObject(v37, v38, v39);

      if (v32)
      {
        v41 = objc_msgSend__displayNameForChatRecord_(a1, v40, v32);

        v25 = v41;
      }

      if (v25)
      {
        goto LABEL_12;
      }

      v25 = IMSharedUtilitiesFrameworkBundle();
      objc_msgSend_localizedStringForKey_value_table_(v25, v81, @"STEWIE_NOTIFICATION_ROADSIDE_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-Avocet");
      v34 = LABEL_7:;

      v25 = v34;
LABEL_12:
    }
  }

  if (!objc_msgSend_length(v25, v30, v31) && ((MEMORY[0x1B8CAF990](v19) & 1) != 0 || objc_msgSend___im_isChatBot(v19, v44, v45)))
  {
    v46 = objc_opt_class();
    v48 = objc_msgSend__displayNameForBusinessChatAddress_businessNameManager_(v46, v47, v19, v12);

    v25 = v48;
  }

  if (!objc_msgSend_length(v25, v42, v43) && (!v11 || objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v49, v11)))
  {
    v50 = objc_opt_class();
    v52 = objc_msgSend__addressBookNameForAddress_orContact_(v50, v51, v19, v11);

    v25 = v52;
  }

  v53 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v82 = 138412802;
    v83 = v19;
    v84 = 2112;
    v85 = v25;
    v86 = 2112;
    v87 = v11;
    _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_DEFAULT, "Address: %@, displayName = %@. Contact = %@", &v82, 0x20u);
  }

  v56 = objc_msgSend_length(v25, v54, v55);
  if (v13 && !v56)
  {
    v59 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v82) = 0;
      _os_log_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_DEFAULT, "We don't have an address book name, so going to try and suggest a name", &v82, 2u);
    }

    v60 = v13[2](v13, v19);

    v25 = v60;
  }

  if (!objc_msgSend_length(v25, v57, v58))
  {
    v61 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v82) = 0;
      _os_log_impl(&dword_1B7AD5000, v61, OS_LOG_TYPE_DEFAULT, "Defaulting to the handle for the display name", &v82, 2u);
    }

    v62 = objc_opt_class();
    v64 = objc_msgSend__countryCodeForHandle_(v62, v63, v10);
    v65 = objc_opt_class();
    v67 = objc_msgSend__formattedDisplayStringForAddress_countryCode_(v65, v66, v19, v64);

    v68 = objc_opt_class();
    v70 = objc_msgSend__uncanonicalizedAddressForHandle_(v68, v69, v10);
    v73 = objc_msgSend_lowercaseString(v70, v71, v72);
    isEqualToString = objc_msgSend_isEqualToString_(v67, v74, v73);

    if (isEqualToString)
    {
      v76 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v82) = 0;
        _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_DEFAULT, "Handle display name is equal to lowercase uncanonicalized address, falling back to preserve case", &v82, 2u);
      }

      v77 = v70;
      v67 = v77;
    }

    v25 = v67;
  }

  v78 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v82 = 138412290;
    v83 = v25;
    _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_DEFAULT, "Display name = %@", &v82, 0xCu);
  }

  v79 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_isChatbotChat:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A7870]);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_objectForKey_(v3, v5, *MEMORY[0x1E69A6A60]);
    v7 = v8 != 0;
  }

  return v7;
}

- (id)_fallbackNameOfChatbotFrom:(id)a3
{
  v4 = a3;
  if (objc_msgSend__isChatbotChat_(self, v5, v4))
  {
    v7 = objc_msgSend_objectForKey_(v4, v6, @"__kchatGroupNameKey");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_displayNameForHandle:(id)a3 andContact:(id)a4 fallbackName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v14 = objc_msgSend_businessNameManager(self, v12, v13);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B7B15368;
  v19[3] = &unk_1E7CB6CF8;
  v19[4] = self;
  v20 = v8;
  v15 = v8;
  v17 = objc_msgSend__displayNameForHandle_andContact_businessNameManager_suggestionProvider_(v11, v16, v10, v9, v14, v19);

  return v17;
}

- (id)_displayNameForHandle:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_contactForHandleRecord_(self, v5, v4);
  v8 = objc_msgSend__displayNameForHandle_andContact_(self, v7, v4, v6);

  return v8;
}

- (id)_nicknameDisplayNameForID:(id)a3
{
  v3 = _IMDCoreSpotlightNicknameForAddress(a3);
  v4 = _IMDContactNameForNickname(v3, 1);

  return v4;
}

+ (id)_displayNameForBusinessChatAddress:(id)a3 businessNameManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1B7AE18F4;
  v29 = sub_1B7AE2470;
  v30 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7B15720;
  v22[3] = &unk_1E7CB6D20;
  v24 = &v25;
  v8 = v7;
  v23 = v8;
  v10 = objc_msgSend_businessNameForUID_updateHandler_(v6, v9, v5, v22);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
LABEL_3:
    v13 = v12;
    goto LABEL_12;
  }

  v14 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v8, v14))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Business name lookup timed out", v21, 2u);
      }
    }
  }

  else
  {
    v16 = v26[5];
    if (v16)
    {
      v12 = v16;
      goto LABEL_3;
    }
  }

  v17 = IMSharedUtilitiesFrameworkBundle();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, @"BUSINESS_NOTIFICATION_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");

LABEL_12:
  v19 = v13;

  _Block_object_dispose(&v25, 8);

  return v19;
}

- (BOOL)_filteringSettingConfirmed
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = IMSharedHelperDeviceIsiPad();
  v6 = objc_msgSend_defaultsSharedInstance(self, v4, v5);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v6, v7, @"com.apple.carrier", @"ShowMessagesConversationListFilteringPrompt");

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v11 = objc_msgSend_IMMessagesFilteringSettingForPreferedSubscription(MEMORY[0x1E69A7F58], v9, v10);
  }

  else
  {
    v11 = v3 | BoolFromDomain_forKey;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v3)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      if (v11)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = 138412802;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      if (BoolFromDomain_forKey)
      {
        v15 = @"YES";
      }

      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, " deviceIsiPad %@ allowPromptToConfirmSetting %@ carrier setting %@", &v23, 0x20u);
    }
  }

  if (v11)
  {
    v18 = objc_msgSend_defaultsSharedInstance(self, v12, v13);
    v20 = objc_msgSend_getBoolFromDomain_forKey_(v18, v19, @"com.apple.MobileSMS", @"MessageFilteringSettingsConfirmed");
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_deviceIsElgibileToBeForcedIntoFilteringUnknownSenders
{
  IsEligibleToBeForcedIntoFilteringUnknownSender = objc_msgSend_IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender(MEMORY[0x1E69A8020], a2, v2);
  if (IsEligibleToBeForcedIntoFilteringUnknownSender)
  {
    LOBYTE(IsEligibleToBeForcedIntoFilteringUnknownSender) = objc_msgSend__filteringSettingConfirmed(self, v5, v6) ^ 1;
  }

  return IsEligibleToBeForcedIntoFilteringUnknownSender;
}

- (BOOL)_messageIsFromKnownContact:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"__kmessageCNContactForSenderKey");
  isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v4, v3);

  return isCNContactAKnownContact;
}

- (BOOL)_messageIsBusiness:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"__kmessageHandleKey");
  v4 = objc_opt_class();
  v6 = objc_msgSend__addressForHandle_(v4, v5, v3);
  v7 = v6;
  if (v6)
  {
    if (MEMORY[0x1B8CAF990](v6))
    {
      isChatBot = 1;
    }

    else
    {
      isChatBot = objc_msgSend___im_isChatBot(v7, v8, v9);
    }
  }

  else
  {
    isChatBot = 0;
  }

  return isChatBot;
}

- (BOOL)_messageIsStewieEmergency:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  v9 = objc_msgSend_stewieEnabled(v6, v7, v8);

  if (v9)
  {
    v11 = objc_msgSend_objectForKey_(v3, v10, @"__kmessageHandleKey");
    v12 = objc_opt_class();
    v14 = objc_msgSend__addressForHandle_(v12, v13, v11);
    v15 = v14;
    if (v14)
    {
      v16 = MEMORY[0x1B8CAF9D0](v14);
      v17 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        if (v16)
        {
          v18 = @"YES";
        }

        v21 = 138412290;
        v22 = v18;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Sender is Stewie emergency: %@", &v21, 0xCu);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_notificationIsFromAFilteredSender:(id)a3 messageDictionary:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_objectForKey_(v7, v8, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AE0]);
  isFilterUnknownSendersEnabled = objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A8198], v12, v13);
  isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v14, v15);
  v18 = objc_msgSend_objectForKey_(v6, v17, @"__kchatIsFilteredKey");
  v63 = @"YES";
  if ((objc_msgSend_BOOLValue(v18, v19, v20) & 1) == 0)
  {
    v22 = objc_msgSend_objectForKey_(v6, v21, @"__kchatWasReportedAsiMessageSpamKey");
    if (objc_msgSend_BOOLValue(v22, v23, v24))
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v63 = v25;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v7, v26, @"__kmessageFlagsKey");
  v30 = objc_msgSend_unsignedLongLongValue(v27, v28, v29);

  v32 = objc_msgSend_objectForKey_(v6, v31, @"__kchatSMSCategoryKey");
  if (objc_msgSend_intValue(v32, v33, v34) == 1)
  {
    v36 = 1;
  }

  else
  {
    v61 = v9;
    v37 = isTextMessageExtensionEnabled;
    v38 = objc_msgSend_objectForKey_(v6, v35, @"__kchatWasDetectedAsSMSSpamKey");
    if (objc_msgSend_BOOLValue(v38, v39, v40))
    {
      v36 = 1;
    }

    else
    {
      v42 = objc_msgSend_objectForKey_(v6, v41, @"__kchatWasReportedAsiMessageSpamKey");
      if (objc_msgSend_BOOLValue(v42, v43, v44))
      {
        v36 = 1;
      }

      else
      {
        objc_msgSend_objectForKey_(v6, v45, @"__kchatWasDetectedAsiMessageSpamKey");
        v46 = v60 = self;
        v36 = objc_msgSend_BOOLValue(v46, v47, v48) | (v30 >> 27) & 1;

        self = v60;
      }
    }

    isTextMessageExtensionEnabled = v37;
    v9 = v61;
  }

  v50 = objc_msgSend__messageIsFromKnownContact_(self, v49, v7);
  v51 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = @"NO";
    if (isEqualToString)
    {
      v53 = @"YES";
    }

    else
    {
      v53 = @"NO";
    }

    *buf = 138413570;
    if (isFilterUnknownSendersEnabled)
    {
      v54 = @"YES";
    }

    else
    {
      v54 = @"NO";
    }

    v65 = v53;
    v66 = 2112;
    if (isTextMessageExtensionEnabled)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    v67 = v54;
    if (v36)
    {
      v56 = @"YES";
    }

    else
    {
      v56 = @"NO";
    }

    v68 = 2112;
    if (v50)
    {
      v52 = @"YES";
    }

    v69 = v55;
    v70 = 2112;
    v71 = v63;
    v72 = 2112;
    v73 = v56;
    v74 = 2112;
    v75 = v52;
    _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_DEFAULT, "isSMS %@ unknownFilterinOn %@ smsSpamFilteringOn %@ chatIsFiltered %@ isSpam %@ isContact %@", buf, 0x3Eu);
  }

  if (isEqualToString & 1 | ((v36 & 1) == 0))
  {
    v57 = isEqualToString & isTextMessageExtensionEnabled & v36 & (v50 ^ 1);
  }

  else
  {
    v57 = v50 ^ 1;
  }

  v58 = *MEMORY[0x1E69E9840];
  return v57;
}

- (BOOL)_chatIsMuted:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"__kchatIsMutedKey");
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (BOOL)_chatHasCategoryMuted:(id)a3 isFromContact:(BOOL)a4
{
  v5 = MEMORY[0x1E69A8198];
  v6 = a3;
  isFilterUnknownSendersEnabled = objc_msgSend_isFilterUnknownSendersEnabled(v5, v7, v8);
  isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v10, v11);
  v14 = objc_msgSend_objectForKey_(v6, v13, @"__kchatIsFilteredKey");

  v17 = objc_msgSend_intValue(v14, v15, v16) & 0xF;
  if (v17 <= 2)
  {
    if (v17 != 1)
    {
      return v17 == 2;
    }

    v28 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
    isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v28, v29, v30);

    if (isPriorityMessagesEnabled)
    {
      result = 0;
      if (isFilterUnknownSendersEnabled && !a4)
      {
        v27 = objc_msgSend_personalPriorityEnabled(MEMORY[0x1E69A8198], v32, v33);
        return v27 ^ 1;
      }

      return result;
    }

    if (!a4)
    {
      v27 = objc_msgSend_hideUnknownSenders(MEMORY[0x1E69A8198], v32, v33);
      return v27 ^ 1;
    }

    return 0;
  }

  if (v17 == 3)
  {
    v34 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
    v37 = objc_msgSend_isPriorityMessagesEnabled(v34, v35, v36);

    result = 0;
    if (v37)
    {
      if (isFilterUnknownSendersEnabled && !a4)
      {
        v27 = objc_msgSend_promotionsPriorityEnabled(MEMORY[0x1E69A8198], v38, v39);
        return v27 ^ 1;
      }
    }

    else if ((isFilterUnknownSendersEnabled & isTextMessageExtensionEnabled) == 1 && !a4)
    {
      v41 = MEMORY[0x1E69A8198];

      return MEMORY[0x1EEE66B58](v41, sel_hidePromotionalMessages, v39);
    }

    return result;
  }

  if (v17 != 4)
  {
    return 0;
  }

  v21 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
  v24 = objc_msgSend_isPriorityMessagesEnabled(v21, v22, v23);

  result = 0;
  if (v24)
  {
    if (isFilterUnknownSendersEnabled && !a4)
    {
      v27 = objc_msgSend_transactionsPriorityEnabled(MEMORY[0x1E69A8198], v25, v26);
      return v27 ^ 1;
    }
  }

  else if ((isFilterUnknownSendersEnabled & isTextMessageExtensionEnabled) == 1 && !a4)
  {
    v40 = MEMORY[0x1E69A8198];

    return MEMORY[0x1EEE66B58](v40, sel_hideTransactionalMessages, v26);
  }

  return result;
}

- (BOOL)_shouldPostNotificationForChat:(id)a3 messageDictionary:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedManager(MEMORY[0x1E69A7EE8], v8, v9);
  if (!objc_msgSend_shouldFilterIncomingMessages(v10, v11, v12))
  {
    v16 = 1;
    if (!v6)
    {
      goto LABEL_50;
    }

LABEL_9:
    if (!v16)
    {
      goto LABEL_50;
    }

    v18 = objc_msgSend_objectForKeyedSubscript_(v6, v13, @"__kchatMarkedAsKnownDateKey");
    v20 = objc_msgSend__dateForMessage_(self, v19, v7);
    v22 = v20;
    if (v18 && v20 && objc_msgSend_compare_(v20, v21, v18) == -1)
    {
      v38 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "We are not posting the notification because the message was received before the chat was marked as known";
        v47 = v38;
        v48 = 2;
LABEL_47:
        _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_DEFAULT, v42, buf, v48);
      }
    }

    else
    {
      IsMuted = objc_msgSend__chatIsMuted_(self, v21, v6);
      v25 = objc_msgSend__notificationIsFromAFilteredSender_messageDictionary_(self, v24, v6, v7);
      v28 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v26, v27);
      isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v28, v29, v30);

      if (isPriorityMessagesEnabled)
      {
        v65 = IsMuted;
        v66 = v25;
        if (IsMuted)
        {
          LODWORD(v33) = 0;
          v25 = 1;
        }

        else
        {
          v43 = objc_msgSend_objectForKey_(v7, v32, @"__kmessageFlagsKey");
          v46 = objc_msgSend_unsignedLongLongValue(v43, v44, v45);

          if ((v46 & 0x100000000000) != 0)
          {
            IMSharedHelperMessagePriorityTimeout();
            v51 = objc_msgSend_dateByAddingTimeInterval_(v22, v49, v50);
            v54 = objc_msgSend_date(MEMORY[0x1E695DF00], v52, v53);
            LODWORD(v33) = objc_msgSend_compare_(v51, v55, v54) != -1;
          }

          else
          {
            v33 = (v46 >> 44) & 1;
          }
        }

        v56 = objc_msgSend__messageIsFromKnownContact_(self, v32, v7);
        v58 = objc_msgSend__chatHasCategoryMuted_isFromContact_(self, v57, v6, v56);
        LOBYTE(v16) = 1;
        if (v33)
        {
          goto LABEL_49;
        }

        v59 = v58;
        if (((v25 | v58) & 1) == 0)
        {
          goto LABEL_49;
        }

        v38 = IMDNotificationsControllerLogHandle();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        v60 = @"NO";
        if (v65)
        {
          v61 = @"YES";
        }

        else
        {
          v61 = @"NO";
        }

        if (v66)
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        *buf = 138412802;
        v68 = v61;
        v69 = 2112;
        v70 = v62;
        if (v59)
        {
          v60 = @"YES";
        }

        v71 = 2112;
        v72 = v60;
        v42 = "We are not posting the notification because chat is muted (%@)                                                 or it's from a filtered unknown sender (%@)                                                 or the chat category is muted (%@)";
        goto LABEL_46;
      }

      v34 = objc_msgSend__messageIsFromKnownContact_(self, v32, v7);
      v36 = objc_msgSend__chatHasCategoryMuted_isFromContact_(self, v35, v6, v34);
      v37 = v36;
      if (((IsMuted | v25) & 1) == 0 && !v36)
      {
        LOBYTE(v16) = 1;
LABEL_49:

        goto LABEL_50;
      }

      v38 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = @"NO";
        if (IsMuted)
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        if (v25)
        {
          v41 = @"YES";
        }

        else
        {
          v41 = @"NO";
        }

        *buf = 138412802;
        v68 = v40;
        v69 = 2112;
        v70 = v41;
        if (v37)
        {
          v39 = @"YES";
        }

        v71 = 2112;
        v72 = v39;
        v42 = "We are not posting the notification because chat is muted (%@)                                                 or it's from a filtered unknown sender (%@)                                                 or the chat category is muted (%@)";
LABEL_46:
        v47 = v38;
        v48 = 32;
        goto LABEL_47;
      }
    }

LABEL_48:

    LOBYTE(v16) = 0;
    goto LABEL_49;
  }

  v14 = objc_msgSend__handleIDsForChatDictionary_(self, v13, v6);
  v16 = objc_msgSend_allowsConversationWithHandleIDs_(v10, v15, v14);
  if ((v16 & 1) == 0)
  {
    v17 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "We are not posting the notification in Assistive Access because this conversation is not allowed.", buf, 2u);
    }
  }

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_50:

  v63 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_isUnknownSenders:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKey_(a3, a2, @"__kchatIsFilteredKey");
  v6 = objc_msgSend_intValue(v3, v4, v5);

  return v6 == 1;
}

- (id)allTokens
{
  v4 = objc_msgSend_meTokens(self, a2, v2);
  v7 = objc_msgSend_activeAccountAliases(self, v5, v6);
  v9 = objc_msgSend_setByAddingObjectsFromSet_(v4, v8, v7);

  return v9;
}

- (BOOL)_amIMentionedInMessage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_allTokens(self, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(v4, v11, @"__kmessageDestinationCallerIDKey");
  v15 = v12;
  if (v12 && objc_msgSend_length(v12, v13, v14))
  {
    objc_msgSend_addObject_(v10, v13, v15);
  }

  if (objc_msgSend_count(v10, v13, v14))
  {
    v17 = objc_msgSend_areMyTokens_inMessage_(self, v16, v10, v4);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)areMyTokens:(id)a3 inMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = objc_msgSend_objectForKey_(v6, v7, @"__kmessageAttributedBodyKey");
  v11 = objc_msgSend_length(v8, v9, v10);
  v12 = *MEMORY[0x1E69A70F8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1679C;
  v16[3] = &unk_1E7CB6D48;
  v13 = v5;
  v17 = v13;
  v18 = &v19;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v8, v14, v12, 0, v11, 0, v16);
  LOBYTE(v11) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v11;
}

- (BOOL)_shouldOverrideChatSilencingBecauseImMentioned:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_objectForKey_(v4, v5, @"__kmessageServiceKey");
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x1E69A7AE0]);

  IsBusiness = objc_msgSend__messageIsBusiness_(self, v9, v4);
  v13 = IsBusiness;
  if ((isEqualToString & 1) != 0 || (IsBusiness & 1) != 0 || !objc_msgSend__overrideDNDForMessagesAddressingMe(self, v11, v12))
  {
    v16 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (isEqualToString)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v21 = 138412802;
      v22 = @"NO";
      v23 = 2112;
      v24 = v18;
      if (v13)
      {
        v17 = @"YES";
      }

      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "not overriding chat silencing because override message mentions me is (%@) isSMS (%@) isBusinessChat (%@).", &v21, 0x20u);
    }

    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend__amIMentionedInMessage_(self, v14, v4);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_shouldPostNotificationRequest:(id)a3 withCurrentlyPostedNotifications:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (sub_1B7B0C380(v7, v8, v9))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_identifier(v6, v10, v11);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v7;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v47, 16);
    if (v18)
    {
      v35 = self;
      v36 = v7;
      v19 = *v38;
LABEL_5:
      v20 = 0;
      while (1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        v22 = objc_msgSend_request(v21, v16, v17, v35);
        v25 = objc_msgSend_identifier(v22, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v25, v26, v13);

        if (isEqualToString)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v37, v47, 16);
          if (v18)
          {
            goto LABEL_5;
          }

          v7 = v36;
          goto LABEL_18;
        }
      }

      v18 = v21;
      v28 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v42 = v13;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_DEFAULT, "Request %@ is already delivered {deliveredRequest: %@ currentRequest: %@}", buf, 0x20u);
      }

      if (!v18)
      {
        v7 = v36;
        goto LABEL_20;
      }

      shouldRepostNotification_withAlreadyPostedNotification = objc_msgSend__shouldRepostNotification_withAlreadyPostedNotification_(v35, v29, v6, v18);
      v14 = IMDNotificationsControllerLogHandle();
      v31 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      v7 = v36;
      if (shouldRepostNotification_withAlreadyPostedNotification)
      {
        if (v31)
        {
          *buf = 138412290;
          v42 = v13;
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Re-posting notification %@ that has already been delivered", buf, 0xCu);
        }

        goto LABEL_18;
      }

      if (v31)
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Not re-posting notification %@ that has already been delivered", buf, 0xCu);
      }

      v32 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "We will NOT post the notification request %@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
LABEL_18:

LABEL_20:
      v32 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "We will post the notification request %@", buf, 0xCu);
      }

      v12 = 1;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_shouldRepostNotification:(id)a3 withAlreadyPostedNotification:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_identifier(v6, v7, v8);
  v12 = objc_msgSend_request(v5, v10, v11);

  v15 = objc_msgSend_content(v12, v13, v14);

  v18 = objc_msgSend_content(v6, v16, v17);

  v21 = objc_msgSend_interruptionLevel(v15, v19, v20);
  v26 = objc_msgSend_interruptionLevel(v18, v22, v23);
  if (v26 > v21)
  {
    v27 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 138412802;
      v63 = v9;
      v64 = 2048;
      v65 = v26;
      v66 = 2048;
      v67 = v21;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the requestedInterruptionLevel:%ld has been escalated above postedInterruptionLevel:%ld", &v62, 0x20u);
    }
  }

  v28 = objc_msgSend_communicationContext(v15, v24, v25);
  v31 = objc_msgSend_communicationContext(v18, v29, v30);
  v34 = objc_msgSend_notifyRecipientAnyway(v28, v32, v33);
  v37 = objc_msgSend_notifyRecipientAnyway(v31, v35, v36);
  if ((v34 & 1) == 0 && v37)
  {
    v40 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 138412290;
      v63 = v9;
      _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the notification has been escalated to notifyAnyway", &v62, 0xCu);
    }

LABEL_21:
    v41 = 1;
LABEL_28:

    goto LABEL_29;
  }

  if (v26 <= v21)
  {
    v40 = objc_msgSend_body(v15, v38, v39);
    v44 = objc_msgSend_body(v18, v42, v43);
    if (objc_msgSend_length(v40, v45, v46) && (objc_msgSend_isEqualToString_(v40, v47, v44) & 1) == 0)
    {
      v58 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 138412290;
        v63 = v9;
        _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the message content has been edited", &v62, 0xCu);
      }

      goto LABEL_21;
    }

    v50 = objc_msgSend_attachments(v15, v48, v49);
    v53 = objc_msgSend_attachments(v18, v51, v52);
    v40 = v50;
    v54 = v53;
    v56 = v54;
    v41 = v40 != v54;
    if (v40 == v54)
    {

      v59 = v40;
    }

    else
    {
      if (v40 && v54)
      {
        isEqualToArray = objc_msgSend_isEqualToArray_(v40, v55, v54);

        if (isEqualToArray)
        {
          v41 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      v59 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 138412290;
        v63 = v9;
        _os_log_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because attachment are different", &v62, 0xCu);
      }
    }

    goto LABEL_27;
  }

  v41 = 1;
LABEL_29:

  v60 = *MEMORY[0x1E69E9840];
  return v41;
}

- (unint64_t)screenTimeNotificationOptionsForContext:(id)a3
{
  v3 = a3;
  if (objc_msgSend_allowedByScreenTime(v3, v4, v5))
  {
    if (objc_msgSend_applicationCurrentlyLimited(v3, v6, v7))
    {
      shouldBeAllowedByScreenTimeWhenLimited = objc_msgSend_shouldBeAllowedByScreenTimeWhenLimited(v3, v8, v9);
      v11 = IMDNotificationsControllerLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (shouldBeAllowedByScreenTimeWhenLimited)
      {
        if (v12)
        {
          *buf = 0;
          v13 = 2;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Disallowing notifications during ScreenTime Downtime", buf, 2u);
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        if (v12)
        {
          *v15 = 0;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Disallowing notifications during ScreenTime Comm Limits", v15, 2u);
        }

        v13 = 4;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 4;
  }

  return v13;
}

- (unint64_t)screenTimeNotificationOptionsForChatDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = objc_msgSend__handleIDsForChatDictionary_(self, a2, a3);
    v5 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "fetch screenTimeNotificationOption for handleIDs: [%@]", &v18, 0xCu);
    }

    if (qword_1EDBE79A0 != -1)
    {
      sub_1B7CED088();
    }

    if (objc_msgSend_count(v4, v6, v7))
    {
      v8 = [qword_1EDBE7990 alloc];
      inited = objc_msgSend_initSynchronouslyWithBundleIdentifier_(v8, v9, @"com.apple.MobileSMS");
      v12 = objc_msgSend_allowableByContactsHandles_(inited, v11, v4);
      v14 = objc_msgSend_screenTimeNotificationOptionsForContext_(self, v13, v12);
      v15 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = v14;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "get screenTimeNotificationOption: [%tu]", &v18, 0xCu);
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_handleIDsForChatDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v7, @"__kchatHandlesForChatKey", 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v17 = objc_msgSend_canonicalizedURIString(*(*(&v20 + 1) + 8 * i), v11, v12);
        if (v17)
        {
          objc_msgSend_addObject_(v6, v16, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_coreSpotlightChatParticipantsFromChatDictionary:(id)a3 senderHandleID:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = a4;
  v6 = objc_msgSend_objectForKey_(a3, v5, @"__kchatParticipantsKey");
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    v13 = 0x1E7CB4000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = _IMDCoreSpotlightHandleID(v15);
        if (v16)
        {
          v17 = _IMDCoreSpotlightCNContactForHandle(v15);
          v20 = objc_msgSend_count(v8, v18, v19);
          isEqualToString = objc_msgSend_isEqualToString_(v39, v21, v16);
          v23 = v20 == 1;
          isEqualToContact = (v20 == 1) | isEqualToString;
          if (v23 && (isEqualToString & 1) == 0)
          {
            v25 = v13;
            v26 = _IMDCoreSpotlightCNContactForHandleID(v39);
            v28 = v26;
            if (v26)
            {
              isEqualToContact = objc_msgSend__im_isEqualToContact_(v26, v27, v17);
            }

            else
            {
              isEqualToContact = 0;
            }

            v13 = v25;
          }

          v29 = objc_alloc(*(v13 + 4088));
          isSender = objc_msgSend_initWithHandleID_contact_isSender_(v29, v30, v16, v17, isEqualToContact & 1);
          objc_msgSend_addObject_(v7, v32, isSender);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v33, &v40, v44, 16);
    }

    while (v11);
  }

  v36 = objc_msgSend_copy(v7, v34, v35);
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_groupPhotoInternalFilePathForGroupPhotoGuid:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = IMDAttachmentRecordCopyAttachmentForGUID(v3);
    v9 = objc_msgSend_path(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_interactionDonationContextWithContent:(id)a3 chatDictionary:(id)a4 messageDictionary:(id)a5 isUrgentMessageTrigger:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v114 = objc_msgSend_objectForKey_(v12, v13, @"__kmessageGUIDKey");
  v112 = v10;
  v115 = objc_msgSend_body(v10, v14, v15);
  v17 = objc_msgSend_objectForKey_(v12, v16, @"__kmessageDateKey");
  v20 = objc_msgSend_longLongValue(v17, v18, v19);

  v113 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v21, v22, v20);
  v111 = objc_msgSend_objectForKey_(v12, v23, @"__kmessageServiceKey");
  v25 = objc_msgSend_objectForKey_(v12, v24, @"__kmessageHandleKey");
  v109 = objc_msgSend_uncanonicalizedURIString(v25, v26, v27);
  v110 = v25;
  v28 = _IMDCoreSpotlightHandleID(v25);
  v108 = objc_msgSend_objectForKey_(v11, v29, @"__kchatChatGUIDKey");
  v31 = objc_msgSend_objectForKey_(v11, v30, @"__kchatChatIdentifierKey");
  v33 = objc_msgSend_objectForKey_(v11, v32, @"__kchatStyleKey");
  v105 = objc_msgSend_intValue(v33, v34, v35);

  v37 = objc_msgSend_objectForKey_(v11, v36, @"__kchatLastAddressedHandleStringKey");
  v107 = objc_msgSend__stripFZIDPrefix(v37, v38, v39);

  v41 = objc_msgSend_objectForKey_(v11, v40, @"__kchatIsFilteredKey");
  v44 = objc_msgSend_intValue(v41, v42, v43);

  v106 = objc_msgSend__coreSpotlightChatParticipantsFromChatDictionary_senderHandleID_(self, v45, v11, v28);
  if (objc_msgSend_shouldDisplayGroupNameAndPhotoWith_participants_(self, v46, v44))
  {
    v103 = objc_msgSend_objectForKey_(v11, v47, @"__kchatGroupPhotoGuidKey");
    v104 = objc_msgSend__groupPhotoInternalFilePathForGroupPhotoGuid_(self, v48, v103);
    v50 = objc_msgSend_objectForKey_(v11, v49, @"__kchatGroupNameKey");
  }

  else
  {
    v50 = 0;
    v104 = 0;
    v103 = 0;
  }

  v101 = objc_msgSend__amIMentionedInMessage_(self, v47, v12);
  v102 = objc_msgSend_objectForKey_(v12, v51, @"__kmessageThreadOriginatorKey");
  v53 = objc_msgSend_objectForKey_(v102, v52, @"__kmessageFlagsKey");
  v56 = objc_msgSend_unsignedLongLongValue(v53, v54, v55);

  if (a6)
  {
    v100 = 1;
  }

  else
  {
    v58 = objc_msgSend_objectForKey_(v12, v57, @"__kmessageFlagsKey");
    v100 = (objc_msgSend_unsignedLongLongValue(v58, v59, v60) >> 35) & 1;
  }

  v61 = objc_msgSend_objectForKey_(v11, v57, @"__kchatIsMergedBusinessThread");
  v99 = objc_msgSend_BOOLValue(v61, v62, v63);

  v66 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v64, v65);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v66, v67, v68);

  if (isTranscriptSharingEnabled && objc_msgSend_hasPrefix_(v31, v70, *MEMORY[0x1E69A7DB0]))
  {
    v73 = v31;
    v74 = objc_msgSend_subtitle(v112, v71, v72);

    v77 = objc_msgSend_body(v112, v75, v76);

    v28 = @"stewie:eServices";
    v50 = v74;
    v115 = v77;
  }

  else
  {
    v73 = v31;
  }

  v98 = (v56 >> 2) & 1;
  v78 = objc_alloc_init(IMDINInteractionDonationContext);
  objc_msgSend_setMessageGUID_(v78, v79, v114);
  objc_msgSend_setMessagePlainBody_(v78, v80, v115);
  objc_msgSend_setMessageDate_(v78, v81, v113);
  objc_msgSend_setServiceName_(v78, v82, v111);
  objc_msgSend_setSenderHandleID_(v78, v83, v28);
  objc_msgSend_setUncanonicalizedSenderHandleID_(v78, v84, v109);
  objc_msgSend_setChatGUID_(v78, v85, v108);
  objc_msgSend_setChatIdentifier_(v78, v86, v73);
  objc_msgSend_setChatDisplayName_(v78, v87, v50);
  objc_msgSend_setChatStyle_(v78, v88, v105);
  objc_msgSend_setChatParticipants_(v78, v89, v106);
  objc_msgSend_setChatLastAddressedLocaleHandle_(v78, v90, v107);
  objc_msgSend_setGroupPhotoGuid_(v78, v91, v103);
  objc_msgSend_setGroupPhotoInternalFilePath_(v78, v92, v104);
  objc_msgSend_setIsMergedBusinessThread_(v78, v93, v99);
  objc_msgSend_setIsMentionOfMe_(v78, v94, v101);
  objc_msgSend_setIsReplyToMe_(v78, v95, v98);
  objc_msgSend_setIsNotifyAnyway_(v78, v96, v100);

  return v78;
}

- (id)_attributedSummaryOfTapback:(id)a3 messageDictionary:(id)a4 senderDisplayName:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v8 = a4;
  v62 = a5;
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"__kmessageFlagsKey");
  v58 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);

  v61 = objc_msgSend_objectForKeyedSubscript_(v8, v13, @"__kmessageSummaryInfoDataKey");
  v14 = JWDecodeDictionary();
  v16 = objc_msgSend___imami_attributedStringForKey_(v14, v15, *MEMORY[0x1E69A7218]);
  v63 = v8;
  v17 = v8;
  v18 = self;
  v20 = objc_msgSend_objectForKeyedSubscript_(v17, v19, @"__kmessageAttachmentsKey");
  v60 = v16;
  v22 = objc_msgSend__attachmentRecordsForAssociatedMessagePartText_(v18, v21, v16);
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = v20;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v76, v81, 16);
  if (v26)
  {
    v29 = v26;
    v30 = *v77;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v77 != v30)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v76 + 1) + 8 * i);
        v34 = objc_msgSend_guid(v32, v27, v28);
        if (v34)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v23, v33, v32, v34);
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v76, v81, 16);
    }

    while (v29);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = v22;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v72, v80, 16);
  if (v37)
  {
    v40 = v37;
    v41 = *v73;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(v35);
        }

        v43 = *(*(&v72 + 1) + 8 * j);
        v45 = objc_msgSend_guid(v43, v38, v39);
        if (v45)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v23, v44, v43, v45);
        }
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v72, v80, 16);
    }

    while (v40);
  }

  v48 = objc_msgSend_copy(v23, v46, v47);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B189C4;
  aBlock[3] = &unk_1E7CB6DC0;
  v49 = v48;
  v71 = v49;
  v50 = _Block_copy(aBlock);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = sub_1B7B18A04;
  v68[3] = &unk_1E7CB6DC0;
  v51 = v49;
  v69 = v51;
  v52 = _Block_copy(v68);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = sub_1B7B18A44;
  v65[3] = &unk_1E7CB6DE8;
  v66 = v51;
  v67 = v18;
  v53 = v51;
  v54 = _Block_copy(v65);
  v59 = objc_msgSend_previewAttributedStringWithMessageSummaryInfo_isAdaptiveImageGlyphProvider_isCommSafetySensitiveProvider_adaptiveImageGlyphProvider_senderDisplayName_isFromMe_effectString_(v64, v55, v14, v50, v52, v54, v62, (v58 >> 2) & 1, 0);

  v56 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)_attachmentRecordsForAssociatedMessagePartText:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = objc_msgSend___im_transferGUIDsInAttributedString(a3, a2, a3);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = IMDAttachmentRecordCopyAttachmentForGUID(*(*(&v19 + 1) + 8 * i));
          if (v12)
          {
            objc_msgSend_addObject_(v4, v11, v12, v19);
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v19, v23, 16);
      }

      while (v8);
    }

    v16 = objc_msgSend_copy(v4, v14, v15);
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_senderDisplayNameForTapback:(id)a3 sendMessageIntent:(id)a4 chatParticipants:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = a5;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v43, v47, 16);
  if (v11)
  {
    v12 = *v44;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v43 + 1) + 8 * v13);
      if (objc_msgSend_isSender(v14, v9, v10, v43))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v43, v47, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v14;

    if (!v11)
    {
      v15 = 0;
      v31 = objc_msgSend_length(0, v17, v18, v43);
      goto LABEL_22;
    }

    v16 = objc_msgSend_contact(v11, v17, v18);
    if (v16 && objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v19, v16))
    {
      v22 = objc_msgSend_sharedDefaults(MEMORY[0x1E695CE40], v20, v21);
      if (objc_msgSend_shortNameFormatPrefersNicknames(v22, v23, v24))
      {
        v15 = objc_msgSend_nickname(v16, v25, v26);
        v29 = objc_msgSend_length(v15, v27, v28);
      }

      else
      {
        v15 = 0;
        v29 = objc_msgSend_length(0, v25, v26);
      }

      if (!v29)
      {
        v34 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v30, v16, 1000);

        v15 = v34;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
LABEL_9:
    v15 = 0;
    v16 = v7;
  }

  v31 = objc_msgSend_length(v15, v35, v36, v43);
LABEL_22:
  if (!v31)
  {
    v37 = objc_msgSend_sender(v6, v32, v33);
    v40 = objc_msgSend_displayName(v37, v38, v39);

    v15 = v40;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_adaptiveImageGlyphForAttachment:(id)a3
{
  v3 = a3;
  if (objc_msgSend_transferState(v3, v4, v5) == 5)
  {
    v8 = objc_msgSend_path(v3, v6, v7);
    if (objc_msgSend_length(v8, v9, v10))
    {
      v12 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v11, v8, 0);
      v13 = IMAttachmentEmojiImagePreviewFileURL();
      v20 = 0;
      v15 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v14, v13, 1, &v20);
      if (v15)
      {
        v16 = objc_alloc(MEMORY[0x1E69DB780]);
        v18 = objc_msgSend_initWithImageContent_(v16, v17, v15);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_attributedMessageBodyByInsertingAdaptiveImageGlyphsInMessageBody:(id)a3 attachments:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v45, v49, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v19 = objc_msgSend_guid(v17, v12, v13);
        if (v19)
        {
          objc_msgSend_setObject_forKey_(v8, v18, v17, v19);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v45, v49, 16);
    }

    while (v14);
  }

  v22 = objc_msgSend_length(v6, v20, v21);
  v25 = objc_msgSend_mutableCopy(v6, v23, v24);
  v26 = *MEMORY[0x1E69A5F68];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1B7B191C8;
  v40[3] = &unk_1E7CB6E10;
  v41 = v8;
  v42 = self;
  v43 = v6;
  v27 = v25;
  v44 = v27;
  v28 = v6;
  v29 = v8;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v28, v30, v26, 0, v22, 0, v40);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7B19388;
  v38[3] = &unk_1E7CB6E60;
  v39 = v27;
  v31 = v27;
  objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v31, v32, 0, v22, 0, v38);
  v35 = objc_msgSend_copy(v31, v33, v34);

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BOOL)_areAllMessagePartsRetractedForMessageDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"__kmessageBalloonBundleIDKey");
  v8 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v6, v7);
  canPopulateUserInfoForMessageBalloonBundleID = objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(v8, v9, v5);

  if (canPopulateUserInfoForMessageBalloonBundleID)
  {
    v12 = objc_msgSend_objectForKey_(v3, v11, @"__kmessageGUIDKey");
    v13 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      v35 = v5;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Delegating retracted check to IMExtensionNotificationManager for BalloonBundleID %@ messageGUID %@", &v34, 0x16u);
    }

    v16 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v14, v15);
    shouldRetractedMessageForBalloonBundleID = objc_msgSend_shouldRetractedMessageForBalloonBundleID_(v16, v17, v5);
  }

  else
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v3, v11, @"__kmessageAttributedBodyKey");
    v16 = objc_msgSend_objectForKeyedSubscript_(v3, v19, @"__kmessageTextKey");
    if (objc_msgSend_length(v12, v20, v21) || objc_msgSend_length(v16, v22, v23) || (objc_msgSend_objectForKeyedSubscript_(v3, v24, @"__kmessageDateEditedKey"), v27 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_longLongValue(v27, v28, v29), v27, v30 < 1))
    {
      shouldRetractedMessageForBalloonBundleID = 0;
    }

    else
    {
      v32 = objc_msgSend_objectForKey_(v3, v31, @"__kmessageGUIDKey");
      v33 = IMDNotificationsControllerLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412290;
        v35 = v32;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Determined that all message parts have been retracted for messageGUID %@", &v34, 0xCu);
      }

      shouldRetractedMessageForBalloonBundleID = 1;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return shouldRetractedMessageForBalloonBundleID;
}

+ (BOOL)_isFacetimeHighlighted:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v50 = objc_msgSend__pluginPayloadAttachmentPathsForMessage_(a1, v4, v53);
  v51 = objc_msgSend_objectForKeyedSubscript_(v53, v5, @"__kmessageTextKey");
  v7 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v6, v51);
  v52 = objc_msgSend__lpLinkMetadataForMessage_attachmentPaths_originalURL_(a1, v8, v53, v50, v7);

  v11 = objc_msgSend_collaborationMetadata(v52, v9, v10);

  v12 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"YES";
    if (!v11)
    {
      v13 = @"NO";
    }

    *buf = 138412290;
    v60 = v13;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Message has collaboration meta data: %@", buf, 0xCu);
  }

  if (v11)
  {
    v16 = objc_msgSend_collaborationMetadata(v52, v14, v15);
    v19 = objc_msgSend_collaborationIdentifier(v16, v17, v18);

    v20 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v19;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Read collaborationIdentifier from message: %@", buf, 0xCu);
    }

    if (objc_msgSend_length(v19, v21, v22))
    {
      v25 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v23, v24);
      v49 = objc_msgSend_conversationManager(v25, v26, v27);

      objc_msgSend_activeConversations(v49, v28, v29);
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v30 = v55 = 0u;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v54, v58, 16);
      if (v32)
      {
        v33 = *v55;
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v54 + 1) + 8 * i);
            v36 = IMDNotificationsControllerLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v39 = objc_msgSend_highlightIdentifiers(v35, v37, v38);
              *buf = 138412290;
              v60 = v39;
              _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEFAULT, "Read highlightIdentifiers from current FaceTime call: %@", buf, 0xCu);
            }

            v42 = objc_msgSend_highlightIdentifiers(v35, v40, v41);
            v44 = objc_msgSend_containsObject_(v42, v43, v19);

            if (v44)
            {

              v46 = 1;
              goto LABEL_23;
            }
          }

          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v45, &v54, v58, 16);
          if (v32)
          {
            continue;
          }

          break;
        }
      }
    }

    v46 = 0;
LABEL_23:
  }

  else
  {
    v46 = 0;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

+ (id)_pluginPayloadAttachmentPathsForMessage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKey_(a3, a2, @"__kmessageRowIDKey");
  v6 = objc_msgSend_longLongValue(v3, v4, v5);
  v7 = IMDMessageRecordCopyAttachmentsForIDWithLock(v6);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (v17)
        {
          v19 = objc_msgSend_path(v17, v12, v13, v22);
          if (v19)
          {
            objc_msgSend_addObject_(v8, v18, v19);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_lpLinkMetadataForMessage:(id)a3 attachmentPaths:(id)a4 originalURL:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (MEMORY[0x1B8CAFAC0](@"LPLinkMetadataPresentationTransformer", @"LinkPresentation"))
  {
    v11 = objc_msgSend_objectForKey_(v7, v10, @"__kmessagePayloadDataKey");
    v12 = objc_alloc_init(MEMORY[0x1E69A8010]);
    v44 = v11;
    objc_msgSend_setData_(v12, v13, v11);
    v43 = objc_msgSend_objectForKey_(v7, v14, @"__kmessageGUIDKey");
    objc_msgSend_setMessageGUID_(v12, v15, v43);
    v17 = objc_msgSend_objectForKey_(v7, v16, @"__kmessageFlagsKey");
    v20 = (objc_msgSend_unsignedLongLongValue(v17, v18, v19) >> 2) & 1;

    objc_msgSend_setIsFromMe_(v12, v21, v20);
    objc_msgSend_setUrl_(v12, v22, v9);
    v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v45 = v8;
    v26 = v8;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v46, v50, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v47;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v29, *(*(&v46 + 1) + 8 * i));
          v34 = v33;
          if (v25 && v33)
          {
            CFArrayAppendValue(v25, v33);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v46, v50, 16);
      }

      while (v30);
    }

    objc_msgSend_setAttachments_(v12, v35, v25);
    v37 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v36, v12);
    v40 = objc_msgSend_copy(v37, v38, v39);

    v8 = v45;
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (BOOL)_deviceUnderFirstUnlock
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], a2, v2);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v3, v4, v5);

  return isUnderFirstDataProtectionLock;
}

- (id)_messageDictionaryForMessageRecord:(id)a3 copyThreadOriginator:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, 20);
  v162 = 0;
  v163 = -1;
  v160 = 0;
  v161 = 0;
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v153 = 0;
  v152 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  v146 = 0u;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v130 = v5;
  IMDMessageRecordBulkCopy(v5, &v162, &v163, 0, &v158, &v161, &v160, &v159, 0, &v157, &v138, &v153, &v155, &v140, 0, &v148, &v156, &v150, &v151, &v152, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v147, &v149, &v146, &v154, &v142, &v143, 0, &v145, 0, 0, 0, 0, &v141, 0, 0, &v139, 0, 0, 0, 0, &v137, &v136, &v135, 0, &v144, &v134, &v133, 0);
  v10 = v157;
  v9 = v158;
  v11 = v155;
  v12 = v156;
  v83 = v154;
  v120 = v153;
  v126 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v13, v152 != 0);
  v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v14, v150);
  v95 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v16, v151);
  v118 = v147;
  v112 = v144;
  v131 = v145;
  v116 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v17, v149);
  v110 = v143;
  v108 = v142;
  v114 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v18, v146, *(&v146 + 1));
  v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, v163);
  v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v21, v162);
  value = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v23, v161);
  v124 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v24, v159);
  v122 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v25, v160);
  v93 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v26, v137);
  v97 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v136);
  v98 = v141;
  v104 = v140;
  v101 = v139;
  v85 = v135;
  v87 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v28, v134);
  v89 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v29, v133);
  v103 = v138;
  if (v138)
  {
    v32 = JWDecodeCodableObjectWithStandardAllowlist();
    if (v32)
    {
      CFDictionarySetValue(v8, @"__kmessageAttributedBodyKey", v32);
    }
  }

  v106 = objc_msgSend_handleRecord(v130, v30, v31);
  if (v4)
  {
    v36 = IMDMessageRecordCopyMessageForGUID(v101);
    if (v36)
    {
      v91 = objc_msgSend__messageDictionaryForMessageRecord_(self, v35, v36);
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  if (v152)
  {
    v37 = objc_msgSend_attachmentRecords(v130, v33, v34);
  }

  else
  {
    v37 = 0;
  }

  v38 = v9;
  if (v38)
  {
    CFDictionarySetValue(v8, @"__kmessageGUIDKey", v38);
  }

  v39 = v10;
  if (v39)
  {
    CFDictionarySetValue(v8, @"__kmessageTextKey", v39);
  }

  v40 = v12;
  if (v40)
  {
    CFDictionarySetValue(v8, @"__kmessageSubjectKey", v40);
  }

  v41 = v11;
  if (v41)
  {
    CFDictionarySetValue(v8, @"__kmessageServiceKey", v41);
  }

  v42 = v83;
  if (v42)
  {
    CFDictionarySetValue(v8, @"__kmessageBalloonBundleIDKey", v42);
  }

  v43 = v15;
  if (v43)
  {
    CFDictionarySetValue(v8, @"__kmessageErrorKey", v43);
  }

  v44 = v20;
  if (v44)
  {
    CFDictionarySetValue(v8, @"__kmessageRowIDKey", v44);
  }

  v45 = v22;
  if (v45)
  {
    CFDictionarySetValue(v8, @"__kmessageItemTypeKey", v45);
  }

  v46 = value;
  valuea = v46;
  if (v46)
  {
    CFDictionarySetValue(v8, @"__kmessageDateKey", v46);
    v46 = valuea;
  }

  v47 = v124;
  v125 = v47;
  if (v47)
  {
    CFDictionarySetValue(v8, @"__kmessageDateDeliveredKey", v47);
    v47 = v125;
  }

  v48 = v122;
  v123 = v48;
  if (v48)
  {
    CFDictionarySetValue(v8, @"__kmessageDateReadKey", v48);
    v48 = v123;
  }

  v49 = v126;
  v127 = v49;
  if (v49)
  {
    CFDictionarySetValue(v8, @"__kmessageHasAttachmentsKey", v49);
    v49 = v127;
  }

  v50 = v37;
  if (v50)
  {
    CFDictionarySetValue(v8, @"__kmessageAttachmentsKey", v50);
  }

  v82 = v50;

  v51 = v120;
  if (v51)
  {
    CFDictionarySetValue(v8, @"__kmessageFlagsKey", v51);
  }

  v52 = v95;
  v121 = v52;
  if (v52)
  {
    CFDictionarySetValue(v8, @"__kmessageMadridTypeKey", v52);
    v52 = v121;
  }

  v53 = v118;
  v119 = v53;
  if (v53)
  {
    CFDictionarySetValue(v8, @"__kmessageAssociatedMessageGUIDKey", v53);
    v53 = v119;
  }

  v54 = v116;
  v117 = v54;
  if (v54)
  {
    CFDictionarySetValue(v8, @"__kmessageAssociatedMessageTypeKey", v54);
    v54 = v117;
  }

  v55 = v114;
  v115 = v55;
  if (v55)
  {
    CFDictionarySetValue(v8, @"__kmessageAssociatedMessageRangeKey", v55);
    v55 = v115;
  }

  v56 = v112;
  v113 = v56;
  if (v56)
  {
    CFDictionarySetValue(v8, @"__kmessageAssociatedMessageEmojiKey", v56);
    v56 = v113;
  }

  v57 = v131;
  v132 = v57;
  if (v57)
  {
    CFDictionarySetValue(v8, @"__kmessageSummaryInfoDataKey", v57);
    v57 = v132;
  }

  v58 = v110;
  v111 = v58;
  if (v58)
  {
    CFDictionarySetValue(v8, @"__kmessageExpressiveSendStyleIDKey", v58);
    v58 = v111;
  }

  v96 = v42;

  v59 = v108;
  if (v59)
  {
    CFDictionarySetValue(v8, @"__kmessagePayloadDataKey", v59);
  }

  v60 = v106;
  v107 = v60;
  if (v60)
  {
    CFDictionarySetValue(v8, @"__kmessageHandleKey", v60);
    v60 = v107;
  }

  v61 = v98;
  v109 = v61;
  if (v61)
  {
    CFDictionarySetValue(v8, @"__kmessageDestinationCallerIDKey", v61);
    v61 = v109;
  }

  v62 = v104;
  v105 = v62;
  if (v62)
  {
    CFDictionarySetValue(v8, @"__kmessageAccountKey", v62);
    v62 = v105;
  }

  v84 = v51;

  v63 = v101;
  if (v63)
  {
    CFDictionarySetValue(v8, @"__kmessageThreadOriginatorGUIDKey", v63);
  }

  v99 = v40;

  v64 = v91;
  if (v64)
  {
    CFDictionarySetValue(v8, @"__kmessageThreadOriginatorKey", v64);
  }

  v92 = v43;
  v81 = v64;

  v65 = v85;
  if (v65)
  {
    CFDictionarySetValue(v8, @"__kbiaReferenceIDKey", v65);
  }

  v102 = v39;

  v66 = v87;
  if (v66)
  {
    CFDictionarySetValue(v8, @"__kscheduleTypeKey", v66);
  }

  v86 = v59;
  v88 = v45;

  v67 = v89;
  if (v67)
  {
    CFDictionarySetValue(v8, @"__kscheduleStateKey", v67);
  }

  v68 = v41;
  v90 = v44;

  v69 = v93;
  if (v69)
  {
    CFDictionarySetValue(v8, @"__kmessageDateEditedKey", v69);
  }

  v70 = v38;

  v71 = v97;
  if (v71)
  {
    CFDictionarySetValue(v8, @"__kmessageDateRecoveredKey", v71);
  }

  v73 = v132;
  if (v132)
  {
    v94 = v70;
    v74 = JWDecodeDictionary();
    v76 = objc_msgSend_objectForKey_(v74, v75, *MEMORY[0x1E69A7268]);
    if (v76)
    {
      CFDictionarySetValue(v8, @"__kmessageIsInitialTranscriptSharingItem", v76);
    }

    v78 = objc_msgSend_objectForKey_(v74, v77, *MEMORY[0x1E69A7270]);
    if (v78)
    {
      CFDictionarySetValue(v8, @"__kmessageTranscriptSharingMessageType", v78);
    }

    v70 = v94;
    v73 = v132;
  }

  objc_msgSend__setContactInMessageDictionary_messageDictionary_(self, v72, v107, v8);
  v79 = v8;

  return v79;
}

- (id)_chatDictionaryForMessageRecord:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_chatRecord(v4, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend__chatDictionaryForChatRecord_(self, v7, v8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "We didn't get any chat records for message record %@", &v16, 0xCu);
      }
    }

    v11 = objc_alloc(MEMORY[0x1E695DF90]);
    v9 = objc_msgSend_initWithCapacity_(v11, v12, 10);
  }

  v13 = v9;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_displayNameForChatRecord:(id)a3
{
  v5 = 0;
  if (a3)
  {
    _IMDChatRecordBulkCopy(a3, 0, 0, 0, 0, 0, 0, 0, 0, &v5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_chatDictionaryForChatRecord:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_initWithCapacity_(v5, v6, 10);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  if (v4)
  {
    _IMDChatRecordBulkCopy(v4, &v114, 0, 0, &v115, &v121, 0, &v120, 0, &v119, &v116, 0, &v118, 0, &v113, 0, 0, 0, 0, &v117, 0, 0, 0, 0, 0, 0, 0, 0);
    v110 = v120;
    v111 = v121;
    v108 = v119;
    v102 = v118;
    v109 = v116;
    v112 = v115;
    v10 = IMDChatRecordCopyChatLookupRecords(v4, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x1E69A6AD8]);
    v15 = objc_msgSend_firstObject(v12, v13, v14);

    v18 = v112;
    if (!v15)
    {
      v15 = v102;
      if (v114 == 43)
      {
        v19 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v123 = v111;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "No latest identifier in the iMessage Group ID domain for chat: %@", buf, 0xCu);
        }

        v18 = v112;
      }
    }

    if (v18)
    {
      v20 = JWDecodeDictionary();
      v22 = objc_msgSend_valueForKey_(v20, v21, @"wasAutoDetectedForSpam");
      HIDWORD(v101) = objc_msgSend_BOOLValue(v22, v23, v24);

      v26 = objc_msgSend_valueForKey_(v20, v25, @"wasDetectedAsiMessageSpam");
      LODWORD(v101) = objc_msgSend_BOOLValue(v26, v27, v28);

      v30 = objc_msgSend_valueForKey_(v20, v29, @"wasDetectedAsSMSSpam");
      v100 = objc_msgSend_BOOLValue(v30, v31, v32);

      value = objc_msgSend_objectForKey_(v20, v33, *MEMORY[0x1E69A6B80]);
      v35 = objc_msgSend_valueForKey_(v20, v34, @"SMSCategory");
      v38 = objc_msgSend_intValue(v35, v36, v37);

      v40 = objc_msgSend_valueForKey_(v20, v39, @"SMSSubCategory");
      v43 = objc_msgSend_intValue(v40, v41, v42);

      v107 = objc_msgSend_objectForKey_(v20, v44, *MEMORY[0x1E69A7870]);
      v106 = objc_msgSend_objectForKey_(v20, v45, *MEMORY[0x1E69A6A60]);
      v48 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v46, v47);
      isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v48, v49, v50);

      if (isTranscriptSharingEnabled)
      {
        v104 = objc_msgSend_objectForKey_(v20, v52, *MEMORY[0x1E69A6B58]);
      }

      else
      {
        v104 = 0;
      }

      v53 = objc_msgSend_objectForKey_(v20, v52, *MEMORY[0x1E69A6BC8]);
      v97 = objc_msgSend_BOOLValue(v53, v54, v55);

      v103 = objc_msgSend_objectForKey_(v20, v56, *MEMORY[0x1E69A6C40]);

      v98 = v43;
      v99 = v38;
    }

    else
    {
      v106 = 0;
      v107 = 0;
      v103 = 0;
      v104 = 0;
      v97 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      value = 0;
    }

    v57 = objc_msgSend_handleRecords(v4, v16, v17);
    if (objc_msgSend_count(v57, v58, v59))
    {
      if (v57)
      {
        CFDictionarySetValue(v7, @"__kchatHandlesForChatKey", v57);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v123 = v110;
        _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "We got 0 handles back for chatRecord with guid %@", buf, 0xCu);
      }
    }

    IMSharedHelperCatalystNotificationDisabled();
    IsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style = objc_msgSend__chatIsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style_(self, v61, v110, v111, v15, v10, v57, v109, 0, v114);
    v64 = objc_msgSend__lastMessageTimeForChat_(self, v63, v4);
    v67 = v64;
    if (v64)
    {
      v68 = MEMORY[0x1E696AD98];
      v69 = objc_msgSend___im_nanosecondTimeInterval(v64, v65, v66);
      v71 = objc_msgSend_numberWithLongLong_(v68, v70, v69);
      if (v71)
      {
        CFDictionarySetValue(v7, @"__kchatLastMessageTimestamp", v71);
      }
    }

    v72 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v65, v114);
    if (v72)
    {
      CFDictionarySetValue(v7, @"__kchatStyleKey", v72);
    }

    if (v112)
    {
      CFDictionarySetValue(v7, @"__kchatPropertiesDataKey", v112);
    }

    if (v111)
    {
      CFDictionarySetValue(v7, @"__kchatChatIdentifierKey", v111);
    }

    if (v110)
    {
      CFDictionarySetValue(v7, @"__kchatChatGUIDKey", v110);
    }

    if (v108)
    {
      CFDictionarySetValue(v7, @"__kchatGroupNameKey", v108);
    }

    if (value)
    {
      CFDictionarySetValue(v7, @"__kchatGroupPhotoGuidKey", value);
    }

    if (v107)
    {
      CFDictionarySetValue(v7, *MEMORY[0x1E69A7870], v107);
    }

    if (v106)
    {
      CFDictionarySetValue(v7, *MEMORY[0x1E69A6A60], v106);
    }

    if (v57)
    {
      CFDictionarySetValue(v7, @"__kchatParticipantsKey", v57);
    }

    if (v15)
    {
      CFDictionarySetValue(v7, @"__kchatGroupIDKey", v15);
    }

    if (v109)
    {
      CFDictionarySetValue(v7, @"__kchatLastAddressedHandleStringKey", v109);
    }

    v74 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v73, v113);
    if (v74)
    {
      CFDictionarySetValue(v7, @"__kchatIsFilteredKey", v74);
    }

    v76 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v75, HIDWORD(v101));
    if (v76)
    {
      CFDictionarySetValue(v7, @"__kchatWasReportedAsiMessageSpamKey", v76);
    }

    v78 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v77, v101);
    if (v78)
    {
      CFDictionarySetValue(v7, @"__kchatWasDetectedAsiMessageSpamKey", v78);
    }

    v80 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v79, v100);
    if (v80)
    {
      CFDictionarySetValue(v7, @"__kchatWasDetectedAsSMSSpamKey", v80);
    }

    v82 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v81, v99);
    if (v82)
    {
      CFDictionarySetValue(v7, @"__kchatSMSCategoryKey", v82);
    }

    v84 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v83, v98);
    if (v84)
    {
      CFDictionarySetValue(v7, @"__kchatSMSSubCategoryKey", v84);
    }

    v86 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v85, IsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style);
    if (v86)
    {
      CFDictionarySetValue(v7, @"__kchatIsMutedKey", v86);
    }

    v89 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v87, v88);
    v92 = objc_msgSend_isTranscriptSharingEnabled(v89, v90, v91);

    if (v92)
    {
      if (v104)
      {
        CFDictionarySetValue(v7, @"__kchatEmergencyUserInfo", v104);
      }

      v94 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v93, v97);
      if (v94)
      {
        CFDictionarySetValue(v7, @"__kchatIsMergedBusinessThread", v94);
      }

      if (v103)
      {
        CFDictionarySetValue(v7, @"__kchatMarkedAsKnownDateKey", v103);
      }
    }

    if (v10)
    {
      CFDictionarySetValue(v7, @"__kchatDomainIdentifiersKey", v10);
    }
  }

  v95 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_messageShouldBeSilentlyDeliveredForBusinessChat:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"__kmessageHandleKey");
  v8 = objc_msgSend__addressForHandle_(v4, v7, v6);
  v9 = MEMORY[0x1B8CAF990]();

  if (v9)
  {
    v11 = objc_msgSend_objectForKey_(v3, v10, @"__kmessageSummaryInfoDataKey");
    v12 = JWDecodeDictionary();
    v14 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x1E69A83C8]);
    v17 = objc_msgSend_BOOLValue(v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_chatIsMutedBasedOnChatGUID:(id)a3 chatIdentifier:(id)a4 groupID:(id)a5 domainIdentifiers:(id)a6 handles:(id)a7 lastAddressedHandleString:(id)a8 originalGroupID:(id)a9 style:(int64_t)a10
{
  v15 = MEMORY[0x1E69A8180];
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v24 = objc_msgSend_sharedList(v15, v22, v23);
  v26 = objc_msgSend___imArrayByApplyingBlock_(v18, v25, &unk_1F2FA0950);

  v28 = objc_msgSend_muteIdentifiersForChatStyle_groupID_domainIdentifiers_participantIDs_lastAddressedHandleID_originalGroupID_chatIdentifier_(v24, v27, a10, v20, v19, v26, v17, v16, v21);

  LOBYTE(v16) = objc_msgSend_isMutedChatForMuteIdentifiers_(v24, v29, v28);
  return v16;
}

- (id)contactForHandleRecord:(id)a3
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_class();
    v6 = objc_msgSend__addressForHandle_(v4, v5, v3);

    if (MEMORY[0x1B8CAF990](v6))
    {
      v9 = 0;
    }

    else
    {
      v10 = objc_msgSend__stripFZIDPrefix(v6, v7, v8);
      v11 = *MEMORY[0x1E695C330];
      v17[0] = *MEMORY[0x1E695C3F8];
      v17[1] = v11;
      v12 = *MEMORY[0x1E695C200];
      v17[2] = *MEMORY[0x1E695C208];
      v17[3] = v12;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v17, 4);
      v9 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v10, v14);
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_setContactInMessageDictionary:(id)a3 messageDictionary:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v8 = objc_msgSend_contactForHandleRecord_(self, v7, a3);
  if (v8)
  {
    CFDictionarySetValue(v6, @"__kmessageCNContactForSenderKey", v8);
  }

  v9 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_objectForKey_(v6, v10, @"__kmessageCNContactForSenderKey");
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "CNContact for sender %@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_stickerTapbackTransferGUIDFromMessageDictionary:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"__kmessageAttachmentsKey");
  if (objc_msgSend_count(v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_firstObject(v3, v6, v7);
    v11 = objc_msgSend_guid(v8, v9, v10);

    if (objc_msgSend_length(v11, v12, v13))
    {
      goto LABEL_9;
    }

    v14 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED280();
    }
  }

  else
  {
    v14 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED244();
    }

    v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)_tapbackFromMessageDictionary:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"__kmessageAssociatedMessageTypeKey");
  v9 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v10 = objc_msgSend_integerValue(v6, v7, v8);
  v12 = v10;
  v13 = 0;
  if (v10 > 2999)
  {
    if ((v10 - 3000) >= 6)
    {
      if (v10 == 3006)
      {
        v14 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"__kmessageAssociatedMessageEmojiKey");
        if (objc_msgSend_length(v14, v30, v31))
        {
          v32 = objc_alloc(MEMORY[0x1E69A8060]);
          isRemoved = objc_msgSend_initWithEmoji_isRemoved_(v32, v33, v14, 1);
          goto LABEL_19;
        }

        v34 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED2F8();
        }
      }

      else
      {
        if (v10 != 3007)
        {
          goto LABEL_30;
        }

        v14 = objc_msgSend__stickerTapbackTransferGUIDFromMessageDictionary_(self, v11, v4);
        if (objc_msgSend_length(v14, v22, v23))
        {
          v24 = objc_alloc(MEMORY[0x1E69A82C8]);
          isRemoved = objc_msgSend_initWithTransferGUID_isRemoved_(v24, v25, v14, 1);
          goto LABEL_19;
        }

        v34 = IMDNotificationsControllerLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED334();
        }
      }

LABEL_28:

      v13 = 0;
      goto LABEL_29;
    }

LABEL_10:
    v20 = objc_alloc(MEMORY[0x1E69A7FB0]);
    v13 = objc_msgSend_initWithAssociatedMessageType_(v20, v21, v12);
    goto LABEL_30;
  }

  if ((v10 - 2000) < 6)
  {
    goto LABEL_10;
  }

  if (v10 == 2006)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"__kmessageAssociatedMessageEmojiKey");
    if (objc_msgSend_length(v14, v26, v27))
    {
      v28 = objc_alloc(MEMORY[0x1E69A8060]);
      isRemoved = objc_msgSend_initWithEmoji_isRemoved_(v28, v29, v14, 0);
      goto LABEL_19;
    }

    v34 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED2BC();
    }

    goto LABEL_28;
  }

  if (v10 != 2007)
  {
    goto LABEL_30;
  }

  v14 = objc_msgSend__stickerTapbackTransferGUIDFromMessageDictionary_(self, v11, v4);
  if (!objc_msgSend_length(v14, v15, v16))
  {
    v34 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED280();
    }

    goto LABEL_28;
  }

  v17 = objc_alloc(MEMORY[0x1E69A82C8]);
  isRemoved = objc_msgSend_initWithTransferGUID_isRemoved_(v17, v18, v14, 0);
LABEL_19:
  v13 = isRemoved;
LABEL_29:

LABEL_30:

  return v13;
}

- (BOOL)imagePreviewIsMultiFrameAtFileURL:(id)a3
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDFB0();
  v8 = sub_1B7C2052C(v7);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (BOOL)copyFirstFrameOfMultiFrameImageAtFileURL:(id)a3 toFileURL:(id)a4
{
  v5 = sub_1B7CFDFF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  sub_1B7CFDFB0();
  sub_1B7CFDFB0();
  v13 = self;
  v14 = sub_1B7C1F8F0(v12);

  v15 = *(v6 + 8);
  v15(v10, v5);
  v15(v12, v5);
  return v14 & 1;
}

- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)a3 participants:(id)a4
{
  sub_1B7C81604();
  sub_1B7CFECE0();
  sub_1B7CFE300();
  v4 = sub_1B7CFE2F0();

  return v4 & 1;
}

@end