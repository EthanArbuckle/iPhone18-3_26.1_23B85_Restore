@interface SGDSuggestManager
+ (id)contactAggregator;
+ (id)entityTagForCategory:(int64_t)a3;
+ (id)extractAttributeSetsFromRealtimeEvents:(id)a3;
+ (id)filterAttributesForDonation:(id)a3;
+ (id)filterPseudoEvents:(id)a3 keepPastEvents:(BOOL)a4 keepPartialEvents:(BOOL)a5 keepEventsFromOldDocuments:(BOOL)a6 keepUnsupportedEventCategoryStatus:(BOOL)a7 keepUnsupportedEventCategoryStatusForTextMessage:(BOOL)a8 keepLLMExtractionForRealTime:(BOOL)a9;
+ (id)getAggregatedAttributeSet:(id)a3;
+ (id)getProcessedItemFromEvents:(id)a3 uniqueID:(id)a4 bundleID:(id)a5;
+ (id)preprocessSearchableItem:(id)a3;
+ (id)requestCache;
+ (id)simpleWritebackHandler;
+ (void)clearRequestCache;
+ (void)updateOriginalDocumentsWith:(id)a3 completionHandler:(id)a4;
- (BOOL)_canBannerUseStoredDissection:(id)a3 options:(unint64_t)a4;
- (BOOL)_harvestPeopleFromInteractions:(id)a3 bundleId:(id)a4;
- (BOOL)_isContactInteresting:(id)a3 emailEntity:(id)a4 enrichments:(id)a5 hasContactCard:(unint64_t)a6;
- (BOOL)clientIsMail;
- (BOOL)clientIsMessages;
- (BOOL)containsNonCuratedData:(id)a3;
- (BOOL)isSGEvent:(id)a3 duplicateOfEKEvent:(id)a4;
- (BOOL)isSearchableItemPartOfReimport:(id)a3;
- (BOOL)isSearchableItemPartOfReimportWithGetterBlock:(id)a3 bundleIdentifier:(id)a4;
- (SGDSuggestManager)initWithConnection:(id)a3 store:(id)a4;
- (SGDSuggestManager)initWithMessagesConnection:(id)a3 store:(id)a4;
- (SGDSuggestManager)initWithStore:(id)a3;
- (SGDSuggestManager)initWithStore:(id)a3 ctsManager:(id)a4 ekStoreProvider:(id)a5 contactStore:(id)a6 pet2Tracker:(id)a7;
- (SGMContactDetailUsedApp_)_appEnumForBundleId:(id)a3;
- (id)_emailContentCacheSalt;
- (id)_mapToPseudoEvents:(id)a3;
- (id)_maybeFormatString;
- (id)_pmlTraining;
- (id)_showInFormatStringWithLocalization:(id)a3;
- (id)cachedResultForKey:(id)a3 generateResult:(id)a4 validateResults:(id)a5;
- (id)consumeInteractionWithContext:(id)a3;
- (id)consumeMailContentWithContext:(id)a3;
- (id)consumeMessagesContentWithContext:(id)a3;
- (id)createLaunchIntentForStorageEvent:(id)a3;
- (id)curatedEventKeyForExactMatchOfPseudoEvent:(id)a3 candidates:(id)a4;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3;
- (id)enrichmentFromExternalExtraction:(id)a3 origin:(id)a4;
- (id)entityFromUniqueKey:(id)a3;
- (id)filterRealtimeEvents:(id)a3;
- (id)realtimeContactsFromEntity:(id)a3 enrichments:(id)a4 sourceTextMessage:(id)a5 store:(id)a6;
- (id)realtimeEventsFromEntity:(id)a3 enrichments:(id)a4 store:(id)a5;
- (id)realtimeEventsFromEntity:(id)a3 message:(id)a4 enrichments:(id)a5 store:(id)a6 keepPastEvents:(BOOL)a7 keepPartialEvents:(BOOL)a8 keepEventsFromOldDocuments:(BOOL)a9 keepUnsupportedEventCategoryStatus:(BOOL)a10 keepUnsupportedEventCategoryStatusForTextMessage:(BOOL)a11 keepLLMExtractionForRealtime:(BOOL)a12 keepAttributesForEvents:(BOOL)a13;
- (id)realtimeWalletOrdersFromEntity:(id)a3 enrichments:(id)a4;
- (id)realtimeWalletPassesFromEntity:(id)a3 enrichments:(id)a4;
- (id)storageContactFromRecordId:(id)a3;
- (unsigned)interfaceForRealtimeReminder:(id)a3;
- (void)_confirmReminderByRecordId:(id)a3 completion:(id)a4;
- (void)_executeBoxTasks:(id)a3;
- (void)_harvestReservationsFromInteractions:(id)a3 bundleId:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_performAction:(id)a3 onContactDetailRecord:(id)a4 confirmRejectUI:(int)a5 completion:(id)a6;
- (void)_performAction:(id)a3 onRecord:(id)a4 withParentConfirmation:(BOOL)a5 confirmRejectUI:(int)a6 completion:(id)a7;
- (void)_processReservationInteractions:(id)a3 bundleId:(id)a4 completion:(id)a5;
- (void)_rejectReminderByRecordId:(id)a3 completion:(id)a4;
- (void)_sendChatChangedNotificationWithDomainIdentifier:(id)a3;
- (void)_setupHistoryObserver:(id)a3;
- (void)_storeAndGeocodeEntity:(id)a3 spotlightBundleIdentifier:(id)a4 spotlightUniqueIdentifier:(id)a5 spotlightDomainIdentifier:(id)a6 store:(id)a7 afterCallbackQueue:(id)a8 finalize:(id)a9;
- (void)_suggestionsFromMessage:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 completionDelivery:(unint64_t)a6 completionHandler:(id)a7;
- (void)_suggestionsFromSingleSearchableItem:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 processingType:(unint64_t)a6 completionDelivery:(unint64_t)a7 withCompletion:(id)a8;
- (void)addInteractions:(id)a3 bundleId:(id)a4 completion:(id)a5;
- (void)addSearchableItemMetadata:(id)a3 htmlData:(id)a4 completion:(id)a5;
- (void)addSearchableItems:(id)a3 completion:(id)a4;
- (void)allDeliveriesWithLimit:(unint64_t)a3 withCompletion:(id)a4;
- (void)allEventsLimitedTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)allRemindersLimitedTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)batchSuggestionsFromMessages:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 batchCompletion:(id)a6 writeBackCompletion:(id)a7 shouldStopSignal:(id)a8;
- (void)batchSuggestionsFromSearchableItems:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 processingType:(unint64_t)a6 completionDelivery:(unint64_t)a7 batchCompletion:(id)a8 writeBackCompletion:(id)a9 shouldStopSignal:(id)a10;
- (void)birthdayExtractionsForInterval:(id)a3 withCompletion:(id)a4;
- (void)bumptTTLForNLEvent:(id)a3;
- (void)celebrationExtractionsForInterval:(id)a3 withCompletion:(id)a4;
- (void)clearCachesFully:(BOOL)a3 withCompletion:(id)a4;
- (void)clearContactAggregator;
- (void)clearContactAggregatorConversation:(id)a3;
- (void)cnContactMatchesForRecordId:(id)a3 withCompletion:(id)a4;
- (void)cnContactMatchesForRecordIds:(id)a3 withCompletion:(id)a4;
- (void)confirmContact:(id)a3 confirmRejectUI:(int)a4 completion:(id)a5;
- (void)confirmEvent:(id)a3 completion:(id)a4;
- (void)confirmEventByRecordId:(id)a3 completion:(id)a4;
- (void)confirmRealtimeReminder:(id)a3 completion:(id)a4;
- (void)confirmReminderByRecordId:(id)a3 completion:(id)a4;
- (void)contactFromRecordId:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesByEmailAddress:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesByPhoneNumber:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesBySocialProfile:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contentAdmissionBlocklistDidChange:(id)a3;
- (void)daemonExitWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteCloudKitZoneWithCompletion:(id)a3;
- (void)deleteEventByRecordId:(id)a3 completion:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 completion:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 groupIdentifiers:(id)a4 completion:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 identifiers:(id)a4 completion:(id)a5;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 domainIdentifiers:(id)a4 completion:(id)a5;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5;
- (void)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)emailAddressIsSignificant:(id)a3 withCompletion:(id)a4;
- (void)enqueueSearchableItems:(id)a3 completion:(id)a4;
- (void)evaluateRecipe:(id)a3 attachments:(id)a4 completion:(id)a5;
- (void)eventFromRecordId:(id)a3 withCompletion:(id)a4;
- (void)eventFromUniqueId:(id)a3 completion:(id)a4;
- (void)extractAttributesAndDonate:(id)a3 withCompletion:(id)a4;
- (void)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)foundInStringForRecordId:(id)a3 style:(unsigned __int8)a4 withCompletion:(id)a5;
- (void)fullDownloadRequestBatch:(unint64_t)a3 withCompletion:(id)a4;
- (void)geocodeEnrichmentsInPipelineEntity:(id)a3 withCompletion:(id)a4;
- (void)harvestedSuggestionsFromMessage:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)harvestedSuggestionsFromMessage:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)harvestedSuggestionsFromMessages:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 withCompletion:(id)a12;
- (void)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 withCompletion:(id)a6;
- (void)interactionStoreLookupForDetail:(id)a3 withCompletion:(id)a4;
- (void)ipsosMessagesFromSearchableItems:(id)a3 withCompletion:(id)a4;
- (void)isEnabledWithCompletion:(id)a3;
- (void)isEventCandidateForURL:(id)a3 andTitle:(id)a4 containsSchemaOrg:(BOOL)a5 withCompletion:(id)a6;
- (void)isEventCandidateForURL:(id)a3 title:(id)a4 withCompletion:(id)a5;
- (void)keepDirty:(BOOL)a3;
- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 completion:(id)a4;
- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 ignoreUserActivitySupport:(BOOL)a6 ignoreMailCheck:(BOOL)a7 completion:(id)a8;
- (void)logEventInteractionForEventWithUniqueKey:(id)a3 interface:(unsigned __int16)a4 actionType:(unsigned __int16)a5;
- (void)logMetricAutocompleteResult:(int)a3 recordId:(id)a4 contactIdentifier:(id)a5 bundleId:(id)a6;
- (void)logMetricAutocompleteUserSelectedRecordId:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricContactCreated:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricContactSearchResult:(int)a3 recordId:(id)a4 contactIdentifier:(id)a5 bundleId:(id)a6;
- (void)logMetricContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)a3;
- (void)logMetricSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logUnknownContactInformationShownCount:(unint64_t)a3 notShownCount:(unint64_t)a4 bundleId:(id)a5;
- (void)logUserCreatedReminderTitle:(id)a3 withCompletion:(id)a4;
- (void)messagesToRefreshWithCompletion:(id)a3;
- (void)namesForDetailCacheSnapshotsWithCompletion:(id)a3;
- (void)noopWithCompletion:(id)a3;
- (void)originFromRecordId:(id)a3 completion:(id)a4;
- (void)pingWithCompletion:(id)a3;
- (void)planReceivedFromServerWithPayload:(id)a3 completion:(id)a4;
- (void)powerStateWithCompletion:(id)a3;
- (void)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 completion:(id)a8;
- (void)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 completion:(id)a8;
- (void)prepareForRealtimeExtraction:(id)a3;
- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 withCompletion:(id)a5;
- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5;
- (void)realtimeSuggestionsForMailOrMessageWithHash:(id)a3 options:(unint64_t)a4 completion:(id)a5 completionDelivery:(unint64_t)a6 providedBy:(id)a7 searchableItem:(id)a8 dissectIfNecessary:(BOOL)a9 isTextMessage:(BOOL)a10;
- (void)realtimeSuggestionsForMailOrMessageWithHash:(id)a3 options:(unint64_t)a4 completion:(id)a5 completionDelivery:(unint64_t)a6 providedBy:(id)a7 searchableItem:(id)a8 dissectIfNecessary:(BOOL)a9 processingType:(unint64_t)a10 isTextMessage:(BOOL)a11;
- (void)realtimeSuggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 extractionDate:(id)a6 withCompletion:(id)a7;
- (void)rebuildNamesForDetailCache:(id)a3;
- (void)recentURLsWithLimit:(unsigned int)a3 withCompletion:(id)a4;
- (void)registerForCoreSpotlightIndexing;
- (void)registerForProactiveHarvesting;
- (void)rejectContact:(id)a3 confirmRejectUI:(int)a4 completion:(id)a5;
- (void)rejectEvent:(id)a3 completion:(id)a4;
- (void)rejectEventByRecordId:(id)a3 completion:(id)a4;
- (void)rejectRealtimeReminder:(id)a3 completion:(id)a4;
- (void)rejectReminderByRecordId:(id)a3 completion:(id)a4;
- (void)reminderAlarmTriggeredForRecordId:(id)a3 completion:(id)a4;
- (void)reminderTitleForContent:(id)a3 withCompletion:(id)a4;
- (void)removeAllStoredPseudoContactsWithCompletion:(id)a3;
- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 withCompletion:(id)a5;
- (void)reportMessagesFound:(id)a3 lost:(id)a4 withCompletion:(id)a5;
- (void)resetConfirmationAndRejectionHistory:(id)a3;
- (void)resolveFullDownloadRequests:(id)a3 withCompletion:(id)a4;
- (void)saliencyFromEmailHeaders:(id)a3 withCompletion:(id)a4;
- (void)saliencyFromRFC822Data:(id)a3 withCompletion:(id)a4;
- (void)schemaOrgToEvents:(id)a3 completion:(id)a4;
- (void)sendRTCLogsWithCompletion:(id)a3;
- (void)setupManagerWithConnection:(id)a3 store:(id)a4 ctsManager:(id)a5 ekStoreProvider:(id)a6 contactStore:(id)a7 pet2Tracker:(id)a8;
- (void)sleepWithCompletion:(id)a3;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 withCompletion:(id)a5;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 withCompletion:(id)a7;
- (void)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 completion:(id)a7;
- (void)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 withCompletion:(id)a7;
- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 completionHandler:(id)a6 fullCompletionHandler:(id)a7;
- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 fullCompletionHandler:(id)a5;
- (void)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromSingleMessage:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 completionHandler:(id)a6 fullCompletionHandler:(id)a7;
- (void)suggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 withCompletion:(id)a6;
- (void)titleSuggestionForMessage:(id)a3 withCompletion:(id)a4;
- (void)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 withCompletion:(id)a5;
- (void)updateMessages:(id)a3 state:(unint64_t)a4 completion:(id)a5;
- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithLastModificationDate:(id)a4 completion:(id)a5;
@end

@implementation SGDSuggestManager

- (id)_maybeFormatString
{
  if (_maybeFormatString_once != -1)
  {
    dispatch_once(&_maybeFormatString_once, &__block_literal_global_833);
  }

  v3 = _maybeFormatString_localizedString;

  return v3;
}

- (void)dealloc
{
  [(SGCoalescingDropBox *)self->_purgeDeletionDropBox wait];
  settingsChangeToken = self->_settingsChangeToken;
  if (settingsChangeToken)
  {
    notify_cancel(settingsChangeToken);
  }

  v4 = +[SGAsset asset];
  [v4 deregisterUpdateHandlerAsyncWithToken:self->_assetUpdateToken];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGDSuggestionsManager going away now, bye!", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = SGDSuggestManager;
  [(SGDSuggestManager *)&v7 dealloc];
}

- (void)clearContactAggregator
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: Dropping all aggregated contacts", v4, 2u);
  }

  v3 = +[SGDSuggestManager contactAggregator];
  [v3 clear];
}

+ (id)contactAggregator
{
  if (contactAggregator__pasOnceToken6 != -1)
  {
    dispatch_once(&contactAggregator__pasOnceToken6, &__block_literal_global_235);
  }

  v3 = contactAggregator__pasExprOnceResult;

  return v3;
}

- (id)_pmlTraining
{
  v2 = MEMORY[0x277D41F88];
  v3 = +[SGPaths suggestionsDirectory];
  v4 = [v2 sharedSingletonWithDirectory:v3];

  return v4;
}

- (void)extractAttributesAndDonate:(id)a3 withCompletion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:0 userInfo:&unk_28474B350];
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: spolightknowledged event processing code path is disabled with scheduled receiver path enabled in textUnderstanding", buf, 2u);
    }

    goto LABEL_16;
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 bundleID];
    v10 = [v6 uniqueIdentifier];
    *buf = 138413058;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2048;
    v30 = 1069547522;
    v31 = 2112;
    v32 = @"SGDSuggestManagerProcessingTypeRealtime";
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: extractAttributesAndDonate: %@ : %@ options: %tu, processingType: %@", buf, 0x2Au);
  }

  v11 = [v6 bundleID];
  v12 = [v11 isEqualToString:*MEMORY[0x277D021C0]];

  if (!v12)
  {
    v15 = [v6 bundleID];
    v16 = [v15 isEqualToString:*MEMORY[0x277D021D0]];

    if (v16)
    {
      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: extractAttributesAndDonate is disabled for Messages", buf, 2u);
      }
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:&unk_28474B378];
LABEL_16:
    v19 = [MEMORY[0x277D02138] responseWithError:v14];
    v7[2](v7, v19);

    goto LABEL_17;
  }

  v13 = [SGDSuggestManager preprocessSearchableItem:v6];
  if (v13)
  {
    v14 = v13;
    v7[2](v7, v13);
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__SGDSuggestManager_extractAttributesAndDonate_withCompletion___block_invoke;
    v23[3] = &unk_27894BBA8;
    v24 = v7;
    v21 = MEMORY[0x2383809F0](v23);
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager using legacy suggestions path to extract events", buf, 2u);
    }

    [(SGDSuggestManager *)self _suggestionsFromSingleSearchableItem:v6 options:1069547522 dissectIfNecessary:1 processingType:0 completionDelivery:0 withCompletion:v21];
    v14 = 0;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

void __63__SGDSuggestManager_extractAttributesAndDonate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 response1];
    v13 = 134217984;
    v14 = [v5 count];
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: found: %ld results", &v13, 0xCu);
  }

  v6 = [v3 error];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277D02138];
    v9 = [v3 error];
    [v8 responseWithError:v9];
  }

  else
  {
    v10 = [v3 response1];
    v9 = [SGDSuggestManager extractAttributeSetsFromRealtimeEvents:v10];

    v7 = *(a1 + 32);
    [MEMORY[0x277D02138] responseWith:v9];
  }
  v11 = ;
  (*(v7 + 16))(v7, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)consumeInteractionWithContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 content];
  v6 = [v5 interaction];

  v7 = [v4 content];

  v8 = [v7 bundleIdentifier];

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: consumeInteractionWithContext: %@", buf, 0xCu);
  }

  v18 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [(SGDSuggestManager *)self _harvestPeopleFromInteractions:v10 bundleId:v8];

  if (consumeInteractionWithContext___pasOnceToken254 != -1)
  {
    dispatch_once(&consumeInteractionWithContext___pasOnceToken254, &__block_literal_global_955);
  }

  v17 = v6;
  v11 = MEMORY[0x277CBEA60];
  v12 = consumeInteractionWithContext___pasExprOnceResult;
  v13 = [v11 arrayWithObjects:&v17 count:1];
  [(SGDSuggestManager *)self _harvestReservationsFromInteractions:v13 bundleId:v8 queue:v12 completion:&__block_literal_global_958, v17];

  v14 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __51__SGDSuggestManager_consumeInteractionWithContext___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGSuggestManager-consumeInteractionWithContext" qosClass:25];
  v2 = consumeInteractionWithContext___pasExprOnceResult;
  consumeInteractionWithContext___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)consumeMessagesContentWithContext:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 content];
    v7 = [v6 uniqueId];
    v8 = [v4 content];
    v23 = 138412547;
    v24 = v7;
    v25 = 2117;
    v26 = v8;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: consumeMessagesContentWithContext %@: %{sensitive}@", &v23, 0x16u);
  }

  v9 = [SGTextMessage alloc];
  v10 = [v4 content];
  v11 = [v4 contentProtection];
  v12 = [(SGTextMessage *)v9 initWithMessagesContentEvent:v10 contentProtection:v11];

  v13 = [SGRequestContext alloc];
  v14 = [(SGDManagerForCTS *)self->_ctsManager serviceContext];
  v15 = [(SGRequestContext *)v13 initWithServiceContext:v14 concurrencyBehavior:1 backpressureHazard:0];

  v16 = [SGHarvestQueueMetrics alloc];
  v17 = [(SGHarvestQueueMetrics *)v16 initWithBundleIdentifier:*MEMORY[0x277D41E60] highPriority:0 harvestedOnBattery:0 receivedOnBattery:0 harvestSource:8];
  ctsManager = self->_ctsManager;
  v19 = +[SGPipeline fullPipeline];
  [(SGDManagerForCTS *)ctsManager processTextMessage:v12 pipeline:v19 context:v15 harvestMetrics:v17];

  v20 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)consumeMailContentWithContext:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 content];
      v9 = [v8 uniqueId];
      v10 = [v5 content];
      *buf = 138412547;
      v29 = v9;
      v30 = 2117;
      v31 = v10;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: consumeMailContentWithContext %@: %{sensitive}@", buf, 0x16u);
    }

    v11 = [v5 htmlParser];
    if (!v11)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:5430 description:{@"Invalid parameter not satisfying: %@", @"htmlParserNonNull != nil"}];
    }

    v12 = [SGSimpleMailMessage alloc];
    v13 = [v5 content];
    v14 = [v5 contentProtection];
    v15 = [(SGSimpleMailMessage *)v12 initWithMailContentEvent:v13 contentProtection:v14 htmlParser:v11];

    v16 = [SGRequestContext alloc];
    v17 = [(SGDManagerForCTS *)self->_ctsManager serviceContext];
    v18 = [(SGRequestContext *)v16 initWithServiceContext:v17 concurrencyBehavior:1 backpressureHazard:0];

    v19 = [SGHarvestQueueMetrics alloc];
    v20 = [(SGHarvestQueueMetrics *)v19 initWithBundleIdentifier:*MEMORY[0x277D41E50] highPriority:0 harvestedOnBattery:0 receivedOnBattery:0 harvestSource:8];
    ctsManager = self->_ctsManager;
    v22 = [v5 content];
    v23 = [v22 headers];
    v24 = +[SGPipeline fullPipeline];
    [(SGDManagerForCTS *)ctsManager processMailMessage:v15 headers:v23 pipeline:v24 context:v18 harvestMetrics:v20];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: deleteDataDerivedFromContentMatchingRequest", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke;
  v11[3] = &unk_27894E578;
  v11[4] = self;
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_3;
  v10[3] = &unk_27894BE30;
  v10[4] = self;
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_5;
  v9[3] = &unk_27894BE58;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_7;
  v8[3] = &unk_27894BE58;
  [v4 accessCriteriaUsingBundleIdentifierBlock:v11 domainSelectionBlock:v10 incontrovertiblyDeletedUniqueIdentifiersBlock:v9 purgedUniqueIdentifiersBlock:v8];

  v6 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  return v6;
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 136);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_4;
  v10[3] = &unk_27894BE08;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 updateBox:v10];
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 136);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_6;
  v10[3] = &unk_27894BE08;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 updateBox:v10];
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 136);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_8;
  v10[3] = &unk_27894BE08;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 updateBox:v10];
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *MEMORY[0x277D021C0];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 isEqualToString:v6];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v8)
  {
    [v7 addPurge:v9 uniqueIds:v10];
  }

  else
  {
    [v7 addDeletion:v9 uniqueIds:v10];
  }

  v11 = [v7 shouldRunHandlerImmediately];

  *a3 = v11;
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_6(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v6 addDeletion:v4 uniqueIds:v5];
  LOBYTE(v4) = [v6 shouldRunHandlerImmediately];

  *a3 = v4;
}

void __65__SGDSuggestManager_deleteDataDerivedFromContentMatchingRequest___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v6 addDeletion:v4 domainSelection:v5];
  LOBYTE(v4) = [v6 shouldRunHandlerImmediately];

  *a3 = v4;
}

- (void)registerForProactiveHarvesting
{
  v3 = [MEMORY[0x277D41DE8] defaultCoordinator];
  [v3 registerInteractionConsumer:self levelOfService:3];
}

- (void)foundInStringForRecordId:(id)a3 style:(unsigned __int8)a4 withCompletion:(id)a5
{
  v6 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:5312 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v43 = [MEMORY[0x277CCA890] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:5313 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

LABEL_3:
  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v9;
    v51 = 1024;
    LODWORD(v52) = v6;
    _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGSuggestManager-foundInStringForRecordId:%@ style:%u called", buf, 0x12u);
  }

  v12 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByRecordId:v9];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 loadOrigin:self->_harvestStore];
    v15 = [v14 localizedApplicationName];
    if (!v15)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:-1 userInfo:&unk_28474B328];
      v29 = [MEMORY[0x277D02138] responseWithError:v32];
      v10[2](v10, v29);
LABEL_28:

      goto LABEL_29;
    }

    v16 = [v13 duplicateKey];
    v17 = [v16 entityType];

    if (v17 == 22)
    {
      v18 = [SGStorageReminder storageReminderFromEntity:v13 origin:v14];
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [v13 loggingIdentifier];
        v45 = v6;
        v21 = v20 = v18;
        v22 = [v20 loggingIdentifier];
        *buf = 138543618;
        v50 = v21;
        v51 = 2114;
        v52 = v22;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "Entity %{public}@ -> SGStorageReminder %{public}@", buf, 0x16u);

        v18 = v20;
        v6 = v45;
      }

      v23 = [v18 contactIdentifier];
      v24 = [v23 length];

      if (v24)
      {
        v46 = v18;
        v25 = [v18 contactIdentifier];
        v26 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
        v48 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        contactStore = self->_contactStore;
        v47 = 0;
        v29 = [SGContactsInterface unifiedContactWithIdentifier:v25 keysToFetch:v27 usingContactStore:contactStore error:&v47];
        v44 = v47;

        if (v29)
        {
          v30 = [MEMORY[0x277CBDA78] stringFromContact:v29 style:1000];
          if (v30)
          {
            v31 = v44;
            if (v6 == 1)
            {
              v32 = [SGFoundInAppsStrings foundInAppsStringCompactVersionWithContactName:v30];
              v33 = +[SGRTCLogging defaultLogger];
              v34 = v33;
              v35 = v46;
              v36 = 24;
            }

            else
            {
              if (v6)
              {
                v32 = 0;
LABEL_37:

                if (v32)
                {
                  goto LABEL_27;
                }

                goto LABEL_26;
              }

              v32 = [SGFoundInAppsStrings foundInAppsStringLongVersionForAppName:v15 contactName:v30];
              v33 = +[SGRTCLogging defaultLogger];
              v34 = v33;
              v35 = v46;
              v36 = 23;
            }

            [v33 logReminderInteractionFromReminder:v35 interface:v36 actionType:4];
          }

          else
          {
            v34 = sgLogHandle();
            v31 = v44;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "SGDSuggestManager-foundInStringForRecordId: unable to format contact name.", buf, 2u);
            }

            v32 = 0;
          }

          goto LABEL_37;
        }

        v39 = sgLogHandle();
        v38 = v44;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v44;
          _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "SGDSuggestManager-foundInStringForRecordId: error when fetching contact: %@", buf, 0xCu);
        }

        v18 = v46;
      }

      else
      {
        v38 = +[SGRTCLogging defaultLogger];
        [v38 logReminderInteractionFromReminder:v18 interface:23 actionType:4];
      }
    }

    v29 = 0;
LABEL_26:
    v32 = [SGFoundInAppsStrings foundInAppsStringWithoutContactForAppName:v15];
LABEL_27:
    v40 = [MEMORY[0x277D02138] responseWith:v32];
    v10[2](v10, v40);

    goto LABEL_28;
  }

  v37 = sgLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v50 = v9;
    _os_log_error_impl(&dword_231E60000, v37, OS_LOG_TYPE_ERROR, "No entity found for recordId: %@", buf, 0xCu);
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:&unk_28474B300];
  v15 = [MEMORY[0x277D02138] responseWithError:v14];
  v10[2](v10, v15);
LABEL_29:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_sendChatChangedNotificationWithDomainIdentifier:(id)a3
{
  v6 = a3;
  v3 = objc_autoreleasePoolPush();
  v4 = [@"com.apple.suggestions.internal.messages.processed." stringByAppendingString:v6];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, v4, 0, 0);
  objc_autoreleasePoolPop(v3);
}

- (id)filterRealtimeEvents:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v25 = objc_opt_new();
    v4 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v26 = v4;
      v27 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v10 = [v9 event];
          v11 = [v10 opaqueKey];

          if (v11)
          {
            v12 = [v4 objectForKeyedSubscript:v11];
            v13 = v12;
            if (!v12)
            {
              goto LABEL_10;
            }

            v14 = [v12 event];
            v15 = [v14 creationDate];
            v16 = [v9 event];
            v17 = [v16 creationDate];
            v18 = [v15 compare:v17];

            v7 = v27;
            v19 = v18 == 1;
            v4 = v26;
            if (!v19)
            {
LABEL_10:
              [v4 setObject:v9 forKeyedSubscript:v11];
            }
          }

          else
          {
            [v25 addObject:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [v4 allValues];
    objc_autoreleasePoolPop(v20);
    [v25 addObjectsFromArray:v21];

    [v25 sortUsingComparator:&__block_literal_global_918];
    v3 = v24;
  }

  else
  {
    v25 = v3;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __42__SGDSuggestManager_filterRealtimeEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 event];
  v6 = [v5 start];
  v7 = [v4 event];

  v8 = [v7 start];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SGDSuggestManager_suggestionsFromMessage_options_completionHandler___block_invoke;
  v10[3] = &unk_27894ED20;
  v11 = v8;
  v9 = v8;
  [(SGDSuggestManager *)self suggestionsFromMessage:a3 options:a4 completionDelivery:0 completionHandler:v10 fullCompletionHandler:0];
}

void __70__SGDSuggestManager_suggestionsFromMessage_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [MEMORY[0x277D02140] responseWithError:a2];
  }

  else
  {
    [MEMORY[0x277D02140] responseWith:? also:? also:?];
  }
  v3 = ;
  (*(v2 + 16))(v2);
}

- (void)harvestedSuggestionsFromMessages:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v41 = a4;
  v42 = a6;
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [v49 count];
    *&buf[12] = 2048;
    *&buf[14] = a5;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Messages: harvestedSuggestionsFromMessages: %tu messages (options %tu)", buf, 0x16u);
  }

  if ([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:v41])
  {
    if ([v49 count])
    {
      v47 = objc_opt_new();
      v46 = objc_opt_new();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v72 = __Block_byref_object_copy__4008;
      v73 = __Block_byref_object_dispose__4009;
      v74 = 0;
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      queue = dispatch_queue_create([v11 UTF8String], 0);

      v13 = dispatch_group_create();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v14 = [v49 reverseObjectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v15)
      {
        v16 = *v66;
        v43 = *MEMORY[0x277CCA1A0];
        obj = v14;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v66 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v65 + 1) + 8 * i);
            v19 = [v18 protection];
            v20 = v19 == 0;

            if (v20)
            {
              [v18 setProtection:v43];
            }

            dispatch_group_enter(v13);
            v21 = [v18 attributeSet];
            v22 = [v21 contentCreationDate];

            if (v22 && ([MEMORY[0x277CBEAA8] date], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "timeIntervalSinceDate:", v22), v25 = v24 < 10.0, v23, !v25))
            {
              v30 = 0;
            }

            else
            {
              v26 = [v18 uniqueIdentifier];
              v27 = v26 == 0;

              if (!v27)
              {
                v28 = [MEMORY[0x277D02120] sharedInstance];
                v29 = [v18 uniqueIdentifier];
                [v28 waitForUniqueIdentifierToProcess:v29];
              }

              v30 = 1;
            }

            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke;
            v57[3] = &unk_27894BD98;
            v58 = queue;
            v59 = v18;
            v60 = v47;
            v61 = v46;
            v62 = v49;
            v64 = buf;
            v63 = v13;
            [(SGDSuggestManager *)self _suggestionsFromMessage:v18 options:a5 dissectIfNecessary:v30 completionDelivery:0 completionHandler:v57];
          }

          v14 = obj;
          v15 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v15);
      }

      v31 = self;
      if ([v47 count]< 2)
      {
        v33 = v47;
      }

      else
      {
        v32 = [v47 lastObject];
        v69 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];

        v31 = self;
      }

      v37 = [(SGDSuggestManager *)v31 filterRealtimeEvents:v46, v41];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_913;
      block[3] = &unk_27894BDC0;
      v51 = v33;
      v52 = v37;
      v55 = v42;
      v56 = buf;
      v53 = v49;
      v54 = v31;
      v38 = v37;
      v39 = v33;
      dispatch_group_notify(v13, queue, block);

      _Block_object_dispose(buf, 8);
      v35 = v47;
    }

    else
    {
      if (v42)
      {
        v36 = [MEMORY[0x277D02140] responseWith:0 also:0 also:0];
        (*(v42 + 2))(v42, v36);
      }

      v35 = sgLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v35, OS_LOG_TYPE_INFO, "harvestedSuggestionsFromMessages called with no inputs", buf, 2u);
      }
    }

    goto LABEL_32;
  }

  v34 = sgLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v34, OS_LOG_TYPE_DEFAULT, "harvestedSuggestionsFromMessages ignoring item since the bundle is disallowed by user's settings", buf, 2u);
  }

  if (v42)
  {
    v35 = [MEMORY[0x277D02140] responseWith:0 also:0 also:0];
    (*(v42 + 2))(v42, v35);
LABEL_32:
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_2;
  block[3] = &unk_27894F2B8;
  v12 = v3;
  v10 = *(a1 + 40);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v15 = *(a1 + 80);
  v9 = v3;
  dispatch_sync(v4, block);
  dispatch_group_leave(*(a1 + 72));
}

void __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_913(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [MEMORY[0x277D02140] responseWith:*(a1 + 32) also:*(a1 + 40) also:*(*(*(a1 + 72) + 8) + 40)];
  (*(v2 + 16))(v2, v3);

  v4 = [*(a1 + 48) firstObject];
  v5 = [v4 domainIdentifier];

  v6 = MEMORY[0x277D425A0];
  v7 = dispatch_get_global_queue(9, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_2_914;
  v9[3] = &unk_278955830;
  v9[4] = *(a1 + 56);
  v10 = v5;
  v8 = v5;
  [v6 runAsyncOnQueue:v7 afterDelaySeconds:v9 block:0.1];
}

void __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) contacts];

  if (v2)
  {
    v3 = [SGTextMessage isSent:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) contacts];
    v6 = v5;
    if (v3)
    {
      v7 = [v5 _pas_filteredArrayWithTest:&__block_literal_global_911];
      [v4 addObjectsFromArray:v7];
    }

    else
    {
      [v4 addObjectsFromArray:v5];
    }
  }

  v8 = [*(a1 + 32) events];
  if (v8)
  {
    v9 = v8;
    v10 = [SGTextMessage isSent:*(a1 + 40)];

    if (!v10)
    {
      v11 = *(a1 + 56);
      v12 = [*(a1 + 32) events];
      [v11 addObjectsFromArray:v12];
    }
  }

  v13 = [*(a1 + 32) reminders];

  if (v13)
  {
    v14 = [*(a1 + 32) reminders];
    v15 = [v14 count];

    if (v15 == 1)
    {
      v16 = +[SGReminderTrialClientWrapper sharedInstance];
      v17 = [v16 messagesBannerLimit];
      v18 = [v17 unsignedIntegerValue];

      if ([*(a1 + 64) indexOfObject:*(a1 + 40)] < v18)
      {
        v19 = sgRemindersLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v28 = [*(a1 + 32) reminders];
          v29 = [v28 firstObject];
          v30 = [v29 reminder];
          v31 = [v30 recordId];
          v32 = 138412290;
          v33 = v31;
          _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: harvestedSuggestionsFromMessages: Suggesting reminder with recordId: %@", &v32, 0xCu);
        }

        v20 = [*(a1 + 32) reminders];
        v21 = *(*(a1 + 72) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v23 = +[SGRTCLogging defaultLogger];
        v24 = [*(a1 + 32) reminders];
        v25 = [v24 firstObject];
        v26 = [v25 reminder];
        [v23 logReminderInteractionFromReminder:v26 interface:5 actionType:4];
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

BOOL __97__SGDSuggestManager_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = [v2 birthday];
  v4 = v3 != 0;

  return v4;
}

- (void)harvestedSuggestionsFromMessage:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 bundleID];
    v15 = [v10 uniqueIdentifier];
    *buf = 138412802;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2048;
    v31 = a5;
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Messages: harvestedSuggestionsFromMessage (deprecated): %@ : %@ options: %tu", buf, 0x20u);
  }

  if (([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:v11] & 1) == 0)
  {
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, "harvestedSuggestionsFromMessage ignoring item since the bundle is disallowed by user's settings", buf, 2u);
    }

    goto LABEL_11;
  }

  v16 = [v10 domainIdentifier];

  if (!v16)
  {
    harvestStore = self->_harvestStore;
    v18 = [v10 uniqueIdentifier];
    v19 = [(SGSqlEntityStore *)harvestStore domainIdentifierForSpotlightReferenceForBundleIdentifier:v11 uniqueIdentifier:v18];
    [v10 setDomainIdentifier:v19];
  }

  v20 = [v10 domainIdentifier];

  if (!v20)
  {
LABEL_11:
    v21 = [MEMORY[0x277D02140] responseWith:0 also:0 also:0];
    v12[2](v12, v21);
    goto LABEL_12;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__SGDSuggestManager_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler___block_invoke;
  v24[3] = &unk_27894ECA8;
  v25 = v12;
  [(SGDSuggestManager *)self _suggestionsFromMessage:v10 options:a5 dissectIfNecessary:0 completionDelivery:0 completionHandler:v24];
  v21 = v25;
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

void __96__SGDSuggestManager_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D02140];
    v4 = a2;
    v8 = [v4 contacts];
    v5 = [v4 events];
    v6 = [v4 reminders];

    v7 = [v3 responseWith:v8 also:v5 also:v6];
    (*(v2 + 16))(v2, v7);
  }
}

