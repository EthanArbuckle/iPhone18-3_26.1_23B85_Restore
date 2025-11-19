@interface IMFeatureFlags
+ (BOOL)testWithFeature:(SEL)a3 enabled:(BOOL)a4 block:(id)a5 error:(id *)a6;
+ (IMFeatureFlags)sharedFeatureFlags;
+ (void)testWithFeature:(SEL)a3 enabled:(BOOL)a4 block:(id)a5;
- (BOOL)__isRunningOnPhone;
- (BOOL)_isAutomaticIncomingTranslationEnabled_ios;
- (BOOL)_isAutomaticIncomingTranslationEnabled_mac;
- (BOOL)_isAutomaticIncomingTranslationEnabled_watch;
- (BOOL)_isAutomaticOutgoingTranslation_ios;
- (BOOL)_isAutomaticOutgoingTranslation_mac;
- (BOOL)_isAutomaticOutgoingTranslation_watch;
- (BOOL)_isEntryViewInTranscriptEnabled;
- (BOOL)_isEntryViewInTranscriptEnabledForiPad;
- (BOOL)_isIntroductionsEnabled_ios;
- (BOOL)_isIntroductionsEnabled_mac;
- (BOOL)_isIntroductionsEnabled_watch;
- (BOOL)_isMissingMessagesEnabled;
- (BOOL)_isModernFilteringEnabled_ios;
- (BOOL)_isModernFilteringEnabled_mac;
- (BOOL)_isModernFilteringEnabled_watch;
- (BOOL)_isModernScreenSharingEnabled;
- (BOOL)_isOneChatForceDisabled;
- (BOOL)_isOneChatOptedOut;
- (BOOL)_isSendMenuEnabled;
- (BOOL)_isSendMenuEnabledForiPad;
- (BOOL)_isSharedPhotoCollectionsEnabled;
- (BOOL)_isSpotlightInternalIndexingUIEnabled;
- (BOOL)_isSpotlightReindexRefactorEnabled;
- (BOOL)_isTranscriptBackgroundsEnabled_iOS;
- (BOOL)_isTranscriptBackgroundsEnabled_mac;
- (BOOL)_isTranscriptPortalEnabled;
- (BOOL)areDualSIMDevicesExceptionsDisabled;
- (BOOL)arePreResolvedSiriMatchesEnabled;
- (BOOL)fullTranscriptLoggingEnabled;
- (BOOL)isAVLessSharePlayEnabled;
- (BOOL)isAllowMultiplePhoneNumbersSNaPEnabled;
- (BOOL)isAllowU18SnapAssetsEnabled;
- (BOOL)isAllowU18SnapWatchAssetsEnabled;
- (BOOL)isAlwaysShowStickerDropUIEnabled;
- (BOOL)isAttachmentsPurgeabilityMonitoringEnabled;
- (BOOL)isBGSTMessageProcessingEnabled;
- (BOOL)isBIAEnabled;
- (BOOL)isBackgroundMessagingAPIEnabled;
- (BOOL)isBizChatBlastDoorEnabled;
- (BOOL)isCAShapeLayerBalloonsEnabled;
- (BOOL)isCKScreenshotTestFeatureFlagMember:(id)a3 withDomain:(id)a4;
- (BOOL)isCarPlaySummaryEnabled;
- (BOOL)isCatchUpEnabled;
- (BOOL)isCategorizationEnabled_Mac;
- (BOOL)isCategorizationEnabled_Others;
- (BOOL)isCertainRegionsRequireContactForGroupNameAndPhotoEnabled;
- (BOOL)isCertainRegionsRequireKnownChatForNicknames;
- (BOOL)isChatSNAPOnboardingBannerEnabled;
- (BOOL)isClingBackwardsCompatibilityEnabled;
- (BOOL)isClingEnabled;
- (BOOL)isConsolidatedChatItemsEnabled;
- (BOOL)isCroppingAvoidanceEnabled;
- (BOOL)isDiffableTranscriptDataSourceEnabled;
- (BOOL)isDynamicLQMDisabledByWRM;
- (BOOL)isEasySNAPEnabled;
- (BOOL)isEmojiTapbacksEnabled;
- (BOOL)isEnhancedFromPickerEnabled;
- (BOOL)isEnhancedReadReceiptProcessingEnabled;
- (BOOL)isEntryViewInTranscriptEnabled;
- (BOOL)isEntryViewUsesKeyboardLayoutGuideEnabled;
- (BOOL)isFeatureFlagEnabledWithName:(id)a3;
- (BOOL)isFluidTransitioningEnabled;
- (BOOL)isFromPickerEnabledForAll;
- (BOOL)isGFTOnWatchEnabled;
- (BOOL)isGelatoAsyncSendingEnabled;
- (BOOL)isGenPlaygroundSparkleButtonEnabled;
- (BOOL)isGlitterBackgroundEnabled;
- (BOOL)isGroupNameAndPhotoDisabledInCertainRegions;
- (BOOL)isGroupTypingIndicatorsEnabled;
- (BOOL)isHighQualityPhotosEnabled;
- (BOOL)isIMLLegacyRelayEnabled;
- (BOOL)isInboxSummaryEnabled_iOS;
- (BOOL)isInboxSummaryEnabled_mac;
- (BOOL)isInlineTapbackMenuEnabled;
- (BOOL)isIntensiveSpotlightCPUEnabled;
- (BOOL)isIntensiveSpotlightDiskEnabled;
- (BOOL)isIntensiveSpotlightMemoryEnabled;
- (BOOL)isLQMHQEnabled;
- (BOOL)isLQMImageQualityEstimatorEnabled;
- (BOOL)isMacSendMenuGenmojiEnabled;
- (BOOL)isMergeBusinessSenderIndiaEnabled;
- (BOOL)isMergeFilteredThreadsEnabled;
- (BOOL)isMessagesAppDeletionEnabled;
- (BOOL)isMessagesInICloudNewUIEnabled_iOS;
- (BOOL)isMessagesInICloudNewUIEnabled_mac;
- (BOOL)isMessagesIniCloudOnboardingUIEnabled;
- (BOOL)isMessagesIniCloudVersion2;
- (BOOL)isMissingMessagesEnabled;
- (BOOL)isModernDetailsViewEnabled_iOS;
- (BOOL)isModernDetailsViewEnabled_mac;
- (BOOL)isModernMentionsAndEmojiAnimationsEnabled;
- (BOOL)isModernPersistenceXPCEnabled;
- (BOOL)isModernSettingsEnabled;
- (BOOL)isNSXPCSetupInfoEnabled;
- (BOOL)isNameAndPhotoC3Enabled;
- (BOOL)isNicknamesDisabledInCertainRegionsEnabled;
- (BOOL)isOOPKeyboardEnabled;
- (BOOL)isOneChatEnabled;
- (BOOL)isPersistentTaskNotificationsEnabled;
- (BOOL)isPhotoBackgroundKeyboardInteractionEnabled;
- (BOOL)isPinActionEnabled;
- (BOOL)isPinnedConversationOnWatchEnabled;
- (BOOL)isPollsEnabledMac;
- (BOOL)isPollsEnabledWatch;
- (BOOL)isPollsEnablediOS;
- (BOOL)isPriorityMessagesEnabled;
- (BOOL)isQuickRepliesEnabled;
- (BOOL)isRCSEncryptionEnabled;
- (BOOL)isRCSEncryptionOptInTestEnabled;
- (BOOL)isReactWithAStickerEnabled;
- (BOOL)isReadMMSDefaultFromCBEnabled;
- (BOOL)isRedesignedDetailsViewEnabled;
- (BOOL)isRelayChatBotEnabled;
- (BOOL)isRelayGroupMutationEnabled;
- (BOOL)isReportJunkEverywhereEnabled;
- (BOOL)isRichLinkImprovementsEnabled;
- (BOOL)isRockNRollEnabled;
- (BOOL)isSMSFilterEnabledForUK;
- (BOOL)isSMSFilterEnabledForUS;
- (BOOL)isSMSForwardingEnabled;
- (BOOL)isSWYAttachmentsEnabled;
- (BOOL)isSatelliteContinuityEnabled;
- (BOOL)isSatelliteRelayEnabled;
- (BOOL)isSearchImprovementsEnabled;
- (BOOL)isSearchTokensEnabled_iOS;
- (BOOL)isSearchTokensEnabled_mac;
- (BOOL)isSearchTokensForDatesEnabled;
- (BOOL)isSemanticSearchEnabled;
- (BOOL)isSemanticSearchRankingEnabled;
- (BOOL)isSendAnimationRefreshEnabled;
- (BOOL)isSendMenuEnabled;
- (BOOL)isSessionAnimatedImageUnpackerEnabled;
- (BOOL)isSharedPhotoCollectionsEnabled;
- (BOOL)isSpotlightClientStateEnabled;
- (BOOL)isSpotlightDaemonDelegateEnabled;
- (BOOL)isSpotlightInternalIndexingUIEnabled;
- (BOOL)isSpotlightRefactorEnabled;
- (BOOL)isSpotlightReindexRefactorEnabled;
- (BOOL)isStaticTextEffectMenusEnabled;
- (BOOL)isStickerRepositioningEnabled_iOS;
- (BOOL)isStickerRepositioningEnabled_macOS;
- (BOOL)isStickersAppEnabled_iOS;
- (BOOL)isStickersAppEnabled_mac;
- (BOOL)isSwiftUIAvatarRenderingEnabled;
- (BOOL)isSwipeToReplyEnabled;
- (BOOL)isSwipeToReplyOnWatchEnabled;
- (BOOL)isSystemRefreshEnabled;
- (BOOL)isTextSelectionEnabled;
- (BOOL)isTranscriptBackgroundsEnabled;
- (BOOL)isTranscriptBackgroundsMicEnabled;
- (BOOL)isTranscriptSharingEnabled;
- (BOOL)isTrustKitRCSSpamReportingEnabled;
- (BOOL)isUnitTestableFeatureEnabled;
- (BOOL)isUnitTestableFeatureForNewPlatformEnabled;
- (BOOL)isUnknownSenderBlastDoorEnabled;
- (BOOL)isUnreadCountRefactorEnabled;
- (BOOL)isVisionEmojiTapbackPickerEnabled;
- (BOOL)isWaldoEnabled;
- (BOOL)isWatchBelltowerEnabled;
- (BOOL)isWatchDataDetectorsEnabled;
- (BOOL)isWatchMultiReplyEnabled;
- (BOOL)isWatchNamePhotoEnabled;
- (BOOL)isWatchUpdatedReplyModelEnabled;
- (BOOL)isWatchWorkoutRemoteViewPreviewEnabled;
- (BOOL)isWidgetKitComplicationsEnabled;
- (BOOL)isWolfFullScreenEffectsEnabled;
- (BOOL)isZelkovaEnabled;
- (BOOL)isZelkovaGroupEnabled;
- (BOOL)isZelkovaKoreaEnabled;
- (BOOL)isZelkovaOnWatchEnabled;
- (BOOL)messageSyncP2Enabled;
- (BOOL)micGroupPhotoEnabled;
- (BOOL)redesignedDetails_iOS;
- (BOOL)redesignedDetails_mac;
- (BOOL)showAllInstalledMessageApps;
- (BOOL)showTapToRadarMessagesApp;
- (BOOL)stewieEnabled;
- (BOOL)threeAttachmentStackEnabled;
- (void)_reloadOneChatForceDisabled;
- (void)_setOneChatForceDisabled:(BOOL)a3 persist:(BOOL)a4;
- (void)checkForUnitTestingWithFeatureName:(id)a3;
@end