- (void)harvestedSuggestionsFromMessage:(id)a3 bundleIdentifier:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 bundleID];
    v15 = [v10 uniqueIdentifier];
    *buf = 138412802;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2048;
    v31 = a5;
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Messages: harvestedSuggestionsFromMessage: %@ : %@ options: %tu", buf, 0x20u);
  }

  if (([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:v11] & 1) == 0)
  {
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, "harvestedSuggestionsFromMessage ignoring item since the bundle is disallowed by user's settings", buf, 2u);
    }

    goto LABEL_11;
  }

  v16 = [v10 domainIdentifier];

  if (!v16)
  {
    harvestStore = self->_harvestStore;
    v18 = [v10 uniqueIdentifier];
    v19 = [(SGSqlEntityStore *)harvestStore domainIdentifierForSpotlightReferenceForBundleIdentifier:v11 uniqueIdentifier:v18];
    [v10 setDomainIdentifier:v19];
  }

  v20 = [v10 domainIdentifier];

  if (!v20)
  {
LABEL_11:
    v21 = [MEMORY[0x277D02138] responseWith:0];
    v12[2](v12, v21);
    goto LABEL_12;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__SGDSuggestManager_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion___block_invoke;
  v24[3] = &unk_27894ECA8;
  v25 = v12;
  [(SGDSuggestManager *)self _suggestionsFromMessage:v10 options:a5 dissectIfNecessary:0 completionDelivery:0 completionHandler:v24];
  v21 = v25;
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

void __93__SGDSuggestManager_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277D02108];
    v4 = a2;
    v5 = [v3 alloc];
    v6 = [v4 contacts];
    v7 = [v4 events];
    v8 = [v4 reminders];
    v9 = [v4 walletOrders];
    v10 = [v4 walletPasses];

    v13 = [v5 initWithContacts:v6 events:v7 reminders:v8 walletOrders:v9 walletPasses:v10];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277D02138] responseWith:v13];
    (*(v11 + 16))(v11, v12);
  }
}

- (void)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v7 = a5;
  v52[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v11 type] != 1)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D02208];
    v51 = @"message";
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"origin type '%ld' is not supported", objc_msgSend(v11, "type")];
    v52[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v13 = [v23 errorWithDomain:v24 code:4 userInfo:v26];

    v27 = sgEventsLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v13;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "filteredSuggestionsFromExtractions: Error: %@", buf, 0xCu);
    }

    v28 = [MEMORY[0x277D02138] responseWithError:v13];
    v12[2](v12, v28);
    goto LABEL_29;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = v10;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:&unk_28474B2D8];
          v29 = sgEventsLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v28;
            _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "filteredSuggestionsFromExtractions: Error: %@", buf, 0xCu);
          }

          v30 = [MEMORY[0x277D02138] responseWithError:v28];
          v12[2](v12, v30);
          v10 = v39;
          goto LABEL_28;
        }

        v20 = [(SGDSuggestManager *)self enrichmentFromExternalExtraction:v19 origin:v11];
        if (v20)
        {
          [v13 addObject:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ((v7 & 0x20000000) != 0)
  {
    v21 = 1;
    if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = [MEMORY[0x277D02098] showPastEvents];
    if ((v7 & 0x2000000) != 0)
    {
LABEL_14:
      v22 = 1;
      goto LABEL_23;
    }
  }

  v22 = [MEMORY[0x277D02098] showPastEvents];
LABEL_23:
  v10 = v39;
  v31 = 1;
  if ((v7 & 0x400000) == 0)
  {
    v31 = [v11 type] == 1;
  }

  BYTE5(v38) = 0;
  *(&v38 + 3) = 1;
  BYTE2(v38) = v31;
  LOWORD(v38) = v22;
  v28 = [SGDSuggestManager realtimeEventsFromEnrichments:"realtimeEventsFromEnrichments:origin:participants:store:keepPastEvents:keepPartialEvents:keepEventsFromOldDocuments:keepUnsupportedEventCategoryStatus:keepUnsupportedEventCategoryStatusForTextMessage:keepLLMExtractionForRealtime:keepAttributesForEvents:keepExceptions:" origin:v13 participants:v11 store:0 keepPastEvents:0 keepPartialEvents:v21 keepEventsFromOldDocuments:0 keepUnsupportedEventCategoryStatus:v38 keepUnsupportedEventCategoryStatusForTextMessage:? keepLLMExtractionForRealtime:? keepAttributesForEvents:? keepExceptions:?];
  v30 = sgFilter();
  v32 = sgEventsLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v14 count];
    v34 = [v28 count];
    v35 = [v30 count];
    *buf = 134218496;
    v45 = v33;
    v46 = 2048;
    v47 = v34;
    v48 = 2048;
    v49 = v35;
    _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEFAULT, "filteredSuggestionsFromExtractions: %tu extractions -> %tu realtime events -> %tu filtered by confirmation history", buf, 0x20u);
  }

  v36 = [MEMORY[0x277D02138] responseWith:v30];
  v12[2](v12, v36);

LABEL_28:
LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __86__SGDSuggestManager_filteredSuggestionsFromExtractions_origin_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  if ((*(a1 + 35) & 0x40) != 0)
  {
    return 1;
  }

  v2 = a2;
  v3 = +[SGSuggestHistory sharedSuggestHistory];
  v4 = [v3 isValidSuggestion:v2];

  return v4;
}

- (id)enrichmentFromExternalExtraction:(id)a3 origin:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [SGPipelineEntity alloc];
  v8 = [v6 sourceKey];
  v9 = [v6 externalKey];
  v10 = [SGDuplicateKey duplicateKeyForEmailWithSource:v8 messageId:v9];
  v11 = [v6 title];
  v12 = [(SGPipelineEntity *)v7 initWithDuplicateKey:v10 title:v11];

  v13 = [v5 icsAttachmentData];

  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = sgEventsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "Create an enrichment for calendar attachment event", buf, 2u);
  }

  v15 = objc_alloc(MEMORY[0x277D7F108]);
  v16 = [v5 icsAttachmentData];
  v101 = 0;
  v17 = [v15 initWithData:v16 options:0 error:&v101];
  v18 = v101;

  if (v18 || !v17)
  {
    v46 = sgEventsLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v104 = v18;
      _os_log_error_impl(&dword_231E60000, v46, OS_LOG_TYPE_ERROR, "Error when instantiating ICSDocument for calendar attachment %@", buf, 0xCu);
    }

    v47 = 0;
    v19 = v17;
  }

  else
  {
    v19 = [v17 calendar];
    v20 = [v19 calscale];
    if (!v20 || (v21 = v20, [v19 calscale], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"GREGORIAN"), v22, v21, (v23 & 1) != 0))
    {
      v90 = v6;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v24 = [v17 calendar];
      v25 = [v24 componentKeys];

      v26 = [v25 countByEnumeratingWithState:&v97 objects:v102 count:16];
      if (v26)
      {
        v27 = v26;
        v91 = v19;
        v89 = v12;
        v94 = v5;
        v95 = 0;
        v28 = *v98;
        v29 = 0x277D7F000uLL;
        v93 = *v98;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v98 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v97 + 1) + 8 * i);
            v32 = objc_autoreleasePoolPush();
            v33 = [v17 calendar];
            v34 = [v33 componentForKey:v31];

            v35 = *(v29 + 280);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v29;
              v37 = v25;
              v38 = v17;
              v39 = [v34 summary];
              v40 = [v94 title];
              v41 = [v39 isEqualToString:v40];

              if (v41)
              {
                v42 = [v34 uid];

                v95 = v42;
              }

              v17 = v38;
              v25 = v37;
              v29 = v36;
              v28 = v93;
            }

            objc_autoreleasePoolPop(v32);
          }

          v27 = [v25 countByEnumeratingWithState:&v97 objects:v102 count:16];
        }

        while (v27);

        v5 = v94;
        v43 = v95;
        v12 = v89;
        v19 = v91;
        if (v95)
        {

          v44 = 0;
          v45 = v95;
LABEL_32:
          v96 = v43;
          v49 = [(SGEntity *)v12 duplicateKey];
          v50 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v45 parentKey:v49];

          if (v44)
          {
          }

          v51 = [SGPipelineEnrichment alloc];
          v52 = [v5 title];
          v92 = v50;
          v53 = v12;
          v47 = [(SGPipelineEnrichment *)v51 initWithDuplicateKey:v50 title:v52 parent:v12];

          v54 = [v5 content];
          [(SGEntity *)v47 setContent:v54];

          v55 = [v5 creationDate];
          [v55 timeIntervalSince1970];
          [(SGPipelineEnrichment *)v47 setCreationTimestamp:?];

          v56 = [v5 creationDate];
          [v56 timeIntervalSince1970];
          [(SGPipelineEnrichment *)v47 setLastModifiedTimestamp:?];

          v57 = [v5 startTime];
          if (v57)
          {
            v58 = MEMORY[0x277D020E8];
            v59 = [v5 startTime];
            v60 = [v5 startTimeZone];
            v61 = [v5 endTime];
            [v5 endTimeZone];
            v63 = v62 = v5;
            v46 = [v58 rangeWithStartDate:v59 startTimeZone:v60 endDate:v61 endTimeZone:v63];

            v5 = v62;
          }

          else
          {
            v46 = 0;
          }

          v6 = v90;

          [(SGEntity *)v47 setTimeRange:v46];
          if ([v5 isAllDay])
          {
            v64 = [MEMORY[0x277D01FA0] allDay];
            [(SGEntity *)v47 addTag:v64];
          }

          v65 = [v5 fallbackIdentifier];

          if (v65)
          {
            v66 = MEMORY[0x277D01FA0];
            v67 = [v5 fallbackIdentifier];
            v68 = [v66 extraKey:v67];
            [(SGEntity *)v47 addTag:v68];
          }

          if ([v5 status] == 3)
          {
            v69 = [MEMORY[0x277D01FA0] extractedEventCancellation];
            [(SGEntity *)v47 addTag:v69];
          }

          v70 = [objc_opt_class() entityTagForCategory:{objc_msgSend(v5, "category")}];
          if (v70)
          {
            [(SGEntity *)v47 addTag:v70];
          }

          v71 = [v5 creationDate];
          v72 = [v71 sg_isMoreThanWeekOld];

          if (v72)
          {
            v73 = [MEMORY[0x277D01FA0] eventExtractedFromOldDocument];
            [(SGEntity *)v47 addTag:v73];
          }

          v74 = [(SGEntity *)v47 locations];
          v75 = [v5 locations];
          v76 = sgMap();
          [v74 addObjectsFromArray:v76];

          v77 = [v5 icsAttachmentData];

          if (v77)
          {
            v78 = MEMORY[0x277D01FA0];
            v79 = [v5 icsAttachmentData];
            v80 = [v78 icsAttachmentData:v79];
            [(SGEntity *)v47 addTag:v80];

            v81 = [MEMORY[0x277D01FA0] fromCalendarAttachment];
            [(SGEntity *)v47 addTag:v81];
          }

          v82 = [v5 url];

          if (v82)
          {
            v83 = MEMORY[0x277D01FA0];
            v84 = [v5 url];
            v85 = [v83 url:v84];
            [(SGEntity *)v47 addTag:v85];
          }

          v86 = [MEMORY[0x277D020C8] recordIdWithNumericValue:0];
          [(SGEntity *)v47 setRecordId:v86];

          v12 = v53;
          v19 = v92;
          v18 = v96;
          goto LABEL_52;
        }
      }

      else
      {
      }

      v48 = sgEventsLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v48, OS_LOG_TYPE_ERROR, "Failed synthesize groupIdentifier for calendar attachment event from icsData, fallingback to EventKit identifier", buf, 2u);
      }

      v6 = v90;
LABEL_31:
      v90 = v6;
      v45 = [v5 identifier];
      v43 = 0;
      v44 = 1;
      goto LABEL_32;
    }

    v46 = sgEventsLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v46, OS_LOG_TYPE_ERROR, "Ignore non-Gregorian calendars for calendar attachment", buf, 2u);
    }

    v47 = 0;
    v18 = v17;
  }

LABEL_52:

  v87 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 uniqueIdentifier];
    *buf = 138412546;
    v25 = v11;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Mail: dissectAttachmentsFromSearchableItem: %@ options: %tu", buf, 0x16u);
  }

  v12 = objc_initWeak(buf, self);
  [(SGDSuggestManager *)self clearCachesFully:1 withCompletion:&__block_literal_global_880];

  v13 = [v8 uniqueIdentifier];
  v14 = [v13 dataUsingEncoding:4];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__SGDSuggestManager_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke_881;
  v22[3] = &unk_27894ECA8;
  v15 = v9;
  v23 = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__SGDSuggestManager_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke_2;
  v20[3] = &unk_27894ECD0;
  v16 = v8;
  v21 = v16;
  LOBYTE(v19) = 0;
  LOBYTE(v18) = 1;
  [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:v14 options:a4 completion:v22 completionDelivery:0 providedBy:v20 searchableItem:v16 dissectIfNecessary:v18 processingType:1 isTextMessage:v19];

  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __81__SGDSuggestManager_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke_881(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v11 = v3;
    v4 = [v3 walletOrders];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v6 postNotificationName:@"com.apple.coresuggestions.SGDissectOrderSuggestion" object:0];
    }

    v7 = *(a1 + 32);
    v8 = MEMORY[0x277D02138];
    v9 = [v11 combinedSuggestions];
    v10 = [v8 responseWith:v9];
    (*(v7 + 16))(v7, v10);

    v3 = v11;
  }
}

void __81__SGDSuggestManager_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGDSuggestManager: Failed to clear caches in dissectAttachmentsFromSearchableItem, error: %@", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 spotlightBundleIdentifier];
    v15 = [v10 spotlightUniqueIdentifier];
    *buf = 138412802;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2048;
    v31 = a5;
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Mail: suggestionsFromSimpleMailMessage: %@ : %@ options: %tu", buf, 0x20u);
  }

  v16 = [(SGDSuggestManager *)self _emailContentCacheSalt];
  v17 = SGSha256Data(v12, v16);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__SGDSuggestManager_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke;
  v24[3] = &unk_27894ECA8;
  v25 = v11;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__SGDSuggestManager_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke_2;
  v22[3] = &unk_27894ECD0;
  v23 = v10;
  v18 = v10;
  v19 = v11;
  LOWORD(v21) = 1;
  [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:v17 options:a5 completion:v24 completionDelivery:0 providedBy:v22 searchableItem:0 dissectIfNecessary:v21 isTextMessage:?];

  v20 = *MEMORY[0x277D85DE8];
}

void __85__SGDSuggestManager_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D02138];
    v5 = [a2 combinedSuggestions];
    v4 = [v3 responseWith:v5];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 withCompletion:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sgLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v14;
    v33 = 2048;
    v34 = a6;
    _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Mail: suggestionsFromEmailContent: %@ options: %tu", buf, 0x16u);
  }

  v17 = [(SGDSuggestManager *)self _emailContentCacheSalt];
  v18 = SGSha256Data(v13, v17);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__SGDSuggestManager_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke;
  v29[3] = &unk_27894ECA8;
  v30 = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__SGDSuggestManager_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke_2;
  v25[3] = &unk_27894BD10;
  v26 = v13;
  v27 = v12;
  v28 = v14;
  v19 = v14;
  v20 = v12;
  v21 = v13;
  v22 = v15;
  LOWORD(v24) = 1;
  [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:v18 options:a6 completion:v29 completionDelivery:0 providedBy:v25 searchableItem:0 dissectIfNecessary:v24 isTextMessage:?];

  v23 = *MEMORY[0x277D85DE8];
}

void __87__SGDSuggestManager_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D02138];
    v5 = [a2 combinedSuggestions];
    v4 = [v3 responseWith:v5];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 bundleID];
    v12 = [v8 uniqueIdentifier];
    v18 = 138412802;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Mail: harvestedSuggestionsFromSearchableItem: %@ : %@ options: %tu", &v18, 0x20u);
  }

  v13 = MEMORY[0x277D41DF8];
  v14 = [v8 bundleID];
  LOBYTE(v13) = [v13 shouldAdmitContentFromBundleIdentifier:v14];

  if (v13)
  {
    [(SGDSuggestManager *)self _suggestionsFromSearchableItem:v8 options:a4 dissectIfNecessary:0 withCompletion:v9];
  }

  else
  {
    v15 = sgLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "harvestedSuggestionsFromSearchableItem ignoring item since the bundle is disallowed by user's settings", &v18, 2u);
    }

    v16 = [MEMORY[0x277D02138] responseWith:0];
    v9[2](v9, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 withCompletion:(id)a6
{
  v12 = a3;
  v10 = a6;
  v11 = [SGDSuggestManager preprocessSearchableItem:v12];
  if (v11)
  {
    v10[2](v10, v11);
  }

  else
  {
    [(SGDSuggestManager *)self _suggestionsFromSearchableItem:v12 options:a4 dissectIfNecessary:1 processingType:a5 completionDelivery:0 withCompletion:v10];
  }
}

- (void)recentURLsWithLimit:(unsigned int)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:4699 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = a3;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-recentURLsWithLimit:%u called", buf, 8u);
  }

  v9 = [(SGSqlEntityStore *)self->_harvestStore recentURLsWithLimit:a3];
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    *buf = 134217984;
    v16 = v11;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-recentURLsWithLimit returning %tu URLs", buf, 0xCu);
  }

  v12 = [MEMORY[0x277D02138] responseWith:v9];
  v7[2](v7, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)titleSuggestionForMessage:(id)a3 withCompletion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([objc_opt_class() titleSuggestionForMessageFeatureEnabled])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-titleSuggestionForMessage", buf, 2u);
    }

    if (!v8)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:4591 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
    }

    if (titleSuggestionForMessage_withCompletion___pasOnceToken205 != -1)
    {
      dispatch_once(&titleSuggestionForMessage_withCompletion___pasOnceToken205, &__block_literal_global_846);
    }

    v10 = titleSuggestionForMessage_withCompletion___pasExprOnceResult;
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4008;
    v29 = __Block_byref_object_dispose__4009;
    v30 = 0;
    if (_serialQueueForTitleGeneration__pasOnceToken203 != -1)
    {
      dispatch_once(&_serialQueueForTitleGeneration__pasOnceToken203, &__block_literal_global_1292);
    }

    v11 = _serialQueueForTitleGeneration__pasExprOnceResult;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SGDSuggestManager_titleSuggestionForMessage_withCompletion___block_invoke_2;
    block[3] = &unk_2789561A8;
    v22 = v7;
    v24 = buf;
    v12 = v10;
    v23 = v12;
    dispatch_async_and_wait(v11, block);
    v13 = *(v26 + 5);
    if (v13 && ([v13 isEqualToString:&stru_284703F00] & 1) == 0)
    {
      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(v26 + 5);
        *v31 = 138477827;
        v32 = v19;
        _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: Returning title '%{private}@'", v31, 0xCu);
      }

      v15 = [MEMORY[0x277D02138] responseWith:*(v26 + 5)];
      v8[2](v8, v15);
    }

    else
    {
      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v31 = 0;
        _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: No Title generated from plugin", v31, 2u);
      }

      v15 = [MEMORY[0x277D02138] responseWith:0];
      v8[2](v8, v15);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = [MEMORY[0x277D02138] responseWith:0];
    v8[2](v8, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__SGDSuggestManager_titleSuggestionForMessage_withCompletion___block_invoke_2(uint64_t a1)
{
  v55[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageUnits];
  if (v2)
  {
    v3 = [*(a1 + 32) messageUnits];
    v4 = [v3 objectAtIndexedSubscript:0];

    if (v4)
    {
      v5 = (a1 + 32);
      v6 = [*(a1 + 32) messageUnits];
      v7 = [v6 objectAtIndexedSubscript:0];

      v8 = [*(a1 + 32) subject];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_284703F00;
      }

      v11 = v10;

      v12 = [*v5 type];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_284703F00;
      }

      v15 = v14;

      v16 = [*v5 messageId];
      if (!v16)
      {
        v17 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = [(__CFString *)v11 sg_md5Hash];
        v19 = [v7 sg_md5Hash];
        v16 = [v17 initWithFormat:@"%@-%@-%@", v15, v18, v19];
      }

      v20 = [*(a1 + 40) objectForKey:v16];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        goto LABEL_34;
      }

      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: No title found in cache", buf, 2u);
      }

      v24 = [MEMORY[0x277CCAC38] processInfo];
      v25 = [v24 isLowPowerModeEnabled];

      if (v25)
      {
        v26 = sgLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: Skipping running Title Generation model since Low Power Mode is Active", buf, 2u);
        }

        goto LABEL_33;
      }

      v27 = +[SGAsset localeAsset];
      v26 = [v27 filesystemPathForAssetDataRelativePath:@"MLTitleGenerationModel.assets"];

      if (!v26)
      {
        v28 = sgLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v28, OS_LOG_TYPE_ERROR, "SGDSuggestManager: Assets not found for title suggestion", buf, 2u);
        }

        goto LABEL_32;
      }

      v28 = *MEMORY[0x277D02488];
      v29 = *MEMORY[0x277D02490];
      v54[0] = @"TaskName";
      v54[1] = @"InputMessage";
      v55[0] = v29;
      v55[1] = v7;
      v54[2] = @"InputMessageSubject";
      v54[3] = @"InputMessageType";
      v55[2] = v11;
      v55[3] = v15;
      v54[4] = @"AssetFolderPath";
      v55[4] = v26;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
      v42 = [objc_alloc(MEMORY[0x277D253F0]) initWithParametersDict:v43];
      *buf = 0;
      v49 = buf;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__4008;
      v52 = __Block_byref_object_dispose__4009;
      v53 = 0;
      v30 = dispatch_semaphore_create(0);
      v31 = MEMORY[0x277D253E8];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __62__SGDSuggestManager_titleSuggestionForMessage_withCompletion___block_invoke_872;
      v45[3] = &unk_27894F030;
      v47 = buf;
      v32 = v30;
      v46 = v32;
      [v31 performTask:v42 forPluginID:v28 completionHandler:v45];
      if ([MEMORY[0x277D425A0] waitForSemaphore:v32 timeoutSeconds:2.0] == 1)
      {
        v33 = sgLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v44 = 0;
          _os_log_error_impl(&dword_231E60000, v33, OS_LOG_TYPE_ERROR, "SGDSuggestManager: MLRuntime Plugin task timeout", v44, 2u);
        }
      }

      else
      {
        v34 = *(v49 + 5);
        if (!v34)
        {
          goto LABEL_29;
        }

        v35 = [v34 objectForKeyedSubscript:@"title"];
        v36 = v35 == 0;

        if (v36)
        {
          goto LABEL_29;
        }

        v37 = [*(v49 + 5) objectForKeyedSubscript:@"title"];
        v38 = *(*(a1 + 48) + 8);
        v33 = *(v38 + 40);
        *(v38 + 40) = v37;
      }

LABEL_29:
      v39 = *(*(a1 + 48) + 8);
      v40 = *(v39 + 40);
      if (!v40)
      {
        *(v39 + 40) = &stru_284703F00;
        v40 = *(*(*(a1 + 48) + 8) + 40);
      }

      [*(a1 + 40) setObject:v40 forKey:v16];

      _Block_object_dispose(buf, 8);
LABEL_32:

LABEL_33:
LABEL_34:

      goto LABEL_35;
    }
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGDSuggestManager: Found empty input message for title suggestion", buf, 2u);
  }

LABEL_35:

  v41 = *MEMORY[0x277D85DE8];
}

void __62__SGDSuggestManager_titleSuggestionForMessage_withCompletion___block_invoke_872(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 JSONResult];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGDSuggestManager: MLRuntime Plugin Task failed with error: %@", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

void __62__SGDSuggestManager_titleSuggestionForMessage_withCompletion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:5];
  v2 = titleSuggestionForMessage_withCompletion___pasExprOnceResult;
  titleSuggestionForMessage_withCompletion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)ipsosMessagesFromSearchableItems:(id)a3 withCompletion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v22 = a4;
  if (!v22)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:4562 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-ipsosMessagesFromSearchableItems", buf, 2u);
  }

  v9 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [SGThreadParser ipsosMessageWithSearchableItem:v15];
        if (v17)
        {
          v18 = [MEMORY[0x277D01FF0] messageWithIPMessage:v17];
          [v9 addObject:v18];
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x277D02138] responseWith:v9];
  v22[2](v22, v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_showInFormatStringWithLocalization:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SGDSuggestManager__showInFormatStringWithLocalization___block_invoke;
  block[3] = &unk_278954A30;
  v10 = v3;
  v4 = _showInFormatStringWithLocalization__once;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&_showInFormatStringWithLocalization__once, block);
  }

  v6 = _showInFormatStringWithLocalization__localizedString;
  v7 = _showInFormatStringWithLocalization__localizedString;

  return v6;
}

void __57__SGDSuggestManager__showInFormatStringWithLocalization___block_invoke(uint64_t a1)
{
  v1 = [SGFoundInAppsStrings localizedStringForKey:@"Show in %@" preferredLocalization:*(a1 + 32)];
  v2 = _showInFormatStringWithLocalization__localizedString;
  _showInFormatStringWithLocalization__localizedString = v1;

  if (!_showInFormatStringWithLocalization__localizedString)
  {
    v5 = +[SGFoundInAppsStrings resourceBundle];
    v3 = [v5 localizedStringForKey:@"Show in %@" value:&stru_284703F00 table:*MEMORY[0x277D024C8]];
    v4 = _showInFormatStringWithLocalization__localizedString;
    _showInFormatStringWithLocalization__localizedString = v3;
  }
}

void __39__SGDSuggestManager__maybeFormatString__block_invoke()
{
  v0 = [SGFoundInAppsStrings localizedStringForKey:@"Maybe: %@" preferredLocalization:0];
  v1 = _maybeFormatString_localizedString;
  _maybeFormatString_localizedString = v0;

  if (!_maybeFormatString_localizedString)
  {
    v4 = +[SGFoundInAppsStrings resourceBundle];
    v2 = [v4 localizedStringForKey:@"Maybe: %@" value:&stru_284703F00 table:*MEMORY[0x277D024C8]];
    v3 = _maybeFormatString_localizedString;
    _maybeFormatString_localizedString = v2;
  }
}

- (void)powerStateWithCompletion:(id)a3
{
  v3 = MEMORY[0x277D41E28];
  v4 = a3;
  v5 = [v3 defaultBudget];
  v7 = [v5 throttlingState];

  v6 = [MEMORY[0x277D02138] responseWith:v7];
  v4[2](v4, v6);
}

- (void)deleteCloudKitZoneWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SGDCloudKitSync sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SGDSuggestManager_deleteCloudKitZoneWithCompletion___block_invoke;
  v6[3] = &unk_27894BCE8;
  v7 = v3;
  v5 = v3;
  [v4 deleteZoneWithCompletion:v6];
}

void __54__SGDSuggestManager_deleteCloudKitZoneWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [MEMORY[0x277D02130] responseWithError:a2];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  (*(v2 + 16))(v2);
}

- (void)clearContactAggregatorConversation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: Dropping aggregated contact for conversation: %@", &v7, 0xCu);
  }

  v5 = +[SGDSuggestManager contactAggregator];
  [v5 clearContactsWithConversationIdentifier:v3];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  (*(a3 + 2))(v4, v5);
}

- (void)sleepWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SGDSuggestManager_sleepWithCompletion___block_invoke;
  block[3] = &unk_27894E850;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __41__SGDSuggestManager_sleepWithCompletion___block_invoke(uint64_t a1)
{
  usleep(0xAAE60u);
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  (*(v2 + 16))(v2, v3);
}

- (void)daemonExitWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "exiting due to daemonExitWithCompletion request", v5, 2u);
  }

  _exit(0);
}

- (void)removeAllStoredPseudoContactsWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 removeAllStoredPseudoContacts];
  v4 = objc_opt_new();
  v3[2](v3, v4);
}

- (void)logEventInteractionForEventWithUniqueKey:(id)a3 interface:(unsigned __int16)a4 actionType:(unsigned __int16)a5
{
  v8 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SGDSuggestManager_logEventInteractionForEventWithUniqueKey_interface_actionType___block_invoke;
  v11[3] = &unk_27894D8D8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v9 = v8;
  v10 = MEMORY[0x2383809F0](v11);
  if (logEventInteractionForEventWithUniqueKey_interface_actionType___pasOnceToken198 != -1)
  {
    dispatch_once(&logEventInteractionForEventWithUniqueKey_interface_actionType___pasOnceToken198, &__block_literal_global_828);
  }

  [MEMORY[0x277D425A0] runAsyncOnQueue:logEventInteractionForEventWithUniqueKey_interface_actionType___pasExprOnceResult afterDelaySeconds:v10 block:5.0];
}

void __83__SGDSuggestManager_logEventInteractionForEventWithUniqueKey_interface_actionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entityFromUniqueKey:*(a1 + 40)];
  [*(a1 + 32) logEventInteractionForEntity:v2 interface:*(a1 + 48) actionType:*(a1 + 50)];
}

void __83__SGDSuggestManager_logEventInteractionForEventWithUniqueKey_interface_actionType___block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.suggestd.event-metrics-queue", v1);
  v3 = logEventInteractionForEventWithUniqueKey_interface_actionType___pasExprOnceResult;
  logEventInteractionForEventWithUniqueKey_interface_actionType___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __71__SGDSuggestManager_logEventInteractionForEntity_interface_actionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sg_confirmedEKEventForSGEvent:*(a1 + 32)];
  [MEMORY[0x277D02060] recordInteractionForEventWithInterface:*(a1 + 40) actionType:*(a1 + 42) harvestedSGEvent:*(a1 + 32) curatedEKEvent:v3];
}

- (id)entityFromUniqueKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 hasPrefix:@"x-apple-eventkit:///SuggestedEventInfo/"])
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      v7 = "Not logging event interaction for bogus uniqueKey: %@";
LABEL_13:
      _os_log_impl(&dword_231E60000, &v6->super, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:4364 description:{@"Invalid parameter not satisfying: %@", @"uniqueKey"}];
  }

  if (![SGDuplicateKey serializationPassesBasicScrutiny:v5])
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      v7 = "Not logging event interaction for uniqueKey with bad serialization: %@";
      goto LABEL_13;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = [[SGDuplicateKey alloc] initWithSerialized:v5];
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "Attempting to retrieve entity from harvestStore for uniqueKey = %@", buf, 0xCu);
  }

  v9 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "Couldn't find Entity with uniqueKey = %@", buf, 0xCu);
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __92__SGDSuggestManager_logEventInteractionForEventWithExternalIdentifier_interface_actionType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if ([v3 count] >= 0x64)
    {
      [v3 removeAllObjects];
    }

    v7 = *(*(a1 + 40) + 56);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __92__SGDSuggestManager_logEventInteractionForEventWithExternalIdentifier_interface_actionType___block_invoke_4;
    v11[3] = &unk_27894BC70;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v12 = v9;
    v15 = v10;
    v13 = v3;
    v14 = *(a1 + 48);
    (*(v8 + 16))(v8, v11);
  }
}

void __92__SGDSuggestManager_logEventInteractionForEventWithExternalIdentifier_interface_actionType___block_invoke_4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 calendarItemsWithExternalIdentifier:*(a1 + 32)];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 suggestionInfo];
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = v5;
    v7 = [v4 suggestionInfo];
    v8 = [v7 uniqueKey];

    if (v8)
    {
      v9 = [v4 suggestionInfo];
      v10 = [v9 uniqueKey];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      [*(a1 + 40) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v18 = 138412290;
        v19 = v13;
        v14 = MEMORY[0x277D86220];
        v15 = "Caching event from with external identifer = %@.";
        v16 = 12;
LABEL_9:
        _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, v15, &v18, v16);
      }
    }

    else
    {
LABEL_6:
      [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 32)];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        v14 = MEMORY[0x277D86220];
        v15 = "Event found for Spotlight interaction, but not from Suggestions.";
        v16 = 2;
        goto LABEL_9;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __92__SGDSuggestManager_logEventInteractionForEventWithExternalIdentifier_interface_actionType___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_813];
  v2 = logEventInteractionForEventWithExternalIdentifier_interface_actionType___pasExprOnceResult;
  logEventInteractionForEventWithExternalIdentifier_interface_actionType___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __92__SGDSuggestManager_logEventInteractionForEventWithExternalIdentifier_interface_actionType___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)a3
{
  v4 = a3;
  v12 = objc_opt_new();
  v5.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v4];

  [v12 setApp:v5.var0];
  v6 = [MEMORY[0x277D41DA8] sharedInstance];
  [v6 trackScalarForMessage:v12];

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = *MEMORY[0x277D02470];
  v9 = [v12 key];
  v10 = [v7 initWithFormat:@"%@.%@", v8, v9];

  v11 = [v12 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricContactCreated:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v7 = a5;
  v15 = objc_opt_new();
  [v15 setWasSuggestedContact:a3 != 0];
  v8.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v7];

  [v15 setApp:v8.var0];
  v9 = [MEMORY[0x277D41DA8] sharedInstance];
  [v9 trackScalarForMessage:v15];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = *MEMORY[0x277D02470];
  v12 = [v15 key];
  v13 = [v10 initWithFormat:@"%@.%@", v11, v12];

  v14 = [v15 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v6 = a5;
  v14 = objc_opt_new();
  v7.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v6];

  [v14 setApp:v7.var0];
  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v14];

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = *MEMORY[0x277D02470];
  v11 = [v14 key];
  v12 = [v9 initWithFormat:@"%@.%@", v10, v11];

  v13 = [v14 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v6 = a5;
  v14 = objc_opt_new();
  v7.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v6];

  [v14 setApp:v7.var0];
  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v14];

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = *MEMORY[0x277D02470];
  v11 = [v14 key];
  v12 = [v9 initWithFormat:@"%@.%@", v10, v11];

  v13 = [v14 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v7 = a5;
  v15 = objc_opt_new();
  [v15 setWasSuggestedContact:a3 != 0];
  [v15 setWasKnownContact:0];
  v8.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v7];

  [v15 setApp:v8.var0];
  v9 = [MEMORY[0x277D41DA8] sharedInstance];
  [v9 trackScalarForMessage:v15];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = *MEMORY[0x277D02470];
  v12 = [v15 key];
  v13 = [v10 initWithFormat:@"%@.%@", v11, v12];

  v14 = [v15 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricAutocompleteUserSelectedRecordId:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v7 = a5;
  v15 = objc_opt_new();
  [v15 setWasSuggestedContact:a3 != 0];
  [v15 setWasKnownContact:*MEMORY[0x277D02410] != 0];
  v8.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v7];

  [v15 setApp:v8.var0];
  v9 = [MEMORY[0x277D41DA8] sharedInstance];
  [v9 trackScalarForMessage:v15];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = *MEMORY[0x277D02470];
  v12 = [v15 key];
  v13 = [v10 initWithFormat:@"%@.%@", v11, v12];

  v14 = [v15 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricContactSearchResult:(int)a3 recordId:(id)a4 contactIdentifier:(id)a5 bundleId:(id)a6
{
  v7 = (a3 >> 3) & 1;
  v8 = a4 != 0;
  v9 = a6;
  v17 = objc_opt_new();
  [v17 setWasSuggestedContact:v8];
  [v17 setWasKnownContact:v7];
  v10.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v9];

  [v17 setApp:v10.var0];
  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  [v11 trackScalarForMessage:v17];

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = *MEMORY[0x277D02470];
  v14 = [v17 key];
  v15 = [v12 initWithFormat:@"%@.%@", v13, v14];

  v16 = [v17 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logMetricAutocompleteResult:(int)a3 recordId:(id)a4 contactIdentifier:(id)a5 bundleId:(id)a6
{
  v7 = (a3 >> 3) & 1;
  v8 = a4 != 0;
  v9 = a6;
  v17 = objc_opt_new();
  [v17 setWasSuggestedContact:v8];
  [v17 setWasKnownContact:v7];
  v10.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v9];

  [v17 setApp:v10.var0];
  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  [v11 trackScalarForMessage:v17];

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = *MEMORY[0x277D02470];
  v14 = [v17 key];
  v15 = [v12 initWithFormat:@"%@.%@", v13, v14];

  v16 = [v17 dictionaryRepresentation];
  AnalyticsSendEvent();
}

- (void)logUnknownContactInformationShownCount:(unint64_t)a3 notShownCount:(unint64_t)a4 bundleId:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SGDSuggestManager_logUnknownContactInformationShownCount_notShownCount_bundleId___block_invoke;
  v11[3] = &unk_27894BC48;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  v10 = MEMORY[0x2383809F0](v11);
  v10[2](v10, 1, a3);
  v10[2](v10, 0, a4);
}

void __83__SGDSuggestManager_logUnknownContactInformationShownCount_notShownCount_bundleId___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v15 = @"misses";
      if (a2)
      {
        v15 = @"hits";
      }

      *buf = 138412546;
      v17 = v15;
      v18 = 2048;
      v19 = a3;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "#logUnknownContactInformationShownCount names for detail %@: %lu", buf, 0x16u);
    }

    v7 = objc_opt_new();
    [v7 setApp:{objc_msgSend(*(a1 + 32), "_appEnumForBundleId:", *(a1 + 40))}];
    [v7 setWasSuggestedContact:a2];
    v8 = [MEMORY[0x277D41DA8] sharedInstance];
    [v8 trackScalarForMessage:v7];

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = *MEMORY[0x277D02470];
    v11 = [v7 key];
    v12 = [v9 initWithFormat:@"%@.%@", v10, v11];

    v13 = [v7 dictionaryRepresentation];
    AnalyticsSendEvent();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (SGMContactDetailUsedApp_)_appEnumForBundleId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = self->_clientName;
    if (!v5)
    {
LABEL_8:
      v8.var0 = *MEMORY[0x277D02308];
      goto LABEL_10;
    }
  }

  v6 = [(NSDictionary *)self->_bundleIdToPET objectForKey:v5];
  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(NSString *)v5 stringByReplacingOccurrencesOfString:@"-" withString:@"."];
    if (([v10 isEqualToString:v5] & 1) == 0)
    {
      v8.var0 = [(SGDSuggestManager *)self _appEnumForBundleId:v10];

      objc_autoreleasePoolPop(v9);
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v9);
    v11 = objc_opt_new();
    [v11 setBundleId:v5];
    v12 = [MEMORY[0x277D41DA8] sharedInstance];
    [v12 trackScalarForMessage:v11];

    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = *MEMORY[0x277D02470];
    v15 = [v11 key];
    v16 = [v13 initWithFormat:@"%@.%@", v14, v15];

    v17 = [v11 dictionaryRepresentation];
    AnalyticsSendEvent();

    goto LABEL_8;
  }

  v7 = v6;
  v8.var0 = [v6 unsignedIntegerValue];

LABEL_10:
  return v8;
}

- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithLastModificationDate:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_INFO, "SGDSuggestManager-waitForEventWithIdentifier: %@ -toAppearInEventStoreWithLastModificationDate: %@", buf, 0x16u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke;
  v27[3] = &unk_27894BBD0;
  v12 = v9;
  v28 = v12;
  v13 = MEMORY[0x2383809F0](v27);
  ekStoreProvider = self->_ekStoreProvider;
  if (ekStoreProvider)
  {
    ekStoreProvider = ekStoreProvider->_newEKEventStoreGetter;
  }

  callBlockWithEKEventStoreForReading = ekStoreProvider->_callBlockWithEKEventStoreForReading;
  v16 = ekStoreProvider;
  v17 = callBlockWithEKEventStoreForReading();

  v18 = [v17 eventWithIdentifier:v8];
  if (!(v13)[2](v13, v18))
  {
    v20 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke_2;
    block[3] = &unk_27894BC20;
    v23 = v17;
    v24 = v8;
    v25 = v13;
    v26 = v10;
    dispatch_async(v20, block);

    v19 = v23;
    goto LABEL_9;
  }

  if (v10)
  {
    v19 = [MEMORY[0x277D02138] responseWith:MEMORY[0x277CBEC38]];
    (*(v10 + 2))(v10, v19);
LABEL_9:
  }

  v21 = *MEMORY[0x277D85DE8];
}

BOOL __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 32))
    {
      v5 = [v3 lastModifiedDate];
      [v5 timeIntervalSinceReferenceDate];
      v7 = v6;
      [*(a1 + 32) timeIntervalSinceReferenceDate];
      v9 = v7 >= v8;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CC5948];
  v5 = objc_opt_new();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke_3;
  v18 = &unk_27894BBF8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(a1 + 48);
  v6 = v2;
  v21 = v6;
  v7 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:&v15];

  v8 = [*(a1 + 32) eventWithIdentifier:{*(a1 + 40), v15, v16, v17, v18}];
  if ((*(*(a1 + 48) + 16))())
  {
    dispatch_semaphore_signal(v6);
  }

  v9 = [MEMORY[0x277D425A0] waitForSemaphore:v6 timeoutSeconds:5.0];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v7];

  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = MEMORY[0x277D02138];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v9 == 0];
    v14 = [v12 responseWith:v13];
    (*(v11 + 16))(v11, v14);
  }
}

void __104__SGDSuggestManager_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) eventWithIdentifier:*(a1 + 40)];
  if ((*(*(a1 + 56) + 16))())
  {
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

- (void)noopWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  (*(a3 + 2))(v4, v5);
}

- (void)keepDirty:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_dirtyLock lock];
  dirtyTransaction = self->_dirtyTransaction;
  if (v3)
  {
    if (dirtyTransaction)
    {
      goto LABEL_6;
    }

    v6 = [SGXpcTransaction transactionWithName:"com.apple.suggestions.suggestManagerKeepDirty"];
    dirtyTransaction = self->_dirtyTransaction;
  }

  else
  {
    v6 = 0;
  }

  self->_dirtyTransaction = v6;

LABEL_6:
  dirtyLock = self->_dirtyLock;

  [(NSLock *)dirtyLock unlock];
}

- (void)realtimeSuggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 extractionDate:(id)a6 withCompletion:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = *MEMORY[0x277D021F8];
  if ([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:*MEMORY[0x277D021F8]])
  {
    v17 = [SGDuplicateKey duplicateKeyForWebPageFromSource:v16];
    v18 = [[SGPipelineEntity alloc] initWithDuplicateKey:v17 title:v12];
    [v14 timeIntervalSince1970];
    [(SGPipelineEntity *)v18 setCreationTimestamp:?];
    [v14 timeIntervalSince1970];
    [(SGPipelineEntity *)v18 setLastModifiedTimestamp:?];
    v31 = objc_opt_new();
    v32 = v13;
    v33 = v11;
    [v31 dissectURL:v11 title:v12 htmlPayload:v13 entity:v18];
    v19 = +[SGSqlEntityStore sqlStoreInMemory];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = [(SGPipelineEntity *)v18 enrichments];
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 writeEnrichment:*(*(&v35 + 1) + 8 * i)];
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v22);
    }

    v25 = [(SGPipelineEntity *)v18 enrichments];
    v34 = v19;
    v26 = v19;
    v27 = sgMapAndFilter();

    v28 = [MEMORY[0x277D02138] responseWith:v27];
    v15[2](v15, v28);

    v13 = v32;
    v11 = v33;
  }

  else
  {
    v29 = sgLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_INFO, "realtimeSuggestionsFromURL ignoring item since Safari is disallowed by user's settings", buf, 2u);
    }

    v17 = [MEMORY[0x277D02138] responseWith:0];
    v15[2](v15, v17);
  }

  v30 = *MEMORY[0x277D85DE8];
}

id __96__SGDSuggestManager_realtimeSuggestionsFromURL_title_HTMLPayload_extractionDate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  if (v5 != 2)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  v7 = [v3 duplicateKey];
  v8 = [v6 loadEventByDuplicateKey:v7];
  v9 = [v8 convertToEvent:*(a1 + 32)];

  if (v9)
  {
    v10 = [MEMORY[0x277D020A8] realtimeEventForNewEvent:v9 harvested:{objc_msgSend(*(a1 + 32), "isEphemeral") ^ 1}];
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (void)geocodeEnrichmentsInPipelineEntity:(id)a3 withCompletion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = a4;
  v6 = *MEMORY[0x277D021A0];
  v7 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  LODWORD(v6) = [v7 containsObject:v6];

  if (v6)
  {
    v8 = sgDeveloperLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Failed to process event suggestion – Show Siri Suggestions disabled in Calendar.", buf, 2u);
    }
  }

  if (([MEMORY[0x277D02098] allowGeocode] & 1) == 0)
  {
    v9 = sgDeveloperLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Failed to process event suggestion – you must acknowledge What's new in Calendar screen in the Calendar app.", buf, 2u);
    }
  }

  v10 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v5;
  v11 = [v5 enrichments];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        if ([MEMORY[0x277D02098] allowGeocode])
        {
          v17 = [SGStorageEvent storageEventFromEntity:v16];
          dispatch_group_enter(v10);
          v18 = MEMORY[0x277D01FC0];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __71__SGDSuggestManager_geocodeEnrichmentsInPipelineEntity_withCompletion___block_invoke;
          v29[3] = &unk_2789515A8;
          v30 = v17;
          v31 = v16;
          v32 = v10;
          v19 = v17;
          [v18 geocodeEvent:v19 withCallback:v29];
        }

        else
        {
          [v16 setPendingGeocode:1];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v13);
  }

  v20 = qos_class_self();
  v21 = dispatch_get_global_queue(v20, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SGDSuggestManager_geocodeEnrichmentsInPipelineEntity_withCompletion___block_invoke_2;
  block[3] = &unk_27894E850;
  v28 = v25;
  v22 = v25;
  dispatch_group_notify(v10, v21, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __71__SGDSuggestManager_geocodeEnrichmentsInPipelineEntity_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Geocode modified locations, updating enrichment", v13, 2u);
    }

    v5 = [*(a1 + 40) locations];
    [v5 removeAllObjects];

    v6 = [*(a1 + 40) locations];
    v7 = [v3 locations];
    [v6 addObjectsFromArray:v7];

    v8 = [v3 when];
    [*(a1 + 40) setTimeRange:v8];

    v9 = [*(a1 + 40) tags];
    v10 = [MEMORY[0x277D01FA0] allDay];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v12 = [*(a1 + 40) timeRange];
      if (([v12 isValidAllDayRange] & 1) == 0)
      {
        __assert_rtn("[SGDSuggestManager geocodeEnrichmentsInPipelineEntity:withCompletion:]_block_invoke", "SGDSuggestManager.m", 3998, "[enrichment.timeRange isValidAllDayRange]");
      }
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)suggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 withCompletion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sgEventsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_INFO, "SGDSuggestManager suggestionsFromURL - Start processing webpage", buf, 2u);
  }

  v15 = sgEventsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v10 host];
    v20 = [v12 length];
    *buf = 138740483;
    v28 = v19;
    v29 = 2117;
    v30 = v11;
    v31 = 2053;
    v32 = v20;
    _os_log_debug_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEBUG, "SGDSuggestManager-suggestionsFromURL: %{sensitive}@ -title: %{sensitive}@ -HTMLPayload length: %{sensitive}lu ", buf, 0x20u);
  }

  if ([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:*MEMORY[0x277D021F8]])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__SGDSuggestManager_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke;
    v21[3] = &unk_27894E040;
    v22 = v11;
    v23 = v10;
    v24 = v12;
    v25 = self;
    v26 = v13;
    SGNotUserInitiated(@"suggestionsFromURL", 2, v21);

    v16 = v22;
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "suggestionsFromURL ignoring item since Safari is disallowed by user's settings", buf, 2u);
    }

    v16 = [MEMORY[0x277D02138] responseWith:0];
    (*(v13 + 2))(v13, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __73__SGDSuggestManager_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D02098] detectStructuredEvents])
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    v3 = [SGDuplicateKey duplicateKeyForWebPageFromSource:*MEMORY[0x277D021F8]];
    v4 = [[SGPipelineEntity alloc] initWithDuplicateKey:v3 title:a1[4]];
    [v2 timeIntervalSince1970];
    [(SGPipelineEntity *)v4 setCreationTimestamp:?];
    [v2 timeIntervalSince1970];
    [(SGPipelineEntity *)v4 setLastModifiedTimestamp:?];
    v5 = objc_opt_new();
    [v5 dissectURL:a1[5] title:a1[4] htmlPayload:a1[6] entity:v4];
    v6 = [(SGPipelineEntity *)v4 enrichments];
    v7 = +[SGDSuggestManager filterPseudoEvents:keepPastEvents:keepPartialEvents:](SGDSuggestManager, "filterPseudoEvents:keepPastEvents:keepPartialEvents:", v6, [MEMORY[0x277D02098] showPastEvents], 0);
    [(SGPipelineEntity *)v4 setEnrichments:v7];

    v8 = sgEventsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(SGPipelineEntity *)v4 enrichments];
      *buf = 134217984;
      v41 = [v9 count];
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager suggestionsFromURL: parent entity has %lu enrichment(s) after dissection", buf, 0xCu);
    }

    v10 = dispatch_semaphore_create(0);
    v11 = a1[7];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __73__SGDSuggestManager_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke_781;
    v37[3] = &unk_278954A30;
    v12 = v10;
    v38 = v12;
    [v11 geocodeEnrichmentsInPipelineEntity:v4 withCompletion:v37];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = [(SGPipelineEntity *)v4 enrichments];
    v14 = [v13 count];

    if (v14)
    {
      v30 = v3;
      v31 = v2;
      v15 = sgEventsLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(SGPipelineEntity *)v4 enrichments];
        v17 = [v16 count];
        *buf = 134217984;
        v41 = v17;
        _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_INFO, "Parents entity has %lu enrichements", buf, 0xCu);
      }

      [*(a1[7] + 8) writeEntity:v4];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = [(SGPipelineEntity *)v4 enrichments];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            v24 = +[SGDCloudKitSync sharedInstance];
            [v24 addEnrichment:v23 withParentEntity:v4];
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v20);
      }

      v3 = v30;
      v2 = v31;
    }

    v25 = a1[8];
    v26 = [MEMORY[0x277D02138] responseWith:0];
    (*(v25 + 16))(v25, v26);

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v28 = a1[8];
    v32 = [MEMORY[0x277D02138] responseWith:0];
    (*(v28 + 16))(v28);
    v29 = *MEMORY[0x277D85DE8];
  }
}

- (void)isEventCandidateForURL:(id)a3 title:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SGDSuggestManager_isEventCandidateForURL_title_withCompletion___block_invoke;
  v13[3] = &unk_278955A98;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  SGNotUserInitiated(@"isEventCandidateForURL", 2, v13);
}

void __65__SGDSuggestManager_isEventCandidateForURL_title_withCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sgEventsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager isEventCandidateForURL: Checking classifier output for webpage", &v11, 2u);
  }

  v3 = sgEventsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) host];
    v10 = *(a1 + 40);
    v11 = 138740227;
    v12 = v9;
    v13 = 2117;
    v14 = v10;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGDSuggestManager-isEventCandidateForURL: %{sensitive}@ -title: %{sensitive}@", &v11, 0x16u);
  }

  if ([MEMORY[0x277D02098] detectStructuredEvents])
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSObject isStructuredEventCandidateForURL:title:](v4, "isStructuredEventCandidateForURL:title:", *(a1 + 32), *(a1 + 40))}];
  }

  else
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGDSuggestManager isEventCandidateForURL: end processing because detectStructuredEvents is OFF.", &v11, 2u);
    }

    v5 = 0;
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277D02138] responseWith:v5];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)isEventCandidateForURL:(id)a3 andTitle:(id)a4 containsSchemaOrg:(BOOL)a5 withCompletion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sgEventsLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v10 host];
    *buf = 138740227;
    v26 = v22;
    v27 = 2117;
    v28 = v11;
    _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "isEventCandidateForURL: %{sensitive}@ -title: %{sensitive}@", buf, 0x16u);
  }

  if (v10 && v11)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = ([MEMORY[0x277D02098] allowAnyDomainForMarkup] & 1) != 0 || +[SGDomainWhitelistChecker isStructuredEventCandidateForURL:title:](SGDomainWhitelistChecker, "isStructuredEventCandidateForURL:title:", v10, v11);
    v17 = [v14 numberWithInt:v15];
    if (v17 && !a5)
    {
      v20 = sgEventsLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_INFO, "SGSuggestionsService isEventCandidateForURL: Based on whitelist check, URL is candidate", buf, 2u);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__SGDSuggestManager_isEventCandidateForURL_andTitle_containsSchemaOrg_withCompletion___block_invoke;
      v23[3] = &unk_27894BBA8;
      v24 = v12;
      [(SGDSuggestManager *)self isEventCandidateForURL:v10 title:v11 withCompletion:v23];
      v19 = v24;
      goto LABEL_20;
    }
  }

  else
  {
    v16 = sgEventsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGSuggestionsService isEventCandidateForURL: method called with nil arguments", buf, 2u);
    }

    v17 = 0;
  }

  v18 = sgEventsLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "SGSuggestionsService isEventCandidateForURL: eventCandidate is nil, domain appears not to be whitelisted.", buf, 2u);
  }

  if (v12)
  {
    v19 = [MEMORY[0x277D02138] responseWith:v17];
    (*(v12 + 2))(v12, v19);
LABEL_20:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __86__SGDSuggestManager_isEventCandidateForURL_andTitle_containsSchemaOrg_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D02138];
    v5 = [a2 response1];
    v4 = [v3 responseWith:v5];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)schemaOrgToEvents:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGDSuggestManager-schemaOrgToEvents", v11, 2u);
  }

  v8 = objc_opt_new();
  v9 = [v8 eventsFromSchemaOrgItems:v6];

  v10 = [MEMORY[0x277D02138] responseWith:v9];
  v5[2](v5, v10);
}

- (void)deleteInteractionsWithBundleId:(id)a3 groupIdentifiers:(id)a4 completion:(id)a5
{
  harvestStore = self->_harvestStore;
  v8 = a5;
  [(SGSqlEntityStore *)harvestStore deleteInteractionsWithBundleId:a3 groupIdentifiers:a4];
  v9 = objc_opt_new();
  v8[2](v8, v9);
}

- (void)deleteInteractionsWithBundleId:(id)a3 identifiers:(id)a4 completion:(id)a5
{
  harvestStore = self->_harvestStore;
  v8 = a5;
  [(SGSqlEntityStore *)harvestStore deleteInteractionsWithBundleId:a3 identifiers:a4];
  v9 = objc_opt_new();
  v8[2](v8, v9);
}

- (void)deleteInteractionsWithBundleId:(id)a3 completion:(id)a4
{
  harvestStore = self->_harvestStore;
  v6 = a4;
  [(SGSqlEntityStore *)harvestStore deleteInteractionsWithBundleId:a3];
  v7 = objc_opt_new();
  v6[2](v6, v7);
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_278955A98;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  SGNotUserInitiated(@"deleteSpotlightReferencesWithBundleIdentifier", 2, v10);
}

void __78__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) deleteSpotlightReferencesWithBundleIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) _pmlTraining];
  [v2 deleteSessionsWithBundleID:*(a1 + 40)];

  v3 = +[SGDPluginManager sharedInstance];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke_2;
  v5[3] = &unk_27894BB80;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 deleteSpotlightReferencesWithBundleIdentifier:v6 completion:v5];
}

void __78__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "Plugins finished deleting bundle: %@", &v7, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = objc_opt_new();
  (*(v3 + 16))(v3, v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 domainIdentifiers:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 copy];
  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = v10;
    _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: deleting spotlight references: %@ : %@", buf, 0x16u);
  }

  if ([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:v8])
  {
    [(SGSqlEntityStore *)self->_harvestStore deleteSpotlightReferencesWithBundleIdentifier:v8 domainIdentifiers:v10];
    if ([v8 isEqualToString:*MEMORY[0x277D021D0]])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = [v10 allDomains];
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          v16 = 0;
          do
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [(SGDSuggestManager *)self clearContactAggregatorConversation:*(*(&v29 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v14);
      }
    }
  }

  v17 = [v10 allDomains];
  v18 = [v17 allObjects];

  v19 = [(SGDSuggestManager *)self _pmlTraining];
  [v19 deleteSessionsWithDomainIdentifiers:v18 bundleID:v8];

  v20 = +[SGDPluginManager sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __96__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke;
  v25[3] = &unk_27894BB58;
  v26 = v10;
  v27 = v8;
  v28 = v9;
  v21 = v9;
  v22 = v8;
  v23 = v10;
  [v20 deleteSpotlightReferencesWithBundleIdentifier:v22 domainIdentifiers:v18 completion:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __96__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "Plugins finished deleting %lu domains from bundle: %@", &v8, 0x16u);
  }

  v3 = *(a1 + 48);
  v4 = objc_opt_new();
  (*(v3 + 16))(v3, v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(SGSqlEntityStore *)self->_harvestStore deleteSpotlightReferencesWithBundleIdentifier:v8 uniqueIdentifiers:v9];
  if ([v8 isEqualToString:*MEMORY[0x277D021D0]])
  {
    [(SGDSuggestManager *)self clearContactAggregator];
  }

  v11 = [(SGDSuggestManager *)self _pmlTraining];
  [v11 deleteSessionsWithIdentifiers:v9 bundleID:v8];

  v12 = +[SGDPluginManager sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_27894BB58;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  [v12 deleteSpotlightReferencesWithBundleIdentifier:v14 uniqueIdentifiers:v15 completion:v16];
}

void __96__SGDSuggestManager_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGDSuggestManager: Plugins finished deleting %lu items from bundle: %@", &v8, 0x16u);
  }

  v3 = *(a1 + 48);
  v4 = objc_opt_new();
  (*(v3 + 16))(v3, v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D41DF8] shouldAdmitContentFromBundleIdentifier:v8])
  {
    [(SGSqlEntityStore *)self->_harvestStore markLostSpotlightReferencesWithBundleIdentifier:v8 uniqueIdentifiers:v9];
  }

  v11 = +[SGDPluginManager sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__SGDSuggestManager_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v15[3] = &unk_27894BB58;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [v11 purgeSpotlightReferencesWithBundleIdentifier:v13 uniqueIdentifiers:v14 completion:v15];
}

void __95__SGDSuggestManager_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "Plugins finished purging %lu items from bundle: %@", &v8, 0x16u);
  }

  v3 = *(a1 + 48);
  v4 = objc_opt_new();
  (*(v3 + 16))(v3, v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[SGDSpotlightCommander sharedInstance];
  [v16 requestReimportFromIdentifier:v15 forPersonHandle:v14 startDate:v13 endDate:v12];

  v17 = objc_opt_new();
  v11[2](v11, v17);
}

- (void)registerForCoreSpotlightIndexing
{
  harvestStore = self->_harvestStore;
  v3 = +[SGSpotlightContactsAdapter searchableIndex];
  [v3 setIndexDelegate:harvestStore];
}

- (void)_processReservationInteractions:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_processReservationInteractions_bundleId_completion___pasOnceToken163 != -1)
  {
    dispatch_once(&_processReservationInteractions_bundleId_completion___pasOnceToken163, &__block_literal_global_760);
  }

  v11 = _processReservationInteractions_bundleId_completion___pasExprOnceResult;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SGDSuggestManager__processReservationInteractions_bundleId_completion___block_invoke_2;
  v16[3] = &unk_27894E090;
  v17 = v8;
  v18 = v9;
  v19 = self;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  dispatch_async(v15, v16);
}

void __73__SGDSuggestManager__processReservationInteractions_bundleId_completion___block_invoke_2(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v39 = [v2 UUIDString];

  v3 = a1;
  obj = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v54 objects:v63 count:16];
  v37 = a1;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v55;
    v42 = *MEMORY[0x277D02390];
    *&v6 = 138543362;
    v36 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [v11 identifier];

        if (v12)
        {
          if ([v11 canConvertToSchemaOrg])
          {
            if (!v8)
            {
              v13 = objc_opt_new();
              v62 = v13;
              v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
              v3 = v37;
              v8 = [SGPipeline customPipeline:v14];
            }

            v15 = [[SGPipelineEntity alloc] initWithInteraction:v11 identifier:v39 fromBundleIdentifier:*(v3 + 40)];
            v16 = v8;
            [v8 dissect:v15];
            v17 = [(SGPipelineEntity *)v15 enrichments];
            v18 = [v17 count];

            if (v18)
            {
              v19 = dispatch_semaphore_create(0);
              v20 = *(v3 + 48);
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = __73__SGDSuggestManager__processReservationInteractions_bundleId_completion___block_invoke_764;
              v52[3] = &unk_278954A30;
              v53 = v19;
              v21 = v19;
              [v20 geocodeEnrichmentsInPipelineEntity:v15 withCompletion:v52];
              dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
              [obj addObject:v15];
            }

            else
            {
              v21 = sgEventsLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v23 = [v11 sg_LoggingIdentifier];
                *buf = v36;
                v61 = v23;
                _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_INFO, "SGDSuggestManager addInteractions: Didn't find any enrichment after dissection of the INInteraction (%{public}@).", buf, 0xCu);
              }
            }

            v8 = v16;
          }
        }

        else
        {
          v22 = sgEventsLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "SGDSuggestManager addInteractions: Encountered INInteraction with nil identifier.", buf, 2u);
          }

          [MEMORY[0x277D01FA8] recordInteractionIgnoredWithReason:v42];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v38 = v8;

  [*(*(v3 + 48) + 8) writeInteractionEventEntities:obj];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = obj;
  v24 = [obja countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v43 = *v49;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = [v27 enrichments];
        v29 = [v28 countByEnumeratingWithState:&v44 objects:v58 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v45;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v45 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v44 + 1) + 8 * k);
              v34 = +[SGDCloudKitSync sharedInstance];
              [v34 addEnrichment:v33 withParentEntity:v27];
            }

            v30 = [v28 countByEnumeratingWithState:&v44 objects:v58 count:16];
          }

          while (v30);
        }
      }

      v25 = [obja countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v25);
  }

  [*(*(v37 + 48) + 8) syncNewBlobsIfChanged];
  (*(*(v37 + 56) + 16))();

  v35 = *MEMORY[0x277D85DE8];
}

void __73__SGDSuggestManager__processReservationInteractions_bundleId_completion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"processReservationInteractions" qosClass:25];
  v2 = _processReservationInteractions_bundleId_completion___pasExprOnceResult;
  _processReservationInteractions_bundleId_completion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)_harvestReservationsFromInteractions:(id)a3 bundleId:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_bufferedInteractionsForBundleLock;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke;
  v23[3] = &unk_278950C08;
  v15 = v10;
  v24 = v15;
  v16 = v11;
  v25 = v16;
  v26 = &v27;
  [(_PASLock *)v14 runWithLockAcquired:v23];
  if (v28[3])
  {
    v17 = MEMORY[0x277D425A0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke_2;
    v18[3] = &unk_278955E58;
    v22 = &v27;
    v19 = v14;
    v20 = self;
    v21 = v13;
    [v17 runAsyncOnQueue:v12 afterDelaySeconds:v18 block:0.2];
  }

  else
  {
    v13[2](v13);
  }

  _Block_object_dispose(&v27, 8);
}

void __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 canConvertToSchemaOrg])
        {
          v10 = [v3 objectForKeyedSubscript:*(a1 + 40)];

          if (!v10)
          {
            v11 = objc_opt_new();
            [v3 setObject:v11 forKeyedSubscript:*(a1 + 40)];
          }

          v12 = [v3 objectForKeyedSubscript:*(a1 + 40)];
          [v12 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v3 allValues];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        *(*(*(a1 + 48) + 8) + 24) += [*(*(&v19 + 1) + 8 * j) count];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke_3;
  v5[3] = &unk_278951000;
  v3 = a1[7];
  v5[4] = a1[5];
  v5[5] = v3;
  [v2 runWithLockAcquired:v5];
  return (*(a1[6] + 16))();
}

void __84__SGDSuggestManager__harvestReservationsFromInteractions_bundleId_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v30 + 1) + 8 * i) count];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = sgEventsLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 134218240;
    v36 = v11;
    v37 = 2048;
    v38 = v7;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "Buffered interactions when block was scheduled: %tu, now: %tu", buf, 0x16u);
  }

  v12 = *(*(*(a1 + 40) + 8) + 24);
  v13 = sgEventsLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 == v7)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "Processing all buffered interactions", buf, 2u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v3;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * j);
          v21 = objc_autoreleasePoolPush();
          v22 = [v15 objectForKeyedSubscript:v20];
          v23 = dispatch_block_create(0, &__block_literal_global_758);
          [*(a1 + 32) _processReservationInteractions:v22 bundleId:v20 completion:v23];
          dispatch_block_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
    }

    [v15 removeAllObjects];
    v3 = v25;
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "Waiting for more interactions to be donated before processing.", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_harvestPeopleFromInteractions:(id)a3 bundleId:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a4;
  if (([v32 hasPrefix:@"com.apple."] & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = v6;
    obj = v6;
    v30 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (!v30)
    {
      goto LABEL_32;
    }

    v7 = 0;
    v29 = *v38;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v8;
        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = sgLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 identifier];
          *buf = 138412546;
          v43 = v11;
          v44 = 2112;
          v45 = v32;
          _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: _harvestPeopleFromInteractions: harvesting from %@ %@", buf, 0x16u);
        }

        v12 = [SGParsedPersonFromInteraction parseInteraction:v9 bundleId:v32];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            v16 = 0;
            do
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * v16);
              [v17 grabNameIfNeededFromContactStore:self->_contactStore];
              v18 = [v17 socialProfile];
              if (v18)
              {
                goto LABEL_15;
              }

              v19 = [v17 displayName];

              if (!v19)
              {
                goto LABEL_16;
              }

              v18 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789@"];
              v20 = [v17 displayName];
              v21 = [v20 rangeOfCharacterFromSet:v18];

              if (v21 == 0x7FFFFFFFFFFFFFFFLL)
              {
LABEL_15:

LABEL_16:
                v18 = [v17 pipelineEntity];
                if (v18)
                {
                  [(SGSqlEntityStore *)self->_harvestStore writeEntity:v18];
                  ++v7;
                }

                goto LABEL_18;
              }

              v22 = sgLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v43 = v32;
                _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_INFO, "Interaction from %@ rejected. Display name is very likely a phone-number or email address.", buf, 0xCu);
              }

LABEL_18:
              ++v16;
            }

            while (v14 != v16);
            v23 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
            v14 = v23;
          }

          while (v23);
        }

        if (v7 >= 1)
        {
          v24 = sgLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v43 = v7;
            _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: _harvestPeopleFromInteractions: harevsted %tu entities", buf, 0xCu);
          }

          [(SGSqlEntityStore *)self->_harvestStore syncNewBlobsIfChanged];
        }

        v8 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (!v30)
      {
LABEL_32:

        v6 = v27;
        break;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)addInteractions:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (addInteractions_bundleId_completion___pasOnceToken153 != -1)
  {
    dispatch_once(&addInteractions_bundleId_completion___pasOnceToken153, &__block_literal_global_744);
  }

  v11 = addInteractions_bundleId_completion___pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SGDSuggestManager_addInteractions_bundleId_completion___block_invoke_2;
  block[3] = &unk_27894E040;
  v17 = v9;
  v18 = v8;
  v20 = v11;
  v21 = v10;
  v19 = self;
  v12 = v11;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(v12, block);
}

void __57__SGDSuggestManager_addInteractions_bundleId_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager addInteractions: bundleId: %{public}@", buf, 0xCu);
  }

  if (![*(a1 + 40) count])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager addInteractions: Can't add 0 interaction from bundleId: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) count];
      *buf = 67109120;
      LODWORD(v18) = v14;
      _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGDSuggestManager addInteractions: Got %i interactions from nil bundleId! Ignoring.", buf, 8u);
    }

    [MEMORY[0x277D01FA8] recordInteractionIgnoredWithReason:*MEMORY[0x277D02388]];
LABEL_12:
    v12 = *(a1 + 64);
    v8 = objc_opt_new();
    (*(v12 + 16))(v12, v8);
    goto LABEL_13;
  }

  [*(a1 + 48) _harvestPeopleFromInteractions:*(a1 + 40) bundleId:?];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SGDSuggestManager_addInteractions_bundleId_completion___block_invoke_747;
  v15[3] = &unk_27894E850;
  v16 = *(a1 + 64);
  [v6 _harvestReservationsFromInteractions:v4 bundleId:v5 queue:v7 completion:v15];
  v8 = v16;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

void __57__SGDSuggestManager_addInteractions_bundleId_completion___block_invoke_747(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

void __57__SGDSuggestManager_addInteractions_bundleId_completion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGSuggestManager-addInteractions" qosClass:25];
  v2 = addInteractions_bundleId_completion___pasExprOnceResult;
  addInteractions_bundleId_completion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)addSearchableItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SGDSuggestManager_addSearchableItems_completion___block_invoke;
  v8[3] = &unk_27894BB30;
  v9 = v6;
  v7 = v6;
  [(SGDSuggestManager *)self enqueueSearchableItems:a3 completion:v8];
}

void __51__SGDSuggestManager_addSearchableItems_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

- (void)addSearchableItemMetadata:(id)a3 htmlData:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [MEMORY[0x277D41E30] deserializeAttributes:a3 andBody:a4];
  if (v9)
  {
    v10 = [MEMORY[0x277D41E08] searchableItemIsEligibleForHarvesting:v9 eligibleExceptForAge:0];
    v11 = sgLogHandle();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = [v9 uniqueIdentifier];
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "SGDSuggestManager: addSearchableItemMetadata: %@ is eligible for harvesting.", buf, 0xCu);
      }

      v20 = v9;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [(SGDSuggestManager *)self addSearchableItems:v14 completion:v8];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v9 uniqueIdentifier];
        *buf = 138412290;
        v22 = v18;
        _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: addSearchableItemMetadata: %@ is NOT eligible for harvesting.", buf, 0xCu);
      }

      v14 = [MEMORY[0x277D02130] response];
      v8[2](v8, v14);
    }
  }

  else
  {
    v15 = sgLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGDSuggestManager: addSearchableItemMetadata: failed to deserialize item data.", buf, 2u);
    }

    v16 = MEMORY[0x277D02130];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:12 userInfo:0];
    v17 = [v16 responseWithError:v14];
    v8[2](v8, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enqueueSearchableItems:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v20 = v8;
    v21 = v7;
    [SGDPowerLog startIngestOfMessages:v8];
    v9 = [[SGRequestContext alloc] initWithServiceContext:self->_context concurrencyBehavior:1 backpressureHazard:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          ctsManager = self->_ctsManager;
          v17 = +[SGPipeline fullPipeline];
          [(SGDManagerForCTS *)ctsManager processSearchableItem:v14 pipeline:v17 context:v9];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    [(SGSqlEntityStore *)self->_harvestStore incStatsCounterWithKey:@"enqueued_items" byValue:v20];
    [SGDPowerLog endIngestOfMessages:v20];

    v7 = v21;
  }

  v18 = objc_opt_new();
  v7[2](v7, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSearchableItemPartOfReimportWithGetterBlock:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SGSqlEntityStore *)self->_harvestStore reimportRequestsContainBundleIdentifier:v7 uniqueIdentifier:0])
  {
    harvestStore = self->_harvestStore;
    v9 = v6[2](v6);
    v10 = [v9 uniqueIdentifier];
    v11 = [(SGSqlEntityStore *)harvestStore reimportRequestsContainBundleIdentifier:v7 uniqueIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isSearchableItemPartOfReimport:(id)a3
{
  harvestStore = self->_harvestStore;
  v4 = a3;
  v5 = [v4 bundleID];
  v6 = [v4 uniqueIdentifier];

  LOBYTE(harvestStore) = [(SGSqlEntityStore *)harvestStore reimportRequestsContainBundleIdentifier:v5 uniqueIdentifier:v6];
  return harvestStore;
}

- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 withCompletion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v15 = 138412547;
    v16 = v10;
    v17 = 2117;
    v18 = v7;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Suggestions received feedback %@ for StringFromFollowUpWarning %{sensitive}@.", &v15, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x277D02018]) initWithString:v7];
  v12 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138740227;
    v16 = v7;
    v17 = 2117;
    v18 = v11;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "FollowUpFeedback: for StringFromFollowUpWarning %{sensitive}@ for warning %{sensitive}@", &v15, 0x16u);
  }

  [SGMIFollowUpAnalyzer reportUserEngagement:a3 forWarning:v11];
  v13 = [MEMORY[0x277D02138] responseWith:&unk_284749260];
  v8[2](v8, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 withCompletion:(id)a6
{
  v9 = a6;
  v11 = [SGMIFollowUpAnalyzer identifyFollowUpWarningFromSubject:a3 body:a4 date:a5];
  v10 = [MEMORY[0x277D02138] responseWith:v11];
  v9[2](v9, v10);
}

- (void)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 withCompletion:(id)a12
{
  v18 = a12;
  v20 = [SGMIOmissionAnalyzer identifyComposeWarningsFromSubject:a3 content:a4 attributes:a5 toRecipients:a6 ccRecipients:a7 bccRecipients:a8 originalToRecipients:a9 originalCcRecipients:a10 attachments:a11];
  v19 = [MEMORY[0x277D02138] responseWith:v20];
  v18[2](v18, v19);
}

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 withCompletion:(id)a5
{
  harvestStore = self->_harvestStore;
  v8 = a5;
  v10 = [(SGSqlEntityStore *)harvestStore sortedUnsubscriptionOpportunitiesForField:a3 limit:a4];
  v9 = [MEMORY[0x277D02138] responseWith:v10];
  v8[2](v8, v9);
}

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 withCompletion:(id)a7
{
  harvestStore = self->_harvestStore;
  v12 = a7;
  v14 = [(SGSqlEntityStore *)harvestStore sortedUnsubscriptionOpportunitiesForField:a3 minCount:a4 minScore:a6 limit:a5];
  v13 = [MEMORY[0x277D02138] responseWith:v14];
  v12[2](v12, v13);
}

- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 withCompletion:(id)a5
{
  harvestStore = self->_harvestStore;
  v8 = a5;
  [(SGSqlEntityStore *)harvestStore preventUnsubscriptionOpportunitiesSuggestionsForField:a3 toValues:a4];
  v9 = objc_opt_new();
  v8[2](v8, v9);
}

- (void)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 withCompletion:(id)a5
{
  v15 = a3;
  harvestStore = self->_harvestStore;
  v9 = a5;
  v10 = [(SGSqlEntityStore *)harvestStore topSalienciesForMailboxId:v15 limit:a4];
  if (v15)
  {
    v11 = +[SGSqlEntityStore defaultStore];
    [v11 setNSString:v15 forKey:@"lastMailboxCheckedForTopSGMISaliency"];

    v12 = +[SGSqlEntityStore defaultStore];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v12 setInt64NSNumber:v13 forKey:@"lastLimitCheckedForTopSGMISaliency"];
  }

  v14 = [MEMORY[0x277D02138] responseWith:v10];
  v9[2](v9, v14);
}

- (void)saliencyFromEmailHeaders:(id)a3 withCompletion:(id)a4
{
  v45[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = a4;
  v44[0] = @"message-id";
  v6 = [v5 messageId];
  v45[0] = v6;
  v44[1] = @"subject";
  v7 = [v5 subject];
  v45[1] = v7;
  v44[2] = @"from";
  v8 = [v5 from];
  v9 = [v8 _pas_componentsJoinedByString:{@", "}];
  v45[2] = v9;
  v44[3] = @"to";
  v10 = [v5 to];
  v11 = [v10 _pas_componentsJoinedByString:{@", "}];
  v45[3] = v11;
  v44[4] = @"cc";
  v12 = [v5 cc];
  v13 = [v12 _pas_componentsJoinedByString:{@", "}];
  v45[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];

  v15 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = [v16 objectForKeyedSubscript:v21];
        if (v22)
        {
          v23 = [[SGSimpleMailHeaderKeyValue alloc] initWithKey:v21 value:v22];
          [v15 addObject:v23];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v18);
  }

  v24 = [SGSimpleMailMessage simpleMailMessageFromHeaders:v15];
  v25 = [SGMIFeatureVector alloc];
  v26 = [v24 messageId];
  v27 = +[SGSqlEntityStore defaultStore];
  v28 = [(SGMIFeatureVector *)v25 initWithMessageId:v26 hasHashedMessageId:0 simpleMailMessage:v24 senderConnectionScore:&unk_284749DE8 biomeMessageSummary:0 store:v27 preLoadedFeatureNames:MEMORY[0x277CBEBF8]];

  v29 = +[SGMISaliencyModelConfig defaultConfig];
  v36 = 0;
  v30 = [SGMISaliencyInference evaluate:v28 enablePreFiltering:1 config:v29 error:&v36];
  v31 = v36;

  if (v31)
  {
    v32 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v31;
      _os_log_error_impl(&dword_231E60000, v32, OS_LOG_TYPE_ERROR, "SGMISaliencyInference: %@", buf, 0xCu);
    }
  }

  v33 = [MEMORY[0x277D02138] responseWith:v30];
  v35[2](v35, v33);

  v34 = *MEMORY[0x277D85DE8];
}

- (void)saliencyFromRFC822Data:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SGSimpleMailMessage parseRfc822:a3];
  v7 = [SGMIFeatureVector alloc];
  v8 = [v6 messageId];
  v9 = +[SGSqlEntityStore defaultStore];
  v10 = [(SGMIFeatureVector *)v7 initWithMessageId:v8 hasHashedMessageId:0 simpleMailMessage:v6 senderConnectionScore:&unk_284749DE8 biomeMessageSummary:0 store:v9 preLoadedFeatureNames:MEMORY[0x277CBEBF8]];

  v11 = +[SGMISaliencyModelConfig defaultConfig];
  v17 = 0;
  v12 = [SGMISaliencyInference evaluate:v10 enablePreFiltering:1 config:v11 error:&v17];
  v13 = v17;

  if (v13)
  {
    v14 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, "SGMISaliencyInference: %@", buf, 0xCu);
    }
  }

  v15 = [MEMORY[0x277D02138] responseWith:v12];
  v5[2](v5, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)evaluateRecipe:(id)a3 attachments:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277D41F88];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SGPaths suggestionsDirectory];
  v12 = [v7 sharedSingletonWithDirectory:v11];

  v16 = 0;
  v13 = [v12 planReceivedWithRecipe:v10 attachments:v9 error:&v16];

  v14 = v16;
  if (v14)
  {
    [MEMORY[0x277D02138] responseWithError:v14];
  }

  else
  {
    [MEMORY[0x277D02138] responseWith:v13];
  }
  v15 = ;
  v8[2](v8, v15);
}