@implementation IMFeatureFlags

- (BOOL)isUnreadCountRefactorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isUnreadCountRefactorEnabled"];
  if (qword_1ED8C9F30 != -1)
  {
    sub_1A85EB2B8();
  }

  return byte_1ED8C9F38;
}

+ (IMFeatureFlags)sharedFeatureFlags
{
  if (qword_1ED8CA308 != -1)
  {
    sub_1A85EB268();
  }

  v3 = qword_1ED8CA300;

  return v3;
}

- (BOOL)_isOneChatForceDisabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86B10C4;
  block[3] = &unk_1E7828050;
  block[4] = self;
  if (qword_1EB30A9B8 != -1)
  {
    dispatch_once(&qword_1EB30A9B8, block);
  }

  return byte_1EB30A9C0 & 1;
}

- (BOOL)isDynamicLQMDisabledByWRM
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isDynamicLQMDisabledByWRM"];
  if (qword_1ED8CA230 != -1)
  {
    sub_1A85EEB0C();
  }

  return byte_1ED8CA278;
}

- (BOOL)isTranscriptSharingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isTranscriptSharingEnabled"];
  if (qword_1ED8CA168 != -1)
  {
    sub_1A85EF744();
  }

  return byte_1ED8CA170;
}

- (BOOL)isAllowMultiplePhoneNumbersSNaPEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAllowMultiplePhoneNumbersSNaPEnabled"];
  if (qword_1ED8C9A98 != -1)
  {
    sub_1A85F04A0();
  }

  return byte_1ED8C9AA0;
}

- (BOOL)_isIntroductionsEnabled_ios
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isIntroductionsEnabled_ios"];
  if (qword_1ED8C9F40 != -1)
  {
    sub_1A85F40E0();
  }

  return byte_1ED8C9F48;
}

- (BOOL)_isOneChatOptedOut
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isOneChatOptedOut"];
  if (qword_1EB30A9B0 != -1)
  {
    sub_1A85F7D18();
  }

  return byte_1EB30A4B8;
}