- (void)planReceivedFromServerWithPayload:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277D41F88];
  v6 = a4;
  v7 = a3;
  v8 = +[SGPaths suggestionsDirectory];
  v9 = [v5 sharedSingletonWithDirectory:v8];

  v13 = 0;
  v10 = [v9 planReceivedWithPayload:v7 error:&v13];

  v11 = v13;
  if (v11)
  {
    [MEMORY[0x277D02138] responseWithError:v11];
  }

  else
  {
    [MEMORY[0x277D02138] responseWith:v10];
  }
  v12 = ;
  v6[2](v6, v12);
}

- (void)sendRTCLogsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SGRTCLogging defaultLogger];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SGDSuggestManager_sendRTCLogsWithCompletion___block_invoke;
  v6[3] = &unk_27894BAB8;
  v7 = v3;
  v5 = v3;
  [v4 sendRTCLogsWithCompletion:v6];
}

void __47__SGDSuggestManager_sendRTCLogsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D02138];
  if (a3)
  {
    v6 = [MEMORY[0x277D02138] responseWithError:?];
    (*(v3 + 16))(v3);
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v5 = [v4 responseWith:?];
    (*(v3 + 16))(v3, v5);
  }
}

- (void)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 completion:(id)a8
{
  v9 = MEMORY[0x277D02138];
  v10 = a8;
  v11 = [v9 responseWith:MEMORY[0x277CBEBF8]];
  (*(a8 + 2))(v10, v11);
}

- (void)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 completion:(id)a8
{
  v9 = MEMORY[0x277D02138];
  v10 = a8;
  v11 = [v9 responseWith:MEMORY[0x277CBEBF8]];
  (*(a8 + 2))(v10, v11);
}

- (void)rebuildNamesForDetailCache:(id)a3
{
  harvestStore = self->_harvestStore;
  v4 = a3;
  [(SGSqlEntityStore *)harvestStore rebuildContactDetailsCacheWithShouldContinueBlock:&__block_literal_global_722];
  v5 = objc_opt_new();
  v4[2](v4, v5);
}

- (void)resetConfirmationAndRejectionHistory:(id)a3
{
  history = self->_history;
  v4 = a3;
  [(SGSuggestHistory *)history reset];
  v5 = objc_opt_new();
  v4[2](v4, v5);
}

- (void)rejectContact:(id)a3 confirmRejectUI:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  harvestStore = self->_harvestStore;
  v20 = 0;
  [(SGSqlEntityStore *)harvestStore rejectRealtimeContact:v8 error:&v20];
  v11 = v20;
  [SGAggregateLogging contactRejected:v8 inApp:[(SGDSuggestManager *)self clientIsMail]^ 1];
  v12 = MEMORY[0x277D020F8];
  v13 = [(SGDSuggestManager *)self clientIsMail];
  v14 = MEMORY[0x277D02210];
  if (!v13)
  {
    v14 = MEMORY[0x277D02218];
  }

  if (a4 > 4)
  {
    v15 = 2;
  }

  else
  {
    v15 = dword_232106DF0[a4];
  }

  [v12 recordRejectedContact:v8 inApp:*v14 rejectionUI:v15 pet2Tracker:self->_pet2Tracker];
  v16 = +[SGDSuggestManager contactAggregator];
  v17 = [v8 contact];
  [v16 removeContact:v17];

  +[SGDSuggestManager clearRequestCache];
  if (v11)
  {
    v18 = [MEMORY[0x277D02130] responseWithError:v11];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;
  v9[2](v9, v18);
}

- (void)_performAction:(id)a3 onRecord:(id)a4 withParentConfirmation:(BOOL)a5 confirmRejectUI:(int)a6 completion:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(SGSqlEntityStore *)self->_harvestStore suggestContactByRecordId:v12 withSnippets:0 filterConfirmRejectDetails:0];
  v15 = [v14 recordId];
  v16 = [v15 isEqual:v12];

  if (v16)
  {
    if ([v11 isEqualToString:@"confirm"])
    {
      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v14;
        _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "Confirming details as workaround for Contacts search for contact %@", buf, 0xCu);
      }

      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __95__SGDSuggestManager__performAction_onRecord_withParentConfirmation_confirmRejectUI_completion___block_invoke;
      v36 = &unk_2789508E8;
      v37 = self;
      v18 = v14;
      v38 = v18;
      [v18 enumerateDetailsWithBlock:&v33];
      [(SGSqlEntityStore *)self->_harvestStore confirmContactByRecordID:v12 error:0, v33, v34, v35, v36, v37];
      [SGAggregateLogging recordConfirmedForContact:v18];
      v19 = MEMORY[0x277D020F8];
      v20 = [MEMORY[0x277D020A0] realtimeContactForNewContact:v18];
      v21 = [(SGDSuggestManager *)self clientIsMail];
      v22 = MEMORY[0x277D02210];
      if (!v21)
      {
        v22 = MEMORY[0x277D02218];
      }

      if (a6 > 4)
      {
        v23 = 2;
      }

      else
      {
        v23 = dword_232106DF0[a6];
      }

      [v19 recordBannerConfirmedWithContact:v20 proposedCNContact:0 confirmedCNContact:0 inApp:*v22 confirmationUI:v23 pet2Tracker:self->_pet2Tracker];
    }

    else
    {
      [(SGSuggestHistory *)self->_history rejectContact:v14];
      [(SGSqlEntityStore *)self->_harvestStore rejectContactByRecordID:v12 error:0];
      [SGAggregateLogging recordRejectedForContact:v14];
      v26 = MEMORY[0x277D020F8];
      v27 = [MEMORY[0x277D020A0] realtimeContactForNewContact:v14];
      v28 = [(SGDSuggestManager *)self clientIsMail];
      v29 = MEMORY[0x277D02210];
      if (!v28)
      {
        v29 = MEMORY[0x277D02218];
      }

      if (a6 > 4)
      {
        v30 = 2;
      }

      else
      {
        v30 = dword_232106DF0[a6];
      }

      [v26 recordRejectedContact:v27 inApp:*v29 rejectionUI:v30 pet2Tracker:self->_pet2Tracker];
    }
  }

  else
  {
    v24 = sgLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v14 recordId];
      *buf = 138412546;
      v40 = v12;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "While confirming/rejecting contact, provided recordId was not contactId: %@ %@", buf, 0x16u);
    }
  }

  +[SGDSuggestManager clearRequestCache];
  if (v13)
  {
    v31 = objc_opt_new();
    v13[2](v13, v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_performAction:(id)a3 onContactDetailRecord:(id)a4 confirmRejectUI:(int)a5 completion:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByRecordId:v10];
  if ([v12 groupId] < 1)
  {
    if ([v12 masterEntityId] < 1)
    {
      v13 = [v10 rowId];
    }

    else
    {
      v13 = [v12 masterEntityId];
    }
  }

  else
  {
    v13 = [v12 groupId];
  }

  if (v13)
  {
    v14 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:v13];
    v15 = [(SGSqlEntityStore *)self->_harvestStore suggestContactByRecordId:v14 withSnippets:0 filterConfirmRejectDetails:0];
    v16 = [v15 detailForRecordId:v10];
    if (!v16)
    {
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEFAULT, "While confirming/rejecting contact detail, requested detail not in loaded contract for record id: %@", buf, 0xCu);
      }

      +[SGDSuggestManager clearRequestCache];
      v19 = objc_opt_new();
      v11[2](v11, v19);

      goto LABEL_31;
    }

    [(SGSuggestHistory *)self->_history confirmOrRejectDetail:v16 forContact:v15];
    v39 = v9;
    v40 = v15;
    if ([v9 isEqualToString:@"confirm"])
    {
      [(SGSqlEntityStore *)self->_harvestStore confirmContactDetailByRecordID:v10 error:0];
      [SGAggregateLogging detail:v16 confirmedForContact:v15];
      v37 = 0;
    }

    else
    {
      v20 = [v12 duplicateKey];
      [v20 entityType];
      IsContactDetail = SGEntityTypeIsContactDetail();

      if (IsContactDetail)
      {
        history = self->_history;
        v23 = [v12 duplicateKey];
        v24 = [v23 contactDetailKey];
        [(SGSuggestHistory *)history rejectContactDetailKey:v24];

        v15 = v40;
      }

      [(SGSqlEntityStore *)self->_harvestStore rejectContactDetailByRecordID:v10 error:0];
      [SGAggregateLogging detail:v16 rejectedForContact:v15];
      v37 = 1;
    }

    v36 = MEMORY[0x277D020F8];
    v25 = v16;
    objc_opt_class();
    v38 = v14;
    if (objc_opt_isKindOfClass())
    {
      v26 = MEMORY[0x277D022C0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = *MEMORY[0x277D022B8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = *MEMORY[0x277D022A8];
        }

        else
        {
          v27 = v28;
        }

LABEL_27:

        v29 = [v25 extractionInfo];
        v30 = [v29 extractionType];
        v31 = [v25 extractionInfo];
        v32 = [v31 modelVersion];
        if (a5 > 4)
        {
          v33 = 2;
        }

        else
        {
          v33 = dword_232106DF0[a5];
        }

        [v36 recordContactDetailEngagementWithResolution:v37 detailType:v27 extractionType:v30 modelVersion:v32 confirmRejectUI:v33 pet2Tracker:{self->_pet2Tracker, v36}];

        +[SGDSuggestManager clearRequestCache];
        v34 = objc_opt_new();
        v11[2](v11, v34);

        v14 = v38;
        v9 = v39;
        v15 = v40;
LABEL_31:

        goto LABEL_32;
      }

      v26 = MEMORY[0x277D022B0];
    }

    v27 = *v26;
    goto LABEL_27;
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v10;
    _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "While confirming/rejecting contact detail, failed to load detail for record id: %@", buf, 0xCu);
  }

  +[SGDSuggestManager clearRequestCache];
  v14 = objc_opt_new();
  v11[2](v11, v14);
LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)confirmContact:(id)a3 confirmRejectUI:(int)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 cnContactIdentifier];
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "SGDSuggestManager-confirmContact: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v23 = 0;
  [(SGSqlEntityStore *)harvestStore confirmRealtimeContact:v8 error:&v23];
  v13 = v23;
  [SGAggregateLogging contactConfirmed:v8 inApp:[(SGDSuggestManager *)self clientIsMail]^ 1];
  v14 = MEMORY[0x277D020F8];
  v15 = [(SGDSuggestManager *)self clientIsMail];
  v16 = MEMORY[0x277D02210];
  if (!v15)
  {
    v16 = MEMORY[0x277D02218];
  }

  if (a4 > 4)
  {
    v17 = 2;
  }

  else
  {
    v17 = dword_232106DF0[a4];
  }

  [v14 recordBannerConfirmedWithContact:v8 proposedCNContact:0 confirmedCNContact:0 inApp:*v16 confirmationUI:v17 pet2Tracker:self->_pet2Tracker];
  v18 = +[SGDSuggestManager contactAggregator];
  v19 = [v8 contact];
  [v18 removeContact:v19];

  +[SGDSuggestManager clearRequestCache];
  if (v13)
  {
    v20 = [MEMORY[0x277D02130] responseWithError:v13];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v21 = v20;
  v9[2](v9, v20);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)deleteEventByRecordId:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager - deleteEventByRecordId: event Id: (%{public}@)", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v25 = 0;
  [(SGSqlEntityStore *)harvestStore rejectEventByRecordId:v6 error:&v25];
  v10 = v25;
  v11 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByRecordId:v6];
  v12 = v11;
  if (v11)
  {
    v13 = self->_harvestStore;
    v14 = [v11 duplicateKey];
    v15 = [v14 parentKey];
    v16 = [(SGSqlEntityStore *)v13 loadEntityByKey:v15];

    if (v16)
    {
      v26 = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v18 = [(SGDSuggestManager *)self realtimeEventsFromEntity:v16 enrichments:v17 store:self->_harvestStore];

      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        [SGAggregateLogging eventRejectedByRecord:v19];

        v20 = [v12 duplicateKey];
        v21 = [v20 serialize];
        [(SGDSuggestManager *)self logEventInteractionForEventWithUniqueKey:v21 interface:7 actionType:9];
      }
    }
  }

  +[SGDSuggestManager clearRequestCache];
  if (v10)
  {
    v22 = [MEMORY[0x277D02130] responseWithError:v10];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v7[2](v7, v22);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)rejectEventByRecordId:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-rejectEventByRecordId: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v25 = 0;
  [(SGSqlEntityStore *)harvestStore rejectEventByRecordId:v6 error:&v25];
  v10 = v25;
  v11 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByRecordId:v6];
  v12 = v11;
  if (v11)
  {
    v13 = self->_harvestStore;
    v14 = [v11 duplicateKey];
    v15 = [v14 parentKey];
    v16 = [(SGSqlEntityStore *)v13 loadEntityByKey:v15];

    if (v16)
    {
      v26 = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v18 = [(SGDSuggestManager *)self realtimeEventsFromEntity:v16 enrichments:v17 store:self->_harvestStore];

      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        [SGAggregateLogging eventRejectedByRecord:v19];

        v20 = [v12 duplicateKey];
        v21 = [v20 serialize];
        [(SGDSuggestManager *)self logEventInteractionForEventWithUniqueKey:v21 interface:7 actionType:7];
      }
    }
  }

  +[SGDSuggestManager clearRequestCache];
  if (v10)
  {
    v22 = [MEMORY[0x277D02130] responseWithError:v10];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v7[2](v7, v22);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)rejectEvent:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 eventIdentifier];
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-rejectEvent: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v19 = 0;
  [(SGSqlEntityStore *)harvestStore rejectRealtimeEvent:v6 error:&v19];
  v11 = v19;
  [SGAggregateLogging eventRejected:v6 inApp:[(SGDSuggestManager *)self clientIsMail]^ 1];
  v12 = MEMORY[0x277D020F8];
  v13 = [(SGDSuggestManager *)self clientIsMail];
  v14 = MEMORY[0x277D02210];
  if (!v13)
  {
    v14 = MEMORY[0x277D02218];
  }

  [v12 recordBannerRejectedWithEvent:v6 inApp:*v14];
  if ([(SGDSuggestManager *)self clientIsMail])
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  [(SGDSuggestManager *)self logEventInteractionForRealtimeEvent:v6 interface:v15 actionType:7];
  +[SGDSuggestManager clearRequestCache];
  if (v11)
  {
    v16 = [MEMORY[0x277D02130] responseWithError:v11];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v7[2](v7, v16);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)confirmEventByRecordId:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-confirmEventByRecordId: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v25 = 0;
  [(SGSqlEntityStore *)harvestStore confirmEventByRecordId:v6 error:&v25];
  v10 = v25;
  v11 = [(SGSqlEntityStore *)self->_harvestStore loadEntityByRecordId:v6];
  v12 = v11;
  if (v11)
  {
    v13 = self->_harvestStore;
    v14 = [v11 duplicateKey];
    v15 = [v14 parentKey];
    v16 = [(SGSqlEntityStore *)v13 loadEntityByKey:v15];

    if (v16)
    {
      v26 = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v18 = [(SGDSuggestManager *)self realtimeEventsFromEntity:v16 enrichments:v17 store:self->_harvestStore];

      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        [SGAggregateLogging eventConfirmedByRecord:v19];

        v20 = [v12 duplicateKey];
        v21 = [v20 serialize];
        [(SGDSuggestManager *)self logEventInteractionForEventWithUniqueKey:v21 interface:7 actionType:6];
      }
    }
  }

  +[SGDSuggestManager clearRequestCache];
  if (v10)
  {
    v22 = [MEMORY[0x277D02130] responseWithError:v10];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v7[2](v7, v22);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)confirmEvent:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 eventIdentifier];
    *buf = 138412290;
    v31 = v9;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-confirmEvent: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v29 = 0;
  [(SGSqlEntityStore *)harvestStore confirmRealtimeEvent:v6 error:&v29];
  v11 = v29;
  v12 = [(SGDSuggestManager *)self clientIsMail];
  [SGAggregateLogging eventConfirmed:v6 inApp:!v12];
  v13 = self->_ekStoreProvider;
  v14 = MEMORY[0x277D425A0];
  v15 = dispatch_get_global_queue(9, 0);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __45__SGDSuggestManager_confirmEvent_completion___block_invoke;
  v25 = &unk_27894BB08;
  v16 = v13;
  v26 = v16;
  v17 = v6;
  v27 = v17;
  v28 = v12;
  [v14 runAsyncOnQueue:v15 afterDelaySeconds:&v22 block:60.0];

  if (v12)
  {
    v18 = 1;
  }

  else
  {
    v18 = 4;
  }

  [(SGDSuggestManager *)self logEventInteractionForRealtimeEvent:v17 interface:v18 actionType:6, v22, v23, v24, v25];
  +[SGDSuggestManager clearRequestCache];
  if (v11)
  {
    v19 = [MEMORY[0x277D02130] responseWithError:v11];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v7[2](v7, v19);

  v21 = *MEMORY[0x277D85DE8];
}

void __45__SGDSuggestManager_confirmEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(v3 + 16))();
  v4 = [*(a1 + 40) event];
  v5 = [v9 sg_confirmedEKEventForSGEvent:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) event];
    v7 = [v6 toEKEventWithStore:v9];
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D02210];
  if (!*(a1 + 48))
  {
    v8 = MEMORY[0x277D02218];
  }

  [MEMORY[0x277D020F8] recordBannerConfirmedWithEvent:*(a1 + 40) proposedEKEvent:v7 confirmedEKEvent:v5 inApp:*v8];
}

- (void)originFromRecordId:(id)a3 completion:(id)a4
{
  harvestStore = self->_harvestStore;
  v6 = a4;
  v8 = [(SGSqlEntityStore *)harvestStore loadOriginByRecordId:a3];
  v7 = [MEMORY[0x277D02138] responseWith:v8];
  v6[2](v6, v7);
}

- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CC1E70]);
  v8 = [v5 bundleId];
  v25 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v25];
  v10 = v25;

  if (v10)
  {
    v11 = sgEventsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGDSuggestManager-launchAppForSuggestedEventUsingLaunchInfo: Error creating application record: %@", buf, 0xCu);
    }

    v12 = [MEMORY[0x277D02130] responseWithError:v10];
    v6[2](v6, v12);
  }

  else
  {
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13 = [v5 intent];

    if (v13)
    {
      v14 = [v5 userActivity];
      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277CD3D58]);
        v16 = [v5 intent];
        v17 = [v15 initWithIntent:v16 response:0];

        [v17 setIntentHandlingStatus:5];
        [v14 _setInteraction:v17 donate:0];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __74__SGDSuggestManager_launchAppForSuggestedEventUsingLaunchInfo_completion___block_invoke;
        v23[3] = &unk_27894BAB8;
        v24 = v6;
        [v12 openUserActivity:v14 usingApplicationRecord:v9 configuration:0 completionHandler:v23];

        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:-1 userInfo:&unk_28474B288];
        v17 = [MEMORY[0x277D02130] responseWithError:v10];
        v6[2](v6, v17);
      }
    }

    else
    {
      v18 = [v5 sourceURL];

      if (v18)
      {
        v19 = [v5 sourceURL];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __74__SGDSuggestManager_launchAppForSuggestedEventUsingLaunchInfo_completion___block_invoke_702;
        v21[3] = &unk_27894BAE0;
        v22 = v6;
        [v12 openURL:v19 configuration:0 completionHandler:v21];

        v10 = 0;
        v14 = v22;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:-1 userInfo:&unk_28474B2B0];
        v14 = [MEMORY[0x277D02130] responseWithError:v10];
        v6[2](v6, v14);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __74__SGDSuggestManager_launchAppForSuggestedEventUsingLaunchInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = sgEventsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SGDSuggestManager-launchAppForSuggestedEventUsingLaunchInfo: Error opening user activity: %@", &v10, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277D02130] responseWithError:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
  }

  v8 = v7;
  (*(v6 + 16))(v6, v7);

  v9 = *MEMORY[0x277D85DE8];
}

void __74__SGDSuggestManager_launchAppForSuggestedEventUsingLaunchInfo_completion___block_invoke_702(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = [MEMORY[0x277D02130] responseWithError:?];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  (*(v3 + 16))(v3);
}

- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 ignoreUserActivitySupport:(BOOL)a6 ignoreMailCheck:(BOOL)a7 completion:(id)a8
{
  v117 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v95 = a4;
  v94 = a5;
  v98 = a8;
  if (!v13)
  {
    v89 = [MEMORY[0x277CCA890] currentHandler];
    [v89 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2621 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  v14 = sgEventsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: %@", &buf, 0xCu);
  }

  if (![SGDuplicateKey serializationPassesBasicScrutiny:v13])
  {
    v20 = MEMORY[0x277D02138];
    v99 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:0];
    v97 = [v20 responseWithError:v99];
    v98[2](v98, v97);
    goto LABEL_106;
  }

  v15 = [[SGDuplicateKey alloc] initWithSerialized:v13];
  harvestStore = self->_harvestStore;
  v17 = [(SGDuplicateKey *)v15 entityKey];
  v93 = [(SGSqlEntityStore *)harvestStore loadEntitiesByEntityKey:v17 entityType:2 resolveDuplicates:&__block_literal_global_681];

  if ([v93 count])
  {
    v18 = [v93 lastObject];
    v99 = [SGStorageEvent storageEventFromEntity:v18];

    v19 = [v99 duplicateKey];

    v15 = v19;
  }

  else
  {
    v99 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__4008;
  v115 = __Block_byref_object_dispose__4009;
  v116 = 0;
  ekStoreProvider = self->_ekStoreProvider;
  if (ekStoreProvider)
  {
    ekStoreProvider = ekStoreProvider->_callBlockWithEKEventStoreForReading;
  }

  v22 = ekStoreProvider;
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __145__SGDSuggestManager_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_ignoreUserActivitySupport_ignoreMailCheck_completion___block_invoke_2;
  v104[3] = &unk_27894B8A0;
  v97 = v15;
  v105 = v97;
  v106 = self;
  p_buf = &buf;
  (v22->_callBlockWithEKEventStoreForReading)(v22, v104);

  if (!(v95 | v99) && !*(*(&buf + 1) + 40))
  {
    v33 = sgEventsLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v109 = 0;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Event was not found and no fallback URL provided.", v109, 2u);
    }

    goto LABEL_112;
  }

  v23 = [(SGDuplicateKey *)v97 parentKey];
  v90 = [v23 entityType];

  if (!v90)
  {
    v33 = sgEventsLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v109 = 0;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Could not get the entity type.", v109, 2u);
    }

    goto LABEL_112;
  }

  if (v90 != 16)
  {
    switch(v90)
    {
      case 18:
        if (*(*(&buf + 1) + 40))
        {
          v60 = [MEMORY[0x277CC1E70] sg_preferredApplicationRecordForURL:?];
LABEL_79:
          v50 = v60;
          v59 = *(*(&buf + 1) + 40);
          goto LABEL_80;
        }

        break;
      case 13:
        if (!v95 || ([v95 scheme], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "lowercaseString"), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", @"sms"), v56, v55, !v57))
        {
          v53 = 0;
          v27 = 0;
          v50 = 0;
          goto LABEL_87;
        }

        if (!a7)
        {
          v58 = [(NSXPCConnection *)self->_connection sgd_clientName];
          [v58 isEqualToString:*MEMORY[0x277D021D0]];
        }

        v41 = sgEventsLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v109 = 0;
          _os_log_impl(&dword_231E60000, v41, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Found message for Event Found in Messages on device.", v109, 2u);
        }

        goto LABEL_66;
      case 5:
        if (v95)
        {
          v34 = [v95 scheme];
          v35 = [v34 lowercaseString];
          v36 = [v35 isEqualToString:@"message"];

          if (v36)
          {
            if (a7)
            {
              goto LABEL_42;
            }

            v37 = [(NSXPCConnection *)self->_connection sgd_clientName];
            v38 = [v37 isEqualToString:*MEMORY[0x277D021C0]];

            if ((v38 & 1) != 0 || (+[SGMailClientUtil sharedInstance](SGMailClientUtil, "sharedInstance"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 isMessageAvailable:v95], v39, v40))
            {
LABEL_42:
              v41 = sgEventsLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *v109 = 0;
                _os_log_impl(&dword_231E60000, v41, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Found e-mail for Event Found in Mail on device.", v109, 2u);
              }

LABEL_66:

              v50 = [MEMORY[0x277CC1E70] sg_preferredApplicationRecordForURL:v95];
              v59 = v95;
LABEL_80:
              v53 = v59;
              v27 = 0;
              goto LABEL_87;
            }
          }
        }

        if (*(*(&buf + 1) + 40))
        {
          v62 = sgEventsLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *v109 = 0;
            _os_log_impl(&dword_231E60000, v62, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Could not find e-mail for Event Found in Mail on device but did find fallback URL", v109, 2u);
          }

          v60 = [MEMORY[0x277CC1E70] sg_preferredApplicationRecordForURL:*(*(&buf + 1) + 40)];
          goto LABEL_79;
        }

        v33 = sgEventsLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v109 = 0;
          _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Could not find e-mail for Event Found in Mail on device or fallback URL.", v109, 2u);
        }

LABEL_112:

        v50 = [MEMORY[0x277D02138] responseWith:0];
        v98[2](v98, v50);
        goto LABEL_105;
    }

    v33 = sgEventsLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v109 = 134217984;
      v110 = v90;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Can't find a bundleId for entity type: '%lld'", v109, 0xCu);
    }

    goto LABEL_112;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v24 = [v99 tags];
  v25 = [v24 countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (!v25)
  {

    v26 = 0;
    goto LABEL_49;
  }

  v26 = 0;
  v27 = 0;
  v28 = *v101;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v101 != v28)
      {
        objc_enumerationMutation(v24);
      }

      v30 = *(*(&v100 + 1) + 8 * i);
      if ([v30 isIntentResponseUserActivityString])
      {
        v31 = [v30 intentResponseUserActivityString];
        if (v31)
        {
          v32 = [MEMORY[0x277CC1EF0] sg_userActivityWithRequiredString:v31];

          v27 = v32;
        }
      }

      else
      {
        if (![v30 isInteractionTeamId])
        {
          continue;
        }

        [v30 value];
        v26 = v31 = v26;
      }
    }

    v25 = [v24 countByEnumeratingWithState:&v100 objects:v111 count:16];
  }

  while (v25);

  if (!v27)
  {
LABEL_49:
    v27 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"INGetReservationDetailsIntent"];
  }

  if (a6)
  {
    v42 = [v99 duplicateKey];
    v43 = [v42 parentKey];
    v44 = [v43 bundleId];
    v45 = v44 == 0;

    if (!v45)
    {
      v46 = objc_alloc(MEMORY[0x277CC1E70]);
      v47 = [v99 duplicateKey];
      v48 = [v47 parentKey];
      v49 = [v48 bundleId];
      v50 = [v46 initWithBundleIdentifier:v49 allowPlaceholder:0 error:0];
      goto LABEL_54;
    }

    v50 = 0;
  }

  else
  {
    v51 = MEMORY[0x277CC1E70];
    v47 = [v27 activityType];
    v48 = [v99 duplicateKey];
    v49 = [v48 parentKey];
    v52 = [v49 bundleId];
    v50 = [v51 sg_preferredApplicationRecordForUserActivityType:v47 withTeamIdentifier:v26 preferredBundleIdentifier:v52];

LABEL_54:
  }

  if ([v50 sg_isAppleBundleIdentifier])
  {
LABEL_56:
    v53 = 0;
    goto LABEL_86;
  }

  if (v50)
  {
    v54 = [v50 applicationState];
    if ([v54 isInstalled])
    {
      v53 = 0;
      goto LABEL_85;
    }

    v63 = *(*(&buf + 1) + 40) == 0;

    if (v63)
    {
      goto LABEL_56;
    }

    v61 = *(*(&buf + 1) + 40);
LABEL_84:
    v64 = [MEMORY[0x277CC1E70] sg_preferredApplicationRecordForURL:v61];

    v53 = *(*(&buf + 1) + 40);
    v54 = v27;
    v50 = v64;
    v27 = 0;
LABEL_85:
  }

  else
  {
    v61 = *(*(&buf + 1) + 40);
    if (v61)
    {
      goto LABEL_84;
    }

    v53 = 0;
    v50 = 0;
  }

LABEL_86:

LABEL_87:
  if (([v50 sg_isAppleBundleIdentifier] & 1) == 0)
  {
    if (!v50 || ([v50 applicationState], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "isInstalled"), v65, (v66 & 1) == 0))
    {
      v68 = sgEventsLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v109 = 0;
        _os_log_impl(&dword_231E60000, v68, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Could not find an installed bundle id.", v109, 2u);
      }

      goto LABEL_97;
    }
  }

  v67 = 0;
  if (v90 == 16)
  {
    if (v27)
    {
      v67 = [(SGDSuggestManager *)self createLaunchIntentForStorageEvent:v99];
      if (!v67)
      {
        v68 = sgEventsLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *v109 = 0;
          _os_log_impl(&dword_231E60000, v68, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Could not create launch intent for event.", v109, 2u);
        }

LABEL_97:

        v69 = [MEMORY[0x277D02138] responseWith:0];
        v98[2](v98, v69);
        goto LABEL_104;
      }
    }
  }

  if (v94)
  {
    v92 = [v94 localeIdentifier];
  }

  else
  {
    v70 = [MEMORY[0x277CBEAF8] currentLocale];
    v92 = [v70 localeIdentifier];
  }

  if ([v50 sg_isAppleBundleIdentifier] && (objc_msgSend(v50, "applicationState"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "isInstalled"), v71, (v72 & 1) == 0))
  {
    v74 = [v50 bundleIdentifier];
  }

  else
  {
    v108 = v92;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
    v74 = [v50 localizedNameWithPreferredLocalizations:v73];
  }

  v75 = [(SGDSuggestManager *)self _showInFormatStringWithLocalization:v92];
  v83 = _PASValidatedFormat(v75, v76, v77, v78, v79, v80, v81, v82, v74);
  v84 = objc_alloc(MEMORY[0x277D02100]);
  v85 = [v50 bundleIdentifier];
  v86 = [v84 initWithBundleId:v85 localizedShowInString:v83 userActivity:v27 intent:v67 sourceURL:v53];

  v87 = [MEMORY[0x277D02138] responseWith:v86];
  v98[2](v98, v87);

  v69 = v53;
  v53 = v27;
  v27 = v67;
LABEL_104:

LABEL_105:
  _Block_object_dispose(&buf, 8);

LABEL_106:
  v88 = *MEMORY[0x277D85DE8];
}

void __145__SGDSuggestManager_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_ignoreUserActivitySupport_ignoreMailCheck_completion___block_invoke_2(void *a1, void *a2)
{
  v7 = [a2 eventsWithSameOpaqueKeyAsDuplicateKey:a1[4] extraKey:0 harvestStore:*(a1[5] + 8)];
  if ([v7 count])
  {
    v3 = [v7 firstObject];
    v4 = [v3 sg_fallbackURL];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

id __145__SGDSuggestManager_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_ignoreUserActivitySupport_ignoreMailCheck_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count] > 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v2 reverseObjectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 duplicateKey];
          v11 = [v10 parentKey];
          v12 = [v11 entityType];

          if (v12 == 16)
          {
            v22 = v9;
            v13 = MEMORY[0x277CBEA60];
            v14 = &v22;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = [v2 lastObject];
    v21 = v4;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v21;
LABEL_13:
    v3 = [v13 arrayWithObjects:v14 count:1];
  }

  else
  {
    v3 = v2;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)createLaunchIntentForStorageEvent:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 duplicateKey];
  v5 = [v4 serialize];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v3 tags];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v24;
    *&v8 = 138412290;
    v22 = v8;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      if ([v13 isReservationItemReferences])
      {
        v14 = [v13 reservationItemReferences];
        if (![v14 count])
        {
          v19 = sgLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v29 = v5;
            _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Found no item references for event with unique id '%@'", buf, 0xCu);
          }

          v7 = 0;
          goto LABEL_25;
        }

        v15 = [v14 firstObject];

        v9 = v15;
      }

      else
      {
        if (![v13 isReservationContainerReference])
        {
          goto LABEL_13;
        }

        v16 = [v13 reservationContainerReference];

        if (v16)
        {
          v10 = v16;
          goto LABEL_13;
        }

        v14 = sgLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = v22;
          v29 = v5;
          _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGDSuggestManager-launchInfoForSuggestedEventWithUniqueIdentifier: Found no container reference for event with unique id '%@'", buf, 0xCu);
        }

        v10 = 0;
      }

LABEL_13:
      if (v7 == ++v12)
      {
        v17 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
        v7 = v17;
        if (v17)
        {
          goto LABEL_3;
        }

        if (v9)
        {
          v18 = objc_alloc(MEMORY[0x277CD3C70]);
          v27 = v9;
          v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
          v7 = [v18 initWithReservationContainerReference:v10 reservationItemReferences:v6];
          goto LABEL_25;
        }

        v7 = 0;
        goto LABEL_26;
      }
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_25:

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)eventFromUniqueId:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2570 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-eventFromUniqueId: %@", buf, 0xCu);
  }

  if ([SGDuplicateKey serializationPassesBasicScrutiny:v7])
  {
    v10 = [[SGDuplicateKey alloc] initWithSerialized:v7];
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "dupKey: %@", buf, 0xCu);
    }

    v12 = [(SGSqlEntityStore *)self->_harvestStore loadEventByDuplicateKey:v10];
    v13 = [v12 convertToEvent:self->_harvestStore];

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v13 uniqueKey];
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v18;
      _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "eventFromUniqueId: %@ resulted in dupKey: %@ and event: %@", buf, 0x20u);
    }

    v15 = [MEMORY[0x277D02138] responseWith:v13];
    v8[2](v8, v15);
  }

  else
  {
    v16 = MEMORY[0x277D02138];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:0];
    v13 = [v16 responseWithError:v10];
    v8[2](v8, v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)resolveFullDownloadRequests:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SGDSuggestManager_resolveFullDownloadRequests_withCompletion___block_invoke;
  v10[3] = &unk_278955A98;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  SGNotUserInitiated(@"resolveFullDownloadRequests", 2, v10);
}

void __64__SGDSuggestManager_resolveFullDownloadRequests_withCompletion___block_invoke(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGDSuggestManager-resolveFullDownloadRequests", v7, 2u);
  }

  v3 = *(a1[4] + 8);
  v4 = [MEMORY[0x277D01FE0] map:a1[5] f:&__block_literal_global_674];
  [v3 resolveFullDownloadRequests:v4];

  v5 = a1[6];
  v6 = objc_opt_new();
  (*(v5 + 16))(v5, v6);
}

SGEmailKey *__64__SGDSuggestManager_resolveFullDownloadRequests_withCompletion___block_invoke_672(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SGEmailKey alloc] initWithMailMessageKey:v2];

  return v3;
}

- (void)fullDownloadRequestBatch:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SGDSuggestManager_fullDownloadRequestBatch_withCompletion___block_invoke;
  v8[3] = &unk_27894BA90;
  v8[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  SGNotUserInitiated(@"fullDownloadRequestBatch", 2, v8);
}

void __61__SGDSuggestManager_fullDownloadRequestBatch_withCompletion___block_invoke(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGDSuggestManager-fullDownloadRequestBatch", v9, 2u);
  }

  v3 = MEMORY[0x277D02138];
  v4 = MEMORY[0x277D01FE0];
  v5 = a1[5];
  v6 = [*(a1[4] + 8) loadFullDownloadRequestBatch:a1[6]];
  v7 = [v4 map:v6 f:&__block_literal_global_668];
  v8 = [v3 responseWith:v7];
  (*(v5 + 16))(v5, v8);
}

- (void)reportMessagesFound:(id)a3 lost:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SGDSuggestManager_reportMessagesFound_lost_withCompletion___block_invoke;
  v14[3] = &unk_27894E090;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  SGNotUserInitiated(@"reportMessagesFound", 2, v14);
}

void __61__SGDSuggestManager_reportMessagesFound_lost_withCompletion___block_invoke(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGDSuggestManager-reportMessagesFound", v11, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [MEMORY[0x277D01FE0] map:a1[4] f:&__block_literal_global_660];
  v5 = [v3 initWithArray:v4];

  [*(a1[5] + 8) markMessagesFound:v5];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = [MEMORY[0x277D01FE0] map:a1[6] f:&__block_literal_global_662];
  v8 = [v6 initWithArray:v7];

  [*(a1[5] + 8) updateMessages:v8 state:3];
  v9 = a1[7];
  v10 = objc_opt_new();
  (*(v9 + 16))(v9, v10);
}

SGEmailKey *__61__SGDSuggestManager_reportMessagesFound_lost_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SGEmailKey alloc] initWithMailMessageKey:v2];

  return v3;
}

SGEmailKey *__61__SGDSuggestManager_reportMessagesFound_lost_withCompletion___block_invoke_658(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SGEmailKey alloc] initWithMailMessageKey:v2];

  return v3;
}

- (void)updateMessages:(id)a3 state:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SGDSuggestManager_updateMessages_state_completion___block_invoke;
  v12[3] = &unk_27894BA68;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v16 = a4;
  v10 = v9;
  v11 = v8;
  SGNotUserInitiated(@"updateMessages", 2, v12);
}

void __53__SGDSuggestManager_updateMessages_state_completion___block_invoke(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGDSuggestManager-updateMessages", v8, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [MEMORY[0x277D01FE0] map:a1[4] f:&__block_literal_global_653];
  v5 = [v3 initWithArray:v4];

  [*(a1[5] + 8) updateMessages:v5 state:a1[7]];
  v6 = a1[6];
  v7 = objc_opt_new();
  (*(v6 + 16))(v6, v7);
}

SGEmailKey *__53__SGDSuggestManager_updateMessages_state_completion___block_invoke_650(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SGEmailKey alloc] initWithMailMessageKey:v2];

  return v3;
}

- (void)messagesToRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SGDSuggestManager_messagesToRefreshWithCompletion___block_invoke;
  v6[3] = &unk_278955EE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  SGNotUserInitiated(@"messagesToRefreshWithCompletion", 2, v6);
}

void __53__SGDSuggestManager_messagesToRefreshWithCompletion___block_invoke(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGDSuggestManager-messagesToRefreshWithCompletion", buf, 2u);
  }

  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "Loading messages to refresh.", v10, 2u);
  }

  v4 = MEMORY[0x277D02138];
  v5 = MEMORY[0x277D01FE0];
  v6 = *(a1 + 40);
  v7 = [*(*(a1 + 32) + 8) loadMessagesToRefresh];
  v8 = [v5 map:v7 f:&__block_literal_global_645];
  v9 = [v4 responseWith:v8];
  (*(v6 + 16))(v6, v9);
}

- (void)birthdayExtractionsForInterval:(id)a3 withCompletion:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v45 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGDSuggestManager-birthdayExtractionsForInterval", buf, 2u);
  }

  if (!v6)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2469 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
  }

  v8 = [v6 startDate];
  v46 = v6;
  v43 = [v6 endDate];
  v44 = v8;
  v9 = [(SGSqlEntityStore *)self->_harvestStore allContactsWithExtractionStartDate:v8 extractionEndDate:?];
  v10 = [v9 count];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SGDSuggestManager_birthdayExtractionsForInterval_withCompletion___block_invoke;
  block[3] = &unk_27894B7D8;
  v11 = v9;
  v60 = v11;
  v61 = self;
  dispatch_apply(v10, 0, block);
  v47 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v11;
  v52 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v52)
  {
    v12 = *v56;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        harvestStore = self->_harvestStore;
        v16 = [v14 recordId];
        v17 = [(SGSqlEntityStore *)harvestStore loadEntityByRecordId:v16];

        if (v17)
        {
          v18 = [SGMessageKey alloc];
          v19 = [v17 duplicateKey];
          v20 = [v19 parentKey];
          v21 = [v20 entityKey];
          v22 = [v21 serialize];
          v23 = [(SGMessageKey *)v18 initWithSerialized:v22];

          contactStore = self->_contactStore;
          v54 = 0;
          v25 = [SGCuratedContactMatcher realtimeContactWithContactStore:contactStore forPseudoContact:v14 fromEntity:v17 error:&v54];
          v26 = v54;
          if (v26)
          {
            v27 = sgLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v63 = v14;
              v64 = 2112;
              v65 = v26;
              _os_log_debug_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEBUG, "birthdayExtractionsForInterval: Error getting realtime contact for %@: %@", buf, 0x16u);
            }
          }

          if (v25)
          {
            v49 = objc_alloc(MEMORY[0x277D01F98]);
            v28 = [(SGMessageKey *)v23 uniqueIdentifier];
            v29 = [(SGMessageKey *)v23 source];
            v50 = [v17 duplicateKey];
            v30 = [v50 parentKey];
            v31 = v12;
            v32 = [v30 entityType];
            [v17 creationTimestamp];
            v34 = v33;
            [v25 cnContactIdentifier];
            v51 = v23;
            v35 = v25;
            v37 = v36 = v26;
            v38 = v32;
            v12 = v31;
            v39 = [v49 initWithSpotlightIdentifier:v28 source:v29 entityType:v38 creationTimestamp:1 extractionType:v37 contactIdentifier:v34];

            v26 = v36;
            v25 = v35;
            v23 = v51;

            [v47 addObject:v39];
          }
        }
      }

      v52 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v52);
  }

  v40 = [MEMORY[0x277D02138] responseWith:v47];
  v45[2](v45, v40);

  v41 = *MEMORY[0x277D85DE8];
}

void __67__SGDSuggestManager_birthdayExtractionsForInterval_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if (![v4 significance])
  {
    if ([*(*(a1 + 40) + 8) contactIsSignificantOrSignificanceIsDisabled:v4])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [v4 setSignificance:v3];
  }
}

- (void)celebrationExtractionsForInterval:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-celebrationExtractionsForInterval", buf, 2u);
  }

  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2461 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
  }

  [(SGDSuggestManager *)self birthdayExtractionsForInterval:v7 withCompletion:v8];
}

- (void)contactMatchesBySocialProfile:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-contactsBySocialProfile", buf, 2u);
  }

  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2453 description:{@"Invalid parameter not satisfying: %@", @"socialProfile"}];
  }

  v10 = MEMORY[0x277D02138];
  v11 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesBySocialProfile:v7];
  v12 = [v10 responseWith:v11];
  v8[2](v8, v12);
}

- (void)contactMatchesByEmailAddress:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-contactsByEmailAddress", buf, 2u);
  }

  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:2445 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v10 = MEMORY[0x277D02138];
  v11 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesByEmailAddress:v7];
  v12 = [v10 responseWith:v11];
  v8[2](v8, v12);
}

- (void)namesForDetailCacheSnapshotsWithCompletion:(id)a3
{
  harvestStore = self->_harvestStore;
  v5 = a3;
  v6 = [(SGSqlEntityStore *)harvestStore kvCacheManager];
  v12 = [v6 cacheOfType:0];

  v7 = [(SGSqlEntityStore *)self->_harvestStore kvCacheManager];
  v8 = [v7 cacheOfType:1];

  v9 = MEMORY[0x277D02140];
  v10 = [(SGDSuggestManager *)self _maybeFormatString];
  v11 = [v9 responseWith:v8 also:v12 also:v10];
  v5[2](v5, v11);
}

uint64_t __88__SGDSuggestManager_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _maybeFormatString];
  v2 = namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion__maybeFormat;
  namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion__maybeFormat = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

uint64_t __88__SGDSuggestManager_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contact];
  v6 = [v5 recordId];
  v7 = [v6 rowId];

  v8 = [v4 contact];

  v9 = [v8 recordId];
  v10 = [v9 rowId];

  if (v7 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v7 < v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

void __107__SGDSuggestManager_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 error];
      *buf = 138412290;
      v18 = v12;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "Error encountered: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v3 response1];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) addObject:*(*(&v13 + 1) + 8 * v10)];
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) count];
        if (*(*(*(a1 + 48) + 8) + 24) > *(a1 + 56))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __107__SGDSuggestManager_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_614(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (!v3)
  {
    v4 = [v7 response1];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v7 response1];
      [v5 addObject:v6];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)interactionStoreLookupForDetail:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138478083;
    v18 = v5;
    v19 = 2050;
    v20 = [v5 length];
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-interactionStoreLookupForDetail:%{private}@ (length %{public}tu)", &v17, 0x16u);
  }

  v8 = [[SGPSInteractionLookup alloc] initWithDetail:v5];
  v9 = [(SGPSInteractionLookup *)v8 interactionString];
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 length];
    v12 = [v9 length];
    v17 = 138478595;
    v18 = v5;
    v19 = 2050;
    v20 = v11;
    v21 = 2113;
    v22 = v9;
    v23 = 2050;
    v24 = v12;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager-interactionStoreLookupForDetail:%{private}@ (length %{public}tu) -> result: %{private}@ (length %{public}tu)", &v17, 0x2Au);
  }

  v13 = MEMORY[0x277D02138];
  if ([v9 length])
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 responseWith:v14];
  v6[2](v6, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)contactMatchesByPhoneNumber:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-contactMatchesByPhoneNumber", v12, 2u);
  }

  v9 = MEMORY[0x277D02138];
  v10 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesByPhoneNumber:v7];

  v11 = [v9 responseWith:v10];
  v6[2](v6, v11);
}

- (id)realtimeContactsFromEntity:(id)a3 enrichments:(id)a4 sourceTextMessage:(id)a5 store:(id)a6
{
  v155 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v100 = a4;
  v99 = a5;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SGFeatureVectorLog([v10 inhumanFeatures]);
  }

  if ([v10 isInhuman])
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "Entity is from inhuman sender", buf, 2u);
    }

    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_100;
  }

  v97 = v11;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v14 = [v10 tags];
  v15 = [v14 countByEnumeratingWithState:&v141 objects:v154 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v142;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v142 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v141 + 1) + 8 * i);
        if ([v19 isMailingListId])
        {
          v12 = [v19 value];
          goto LABEL_17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v141 objects:v154 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_17:

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v130 = MEMORY[0x277D85DD0];
  v131 = 3221225472;
  v132 = __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke;
  v133 = &unk_27894B940;
  v95 = v10;
  v140 = a2;
  v93 = v10;
  v134 = v93;
  v135 = self;
  v94 = v20;
  v136 = v94;
  v137 = v97;
  v96 = v21;
  v138 = v96;
  v139 = v100;
  v92 = v139;
  v22 = sgMapAndFilter();
  v23 = sgLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v153 = v22;
    _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "Contacts after filter, before realtiming, %{private}@", buf, 0xCu);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v126 objects:v151 count:16];
  v103 = v24;
  if (v25)
  {
    v26 = v25;
    v27 = *v127;
    v101 = *v127;
    v102 = v12;
    do
    {
      v28 = 0;
      v104 = v26;
      do
      {
        if (*v127 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v126 + 1) + 8 * v28);
        if (v12)
        {
          v30 = [*(*(&v126 + 1) + 8 * v28) emailAddresses];
          v121 = MEMORY[0x277D85DD0];
          v122 = 3221225472;
          v123 = __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke_604;
          v124 = &unk_27894B968;
          v125 = v12;
          v31 = sgFilter();

          [v29 setEmailAddresses:v31];
        }

        v32 = [v29 name];

        if (!v32)
        {
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v33 = [v29 emailAddresses];
          v34 = [v33 countByEnumeratingWithState:&v117 objects:v150 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v118;
            while (2)
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v118 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v117 + 1) + 8 * j);
                v39 = [v38 emailAddress];
                v40 = [v39 length];

                if (v40)
                {
                  v41 = [v38 emailAddress];
                  v42 = [SGNames nameStringFromEmailAddress:v41];

                  if (v42)
                  {
                    v43 = [v38 origin];
                    v44 = [v38 recordId];
                    v45 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
                    v46 = [SGNames sgNameFromString:v42 origin:v43 recordId:v44 extractionInfo:v45];
                    [v29 setName:v46];

                    goto LABEL_38;
                  }
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v117 objects:v150 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }

LABEL_38:

          v12 = v102;
          v24 = v103;
          v27 = v101;
          v26 = v104;
        }

        ++v28;
      }

      while (v28 != v26);
      v26 = [v24 countByEnumeratingWithState:&v126 objects:v151 count:16];
    }

    while (v26);
  }

  v47 = [v99 conversationIdentifier];
  if (![v47 length])
  {
    v50 = v92;
    v49 = v93;
LABEL_94:

    goto LABEL_95;
  }

  v48 = [v24 count];

  if (v48 <= 1)
  {
    if ([v24 count] == 1)
    {
      v47 = [v24 objectAtIndexedSubscript:0];
    }

    else
    {
      v47 = 0;
    }

    v51 = [v99 author];
    v52 = [v51 handles];
    v53 = [v52 firstObject];

    v54 = 0x277CBE000;
    v106 = v51;
    if (!v47)
    {
      v66 = 0;
LABEL_80:
      if ([v53 containsString:@"@"])
      {
        SGNormalizeEmailAddress();
      }

      else
      {
        SGNormalizePhoneNumber();
      }
      v78 = ;

      v47 = 0;
      v66 = v78;
LABEL_84:
      v79 = v53;
      if (v66)
      {
        v80 = +[SGDSuggestManager contactAggregator];
        v81 = [v99 conversationIdentifier];
        v82 = [v80 augmentSuggestedContactWithContact:v47 conversationId:v81 store:self->_harvestStore handle:v66];

        if (v82)
        {
          v145 = v82;
          v24 = [*(v54 + 2656) arrayWithObjects:&v145 count:1];
LABEL_89:
          v50 = v92;
          v49 = v93;

          v83 = sgLogHandle();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v153 = v47;
            _os_log_debug_impl(&dword_231E60000, v83, OS_LOG_TYPE_DEBUG, "Contact pre-aggregation: %@", buf, 0xCu);
          }

          v84 = sgLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v153 = v82;
            _os_log_debug_impl(&dword_231E60000, v84, OS_LOG_TYPE_DEBUG, "Contact post-aggregation: %@", buf, 0xCu);
          }

          goto LABEL_94;
        }
      }

      else
      {
        v82 = 0;
      }

      v24 = MEMORY[0x277CBEBF8];
      goto LABEL_89;
    }

    v55 = [SGIdentityKey keyForPersonHandle:v51];
    v56 = SGNormalizePhoneNumber();
    v57 = [SGIdentityKey keyForNormalizedPhone:v56];

    v58 = SGNormalizeEmailAddress();
    v59 = [SGIdentityKey keyForNormalizedEmail:v58];

    v105 = v55;
    v91 = v59;
    if ([v99 senderIsAccountOwner])
    {
      v115 = 0uLL;
      v116 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v148[0] = v55;
      v148[1] = v59;
      v148[2] = v57;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
      v61 = [v60 countByEnumeratingWithState:&v113 objects:v149 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v114;
        while (2)
        {
          for (k = 0; k != v62; ++k)
          {
            if (*v114 != v63)
            {
              objc_enumerationMutation(v60);
            }

            if ([v96 containsObject:*(*(&v113 + 1) + 8 * k)])
            {

              v74 = sgLogHandle();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v153 = v47;
                _os_log_impl(&dword_231E60000, v74, OS_LOG_TYPE_DEFAULT, "Extracted Realtime contact details about the user and tried to show them in a banner: %@", buf, 0xCu);
              }

              v66 = 0;
              v65 = v47;
              v47 = 0;
              goto LABEL_72;
            }
          }

          v62 = [v60 countByEnumeratingWithState:&v113 objects:v149 count:16];
          if (v62)
          {
            continue;
          }

          break;
        }
      }

      v65 = [v96 anyObject];
      v66 = [v65 uniqueIdentifier];
LABEL_72:
      v54 = 0x277CBE000uLL;
      v75 = v105;
      v76 = v91;
    }

    else
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v146[0] = v55;
      v146[1] = v59;
      v90 = v57;
      v146[2] = v57;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
      v68 = [v67 countByEnumeratingWithState:&v109 objects:v147 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v110;
LABEL_62:
        v71 = v53;
        v72 = 0;
        while (1)
        {
          if (*v110 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v73 = *(*(&v109 + 1) + 8 * v72);
          if ([v96 containsObject:v73])
          {
            break;
          }

          if (v69 == ++v72)
          {
            v69 = [v67 countByEnumeratingWithState:&v109 objects:v147 count:16];
            v53 = v71;
            if (v69)
            {
              goto LABEL_62;
            }

            goto LABEL_68;
          }
        }

        v66 = [v73 uniqueIdentifier];

        v53 = v71;
        if (!v66)
        {
          goto LABEL_75;
        }

        v54 = 0x277CBE000;
        v75 = v105;
        v57 = v90;
        v76 = v91;
LABEL_79:

        if (v47)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      }

LABEL_68:

LABEL_75:
      v77 = sgLogHandle();
      v54 = 0x277CBE000uLL;
      v57 = v90;
      v76 = v91;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v153 = v47;
        _os_log_impl(&dword_231E60000, v77, OS_LOG_TYPE_DEFAULT, "Extracted a contact with a different handle to the sender: %@", buf, 0xCu);
      }

      v66 = 0;
      v65 = v47;
      v47 = 0;
      v75 = v105;
    }

    goto LABEL_79;
  }

  v50 = v92;
  v49 = v93;
LABEL_95:
  v107 = v49;
  v108 = v50;
  v13 = sgMapAndFilter();
  v85 = sgLogHandle();
  v10 = v95;
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = [v13 count];
    *buf = 134217984;
    v153 = v86;
    _os_log_impl(&dword_231E60000, v85, OS_LOG_TYPE_DEFAULT, "Returning %tu realtime contacts", buf, 0xCu);
  }

  v87 = sgLogHandle();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v153 = v13;
    _os_log_debug_impl(&dword_231E60000, v87, OS_LOG_TYPE_DEBUG, "Realtime contacts: %@", buf, 0xCu);
  }

  v11 = v97;
LABEL_100:

  v88 = *MEMORY[0x277D85DE8];

  return v13;
}

id __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 duplicateKey];
  [v4 entityType];
  if (SGEntityTypeIsContactDetail())
  {
    v5 = [v3 tags];
    v6 = [MEMORY[0x277D01FA0] fromReply];
    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 duplicateKey];
  if ([v8 entityType] != 4)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v9 = [v3 extractionInfo];
  v10 = [v9 extractionType];
  if (v10 == 2)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v49 = [v3 extractionInfo];
  if ([v49 extractionType] == 64)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v16 = [v3 extractionInfo];
  if ([v16 extractionType] == 128)
  {
    v47 = v16;
    v11 = 1;
LABEL_10:
    v13 = a1;
    v14 = [*(a1 + 32) tags];
    v15 = [MEMORY[0x277D01FA0] fromTextMessage];
    v12 = [v14 containsObject:v15];

    if (v11)
    {
    }

    a1 = v13;
    if (v10 == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

LABEL_18:
LABEL_19:

  if (((v7 | v12) & 1) == 0)
  {
LABEL_28:
    v23 = 0;
    goto LABEL_40;
  }

  v17 = [v3 duplicateKey];
  v18 = v17;
  if (v7)
  {
    [v17 contactDetailKey];
  }

  else
  {
    [v17 pseudoContactKey];
  }
  v19 = ;
  v20 = [v19 identityKey];

  v21 = [v3 duplicateKey];
  v22 = [v21 parentKey];
  if (!v22)
  {
    __assert_rtn("[SGDSuggestManager realtimeContactsFromEntity:enrichments:sourceTextMessage:store:]_block_invoke", "SGDSuggestManager.m", 2134, "enrichment.duplicateKey.parentKey");
  }

  if (!v20)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"SGDSuggestManager.m" lineNumber:2135 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  if ([*(a1 + 48) containsObject:v20])
  {

    goto LABEL_28;
  }

  [*(a1 + 48) addObject:v20];
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 56);
  v26 = [v3 duplicateKey];
  v27 = [v25 storageContactByKey:v26];

  objc_autoreleasePoolPop(v24);
  v28 = objc_autoreleasePoolPush();
  v50 = v27;
  v29 = [v27 profiles];
  v30 = [v29 allObjects];
  v55 = MEMORY[0x277D85DD0];
  v56 = 3221225472;
  v57 = __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke_2;
  v58 = &unk_27894B918;
  v46 = a1;
  v59 = *(a1 + 32);
  v31 = sgMapAndFilter();
  v32 = [SGStorageContact mergeAll:v31];
  v33 = [v32 anyObject];

  objc_autoreleasePoolPop(v28);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = v33;
  v34 = [v33 profiles];
  v35 = [v34 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v52;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v51 + 1) + 8 * i) tags];
        v40 = [MEMORY[0x277D01FA0] hardName];
        v41 = [v39 containsObject:v40];

        if (v41)
        {

          v23 = 0;
          v42 = v48;
          goto LABEL_39;
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  [*(v46 + 64) addObject:v20];
  v42 = v48;
  v23 = [v48 convertToContact:*(v46 + 56) sourceEntity:*(v46 + 32) enrichments:*(v46 + 72)];
LABEL_39:

LABEL_40:
  v43 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke_604(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddress];
  v4 = SGNormalizeEmailAddress();
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

id __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke_611(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isContactInteresting:v3 emailEntity:*(a1 + 40) enrichments:*(a1 + 48) hasContactCard:1];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = v3;
    v25 = 1024;
    LODWORD(v26) = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Contact: %@, interesting: %i", buf, 0x12u);
  }

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 64);
    v22 = 0;
    v8 = [SGCuratedContactMatcher realtimeContactWithContactStore:v7 forPseudoContact:v3 fromEntity:v6 error:&v22];
    v9 = v22;
    if (v9)
    {
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v24 = v3;
        v25 = 2112;
        v26 = v9;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Error getting realtime contact for %@: %@", buf, 0x16u);
      }
    }

    v11 = [v8 state] == 2;
    v12 = *(a1 + 32);
    v13 = [v8 contact];
    v14 = [v12 _isContactInteresting:v13 emailEntity:*(a1 + 40) enrichments:*(a1 + 48) hasContactCard:2 * v11];

    if ((v14 & 1) == 0)
    {
      v15 = sgLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "Contact deemed uninteresting. Suggestion suppressed", buf, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = [v8 contact];
  v17 = [v16 recordId];
  v18 = [v17 rowId];

  if (v18 >= 1 && ![SGSqlEntityStore isEphemeralIdentifier:v18])
  {
    v19 = [v8 markedAsHarvested];

    v8 = v19;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

id __84__SGDSuggestManager_realtimeContactsFromEntity_enrichments_sourceTextMessage_store___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 duplicateKey];
  v6 = [v5 parentKey];
  v7 = [v6 messageKey];
  v8 = [*(a1 + 32) duplicateKey];
  v9 = [v8 messageKey];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [SGStorageContact contactFromContactEntity:v3];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v11;
}

- (id)realtimeWalletPassesFromEntity:(id)a3 enrichments:(id)a4
{
  v4 = sgMapAndFilter();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

id __64__SGDSuggestManager_realtimeWalletPassesFromEntity_enrichments___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  if (v5 != 26)
  {
    v23 = 0;
    goto LABEL_23;
  }

  v6 = [v3 duplicateKey];
  v7 = [v6 walletPassKey];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v3 tags];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v9)
  {

    v13 = 0;
    v12 = 0;
LABEL_19:
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138412290;
      v35 = v28;
      _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "%@: Wallet Pass Data or Dictionary cannot be empty", buf, 0xCu);
    }

    v23 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v29 = a1;
  v11 = v7;
  v12 = 0;
  v13 = 0;
  v14 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v30 + 1) + 8 * i);
      if ([v16 isWalletPassData])
      {
        v17 = [v16 walletPassData];

        v13 = v17;
      }

      if ([v16 isWalletPassDictionary])
      {
        v18 = [v16 walletPassDictionary];

        v12 = v18;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v10);

  v7 = v11;
  if (!v13 || !v12)
  {
    a1 = v29;
    goto LABEL_19;
  }

  v19 = [v12 objectForKeyedSubscript:@"passState"];
  v20 = stateForWalletPassStateString(v19);

  v21 = objc_alloc(MEMORY[0x277D020C0]);
  v22 = [v7 identifier];
  v23 = [v21 initRealtimeWalletPassForState:v20 identifier:v22 walletPassDictionary:v12 walletPassData:v13];
LABEL_22:

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_isContactInteresting:(id)a3 emailEntity:(id)a4 enrichments:(id)a5 hasContactCard:(unint64_t)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D01FA0] isSent];
  v12 = [v9 hasTag:v11];

  v66 = v9;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v9 author];
    v15 = [v14 sg_emailAddress];
    v16 = v15;
    v17 = &stru_284703F00;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = SGNormalizeEmailAddress();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v20 = [v8 emailAddresses];
    v21 = [v20 countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v21)
    {
      v22 = v21;
      v63 = v18;
      v23 = *v76;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v76 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v75 + 1) + 8 * i) emailAddress];
          v26 = SGNormalizeEmailAddress();
          v27 = [v26 isEqualToString:v19];

          if (!v27)
          {
            v13 = 1;
            goto LABEL_15;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_15:
      v18 = v63;
    }

    else
    {
      v13 = 0;
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v28 = v10;
  v29 = [v28 countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v29)
  {
    v30 = v29;
    v64 = v13;
    v31 = *v72;
    while (2)
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v71 + 1) + 8 * j);
        v34 = [v33 duplicateKey];
        [v34 entityType];
        IsContact = SGEntityTypeIsContact();

        if (IsContact)
        {
          v36 = [v8 name];
          v37 = [v36 fullName];
          v38 = [v33 title];
          v39 = [v37 isEqual:v38];

          if (v39)
          {
            v40 = [v33 extractionInfo];
            v41 = [v40 extractionType];

            if (v41 == 2)
            {
              v42 = 1;
              goto LABEL_30;
            }
          }
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }

    v42 = 0;
LABEL_30:
    v13 = v64;
  }

  else
  {
    v42 = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v43 = v28;
  v44 = [v43 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v68;
LABEL_34:
    v47 = 0;
    while (1)
    {
      if (*v68 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v48 = *(*(&v67 + 1) + 8 * v47);
      v49 = [v48 extractionInfo];
      v50 = [v49 extractionType];

      if (v50 == 64)
      {
        break;
      }

      v51 = [v48 extractionInfo];
      v52 = [v51 extractionType];

      if (v52 == 128)
      {

        v53 = 0;
        v54 = 0;
        if ([v43 count] != 1)
        {
          goto LABEL_48;
        }

        goto LABEL_61;
      }

      if (v45 == ++v47)
      {
        v45 = [v43 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v45)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      }
    }

    if ([v43 count] != 1)
    {
      v53 = 1;
      goto LABEL_48;
    }

    if (a6 == 2)
    {
      v54 = 0;
    }

    else
    {
      v61 = [v8 name];
      v62 = [v61 fullName];
      v54 = [v62 length] == 0;
    }
  }

  else
  {
LABEL_41:

    v53 = 0;
LABEL_48:
    v55 = [v8 birthday];

    if (a6 == 2)
    {
      v56 = 0;
    }

    else
    {
      v56 = v42;
    }

    if (a6)
    {
      v57 = v55 == 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = !v57;
    v54 = 1;
    if ((v56 & 1) == 0 && ((v13 | v53) & 1) == 0 && (v58 & 1) == 0)
    {
      v54 = [v8 hasNonTrivialInfo];
    }
  }

LABEL_61:

  v59 = *MEMORY[0x277D85DE8];
  return v54;
}

- (id)realtimeWalletOrdersFromEntity:(id)a3 enrichments:(id)a4
{
  v4 = sgMapAndFilter();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id __64__SGDSuggestManager_realtimeWalletOrdersFromEntity_enrichments___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  if (v5 != 25)
  {
    v23 = 0;
    goto LABEL_23;
  }

  v6 = [v3 duplicateKey];
  v7 = [v6 walletOrderKey];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v3 tags];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v9)
  {

    v13 = 0;
    v12 = 0;
LABEL_19:
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138412290;
      v35 = v28;
      _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "%@: Wallet Order Data or Dictionary cannot be empty", buf, 0xCu);
    }

    v23 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v29 = a1;
  v11 = v7;
  v12 = 0;
  v13 = 0;
  v14 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v30 + 1) + 8 * i);
      if ([v16 isWalletOrderData])
      {
        v17 = [v16 walletOrderData];

        v13 = v17;
      }

      if ([v16 isWalletOrderDictionary])
      {
        v18 = [v16 walletOrderDictionary];

        v12 = v18;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v10);

  v7 = v11;
  if (!v13 || !v12)
  {
    a1 = v29;
    goto LABEL_19;
  }

  v19 = [v12 objectForKeyedSubscript:@"orderState"];
  v20 = stateForWalletOrderString(v19);

  v21 = objc_alloc(MEMORY[0x277D020B8]);
  v22 = [v7 serialize];
  v23 = [v21 initRealtimeWalletOrderForState:v20 identifier:v22 walletOrderDictionary:v12 walletOrderData:v13];
LABEL_22:

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)containsNonCuratedData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) origin];
        v8 = [v7 type];

        if (v8 != 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isSGEvent:(id)a3 duplicateOfEKEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  ekStoreProvider = self->_ekStoreProvider;
  if (ekStoreProvider)
  {
    ekStoreProvider = ekStoreProvider->_callBlockWithEKEventStoreForReading;
  }

  v9 = ekStoreProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SGDSuggestManager_isSGEvent_duplicateOfEKEvent___block_invoke;
  v13[3] = &unk_27894B8A0;
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v16 = &v17;
  (v9->_callBlockWithEKEventStoreForReading)(v9, v13);

  LOBYTE(v9) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __50__SGDSuggestManager_isSGEvent_duplicateOfEKEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = [*(a1 + 32) toEKEventWithStore:a2];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v23 timeZone];
  [v3 setTimeZone:v5];

  v6 = [v23 startDate];
  v7 = [v3 stringFromDate:v6];

  v8 = [v23 endDate];
  v9 = [v3 stringFromDate:v8];

  v10 = [*(a1 + 40) timeZone];
  [v3 setTimeZone:v10];

  v11 = [*(a1 + 40) startDate];
  v12 = [v3 stringFromDate:v11];

  v13 = [*(a1 + 40) endDate];
  v14 = [v3 stringFromDate:v13];

  v15 = [v23 startDate];
  v16 = [*(a1 + 40) startDate];
  if ([v15 isEqualToDate:v16] && objc_msgSend(v7, "isEqualToString:", v12))
  {
    v17 = [v23 endDate];
    v18 = [*(a1 + 40) endDate];
    if ([v17 isEqualToDate:v18] && objc_msgSend(v9, "isEqualToString:", v14))
    {
      v22 = [v23 locationWithoutPrediction];
      v21 = [*(a1 + 40) locationWithoutPrediction];
      if ([v22 isEqualToString:?])
      {
        v20 = [v23 title];
        v19 = [*(a1 + 40) title];
        *(*(*(a1 + 48) + 8) + 24) = [v20 isEqualToString:v19];
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (id)curatedEventKeyForExactMatchOfPseudoEvent:(id)a3 candidates:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [SGDuplicateKey alloc];
  v8 = [v5 duplicateKey];
  v9 = [v8 parentKey];
  v10 = [v9 serialize];
  v37 = [(SGDuplicateKey *)v7 initWithSerialized:v10];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v12)
  {
    v36 = v5;
    v13 = *v39;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        v16 = [v15 suggestionInfo];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 calendar];
          if ([v18 isSuggestedEventCalendar])
          {
            goto LABEL_8;
          }

          v19 = [v15 calendar];
          v20 = [v19 isNaturalLanguageSuggestedEventCalendar];

          if (v20)
          {
            goto LABEL_23;
          }

          v21 = [v15 suggestionInfo];
          v17 = [v21 uniqueKey];

          if (v17)
          {
            if ([SGDuplicateKey serializationPassesBasicScrutiny:v17])
            {
              v22 = [[SGDuplicateKey alloc] initWithSerialized:v17];
              v18 = v22;
              if (v22)
              {
                v23 = [(SGDuplicateKey *)v22 parentKey];
                v24 = [v23 isEqualToDuplicateKey:v37];

                if (v24)
                {
                  v25 = [v15 eventIdentifier];

                  if (v25)
                  {
                    v32 = [SGCuratedEventKey alloc];
                    v33 = [v15 eventIdentifier];
                    v12 = [(SGCuratedEventKey *)v32 initWithExternalId:v33];

                    goto LABEL_30;
                  }

                  v26 = sgLogHandle();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_debug_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEBUG, "EKEvent exact match with the same duplicate key found, but eventIdentifier is nil.", buf, 2u);
                  }
                }
              }

LABEL_8:

LABEL_22:
              goto LABEL_23;
            }

            v27 = sgLogHandle();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
LABEL_21:

              if (_PASEvaluateLogFaultAndProbCrashCriteria())
              {
                abort();
              }

              goto LABEL_22;
            }

            *buf = 138477827;
            v43 = v17;
            v28 = v27;
            v29 = "Skipping event with dupKeyString that does not pass basic scrutiny: %{private}@";
            v30 = 12;
          }

          else
          {
            v27 = sgLogHandle();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_21;
            }

            *buf = 0;
            v28 = v27;
            v29 = "Skipping event with nonnull suggestionInfo but null suggestionInfo.uniqueKey";
            v30 = 2;
          }

          _os_log_fault_impl(&dword_231E60000, v28, OS_LOG_TYPE_FAULT, v29, buf, v30);
          goto LABEL_21;
        }

LABEL_23:
        v14 = (v14 + 1);
      }

      while (v12 != v14);
      v31 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v12 = v31;
      if (!v31)
      {
LABEL_30:
        v5 = v36;
        break;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

void __289__SGDSuggestManager_realtimeEventsFromEnrichments_origin_participants_store_keepPastEvents_keepPartialEvents_keepEventsFromOldDocuments_keepUnsupportedEventCategoryStatus_keepUnsupportedEventCategoryStatusForTextMessage_keepLLMExtractionForRealtime_keepAttributesForEvents_keepExceptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v16 = *(a1 + 80);
  v13 = *(a1 + 40);
  v5 = *(&v13 + 1);
  v6 = *(a1 + 56);
  v17 = *(a1 + 88);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v8;
  v9 = v3;
  v10 = sgMapAndFilter();
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id __289__SGDSuggestManager_realtimeEventsFromEnrichments_origin_participants_store_keepPastEvents_keepPartialEvents_keepEventsFromOldDocuments_keepUnsupportedEventCategoryStatus_keepUnsupportedEventCategoryStatusForTextMessage_keepLLMExtractionForRealtime_keepAttributesForEvents_keepExceptions___block_invoke_572(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = 0;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v21 = sgEventsLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEFAULT, "Duplicate realtime event", v62, 2u);
      }

      v22 = *(a1 + 40);
      if (v22)
      {
        v23 = [v3 entity];
        v24 = [v23 duplicateKey];
        v25 = [v22 loadEventByDuplicateKey:v24];
        v11 = [v25 convertToEvent:*(a1 + 40) addAttributeSet:*(a1 + 56)];

        v26 = [*(a1 + 40) isEphemeral] ^ 1;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v44 = [v3 entity];
        v45 = [SGStorageEvent storageEventFromEntity:v44];

        v11 = [v45 convertToEventWithOrigin:*(a1 + 48)];

        v26 = 0;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      v46 = MEMORY[0x277D020A8];
      v35 = [v3 duplicateEventKey];
      v47 = [v35 externalId];
      v48 = [v46 realtimeEventForDuplicateEvent:v11 eventIdentifier:v47 harvested:v26];
LABEL_49:
      v5 = v48;

LABEL_53:
      goto LABEL_54;
    }

    if (v4 == 5)
    {
      v33 = sgEventsLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "Near duplicate realtime event", v59, 2u);
      }

      v34 = MEMORY[0x277D020A8];
      v11 = [v3 duplicateEventKey];
      v35 = [v11 externalId];
      v36 = *(a1 + 40);
      if (v36)
      {
        v37 = [v36 isEphemeral] ^ 1;
      }

      else
      {
        v37 = 0;
      }

      v5 = [v34 realtimeEventForNearDuplicateEvent:v35 harvested:v37];
      goto LABEL_53;
    }

    if (v4 != 6)
    {
      goto LABEL_55;
    }

    v13 = sgEventsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 0;
      _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "Realtime event extraction exception", v58, 2u);
    }

    if ([*(a1 + 48) type] != 1)
    {
      v5 = 0;
      goto LABEL_55;
    }

    v14 = MEMORY[0x277D020A8];
    v11 = [*(a1 + 48) externalKey];
    v15 = [v14 realtimeEventForExtractionExceptionWithSourceMessageId:v11];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v27 = sgEventsLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 0;
          _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEFAULT, "Update realtime event", v61, 2u);
        }

        v28 = *(a1 + 40);
        if (v28)
        {
          v29 = [v3 entity];
          v30 = [v29 duplicateKey];
          v31 = [v28 loadEventByDuplicateKey:v30];
          v11 = [v31 convertToEvent:*(a1 + 40) addAttributeSet:*(a1 + 56)];

          v32 = [*(a1 + 40) isEphemeral] ^ 1;
          if (!v11)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v54 = [v3 entity];
          v55 = [SGStorageEvent storageEventFromEntity:v54];

          v11 = [v55 convertToEventWithOrigin:*(a1 + 48)];

          v32 = 0;
          if (!v11)
          {
            goto LABEL_50;
          }
        }

        v56 = MEMORY[0x277D020A8];
        v35 = [v3 duplicateEventKey];
        v47 = [v35 externalId];
        v48 = [v56 realtimeEventUpdateToEvent:v47 withNewValues:v11 harvested:v32];
        goto LABEL_49;
      }

      if (v4 != 3)
      {
        goto LABEL_55;
      }

      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "Cancellation realtime event", buf, 2u);
      }

      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = [v3 entity];
        v9 = [v8 duplicateKey];
        v10 = [v7 loadEventByDuplicateKey:v9];
        v11 = [v10 convertToEvent:*(a1 + 40) addAttributeSet:*(a1 + 56)];

        v12 = [*(a1 + 40) isEphemeral] ^ 1;
        if (!v11)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      v51 = [v3 entity];
      v52 = [SGStorageEvent storageEventFromEntity:v51];

      v11 = [v52 convertToEventWithOrigin:*(a1 + 48)];

      v12 = 0;
      if (v11)
      {
LABEL_46:
        v53 = MEMORY[0x277D020A8];
        v35 = [v3 duplicateEventKey];
        v47 = [v35 externalId];
        v48 = [v53 realtimeEventForCanceledEvent:v11 eventIdentifier:v47 harvested:v12];
        goto LABEL_49;
      }

LABEL_50:
      v5 = 0;
      goto LABEL_54;
    }

    v16 = sgEventsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 0;
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "New realtime event", v63, 2u);
    }

    v17 = [v3 entity];
    v18 = [v17 duplicateKey];
    v19 = [v18 parentKey];
    if ([v19 entityType] == 18)
    {
      v20 = (*(a1 + 32) + 8);
    }

    else
    {
      v20 = (a1 + 40);
    }

    v38 = *v20;

    if (v38)
    {
      v39 = [v3 entity];
      v40 = [v39 duplicateKey];
      v41 = [v38 loadEventByDuplicateKey:v40];
      v11 = [v41 convertToEvent:v38 addAttributeSet:*(a1 + 56)];

      v42 = [*(a1 + 40) isEphemeral];
      v43 = v42 ^ 1u;
      if (!v11)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v49 = [v3 entity];
      v50 = [SGStorageEvent storageEventFromEntity:v49];

      v11 = [v50 convertToEventWithOrigin:*(a1 + 48)];

      v43 = 0;
      if (!v11)
      {
        goto LABEL_50;
      }
    }

    v15 = [MEMORY[0x277D020A8] realtimeEventForNewEvent:v11 harvested:v43];
  }

  v5 = v15;
LABEL_54:

LABEL_55:

  return v5;
}