- (BOOL)isModernPersistenceXPCEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isModernPersistenceXPCEnabled"];
  if (qword_1ED8C9BC0 != -1)
  {
    sub_1A8605BDC();
  }

  return byte_1EB30A9E0;
}

- (BOOL)isOneChatEnabled
{
  if ([(IMFeatureFlags *)self _isOneChatForceDisabled])
  {
    return 0;
  }

  else
  {
    return ![(IMFeatureFlags *)self _isOneChatOptedOut];
  }
}

- (BOOL)stewieEnabled
{
  if (qword_1ED8C99A0 != -1)
  {
    sub_1A85F9C20();
  }

  return byte_1ED8C99A8;
}

- (BOOL)isMergeFilteredThreadsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMergeFilteredThreadsEnabled"];
  if (qword_1EB30A970 != -1)
  {
    sub_1A85F863C();
  }

  return byte_1EB30A978;
}

- (BOOL)isGroupTypingIndicatorsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGroupTypingIndicatorsEnabled"];
  if (qword_1EB30A9A8 != -1)
  {
    sub_1A85F7E08();
  }

  return byte_1EB30A990;
}

- (BOOL)isRCSEncryptionOptInTestEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRCSEncryptionOptInTestEnabled"];
  if (qword_1EB30A968 != -1)
  {
    sub_1A85F858C();
  }

  return byte_1EB30B2B0;
}

- (BOOL)isPriorityMessagesEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPriorityMessagesEnabled"];
  if (qword_1EB30A998 != -1)
  {
    sub_1A85FAF68();
  }

  return byte_1EB30A9A0;
}

- (BOOL)isRedesignedDetailsViewEnabled
{
  v3 = [(IMFeatureFlags *)self redesignedDetails_iOS];
  if (v3)
  {

    LOBYTE(v3) = [(IMFeatureFlags *)self isMessagesRefreshEnabled];
  }

  return v3;
}

- (BOOL)redesignedDetails_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"redesignedDetails_iOS"];
  if (qword_1EB30A428 != -1)
  {
    sub_1A85FB5F0();
  }

  return byte_1EB30A430;
}

- (BOOL)isSystemRefreshEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSystemRefreshEnabled"];
  if (qword_1EB30A888 != -1)
  {
    sub_1A85FB70C();
  }

  return byte_1EB30A890;
}

- (BOOL)_isModernFilteringEnabled_ios
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isModernFilteringEnabled_ios"];
  if (qword_1EB30A4C0 != -1)
  {
    sub_1A85FBC64();
  }

  return byte_1EB30A4C8;
}

- (BOOL)isEasySNAPEnabled
{
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return IMSharedHelperNickNameEnabled();
}

- (BOOL)_isAutomaticIncomingTranslationEnabled_ios
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticIncomingTranslationEnabled_ios"];
  if (qword_1EB30A950 != -1)
  {
    sub_1A85FDE40();
  }

  return byte_1EB30A958;
}

- (BOOL)isStickersAppEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isStickersAppEnabled_iOS"];
  if (qword_1ED8C96F0 != -1)
  {
    sub_1A85FDF34();
  }

  return byte_1ED8C96F8;
}

- (BOOL)isWaldoEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWaldoEnabled"];
  if (qword_1ED8C97C8 != -1)
  {
    sub_1A85FE0C0();
  }

  return byte_1ED8C97D0;
}

- (BOOL)isZelkovaEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isZelkovaEnabled"];
  if (qword_1ED8C9870 != -1)
  {
    sub_1A85FE21C();
  }

  return byte_1ED8C97C0;
}

- (BOOL)_isSendMenuEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isSendMenuEnabled"];
  if (qword_1EB30A4A8 != -1)
  {
    sub_1A85FE270();
  }

  return byte_1EB30A4B0;
}

- (BOOL)isPollsEnablediOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPollsEnablediOS"];
  if (qword_1EB30A458 != -1)
  {
    sub_1A85FE364();
  }

  return byte_1EB30A460;
}

- (BOOL)isMessagesInICloudNewUIEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMessagesInICloudNewUIEnabled_iOS"];
  if (qword_1EB309458 != -1)
  {
    sub_1A85FEBB4();
  }

  return byte_1EB309460;
}

- (BOOL)isMessagesIniCloudOnboardingUIEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMessagesIniCloudOnboardingUIEnabled"];
  if (qword_1EB309440 != -1)
  {
    sub_1A85FECA4();
  }

  return byte_1EB309448;
}

- (BOOL)isSearchTokensEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSearchTokensEnabled_iOS"];
  if (qword_1ED8C95D8 != -1)
  {
    sub_1A85FED98();
  }

  return byte_1ED8C95E0;
}

- (BOOL)isInboxSummaryEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isInboxSummaryEnabled_iOS"];
  if (qword_1EB30A980 != -1)
  {
    sub_1A8601748();
  }

  return byte_1EB30A988;
}

- (BOOL)isSwiftUIAvatarRenderingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSwiftUIAvatarRenderingEnabled"];
  if (qword_1EB3093A0 != -1)
  {
    sub_1A86018D4();
  }

  return byte_1EB3093A8;
}

- (BOOL)isMergeBusinessSenderIndiaEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMergeBusinessSenderIndiaEnabled"];
  if (qword_1EB30A8C0 != -1)
  {
    sub_1A860246C();
  }

  return byte_1EB30A8C8;
}

- (BOOL)isSendMenuEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A85FE16C;
  block[3] = &unk_1E7828050;
  block[4] = self;
  if (qword_1ED8C9700 != -1)
  {
    dispatch_once(&qword_1ED8C9700, block);
  }

  return byte_1ED8C9708;
}

- (BOOL)isCAShapeLayerBalloonsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCAShapeLayerBalloonsEnabled"];
  if (qword_1EB30A498 != -1)
  {
    sub_1A8602880();
  }

  return byte_1EB30A4A0;
}

- (BOOL)_isTranscriptBackgroundsEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isTranscriptBackgroundsEnabled_iOS"];
  if (qword_1EB30A8F0 != -1)
  {
    sub_1A86029B8();
  }

  return byte_1EB30A8F8;
}

- (BOOL)isTranscriptBackgroundsEnabled
{
  v3 = [(IMFeatureFlags *)self _isTranscriptBackgroundsEnabled_iOS];
  if (v3)
  {

    LOBYTE(v3) = [(IMFeatureFlags *)self isMessagesRefreshEnabled];
  }

  return v3;
}

- (BOOL)isModernMentionsAndEmojiAnimationsEnabled
{
  v2 = [(IMFeatureFlags *)self isExpressiveTextEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)isMissingMessagesEnabled
{
  if ([(IMFeatureFlags *)self isOneChatEnabled])
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel__isMissingMessagesEnabled);
}

- (BOOL)isCatchUpEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCatchUpEnabled"];
  if (qword_1ED8C9810 != -1)
  {
    sub_1A8606EE8();
  }

  return byte_1EB30A8D0;
}