id __289__SGDSuggestManager_realtimeEventsFromEnrichments_origin_participants_store_keepPastEvents_keepPartialEvents_keepEventsFromOldDocuments_keepUnsupportedEventCategoryStatus_keepUnsupportedEventCategoryStatusForTextMessage_keepLLMExtractionForRealtime_keepAttributesForEvents_keepExceptions___block_invoke_2(uint64_t a1, void *a2)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) eventsWithSameOpaqueKeyAsPseudoEvent:v3 harvestStore:*(*(a1 + 40) + 8)];
  if (![v4 count])
  {
    v5 = [*(a1 + 32) eventsWithSameAlternativeOpaqueKeyAsPseudoEvent:v3 harvestStore:*(*(a1 + 40) + 8)];
    if ([v5 count])
    {
      if ([v5 count] >= 2)
      {
        v6 = sgLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "More than one event found using alternative keys", buf, 2u);
        }
      }

      v7 = [v3 duplicateKey];
      v8 = [v7 pseudoEventKey];
      v9 = [v8 isDropoff];

      if ((v9 & 1) == 0)
      {
        v10 = [v5 firstObject];
        v11 = [v10 suggestionInfo];
        v12 = [v11 opaqueKey];

        if (!v12)
        {
          v83 = [MEMORY[0x277CCA890] currentHandler];
          [v83 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"SGDSuggestManager.m" lineNumber:1653 description:{@"Invalid parameter not satisfying: %@", @"foundEvent.suggestionInfo.opaqueKey"}];
        }

        v13 = [SGPseudoEventKey alloc];
        v14 = [v10 suggestionInfo];
        v15 = [v14 opaqueKey];
        v16 = [(SGPseudoEventKey *)v13 initWithSerialized:v15];

        if (![(SGPseudoEventKey *)v16 isDropoff])
        {
          v85[0] = v10;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];

          v4 = v17;
        }
      }
    }
  }

  if (![v4 count])
  {
    v18 = *(a1 + 32);
    v19 = [v3 duplicateKey];
    v20 = [v19 pseudoEventKey];
    v21 = [v20 groupId];
    v22 = [v18 eventWithExternalID:v21];

    if (v22)
    {
      v23 = [v22 suggestionInfo];

      if (!v23)
      {
        v32 = [v22 eventIdentifier];

        if (v32)
        {
          v33 = [SGCuratedEventKey alloc];
          v34 = [v22 eventIdentifier];
          v35 = [(SGCuratedEventKey *)v33 initWithExternalId:v34];

          v26 = [[SGRealtimeEventResponse alloc] initDuplicateOfCuratedEvent:v35 withEntity:v3];
        }

        else
        {
          v35 = sgLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v35, OS_LOG_TYPE_DEBUG, "EKEvent with the same externalIdentifier found, but eventIdentifier is nil.", buf, 2u);
          }

          v26 = 0;
        }

        goto LABEL_21;
      }
    }
  }

  v24 = [*(a1 + 40) curatedEventKeyForExactMatchOfPseudoEvent:v3 candidates:v4];
  if (v24)
  {
    v22 = v24;
    v25 = [[SGRealtimeEventResponse alloc] initDuplicateOfCuratedEvent:v24 withEntity:v3];
LABEL_20:
    v26 = v25;
LABEL_21:

    goto LABEL_22;
  }

  if ([v4 count])
  {
    v29 = *(a1 + 48);
    if (v29)
    {
      v30 = [v3 duplicateKey];
      v31 = [v29 loadEventByDuplicateKey:v30];
      v22 = [v31 convertToEvent:*(a1 + 48)];
    }

    else
    {
      v30 = [SGStorageEvent storageEventFromEntity:v3];
      v22 = [v30 convertToEventWithOrigin:*(a1 + 56)];
    }

    if ([v4 count] >= 2)
    {
      v36 = sgLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v36, OS_LOG_TYPE_DEFAULT, "More than one EKEvent with the same opaque key detected.", buf, 2u);
      }
    }

    v37 = [v4 firstObject];
    v38 = [v37 eventIdentifier];

    if (v38)
    {
      v39 = [SGCuratedEventKey alloc];
      v40 = [v37 eventIdentifier];
      v41 = [(SGCuratedEventKey *)v39 initWithExternalId:v40];

      if ([v3 isCancelled])
      {
        if (v41)
        {
          v42 = [[SGRealtimeEventResponse alloc] initCancellationOfCuratedEvent:v41 entity:v3];
          goto LABEL_42;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v43 = sgLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEBUG, "EKEvent with the same opaque key found, but eventIdentifier is nil.", buf, 2u);
      }

      if ([v3 isCancelled])
      {
LABEL_46:
        v41 = sgLogHandle();
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_47;
        }

        *buf = 0;
        v73 = "EKEvent for cancellation found, but eventIdentifier is nil.";
        goto LABEL_97;
      }

      v41 = 0;
    }

    v44 = [v37 calendar];
    if ([v44 isSuggestedEventCalendar])
    {
    }

    else
    {
      v45 = [v37 calendar];
      v46 = [v45 isNaturalLanguageSuggestedEventCalendar];

      if (!v46)
      {
        if (v41)
        {
          if ([v37 status] != 3)
          {
            [v3 creationTimestamp];
            if ([v37 sg_isCuratedEventFromSuggestionNewerThan:?])
            {
              v80 = sgEventsLogHandle();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_231E60000, v80, OS_LOG_TYPE_DEBUG, "Newer EKEvent from Suggestions has been found. Showing the updated event insead of this one.", buf, 2u);
              }

              v81 = [SGRealtimeEventResponse alloc];
            }

            else
            {
              v82 = [*(a1 + 40) isSGEvent:v22 duplicateOfEKEvent:v37];
              v81 = [SGRealtimeEventResponse alloc];
              if (!v82)
              {
                v42 = [(SGRealtimeEventResponse *)v81 initUpdatedEventWithEntity:v3 curatedEventKey:v41];
                goto LABEL_42;
              }
            }

            v42 = [(SGRealtimeEventResponse *)v81 initDuplicateOfCuratedEvent:v41 withEntity:v3];
LABEL_42:
            v26 = v42;
LABEL_48:

            goto LABEL_21;
          }

          v53 = sgEventsLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v53, OS_LOG_TYPE_DEBUG, "Suppressing update or view duplicate of EKEvent because event status is canceled.", buf, 2u);
          }

LABEL_47:
          v26 = 0;
          goto LABEL_48;
        }

        v41 = sgEventsLogHandle();
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_47;
        }

        *buf = 0;
        v73 = "Suppressing update or view duplicate of EKEvent because eventIdentifier is nil.";
LABEL_97:
        _os_log_debug_impl(&dword_231E60000, v41, OS_LOG_TYPE_DEBUG, v73, buf, 2u);
        goto LABEL_47;
      }
    }

    if ([*(a1 + 40) isSGEvent:v22 duplicateOfEKEvent:v37])
    {
      v47 = [v37 suggestionInfo];
      v48 = [v47 uniqueKey];

      if (v48)
      {
        v49 = [v37 suggestionInfo];
        v50 = [v49 uniqueKey];

        if ([SGDuplicateKey serializationPassesBasicScrutiny:v50])
        {
          v51 = [[SGDuplicateKey alloc] initWithSerialized:v50];
          v52 = [*(*(a1 + 40) + 8) loadEntityByKey:v51];
          v26 = [[SGRealtimeEventResponse alloc] initNewEventWithEntity:v52];

          goto LABEL_48;
        }
      }
    }

    v22 = v41;
LABEL_68:
    v54 = *(a1 + 32);
    v55 = [*(a1 + 56) title];
    v56 = [v54 sg_fetchEKEventsForPseudoNLEvent:v3 messageSubject:v55 messageParticipants:*(a1 + 64)];

    if (!v56)
    {
      v57 = [*(a1 + 32) sg_fetchEKEventsForPseudoEventBySimilarTitleAndStartTime:v3];
      if (!v57)
      {
        v25 = [[SGRealtimeEventResponse alloc] initNewEventWithEntity:v3];
        goto LABEL_20;
      }

      v56 = v57;
    }

    if ([v56 count] == 1)
    {
      v58 = [v3 tags];
      v59 = [MEMORY[0x277D01FA0] naturalLanguageEvent];
      v60 = [v58 containsObject:v59];

      if (v60)
      {
        v61 = [v3 timeRange];
        v62 = [v61 absoluteRange];
        [v62 start];
        v64 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v63];

        v65 = [v56 objectAtIndexedSubscript:0];
        v66 = [v65 startDate];
        v67 = [v66 isEqualToDate:v64];

        if ((v67 & 1) == 0)
        {
          v70 = sgLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v71 = "Suppressing NL event because it looks like a near-duplicate of a curated event.";
            goto LABEL_100;
          }

LABEL_82:

          goto LABEL_89;
        }

        v68 = [v56 objectAtIndexedSubscript:0];
        v69 = [v68 hasRecurrenceRules];

        if (v69)
        {
          v70 = sgLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v71 = "Suppressing NL event because it looks like a duplicate of a recurring curated event.";
LABEL_100:
            _os_log_debug_impl(&dword_231E60000, v70, OS_LOG_TYPE_DEBUG, v71, buf, 2u);
            goto LABEL_82;
          }

          goto LABEL_82;
        }
      }

      v74 = [v56 objectAtIndexedSubscript:0];
      v75 = [v74 eventIdentifier];

      if (v75)
      {
        v76 = [SGCuratedEventKey alloc];
        v77 = [v56 objectAtIndexedSubscript:0];
        v78 = [v77 eventIdentifier];
        v79 = [(SGCuratedEventKey *)v76 initWithExternalId:v78];

        v26 = [[SGRealtimeEventResponse alloc] initDuplicateOfCuratedEvent:v79 withEntity:v3];
        v22 = v79;
        goto LABEL_21;
      }

      v64 = sgLogHandle();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
LABEL_89:

        v26 = 0;
        goto LABEL_21;
      }

      *buf = 0;
      v72 = "Suppressing NL event because eventIdentifier is nil.";
    }

    else
    {
      v64 = sgLogHandle();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_89;
      }

      *buf = 0;
      v72 = "Suppressing event because we found more than 1 duplicate.";
    }

    _os_log_debug_impl(&dword_231E60000, v64, OS_LOG_TYPE_DEBUG, v72, buf, 2u);
    goto LABEL_89;
  }

  v22 = 0;
  if (![v3 isCancelled])
  {
    goto LABEL_68;
  }

  v26 = 0;
  if (*(a1 + 80) == 1)
  {
    goto LABEL_68;
  }

LABEL_22:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)realtimeEventsFromEntity:(id)a3 message:(id)a4 enrichments:(id)a5 store:(id)a6 keepPastEvents:(BOOL)a7 keepPartialEvents:(BOOL)a8 keepEventsFromOldDocuments:(BOOL)a9 keepUnsupportedEventCategoryStatus:(BOOL)a10 keepUnsupportedEventCategoryStatusForTextMessage:(BOOL)a11 keepLLMExtractionForRealtime:(BOOL)a12 keepAttributesForEvents:(BOOL)a13
{
  v38 = a8;
  v37 = a7;
  v16 = a3;
  v17 = a4;
  v35 = a6;
  v34 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    v31 = [v16 hasExtractionException];
  }

  else
  {
    v31 = 0;
  }

  v33 = v17;
  if (v17)
  {
    v32 = [MEMORY[0x277CC5A40] sg_fetchMessageParticipants:v17];
  }

  else
  {
    v32 = 0;
  }

  v18 = MEMORY[0x277D02070];
  v19 = [v16 duplicateKey];
  v20 = [v18 originTypeForEntityType:{objc_msgSend(v19, "entityType")}];
  v21 = [v16 duplicateKey];
  v22 = [v21 messageKey];
  v23 = [v22 source];
  v24 = [v16 duplicateKey];
  v25 = [v24 messageKey];
  v26 = [v25 uniqueIdentifier];
  v27 = [v18 originWithType:v20 sourceKey:v23 externalKey:v26 fromForwardedMessage:0];

  [v27 addDetailsFromOriginatingGenericEntity:v16];
  BYTE5(v30) = v31;
  BYTE4(v30) = a13;
  BYTE3(v30) = a12;
  BYTE2(v30) = a11;
  LOWORD(v30) = __PAIR16__(a10, a9);
  v28 = [SGDSuggestManager realtimeEventsFromEnrichments:"realtimeEventsFromEnrichments:origin:participants:store:keepPastEvents:keepPartialEvents:keepEventsFromOldDocuments:keepUnsupportedEventCategoryStatus:keepUnsupportedEventCategoryStatusForTextMessage:keepLLMExtractionForRealtime:keepAttributesForEvents:keepExceptions:" origin:v34 participants:v27 store:v32 keepPastEvents:v35 keepPartialEvents:v37 keepEventsFromOldDocuments:v38 keepUnsupportedEventCategoryStatus:v30 keepUnsupportedEventCategoryStatusForTextMessage:? keepLLMExtractionForRealtime:? keepAttributesForEvents:? keepExceptions:?];

  return v28;
}

- (id)realtimeEventsFromEntity:(id)a3 enrichments:(id)a4 store:(id)a5
{
  v8 = MEMORY[0x277D02098];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  BYTE4(v14) = 0;
  LODWORD(v14) = [v8 showPastEvents];
  v12 = -[SGDSuggestManager realtimeEventsFromEntity:message:enrichments:store:keepPastEvents:keepPartialEvents:keepEventsFromOldDocuments:keepUnsupportedEventCategoryStatus:keepUnsupportedEventCategoryStatusForTextMessage:keepLLMExtractionForRealtime:keepAttributesForEvents:](self, "realtimeEventsFromEntity:message:enrichments:store:keepPastEvents:keepPartialEvents:keepEventsFromOldDocuments:keepUnsupportedEventCategoryStatus:keepUnsupportedEventCategoryStatusForTextMessage:keepLLMExtractionForRealtime:keepAttributesForEvents:", v11, 0, v10, v9, [MEMORY[0x277D02098] showPastEvents], 0, v14);

  return v12;
}

- (void)bumptTTLForNLEvent:(id)a3
{
  v4 = a3;
  if ([v4 isNaturalLanguageEvent])
  {
    v5 = self->_ekStoreProvider;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __40__SGDSuggestManager_bumptTTLForNLEvent___block_invoke;
    v11 = &unk_278955830;
    v12 = v5;
    v13 = v4;
    v6 = v5;
    v7 = MEMORY[0x2383809F0](&v8);
    if (bumptTTLForNLEvent___pasOnceToken56 != -1)
    {
      dispatch_once(&bumptTTLForNLEvent___pasOnceToken56, &__block_literal_global_560);
    }

    [MEMORY[0x277D425A0] runAsyncOnQueue:bumptTTLForNLEvent___pasExprOnceResult afterDelaySeconds:v7 block:{2.0, v8, v9, v10, v11}];
  }
}

void __40__SGDSuggestManager_bumptTTLForNLEvent___block_invoke(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "NaturalLanguageEvent Found: Bumping TTL", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[1];
  }

  v4 = v3[2];
  v5 = v3;
  v6 = v4();
  [v6 sg_bumpTimeToLiveForZeroKeywordNLEventOnInteraction:*(a1 + 40)];
}

void __40__SGDSuggestManager_bumptTTLForNLEvent___block_invoke_558()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.SGEKCalendarWrite" qosClass:17];
  v2 = bumptTTLForNLEvent___pasExprOnceResult;
  bumptTTLForNLEvent___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)cachedResultForKey:(id)a3 generateResult:(id)a4 validateResults:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 mutableCopy];
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = +[SGAsset asset];
  v13 = [v11 initWithFormat:@"%lu", objc_msgSend(v12, "assetVersion")];
  v14 = [v13 dataUsingEncoding:1];
  [v10 appendData:v14];

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4008;
  v46 = __Block_byref_object_dispose__4009;
  v47 = 0;
  v15 = +[SGDSuggestManager requestCache];
  v16 = [v15 resultIfAvailable];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __71__SGDSuggestManager_cachedResultForKey_generateResult_validateResults___block_invoke;
  v39[3] = &unk_278951000;
  v41 = &v42;
  v17 = v10;
  v40 = v17;
  [v16 runWithLockAcquired:v39];

  if (v43[5])
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v33 = v43[5];
      *buf = 138412290;
      *v49 = v33;
      _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "Suggestions Cache hit: %@", buf, 0xCu);
    }

    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_INFO, "Suggestions Cache hit", buf, 2u);
    }
  }

  else
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v35 = v43[5];
      *buf = 138412290;
      *v49 = v35;
      _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "Suggestions Cache miss: %@", buf, 0xCu);
    }

    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_INFO, "Suggestions Cache miss", buf, 2u);
    }

    v22 = v8[2](v8);
    v23 = [v22 copy];
    v24 = v43[5];
    v43[5] = v23;

    v25 = v43[5];
    if (!v25)
    {
      v29 = 0;
      goto LABEL_17;
    }

    objc_setAssociatedObject(v25, &kAssociatedCacheObjectKey, v17, 1);
    v26 = +[SGDSuggestManager requestCache];
    v27 = [v26 result];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __71__SGDSuggestManager_cachedResultForKey_generateResult_validateResults___block_invoke_554;
    v36[3] = &unk_278951000;
    v37 = v17;
    v38 = &v42;
    [v27 runWithLockAcquired:v36];

    v19 = v37;
  }

  v28 = [v43[5] suggestionsCount];
  v29 = v9[2](v9, v43[5]);
  if ([v29 suggestionsCount] != v28)
  {
    v30 = sgLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v29 suggestionsCount];
      *buf = 67109376;
      *v49 = v28;
      *&v49[4] = 1024;
      *&v49[6] = v34;
      _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Went from %d to %d suggestions after filtering out already acted-on suggestions", buf, 0xEu);
    }
  }

LABEL_17:

  _Block_object_dispose(&v42, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __71__SGDSuggestManager_cachedResultForKey_generateResult_validateResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __71__SGDSuggestManager_cachedResultForKey_generateResult_validateResults___block_invoke_554(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] >= 0xA)
  {
    [v3 removeAllObjects];
  }

  [v3 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
}

- (void)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  +[SGPatterns useAllLanguagesAtOnce:](SGPatterns, "useAllLanguagesAtOnce:", [v11 isEqualToString:@"suggest_tool"]);
  v14 = [SGSimpleMailMessage parseRfc822:v12];
  v13 = [v14 htmlBody];
  [(SGDSuggestManager *)self suggestionsFromEmailContent:v13 headers:v12 source:v11 options:a5 withCompletion:v10];
}

- (void)allDeliveriesWithLimit:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SuggestionsManager getting all Deliveries", v11, 2u);
  }

  v8 = MEMORY[0x277D02138];
  v9 = [(SGSqlEntityStore *)self->_harvestStore allDeliveriesWithLimit:a3];
  v10 = [v8 responseWith:v9];
  v6[2](v6, v10);
}

- (void)logUserCreatedReminderTitle:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sgRemindersLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SuggestionsManager logging user created reminder title", v9, 2u);
  }

  [SGDPLogging logUserCreatedReminderTitle:v6];
  v8 = objc_opt_new();
  v5[2](v5, v8);
}

- (void)reminderTitleForContent:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sgRemindersLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SuggestionsManager getting reminder title for content", v12, 2u);
  }

  v8 = MEMORY[0x277D02138];
  v9 = +[SGReminderDissector sharedInstance];
  v10 = [v9 reminderTitleForContent:v6];

  v11 = [v8 responseWith:v10];
  v5[2](v5, v11);
}

- (void)allRemindersLimitedTo:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = sgRemindersLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SuggestionsManager getting all Reminders", v11, 2u);
  }

  v8 = MEMORY[0x277D02138];
  v9 = [(SGSqlEntityStore *)self->_harvestStore allRemindersLimitedTo:a3];
  v10 = [v8 responseWith:v9];
  v6[2](v6, v10);
}

- (void)reminderAlarmTriggeredForRecordId:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgRemindersLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDSuggestManager-alarmTriggeredForRecordId: %@", buf, 0xCu);
  }

  harvestStore = self->_harvestStore;
  v14 = 0;
  [(SGSqlEntityStore *)harvestStore reminderAlarmTriggeredForRecordId:v6 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = [MEMORY[0x277D02130] responseWithError:v10];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v7[2](v7, v11);

  v13 = *MEMORY[0x277D85DE8];
}

- (unsigned)interfaceForRealtimeReminder:(id)a3
{
  v3 = [a3 origin];
  v4 = [v3 type];

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (void)_rejectReminderByRecordId:(id)a3 completion:(id)a4
{
  harvestStore = self->_harvestStore;
  v10 = 0;
  v6 = a4;
  [(SGSqlEntityStore *)harvestStore rejectReminderByRecordId:a3 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = [MEMORY[0x277D02130] responseWithError:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v6[2](v6, v8);
}

- (void)rejectRealtimeReminder:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sgRemindersLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-rejectRealtimeReminer", buf, 2u);
  }

  v10 = [v7 uniqueKey];
  if ([SGDuplicateKey serializationPassesBasicScrutiny:v10])
  {
    harvestStore = self->_harvestStore;
    v12 = [SGDuplicateKey alloc];
    v13 = [v7 uniqueKey];
    v14 = [(SGDuplicateKey *)v12 initWithSerialized:v13];
    v15 = [(SGSqlEntityStore *)harvestStore loadReminderByKey:v14];

    if (v15)
    {
      v16 = [v15 recordId];
      [(SGDSuggestManager *)self _rejectReminderByRecordId:v16 completion:v8];

      v17 = [v15 recordId];

      if (!v17)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1301 description:{@"Invalid parameter not satisfying: %@", @"storageReminder.recordId"}];
      }

      v18 = [v15 recordId];
      [(SGDSuggestManager *)self logSuggestionInteractionForRecordId:v18 interface:[(SGDSuggestManager *)self interfaceForRealtimeReminder:v7] actionType:7];
    }

    else
    {
      v21 = sgRemindersLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager - Rejection: Unable to retrieve reminder from the harvest store. Computing and storing hashes only.", v24, 2u);
      }

      v22 = +[SGSuggestHistory sharedSuggestHistory];
      [v22 rejectReminder:v7];

      v18 = objc_opt_new();
      v8[2](v8, v18);
    }

    v20 = +[SGRTCLogging defaultLogger];
    [v20 logReminderInteractionFromReminder:v7 interface:-[SGDSuggestManager interfaceForRealtimeReminder:](self actionType:{"interfaceForRealtimeReminder:", v7), 7}];
  }

  else
  {
    v19 = MEMORY[0x277D02130];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:0];
    v20 = [v19 responseWithError:v15];
    v8[2](v8, v20);
  }
}

- (void)rejectReminderByRecordId:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = sgRemindersLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-rejectReminderByRecordId: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1281 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  [(SGDSuggestManager *)self logSuggestionInteractionForRecordId:v7 interface:21 actionType:7];
  [(SGDSuggestManager *)self _rejectReminderByRecordId:v7 completion:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_confirmReminderByRecordId:(id)a3 completion:(id)a4
{
  harvestStore = self->_harvestStore;
  v10 = 0;
  v6 = a4;
  [(SGSqlEntityStore *)harvestStore confirmReminderByRecordId:a3 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = [MEMORY[0x277D02130] responseWithError:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v6[2](v6, v8);
}

- (void)confirmRealtimeReminder:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sgRemindersLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-confirmRealtimeReminder", buf, 2u);
  }

  v10 = [v7 uniqueKey];
  if (v10 && [SGDuplicateKey serializationPassesBasicScrutiny:v10])
  {
    harvestStore = self->_harvestStore;
    v12 = [[SGDuplicateKey alloc] initWithSerialized:v10];
    v13 = [(SGSqlEntityStore *)harvestStore loadReminderByKey:v12];

    if (v13)
    {
      v14 = [v13 recordId];
      [(SGDSuggestManager *)self _confirmReminderByRecordId:v14 completion:v8];

      v15 = [v13 recordId];

      if (!v15)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1254 description:{@"Invalid parameter not satisfying: %@", @"storageReminder.recordId"}];
      }

      v16 = [v13 recordId];
      [(SGDSuggestManager *)self logSuggestionInteractionForRecordId:v16 interface:[(SGDSuggestManager *)self interfaceForRealtimeReminder:v7] actionType:6];
    }

    else
    {
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager - Confirmation: Unable to retrieve reminder from the harvest store. Computing and storing hashes only.", v22, 2u);
      }

      v20 = +[SGSuggestHistory sharedSuggestHistory];
      [v20 confirmReminder:v7];

      v16 = objc_opt_new();
      v8[2](v8, v16);
    }

    v18 = +[SGRTCLogging defaultLogger];
    [v18 logReminderInteractionFromReminder:v7 interface:-[SGDSuggestManager interfaceForRealtimeReminder:](self actionType:{"interfaceForRealtimeReminder:", v7), 6}];
  }

  else
  {
    v17 = MEMORY[0x277D02130];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:0];
    v18 = [v17 responseWithError:v13];
    v8[2](v8, v18);
  }
}

- (void)confirmReminderByRecordId:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = sgRemindersLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGDSuggestManager-confirmReminderByRecordId: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1236 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  [(SGDSuggestManager *)self logSuggestionInteractionForRecordId:v7 interface:21 actionType:6];
  [(SGDSuggestManager *)self _confirmReminderByRecordId:v7 completion:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)allEventsLimitedTo:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v9 = [v6 dateWithTimeIntervalSince1970:0.0];
  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  [(SGDSuggestManager *)self eventsStartingAt:v9 endingAt:v8 limitTo:a3 options:2 withCompletion:v7];
}

- (void)eventFromRecordId:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "eventFromRecordId: %@", &v15, 0xCu);
  }

  v9 = [(SGSqlEntityStore *)self->_harvestStore loadEventByRecordId:v6];
  v10 = v9;
  v11 = MEMORY[0x277D02138];
  if (v9)
  {
    v12 = [v9 convertToEvent:self->_harvestStore];
    [v11 responseWith:v12];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:&unk_28474B260];
    [v11 responseWithError:v12];
  }
  v13 = ;
  v7[2](v7, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_mapToPseudoEvents:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) convertToEvent:{self->_harvestStore, v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

void __68__SGDSuggestManager_allContactsWithSnippets_limitTo_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if (![v4 significance])
  {
    if ([*(*(a1 + 40) + 8) contactIsSignificantOrSignificanceIsDisabled:v4])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [v4 setSignificance:v3];
  }
}

- (void)contactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1153 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v9;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "SGDSuggestManager-contactMatchesWithMessagingPrefix:%@ limitTo:%lu", buf, 0x16u);
  }

  v13 = MEMORY[0x277D02138];
  v14 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesWithMessagingPrefix:v9 limitTo:a4];
  v15 = [v13 responseWith:v14];
  (v11)[2](v11, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)contactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1145 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1146 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v9;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "SGDSuggestManager-contactMatchesWithFullTextSearch:%@ limitTo:%lu", buf, 0x16u);
  }

  v13 = MEMORY[0x277D02138];
  v14 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesWithFullTextSearch:v9 limitTo:a4];
  v15 = [v13 responseWith:v14];
  (v11)[2](v11, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (id)storageContactFromRecordId:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "storageContactFromRecordId: %@", &v9, 0xCu);
  }

  v6 = [(SGSqlEntityStore *)self->_harvestStore storageContactByRecordId:v4 withSnippets:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)cnContactMatchesForRecordIds:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v6 count];
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "cnContactMatchesForRecordIds (%lu ids)", &buf, 0xCu);
  }

  v14[2] = 0;
  v14[0] = @"cnContactMatchesForRecordIds";
  v14[1] = mach_absolute_time();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4008;
  v18 = __Block_byref_object_dispose__4009;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SGDSuggestManager_cnContactMatchesForRecordIds_withCompletion___block_invoke;
  v13[3] = &unk_27894B7B0;
  v13[4] = self;
  v13[5] = &buf;
  v9 = [v6 _pas_mappedArrayWithTransform:v13];
  v10 = v9;
  if (!*(*(&buf + 1) + 40))
  {
    goto LABEL_7;
  }

  if (!*(*(&buf + 1) + 40))
  {
    v10 = MEMORY[0x277CBEBF8];
LABEL_7:
    v11 = [MEMORY[0x277D02138] responseWith:v10];
    v7[2](v7, v11);
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277D02138] responseWithError:?];
  v7[2](v7, v11);
  v10 = MEMORY[0x277CBEBF8];
LABEL_8:

  _Block_object_dispose(&buf, 8);
  SGRecordMeasurementState(v14);

  v12 = *MEMORY[0x277D85DE8];
}

id __65__SGDSuggestManager_cnContactMatchesForRecordIds_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v4 = [*(*(a1 + 32) + 8) cnContactMatchesForRecordId:v3 found:&v31];
  v5 = v4;
  if (v31 == 1)
  {
    v6 = v4;
    goto LABEL_23;
  }

  v7 = [*(*(a1 + 32) + 8) suggestContactByRecordId:v3 withSnippets:0 filterConfirmRejectDetails:0];
  if (v7)
  {
    v8 = *(*(a1 + 32) + 64);
    v30 = 0;
    v9 = [SGCuratedContactMatcher curatedContactsFromContactStore:v8 matchingPseudoContact:v7 error:&v30];
    v10 = v30;
    v11 = v10;
    if (v10)
    {
      v12 = *(*(a1 + 40) + 8);
      if (!*(v12 + 40))
      {
        v13 = v10;
        v14 = *(v12 + 40);
        *(v12 + 40) = v13;
LABEL_20:
      }
    }

    else if (v9)
    {
      v15 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = v9;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            if (v21)
            {
              v22 = [v21 identifier];
              [v15 addObject:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v18);
      }

      if (![v16 count])
      {
        [*(*(a1 + 32) + 8) writeCNContactMissForRecordId:v3];
      }

      v14 = v5;
      v5 = v15;
      v11 = 0;
      v9 = v25;
      goto LABEL_20;
    }
  }

  v6 = v5;

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)cnContactMatchesForRecordId:(id)a3 withCompletion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v16[0] = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [v8 arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SGDSuggestManager_cnContactMatchesForRecordId_withCompletion___block_invoke;
  v13[3] = &unk_27894B788;
  v14 = v7;
  v15 = a2;
  v13[4] = self;
  v11 = v7;
  [(SGDSuggestManager *)self cnContactMatchesForRecordIds:v10 withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __64__SGDSuggestManager_cnContactMatchesForRecordId_withCompletion___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  v3 = [v10 response1];
  if ([v3 count] != 1)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"SGDSuggestManager.m" lineNumber:1076 description:@"Unexpected number of matches"];
  }

  v4 = [v10 error];

  v5 = a1[5];
  v6 = MEMORY[0x277D02138];
  if (v4)
  {
    v7 = [v10 error];
    [v6 responseWithError:v7];
  }

  else
  {
    v7 = [v3 objectAtIndexedSubscript:0];
    [v6 responseWith:v7];
  }
  v8 = ;
  (*(v5 + 16))(v5, v8);
}

- (void)contactFromRecordId:(id)a3 withCompletion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "contactFromRecordId: %@", &v12, 0xCu);
  }

  v9 = [(SGSqlEntityStore *)self->_harvestStore suggestContactByRecordId:v6];
  v10 = [MEMORY[0x277D02138] responseWith:v9];
  v7[2](v7, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)emailAddressIsSignificant:(id)a3 withCompletion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1053 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1054 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "SGDSuggestManager-emailAddressIsSignificant:%@", buf, 0xCu);
  }

  v11 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:0];
  v12 = MEMORY[0x277D01F90];
  v13 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
  v14 = [v12 emailAddress:v7 label:@"none" extractionInfo:v13 withRecordId:v11];

  v15 = MEMORY[0x277D01F60];
  v24 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v17 = [v15 contactWithId:v11 name:0 emailAddresses:v16 phones:MEMORY[0x277CBEBF8] postalAddresses:MEMORY[0x277CBEBF8] socialProfiles:MEMORY[0x277CBEBF8]];

  v18 = MEMORY[0x277D02138];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[SGSqlEntityStore contactIsSignificantOrSignificanceIsDisabled:](self->_harvestStore, "contactIsSignificantOrSignificanceIsDisabled:", v17)}];
  v20 = [v18 responseWith:v19];
  (v9)[2](v9, v20);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1016 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifiers"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v33 = v10;
  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v51 = [v8 count];
    _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "contactsFromContactIdentifiers (%lu ids)", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v42 = *v45;
    v41 = *MEMORY[0x277CBD000];
    v40 = *MEMORY[0x277CBD058];
    v39 = *MEMORY[0x277CBCFF8];
    v38 = *MEMORY[0x277CBCFC0];
    v37 = *MEMORY[0x277CBD098];
    v36 = *MEMORY[0x277CBD0C8];
    v16 = *MEMORY[0x277CBD138];
    v17 = *MEMORY[0x277CBCF90];
    obj = v13;
    while (2)
    {
      v18 = 0;
      do
      {
        v19 = v12;
        v20 = self;
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v44 + 1) + 8 * v18);
        v43 = 0;
        v22 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
        v48[0] = v22;
        v48[1] = v41;
        v48[2] = v40;
        v48[3] = v39;
        v48[4] = v38;
        v48[5] = v37;
        v48[6] = v36;
        v48[7] = v16;
        v48[8] = v17;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:9];
        v24 = [SGContactsInterface unifiedContactWithIdentifier:v21 keysToFetch:v23 usingContactStore:v20->_contactStore error:&v43];

        if (!v24)
        {
          v12 = v19;
          if (v43)
          {
            v28 = sgLogHandle();
            v27 = v33;
            v13 = obj;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v51 = v43;
              _os_log_error_impl(&dword_231E60000, v28, OS_LOG_TYPE_ERROR, "Error from CNContactStore contactWithIdentifier: %@", buf, 0xCu);
            }

            v29 = [MEMORY[0x277D02138] responseWithError:v43];
          }

          else
          {
            v29 = [MEMORY[0x277D02138] responseWith:MEMORY[0x277CBEBF8]];
            v27 = v33;
            v13 = obj;
          }

          (v27)[2](v27, v29);

          v26 = v13;
          goto LABEL_20;
        }

        v25 = [(SGSqlEntityStore *)v20->_harvestStore suggestContactMatchesWithContact:v24 limitTo:a4];
        v12 = v19;
        [v19 addObject:v25];

        ++v18;
        self = v20;
      }

      while (v15 != v18);
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v26 = [MEMORY[0x277D02138] responseWith:v12];
  v27 = v33;
  (*(v33 + 2))(v33, v26);
LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:984 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:985 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "contactsFromContactIdentifier: %@", buf, 0xCu);
  }

  v25 = 0;
  v13 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v14 = *MEMORY[0x277CBD000];
  v26[0] = v13;
  v26[1] = v14;
  v15 = *MEMORY[0x277CBCFF8];
  v26[2] = *MEMORY[0x277CBD058];
  v26[3] = v15;
  v16 = *MEMORY[0x277CBD098];
  v26[4] = *MEMORY[0x277CBCFC0];
  v26[5] = v16;
  v17 = *MEMORY[0x277CBD138];
  v26[6] = *MEMORY[0x277CBD0C8];
  v26[7] = v17;
  v26[8] = *MEMORY[0x277CBCF90];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:9];
  v19 = [SGContactsInterface unifiedContactWithIdentifier:v9 keysToFetch:v18 usingContactStore:self->_contactStore error:&v25];

  if (v19)
  {
    [(SGDSuggestManager *)self contactMatchesWithContact:v19 limitTo:a4 withCompletion:v11];
  }

  else
  {
    if (v25)
    {
      [MEMORY[0x277D02138] responseWithError:?];
    }

    else
    {
      [MEMORY[0x277D02138] responseWith:MEMORY[0x277CBEBF8]];
    }
    v20 = ;
    (v11)[2](v11, v20);
  }

  if (v25)
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v25;
      _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "Error from CNContactStore contactWithIdentifier: %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:976 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager.m" lineNumber:977 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "contactsFromContact: %@", buf, 0xCu);
  }

  v13 = MEMORY[0x277D02138];
  v14 = [(SGSqlEntityStore *)self->_harvestStore suggestContactMatchesWithContact:v9 limitTo:a4];
  v15 = [v13 responseWith:v14];
  (v11)[2](v11, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)isEnabledWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D02138];
  v5 = a3;
  v6 = [v4 responseWith:MEMORY[0x277CBEC38]];
  (*(a3 + 2))(v5, v6);
}

- (void)clearCachesFully:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "clearCachesFully: %i", v9, 8u);
  }

  +[SGDSuggestManager clearRequestCache];
  if (v4)
  {
    +[SGPatterns clearAllRegexCaches];
    _PASSimpleICUClearCache();
    +[SGSqlEntityStore deletePreparedSqlStoreInMemory];
    SGDataNormalizationClearCaches();
    [MEMORY[0x277D042E8] resetSharedCachesAndModels];
  }

  if (v5)
  {
    v7 = objc_opt_new();
    v5[2](v5, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareForRealtimeExtraction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current - *&prepareForRealtimeExtraction__lastWarmTime;
  v7 = sgLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6 <= 300.0)
  {
    if (v8)
    {
      *buf = 134217984;
      v16 = Current - *&prepareForRealtimeExtraction__lastWarmTime;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Suggestions is already warmed up (as of %0.1f seconds ago)", buf, 0xCu);
    }

    v10 = objc_opt_new();
    v4[2](v4, v10);
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Warming up suggestions...", buf, 2u);
    }

    [SGDPowerLog logPrewarmWithLastPrewarmTime:*&prepareForRealtimeExtraction__lastWarmTime];
    prepareForRealtimeExtraction__lastWarmTime = *&Current;
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SGDSuggestManager_prepareForRealtimeExtraction___block_invoke;
    block[3] = &unk_27894BA90;
    block[4] = self;
    v14 = Current;
    v13 = v4;
    dispatch_async(v9, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __50__SGDSuggestManager_prepareForRealtimeExtraction___block_invoke(uint64_t a1)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = @"htmlBody";
  v18[1] = @"body";
  v19[0] = @"My phone is 515-555-5555. My address is 1234 Hey Street.";
  v19[1] = @"My phone is 515-555-5555. My address is 1234 Hey Street.";
  v18[2] = @"from";
  v18[3] = @"to";
  v19[2] = @"Warm Up <warm@up.com>";
  v19[3] = &unk_28474A420;
  v19[4] = @"Warm up! Awaken!";
  v18[4] = @"subject";
  v18[5] = @"date";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*&prepareForRealtimeExtraction__lastWarmTime];
  v19[5] = v2;
  v19[6] = @"<hey@example.com>";
  v18[6] = @"messageId";
  v18[7] = @"sourceId";
  v19[7] = @"warmUpSuggestions";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];
  v4 = [(SGMessage *)SGSimpleMailMessage fromDictionary:v3];

  v5 = [[SGPipelineEntity alloc] initWithEmailMessage:v4];
  v6 = +[SGPipeline fullPipeline];
  [v6 dissect:v5];

  v7 = [SGCuratedContactMatcher fetchMeContactFromContactStore:*(*(a1 + 32) + 64)];
  +[SGSqlEntityStore prepareSqlStoreInMemory];
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = (CFAbsoluteTimeGetCurrent() - *(a1 + 48)) * 1000.0;
    v10 = [(SGPipelineEntity *)v5 enrichments];
    v14 = 134218240;
    v15 = v9;
    v16 = 1024;
    v17 = [v10 count];
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Warmed up suggestions in %0.2f ms and found %i enrichments", &v14, 0x12u);
  }

  v11 = *(a1 + 40);
  v12 = objc_opt_new();
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)clientIsMessages
{
  v2 = [(NSXPCConnection *)self->_connection exportedInterface];
  v3 = [v2 protocol];
  isEqual = protocol_isEqual(v3, &unk_284758328);

  return isEqual;
}

- (BOOL)clientIsMail
{
  v2 = [(NSXPCConnection *)self->_connection exportedInterface];
  v3 = [v2 protocol];
  isEqual = protocol_isEqual(v3, &unk_2847564D8);

  return isEqual;
}

- (SGDSuggestManager)initWithStore:(id)a3
{
  v4 = a3;
  v5 = +[SGDManagerForCTS sharedSingletonInstance];
  v6 = +[SGEKEventStoreProvider defaultEKStoreProvider];
  v7 = +[SGContactStoreFactory contactStore];
  v8 = [(SGDSuggestManager *)self initWithStore:v4 ctsManager:v5 ekStoreProvider:v6 contactStore:v7 pet2Tracker:0];

  return v8;
}

- (SGDSuggestManager)initWithStore:(id)a3 ctsManager:(id)a4 ekStoreProvider:(id)a5 contactStore:(id)a6 pet2Tracker:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = SGDSuggestManager;
  v17 = [(SGDSuggestManager *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(SGDSuggestManager *)v17 setupManagerWithConnection:0 store:v12 ctsManager:v13 ekStoreProvider:v14 contactStore:v15 pet2Tracker:v16];
  }

  return v18;
}

- (SGDSuggestManager)initWithMessagesConnection:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SGDSuggestManager;
  v8 = [(SGDSuggestManager *)&v16 init];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = +[SGDManagerForCTS sharedSingletonInstance];
  v10 = +[SGEKEventStoreProvider defaultEKStoreProvider];
  v11 = +[SGContactStoreFactory contactStore];
  [(SGDSuggestManager *)v8 setupManagerWithConnection:v6 store:v7 ctsManager:v9 ekStoreProvider:v10 contactStore:v11 pet2Tracker:0];

  if (!v8->_harvestStore)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGDSuggestManager has no entity store and cannot continue", v15, 2u);
    }

    v12 = 0;
  }

  else
  {
LABEL_3:
    v12 = v8;
  }

  return v12;
}

- (SGDSuggestManager)initWithConnection:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SGDSuggestManager;
  v8 = [(SGDSuggestManager *)&v16 init];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = +[SGDManagerForCTS sharedSingletonInstance];
  v10 = +[SGEKEventStoreProvider defaultEKStoreProvider];
  v11 = +[SGContactStoreFactory contactStore];
  [(SGDSuggestManager *)v8 setupManagerWithConnection:v6 store:v7 ctsManager:v9 ekStoreProvider:v10 contactStore:v11 pet2Tracker:0];

  if (!v8->_harvestStore)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGDSuggestManager has no entity store and cannot continue", v15, 2u);
    }

    v12 = 0;
  }

  else
  {
LABEL_3:
    v12 = v8;
  }

  return v12;
}

- (void)contentAdmissionBlocklistDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = [v4 count];
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: contentAdmissionBlocklistDidChange: called with %tu bundles", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SGDSuggestManager *)self deleteSpotlightReferencesWithBundleIdentifier:*(*(&v12 + 1) + 8 * v10++) completion:&__block_literal_global_299, v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupHistoryObserver:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SGDSuggestManager__setupHistoryObserver___block_invoke;
  block[3] = &unk_278954A30;
  v7 = v3;
  v4 = _setupHistoryObserver__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&_setupHistoryObserver__onceToken, block);
  }
}

void __43__SGDSuggestManager__setupHistoryObserver___block_invoke(uint64_t a1)
{
  v2 = [[SGHistoryObserver alloc] initWithStore:*(a1 + 32)];
  v1 = +[SGSuggestHistory sharedSuggestHistory];
  [v1 addSuggestHistoryObserver:v2];
}

- (void)_executeBoxTasks:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deleteUniqueIds];
  v6 = objc_opt_new();
  v36 = v4;
  [v4 setDeleteUniqueIds:v6];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v5;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = [v13 allObjects];
        [(SGDSuggestManager *)self deleteSpotlightReferencesWithBundleIdentifier:v12 uniqueIdentifiers:v14 completion:&__block_literal_global_292];
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v9);
  }

  v15 = [v36 deleteDomainIds];
  v16 = objc_opt_new();
  [v36 setDeleteDomainIds:v16];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [v15 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * j);
        v23 = [v15 objectForKeyedSubscript:v22];
        [(SGDSuggestManager *)self deleteSpotlightReferencesWithBundleIdentifier:v22 domainIdentifiers:v23 completion:&__block_literal_global_294];
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v19);
  }

  v35 = v15;

  v24 = [v36 purgeUniqueIds];
  v25 = objc_opt_new();
  [v36 setPurgeUniqueIds:v25];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = [v24 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * k);
        v32 = [v24 objectForKeyedSubscript:v31];
        v33 = [v32 allObjects];
        [(SGDSuggestManager *)self purgeSpotlightReferencesWithBundleIdentifier:v31 uniqueIdentifiers:v33 completion:&__block_literal_global_296];
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setupManagerWithConnection:(id)a3 store:(id)a4 ctsManager:(id)a5 ekStoreProvider:(id)a6 contactStore:(id)a7 pet2Tracker:(id)a8
{
  v93[20] = *MEMORY[0x277D85DE8];
  v73 = a3;
  v82 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v15 = a8;
  v68 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [MEMORY[0x277D41DA8] sharedInstance];
  }

  pet2Tracker = self->_pet2Tracker;
  self->_pet2Tracker = v16;

  if (v82)
  {
    v18 = v82;
  }

  else
  {
    v18 = +[SGSqlEntityStore defaultStore];
  }

  harvestStore = self->_harvestStore;
  self->_harvestStore = v18;

  v20 = [[SGServiceContext alloc] initWithStore:self->_harvestStore];
  context = self->_context;
  self->_context = v20;

  objc_storeStrong(&self->_connection, a3);
  v22 = +[SGSuggestHistory sharedSuggestHistory];
  history = self->_history;
  self->_history = v22;

  if (![(SGSqlEntityStore *)self->_harvestStore isEphemeral])
  {
    [(SGDSuggestManager *)self _setupHistoryObserver:self->_harvestStore];
  }

  objc_initWeak(&location, self);
  v24 = +[SGAsset asset];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke;
  v89[3] = &unk_27894B718;
  objc_copyWeak(&v90, &location);
  v25 = [v24 registerUpdateHandler:v89];
  assetUpdateToken = self->_assetUpdateToken;
  self->_assetUpdateToken = v25;

  objc_storeStrong(&self->_ctsManager, a5);
  objc_storeStrong(&self->_ekStoreProvider, a6);
  objc_storeStrong(&self->_contactStore, a7);
  v27 = objc_opt_new();
  messageHarvestQueue = self->_messageHarvestQueue;
  self->_messageHarvestQueue = v27;

  [(NSOperationQueue *)self->_messageHarvestQueue setQualityOfService:17];
  [(NSOperationQueue *)self->_messageHarvestQueue setMaxConcurrentOperationCount:2];
  v29 = [v73 sgd_clientName];
  clientName = self->_clientName;
  self->_clientName = v29;

  v31 = objc_opt_new();
  dirtyLock = self->_dirtyLock;
  self->_dirtyLock = v31;

  v92[0] = *MEMORY[0x277D021C0];
  v33 = *MEMORY[0x277D022F0];
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022F0]];
  v93[0] = v81;
  v92[1] = *MEMORY[0x277D021E8];
  v34 = *MEMORY[0x277D02310];
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D02310]];
  v93[1] = v80;
  v92[2] = *MEMORY[0x277D021A0];
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022D0]];
  v93[2] = v79;
  v92[3] = *MEMORY[0x277D021D0];
  v35 = *MEMORY[0x277D02300];
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D02300]];
  v93[3] = v78;
  v92[4] = *MEMORY[0x277D021A8];
  v36 = *MEMORY[0x277D022D8];
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022D8]];
  v93[4] = v77;
  v92[5] = *MEMORY[0x277D02198];
  v37 = *MEMORY[0x277D022C8];
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022C8]];
  v93[5] = v76;
  v92[6] = *MEMORY[0x277D02200];
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D02320]];
  v93[6] = v75;
  v92[7] = *MEMORY[0x277D021C8];
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022F8]];
  v93[7] = v74;
  v92[8] = *MEMORY[0x277D021F0];
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D02318]];
  v93[8] = v72;
  v92[9] = *MEMORY[0x277D021B8];
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022E8]];
  v93[9] = v71;
  v92[10] = *MEMORY[0x277D021B0];
  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D022E0]];
  v93[10] = v70;
  v92[11] = @"com.apple.MailCompositionService";
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
  v93[11] = v69;
  v92[12] = @"com.apple.MobileAddressBook.ContactsViewService";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
  v93[12] = v38;
  v92[13] = @"com.apple.MobileAddressBook.ContactViewViewService";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
  v93[13] = v39;
  v92[14] = @"com.apple.mobilesms.compose";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
  v93[14] = v40;
  v92[15] = @"FaceTime";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
  v93[15] = v41;
  v92[16] = @"com.apple.FaceTime";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
  v93[16] = v42;
  v92[17] = @"InCallService";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
  v93[17] = v43;
  v92[18] = @"com.apple.telephonyutilities.callservicesd";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
  v93[18] = v44;
  v92[19] = @"MobilePhone";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
  v93[19] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:20];
  bundleIdToPET = self->_bundleIdToPET;
  self->_bundleIdToPET = v46;

  v48 = objc_opt_new();
  lastSuggestionsFromMessageLock = self->_lastSuggestionsFromMessageLock;
  self->_lastSuggestionsFromMessageLock = v48;

  v50 = MEMORY[0x277D02098];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_280;
  v87[3] = &unk_278955AC0;
  objc_copyWeak(&v88, &location);
  self->_settingsChangeToken = [v50 registerBlockOnSuggestionsSettingsChange:v87];
  v51 = objc_alloc(MEMORY[0x277D425F8]);
  v52 = objc_opt_new();
  v53 = [v51 initWithGuardedData:v52];
  recentlyHarvestedDetailLock = self->_recentlyHarvestedDetailLock;
  self->_recentlyHarvestedDetailLock = v53;

  v55 = MEMORY[0x277D425A0];
  v56 = dispatch_get_global_queue(5, 0);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_282;
  v85[3] = &unk_278955AC0;
  objc_copyWeak(&v86, &location);
  [v55 runAsyncOnQueue:v56 afterDelaySeconds:v85 block:5.0];

  self->_persistRealtimeExtractions = 1;
  v57 = objc_alloc(MEMORY[0x277D425F8]);
  v58 = objc_opt_new();
  v59 = [v57 initWithGuardedData:v58];
  bufferedInteractionsForBundleLock = self->_bufferedInteractionsForBundleLock;
  self->_bufferedInteractionsForBundleLock = v59;

  v61 = [SGCoalescingDropBox alloc];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_3;
  v83[3] = &unk_27894B760;
  objc_copyWeak(&v84, &location);
  v62 = [(SGCoalescingDropBox *)v61 initWithName:"SGDSuggestManager-purgeDeletionDropBox" boxMaker:&__block_literal_global_288 handler:v83 qos:17];
  purgeDeletionDropBox = self->_purgeDeletionDropBox;
  self->_purgeDeletionDropBox = v62;

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v90);
  objc_destroyWeak(&location);

  v64 = *MEMORY[0x277D85DE8];
}

void __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke(uint64_t a1)
{
  notify_post([*MEMORY[0x277D024D8] UTF8String]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearCachesFully:1 withCompletion:&__block_literal_global_246];
}

void __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sgLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 0;
      _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "clearing lastSuggestionsFromMessage cache due to settings change", v5, 2u);
    }

    [WeakRetained[14] lock];
    v3 = WeakRetained[12];
    WeakRetained[12] = 0;

    v4 = WeakRetained[13];
    WeakRetained[13] = 0;

    [WeakRetained[14] unlock];
  }
}

void __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_282(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _pmlTraining];
    WeakRetained = v3;
  }
}

void __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _executeBoxTasks:v3];
}

id __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_2_285()
{
  v0 = objc_opt_new();

  return v0;
}

void __106__SGDSuggestManager_setupManagerWithConnection_store_ctsManager_ekStoreProvider_contactStore_pet2Tracker___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGDSuggestManager failed to clear caches following an asset update: %@", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)entityTagForCategory:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v3 = [MEMORY[0x277D01FA0] extractedFlight];
      }

      else if (a3 == 2)
      {
        v3 = [MEMORY[0x277D01FA0] extractedBus];
      }
    }

    else
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          [MEMORY[0x277D01FA0] extractedHotel];
        }

        else
        {
          [MEMORY[0x277D01FA0] extractedCarRental];
        }

        goto LABEL_6;
      }

      v3 = [MEMORY[0x277D01FA0] extractedTrain];
    }
  }

  else if (a3 > 8)
  {
    switch(a3)
    {
      case 9:
        v3 = [MEMORY[0x277D01FA0] extractedSocial];
        break;
      case 10:
        v3 = [MEMORY[0x277D01FA0] extractedBoat];
        break;
      case 11:
        v3 = [MEMORY[0x277D01FA0] extractedAppointment];
        break;
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        [MEMORY[0x277D01FA0] extractedMovie];
      }

      else
      {
        [MEMORY[0x277D01FA0] extractedFood];
      }

      v3 = LABEL_6:;
      goto LABEL_25;
    }

    v3 = [MEMORY[0x277D01FA0] extractedTicket];
  }

LABEL_25:

  return v3;
}

+ (id)preprocessSearchableItem:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D41E30] mailItemIsValid:v3])
  {
    v4 = MEMORY[0x277D41DF8];
    v5 = [v3 bundleID];
    LOBYTE(v4) = [v4 shouldAdmitContentFromBundleIdentifier:v5];

    if (v4)
    {
      v6 = [v3 protection];

      if (!v6)
      {
        v7 = [v3 bundleID];
        HVDataSourceForBundleIdentifier();

        v8 = HVDataSourceFileProtection();
        [v3 setProtection:v8];
      }

      v9 = 0;
    }

    else
    {
      v13 = sgLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "suggestionsFromSearchableItem ignoring item since the bundle is disallowed by user's settings", v15, 2u);
      }

      v9 = [MEMORY[0x277D02138] responseWith:0];
    }
  }

  else
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGDSuggestManager: Mail: suggestionsFromSearchableItem was called with an invalid item", buf, 2u);
    }

    v11 = MEMORY[0x277D02138];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:6 userInfo:0];
    v9 = [v11 responseWithError:v12];
  }

  return v9;
}

+ (id)filterPseudoEvents:(id)a3 keepPastEvents:(BOOL)a4 keepPartialEvents:(BOOL)a5 keepEventsFromOldDocuments:(BOOL)a6 keepUnsupportedEventCategoryStatus:(BOOL)a7 keepUnsupportedEventCategoryStatusForTextMessage:(BOOL)a8 keepLLMExtractionForRealTime:(BOOL)a9
{
  v9 = a3;
  v10 = objc_opt_new();
  [v10 isLLMPreferredForLocale];
  v11 = v10;
  v12 = sgMapAndFilter();

  return v12;
}

id __213__SGDSuggestManager_filterPseudoEvents_keepPastEvents_keepPartialEvents_keepEventsFromOldDocuments_keepUnsupportedEventCategoryStatus_keepUnsupportedEventCategoryStatusForTextMessage_keepLLMExtractionForRealTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 duplicateKey];
  v5 = [v4 entityType];

  if (v5 != 2)
  {
    goto LABEL_30;
  }

  if ((*(a1 + 40) & 1) != 0 || ([v3 timeRange], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEndDatePast"), v6, !v7))
  {
    if (*(a1 + 41) & 1) != 0 || ([v3 isEventComplete])
    {
      if ((*(a1 + 42) & 1) != 0 || ([v3 tags], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D01FA0], "eventExtractedFromOldDocument"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "containsObject:", v12), v12, v11, !v13))
      {
        if ((*(a1 + 43) & 1) != 0 || (*(a1 + 44) & 1) != 0 || ([v3 tags], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D01FA0], "eventExtractedFromLLM"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "containsObject:", v15), v15, v14, !v16))
        {
          if ((*(a1 + 45) & 1) != 0 || (v17 = *(a1 + 32), [v3 tags], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(v17) = objc_msgSend(v17, "isUnsupportedEventCategoryStatusForTextMessage:", v18), v18, !v17))
          {
            if ((*(a1 + 46) & 1) != 0 || (v19 = *(a1 + 32), [v3 tags], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(v19) = objc_msgSend(v19, "isUnsupportedEventCategoryStatusForEventExtraction:", v20), v20, !v19))
            {
              v21 = v3;
              goto LABEL_31;
            }

            v8 = sgEventsLogHandle();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_29;
            }

            v23 = 0;
            v9 = "Skipping event extraction since the category/status was unsupported.";
            v10 = &v23;
            goto LABEL_28;
          }

          v8 = sgEventsLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v24 = 0;
            v9 = "Skipping text message extraction since the category/status was unsupported.";
            v10 = &v24;
            goto LABEL_28;
          }
        }

        else
        {
          v8 = sgEventsLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v25 = 0;
            v9 = "Skipping extraction from LLM since it's not preferred in this locale.";
            v10 = &v25;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v8 = sgEventsLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v26 = 0;
          v9 = "Skipping future event extracted from older mail.";
          v10 = &v26;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v8 = sgEventsLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v9 = "Skipping partial event that doesn't contain all information.";
        v10 = buf;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v8 = sgEventsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v28 = 0;
      v9 = "Skipping extracted event that has already passed.";
      v10 = &v28;
LABEL_28:
      _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, v9, v10, 2u);
    }
  }

LABEL_29:

LABEL_30:
  v21 = 0;
LABEL_31:

  return v21;
}

+ (void)clearRequestCache
{
  v3 = [a1 requestCache];
  v2 = [v3 resultIfAvailable];
  [v2 runWithLockAcquired:&__block_literal_global_238];
}

void __38__SGDSuggestManager_contactAggregator__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = contactAggregator__pasExprOnceResult;
  contactAggregator__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)requestCache
{
  if (requestCache__pasOnceToken5 != -1)
  {
    dispatch_once(&requestCache__pasOnceToken5, &__block_literal_global_222);
  }

  v3 = requestCache__pasExprOnceResult;

  return v3;
}

void __33__SGDSuggestManager_requestCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_226 idleTimeout:5.0];
  v2 = requestCache__pasExprOnceResult;
  requestCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __33__SGDSuggestManager_requestCache__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];

  objc_initWeak(&location, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SGDSuggestManager_requestCache__block_invoke_3;
  v6[3] = &unk_278955AC0;
  objc_copyWeak(&v7, &location);
  [SGCuratedChangeNotifications addAddressBookObserver:v6 forObjectLifetime:v2];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SGDSuggestManager_requestCache__block_invoke_5;
  v4[3] = &unk_278955AC0;
  objc_copyWeak(&v5, &location);
  [SGCuratedChangeNotifications addCalendarObserver:v4 forObjectLifetime:v2];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v2;
}

void __33__SGDSuggestManager_requestCache__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runWithLockAcquired:&__block_literal_global_231];
}

void __33__SGDSuggestManager_requestCache__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runWithLockAcquired:&__block_literal_global_233];
}

+ (void)updateOriginalDocumentsWith:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      v8 = [v7 bundleID];

      v9 = [v5 firstObject];
      v10 = [v9 protection];

      v11 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"SuggestedEventsUpdate" protectionClass:v10 bundleIdentifier:v8];
      v12 = v11;
      if (v11)
      {
        [v11 indexSearchableItems:v5 completionHandler:v6];
      }

      else
      {
        v13 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA450];
        v18[0] = @"index is not initialized";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v15 = [v13 errorWithDomain:@"SGDOriginalDocDonationErrorDomain" code:-1000 userInfo:v14];
        v6[2](v6, v15);
      }
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)getProcessedItemFromEvents:(id)a3 uniqueID:(id)a4 bundleID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [SGDSuggestManager extractAttributeSetsFromRealtimeEvents:a3];
  v10 = [SGDSuggestManager getAggregatedAttributeSet:v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v10];
    [v11 setBundleID:v8];
    [v11 setIsUpdate:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getAggregatedAttributeSet:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 attributeDictionary];
    v6 = [SGDSuggestManager filterAttributesForDonation:v5];

    v20 = v6;
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
    v8 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) attributeDictionary];
          v15 = [v14 objectForKey:@"kMDItemEventType"];

          if (v15)
          {
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [v8 allObjects];
    [v7 setObject:v16 forKey:@"kMDItemDetectedEventTypes"];

    v17 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v7];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)extractAttributeSetsFromRealtimeEvents:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v22 = *MEMORY[0x277D02208];
    v21 = *MEMORY[0x277CCA450];
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 event];

          if (v12)
          {
            v13 = [v11 event];
            v14 = [v13 attributeSetForEvent];

            if (v14)
            {
              [v4 addObject:v14];
            }

            else
            {
              v15 = sgLogHandle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = MEMORY[0x277CCA9B8];
                v28 = v21;
                v29 = @"nil attribute set for realtime event";
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
                v17 = [v16 errorWithDomain:v22 code:12 userInfo:v23];
                *buf = 138412290;
                v31 = v17;
                _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "extractAttributeSetsFromRealtimeEvents: %@", buf, 0xCu);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)filterAttributesForDonation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (filterAttributesForDonation__onceToken != -1)
  {
    dispatch_once(&filterAttributesForDonation__onceToken, &__block_literal_global_12_6335);
  }

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = filterAttributesForDonation__suggestedEventsAllowListAttributes;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKey:{v10, v15}];
        if (v11)
        {
          [v4 setObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __71__SGDSuggestManager_OriginalDocDonations__filterAttributesForDonation___block_invoke()
{
  v2 = objc_opt_new();
  v0 = [v2 getAllUniqueEventAttributes];
  v1 = filterAttributesForDonation__suggestedEventsAllowListAttributes;
  filterAttributesForDonation__suggestedEventsAllowListAttributes = v0;
}

+ (id)simpleWritebackHandler
{
  if (_os_feature_enabled_impl())
  {
    return &__block_literal_global_6339;
  }

  else
  {
    return 0;
  }
}

void __65__SGDSuggestManager_OriginalDocDonations__simpleWritebackHandler__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "**** SGDSuggestManager: original document writeback error: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: original document writeback completed successfully", &v6, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __64__SGDSuggestManager_RealtimeDonations__filterRealtimeReminders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SGSuggestHistory sharedSuggestHistory];
  v4 = [v2 reminder];
  v5 = [v3 isValidNewReminder:v4];

  if ((v5 & 1) == 0)
  {
    v8 = sgRemindersLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "SGDSuggestManager: Filtering out previously engaged reminder";
      v10 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
    goto LABEL_13;
  }

  v6 = [v2 reminder];
  v7 = [SGRemindersAdapter reminderHasDuplicate:v6 usingStore:0];

  if (v7)
  {
    v8 = sgRemindersLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v21 = 0;
      v9 = "SGDSuggestManager: Filtering out duplicate reminder";
      v10 = &v21;
LABEL_7:
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [v2 reminder];
  v13 = [v12 dueDateComponents];

  if (v13)
  {
    v14 = [v2 reminder];
    v15 = [v14 dueDateComponents];
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [v2 reminder];
    v18 = +[SGReminderDissector isReminderDueDateComponentsInPast:givenReferenceDate:allDay:](SGReminderDissector, "isReminderDueDateComponentsInPast:givenReferenceDate:allDay:", v15, v16, [v17 isAllDay]);

    if (v18 && ([MEMORY[0x277D02098] showPastEvents] & 1) == 0)
    {
      v8 = sgRemindersLogHandle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      v20 = 0;
      v9 = "SGDSuggestManager: Filtering past Reminder";
      v10 = &v20;
      goto LABEL_7;
    }
  }

  v11 = v2;
LABEL_13:

  return v11;
}

- (void)_storeAndGeocodeEntity:(id)a3 spotlightBundleIdentifier:(id)a4 spotlightUniqueIdentifier:(id)a5 spotlightDomainIdentifier:(id)a6 store:(id)a7 afterCallbackQueue:(id)a8 finalize:(id)a9
{
  v32[1] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v14 = a9;
  queue = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  if ([MEMORY[0x277D02098] shouldHarvestEvents])
  {
    v20 = v29;
    v21 = [v19 geocodeOperation:v29 withDependencies:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v21 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_124];
    v20 = v29;
  }

  v32[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v23 = [v19 storeOperation:v20 spotlightBundleIdentifier:v18 spotlightUniqueIdentifier:v17 spotlightDomainIdentifier:v16 withStore:v15 dependencies:v22];

  v24 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v14];

  [v24 addDependency:v23];
  v25 = objc_opt_new();
  [v25 setMaxConcurrentOperationCount:1];
  [v25 setSuspended:1];
  [v25 addOperation:v21];
  [v25 addOperation:v23];
  [v25 addOperation:v24];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __175__SGDSuggestManager_RealtimeDonations___storeAndGeocodeEntity_spotlightBundleIdentifier_spotlightUniqueIdentifier_spotlightDomainIdentifier_store_afterCallbackQueue_finalize___block_invoke_2;
  block[3] = &unk_278954A30;
  v31 = v25;
  v26 = v25;
  dispatch_async(queue, block);

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canBannerUseStoredDissection:(id)a3 options:(unint64_t)a4
{
  if (a3)
  {
    return [a3 isPartiallyDownloaded] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)realtimeSuggestionsForMailOrMessageWithHash:(id)a3 options:(unint64_t)a4 completion:(id)a5 completionDelivery:(unint64_t)a6 providedBy:(id)a7 searchableItem:(id)a8 dissectIfNecessary:(BOOL)a9 processingType:(unint64_t)a10 isTextMessage:(BOOL)a11
{
  v186 = *MEMORY[0x277D85DE8];
  v101 = a3;
  v102 = a5;
  v16 = a7;
  v17 = a8;
  v18 = sgLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 bundleID];
    v20 = [v17 uniqueIdentifier];
    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: realtimeSuggestionsForMailOrMessageWithHash: %@ : %@", buf, 0x16u);
  }

  v115 = dispatch_queue_create("after banner callback", 0);
  dispatch_suspend(v115);
  if (!a4)
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"SGDSuggestManager+RealtimeDonations.m" lineNumber:438 description:@"Passing 0 for options would return nothing"];
  }

  if (realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__initMemoryStoreOneTimeToken != -1)
  {
    dispatch_once(&realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__initMemoryStoreOneTimeToken, &__block_literal_global_62_21261);
  }

  v175 = 0;
  *&v174 = @"suggestionsFromEmailContent";
  *(&v174 + 1) = mach_absolute_time();
  v114 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v185 = 0;
  v172[0] = 0;
  v172[1] = v172;
  v172[2] = 0x2020000000;
  v173 = 0;
  v21 = [(SGDSuggestManager *)self context];
  v22 = vdupq_n_s64(a4);
  v23 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v22, xmmword_232106D30), vshlq_u64(v22, xmmword_232106D20))), 0x1000100010001);
  v111 = vandq_s8(v22, xmmword_232106D40);
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2;
  v155[3] = &unk_27894EDC0;
  v24 = v16;
  v160 = v24;
  v155[4] = self;
  v163 = v111;
  v164 = a10;
  v167 = a9;
  v98 = v17;
  v156 = v98;
  v161 = buf;
  object = v115;
  v157 = object;
  v96 = v21;
  v158 = v96;
  v162 = v172;
  v25 = v114;
  v168 = vuzp1_s8(v23, v26).u32[0];
  v169 = (a4 & 0x400000) != 0;
  v170 = (a4 & 0x800000) != 0;
  v171 = (a4 & 0x8000000) != 0;
  dsema = v25;
  v159 = v25;
  v165 = a4 & 1;
  v166 = a2;
  v104 = MEMORY[0x2383809F0](v155);
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_98;
  v148[3] = &unk_27894EE58;
  v151 = v174;
  v148[4] = self;
  v152 = v175;
  v153 = a11;
  v154 = (a4 & 0x40000000) == 0;
  v110 = v24;
  v149 = v110;
  v150 = v172;
  v103 = MEMORY[0x2383809F0](v148);
  if (a11)
  {
    v27 = v104[2]();
    v28 = [v27 copy];

    if (v28)
    {
      v105 = (v103)[2](v103, v28);
    }

    else
    {
      v105 = 0;
    }

    v29 = self;
  }

  else
  {
    v29 = self;
    v105 = [(SGDSuggestManager *)self cachedResultForKey:v101 generateResult:v104 validateResults:v103];
  }

  v30 = [(SGDSuggestManager *)v29 harvestStore];
  v31 = [v30 kvCacheManager];
  v113 = [v31 cacheOfType:0];

  v32 = [(SGDSuggestManager *)self harvestStore];
  v33 = [v32 kvCacheManager];
  v112 = [v33 cacheOfType:1];

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = [v105 contacts];
  v108 = [obj countByEnumeratingWithState:&v144 objects:v183 count:16];
  if (v108)
  {
    v107 = *v145;
    do
    {
      for (i = 0; i != v108; ++i)
      {
        if (*v145 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v34 = [*(*(&v144 + 1) + 8 * i) contact];
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v116 = v34;
        v35 = [v34 phones];
        v36 = [v35 countByEnumeratingWithState:&v140 objects:v182 count:16];
        if (v36)
        {
          v37 = *v141;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v141 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v140 + 1) + 8 * j);
              v40 = [v39 phoneNumber];
              v41 = SGNormalizePhoneNumber();

              *v180 = 0;
              *&v180[8] = v180;
              *&v180[16] = 0x2020000000;
              v181 = 0;
              v42 = [(SGDSuggestManager *)self recentlyHarvestedDetailLock];
              v137[0] = MEMORY[0x277D85DD0];
              v137[1] = 3221225472;
              v137[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2_113;
              v137[3] = &unk_27894EE80;
              v43 = v41;
              v138 = v43;
              v139 = v180;
              [v42 runWithLockAcquired:v137];

              if (*(*&v180[8] + 24) == 1)
              {
                v44 = MEMORY[0x277D01FF8];
                v45 = [v116 name];
                v46 = [v45 fullName];
                v47 = [v44 encodedStringForFullName:v46];

                [v113 setValueIfNotPresent:v47 forKey:v43 fromRecordId:0];
                v48 = [v39 recordId];
                [SGDNotificationBroadcaster emitContactUpdated:v48];
              }

              _Block_object_dispose(v180, 8);
            }

            v36 = [v35 countByEnumeratingWithState:&v140 objects:v182 count:16];
          }

          while (v36);
        }

        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v49 = [v116 emailAddresses];
        v50 = [v49 countByEnumeratingWithState:&v133 objects:v179 count:16];
        if (v50)
        {
          v51 = *v134;
          do
          {
            for (k = 0; k != v50; ++k)
            {
              if (*v134 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = *(*(&v133 + 1) + 8 * k);
              v54 = [v53 emailAddress];
              v55 = SGNormalizeEmailAddress();

              *v180 = 0;
              *&v180[8] = v180;
              *&v180[16] = 0x2020000000;
              v181 = 0;
              v56 = [(SGDSuggestManager *)self recentlyHarvestedDetailLock];
              v130[0] = MEMORY[0x277D85DD0];
              v130[1] = 3221225472;
              v130[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3_117;
              v130[3] = &unk_27894EE80;
              v57 = v55;
              v131 = v57;
              v132 = v180;
              [v56 runWithLockAcquired:v130];

              if (*(*&v180[8] + 24) == 1)
              {
                v58 = MEMORY[0x277D01FF8];
                v59 = [v116 name];
                v60 = [v59 fullName];
                v61 = [v58 encodedStringForFullName:v60];

                [v112 setValueIfNotPresent:v61 forKey:v57 fromRecordId:0];
                v62 = [v53 recordId];
                [SGDNotificationBroadcaster emitContactUpdated:v62];
              }

              _Block_object_dispose(v180, 8);
            }

            v50 = [v49 countByEnumeratingWithState:&v133 objects:v179 count:16];
          }

          while (v50);
        }
      }

      v108 = [obj countByEnumeratingWithState:&v144 objects:v183 count:16];
    }

    while (v108);
  }

  v63 = sgLogHandle();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [v98 uniqueIdentifier];
    *v180 = 138412546;
    *&v180[4] = v64;
    *&v180[12] = 2112;
    *&v180[14] = v105;
    _os_log_impl(&dword_231E60000, v63, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: realtimeSuggestionsForMailOrMessageWithHash: %@: results: %@", v180, 0x16u);
  }

  if (!a6)
  {
    v102[2](v102, v105);

    v102 = 0;
  }

  dispatch_resume(object);
  dispatch_barrier_sync(object, &__block_literal_global_120_21264);
  SGRecordMeasurementState(&v174);
  [realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__inMemoryStore clearAllTables];
  v65 = v110[2]();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v128 = 0uLL;
    v129 = 0uLL;
    v126 = 0uLL;
    v127 = 0uLL;
    v67 = [v105 events];
    v68 = [v67 countByEnumeratingWithState:&v126 objects:v178 count:16];
    if (v68)
    {
      v69 = *v127;
      do
      {
        for (m = 0; m != v68; ++m)
        {
          if (*v127 != v69)
          {
            objc_enumerationMutation(v67);
          }

          v71 = *(*(&v126 + 1) + 8 * m);
          v72 = [v71 event];
          v73 = [v72 isNaturalLanguageEvent];

          if (v73)
          {
            v74 = [v71 event];
            [(SGDSuggestManager *)self bumptTTLForNLEvent:v74];
          }
        }

        v68 = [v67 countByEnumeratingWithState:&v126 objects:v178 count:16];
      }

      while (v68);
    }

    v75 = 4;
  }

  else
  {
    v124 = 0uLL;
    v125 = 0uLL;
    v122 = 0uLL;
    v123 = 0uLL;
    v67 = [v105 reminders];
    v76 = [v67 countByEnumeratingWithState:&v122 objects:v177 count:16];
    if (v76)
    {
      v77 = *v123;
      do
      {
        for (n = 0; n != v76; ++n)
        {
          if (*v123 != v77)
          {
            objc_enumerationMutation(v67);
          }

          v79 = *(*(&v122 + 1) + 8 * n);
          v80 = +[SGRTCLogging defaultLogger];
          v81 = [v79 reminder];
          [v80 logReminderInteractionFromReminder:v81 interface:1 actionType:4];
        }

        v76 = [v67 countByEnumeratingWithState:&v122 objects:v177 count:16];
      }

      while (v76);
    }

    v75 = 1;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = [v105 events];
  v83 = [v82 countByEnumeratingWithState:&v118 objects:v176 count:16];
  if (v83)
  {
    v84 = *v119;
    do
    {
      for (ii = 0; ii != v83; ++ii)
      {
        if (*v119 != v84)
        {
          objc_enumerationMutation(v82);
        }

        v86 = *(*(&v118 + 1) + 8 * ii);
        v87 = [v86 event];
        v88 = [v87 isNaturalLanguageEvent];

        if ((v88 & 1) == 0)
        {
          v89 = [SGPipelineEntity alloc];
          v90 = objc_autoreleasePoolPush();
          v91 = v110[2]();
          objc_autoreleasePoolPop(v90);
          v92 = [(SGPipelineEntity *)v89 initWithMessage:v91];

          v93 = +[SGRTCLogging defaultLogger];
          [v93 logEventInteractionForRealtimeEvent:v86 parentEntity:v92 interface:v75 actionType:4];
        }
      }

      v83 = [v82 countByEnumeratingWithState:&v118 objects:v176 count:16];
    }

    while (v83);
  }

  if (a6 == 1)
  {
    if (*(*&buf[8] + 24) == 1)
    {
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    }

    v102[2](v102, v105);
  }

  _Block_object_dispose(v172, 8);
  _Block_object_dispose(buf, 8);

  SGRecordMeasurementState(&v174);
  v94 = *MEMORY[0x277D85DE8];
}

id __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  +[SGPatterns pauseCacheEvictionTemporarily];
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 72) + 16))();
  objc_autoreleasePoolPop(v2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v118 = realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__inMemoryStore;
  v5 = [v3 accountType];
  v6 = [SGSqlEntityStore canStoreEventsForAccountType:v5];

  v109 = v3;
  v110 = v4;
  if (v6)
  {
    if (!*(a1 + 96) || [MEMORY[0x277D02098] shouldHarvestEvents])
    {
      v7 = [v3 source];
      v8 = [SGDuplicateKey duplicateKeyForMessage:v3 fromSource:v7];

      v9 = [*(a1 + 32) harvestStore];
      v10 = [v9 loadEntityByKey:v8];

      v11 = [*(a1 + 32) _canBannerUseStoredDissection:v10 options:*(a1 + 104)];
      v12 = v11;
      if (v11)
      {
        v13 = sgLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Existing valid dissection found in store.", buf, 2u);
        }

        v14 = [*(a1 + 32) harvestStore];
        v15 = [v14 childrenFromParentKey:v8];

        v16 = [*(a1 + 32) harvestStore];

        v17 = v10;
        v18 = [(SGEntity *)v17 tags];
        v19 = [MEMORY[0x277D01FA0] requiresDeferredDissection];
        v20 = a1;
        v21 = [v18 containsObject:v19];

        if (!v21)
        {
          v22 = v15;
          v23 = 0;
          v3 = v109;
          a1 = v20;
          goto LABEL_23;
        }

        v3 = v109;
        a1 = v20;
        v22 = v15;
        v23 = *(v20 + 112) == 1;
        v118 = v16;
        if (v10)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = 0;
        v22 = 0;
        v17 = 0;
        if (v10)
        {
LABEL_19:
          v24 = sgLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEBUG, "Existing dissection found in store, but HTML does not match.", buf, 2u);
          }

          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_14:
          v16 = v118;
LABEL_23:

          v6 = 1;
          v118 = v16;
          v4 = v110;
          goto LABEL_24;
        }
      }

      if ((v12 & 1) == 0)
      {
LABEL_22:
        v25 = [[SGPipelineEntity alloc] initWithMessage:v3];

        v16 = v118;
        v17 = v25;
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v6 = 0;
  }

  v23 = 0;
  v22 = 0;
  v17 = 0;