- (BOOL)isEnhancedReadReceiptProcessingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isEnhancedReadReceiptProcessingEnabled"];
  if (qword_1EB3094C0 != -1)
  {
    sub_1A88C40F8();
  }

  return byte_1EB30B2C8;
}

+ (void)testWithFeature:(SEL)a3 enabled:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [[IMFeatureFlagsTestSwizzler alloc] initWithFeature:a3 enabled:v5];
  [(IMFeatureFlagsTestSwizzler *)v7 swizzle];
  v8[2]();
  [(IMFeatureFlagsTestSwizzler *)v7 unswizzle];
}

+ (BOOL)testWithFeature:(SEL)a3 enabled:(BOOL)a4 block:(id)a5 error:(id *)a6
{
  v7 = a4;
  v9 = a5;
  v10 = [[IMFeatureFlagsTestSwizzler alloc] initWithFeature:a3 enabled:v7];
  [(IMFeatureFlagsTestSwizzler *)v10 swizzle];
  v13 = 0;
  LOBYTE(a3) = v9[2](v9, &v13);
  v11 = v13;
  *a6 = v11;

  [(IMFeatureFlagsTestSwizzler *)v10 unswizzle];
  return a3 & 1;
}

- (BOOL)showAllInstalledMessageApps
{
  v2 = IMGetCachedDomainBoolForKeyWithDefaultValue();
  if (v2)
  {
    v3 = [MEMORY[0x1E69A60F0] sharedInstance];
    v4 = [v3 isInternalInstall];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)showTapToRadarMessagesApp
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (!v3)
  {
    return 0;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

- (BOOL)messageSyncP2Enabled
{
  if (qword_1EB309338 != -1)
  {
    sub_1A88C1C8C();
  }

  return byte_1EB309340;
}

- (BOOL)fullTranscriptLoggingEnabled
{
  if (qword_1EB30A8E8 != -1)
  {
    sub_1A88C1CA0();
  }

  return byte_1EB30AEA0;
}

- (BOOL)micGroupPhotoEnabled
{
  if (qword_1EB30AEB0 != -1)
  {
    sub_1A88C1CB4();
  }

  return byte_1EB30AEA8;
}

- (BOOL)threeAttachmentStackEnabled
{
  if (qword_1ED8C95B0 != -1)
  {
    sub_1A88C1CC8();
  }

  if (byte_1EB3092F0 != 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  return v3;
}

- (BOOL)isCKScreenshotTestFeatureFlagMember:(id)a3 withDomain:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMFeatureFlags *)self CKScreenshotTestFeatureFlagMembers];
  v9 = [v8 objectForKey:v6];

  LOBYTE(v6) = [v9 containsObject:v7];
  return v6;
}

- (BOOL)isWatchMultiReplyEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchMultiReplyEnabled"];
  if (qword_1EB30B070 != -1)
  {
    sub_1A88C340C();
  }

  return byte_1EB30B068;
}

- (BOOL)isZelkovaOnWatchEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isZelkovaOnWatchEnabled"];
  if (qword_1EB30B080 != -1)
  {
    sub_1A88C3420();
  }

  return byte_1EB30B078;
}

- (BOOL)isEmojiTapbacksEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isEmojiTapbacksEnabled"];
  if (qword_1EB30A940 != -1)
  {
    sub_1A88C3434();
  }

  return byte_1EB30A948;
}

- (BOOL)isVisionEmojiTapbackPickerEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isVisionEmojiTapbackPickerEnabled"];
  if (qword_1EB30B090 != -1)
  {
    sub_1A88C3448();
  }

  return byte_1EB30B088;
}

- (BOOL)_isModernScreenSharingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isModernScreenSharingEnabled"];
  if (qword_1EB3095D8 != -1)
  {
    sub_1A88C345C();
  }

  return byte_1EB3095E0;
}

- (BOOL)isSwipeToReplyOnWatchEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSwipeToReplyOnWatchEnabled"];
  if (qword_1EB30B0A0 != -1)
  {
    sub_1A88C3470();
  }

  return byte_1EB30B098;
}

- (BOOL)isStaticTextEffectMenusEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isStaticTextEffectMenusEnabled"];
  if (qword_1EB3093B0 != -1)
  {
    sub_1A88C3484();
  }

  return byte_1EB30B0A8;
}

- (BOOL)isConsolidatedChatItemsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isConsolidatedChatItemsEnabled"];
  if (qword_1EB3094D0 != -1)
  {
    sub_1A88C3498();
  }

  return byte_1EB3094D8;
}

- (BOOL)isGenPlaygroundSparkleButtonEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGenPlaygroundSparkleButtonEnabled"];
  if (qword_1EB30B0B8 != -1)
  {
    sub_1A88C34AC();
  }

  return byte_1EB30B0B0;
}

- (BOOL)isRichLinkImprovementsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRichLinkImprovementsEnabled"];
  if (qword_1EB30A448 != -1)
  {
    sub_1A88C34C0();
  }

  return byte_1EB30A450;
}

- (BOOL)isInboxSummaryEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isInboxSummaryEnabled_mac"];
  if (qword_1EB30B0C8 != -1)
  {
    sub_1A88C34D4();
  }

  return byte_1EB30B0C0;
}

- (BOOL)isWatchWorkoutRemoteViewPreviewEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchWorkoutRemoteViewPreviewEnabled"];
  if (qword_1EB30B0D8 != -1)
  {
    sub_1A88C34E8();
  }

  return byte_1EB30B0D0;
}

- (BOOL)isHighQualityPhotosEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isHighQualityPhotosEnabled"];
  if (qword_1EB30A478 != -1)
  {
    sub_1A88C34FC();
  }

  return byte_1EB30A480;
}

- (BOOL)isFluidTransitioningEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isFluidTransitioningEnabled"];
  if (qword_1EB3094B8 != -1)
  {
    sub_1A88C3510();
  }

  return byte_1EB30B0E0;
}

- (BOOL)isSpotlightDaemonDelegateEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSpotlightDaemonDelegateEnabled"];
  if (qword_1EB3093B8 != -1)
  {
    sub_1A88C3524();
  }

  return byte_1EB3093C0;
}

- (BOOL)isSessionAnimatedImageUnpackerEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSessionAnimatedImageUnpackerEnabled"];
  if (qword_1EB30B0F0 != -1)
  {
    sub_1A88C3538();
  }

  return byte_1EB30B0E8;
}

- (BOOL)isSpotlightClientStateEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSpotlightClientStateEnabled"];
  if (qword_1EB3093C8 != -1)
  {
    sub_1A88C354C();
  }

  return byte_1EB3093D0;
}

- (BOOL)isIntensiveSpotlightCPUEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isIntensiveSpotlightCPUEnabled"];
  if (qword_1EB309490 != -1)
  {
    sub_1A88C3560();
  }

  return byte_1EB309498;
}

- (BOOL)isIntensiveSpotlightDiskEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isIntensiveSpotlightDiskEnabled"];
  if (qword_1EB309488 != -1)
  {
    sub_1A88C3574();
  }

  return byte_1EB30B0F8;
}

- (BOOL)isIntensiveSpotlightMemoryEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isIntensiveSpotlightMemoryEnabled"];
  if (qword_1EB309478 != -1)
  {
    sub_1A88C3588();
  }

  return byte_1EB309480;
}

- (BOOL)isMessagesAppDeletionEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMessagesAppDeletionEnabled"];
  if (qword_1EB309468 != -1)
  {
    sub_1A88C359C();
  }

  return byte_1EB309470;
}

- (BOOL)isModernSettingsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isModernSettingsEnabled"];
  if (qword_1EB30B130 != -1)
  {
    sub_1A88C3BE0();
  }

  return byte_1EB30B128;
}

- (BOOL)isEnhancedFromPickerEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isEnhancedFromPickerEnabled"];
  if (qword_1EB30A490 != -1)
  {
    sub_1A88C3BF4();
  }

  return byte_1EB30B138;
}

- (BOOL)isFromPickerEnabledForAll
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isFromPickerEnabledForAll"];
  if (qword_1EB30A488 != -1)
  {
    sub_1A88C3C08();
  }

  return byte_1EB30B140;
}

- (BOOL)areDualSIMDevicesExceptionsDisabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"areDualSIMDevicesExceptionsDisabled"];
  if (qword_1EB309598 != -1)
  {
    sub_1A88C3C1C();
  }

  return byte_1EB3095A0;
}

- (BOOL)isReportJunkEverywhereEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isReportJunkEverywhereEnabled"];
  if (qword_1EB30A8A8 != -1)
  {
    sub_1A88C3E14();
  }

  return byte_1EB30A8B0;
}

- (BOOL)_isIntroductionsEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isIntroductionsEnabled_mac"];
  if (qword_1EB30B150 != -1)
  {
    sub_1A88C3E28();
  }

  return byte_1EB30B148;
}

- (BOOL)_isIntroductionsEnabled_watch
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isIntroductionsEnabled_watch"];
  if (qword_1EB30B160 != -1)
  {
    sub_1A88C3E3C();
  }

  return byte_1EB30B158;
}

- (BOOL)_isSharedPhotoCollectionsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isSharedPhotoCollectionsEnabled"];
  if (qword_1EB3095D0 != -1)
  {
    sub_1A88C3E50();
  }

  return byte_1EB30B168;
}

- (BOOL)isSharedPhotoCollectionsEnabled
{
  v2 = [(IMFeatureFlags *)self _isSharedPhotoCollectionsEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)isGelatoAsyncSendingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGelatoAsyncSendingEnabled"];
  if (qword_1EB3094B0 != -1)
  {
    sub_1A88C3E64();
  }

  return byte_1EB30B170;
}

- (void)_reloadOneChatForceDisabled
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = IMGetCachedDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = v2 > 5;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "OneChat force disabled: %{BOOL}d", v4, 8u);
    }
  }

  byte_1EB30A9C0 = v2 > 5;
}

- (void)_setOneChatForceDisabled:(BOOL)a3 persist:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      v9[1] = 6;
      if (v5)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9[0] = 67109634;
      v11 = v8;
      v10 = 2112;
      if (v4)
      {
        v7 = @"YES";
      }

      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Updating OneChat force disable (version %d) disabled %@ persist %@", v9, 0x1Cu);
    }
  }

  byte_1EB30A9C0 = v5;
  if (v4)
  {
    IMSetDomainIntForKey();
    notify_post("com.apple.imdpersistence.OneChatOverrideChanged");
  }
}

- (BOOL)isWatchBelltowerEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchBelltowerEnabled"];
  if (qword_1EB30B180 != -1)
  {
    sub_1A88C3E78();
  }

  return byte_1EB30B178;
}

- (BOOL)_isTranscriptBackgroundsEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isTranscriptBackgroundsEnabled_mac"];
  if (qword_1EB30B190 != -1)
  {
    sub_1A88C3E8C();
  }

  return byte_1EB30B188;
}

- (BOOL)isPhotoBackgroundKeyboardInteractionEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPhotoBackgroundKeyboardInteractionEnabled"];
  if (qword_1EB30B1A0 != -1)
  {
    sub_1A88C3EA0();
  }

  return byte_1EB30B198;
}

- (BOOL)isTranscriptBackgroundsMicEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isTranscriptBackgroundsMicEnabled"];
  if (qword_1EB309380 != -1)
  {
    sub_1A88C3EB4();
  }

  return byte_1EB309388;
}

- (BOOL)isGlitterBackgroundEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGlitterBackgroundEnabled"];
  if (qword_1EB30B1B0 != -1)
  {
    sub_1A88C3EC8();
  }

  return byte_1EB30B1A8;
}

- (BOOL)isCategorizationEnabled_Others
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCategorizationEnabled_Others"];
  if (qword_1EB3094E8 != -1)
  {
    sub_1A88C3EDC();
  }

  return byte_1EB3094F0;
}

- (BOOL)isCategorizationEnabled_Mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCategorizationEnabled_Mac"];
  if (qword_1EB30B1C0 != -1)
  {
    sub_1A88C3EF0();
  }

  return byte_1EB30B1B8;
}

- (BOOL)redesignedDetails_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"redesignedDetails_mac"];
  if (qword_1EB30B1D0 != -1)
  {
    sub_1A88C3F04();
  }

  return byte_1EB30B1C8;
}

- (BOOL)isSemanticSearchEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSemanticSearchEnabled"];
  if (qword_1EB3093E0 != -1)
  {
    sub_1A88C3F18();
  }

  return byte_1EB3093E8;
}

- (BOOL)isSemanticSearchRankingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSemanticSearchRankingEnabled"];
  if (qword_1EB3093D8 != -1)
  {
    sub_1A88C3F2C();
  }

  return byte_1EB30B1D8;
}

- (BOOL)isWatchUpdatedReplyModelEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchUpdatedReplyModelEnabled"];
  if (qword_1EB30B1E8 != -1)
  {
    sub_1A88C3F40();
  }

  return byte_1EB30B1E0;
}

- (BOOL)isPollsEnabledMac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPollsEnabledMac"];
  if (qword_1EB30B1F8 != -1)
  {
    sub_1A88C3F54();
  }

  return byte_1EB30B1F0;
}

- (BOOL)isPollsEnabledWatch
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPollsEnabledWatch"];
  if (qword_1EB30B208 != -1)
  {
    sub_1A88C3F68();
  }

  return byte_1EB30B200;
}

- (BOOL)isChatSNAPOnboardingBannerEnabled
{
  if ([(IMFeatureFlags *)self isMessagesRefreshEnabled])
  {
    return 0;
  }

  return IMSharedHelperNickNameEnabled();
}

- (BOOL)isLQMHQEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isLQMHQEnabled"];
  if (qword_1EB30A468 != -1)
  {
    sub_1A88C3F7C();
  }

  return byte_1EB30A470;
}