LABEL_24:
  v26 = objc_opt_new();
  v108 = a1;
  if (v23 || !v22)
  {
    v111 = v6;
    v27 = *(a1 + 136);
    v28 = sgLogHandle();
    v29 = v28;
    if ((v27 & 1) == 0)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEBUG, "Entity not harvested, but I was told not to dissect.", buf, 2u);
      }

      v98 = 0;
      goto LABEL_83;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: starting dissection.", buf, 2u);
    }

    v30 = [SGHarvestQueueMetrics alloc];
    v31 = [v3 spotlightBundleIdentifier];
    v32 = [(SGHarvestQueueMetrics *)v30 initRealtime:v31 wasNoBudgetItem:0];

    [v32 startHarvest];
    [v3 setHarvestMetrics:v32];
    [SGDPowerLog startDissectionOfMessage:v3 inContext:0];
    v33 = dispatch_group_create();
    v34 = v33;
    if (*(v108 + 40))
    {
      *(*(*(v108 + 80) + 8) + 24) = 1;
      dispatch_group_enter(v33);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_74;
      block[3] = &unk_278956130;
      v35 = *(v108 + 48);
      v133 = *(v108 + 40);
      v134 = v32;
      v135 = v34;
      dispatch_async(v35, block);
    }

    group = v34;
    v36 = [[SGRequestContext alloc] initWithServiceContext:*(v108 + 56) concurrencyBehavior:1 backpressureHazard:1 extractionMode:2];
    v37 = [[SGPipelineEntity alloc] initWithMessage:v3];

    [(SGPipelineEntity *)v37 setHarvestMetrics:v32];
    v38 = +[SGPipeline fullPipeline];
    v107 = v36;
    [v38 dissectAndStoreEntity:v37 inContext:v36 destinationStore:v118];

    v39 = [(SGPipelineEntity *)v37 enrichments];

    *(*(*(v108 + 88) + 8) + 24) = [(SGPipelineEntity *)v37 needsSourceVerification];
    v119 = v37;
    v40 = [(SGPipelineEntity *)v37 invalidatedMessageIdentifiers];
    [v26 setInvalidatedIdentifiers:v40];

    [SGDPowerLog endDissectionOfMessage:v3 inContext:0];
    if ([*(v108 + 32) persistRealtimeExtractions])
    {
      objc_opt_class();
      if ((v111 & objc_opt_isKindOfClass()) == 1)
      {
        *(*(*(v108 + 80) + 8) + 24) = 1;
        dispatch_group_enter(group);
        v106 = *(v108 + 32);
        v112 = v39;
        v41 = v3;
        v105 = [v41 spotlightBundleIdentifier];
        v42 = [v41 spotlightUniqueIdentifier];
        v43 = [v41 spotlightDomainIdentifier];

        v44 = [*(v108 + 32) harvestStore];
        v45 = *(v108 + 48);
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_83;
        v130[3] = &unk_278954A30;
        v131 = group;
        [v106 _storeAndGeocodeEntity:v119 spotlightBundleIdentifier:v105 spotlightUniqueIdentifier:v42 spotlightDomainIdentifier:v43 store:v44 afterCallbackQueue:v45 finalize:v130];

        v39 = v112;
      }
    }

    v46 = group;
    if (v4)
    {
      v113 = v39;
      v116 = v26;
      if ([v4 senderIsAccountOwner])
      {
        v47 = [*(v108 + 32) harvestStore];
        [v47 registerSentTextMessage:v4];
      }

      *(*(*(v108 + 80) + 8) + 24) = 1;
      dispatch_group_enter(group);
      v48 = *(v108 + 32);
      v49 = [v4 spotlightBundleIdentifier];
      v50 = [v4 spotlightUniqueIdentifier];
      v51 = [v4 spotlightDomainIdentifier];
      v52 = [*(v108 + 32) harvestStore];
      v53 = *(v108 + 48);
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2_84;
      v128[3] = &unk_278954A30;
      v129 = group;
      [v48 _storeAndGeocodeEntity:v119 spotlightBundleIdentifier:v49 spotlightUniqueIdentifier:v50 spotlightDomainIdentifier:v51 store:v52 afterCallbackQueue:v53 finalize:v128];

      v46 = group;
      v26 = v116;
      v39 = v113;
    }

    v54 = dispatch_get_global_queue(9, 0);
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3_85;
    v124[3] = &unk_278956130;
    v125 = v46;
    v126 = v32;
    v127 = *(v108 + 64);
    v55 = v32;
    a1 = v108;
    v56 = v55;
    v57 = v46;
    dispatch_async(v54, v124);

    v22 = v39;
  }

  else
  {
    v119 = v17;
  }

  if (*(a1 + 96))
  {
    v58 = sgEventsLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v102 = [(SGEntity *)v119 loggingIdentifier];
      *buf = 138543362;
      v138 = v102;
      _os_log_debug_impl(&dword_231E60000, v58, OS_LOG_TYPE_DEBUG, "SGDSuggestManager - Getting realtime events for dissected entity [SGEntity %{public}@]", buf, 0xCu);
    }

    v59 = [MEMORY[0x277D02098] showPastEvents];
    *(&v104 + 1) = *(a1 + 140);
    LOBYTE(v104) = (*(a1 + 139) | v59) & 1;
    v60 = [*(a1 + 32) realtimeEventsFromEntity:v119 message:v3 enrichments:v22 store:v118 keepPastEvents:(*(a1 + 137) | v59) & 1 keepPartialEvents:*(a1 + 138) keepEventsFromOldDocuments:v104 keepUnsupportedEventCategoryStatus:? keepUnsupportedEventCategoryStatusForTextMessage:? keepLLMExtractionForRealtime:? keepAttributesForEvents:?];
    v61 = sgLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v103 = [v60 count];
      *buf = 67109120;
      LODWORD(v138) = v103;
      _os_log_debug_impl(&dword_231E60000, v61, OS_LOG_TYPE_DEBUG, "Found %i realtime events", buf, 8u);
    }

    [v26 setEvents:v60];
  }

  v62 = sgLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v62, OS_LOG_TYPE_INFO, "Getting realtime wallet orders for dissected entity", buf, 2u);
  }

  v63 = [*(a1 + 32) realtimeWalletOrdersFromEntity:v119 enrichments:v22];
  v64 = sgLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [v63 count];
    *buf = 67109120;
    LODWORD(v138) = v65;
    _os_log_impl(&dword_231E60000, v64, OS_LOG_TYPE_INFO, "Found %i realtime wallet orders", buf, 8u);
  }

  [v26 setWalletOrders:v63];
  v66 = [*(a1 + 32) realtimeWalletPassesFromEntity:v119 enrichments:v22];
  v67 = sgLogHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    v101 = [v66 count];
    *buf = 134217984;
    v138 = v101;
    _os_log_debug_impl(&dword_231E60000, v67, OS_LOG_TYPE_DEBUG, "Found %tu realtime wallet passes", buf, 0xCu);
  }

  [v26 setWalletPasses:v66];
  if (*(a1 + 120))
  {
    v68 = sgLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v68, OS_LOG_TYPE_INFO, "Getting realtime contacts for dissected entity", buf, 2u);
    }

    v69 = [*(a1 + 32) realtimeContactsFromEntity:v119 enrichments:v22 sourceTextMessage:v4 store:v118];
    v70 = sgLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = [v69 count];
      *buf = 67109120;
      LODWORD(v138) = v71;
      _os_log_impl(&dword_231E60000, v70, OS_LOG_TYPE_INFO, "Found %i realtime contacts", buf, 8u);
    }

    [v26 setContacts:v69];
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v22 = v22;
  v72 = [v22 countByEnumeratingWithState:&v120 objects:v141 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = 0;
    v75 = *v121;
    groupa = *v121;
    v117 = v26;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v121 != v75)
        {
          objc_enumerationMutation(v22);
        }

        v77 = *(*(&v120 + 1) + 8 * i);
        v78 = [v77 duplicateKey];
        v79 = ([v78 entityType] != 22) | v74;

        if (v79)
        {
          v80 = [v77 duplicateKey];
          [v80 entityType];
          IsDelivery = SGEntityTypeIsDelivery();

          if (!IsDelivery)
          {
            continue;
          }

          v82 = [MEMORY[0x277D01F80] deliveryForEntity:v77 store:v118];
          v83 = [v26 deliveries];

          if (!v83)
          {
            [v26 setDeliveries:MEMORY[0x277CBEBF8]];
          }

          v84 = [v26 deliveries];
          v85 = [v84 mutableCopy];

          if (([v85 containsObject:v82] & 1) == 0 && v82)
          {
            [v85 addObject:v82];
          }

          [v26 setDeliveries:v85];
        }

        else
        {
          v86 = MEMORY[0x277D02070];
          v87 = [v77 duplicateKey];
          v82 = [v86 originForDuplicateKey:v87 entity:v77 parent:v119 store:v118];

          if (!v82)
          {
            v97 = [MEMORY[0x277CCA890] currentHandler];
            [v97 handleFailureInMethod:*(v108 + 128) object:*(v108 + 32) file:@"SGDSuggestManager+RealtimeDonations.m" lineNumber:687 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
          }

          v88 = v73;
          v89 = v22;
          v85 = [SGStorageReminder storageReminderFromEntity:v77 origin:v82];
          v90 = [v85 toReminder];
          v91 = sgRemindersLogHandle();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [(SGEntity *)v119 loggingIdentifier];
            v93 = [v90 loggingIdentifier];
            *buf = 138412546;
            v138 = v92;
            v139 = 2112;
            v140 = v93;
            _os_log_impl(&dword_231E60000, v91, OS_LOG_TYPE_DEFAULT, "Entity %@ -> SGReminder %@", buf, 0x16u);
          }

          v94 = [SGRemindersAdapter constructNotesForReminder:v85];
          v95 = [objc_alloc(MEMORY[0x277D020B0]) initWithReminder:v90 notes:v94];
          v136 = v95;
          v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
          v26 = v117;
          [v117 setReminders:v96];

          v22 = v89;
          v75 = groupa;
          v73 = v88;
          v74 = 1;
        }
      }

      v73 = [v22 countByEnumeratingWithState:&v120 objects:v141 count:16];
    }

    while (v73);
  }

  v98 = v26;
  v17 = v119;
  v3 = v109;
  v4 = v110;
LABEL_83:

  v99 = *MEMORY[0x277D85DE8];

  return v98;
}

id __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_98(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v56 = [v3 suggestionsCount];
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: validating cached results %tu", buf, 0xCu);
  }

  if (![v3 suggestionsCount])
  {
    v10 = v3;
    goto LABEL_30;
  }

  v5 = [*(a1 + 32) clientIsMail] ^ 1;
  v6 = [v3 contacts];
  v7 = mach_absolute_time() - *(a1 + 64);
  if (SGMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
  }

  [SGAggregateLogging contactsSuggested:v6 withElapsedTime:v7 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 inApp:v5];

  v8 = [v3 events];
  v9 = mach_absolute_time() - *(a1 + 64);
  if (SGMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
  }

  [SGAggregateLogging eventsSuggested:v8 withElapsedTime:v9 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 inApp:v5];

  v10 = [v3 copy];
  v11 = [v3 contacts];
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_100;
  v50 = &unk_27894EDE8;
  v53 = *(a1 + 80);
  v12 = *(a1 + 40);
  v54 = *(a1 + 81);
  v51 = *(a1 + 32);
  v52 = v12;
  v13 = sgFilter();
  [v10 setContacts:v13];

  v14 = objc_opt_new();
  v15 = [v3 events];
  v44[1] = MEMORY[0x277D85DD0];
  v44[2] = 3221225472;
  v44[3] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_104;
  v44[4] = &unk_27894EE10;
  v46 = *(a1 + 81);
  v44[5] = *(a1 + 32);
  v16 = v14;
  v45 = v16;
  v17 = sgFilter();
  [v10 setEvents:v17];

  v18 = [v10 events];
  if (![v18 count] || *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_19;
  }

  v19 = (*(*(a1 + 40) + 16))();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = +[SGMailClientUtil sharedInstance];
    v22 = (*(*(a1 + 40) + 16))();
    v23 = [v22 messageId];
    v44[0] = 0;
    v24 = [v21 verifyDKIMSignatureForMailWithIdentifier:v23 error:v44];
    v18 = v44[0];

    if (v24)
    {
      [v10 setEvents:MEMORY[0x277CBEBF8]];
      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v18;
        v26 = "SGSuggestManager validateResultsvalidateResults: DKIM verification resulted in failure: %@";
        v27 = v25;
        v28 = 12;
LABEL_17:
        _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else
    {
      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "SGSuggestManager validateResultsvalidateResults: Successfully verified DKIM signature.";
        v27 = v25;
        v28 = 2;
        goto LABEL_17;
      }
    }

LABEL_19:
  }

  v29 = MEMORY[0x277CBEBF8];
  v30 = [v10 events];
  if ([*(a1 + 32) clientIsMessages])
  {
    v31 = sgFilter();

    v30 = v31;
  }

  +[SGAggregateLogging suggestionImpressionsViaBanner:](SGAggregateLogging, "suggestionImpressionsViaBanner:", [v3 suggestionsCount]);
  +[SGAggregateLogging eventSuggestionImpressionsViaBanner:](SGAggregateLogging, "eventSuggestionImpressionsViaBanner:", [v30 count]);
  v32 = [v10 contacts];
  +[SGAggregateLogging contactSuggestionImpressionsViaBanner:](SGAggregateLogging, "contactSuggestionImpressionsViaBanner:", [v32 count]);

  +[SGAggregateLogging suggestionImpressionsViaBannerSuppressed:](SGAggregateLogging, "suggestionImpressionsViaBannerSuppressed:", [v3 suggestionsCount] - objc_msgSend(v10, "suggestionsCount"));
  v33 = MEMORY[0x277D020F8];
  v34 = [v10 contacts];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v29;
  }

  if (v30)
  {
    v29 = v30;
  }

  v37 = [*(a1 + 32) clientIsMail];
  v38 = MEMORY[0x277D02210];
  if (!v37)
  {
    v38 = MEMORY[0x277D02218];
  }

  [v33 recordBannerShownWithContacts:v36 events:v29 inApp:*v38];

  v39 = *(a1 + 32);
  v40 = [v3 reminders];
  v41 = [v39 filterRealtimeReminders:v40];
  [v10 setReminders:v41];

LABEL_30:
  v42 = *MEMORY[0x277D85DE8];

  return v10;
}

void __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2_113(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 containsObject:*(a1 + 32)] & 1) == 0)
  {
    [v3 addObject:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3_117(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 containsObject:*(a1 + 32)] & 1) == 0)
  {
    [v3 addObject:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = (*(*(a1 + 40) + 16))();
    v5 = [v4 senderIsBusinessChat];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 49) == 1)
  {
    v6 = +[SGSuggestHistory sharedSuggestHistory];
    v7 = [v6 isValidSuggestion:v3] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 32) harvestStore], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "realtimeContactIsSignificantOrSignificanceIsDisabled:", v3), v8, v9))
  {
    v9 = 1;
    [SGAggregateLogging hypotheticalSuggestionImpressionsIncludingActedOn:1];
  }

  if (!v7)
  {
    [SGAggregateLogging hypotheticalContactSuggestionImpressionsIncludingInsignificant:1];
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "filtering out suggestion that has already been acted on according to history", buf, 2u);
  }

  if (v5)
  {
LABEL_16:
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "filtering out suggestion for business chat text", v13, 2u);
    }
  }

LABEL_19:

  return v9 & ((v7 | v5) ^ 1u);
}

uint64_t __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = +[SGSuggestHistory sharedSuggestHistory];
    v5 = [v4 isValidSuggestion:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 event];
  if ([v6 isNaturalLanguageEvent] && objc_msgSend(MEMORY[0x277D02098], "onlyShowSignificantNLEvents"))
  {
    v7 = [*(a1 + 32) clientIsMessages];

    if (v7)
    {
      LODWORD(v8) = 1;
      goto LABEL_10;
    }

    v6 = [v3 event];
    v8 = ([v6 naturalLanguageEventAttributes] >> 8) & 1;
  }

  else
  {
    LODWORD(v8) = 1;
  }

LABEL_10:
  v9 = [v3 event];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [v3 event];
    v12 = [v11 opaqueKey];
    LODWORD(v10) = [v10 containsObject:v12];

    v13 = v10 ^ 1;
    v14 = *(a1 + 40);
    v15 = [v3 event];
    v16 = [v15 opaqueKey];
    [v14 addObject:v16];

    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 1;
    if (v8)
    {
LABEL_12:
      [SGAggregateLogging hypotheticalSuggestionImpressionsIncludingActedOn:1];
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  if (v5)
  {
LABEL_16:
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "filtering out suggestion that has already been acted on according to history", v22, 2u);
    }

    goto LABEL_21;
  }

  v18 = [v3 event];

  if (v18)
  {
    v19 = MEMORY[0x277D02060];
    v20 = [v3 event];
    [v19 recordInteractionForEventWithInterface:0 actionType:2 harvestedSGEvent:v20 curatedEKEvent:0];
  }

LABEL_21:

  return v8 & (v5 ^ 1) & v13;
}

uint64_t __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_108(uint64_t a1, void *a2)
{
  v2 = [a2 event];
  v3 = [v2 isNaturalLanguageEvent];

  return v3 ^ 1u;
}

void __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_74(id *a1)
{
  if (kSGDPluginNameURLPlugin_block_invoke__pasOnceToken24 != -1)
  {
    dispatch_once(&kSGDPluginNameURLPlugin_block_invoke__pasOnceToken24, &__block_literal_global_77);
  }

  v2 = kSGDPluginNameURLPlugin_block_invoke__pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3;
  block[3] = &unk_278956130;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  dispatch_async(v2, block);
}

intptr_t __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3_85(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 20000000000);
  v4 = dispatch_group_wait(v2, v3);

  if (v4)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "Timed out waiting for async realtime harvest work", v7, 2u);
    }
  }

  else
  {
    [*(a1 + 40) endHarvest];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SGDPluginManager sharedInstance];
  v3 = [v2 processSearchableItem:*(a1 + 32) harvestMetrics:*(a1 + 40)];

  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "Plugins finished processing message: %@", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
}

void __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke_2_75()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"_suggestionsFromMessage-plugins" qosClass:9];
  v2 = kSGDPluginNameURLPlugin_block_invoke__pasExprOnceResult;
  kSGDPluginNameURLPlugin_block_invoke__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __196__SGDSuggestManager_RealtimeDonations__realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage___block_invoke()
{
  v0 = +[SGSqlEntityStore sqlStoreInMemory];
  v1 = realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__inMemoryStore;
  realtimeSuggestionsForMailOrMessageWithHash_options_completion_completionDelivery_providedBy_searchableItem_dissectIfNecessary_processingType_isTextMessage__inMemoryStore = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)realtimeSuggestionsForMailOrMessageWithHash:(id)a3 options:(unint64_t)a4 completion:(id)a5 completionDelivery:(unint64_t)a6 providedBy:(id)a7 searchableItem:(id)a8 dissectIfNecessary:(BOOL)a9 isTextMessage:(BOOL)a10
{
  LOBYTE(v11) = a10;
  LOBYTE(v10) = a9;
  [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:a3 options:a4 completion:a5 completionDelivery:a6 providedBy:a7 searchableItem:a8 dissectIfNecessary:v10 processingType:2 isTextMessage:v11];
}

- (void)_suggestionsFromMessage:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 completionDelivery:(unint64_t)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a7;
  if (!v9)
  {
    goto LABEL_15;
  }

  v14 = [v12 attributeSet];
  v15 = [v14 authors];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [v12 domainIdentifier];
    v18 = [v17 length];

    if (v18)
    {
      v19 = [v12 protection];

      if (v19)
      {
        v20 = 1;
LABEL_16:
        v24 = [(SGDSuggestManager *)self harvestStore];
        v25 = [v12 bundleID];
        v26 = [v12 uniqueIdentifier];
        [v24 markReimportItemAsSeenByReceiverWithBundleId:v25 uniqueId:v26];

        v27 = [v12 uniqueIdentifier];
        v28 = [v27 dataUsingEncoding:4];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __128__SGDSuggestManager_RealtimeDonations___suggestionsFromMessage_options_dissectIfNecessary_completionDelivery_completionHandler___block_invoke;
        v30[3] = &unk_27894ED98;
        v31 = v12;
        BYTE1(v29) = 1;
        LOBYTE(v29) = v20;
        [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:v28 options:a4 completion:v13 completionDelivery:a6 providedBy:v30 searchableItem:v31 dissectIfNecessary:v29 isTextMessage:?];

        goto LABEL_17;
      }

      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Messages: _suggestionsFromMessage: Got message with no content protection type defined. Will not dissect..", buf, 2u);
      }

LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }

    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "SGDSuggestManager: Messages: _suggestionsFromMessage: Got message with no domainIdentifier (conversationIdentifier). Ignoring.";
      goto LABEL_10;
    }
  }

  else
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "SGDSuggestManager: Messages: _suggestionsFromMessage: Got message with no authors. Ignoring.";
LABEL_10:
      _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
    }
  }

  v13[2](v13, 0);
LABEL_17:
}

SGTextMessage *__128__SGDSuggestManager_RealtimeDonations___suggestionsFromMessage_options_dissectIfNecessary_completionDelivery_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [[SGTextMessage alloc] initWithSearchableItem:*(a1 + 32)];

  return v1;
}

- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 completionHandler:(id)a6 fullCompletionHandler:(id)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = v12;
  if (a7)
  {
    v14 = a3;
    [(SGDSuggestManager *)self suggestionsFromSingleMessage:v14 options:a4 completionDelivery:a5 completionHandler:v13 fullCompletionHandler:a7];

    v15 = sgLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager+RealtimeDonations: suggestionsFromMessage legacy path processing", buf, 2u);
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __130__SGDSuggestManager_RealtimeDonations__suggestionsFromMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke;
    v20[3] = &unk_27894ECF8;
    v21 = v12;
    v15 = a3;
    v16 = MEMORY[0x2383809F0](v20);
    v23[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v18 = +[SGDSuggestManager simpleWritebackHandler];
    [(SGDSuggestManager *)self batchSuggestionsFromMessages:v17 options:a4 completionDelivery:a5 batchCompletion:v16 writeBackCompletion:v18 shouldStopSignal:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __130__SGDSuggestManager_RealtimeDonations__suggestionsFromMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    if (v5)
    {
      v22 = [v4 objectAtIndexedSubscript:0];
      v20 = [v22 error];
      v21 = [v4 objectAtIndexedSubscript:0];
      v7 = [v21 tuple];
      v8 = [v7 contacts];
      v9 = [v4 objectAtIndexedSubscript:0];
      v10 = [v9 tuple];
      v11 = [v10 events];
      v12 = [v4 objectAtIndexedSubscript:0];
      v13 = [v12 tuple];
      v14 = [v13 invalidatedIdentifiers];
      (*(v6 + 16))(v6, v20, v8, v11, v14);
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D02208];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"no response from calling batchSuggestionsFromMessage";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v18 = [v15 errorWithDomain:v16 code:12 userInfo:v17];
      (*(v6 + 16))(v6, v18, 0, 0, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)suggestionsFromSingleMessage:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 completionHandler:(id)a6 fullCompletionHandler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = sgLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 bundleID];
    v17 = [v12 uniqueIdentifier];
    *buf = 138413058;
    v66 = v16;
    v67 = 2112;
    v68 = v17;
    v69 = 2048;
    v70 = a4;
    v71 = 2048;
    v72 = a5;
    _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Messages: suggestionsFromMessage: %@ : %@ options: %tu completionDelivery: %tu", buf, 0x2Au);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v19 = [v12 bundleID];

  if (!v19)
  {
    [v12 setBundleID:*MEMORY[0x277D41E60]];
  }

  v20 = [v12 protection];

  if (!v20)
  {
    [v12 setProtection:*MEMORY[0x277CCA1A0]];
  }

  v21 = MEMORY[0x277D41DF8];
  v22 = [v12 bundleID];
  LOBYTE(v21) = [v21 shouldAdmitContentFromBundleIdentifier:v22];

  if ((v21 & 1) == 0)
  {
    v39 = sgLogHandle();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v40 = "suggestionsFromMessage ignoring item since the bundle is disallowed by user's settings";
LABEL_22:
    _os_log_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
    goto LABEL_23;
  }

  v23 = [v12 domainIdentifier];
  v24 = [v23 length];

  if (!v24)
  {
    v39 = sgLogHandle();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v40 = "suggestionsFromMessage ignoring item since the domainIdentifier (conversationIdentifier) is nil";
    goto LABEL_22;
  }

  v25 = [v12 attributeSet];
  v26 = [v25 textContentNoCopy];

  if (v26)
  {
    v27 = objc_opt_new();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke;
    v61[3] = &unk_27894ED48;
    v62 = v13;
    v63 = v14;
    v52 = v27;
    [v27 wait:v61];
    if (a4 == 3 && !a5)
    {
      v28 = [SGSearchableItemIdTriple alloc];
      v29 = [v12 bundleID];
      v30 = [v12 domainIdentifier];
      v31 = [v12 uniqueIdentifier];
      v32 = [(SGSearchableItemIdTriple *)v28 initWithBundleId:v29 domainId:v30 uniqueId:v31];

      v33 = [(SGDSuggestManager *)self lastSuggestionsFromMessageLock];
      [v33 lock];

      v34 = [(SGDSuggestManager *)self lastSuggestionsFromMessageRequest];
      if ([(SGSearchableItemIdTriple *)v32 isEqualToSearchableItemIdTriple:v34])
      {
        v35 = sgLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v35, OS_LOG_TYPE_DEBUG, "suggestionsFromMessage consolidating repeated item with previous request", buf, 2u);
        }

        v36 = [(SGDSuggestManager *)self lastSuggestionsFromMessageResponse];
        v37 = [(SGDSuggestManager *)self lastSuggestionsFromMessageLock];
        [v37 unlock];

        v38 = [v52 completer];
        [v36 wait:v38];

LABEL_35:
        goto LABEL_36;
      }

      [(SGDSuggestManager *)self setLastSuggestionsFromMessageRequest:v32];
      [(SGDSuggestManager *)self setLastSuggestionsFromMessageResponse:v52];
      v41 = [(SGDSuggestManager *)self lastSuggestionsFromMessageLock];
      [v41 unlock];
    }

    v42 = [SGXpcTransaction transactionWithName:"suggestionsFromMessage message harvest queue"];
    v43 = [(SGDSuggestManager *)self messageHarvestQueue];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke_41;
    v54[3] = &unk_2789553C8;
    v54[4] = self;
    v44 = v12;
    v55 = v44;
    v58 = a4;
    v59 = a5;
    v60 = Current;
    v56 = v52;
    v32 = v42;
    v57 = v32;
    [v43 addOperationWithBlock:v54];

    if ((a4 & 0x4000000) == 0)
    {
      v45 = [MEMORY[0x277D41E00] defaultReceiver];
      v64 = v44;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      v47 = [v44 bundleID];
      v53 = 0;
      v48 = [v45 donateSearchableItems:v46 bundleIdentifier:v47 error:&v53];
      v49 = v53;

      if ((v48 & 1) == 0)
      {
        v50 = sgLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v66 = v49;
          _os_log_error_impl(&dword_231E60000, v50, OS_LOG_TYPE_ERROR, "SGDSuggestManager+RealtimeDonations: error donating message to ProactiveHarvesting: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_35;
  }

  v39 = sgLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v40 = "suggestionsFromMessage ignoring item since the textContent is nil";
    goto LABEL_22;
  }

LABEL_23:

  if (v13)
  {
    (*(v13 + 2))(v13, 0, 0, 0, 0);
  }

  if (v14)
  {
    (*(v14 + 2))(v14, 0, 0, 0, 0);
  }

LABEL_36:

  v51 = *MEMORY[0x277D85DE8];
}

void __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v14 contacts];
    v8 = [v14 events];
    v9 = [v14 invalidatedIdentifiers];
    (*(v6 + 16))(v6, v5, v7, v8, v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v14 contacts];
    v12 = [v14 events];
    v13 = [v14 invalidatedIdentifiers];
    (*(v10 + 16))(v10, v5, v11, v12, v13);
  }
}

void __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke_2;
  v15[3] = &unk_27894ED70;
  v18 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v14 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v14;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v16 = v10;
  v17 = v9;
  [v2 _suggestionsFromMessage:v3 options:v4 dissectIfNecessary:1 completionDelivery:v5 completionHandler:v15];
  v11 = [*(a1 + 40) uniqueIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x277D02120] sharedInstance];
    v13 = [*(a1 + 40) uniqueIdentifier];
    [v12 finishProcessingForUniqueIdentifier:v13];
  }
}

void __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
  v5 = objc_opt_new();
  [v5 setMethod:0];
  v6 = [MEMORY[0x277D41DA8] sharedInstance];
  [v6 trackDistributionForMessage:v5 value:v4];

  if (!v3)
  {
    v3 = objc_opt_new();
  }

  [*(a1 + 32) succeed:v3];
  v7 = +[SGChatLengthEstimator sharedInstance];
  v8 = [*(a1 + 40) domainIdentifier];
  [v7 recordMessageInChat:v8];

  v9 = [*(a1 + 48) messageHarvestQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __136__SGDSuggestManager_RealtimeDonations__suggestionsFromSingleMessage_options_completionDelivery_completionHandler_fullCompletionHandler___block_invoke_3;
  v10[3] = &unk_278954A30;
  v11 = *(a1 + 56);
  [v9 addOperationWithBlock:v10];
}

- (void)suggestionsFromMessage:(id)a3 options:(unint64_t)a4 fullCompletionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__SGDSuggestManager_RealtimeDonations__suggestionsFromMessage_options_fullCompletionHandler___block_invoke;
  v10[3] = &unk_27894ED20;
  v11 = v8;
  v9 = v8;
  [(SGDSuggestManager *)self suggestionsFromMessage:a3 options:a4 completionDelivery:1 completionHandler:0 fullCompletionHandler:v10];
}

void __93__SGDSuggestManager_RealtimeDonations__suggestionsFromMessage_options_fullCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [MEMORY[0x277D02140] responseWithError:a2];
  }

  else
  {
    [MEMORY[0x277D02140] responseWith:? also:? also:?];
  }
  v3 = ;
  (*(v2 + 16))(v2);
}

- (id)_emailContentCacheSalt
{
  if (_emailContentCacheSalt__pasOnceToken6 != -1)
  {
    dispatch_once(&_emailContentCacheSalt__pasOnceToken6, &__block_literal_global_21324);
  }

  v3 = _emailContentCacheSalt__pasExprOnceResult;

  return v3;
}

void __62__SGDSuggestManager_RealtimeDonations___emailContentCacheSalt__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [@"kSuggestionsFromEmailContentCacheSalt" dataUsingEncoding:4];
  v2 = _emailContentCacheSalt__pasExprOnceResult;
  _emailContentCacheSalt__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __147__SGDSuggestManager_RealtimeDonations___suggestionsFromSearchableItem_options_dissectIfNecessary_processingType_completionDelivery_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v4 objectAtIndexedSubscript:0];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v8 = MEMORY[0x277D02138];
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D02208];
      v15 = *MEMORY[0x277CCA450];
      v16[0] = @"no response from calling batchSuggestionsFromSearchableItems";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v9 errorWithDomain:v10 code:12 userInfo:v11];
      v13 = [v8 responseWithError:v12];
      (*(v6 + 16))(v6, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_suggestionsFromSingleSearchableItem:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 processingType:(unint64_t)a6 completionDelivery:(unint64_t)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = [v14 attributeSet];
  v17 = [v16 emailHeaders];

  v18 = [v14 attributeSet];
  v19 = [v18 accountIdentifier];

  if (v17 && v19)
  {
    v31 = a4;
    if ([MEMORY[0x277D41E30] mailItemIsSPAM:v14])
    {
      v20 = sgLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        v24 = [MEMORY[0x277D02138] responseWith:MEMORY[0x277CBEBF8]];
        v15[2](v15, v24);
        goto LABEL_15;
      }

      *buf = 0;
      v21 = "SGDSuggestManager: Mail: Not providing suggestions for searchable item that is spam.";
    }

    else
    {
      if (![MEMORY[0x277D41E30] mailItemIsInTrash:v14])
      {
        v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
        [(SGDSuggestManager *)self _emailContentCacheSalt];
        v27 = v30 = a7;
        v24 = SGSha256Data(v26, v27);

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __153__SGDSuggestManager_RealtimeDonations___suggestionsFromSingleSearchableItem_options_dissectIfNecessary_processingType_completionDelivery_withCompletion___block_invoke;
        v34[3] = &unk_27894ECA8;
        v35 = v15;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __153__SGDSuggestManager_RealtimeDonations___suggestionsFromSingleSearchableItem_options_dissectIfNecessary_processingType_completionDelivery_withCompletion___block_invoke_2;
        v32[3] = &unk_27894ECD0;
        v33 = v14;
        LOBYTE(v29) = 0;
        LOBYTE(v28) = a5;
        [(SGDSuggestManager *)self realtimeSuggestionsForMailOrMessageWithHash:v24 options:v31 completion:v34 completionDelivery:v30 providedBy:v32 searchableItem:v33 dissectIfNecessary:v28 processingType:a6 isTextMessage:v29];

        goto LABEL_15;
      }

      v20 = sgLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v21 = "SGDSuggestManager: Mail: Skipping suggestions for searchable item that is in trash.";
    }

    _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_13;
  }

  v22 = sgLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, "SGDSuggestManager: Mail: Asked for suggestions for a searchable item without headers dictionary or source, returning 0 suggestions", buf, 2u);
  }

  v23 = MEMORY[0x277D02138];
  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:4 userInfo:0];
  v25 = [v23 responseWithError:v24];
  v15[2](v15, v25);

LABEL_15:
}

void __153__SGDSuggestManager_RealtimeDonations___suggestionsFromSingleSearchableItem_options_dissectIfNecessary_processingType_completionDelivery_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D02138];
    v5 = [a2 combinedSuggestions];
    v4 = [v3 responseWith:v5];
    (*(v2 + 16))(v2, v4);
  }
}

- (void)batchSuggestionsFromMessages:(id)a3 options:(unint64_t)a4 completionDelivery:(unint64_t)a5 batchCompletion:(id)a6 writeBackCompletion:(id)a7 shouldStopSignal:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v25 = a6;
  v13 = a7;
  v14 = a8;
  v15 = sgLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = [v12 count];
    _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: batchSuggestionsFromMessages: %lu item(s)", buf, 0xCu);
  }

  v28 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = dispatch_group_create();
  if (v13)
  {
    v18 = a4 | 0x8000000;
  }

  else
  {
    v18 = a4;
  }

  if ([v12 count])
  {
    v19 = 0;
    do
    {
      if (v14 && (v14[2](v14) & 1) != 0)
      {
        break;
      }

      v20 = [v12 objectAtIndexedSubscript:v19];
      dispatch_group_enter(v17);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __146__SGDSuggestManager_BatchDonations__batchSuggestionsFromMessages_options_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke;
      v32[3] = &unk_27894FD30;
      v33 = v28;
      v37 = v13;
      v34 = v16;
      v35 = v20;
      v36 = v17;
      v21 = v20;
      [(SGDSuggestManager *)self suggestionsFromSingleMessage:v21 options:v18 completionDelivery:a5 completionHandler:v32 fullCompletionHandler:0];

      ++v19;
    }

    while (v19 < [v12 count]);
  }

  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v25)
  {
    v22 = [v28 copy];
    v25[2](v25, v22);
  }

  if (v13 && [v16 count])
  {
    v23 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __146__SGDSuggestManager_BatchDonations__batchSuggestionsFromMessages_options_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke_2;
    block[3] = &unk_278955EE8;
    v30 = v16;
    v31 = v13;
    dispatch_async(v23, block);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __146__SGDSuggestManager_BatchDonations__batchSuggestionsFromMessages_options_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  objc_sync_enter(v12);
  v13 = *(a1 + 32);
  v14 = [[SGMessageCompletionHandlerParams alloc] initWithError:v19 foundContacts:v9 foundEvents:v10 invalidatedMessageIdentifiers:v11];
  [v13 addObject:v14];

  objc_sync_exit(v12);
  if (*(a1 + 64))
  {
    v15 = *(a1 + 40);
    objc_sync_enter(v15);
    v16 = [*(a1 + 48) uniqueIdentifier];
    v17 = [*(a1 + 48) bundleID];
    v18 = [SGDSuggestManager getProcessedItemFromEvents:v10 uniqueID:v16 bundleID:v17];

    if (v18)
    {
      [*(a1 + 40) addObject:v18];
    }

    objc_sync_exit(v15);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __146__SGDSuggestManager_BatchDonations__batchSuggestionsFromMessages_options_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  [SGDSuggestManager updateOriginalDocumentsWith:v2 completionHandler:*(a1 + 40)];
}

- (void)batchSuggestionsFromSearchableItems:(id)a3 options:(unint64_t)a4 dissectIfNecessary:(BOOL)a5 processingType:(unint64_t)a6 completionDelivery:(unint64_t)a7 batchCompletion:(id)a8 writeBackCompletion:(id)a9 shouldStopSignal:(id)a10
{
  v27 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v25 = a8;
  v13 = a9;
  v14 = a10;
  v15 = sgLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = [v12 count];
    _os_log_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEFAULT, "**** SGDSuggestManager: batchSuggestionsFromSearchableItems: %lu item(s)", buf, 0xCu);
  }

  v30 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = dispatch_group_create();
  v18 = v13;
  if (v13)
  {
    a4 |= 0x8000000uLL;
  }

  if ([v12 count])
  {
    v19 = 0;
    do
    {
      if (v14 && (v14[2](v14) & 1) != 0)
      {
        break;
      }

      v20 = [v12 objectAtIndexedSubscript:v19];
      dispatch_group_enter(v17);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __187__SGDSuggestManager_BatchDonations__batchSuggestionsFromSearchableItems_options_dissectIfNecessary_processingType_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke;
      v34[3] = &unk_27894FD08;
      v35 = v30;
      v39 = v18;
      v36 = v16;
      v37 = v20;
      v38 = v17;
      v21 = v20;
      [(SGDSuggestManager *)self _suggestionsFromSingleSearchableItem:v21 options:a4 dissectIfNecessary:v27 processingType:a6 completionDelivery:a7 withCompletion:v34];

      ++v19;
    }

    while (v19 < [v12 count]);
  }

  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v25)
  {
    v22 = [v30 copy];
    v25[2](v25, v22);
  }

  if (v18 && [v16 count])
  {
    v23 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __187__SGDSuggestManager_BatchDonations__batchSuggestionsFromSearchableItems_options_dissectIfNecessary_processingType_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke_2;
    block[3] = &unk_278955EE8;
    v32 = v16;
    v33 = v18;
    dispatch_async(v23, block);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __187__SGDSuggestManager_BatchDonations__batchSuggestionsFromSearchableItems_options_dissectIfNecessary_processingType_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v9];
  objc_sync_exit(v3);

  if (*(a1 + 64))
  {
    v4 = *(a1 + 40);
    objc_sync_enter(v4);
    v5 = [v9 response1];
    v6 = [*(a1 + 48) uniqueIdentifier];
    v7 = [*(a1 + 48) bundleID];
    v8 = [SGDSuggestManager getProcessedItemFromEvents:v5 uniqueID:v6 bundleID:v7];

    if (v8)
    {
      [*(a1 + 40) addObject:v8];
    }

    objc_sync_exit(v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __187__SGDSuggestManager_BatchDonations__batchSuggestionsFromSearchableItems_options_dissectIfNecessary_processingType_completionDelivery_batchCompletion_writeBackCompletion_shouldStopSignal___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  [SGDSuggestManager updateOriginalDocumentsWith:v2 completionHandler:*(a1 + 40)];
}

@end