- (BOOL)isCarPlaySummaryEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCarPlaySummaryEnabled"];
  if (qword_1EB30B218 != -1)
  {
    sub_1A88C3F90();
  }

  return byte_1EB30B210;
}

- (BOOL)_isModernFilteringEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isModernFilteringEnabled_mac"];
  if (qword_1EB30B228 != -1)
  {
    sub_1A88C3FA4();
  }

  return byte_1EB30B220;
}

- (BOOL)_isModernFilteringEnabled_watch
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isModernFilteringEnabled_watch"];
  if (qword_1EB30B238 != -1)
  {
    sub_1A88C3FB8();
  }

  return byte_1EB30B230;
}

- (BOOL)isTextSelectionEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isTextSelectionEnabled"];
  if (qword_1EB309390 != -1)
  {
    sub_1A88C3FCC();
  }

  return byte_1EB309398;
}

- (BOOL)isWatchDataDetectorsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchDataDetectorsEnabled"];
  if (qword_1EB30B248 != -1)
  {
    sub_1A88C3FE0();
  }

  return byte_1EB30B240;
}

- (BOOL)_isAutomaticIncomingTranslationEnabled_watch
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticIncomingTranslationEnabled_watch"];
  if (qword_1EB30B258 != -1)
  {
    sub_1A88C3FF4();
  }

  return byte_1EB30B250;
}

- (BOOL)_isAutomaticIncomingTranslationEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticIncomingTranslationEnabled_mac"];
  if (qword_1EB30B268 != -1)
  {
    sub_1A88C4008();
  }

  return byte_1EB30B260;
}

- (BOOL)_isAutomaticOutgoingTranslation_watch
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticOutgoingTranslation_watch"];
  if (qword_1EB30B278 != -1)
  {
    sub_1A88C401C();
  }

  return byte_1EB30B270;
}

- (BOOL)_isAutomaticOutgoingTranslation_ios
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticOutgoingTranslation_ios"];
  if (qword_1EB30A4E0 != -1)
  {
    sub_1A88C4030();
  }

  return byte_1EB30A4E8;
}

- (BOOL)_isAutomaticOutgoingTranslation_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isAutomaticOutgoingTranslation_mac"];
  if (qword_1EB30B288 != -1)
  {
    sub_1A88C4044();
  }

  return byte_1EB30B280;
}

- (BOOL)isBGSTMessageProcessingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isBGSTMessageProcessingEnabled"];
  if (qword_1EB30A8D8 != -1)
  {
    sub_1A88C4058();
  }

  return byte_1EB30A8E0;
}

- (BOOL)isSpotlightRefactorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSpotlightRefactorEnabled"];
  if (qword_1EB30A898 != -1)
  {
    sub_1A88C406C();
  }

  return byte_1EB30A8A0;
}

- (BOOL)_isSpotlightReindexRefactorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isSpotlightReindexRefactorEnabled"];
  if (qword_1EB30A900 != -1)
  {
    sub_1A88C4080();
  }

  return byte_1EB30A908;
}

- (BOOL)_isSpotlightInternalIndexingUIEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isSpotlightInternalIndexingUIEnabled"];
  if (qword_1EB3095C8 != -1)
  {
    sub_1A88C4094();
  }

  return byte_1EB30B290;
}

- (BOOL)isSpotlightReindexRefactorEnabled
{
  if (![(IMFeatureFlags *)self isSpotlightRefactorEnabled]|| ![(IMFeatureFlags *)self isBGSTMessageProcessingEnabled])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__isSpotlightReindexRefactorEnabled);
}

- (BOOL)isSpotlightInternalIndexingUIEnabled
{
  v3 = [(IMFeatureFlags *)self isSpotlightReindexRefactorEnabled];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x1EEE66B58](self, sel__isSpotlightInternalIndexingUIEnabled);
  }

  return v3;
}

- (BOOL)_isTranscriptPortalEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isTranscriptPortalEnabled"];
  if (qword_1EB30B2A0 != -1)
  {
    sub_1A88C40A8();
  }

  return byte_1EB30B298;
}

- (BOOL)isRCSEncryptionEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRCSEncryptionEnabled"];
  if (qword_1EB30A8B8 != -1)
  {
    sub_1A88C40BC();
  }

  return byte_1EB30B2A8;
}

- (BOOL)isSendAnimationRefreshEnabled
{
  v3 = [(IMFeatureFlags *)self isMessagesRefreshEnabled];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x1EEE66B58](self, sel_isSystemRefreshEnabled);
  }

  return v3;
}

- (BOOL)_isMissingMessagesEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isMissingMessagesEnabled"];
  if (qword_1EB30B2C0 != -1)
  {
    sub_1A88C40D0();
  }

  return byte_1EB30B2B8;
}

- (BOOL)__isRunningOnPhone
{
  if (qword_1EB30A500 != -1)
  {
    sub_1A88C40E4();
  }

  return byte_1EB30A508;
}

- (BOOL)isSatelliteRelayEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSatelliteRelayEnabled"];
  if (qword_1EB30B2D8 != -1)
  {
    sub_1A88C410C();
  }

  return byte_1EB30B2D0;
}

- (BOOL)isSatelliteContinuityEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSatelliteContinuityEnabled"];
  if (qword_1EB30B2E8 != -1)
  {
    sub_1A88C4120();
  }

  return byte_1EB30B2E0;
}

- (BOOL)isNSXPCSetupInfoEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isNSXPCSetupInfoEnabled"];
  if (qword_1ED8C9DA0[0] != -1)
  {
    sub_1A88C4134();
  }

  return byte_1ED8C9BB8;
}

- (BOOL)isNicknamesDisabledInCertainRegionsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isNicknamesDisabledInCertainRegionsEnabled"];
  if (qword_1EB30B2F8 != -1)
  {
    sub_1A88C4148();
  }

  return byte_1EB30B2F0;
}

- (BOOL)isCertainRegionsRequireContactForGroupNameAndPhotoEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCertainRegionsRequireContactForGroupNameAndPhotoEnabled"];
  if (qword_1EB30B308 != -1)
  {
    sub_1A88C415C();
  }

  return byte_1EB30B300;
}

- (BOOL)isGroupNameAndPhotoDisabledInCertainRegions
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGroupNameAndPhotoDisabledInCertainRegions"];
  if (qword_1EB30B318 != -1)
  {
    sub_1A88C4170();
  }

  return byte_1EB30B310;
}

- (BOOL)isCertainRegionsRequireKnownChatForNicknames
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCertainRegionsRequireKnownChatForNicknames"];
  if (qword_1EB30B328 != -1)
  {
    sub_1A88C4184();
  }

  return byte_1EB30B320;
}

- (BOOL)isRelayGroupMutationEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRelayGroupMutationEnabled"];
  if (qword_1EB30B348 != -1)
  {
    sub_1A88C41AC();
  }

  return byte_1EB30B340;
}

- (BOOL)isRelayChatBotEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRelayChatBotEnabled"];
  if (qword_1EB309420 != -1)
  {
    sub_1A88C41C0();
  }

  return byte_1EB309428;
}

- (BOOL)isBizChatBlastDoorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isBizChatBlastDoorEnabled"];
  if (qword_1EB30B358 != -1)
  {
    sub_1A88C41D4();
  }

  return byte_1EB30B350;
}

- (BOOL)isTrustKitRCSSpamReportingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isTrustKitRCSSpamReportingEnabled"];
  if (qword_1EB309370 != -1)
  {
    sub_1A88C41E8();
  }

  return byte_1EB309378;
}

- (BOOL)isMacSendMenuGenmojiEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMacSendMenuGenmojiEnabled"];
  if (qword_1EB30B368 != -1)
  {
    sub_1A88C41FC();
  }

  return byte_1EB30B360;
}

- (void)checkForUnitTestingWithFeatureName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_1ED8CA4B0 != -1)
  {
    v6 = v3;
    sub_1A88C5408();
    v4 = v6;
  }

  if (byte_1EB30B540 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Called into IMFeatureFlags from a unit test without mocking the feature flag (%@) with [IMFeatureFlags testWithFeature:block:]. Ensure any test code that hits this path is enclosed in a test feature call.", v4];
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"IMFeatureFlagNotMockedInTest" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v5);
  }

  MEMORY[0x1EEE66BB8](v3);
}

- (BOOL)_isEntryViewInTranscriptEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isEntryViewInTranscriptEnabled"];
  if (qword_1EB30A4D0 != -1)
  {
    sub_1A88C541C();
  }

  return byte_1EB30A4D8;
}

- (BOOL)_isEntryViewInTranscriptEnabledForiPad
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isEntryViewInTranscriptEnabledForiPad"];
  if (qword_1ED8C9778 != -1)
  {
    sub_1A88C5430();
  }

  return byte_1ED8C9780;
}

- (BOOL)isEntryViewInTranscriptEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86DBDCC;
  block[3] = &unk_1E7828050;
  block[4] = self;
  if (qword_1ED8C9730 != -1)
  {
    dispatch_once(&qword_1ED8C9730, block);
  }

  return byte_1ED8C9738;
}

- (BOOL)isEntryViewUsesKeyboardLayoutGuideEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isEntryViewUsesKeyboardLayoutGuideEnabled"];
  if (qword_1ED8C9720 != -1)
  {
    sub_1A88C5444();
  }

  return byte_1ED8C9728;
}

- (BOOL)_isSendMenuEnabledForiPad
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"_isSendMenuEnabledForiPad"];
  if (qword_1ED8C9768 != -1)
  {
    sub_1A88C5458();
  }

  return byte_1ED8C9770;
}

- (BOOL)isUnitTestableFeatureEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isUnitTestableFeatureEnabled"];
  if (qword_1EB30B550 != -1)
  {
    sub_1A88C546C();
  }

  return byte_1EB30B548;
}

- (BOOL)isUnitTestableFeatureForNewPlatformEnabled
{
  if (qword_1EB30B560 != -1)
  {
    sub_1A88C5480();
  }

  return byte_1EB30B558;
}

- (BOOL)isMessagesIniCloudVersion2
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMessagesIniCloudVersion2"];
  if (qword_1ED8C9710 != -1)
  {
    sub_1A88C5494();
  }

  return byte_1ED8C9718;
}

- (BOOL)isMessagesInICloudNewUIEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isMessagesInICloudNewUIEnabled_mac"];
  if (qword_1EB309450 != -1)
  {
    sub_1A88C54A8();
  }

  return byte_1EB30B568;
}

- (BOOL)isSMSForwardingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSMSForwardingEnabled"];
  if (qword_1ED8C95F8 != -1)
  {
    sub_1A88C54BC();
  }

  return byte_1ED8C9600;
}

- (BOOL)isSMSFilterEnabledForUS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSMSFilterEnabledForUS"];
  if (qword_1EB309408 != -1)
  {
    sub_1A88C54D0();
  }

  return byte_1EB30B570;
}

- (BOOL)isSMSFilterEnabledForUK
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSMSFilterEnabledForUK"];
  if (qword_1EB30B580 != -1)
  {
    sub_1A88C54E4();
  }

  return byte_1EB30B578;
}

- (BOOL)isLQMImageQualityEstimatorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isLQMImageQualityEstimatorEnabled"];
  if (qword_1ED8C9608 != -1)
  {
    sub_1A88C54F8();
  }

  return byte_1ED8C9610;
}

- (BOOL)isAttachmentsPurgeabilityMonitoringEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAttachmentsPurgeabilityMonitoringEnabled"];
  if (qword_1EB309500 != -1)
  {
    sub_1A88C550C();
  }

  return byte_1EB309508;
}

- (BOOL)isAVLessSharePlayEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAVLessSharePlayEnabled"];
  if (qword_1EB309510 != -1)
  {
    sub_1A88C5520();
  }

  return byte_1EB309518;
}

- (BOOL)isSWYAttachmentsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSWYAttachmentsEnabled"];
  if (qword_1ED8C97E8 != -1)
  {
    sub_1A88C5534();
  }

  return byte_1EB309400;
}

- (BOOL)isNameAndPhotoC3Enabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isNameAndPhotoC3Enabled"];
  if (qword_1ED8C97F0 != -1)
  {
    sub_1A88C5548();
  }

  return byte_1ED8C97F8;
}

- (BOOL)isWatchNamePhotoEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWatchNamePhotoEnabled"];
  if (qword_1EB30B590 != -1)
  {
    sub_1A88C555C();
  }

  return byte_1EB30B588;
}

- (BOOL)isAllowU18SnapAssetsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAllowU18SnapAssetsEnabled"];
  if (qword_1EB30B5A0 != -1)
  {
    sub_1A88C5570();
  }

  return byte_1EB30B598;
}

- (BOOL)isAllowU18SnapWatchAssetsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAllowU18SnapWatchAssetsEnabled"];
  if (qword_1EB30B5B0 != -1)
  {
    sub_1A88C5584();
  }

  return byte_1EB30B5A8;
}

- (BOOL)arePreResolvedSiriMatchesEnabled
{
  if (qword_1EB30B5C0 != -1)
  {
    sub_1A88C5598();
  }

  return byte_1EB30B5B8;
}

- (BOOL)isCroppingAvoidanceEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isCroppingAvoidanceEnabled"];
  if (qword_1ED8C9740 != -1)
  {
    sub_1A88C55AC();
  }

  return byte_1ED8C9748;
}

- (BOOL)isSearchImprovementsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSearchImprovementsEnabled"];
  if (qword_1ED8C95E8 != -1)
  {
    sub_1A88C55C0();
  }

  return byte_1ED8C95F0;
}

- (BOOL)isSearchTokensEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSearchTokensEnabled_mac"];
  if (qword_1EB30B5D0 != -1)
  {
    sub_1A88C55D4();
  }

  return byte_1EB30B5C8;
}

- (BOOL)isSearchTokensForDatesEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSearchTokensForDatesEnabled"];
  if (qword_1EB3093F0 != -1)
  {
    sub_1A88C55E8();
  }

  return byte_1EB3093F8;
}

- (BOOL)isSwipeToReplyEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isSwipeToReplyEnabled"];
  if (qword_1ED8C95C8 != -1)
  {
    sub_1A88C55FC();
  }

  return byte_1ED8C95D0;
}

- (BOOL)isGFTOnWatchEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isGFTOnWatchEnabled"];
  if (qword_1EB30B5E0 != -1)
  {
    sub_1A88C5610();
  }

  return byte_1EB30B5D8;
}

- (BOOL)isDiffableTranscriptDataSourceEnabled
{
  if (qword_1ED8C9618 != -1)
  {
    sub_1A88C5624();
  }

  return byte_1EB3094C8;
}

- (BOOL)isReadMMSDefaultFromCBEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isReadMMSDefaultFromCBEnabled"];
  if (qword_1ED8C9A30 != -1)
  {
    sub_1A88C5638();
  }

  return byte_1ED8C9A38;
}

- (BOOL)isBIAEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isBIAEnabled"];
  if (qword_1ED8C9818 != -1)
  {
    sub_1A88C564C();
  }

  return byte_1EB3094F8;
}

- (BOOL)isIMLLegacyRelayEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isIMLLegacyRelayEnabled"];
  if (qword_1EB3094A0 != -1)
  {
    sub_1A88C5660();
  }

  return byte_1EB3094A8;
}

- (BOOL)isBackgroundMessagingAPIEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isBackgroundMessagingAPIEnabled"];
  if (qword_1EB30B5F0 != -1)
  {
    sub_1A88C5674();
  }

  return byte_1EB30B5E8;
}

- (BOOL)isClingEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isClingEnabled"];
  if (qword_1ED8C9800 != -1)
  {
    sub_1A88C5688();
  }

  return byte_1ED8C9808;
}

- (BOOL)isClingBackwardsCompatibilityEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isClingBackwardsCompatibilityEnabled"];
  if (qword_1ED8C9620 != -1)
  {
    sub_1A88C569C();
  }

  return byte_1ED8C9628;
}

- (BOOL)isStickersAppEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isStickersAppEnabled_mac"];
  if (qword_1EB30B600 != -1)
  {
    sub_1A88C56B0();
  }

  return byte_1EB30B5F8;
}

- (BOOL)isStickerRepositioningEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isStickerRepositioningEnabled_iOS"];
  if (qword_1EB30B610 != -1)
  {
    sub_1A88C56C4();
  }

  return byte_1EB30B608;
}

- (BOOL)isStickerRepositioningEnabled_macOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isStickerRepositioningEnabled_macOS"];
  if (qword_1EB30B620 != -1)
  {
    sub_1A88C56D8();
  }

  return byte_1EB30B618;
}

- (BOOL)isAlwaysShowStickerDropUIEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isAlwaysShowStickerDropUIEnabled"];
  if (qword_1EB30B630 != -1)
  {
    sub_1A88C56EC();
  }

  return byte_1EB30B628;
}

- (BOOL)isZelkovaGroupEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isZelkovaGroupEnabled"];
  if (qword_1EB309360 != -1)
  {
    sub_1A88C5700();
  }

  return byte_1EB309368;
}

- (BOOL)isZelkovaKoreaEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isZelkovaKoreaEnabled"];
  if (qword_1EB309350 != -1)
  {
    sub_1A88C5714();
  }

  return byte_1EB309358;
}

- (BOOL)isPinnedConversationOnWatchEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPinnedConversationOnWatchEnabled"];
  if (qword_1EB30B640 != -1)
  {
    sub_1A88C5728();
  }

  return byte_1EB30B638;
}

- (BOOL)isPinActionEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPinActionEnabled"];
  if (qword_1EB309430 != -1)
  {
    sub_1A88C573C();
  }

  return byte_1EB30B648;
}

- (BOOL)isUnknownSenderBlastDoorEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isUnknownSenderBlastDoorEnabled"];
  if (qword_1ED8C97D8 != -1)
  {
    sub_1A88C5750();
  }

  return byte_1ED8C97E0;
}

- (BOOL)isWidgetKitComplicationsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWidgetKitComplicationsEnabled"];
  if (qword_1EB30B658 != -1)
  {
    sub_1A88C5764();
  }

  return byte_1EB30B650;
}

- (BOOL)isInlineTapbackMenuEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isInlineTapbackMenuEnabled"];
  if (qword_1EB30B668 != -1)
  {
    sub_1A88C5778();
  }

  return byte_1EB30B660;
}

- (BOOL)isReactWithAStickerEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isReactWithAStickerEnabled"];
  if (qword_1EB30B678 != -1)
  {
    sub_1A88C578C();
  }

  return byte_1EB30B670;
}

- (BOOL)isQuickRepliesEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isQuickRepliesEnabled"];
  if (qword_1EB30B688 != -1)
  {
    sub_1A88C57A0();
  }

  return byte_1EB30B680;
}

- (BOOL)isWolfFullScreenEffectsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isWolfFullScreenEffectsEnabled"];
  if (qword_1EB30B698 != -1)
  {
    sub_1A88C57B4();
  }

  return byte_1EB30B690;
}

- (BOOL)isModernDetailsViewEnabled_iOS
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isModernDetailsViewEnabled_iOS"];
  if (qword_1EB30B6A8 != -1)
  {
    sub_1A88C57C8();
  }

  return byte_1EB30B6A0;
}

- (BOOL)isModernDetailsViewEnabled_mac
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isModernDetailsViewEnabled_mac"];
  if (qword_1EB30B6B8 != -1)
  {
    sub_1A88C57DC();
  }

  return byte_1EB30B6B0;
}

- (BOOL)isRockNRollEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isRockNRollEnabled"];
  if (qword_1EB309410 != -1)
  {
    sub_1A88C57F0();
  }

  return byte_1EB309418;
}

- (BOOL)isOOPKeyboardEnabled
{
  if (qword_1EB30B6C8 != -1)
  {
    sub_1A88C5804();
  }

  return byte_1EB30B6C0;
}

- (BOOL)isPersistentTaskNotificationsEnabled
{
  [(IMFeatureFlags *)self checkForUnitTestingWithFeatureName:@"isPersistentTaskNotificationsEnabled"];
  if (qword_1EB309438 != -1)
  {
    sub_1A88C5818();
  }

  return byte_1EB30B6D0;
}

- (BOOL)isFeatureFlagEnabledWithName:(id)a3
{
  [a3 cStringUsingEncoding:4];

  return _os_feature_enabled_impl();
}

@end