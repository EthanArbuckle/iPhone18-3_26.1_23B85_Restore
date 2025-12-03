@interface SGSuggestionsService
+ (BOOL)hasEntitlement:(id)entitlement;
+ (id)_daemonConnectionFutureForMachServiceName:(id)name protocol:(id)protocol useCache:(BOOL)cache;
+ (id)daemonConnections;
+ (id)inProcessSuggestManager;
+ (id)serviceForContacts;
+ (id)serviceForDeliveries;
+ (id)serviceForEvents;
+ (id)serviceForFides;
+ (id)serviceForInternal;
+ (id)serviceForIpsos;
+ (id)serviceForMail;
+ (id)serviceForMessages;
+ (id)serviceForReminders;
+ (id)serviceForSpotlightKnowledge;
+ (id)serviceForURLs;
+ (void)prepareForQuery;
+ (void)setInProcessSuggestManager:(id)manager;
- (BOOL)addInteractions:(id)interactions bundleId:(id)id error:(id *)error;
- (BOOL)addSearchableItems:(id)items error:(id *)error;
- (BOOL)clearCachesFully:(BOOL)fully error:(id *)error;
- (BOOL)confirmContact:(id)contact error:(id *)error;
- (BOOL)confirmContactDetailRecord:(id)record confirmationUI:(int)i error:(id *)error;
- (BOOL)confirmContactDetailRecord:(id)record error:(id *)error;
- (BOOL)confirmEvent:(id)event error:(id *)error;
- (BOOL)confirmEventByRecordId:(id)id error:(id *)error;
- (BOOL)confirmRealtimeReminder:(id)reminder error:(id *)error;
- (BOOL)confirmRecord:(id)record error:(id *)error;
- (BOOL)confirmReminderByRecordId:(id)id error:(id *)error;
- (BOOL)daemonExit:(id *)exit;
- (BOOL)deleteEventByRecordId:(id)id error:(id *)error;
- (BOOL)isEnabledWithError:(id *)error;
- (BOOL)launchAppForSuggestedEventUsingLaunchInfo:(id)info error:(id *)error;
- (BOOL)logUserCreatedReminderTitle:(id)title error:(id *)error;
- (BOOL)ping:(id *)ping;
- (BOOL)prepareForRealtimeExtraction:(id *)extraction;
- (BOOL)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values error:(id *)error;
- (BOOL)rebuildNamesForDetailCache:(id *)cache;
- (BOOL)registerURLFeedback:(unsigned __int8)feedback absoluteURL:(id)l error:(id *)error;
- (BOOL)rejectContact:(id)contact error:(id *)error;
- (BOOL)rejectContact:(id)contact rejectionUI:(int)i error:(id *)error;
- (BOOL)rejectContactDetailRecord:(id)record error:(id *)error;
- (BOOL)rejectContactDetailRecord:(id)record rejectionUI:(int)i error:(id *)error;
- (BOOL)rejectEvent:(id)event error:(id *)error;
- (BOOL)rejectEventByRecordId:(id)id error:(id *)error;
- (BOOL)rejectRealtimeReminder:(id)reminder error:(id *)error;
- (BOOL)rejectRecord:(id)record error:(id *)error;
- (BOOL)rejectRecord:(id)record rejectionUI:(int)i error:(id *)error;
- (BOOL)rejectReminderByRecordId:(id)id error:(id *)error;
- (BOOL)reminderAlarmTriggeredForRecordId:(id)id error:(id *)error;
- (BOOL)removeAllStoredPseudoContacts:(id *)contacts;
- (BOOL)reportMessagesFound:(id)found lost:(id)lost error:(id *)error;
- (BOOL)resetConfirmationAndRejectionHistory:(id *)history;
- (BOOL)resolveFullDownloadRequests:(id)requests error:(id *)error;
- (BOOL)sendRTCLogs:(id *)logs;
- (BOOL)sleep:(id *)sleep;
- (BOOL)spotlightReimportFromIdentifier:(id)identifier forPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate error:(id *)error;
- (BOOL)updateMessages:(id)messages state:(unint64_t)state error:(id *)error;
- (double)syncTimeout;
- (id)_daemonConnection;
- (id)_remoteSuggestionManager;
- (id)allContactsLimitedTo:(unint64_t)to error:(id *)error;
- (id)allContactsWithSnippets:(BOOL)snippets limitTo:(unint64_t)to error:(id *)error;
- (id)allDeliveriesWithLimit:(unint64_t)limit error:(id *)error;
- (id)allEventsLimitedTo:(unint64_t)to error:(id *)error;
- (id)allRemindersLimitedTo:(unint64_t)to error:(id *)error;
- (id)birthdayExtractionsForInterval:(id)interval error:(id *)error;
- (id)cacheSnapshotFuture;
- (id)celebrationExtractionsForInterval:(id)interval error:(id *)error;
- (id)cnContactMatchesForRecordId:(id)id error:(id *)error;
- (id)cnContactMatchesForRecordIds:(id)ids error:(id *)error;
- (id)contactFromRecordID:(id)d;
- (id)contactFromRecordID:(id)d error:(id *)error;
- (id)contactMatchesByEmailAddress:(id)address;
- (id)contactMatchesByEmailAddress:(id)address error:(id *)error;
- (id)contactMatchesByPhoneNumber:(id)number;
- (id)contactMatchesByPhoneNumber:(id)number error:(id *)error;
- (id)contactMatchesBySocialProfile:(id)profile bundleIdentifier:(id)identifier error:(id *)error;
- (id)contactMatchesBySocialProfile:(id)profile error:(id *)error;
- (id)contactMatchesWithContact:(id)contact limitTo:(unint64_t)to error:(id *)error;
- (id)contactMatchesWithContactIdentifier:(id)identifier limitTo:(unint64_t)to error:(id *)error;
- (id)contactMatchesWithContactIdentifiers:(id)identifiers limitTo:(unint64_t)to error:(id *)error;
- (id)dissectAttachmentsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error;
- (id)emailAddressIsSignificant:(id)significant error:(id *)error;
- (id)eventFromRecordID:(id)d error:(id *)error;
- (id)eventFromUniqueId:(id)id error:(id *)error;
- (id)extractAttributesAndDonate:(id)donate error:(id *)error;
- (id)filteredSuggestionsFromExtractions:(id)extractions origin:(id)origin options:(unint64_t)options error:(id *)error;
- (id)foundInStringForRecordId:(id)id style:(unsigned __int8)style error:(id *)error;
- (id)fullDownloadRequestBatch:(unint64_t)batch error:(id *)error;
- (id)harvestedSuggestionsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error;
- (id)identifyComposeWarningsFromSubject:(id)subject content:(id)content attributes:(id)attributes toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients originalToRecipients:(id)toRecipients originalCcRecipients:(id)self0 attachments:(id)self1 error:(id *)self2;
- (id)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date error:(id *)error;
- (id)interactionStoreLookupForDetail:(id)detail error:(id *)error;
- (id)ipsosMessagesFromSearchableItems:(id)items error:(id *)error;
- (id)launchInfoForSuggestedEventWithUniqueIdentifier:(id)identifier sourceURL:(id)l clientLocale:(id)locale error:(id *)error;
- (id)messagesToRefreshWithError:(id *)error;
- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe error:(id *)error;
- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe onlySignificant:(BOOL)significant error:(id *)error;
- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe onlySignificant:(BOOL)significant supportsInfoLookup:(BOOL)lookup error:(id *)error;
- (id)namesForDetailCaches;
- (id)originFromRecordId:(id)id error:(id *)error;
- (id)powerState;
- (id)predictedCCEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds error:(id *)error;
- (id)predictedToEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds error:(id *)error;
- (id)recentURLsWithLimit:(unsigned int)limit error:(id *)error;
- (id)registerContactsChangeObserver:(id)observer;
- (id)registerEventsChangeObserver:(id)observer;
- (id)reminderTitleForContent:(id)content error:(id *)error;
- (id)reportMailIntelligenceFollowUpUserEngagement:(int64_t)engagement forStringFromFollowUpWarning:(id)warning error:(id *)error;
- (id)reportUserEngagement:(BOOL)engagement forWarning:(id)warning error:(id *)error;
- (id)reportValue:(BOOL)value forFeatureSetting:(int64_t)setting error:(id *)error;
- (id)saliencyFromEmailHeaders:(id)headers error:(id *)error;
- (id)saliencyFromRFC822Data:(id)data error:(id *)error;
- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)types mailboxIds:(id)ids receivedOnOrAfter:(id)after ascending:(BOOL)ascending limit:(unint64_t)limit error:(id *)error;
- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field limit:(unint64_t)limit error:(id *)error;
- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit error:(id *)error;
- (id)suggestContactMatchesWithFullTextSearch:(id)search limitTo:(unint64_t)to error:(id *)error;
- (id)suggestContactMatchesWithMessagingPrefix:(id)prefix limitTo:(unint64_t)to error:(id *)error;
- (id)suggestEventsInFutureLimitTo:(unint64_t)to error:(id *)error;
- (id)suggestEventsInFutureLimitTo:(unint64_t)to options:(unsigned int)options error:(id *)error;
- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to error:(id *)error;
- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to options:(unsigned int)options error:(id *)error;
- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to error:(id *)error;
- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to options:(unsigned int)options error:(id *)error;
- (id)suggestionsFromEmailContent:(id)content headers:(id)headers source:(id)source options:(unint64_t)options error:(id *)error;
- (id)suggestionsFromRFC822Data:(id)data source:(id)source options:(unint64_t)options error:(id *)error;
- (id)suggestionsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error;
- (id)suggestionsFromSearchableItem:(id)item options:(unint64_t)options processingType:(unint64_t)type error:(id *)error;
- (id)suggestionsFromSimpleMailMessage:(id)message headers:(id)headers options:(unint64_t)options error:(id *)error;
- (id)titleSuggestionForMessage:(id)message error:(id *)error;
- (id)topSalienciesForMailboxId:(id)id limit:(int64_t)limit error:(id *)error;
- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers containingSubstring:(id)substring flagFilter:(unsigned __int8)filter limit:(unsigned int)limit error:(id *)error;
- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers limit:(unsigned int)limit error:(id *)error;
- (int)_confirmRejectUI;
- (void)_clearHarvestStoreCache;
- (void)addInteractions:(id)interactions bundleId:(id)id withCompletion:(id)completion;
- (void)addSearchableItemMetadata:(id)metadata htmlData:(id)data completion:(id)completion;
- (void)addSearchableItems:(id)items withCompletion:(id)completion;
- (void)allContactsLimitedTo:(unint64_t)to withCompletion:(id)completion;
- (void)allDeliveriesWithLimit:(unint64_t)limit withCompletion:(id)completion;
- (void)allEventsLimitedTo:(unint64_t)to withCompletion:(id)completion;
- (void)allRemindersLimitedTo:(unint64_t)to withCompletion:(id)completion;
- (void)birthdayExtractionsForInterval:(id)interval withCompletion:(id)completion;
- (void)celebrationExtractionsForInterval:(id)interval withCompletion:(id)completion;
- (void)cnContactMatchesForRecordId:(id)id withCompletion:(id)completion;
- (void)cnContactMatchesForRecordIds:(id)ids withCompletion:(id)completion;
- (void)confirmContact:(id)contact withCompletion:(id)completion;
- (void)confirmContactDetailRecord:(id)record withCompletion:(id)completion;
- (void)confirmEvent:(id)event withCompletion:(id)completion;
- (void)confirmEventByRecordId:(id)id withCompletion:(id)completion;
- (void)confirmRealtimeReminder:(id)reminder withCompletion:(id)completion;
- (void)confirmRecord:(id)record withCompletion:(id)completion;
- (void)confirmReminderByRecordId:(id)id withCompletion:(id)completion;
- (void)contactFromRecordID:(id)d withCompletion:(id)completion;
- (void)contactMatchesByEmailAddress:(id)address withCompletion:(id)completion;
- (void)contactMatchesByPhoneNumber:(id)number withCompletion:(id)completion;
- (void)contactMatchesBySocialProfile:(id)profile bundleIdentifier:(id)identifier withCompletion:(id)completion;
- (void)contactMatchesBySocialProfile:(id)profile withCompletion:(id)completion;
- (void)contactMatchesWithContact:(id)contact limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)contactMatchesWithContactIdentifier:(id)identifier limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)contactMatchesWithContactIdentifiers:(id)identifiers limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)daemonExitWithCompletion:(id)completion;
- (void)deleteCloudKitZoneWithCompletion:(id)completion;
- (void)deleteEventByRecordId:(id)id withCompletion:(id)completion;
- (void)deleteInteractionsWithBundleId:(id)id completion:(id)completion;
- (void)deleteInteractionsWithBundleId:(id)id groupIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteInteractionsWithBundleId:(id)id identifiers:(id)identifiers completion:(id)completion;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier domainIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)dissectAttachmentsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion;
- (void)emailAddressIsSignificant:(id)significant withCompletion:(id)completion;
- (void)evaluateRecipe:(id)recipe attachments:(id)attachments completion:(id)completion;
- (void)eventFromRecordID:(id)d withCompletion:(id)completion;
- (void)eventFromUniqueId:(id)id withCompletion:(id)completion;
- (void)eventsForSchemas:(id)schemas usingStore:(id)store completion:(id)completion;
- (void)extractAttributesAndDonate:(id)donate withCompletion:(id)completion;
- (void)filteredSuggestionsFromExtractions:(id)extractions origin:(id)origin options:(unint64_t)options withCompletion:(id)completion;
- (void)fullDownloadRequestBatch:(unint64_t)batch withCompletion:(id)completion;
- (void)harvestedSuggestionsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion;
- (void)identifyComposeWarningsFromSubject:(id)subject content:(id)content attributes:(id)attributes toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients originalToRecipients:(id)toRecipients originalCcRecipients:(id)self0 attachments:(id)self1 withCompletion:(id)self2;
- (void)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date withCompletion:(id)completion;
- (void)interactionStoreLookupForDetail:(id)detail withCompletion:(id)completion;
- (void)ipsosMessagesFromSearchableItems:(id)items withCompletion:(id)completion;
- (void)keysForSchemas:(id)schemas completion:(id)completion;
- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)info withCompletion:(id)completion;
- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)identifier sourceURL:(id)l clientLocale:(id)locale withCompletion:(id)completion;
- (void)logMetricAutocompleteUserSelectedRecordId:(id)id contactIdentifier:(id)identifier bundleId:(id)bundleId;
- (void)logMetricContactCreated:(id)created contactIdentifier:(id)identifier bundleId:(id)id;
- (void)logMetricContactSearchResultSelected:(id)selected contactIdentifier:(id)identifier bundleId:(id)id;
- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)id;
- (void)logMetricSuggestedContactDetailShown:(id)shown contactIdentifier:(id)identifier bundleId:(id)id;
- (void)logMetricSuggestedContactDetailUsed:(id)used contactIdentifier:(id)identifier bundleId:(id)id;
- (void)logUserCreatedReminderTitle:(id)title withCompletion:(id)completion;
- (void)messagesToRefreshWithCompletion:(id)completion;
- (void)originFromRecordId:(id)id withCompletion:(id)completion;
- (void)pingWithCompletion:(id)completion;
- (void)planReceivedFromServerWithPayload:(id)payload completion:(id)completion;
- (void)predictedCCEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds withCompletion:(id)completion;
- (void)predictedToEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds withCompletion:(id)completion;
- (void)prepareForRealtimeExtractionWithCompletion:(id)completion;
- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values withCompletion:(id)completion;
- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)realtimeSuggestionsFromURL:(id)l title:(id)title HTMLPayload:(id)payload extractionDate:(id)date withCompletion:(id)completion;
- (void)rebuildNamesForDetailCacheWithCompletion:(id)completion;
- (void)rejectContact:(id)contact withCompletion:(id)completion;
- (void)rejectContactDetailRecord:(id)record withCompletion:(id)completion;
- (void)rejectEvent:(id)event withCompletion:(id)completion;
- (void)rejectEventByRecordId:(id)id withCompletion:(id)completion;
- (void)rejectRealtimeReminder:(id)reminder withCompletion:(id)completion;
- (void)rejectRecord:(id)record withCompletion:(id)completion;
- (void)rejectReminderByRecordId:(id)id withCompletion:(id)completion;
- (void)reminderAlarmTriggeredForRecordId:(id)id withCompletion:(id)completion;
- (void)reminderTitleForContent:(id)content withCompletion:(id)completion;
- (void)removeAllStoredPseudoContactsWithCompletion:(id)completion;
- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)engagement forStringFromFollowUpWarning:(id)warning withCompletion:(id)completion;
- (void)reportMessagesFound:(id)found lost:(id)lost withCompletion:(id)completion;
- (void)resetConfirmationAndRejectionHistoryWithCompletion:(id)completion;
- (void)resolveFullDownloadRequests:(id)requests withCompletion:(id)completion;
- (void)saliencyFromEmailHeaders:(id)headers withCompletion:(id)completion;
- (void)saliencyFromRFC822Data:(id)data withCompletion:(id)completion;
- (void)setSyncTimeout:(double)timeout;
- (void)sleepWithCompletion:(id)completion;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)field limit:(unint64_t)limit withCompletion:(id)completion;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit withCompletion:(id)completion;
- (void)spotlightReimportFromIdentifier:(id)identifier forPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate withCompletion:(id)completion;
- (void)suggestContactMatchesWithFullTextSearch:(id)search limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)suggestContactMatchesWithMessagingPrefix:(id)prefix limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)suggestEventsInFutureLimitTo:(unint64_t)to withCompletion:(id)completion;
- (void)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to withCompletion:(id)completion;
- (void)suggestionsFromEmailContent:(id)content headers:(id)headers source:(id)source options:(unint64_t)options withCompletion:(id)completion;
- (void)suggestionsFromRFC822Data:(id)data source:(id)source options:(unint64_t)options withCompletion:(id)completion;
- (void)suggestionsFromSearchableItem:(id)item options:(unint64_t)options processingType:(unint64_t)type withCompletion:(id)completion;
- (void)suggestionsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion;
- (void)suggestionsFromSimpleMailMessage:(id)message headers:(id)headers options:(unint64_t)options withCompletion:(id)completion;
- (void)suggestionsFromURL:(id)l title:(id)title HTMLPayload:(id)payload withCompletion:(id)completion;
- (void)titleSuggestionForMessage:(id)message withCompletion:(id)completion;
- (void)topSalienciesForMailboxId:(id)id limit:(int64_t)limit withCompletion:(id)completion;
- (void)updateMessages:(id)messages state:(unint64_t)state withCompletion:(id)completion;
- (void)waitForEventWithIdentifier:(id)identifier toAppearInEventStoreWithCompletion:(id)completion;
- (void)waitForEventWithIdentifier:(id)identifier toAppearInEventStoreWithLastModificationDate:(id)date completion:(id)completion;
@end

@implementation SGSuggestionsService

+ (id)serviceForContacts
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.contacts" protocol:&unk_1F387B388];

  return v2;
}

void __41__SGSuggestionsService_daemonConnections__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:1];
  v3 = [v1 initWithGuardedData:v2];
  v4 = daemonConnections__pasExprOnceResult;
  daemonConnections__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)daemonConnections
{
  if (daemonConnections__pasOnceToken10 != -1)
  {
    dispatch_once(&daemonConnections__pasOnceToken10, &__block_literal_global_338);
  }

  v3 = daemonConnections__pasExprOnceResult;

  return v3;
}

- (id)_remoteSuggestionManager
{
  v3 = objc_autoreleasePoolPush();
  managerForTesting = self->_managerForTesting;
  if (managerForTesting)
  {
    v5 = managerForTesting;
  }

  else
  {
    v6 = +[SGSuggestionsService inProcessSuggestManager];
    if (v6)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_debug_impl(&dword_1BA729000, v7, OS_LOG_TYPE_DEBUG, "_remoteSuggestionManager using in-process suggest manager", v11, 2u);
      }

      v5 = [[SGRemoteObjectProxy alloc] initWithInProcessSuggestManager:v6];
    }

    else
    {
      v8 = [SGRemoteObjectProxy alloc];
      _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
      v5 = [(SGRemoteObjectProxy *)v8 initWithConnection:_daemonConnection queuesRequestsIfBusy:self->_queuesRequestsIfBusy];
    }
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

+ (id)inProcessSuggestManager
{
  pthread_mutex_lock(&_inProcessSuggestManagerLock);
  v2 = _inProcessSuggestManager;
  pthread_mutex_unlock(&_inProcessSuggestManagerLock);

  return v2;
}

+ (id)serviceForURLs
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.urls" protocol:&unk_1F387B530];

  return v2;
}

void __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA729000, v4, OS_LOG_TYPE_DEBUG, "namesForDetail: cacheSnapshot: will request new snapshot from suggestd", buf, 2u);
  }

  v5 = [v3 workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_581;
  v7[3] = &unk_1E7EFB4F8;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_581(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2207;
  v32 = __Block_byref_object_dispose__2208;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2207;
  v26 = __Block_byref_object_dispose__2208;
  v27 = 0;
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA729000, v2, OS_LOG_TYPE_DEBUG, "namesForDetail: cacheSnapshot: now on future work queue", buf, 2u);
  }

  v3 = [*(a1 + 32) _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_582;
  v21[3] = &unk_1E7EFB8B8;
  v21[4] = &v22;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_2;
  v20[3] = &unk_1E7EFB8E0;
  v20[4] = &v28;
  [v4 namesForDetailCacheSnapshotsWithCompletion:v20];

  v5 = v29[5];
  if (v23[5])
  {
    if (v5)
    {
      __assert_rtn("[SGSuggestionsService cacheSnapshotFuture]_block_invoke_3", "SGSuggestionsService.m", 1233, "error == nil || response == nil");
    }

    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v18 = v23[5];
      *buf = 138412290;
      v35 = v18;
      _os_log_debug_impl(&dword_1BA729000, v6, OS_LOG_TYPE_DEBUG, "namesForDetail: cacheSnapshot: got xpc response with error %@", buf, 0xCu);
    }

    [*(a1 + 40) disassociateFromParentObject];
    [*(a1 + 40) fail:v23[5]];
  }

  else if (v5)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA729000, v7, OS_LOG_TYPE_DEBUG, "namesForDetail: cacheSnapshot: got xpc response with snapshot", buf, 2u);
    }

    v8 = objc_opt_new();
    v9 = [v29[5] response1];
    v10 = v8[2];
    v8[2] = v9;

    v11 = [v29[5] response2];
    v12 = v8[1];
    v8[1] = v11;

    v13 = [v29[5] response3];
    v14 = v8[3];
    v8[3] = v13;

    [*(a1 + 40) succeed:v8];
    v15 = MEMORY[0x1E69C5D10];
    v16 = dispatch_get_global_queue(17, 0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_587;
    v19[3] = &unk_1E7EFD118;
    v19[4] = *(a1 + 32);
    [v15 runAsyncOnQueue:v16 afterDelaySeconds:v19 block:10.0];
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_daemonConnection
{
  v3 = objc_autoreleasePoolPush();
  wait = [(SGFuture *)self->_daemonConnectionFuture wait];
  result = [(SGFuture *)self->_daemonConnectionFuture result];
  objc_autoreleasePoolPop(v3);
  return result;
}

- (id)cacheSnapshotFuture
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke;
  v6[3] = &unk_1E7EFB908;
  v6[4] = self;
  v3 = [SGFuture futureForObject:self withKey:a2 onCreate:v6];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_snapshotFuture, v3);
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)serviceForEvents
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.events" protocol:&unk_1F387B7A0];

  return v2;
}

void __70__SGSuggestionsService_foundInStringForRecordId_style_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)foundInStringForRecordId:(id)id style:(unsigned __int8)style error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__SGSuggestionsService_foundInStringForRecordId_style_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  v13[4] = self;
  v14 = idCopy;
  styleCopy = style;
  v10 = idCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __61__SGSuggestionsService_foundInStringForRecordId_style_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SGSuggestionsService_foundInStringForRecordId_style_error___block_invoke_2;
  v8[3] = &unk_1E7EFB840;
  v9 = v3;
  v7 = v3;
  [v4 foundInStringForRecordId:v5 style:v6 withCompletion:v8];
}

void __71__SGSuggestionsService_registerURLFeedback_absoluteURL_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)registerURLFeedback:(unsigned __int8)feedback absoluteURL:(id)l error:(id *)error
{
  lCopy = l;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_registerURLFeedback_absoluteURL_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  feedbackCopy = feedback;
  v13[4] = self;
  v14 = lCopy;
  v10 = lCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __62__SGSuggestionsService_registerURLFeedback_absoluteURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SGSuggestionsService_registerURLFeedback_absoluteURL_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v6 registerURLFeedback:v4 absoluteURL:v5 withCompletion:v8];
}

void __137__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers containingSubstring:(id)substring flagFilter:(unsigned __int8)filter limit:(unsigned int)limit error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  substringCopy = substring;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v26 = MEMORY[0x1E69E9820];
  v27 = dateCopy;
  v28 = endDateCopy;
  v29 = identifiersCopy;
  v30 = substringCopy;
  filterCopy = filter;
  limitCopy = limit;
  v20 = substringCopy;
  v21 = identifiersCopy;
  v22 = endDateCopy;
  v23 = dateCopy;
  [(SGSuggestionsService *)self syncTimeout:v26];
  v24 = [_daemonConnection waitUntilReturn:&v26 withTimeout:error error:?];

  return v24;
}

void __128__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 76);
  v10 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __128__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit_error___block_invoke_2;
  v12[3] = &unk_1E7EFB660;
  v13 = v3;
  v11 = v3;
  [v4 urlsFoundBetweenStartDate:v5 endDate:v6 excludingBundleIdentifiers:v7 containingSubstring:v8 flagFilter:v9 limit:v10 withCompletion:v12];
}

void __106__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)urlsFoundBetweenStartDate:(id)date endDate:(id)endDate excludingBundleIdentifiers:(id)identifiers limit:(unsigned int)limit error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_error___block_invoke;
  v21[3] = &unk_1E7EFBDD0;
  v21[4] = self;
  v22 = dateCopy;
  v23 = endDateCopy;
  v24 = identifiersCopy;
  limitCopy = limit;
  v16 = identifiersCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [_daemonConnection waitUntilReturn:v21 withTimeout:error error:?];

  return v19;
}

void __97__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 urlsFoundBetweenStartDate:v5 endDate:v6 excludingBundleIdentifiers:v7 limit:v8 withCompletion:v10];
}

void __59__SGSuggestionsService_recentURLsWithLimit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)recentURLsWithLimit:(unsigned int)limit error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  LODWORD(v11) = limit;
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __50__SGSuggestionsService_recentURLsWithLimit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SGSuggestionsService_recentURLsWithLimit_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v4 recentURLsWithLimit:v5 withCompletion:v7];
}

- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)engagement forStringFromFollowUpWarning:(id)warning withCompletion:(id)completion
{
  completionCopy = completion;
  warningCopy = warning;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __113__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager reportMailIntelligenceFollowUpUserEngagement:engagement forStringFromFollowUpWarning:warningCopy withCompletion:v12];
}

void __113__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)reportMailIntelligenceFollowUpUserEngagement:(int64_t)engagement forStringFromFollowUpWarning:(id)warning error:(id *)error
{
  warningCopy = warning;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v14 = warningCopy;
  engagementCopy = engagement;
  v13[4] = self;
  v10 = warningCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __104__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = a1 + 40;
  v5 = *(a1 + 40);
  v6 = *(v7 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_error___block_invoke_2;
  v9[3] = &unk_1E7EFBA68;
  v10 = v3;
  v8 = v3;
  [v4 reportMailIntelligenceFollowUpUserEngagement:v6 forStringFromFollowUpWarning:v5 withCompletion:v9];
}

void __69__SGSuggestionsService_reportValue_forFeatureSetting_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)reportValue:(BOOL)value forFeatureSetting:(int64_t)setting error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__SGSuggestionsService_reportValue_forFeatureSetting_error___block_invoke;
  v12[3] = &unk_1E7EFB728;
  valueCopy = value;
  v12[4] = self;
  v12[5] = setting;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [_daemonConnection waitUntilReturn:v12 withTimeout:error error:?];

  return v10;
}

void __60__SGSuggestionsService_reportValue_forFeatureSetting_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SGSuggestionsService_reportValue_forFeatureSetting_error___block_invoke_2;
  v8[3] = &unk_1E7EFBA68;
  v9 = v3;
  v7 = v3;
  [v6 reportValue:v4 forFeatureSetting:v5 withCompletion:v8];
}

void __71__SGSuggestionsService_reportUserEngagement_forWarning_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)reportUserEngagement:(BOOL)engagement forWarning:(id)warning error:(id *)error
{
  warningCopy = warning;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_reportUserEngagement_forWarning_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  engagementCopy = engagement;
  v13[4] = self;
  v14 = warningCopy;
  v10 = warningCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __62__SGSuggestionsService_reportUserEngagement_forWarning_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SGSuggestionsService_reportUserEngagement_forWarning_error___block_invoke_2;
  v8[3] = &unk_1E7EFBA68;
  v9 = v3;
  v7 = v3;
  [v6 reportUserEngagement:v4 forWarning:v5 withCompletion:v8];
}

- (void)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date withCompletion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  bodyCopy = body;
  subjectCopy = subject;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__SGSuggestionsService_identifyFollowUpWarningFromSubject_body_date_withCompletion___block_invoke;
  v16[3] = &unk_1E7EFD0A0;
  v17 = completionCopy;
  v15 = completionCopy;
  [_remoteSuggestionManager identifyFollowUpWarningFromSubject:subjectCopy body:bodyCopy date:dateCopy withCompletion:v16];
}

void __84__SGSuggestionsService_identifyFollowUpWarningFromSubject_body_date_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date error:(id *)error
{
  subjectCopy = subject;
  bodyCopy = body;
  dateCopy = date;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = subjectCopy;
  v21 = bodyCopy;
  v22 = dateCopy;
  v14 = dateCopy;
  v15 = bodyCopy;
  v16 = subjectCopy;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [_daemonConnection waitUntilReturn:&v19 withTimeout:error error:?];

  return v17;
}

void __75__SGSuggestionsService_identifyFollowUpWarningFromSubject_body_date_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SGSuggestionsService_identifyFollowUpWarningFromSubject_body_date_error___block_invoke_2;
  v9[3] = &unk_1E7EFBD58;
  v10 = v3;
  v8 = v3;
  [v4 identifyFollowUpWarningFromSubject:v5 body:v7 date:v6 withCompletion:v9];
}

- (void)identifyComposeWarningsFromSubject:(id)subject content:(id)content attributes:(id)attributes toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients originalToRecipients:(id)toRecipients originalCcRecipients:(id)self0 attachments:(id)self1 withCompletion:(id)self2
{
  completionCopy = completion;
  attachmentsCopy = attachments;
  originalCcRecipientsCopy = originalCcRecipients;
  toRecipientsCopy = toRecipients;
  bccRecipientsCopy = bccRecipients;
  ccRecipientsCopy = ccRecipients;
  recipientsCopy = recipients;
  attributesCopy = attributes;
  contentCopy = content;
  subjectCopy = subject;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __187__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion___block_invoke;
  v31[3] = &unk_1E7EFD0A0;
  v32 = completionCopy;
  v28 = completionCopy;
  [_remoteSuggestionManager identifyComposeWarningsFromSubject:subjectCopy content:contentCopy attributes:attributesCopy toRecipients:recipientsCopy ccRecipients:ccRecipientsCopy bccRecipients:bccRecipientsCopy originalToRecipients:toRecipientsCopy originalCcRecipients:originalCcRecipientsCopy attachments:attachmentsCopy withCompletion:v31];
}

void __187__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)identifyComposeWarningsFromSubject:(id)subject content:(id)content attributes:(id)attributes toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients originalToRecipients:(id)toRecipients originalCcRecipients:(id)self0 attachments:(id)self1 error:(id *)self2
{
  subjectCopy = subject;
  contentCopy = content;
  attributesCopy = attributes;
  recipientsCopy = recipients;
  ccRecipientsCopy = ccRecipients;
  bccRecipientsCopy = bccRecipients;
  toRecipientsCopy = toRecipients;
  originalCcRecipientsCopy = originalCcRecipients;
  attachmentsCopy = attachments;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __178__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_error___block_invoke;
  v40[3] = &unk_1E7EFBD30;
  v40[4] = self;
  v41 = subjectCopy;
  v42 = contentCopy;
  v43 = attributesCopy;
  v44 = recipientsCopy;
  v45 = ccRecipientsCopy;
  v46 = bccRecipientsCopy;
  v47 = toRecipientsCopy;
  v48 = originalCcRecipientsCopy;
  v49 = attachmentsCopy;
  v38 = attachmentsCopy;
  v37 = originalCcRecipientsCopy;
  v36 = toRecipientsCopy;
  v25 = bccRecipientsCopy;
  v26 = ccRecipientsCopy;
  v27 = recipientsCopy;
  v28 = attributesCopy;
  v29 = contentCopy;
  v30 = subjectCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v31 = _daemonConnection;
  v32 = [_daemonConnection waitUntilReturn:v40 withTimeout:error error:?];

  return v32;
}

void __178__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v13 = *(a1 + 88);
  v11 = *(a1 + 104);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __178__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_error___block_invoke_2;
  v14[3] = &unk_1E7EFB660;
  v15 = v3;
  v12 = v3;
  [v4 identifyComposeWarningsFromSubject:v5 content:v6 attributes:v7 toRecipients:v8 ccRecipients:v9 bccRecipients:v10 originalToRecipients:v13 originalCcRecipients:v11 attachments:v14 withCompletion:?];
}

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)field limit:(unint64_t)limit withCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFD0A0;
  v12 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager sortedUnsubscriptionOpportunitiesForField:field limit:limit withCompletion:v11];
}

void __87__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field limit:(unint64_t)limit error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_error___block_invoke;
  v12[3] = &unk_1E7EFBD08;
  v12[4] = self;
  v12[5] = field;
  v12[6] = limit;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [_daemonConnection waitUntilReturn:v12 withTimeout:error error:?];

  return v10;
}

void __78__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 sortedUnsubscriptionOpportunitiesForField:v5 limit:v6 withCompletion:v8];
}

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit withCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = completionCopy;
  v14 = completionCopy;
  [_remoteSuggestionManager sortedUnsubscriptionOpportunitiesForField:field minCount:count minScore:limit limit:v15 withCompletion:score];
}

void __105__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)field minCount:(unint64_t)count minScore:(double)score limit:(unint64_t)limit error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_error___block_invoke;
  v16[3] = &unk_1E7EFBCE0;
  v16[4] = self;
  v16[5] = field;
  v16[6] = count;
  *&v16[7] = score;
  v16[8] = limit;
  [(SGSuggestionsService *)self syncTimeout];
  v14 = [_daemonConnection waitUntilReturn:v16 withTimeout:error error:?];

  return v14;
}

void __96__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_error___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = a1[7];
  v8 = *(a1 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 sortedUnsubscriptionOpportunitiesForField:v5 minCount:v6 minScore:v8 limit:v10 withCompletion:v7];
}

- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values withCompletion:(id)completion
{
  valuesCopy = values;
  completionCopy = completion;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2286 description:{@"Invalid parameter not satisfying: %@", @"values"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager preventUnsubscriptionOpportunitiesSuggestionsForField:field toValues:valuesCopy withCompletion:v14];
}

void __102__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)field toValues:(id)values error:(id *)error
{
  valuesCopy = values;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v14 = valuesCopy;
  fieldCopy = field;
  v13[4] = self;
  v10 = valuesCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __93__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = a1 + 40;
  v5 = *(a1 + 40);
  v6 = *(v7 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_error___block_invoke_2;
  v9[3] = &unk_1E7EFD050;
  v10 = v3;
  v8 = v3;
  [v4 preventUnsubscriptionOpportunitiesSuggestionsForField:v6 toValues:v5 withCompletion:v9];
}

void __130__SGSuggestionsService_sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)types mailboxIds:(id)ids receivedOnOrAfter:(id)after ascending:(BOOL)ascending limit:(unint64_t)limit error:(id *)error
{
  typesCopy = types;
  idsCopy = ids;
  afterCopy = after;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = typesCopy;
  v25 = idsCopy;
  v26 = afterCopy;
  ascendingCopy = ascending;
  limitCopy = limit;
  v18 = afterCopy;
  v19 = idsCopy;
  v20 = typesCopy;
  [(SGSuggestionsService *)self syncTimeout:v23];
  v21 = [_daemonConnection waitUntilReturn:&v23 withTimeout:error error:?];

  return v21;
}

void __121__SGSuggestionsService_sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__SGSuggestionsService_sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit_error___block_invoke_2;
  v11[3] = &unk_1E7EFB660;
  v12 = v3;
  v10 = v3;
  [v4 sortedSaliencyResultsRestrictedToMailboxTypes:v5 mailboxIds:v6 receivedOnOrAfter:v7 ascending:v8 limit:v9 withCompletion:v11];
}

- (void)topSalienciesForMailboxId:(id)id limit:(int64_t)limit withCompletion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__SGSuggestionsService_topSalienciesForMailboxId_limit_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager topSalienciesForMailboxId:idCopy limit:limit withCompletion:v12];
}

void __71__SGSuggestionsService_topSalienciesForMailboxId_limit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)topSalienciesForMailboxId:(id)id limit:(int64_t)limit error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_topSalienciesForMailboxId_limit_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = idCopy;
  limitCopy = limit;
  v10 = idCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __62__SGSuggestionsService_topSalienciesForMailboxId_limit_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SGSuggestionsService_topSalienciesForMailboxId_limit_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 topSalienciesForMailboxId:v5 limit:v6 withCompletion:v8];
}

- (void)saliencyFromEmailHeaders:(id)headers withCompletion:(id)completion
{
  headersCopy = headers;
  completionCopy = completion;
  if (!headersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2253 description:{@"Invalid parameter not satisfying: %@", @"headers"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SGSuggestionsService_saliencyFromEmailHeaders_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager saliencyFromEmailHeaders:headersCopy withCompletion:v12];
}

void __64__SGSuggestionsService_saliencyFromEmailHeaders_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)saliencyFromEmailHeaders:(id)headers error:(id *)error
{
  headersCopy = headers;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = headersCopy;
  v8 = headersCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __55__SGSuggestionsService_saliencyFromEmailHeaders_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SGSuggestionsService_saliencyFromEmailHeaders_error___block_invoke_2;
  v7[3] = &unk_1E7EFBC90;
  v8 = v3;
  v6 = v3;
  [v5 saliencyFromEmailHeaders:v4 withCompletion:v7];
}

- (void)saliencyFromRFC822Data:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2243 description:{@"Invalid parameter not satisfying: %@", @"rfc822Data"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_saliencyFromRFC822Data_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager saliencyFromRFC822Data:dataCopy withCompletion:v12];
}

void __62__SGSuggestionsService_saliencyFromRFC822Data_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)saliencyFromRFC822Data:(id)data error:(id *)error
{
  dataCopy = data;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = dataCopy;
  v8 = dataCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __53__SGSuggestionsService_saliencyFromRFC822Data_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SGSuggestionsService_saliencyFromRFC822Data_error___block_invoke_2;
  v7[3] = &unk_1E7EFBC90;
  v8 = v3;
  v6 = v3;
  [v5 saliencyFromRFC822Data:v4 withCompletion:v7];
}

- (void)titleSuggestionForMessage:(id)message withCompletion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SGSuggestionsService_titleSuggestionForMessage_withCompletion___block_invoke;
  v10[3] = &unk_1E7EFD0A0;
  v11 = completionCopy;
  v9 = completionCopy;
  [_remoteSuggestionManager titleSuggestionForMessage:messageCopy withCompletion:v10];
}

void __65__SGSuggestionsService_titleSuggestionForMessage_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)titleSuggestionForMessage:(id)message error:(id *)error
{
  messageCopy = message;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = messageCopy;
  v8 = messageCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __56__SGSuggestionsService_titleSuggestionForMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_titleSuggestionForMessage_error___block_invoke_2;
  v7[3] = &unk_1E7EFB840;
  v8 = v3;
  v6 = v3;
  [v5 titleSuggestionForMessage:v4 withCompletion:v7];
}

- (void)ipsosMessagesFromSearchableItems:(id)items withCompletion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SGSuggestionsService_ipsosMessagesFromSearchableItems_withCompletion___block_invoke;
  v10[3] = &unk_1E7EFD0A0;
  v11 = completionCopy;
  v9 = completionCopy;
  [_remoteSuggestionManager ipsosMessagesFromSearchableItems:itemsCopy withCompletion:v10];
}

void __72__SGSuggestionsService_ipsosMessagesFromSearchableItems_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)ipsosMessagesFromSearchableItems:(id)items error:(id *)error
{
  itemsCopy = items;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = itemsCopy;
  v8 = itemsCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __63__SGSuggestionsService_ipsosMessagesFromSearchableItems_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SGSuggestionsService_ipsosMessagesFromSearchableItems_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 ipsosMessagesFromSearchableItems:v4 withCompletion:v7];
}

- (void)pingWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SGSuggestionsService_pingWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager pingWithCompletion:v7];
}

void __43__SGSuggestionsService_pingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)ping:(id *)ping
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__SGSuggestionsService_ping___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:ping error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __29__SGSuggestionsService_ping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__SGSuggestionsService_ping___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 pingWithCompletion:v6];
}

- (void)sleepWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SGSuggestionsService_sleepWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager sleepWithCompletion:v7];
}

void __44__SGSuggestionsService_sleepWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)sleep:(id *)sleep
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__SGSuggestionsService_sleep___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:sleep error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __30__SGSuggestionsService_sleep___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SGSuggestionsService_sleep___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 sleepWithCompletion:v6];
}

- (void)daemonExitWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SGSuggestionsService_daemonExitWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager daemonExitWithCompletion:v7];
}

void __49__SGSuggestionsService_daemonExitWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)daemonExit:(id *)exit
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__SGSuggestionsService_daemonExit___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:exit error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __35__SGSuggestionsService_daemonExit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__SGSuggestionsService_daemonExit___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 daemonExitWithCompletion:v6];
}

- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)id
{
  idCopy = id;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricSearchResultsIncludedPureSuggestionWithBundleId:idCopy];
}

- (void)logMetricContactCreated:(id)created contactIdentifier:(id)identifier bundleId:(id)id
{
  idCopy = id;
  identifierCopy = identifier;
  createdCopy = created;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricContactCreated:createdCopy contactIdentifier:identifierCopy bundleId:idCopy];
}

- (void)logMetricSuggestedContactDetailShown:(id)shown contactIdentifier:(id)identifier bundleId:(id)id
{
  idCopy = id;
  identifierCopy = identifier;
  shownCopy = shown;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricSuggestedContactDetailShown:shownCopy contactIdentifier:identifierCopy bundleId:idCopy];
}

- (void)logMetricSuggestedContactDetailUsed:(id)used contactIdentifier:(id)identifier bundleId:(id)id
{
  idCopy = id;
  identifierCopy = identifier;
  usedCopy = used;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricSuggestedContactDetailUsed:usedCopy contactIdentifier:identifierCopy bundleId:idCopy];
}

- (void)logMetricContactSearchResultSelected:(id)selected contactIdentifier:(id)identifier bundleId:(id)id
{
  idCopy = id;
  identifierCopy = identifier;
  selectedCopy = selected;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricContactSearchResultSelected:selectedCopy contactIdentifier:identifierCopy bundleId:idCopy];
}

- (void)logMetricAutocompleteUserSelectedRecordId:(id)id contactIdentifier:(id)identifier bundleId:(id)bundleId
{
  bundleIdCopy = bundleId;
  identifierCopy = identifier;
  idCopy = id;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [_remoteSuggestionManager logMetricAutocompleteUserSelectedRecordId:idCopy contactIdentifier:identifierCopy bundleId:bundleIdCopy];
}

- (id)namesForDetailCaches
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2207;
  v15 = __Block_byref_object_dispose__2208;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SGSuggestionsService_namesForDetailCaches__block_invoke;
  v8[3] = &unk_1E7EFBC68;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [_remoteSuggestionManager namesForDetailCacheSnapshotsWithCompletion:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __44__SGSuggestionsService_namesForDetailCaches__block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 response1];
  v11[0] = v4;
  v5 = [v3 response2];

  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = dispatch_semaphore_signal(*(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)powerState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2207;
  v15 = __Block_byref_object_dispose__2208;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SGSuggestionsService_powerState__block_invoke;
  v8[3] = &unk_1E7EFBC40;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [_remoteSuggestionManager powerStateWithCompletion:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __34__SGSuggestionsService_powerState__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 response1];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (void)deleteCloudKitZoneWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SGSuggestionsService_deleteCloudKitZoneWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager deleteCloudKitZoneWithCompletion:v7];
}

void __57__SGSuggestionsService_deleteCloudKitZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)sendRTCLogs:(id *)logs
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__SGSuggestionsService_sendRTCLogs___block_invoke;
  v13[3] = &unk_1E7EFBC18;
  v15 = &v17;
  logsCopy = logs;
  v6 = v5;
  v14 = v6;
  v7 = MEMORY[0x1BFAF7240](v13);
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SGSuggestionsService_sendRTCLogs___block_invoke_2;
  v11[3] = &unk_1E7EFD0A0;
  v9 = v7;
  v12 = v9;
  [_remoteSuggestionManager sendRTCLogsWithCompletion:v11];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(_remoteSuggestionManager) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return _remoteSuggestionManager;
}

void __36__SGSuggestionsService_sendRTCLogs___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = v5;
  if (v7)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "Error! %@", &v11, 0xCu);
    }
  }

  if (v6)
  {
    v9 = v7;
    *v6 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x1E69E9840];
}

void __36__SGSuggestionsService_sendRTCLogs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v6 = [v3 response1];
    v4 = [v6 BOOLValue];
    v5 = [v3 error];

    (*(v2 + 16))(v2, v4, v5);
  }
}

- (void)removeAllStoredPseudoContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SGSuggestionsService_removeAllStoredPseudoContactsWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager removeAllStoredPseudoContactsWithCompletion:v7];
}

void __68__SGSuggestionsService_removeAllStoredPseudoContactsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)removeAllStoredPseudoContacts:(id *)contacts
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SGSuggestionsService_removeAllStoredPseudoContacts___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:contacts error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __54__SGSuggestionsService_removeAllStoredPseudoContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SGSuggestionsService_removeAllStoredPseudoContacts___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 removeAllStoredPseudoContactsWithCompletion:v6];
}

- (void)realtimeSuggestionsFromURL:(id)l title:(id)title HTMLPayload:(id)payload extractionDate:(id)date withCompletion:(id)completion
{
  lCopy = l;
  titleCopy = title;
  payloadCopy = payload;
  dateCopy = date;
  completionCopy = completion;
  if (lCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2032 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (titleCopy)
    {
LABEL_3:
      if (payloadCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2034 description:{@"Invalid parameter not satisfying: %@", @"HTMLPayload"}];

      if (dateCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2035 description:{@"Invalid parameter not satisfying: %@", @"extractionDate"}];

      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2033 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!payloadCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!dateCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __99__SGSuggestionsService_realtimeSuggestionsFromURL_title_HTMLPayload_extractionDate_withCompletion___block_invoke;
  v24[3] = &unk_1E7EFD0A0;
  v25 = completionCopy;
  v19 = completionCopy;
  [_remoteSuggestionManager realtimeSuggestionsFromURL:lCopy title:titleCopy HTMLPayload:payloadCopy extractionDate:dateCopy withCompletion:v24];
}

void __99__SGSuggestionsService_realtimeSuggestionsFromURL_title_HTMLPayload_extractionDate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (void)suggestionsFromURL:(id)l title:(id)title HTMLPayload:(id)payload withCompletion:(id)completion
{
  lCopy = l;
  titleCopy = title;
  payloadCopy = payload;
  completionCopy = completion;
  if (lCopy && titleCopy && payloadCopy)
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__SGSuggestionsService_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke;
    v18[3] = &unk_1E7EFD0A0;
    v19 = completionCopy;
    [_remoteSuggestionManager suggestionsFromURL:lCopy title:titleCopy HTMLPayload:payloadCopy withCompletion:v18];

    v15 = v19;
LABEL_9:

    goto LABEL_10;
  }

  v16 = sgLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_1BA729000, v16, OS_LOG_TYPE_ERROR, "suggestionsFromURL called with nil arguments", v17, 2u);
  }

  if (completionCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:4 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v15);
    goto LABEL_9;
  }

LABEL_10:
}

void __76__SGSuggestionsService_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

void __89__SGSuggestionsService_isEventCandidateForURL_andTitle_containsSchemaOrg_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 response1];
    (*(v2 + 16))(v2, [v3 BOOLValue]);
  }
}

- (void)eventsForSchemas:(id)schemas usingStore:(id)store completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  schemasCopy = schemas;
  storeCopy = store;
  completionCopy = completion;
  if (schemasCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1970 description:{@"Invalid parameter not satisfying: %@", @"schemas"}];

    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1971 description:{@"Invalid parameter not satisfying: %@", @"store"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    v23 = [schemasCopy count];
    v24 = 2117;
    v25 = schemasCopy;
    _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_DEFAULT, "eventsForSchemas count=%tu %{sensitive}@", buf, 0x16u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__SGSuggestionsService_eventsForSchemas_usingStore_completion___block_invoke;
  v19[3] = &unk_1E7EFBBF0;
  v20 = storeCopy;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = storeCopy;
  [_remoteSuggestionManager schemaOrgToEvents:schemasCopy completion:v19];

  v16 = *MEMORY[0x1E69E9840];
}

void __63__SGSuggestionsService_eventsForSchemas_usingStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 response1];
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SGSuggestionsService_eventsForSchemas_usingStore_completion___block_invoke_2;
    v8[3] = &unk_1E7EFBBC8;
    v9 = *(a1 + 32);
    v5 = [SGFn map:v4 f:v8];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = [v3 error];
  (*(v6 + 16))(v6, v5, v7);
}

- (void)keysForSchemas:(id)schemas completion:(id)completion
{
  schemasCopy = schemas;
  completionCopy = completion;
  if (!schemasCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1955 description:{@"Invalid parameter not satisfying: %@", @"schemas"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__SGSuggestionsService_keysForSchemas_completion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager schemaOrgToEvents:schemasCopy completion:v12];
}

void __50__SGSuggestionsService_keysForSchemas_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 response1];
  if (v3)
  {
    v4 = [SGFn map:v3 f:&__block_literal_global_683];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = [v7 error];
  (*(v5 + 16))(v5, v4, v6);
}

- (void)deleteInteractionsWithBundleId:(id)id groupIdentifiers:(id)identifiers completion:(id)completion
{
  idCopy = id;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1942 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__SGSuggestionsService_deleteInteractionsWithBundleId_groupIdentifiers_completion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager deleteInteractionsWithBundleId:idCopy groupIdentifiers:identifiersCopy completion:v15];
}

void __83__SGSuggestionsService_deleteInteractionsWithBundleId_groupIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id identifiers:(id)identifiers completion:(id)completion
{
  idCopy = id;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1930 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__SGSuggestionsService_deleteInteractionsWithBundleId_identifiers_completion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager deleteInteractionsWithBundleId:idCopy identifiers:identifiersCopy completion:v15];
}

void __78__SGSuggestionsService_deleteInteractionsWithBundleId_identifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deleteInteractionsWithBundleId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1919 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__SGSuggestionsService_deleteInteractionsWithBundleId_completion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager deleteInteractionsWithBundleId:idCopy completion:v12];
}

void __66__SGSuggestionsService_deleteInteractionsWithBundleId_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1909 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager deleteSpotlightReferencesWithBundleIdentifier:identifierCopy completion:v12];
}

void __81__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier domainIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1899 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (identifiersCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1900 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifiers"}];

    goto LABEL_3;
  }

  if (!identifiersCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager deleteSpotlightReferencesWithBundleIdentifier:identifierCopy domainIdentifiers:identifiersCopy completion:v16];
}

void __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1885 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (identifiersCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1886 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifiers"}];

    goto LABEL_3;
  }

  if (!identifiersCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager deleteSpotlightReferencesWithBundleIdentifier:identifierCopy uniqueIdentifiers:identifiersCopy completion:v16];
}

void __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1875 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (identifiersCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1876 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifiers"}];

    goto LABEL_3;
  }

  if (!identifiersCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__SGSuggestionsService_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager purgeSpotlightReferencesWithBundleIdentifier:identifierCopy uniqueIdentifiers:identifiersCopy completion:v16];
}

void __98__SGSuggestionsService_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)evaluateRecipe:(id)recipe attachments:(id)attachments completion:(id)completion
{
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  completionCopy = completion;
  if (!recipeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1864 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];

    if (attachmentsCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1865 description:{@"Invalid parameter not satisfying: %@", @"attachments"}];

    goto LABEL_3;
  }

  if (!attachmentsCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__SGSuggestionsService_evaluateRecipe_attachments_completion___block_invoke;
  v16[3] = &unk_1E7EFD0A0;
  v17 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager evaluateRecipe:recipeCopy attachments:attachmentsCopy completion:v16];
}

void __62__SGSuggestionsService_evaluateRecipe_attachments_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (void)planReceivedFromServerWithPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  if (!payloadCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1854 description:{@"Invalid parameter not satisfying: %@", @"payload"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SGSuggestionsService_planReceivedFromServerWithPayload_completion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager planReceivedFromServerWithPayload:payloadCopy completion:v12];
}

void __69__SGSuggestionsService_planReceivedFromServerWithPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (void)resolveFullDownloadRequests:(id)requests withCompletion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  if (!requestsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1841 description:{@"Invalid parameter not satisfying: %@", @"requests"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SGSuggestionsService_resolveFullDownloadRequests_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager resolveFullDownloadRequests:requestsCopy withCompletion:v12];
}

void __67__SGSuggestionsService_resolveFullDownloadRequests_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)resolveFullDownloadRequests:(id)requests error:(id *)error
{
  requestsCopy = requests;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = requestsCopy;
  v8 = requestsCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __58__SGSuggestionsService_resolveFullDownloadRequests_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SGSuggestionsService_resolveFullDownloadRequests_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 resolveFullDownloadRequests:v4 withCompletion:v7];
}

- (void)fullDownloadRequestBatch:(unint64_t)batch withCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SGSuggestionsService_fullDownloadRequestBatch_withCompletion___block_invoke;
  v9[3] = &unk_1E7EFD0A0;
  v10 = completionCopy;
  v8 = completionCopy;
  [_remoteSuggestionManager fullDownloadRequestBatch:batch withCompletion:v9];
}

void __64__SGSuggestionsService_fullDownloadRequestBatch_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)fullDownloadRequestBatch:(unint64_t)batch error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __55__SGSuggestionsService_fullDownloadRequestBatch_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SGSuggestionsService_fullDownloadRequestBatch_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 fullDownloadRequestBatch:v4 withCompletion:v7];
}

- (void)updateMessages:(id)messages state:(unint64_t)state withCompletion:(id)completion
{
  messagesCopy = messages;
  completionCopy = completion;
  if (!messagesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1823 description:{@"Invalid parameter not satisfying: %@", @"messages"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SGSuggestionsService_updateMessages_state_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager updateMessages:messagesCopy state:state completion:v14];
}

void __60__SGSuggestionsService_updateMessages_state_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)updateMessages:(id)messages state:(unint64_t)state error:(id *)error
{
  messagesCopy = messages;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SGSuggestionsService_updateMessages_state_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = messagesCopy;
  stateCopy = state;
  v10 = messagesCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __51__SGSuggestionsService_updateMessages_state_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SGSuggestionsService_updateMessages_state_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 updateMessages:v5 state:v6 withCompletion:v8];
}

- (void)reportMessagesFound:(id)found lost:(id)lost withCompletion:(id)completion
{
  completionCopy = completion;
  lostCopy = lost;
  foundCopy = found;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SGSuggestionsService_reportMessagesFound_lost_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager reportMessagesFound:foundCopy lost:lostCopy withCompletion:v13];
}

void __64__SGSuggestionsService_reportMessagesFound_lost_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)reportMessagesFound:(id)found lost:(id)lost error:(id *)error
{
  foundCopy = found;
  lostCopy = lost;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SGSuggestionsService_reportMessagesFound_lost_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = foundCopy;
  v17 = lostCopy;
  v11 = lostCopy;
  v12 = foundCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [_daemonConnection waitUntilReturn:v15 withTimeout:error error:?];
  LOBYTE(self) = [v13 BOOLValue];

  return self;
}

void __55__SGSuggestionsService_reportMessagesFound_lost_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SGSuggestionsService_reportMessagesFound_lost_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 reportMessagesFound:v5 lost:v6 withCompletion:v8];
}

- (void)messagesToRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_messagesToRefreshWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFD0A0;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager messagesToRefreshWithCompletion:v7];
}

void __56__SGSuggestionsService_messagesToRefreshWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)messagesToRefreshWithError:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SGSuggestionsService_messagesToRefreshWithError___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = self;
  [(SGSuggestionsService *)self syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:error error:?];

  return v6;
}

void __51__SGSuggestionsService_messagesToRefreshWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SGSuggestionsService_messagesToRefreshWithError___block_invoke_2;
  v6[3] = &unk_1E7EFB660;
  v7 = v3;
  v5 = v3;
  [v4 messagesToRefreshWithCompletion:v6];
}

- (void)spotlightReimportFromIdentifier:(id)identifier forPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate withCompletion:(id)completion
{
  identifierCopy = identifier;
  handleCopy = handle;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1795 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_withCompletion___block_invoke;
  v21[3] = &unk_1E7EFB610;
  v22 = completionCopy;
  v19 = completionCopy;
  [_remoteSuggestionManager spotlightReimportFromIdentifier:identifierCopy forPersonHandle:handleCopy startDate:dateCopy endDate:endDateCopy completion:v21];
}

void __105__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)spotlightReimportFromIdentifier:(id)identifier forPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate error:(id *)error
{
  identifierCopy = identifier;
  handleCopy = handle;
  dateCopy = date;
  endDateCopy = endDate;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_error___block_invoke;
  v23[3] = &unk_1E7EFBB80;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = handleCopy;
  v26 = dateCopy;
  v27 = endDateCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  v19 = handleCopy;
  v20 = identifierCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v21 = [_daemonConnection waitUntilReturn:v23 withTimeout:error error:?];
  LOBYTE(self) = [v21 BOOLValue];

  return self;
}

void __96__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_error___block_invoke_2;
  v10[3] = &unk_1E7EFD050;
  v11 = v3;
  v9 = v3;
  [v4 spotlightReimportFromIdentifier:v5 forPersonHandle:v6 startDate:v7 endDate:v8 withCompletion:v10];
}

- (void)addInteractions:(id)interactions bundleId:(id)id withCompletion:(id)completion
{
  interactionsCopy = interactions;
  idCopy = id;
  completionCopy = completion;
  if (!interactionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1786 description:{@"Invalid parameter not satisfying: %@", @"interactions"}];

    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1787 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    goto LABEL_3;
  }

  if (!idCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__SGSuggestionsService_addInteractions_bundleId_withCompletion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager addInteractions:interactionsCopy bundleId:idCopy completion:v16];
}

void __64__SGSuggestionsService_addInteractions_bundleId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)addInteractions:(id)interactions bundleId:(id)id error:(id *)error
{
  interactionsCopy = interactions;
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SGSuggestionsService_addInteractions_bundleId_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = interactionsCopy;
  v17 = idCopy;
  v11 = idCopy;
  v12 = interactionsCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [_daemonConnection waitUntilReturn:v15 withTimeout:error error:?];
  LOBYTE(self) = [v13 BOOLValue];

  return self;
}

void __55__SGSuggestionsService_addInteractions_bundleId_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SGSuggestionsService_addInteractions_bundleId_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 addInteractions:v5 bundleId:v6 withCompletion:v8];
}

- (void)addSearchableItemMetadata:(id)metadata htmlData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  metadataCopy = metadata;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__SGSuggestionsService_addSearchableItemMetadata_htmlData_completion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager addSearchableItemMetadata:metadataCopy htmlData:dataCopy completion:v13];
}

void __70__SGSuggestionsService_addSearchableItemMetadata_htmlData_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)addSearchableItems:(id)items withCompletion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_1BA729000, v7, OS_LOG_TYPE_FAULT, "Unexpected call to obsolete addSearchableItems method.", v8, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)addSearchableItems:(id)items error:(id *)error
{
  itemsCopy = items;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = itemsCopy;
  v8 = itemsCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __49__SGSuggestionsService_addSearchableItems_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SGSuggestionsService_addSearchableItems_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 addSearchableItems:v4 withCompletion:v7];
}

- (void)predictedCCEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds withCompletion:(id)completion
{
  addressesCopy = addresses;
  ccAddressesCopy = ccAddresses;
  addressCopy = address;
  boundsCopy = bounds;
  completionCopy = completion;
  if (addressesCopy)
  {
    if (ccAddressesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1747 description:{@"Invalid parameter not satisfying: %@", @"toAddresses"}];

    if (ccAddressesCopy)
    {
LABEL_3:
      if (addressCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1749 description:{@"Invalid parameter not satisfying: %@", @"fromAddress"}];

      if (boundsCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1750 description:{@"Invalid parameter not satisfying: %@", @"bounds"}];

      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1748 description:{@"Invalid parameter not satisfying: %@", @"ccAddresses"}];

  if (!addressCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!boundsCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __116__SGSuggestionsService_predictedCCEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke;
  v26[3] = &unk_1E7EFD0A0;
  v27 = completionCopy;
  v21 = completionCopy;
  [_remoteSuggestionManager predictedCCEmailAddressesWithToAddresses:addressesCopy ccAddresses:ccAddressesCopy fromAddress:addressCopy date:boundsCopy bounds:v26 completion:date];
}

void __116__SGSuggestionsService_predictedCCEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)predictedCCEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds error:(id *)error
{
  addressesCopy = addresses;
  ccAddressesCopy = ccAddresses;
  addressCopy = address;
  boundsCopy = bounds;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v25 = MEMORY[0x1E69E9820];
  v26 = addressesCopy;
  v27 = ccAddressesCopy;
  v28 = addressCopy;
  dateCopy = date;
  v29 = boundsCopy;
  v19 = boundsCopy;
  v20 = addressCopy;
  v21 = ccAddressesCopy;
  v22 = addressesCopy;
  [(SGSuggestionsService *)self syncTimeout:v25];
  v23 = [_daemonConnection waitUntilReturn:&v25 withTimeout:error error:?];

  return v23;
}

void __107__SGSuggestionsService_predictedCCEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_error___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = a1[9];
  v9 = *(a1 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__SGSuggestionsService_predictedCCEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_error___block_invoke_2;
  v11[3] = &unk_1E7EFB660;
  v12 = v3;
  v10 = v3;
  [v4 predictedCCEmailAddressesWithToAddresses:v5 ccAddresses:v6 fromAddress:v7 date:v9 bounds:v11 withCompletion:v8];
}

- (void)predictedToEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds withCompletion:(id)completion
{
  addressesCopy = addresses;
  ccAddressesCopy = ccAddresses;
  addressCopy = address;
  boundsCopy = bounds;
  completionCopy = completion;
  if (addressesCopy)
  {
    if (ccAddressesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1726 description:{@"Invalid parameter not satisfying: %@", @"toAddresses"}];

    if (ccAddressesCopy)
    {
LABEL_3:
      if (addressCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1728 description:{@"Invalid parameter not satisfying: %@", @"fromAddress"}];

      if (boundsCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1729 description:{@"Invalid parameter not satisfying: %@", @"bounds"}];

      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1727 description:{@"Invalid parameter not satisfying: %@", @"ccAddresses"}];

  if (!addressCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!boundsCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __116__SGSuggestionsService_predictedToEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke;
  v26[3] = &unk_1E7EFD0A0;
  v27 = completionCopy;
  v21 = completionCopy;
  [_remoteSuggestionManager predictedToEmailAddressesWithToAddresses:addressesCopy ccAddresses:ccAddressesCopy fromAddress:addressCopy date:boundsCopy bounds:v26 completion:date];
}

void __116__SGSuggestionsService_predictedToEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)predictedToEmailAddressesWithToAddresses:(id)addresses ccAddresses:(id)ccAddresses fromAddress:(id)address date:(double)date bounds:(id)bounds error:(id *)error
{
  addressesCopy = addresses;
  ccAddressesCopy = ccAddresses;
  addressCopy = address;
  boundsCopy = bounds;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v25 = MEMORY[0x1E69E9820];
  v26 = addressesCopy;
  v27 = ccAddressesCopy;
  v28 = addressCopy;
  dateCopy = date;
  v29 = boundsCopy;
  v19 = boundsCopy;
  v20 = addressCopy;
  v21 = ccAddressesCopy;
  v22 = addressesCopy;
  [(SGSuggestionsService *)self syncTimeout:v25];
  v23 = [_daemonConnection waitUntilReturn:&v25 withTimeout:error error:?];

  return v23;
}

void __107__SGSuggestionsService_predictedToEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_error___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = a1[9];
  v9 = *(a1 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__SGSuggestionsService_predictedToEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_error___block_invoke_2;
  v11[3] = &unk_1E7EFB660;
  v12 = v3;
  v10 = v3;
  [v4 predictedToEmailAddressesWithToAddresses:v5 ccAddresses:v6 fromAddress:v7 date:v9 bounds:v11 withCompletion:v8];
}

void __77__SGSuggestionsService_rejectContactDetailRecord_rejectionUI_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectContactDetailRecord:(id)record rejectionUI:(int)i error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SGSuggestionsService_rejectContactDetailRecord_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = recordCopy;
  iCopy = i;
  v10 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __68__SGSuggestionsService_rejectContactDetailRecord_rejectionUI_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__SGSuggestionsService_rejectContactDetailRecord_rejectionUI_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 rejectContactDetailRecord:v5 rejectionUI:v6 withCompletion:v8];
}

- (void)rejectContactDetailRecord:(id)record withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  completionCopy = completion;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1697 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = recordCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectContactDetailRecord %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SGSuggestionsService_rejectContactDetailRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager rejectContactDetailRecord:recordCopy confirmRejectUI:_confirmRejectUI completion:v15];

  v13 = *MEMORY[0x1E69E9840];
}

void __65__SGSuggestionsService_rejectContactDetailRecord_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectContactDetailRecord:(id)record error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = recordCopy;
  v8 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __56__SGSuggestionsService_rejectContactDetailRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_rejectContactDetailRecord_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectContactDetailRecord:v4 withCompletion:v7];
}

void __64__SGSuggestionsService_rejectRecord_rejectionUI_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectRecord:(id)record rejectionUI:(int)i error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__SGSuggestionsService_rejectRecord_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = recordCopy;
  iCopy = i;
  v10 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __55__SGSuggestionsService_rejectRecord_rejectionUI_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SGSuggestionsService_rejectRecord_rejectionUI_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 rejectRecord:v5 rejectionUI:v6 withCompletion:v8];
}

- (void)rejectRecord:(id)record withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  completionCopy = completion;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1673 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = recordCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectRecord %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__SGSuggestionsService_rejectRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager rejectRecord:recordCopy confirmRejectUI:_confirmRejectUI completion:v15];

  v13 = *MEMORY[0x1E69E9840];
}

void __52__SGSuggestionsService_rejectRecord_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectRecord:(id)record error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = recordCopy;
  v8 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __43__SGSuggestionsService_rejectRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SGSuggestionsService_rejectRecord_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectRecord:v4 withCompletion:v7];
}

- (void)rejectContact:(id)contact withCompletion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1662 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectContact", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__SGSuggestionsService_rejectContact_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager rejectContact:contactCopy confirmRejectUI:_confirmRejectUI completion:v14];
}

void __53__SGSuggestionsService_rejectContact_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = contactCopy;
  v8 = contactCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __44__SGSuggestionsService_rejectContact_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SGSuggestionsService_rejectContact_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectContact:v4 withCompletion:v7];
}

void __65__SGSuggestionsService_rejectContact_rejectionUI_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectContact:(id)contact rejectionUI:(int)i error:(id *)error
{
  contactCopy = contact;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__SGSuggestionsService_rejectContact_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = contactCopy;
  iCopy = i;
  v10 = contactCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __56__SGSuggestionsService_rejectContact_rejectionUI_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SGSuggestionsService_rejectContact_rejectionUI_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 rejectContact:v5 rejectionUI:v6 withCompletion:v8];
}

- (void)deleteEventByRecordId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1638 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = idCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-deleteEventByRecordId: %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SGSuggestionsService_deleteEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager deleteEventByRecordId:idCopy completion:v14];

  v12 = *MEMORY[0x1E69E9840];
}

void __61__SGSuggestionsService_deleteEventByRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)deleteEventByRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __52__SGSuggestionsService_deleteEventByRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SGSuggestionsService_deleteEventByRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 deleteEventByRecordId:v4 withCompletion:v7];
}

- (void)rejectEventByRecordId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1629 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = idCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-rejectEventByRecordId: %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SGSuggestionsService_rejectEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager rejectEventByRecordId:idCopy completion:v14];

  v12 = *MEMORY[0x1E69E9840];
}

void __61__SGSuggestionsService_rejectEventByRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectEventByRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __52__SGSuggestionsService_rejectEventByRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SGSuggestionsService_rejectEventByRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectEventByRecordId:v4 withCompletion:v7];
}

- (void)confirmEventByRecordId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1620 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = idCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-confirmEventByRecordId: %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__SGSuggestionsService_confirmEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager confirmEventByRecordId:idCopy completion:v14];

  v12 = *MEMORY[0x1E69E9840];
}

void __62__SGSuggestionsService_confirmEventByRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmEventByRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __53__SGSuggestionsService_confirmEventByRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SGSuggestionsService_confirmEventByRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmEventByRecordId:v4 withCompletion:v7];
}

void __81__SGSuggestionsService_confirmContactDetailRecord_confirmationUI_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmContactDetailRecord:(id)record confirmationUI:(int)i error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SGSuggestionsService_confirmContactDetailRecord_confirmationUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = recordCopy;
  iCopy = i;
  v10 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];
  LOBYTE(self) = [v11 BOOLValue];

  return self;
}

void __72__SGSuggestionsService_confirmContactDetailRecord_confirmationUI_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__SGSuggestionsService_confirmContactDetailRecord_confirmationUI_error___block_invoke_2;
  v8[3] = &unk_1E7EFD050;
  v9 = v3;
  v7 = v3;
  [v4 confirmContactDetailRecord:v5 confirmationUI:v6 withCompletion:v8];
}

- (void)confirmContactDetailRecord:(id)record withCompletion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1597 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmContactDetailRecord", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SGSuggestionsService_confirmContactDetailRecord_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager confirmContactDetailRecord:recordCopy confirmRejectUI:_confirmRejectUI completion:v14];
}

void __66__SGSuggestionsService_confirmContactDetailRecord_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmContactDetailRecord:(id)record error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = recordCopy;
  v8 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __57__SGSuggestionsService_confirmContactDetailRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SGSuggestionsService_confirmContactDetailRecord_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmContactDetailRecord:v4 withCompletion:v7];
}

- (void)confirmRecord:(id)record withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  completionCopy = completion;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1586 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = recordCopy;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmRecord %@", buf, 0xCu);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SGSuggestionsService_confirmRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager confirmRecord:recordCopy confirmRejectUI:_confirmRejectUI completion:v15];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__SGSuggestionsService_confirmRecord_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmRecord:(id)record error:(id *)error
{
  recordCopy = record;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = recordCopy;
  v8 = recordCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __44__SGSuggestionsService_confirmRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SGSuggestionsService_confirmRecord_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmRecord:v4 withCompletion:v7];
}

- (void)confirmContact:(id)contact withCompletion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1575 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmContact", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  _confirmRejectUI = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__SGSuggestionsService_confirmContact_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager confirmContact:contactCopy confirmRejectUI:_confirmRejectUI completion:v14];
}

void __54__SGSuggestionsService_confirmContact_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = contactCopy;
  v8 = contactCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __45__SGSuggestionsService_confirmContact_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SGSuggestionsService_confirmContact_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmContact:v4 withCompletion:v7];
}

- (int)_confirmRejectUI
{
  v10 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v4 = 1;
  }

  else if ([bundleIdentifier isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.MobileSMS"))
  {
    v4 = 0;
  }

  else if ([bundleIdentifier isEqualToString:@"com.apple.CoreSuggestions.suggest_tool"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_1BA729000, v5, OS_LOG_TYPE_INFO, "SGSuggestionsServiceContactsConfirmRejectProtocol-_confirmRejectUI setting ui to %td", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)rejectEvent:(id)event withCompletion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1545 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-rejectEvent", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SGSuggestionsService_rejectEvent_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager rejectEvent:eventCopy completion:v13];
}

void __51__SGSuggestionsService_rejectEvent_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectEvent:(id)event error:(id *)error
{
  eventCopy = event;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = eventCopy;
  v8 = eventCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __42__SGSuggestionsService_rejectEvent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SGSuggestionsService_rejectEvent_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectEvent:v4 withCompletion:v7];
}

- (void)confirmEvent:(id)event withCompletion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-confirmEvent", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__SGSuggestionsService_confirmEvent_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = completionCopy;
  v11 = completionCopy;
  [_remoteSuggestionManager confirmEvent:eventCopy completion:v13];
}

void __52__SGSuggestionsService_confirmEvent_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmEvent:(id)event error:(id *)error
{
  eventCopy = event;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = eventCopy;
  v8 = eventCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __43__SGSuggestionsService_confirmEvent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SGSuggestionsService_confirmEvent_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmEvent:v4 withCompletion:v7];
}

- (void)originFromRecordId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1525 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__SGSuggestionsService_originFromRecordId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager originFromRecordId:idCopy completion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __58__SGSuggestionsService_originFromRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)originFromRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __49__SGSuggestionsService_originFromRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SGSuggestionsService_originFromRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFBB08;
  v8 = v3;
  v6 = v3;
  [v5 originFromRecordId:v4 withCompletion:v7];
}

- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1515 description:{@"Invalid parameter not satisfying: %@", @"launchInfo"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SGSuggestionsService_launchAppForSuggestedEventUsingLaunchInfo_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager launchAppForSuggestedEventUsingLaunchInfo:infoCopy completion:v12];
}

void __81__SGSuggestionsService_launchAppForSuggestedEventUsingLaunchInfo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)launchAppForSuggestedEventUsingLaunchInfo:(id)info error:(id *)error
{
  infoCopy = info;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = infoCopy;
  v8 = infoCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __72__SGSuggestionsService_launchAppForSuggestedEventUsingLaunchInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__SGSuggestionsService_launchAppForSuggestedEventUsingLaunchInfo_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 launchAppForSuggestedEventUsingLaunchInfo:v4 withCompletion:v7];
}

- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)identifier sourceURL:(id)l clientLocale:(id)locale withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  localeCopy = locale;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1499 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v15 = sgLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1BA729000, v15, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __110__SGSuggestionsService_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_withCompletion___block_invoke;
    v20[3] = &unk_1E7EFD0A0;
    v21 = completionCopy;
    [_remoteSuggestionManager launchInfoForSuggestedEventWithUniqueIdentifier:identifierCopy sourceURL:lCopy clientLocale:localeCopy ignoreUserActivitySupport:0 ignoreMailCheck:0 completion:v20];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __110__SGSuggestionsService_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)launchInfoForSuggestedEventWithUniqueIdentifier:(id)identifier sourceURL:(id)l clientLocale:(id)locale error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  localeCopy = locale;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = identifierCopy;
  v21 = lCopy;
  v22 = localeCopy;
  v14 = localeCopy;
  v15 = lCopy;
  v16 = identifierCopy;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [_daemonConnection waitUntilReturn:&v19 withTimeout:error error:?];

  return v17;
}

void __101__SGSuggestionsService_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__SGSuggestionsService_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_error___block_invoke_2;
  v9[3] = &unk_1E7EFBAB8;
  v10 = v3;
  v8 = v3;
  [v4 launchInfoForSuggestedEventWithUniqueIdentifier:v5 sourceURL:v7 clientLocale:v6 withCompletion:v9];
}

- (void)eventFromUniqueId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1490 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SGSuggestionsService_eventFromUniqueId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager eventFromUniqueId:idCopy completion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__SGSuggestionsService_eventFromUniqueId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)eventFromUniqueId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __48__SGSuggestionsService_eventFromUniqueId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SGSuggestionsService_eventFromUniqueId_error___block_invoke_2;
  v7[3] = &unk_1E7EFBA90;
  v8 = v3;
  v6 = v3;
  [v5 eventFromUniqueId:v4 withCompletion:v7];
}

- (void)eventFromRecordID:(id)d withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1480 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SGSuggestionsService_eventFromRecordID_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager eventFromRecordId:dCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__SGSuggestionsService_eventFromRecordID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)eventFromRecordID:(id)d error:(id *)error
{
  dCopy = d;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = dCopy;
  v8 = dCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __48__SGSuggestionsService_eventFromRecordID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SGSuggestionsService_eventFromRecordID_error___block_invoke_2;
  v7[3] = &unk_1E7EFBA90;
  v8 = v3;
  v6 = v3;
  [v5 eventFromRecordID:v4 withCompletion:v7];
}

- (void)emailAddressIsSignificant:(id)significant withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  significantCopy = significant;
  completionCopy = completion;
  if (!significantCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1469 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, &unk_1F3874298, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__SGSuggestionsService_emailAddressIsSignificant_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager emailAddressIsSignificant:significantCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __65__SGSuggestionsService_emailAddressIsSignificant_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)emailAddressIsSignificant:(id)significant error:(id *)error
{
  significantCopy = significant;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = significantCopy;
  v8 = significantCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __56__SGSuggestionsService_emailAddressIsSignificant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_emailAddressIsSignificant_error___block_invoke_2;
  v7[3] = &unk_1E7EFBA68;
  v8 = v3;
  v6 = v3;
  [v5 emailAddressIsSignificant:v4 withCompletion:v7];
}

- (void)cnContactMatchesForRecordIds:(id)ids withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  completionCopy = completion;
  if (!idsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1459 description:{@"Invalid parameter not satisfying: %@", @"recordIds"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SGSuggestionsService_cnContactMatchesForRecordIds_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager cnContactMatchesForRecordIds:idsCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__SGSuggestionsService_cnContactMatchesForRecordIds_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)cnContactMatchesForRecordIds:(id)ids error:(id *)error
{
  idsCopy = ids;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idsCopy;
  v8 = idsCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __59__SGSuggestionsService_cnContactMatchesForRecordIds_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SGSuggestionsService_cnContactMatchesForRecordIds_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 cnContactMatchesForRecordIds:v4 withCompletion:v7];
}

- (void)cnContactMatchesForRecordId:(id)id withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1449 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SGSuggestionsService_cnContactMatchesForRecordId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager cnContactMatchesForRecordId:idCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__SGSuggestionsService_cnContactMatchesForRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)cnContactMatchesForRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __58__SGSuggestionsService_cnContactMatchesForRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SGSuggestionsService_cnContactMatchesForRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 cnContactMatchesForRecordId:v4 withCompletion:v7];
}

- (void)contactFromRecordID:(id)d withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1439 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__SGSuggestionsService_contactFromRecordID_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager contactFromRecordId:dCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __59__SGSuggestionsService_contactFromRecordID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactFromRecordID:(id)d error:(id *)error
{
  dCopy = d;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = dCopy;
  v8 = dCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __50__SGSuggestionsService_contactFromRecordID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SGSuggestionsService_contactFromRecordID_error___block_invoke_2;
  v7[3] = &unk_1E7EFBA40;
  v8 = v3;
  v6 = v3;
  [v5 contactFromRecordID:v4 withCompletion:v7];
}

- (id)contactFromRecordID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1433 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v6 = [(SGSuggestionsService *)self contactFromRecordID:dCopy error:0];

  return v6;
}

- (void)interactionStoreLookupForDetail:(id)detail withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  detailCopy = detail;
  completionCopy = completion;
  if (!detailCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1417 description:{@"Invalid parameter not satisfying: %@", @"detail"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else if ([detailCopy isEqualToString:&stru_1F385B250])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Suggestions interactionStoreLookupForDetail with an empty parameter", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, &stru_1F385B250, 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__SGSuggestionsService_interactionStoreLookupForDetail_withCompletion___block_invoke;
    v15[3] = &unk_1E7EFD0A0;
    v16 = completionCopy;
    [_remoteSuggestionManager interactionStoreLookupForDetail:detailCopy withCompletion:v15];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __71__SGSuggestionsService_interactionStoreLookupForDetail_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)interactionStoreLookupForDetail:(id)detail error:(id *)error
{
  detailCopy = detail;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = detailCopy;
  v8 = detailCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __62__SGSuggestionsService_interactionStoreLookupForDetail_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SGSuggestionsService_interactionStoreLookupForDetail_error___block_invoke_2;
  v7[3] = &unk_1E7EFB840;
  v8 = v3;
  v6 = v3;
  [v5 interactionStoreLookupForDetail:v4 withCompletion:v7];
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 response1];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_595(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA729000, v4, OS_LOG_TYPE_DEBUG, "namesForDetail: in [cacheFuture wait:] callback", buf, 2u);
  }

  v5 = sgLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA729000, v5, OS_LOG_TYPE_DEBUG, "namesForDetail: got a snapshot in [cacheFuture wait:] callback", buf, 2u);
    }

    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    if (_entitlements_block_invoke__pasOnceToken68 != -1)
    {
      dispatch_once(&_entitlements_block_invoke__pasOnceToken68, &__block_literal_global_598);
    }

    v10 = _entitlements_block_invoke__pasExprOnceResult;
    if (_entitlements_block_invoke__pasOnceToken69 != -1)
    {
      dispatch_once(&_entitlements_block_invoke__pasOnceToken69, &__block_literal_global_602);
    }

    v11 = _entitlements_block_invoke__pasExprOnceResult_600;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_3;
    v38[3] = &__block_descriptor_33_e46_v24__0__NSObject_OS_dispatch_queue__8___v___16l;
    v39 = *(a1 + 72);
    v12 = MEMORY[0x1BFAF7240](v38);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_4;
    v29[3] = &unk_1E7EFB9F0;
    v30 = *(a1 + 32);
    v13 = v8;
    v31 = v13;
    v14 = v7;
    v32 = v14;
    v15 = v12;
    v35 = v15;
    v16 = v11;
    v33 = v16;
    v37 = *(a1 + 73);
    v17 = v9;
    v34 = v17;
    v36 = *(a1 + 56);
    (v12)[2](v15, v10, v29);
    if ((atomic_exchange(_entitlements_block_invoke_reportingFlag, 1u) & 1) == 0)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_6;
      v28[3] = &unk_1E7EFD118;
      v28[4] = *(a1 + 40);
      [MEMORY[0x1E69C5D10] runAsyncOnQueue:v16 afterDelaySeconds:v28 block:10.0];
    }
  }

  else
  {
    if (v6)
    {
      v25 = [*(a1 + 48) error];
      *buf = 138412290;
      v41 = v25;
      _os_log_debug_impl(&dword_1BA729000, v5, OS_LOG_TYPE_DEBUG, "namesForDetail: falling back to asking for detail individually because we failed to get a snapshot in [cacheFuture wait:] callback (error: %@)", buf, 0xCu);
    }

    v18 = [*(a1 + 40) _remoteSuggestionManager];
    v19 = *(a1 + 32);
    v20 = *(a1 + 73);
    v21 = *(a1 + 74);
    v22 = *(a1 + 75);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_614;
    v26[3] = &unk_1E7EFD0A0;
    v23 = *(a1 + 64);
    v27 = *(a1 + 56);
    [v18 namesForDetail:v19 limitTo:v23 prependMaybe:v20 onlySignificant:v21 supportsInfoLookup:v22 withCompletion:v26];

    v14 = v27;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_3(uint64_t a1, dispatch_queue_t queue, dispatch_block_t block)
{
  if (*(a1 + 32) == 1)
  {
    dispatch_sync(queue, block);
  }

  else
  {
    dispatch_async(queue, block);
  }
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) containsString:@"@"])
  {
    v2 = *(a1 + 40);
    SGNormalizeEmailAddress(*(a1 + 32));
  }

  else
  {
    v2 = *(a1 + 48);
    SGNormalizePhoneNumber(*(a1 + 32));
  }
  v3 = ;
  v4 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_5;
  v9[3] = &unk_1E7EFB9C8;
  v10 = v2;
  v11 = v3;
  v14 = *(a1 + 88);
  v5 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v6 = *(v5 + 16);
  v7 = v3;
  v8 = v2;
  v6(v5, v4, v9);
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_6(uint64_t a1)
{
  atomic_store(0, _entitlements_block_invoke_reportingFlag);
  if (_entitlements_block_invoke_foundCount | _entitlements_block_invoke_notFoundCount)
  {
    v1 = [*(a1 + 32) _remoteSuggestionManager];
    [v1 logUnknownContactInformationShownCount:_entitlements_block_invoke_foundCount notShownCount:_entitlements_block_invoke_notFoundCount bundleId:0];

    _entitlements_block_invoke_foundCount = 0;
    _entitlements_block_invoke_notFoundCount = 0;
  }
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_614(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 response1];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_5(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = [*(a1 + 32) valueForKey:*(a1 + 40) found:&v17];
  v3 = v2;
  if (v17 == 1)
  {
    ++_entitlements_block_invoke_foundCount;
    if (v2)
    {
      v4 = [SGKeyValueCacheFile fullNameForEncodedContact:v2];
      v5 = v4;
      if (*(a1 + 64) == 1 && *(a1 + 48) && [v4 length])
      {
        v13 = _PASValidatedFormat(*(a1 + 48), v6, v7, v8, v9, v10, v11, v12, v5);

        v5 = v13;
      }
    }

    else
    {
      v5 = 0;
    }

    v14 = *(a1 + 56);
    if ([v5 length])
    {
      v18[0] = v5;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      (*(v14 + 16))(v14, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    ++_entitlements_block_invoke_notFoundCount;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("namesForUnknownDetail-lookup", v1);
  v3 = _entitlements_block_invoke__pasExprOnceResult_600;
  _entitlements_block_invoke__pasExprOnceResult_600 = v2;

  objc_autoreleasePoolPop(v0);
}

void __110__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion___block_invoke_596()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("namesForUnknownDetail-norm", v1);
  v3 = _entitlements_block_invoke__pasExprOnceResult;
  _entitlements_block_invoke__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe onlySignificant:(BOOL)significant supportsInfoLookup:(BOOL)lookup error:(id *)error
{
  detailCopy = detail;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = detailCopy;
  toCopy = to;
  maybeCopy = maybe;
  significantCopy = significant;
  lookupCopy = lookup;
  v16 = detailCopy;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [_daemonConnection waitUntilReturn:&v19 withTimeout:error error:?];

  return v17;
}

void __101__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a1 + 58);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_error___block_invoke_2;
  v11[3] = &unk_1E7EFB660;
  v12 = v3;
  v10 = v3;
  [v4 namesForDetail:v5 limitTo:v6 prependMaybe:v7 onlySignificant:v8 supportsInfoLookup:v9 withCompletion:v11];
}

- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe onlySignificant:(BOOL)significant error:(id *)error
{
  detailCopy = detail;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = detailCopy;
  toCopy = to;
  maybeCopy = maybe;
  significantCopy = significant;
  v14 = detailCopy;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [_daemonConnection waitUntilReturn:&v17 withTimeout:error error:?];

  return v15;
}

void __82__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_onlySignificant_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 namesForDetail:v5 limitTo:v6 prependMaybe:v7 onlySignificant:v8 withCompletion:v10];
}

- (id)namesForDetail:(id)detail limitTo:(unint64_t)to prependMaybe:(BOOL)maybe error:(id *)error
{
  detailCopy = detail;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = detailCopy;
  toCopy = to;
  maybeCopy = maybe;
  v12 = detailCopy;
  [(SGSuggestionsService *)self syncTimeout:v15];
  v13 = [_daemonConnection waitUntilReturn:&v15 withTimeout:error error:?];

  return v13;
}

void __66__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SGSuggestionsService_namesForDetail_limitTo_prependMaybe_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 namesForDetail:v5 limitTo:v6 prependMaybe:v7 withCompletion:v9];
}

uint64_t __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke_587(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA729000, v2, OS_LOG_TYPE_DEBUG, "namesForDetail: cacheSnapshot: expired the snapshot", v4, 2u);
  }

  return [*(a1 + 32) _clearHarvestStoreCache];
}

- (void)celebrationExtractionsForInterval:(id)interval withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  if (!intervalCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1209 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__SGSuggestionsService_celebrationExtractionsForInterval_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager celebrationExtractionsForInterval:intervalCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __73__SGSuggestionsService_celebrationExtractionsForInterval_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)celebrationExtractionsForInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = intervalCopy;
  v8 = intervalCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __64__SGSuggestionsService_celebrationExtractionsForInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SGSuggestionsService_celebrationExtractionsForInterval_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 celebrationExtractionsForInterval:v4 withCompletion:v7];
}

- (void)birthdayExtractionsForInterval:(id)interval withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  if (!intervalCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1199 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__SGSuggestionsService_birthdayExtractionsForInterval_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager birthdayExtractionsForInterval:intervalCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __70__SGSuggestionsService_birthdayExtractionsForInterval_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)birthdayExtractionsForInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = intervalCopy;
  v8 = intervalCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __61__SGSuggestionsService_birthdayExtractionsForInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SGSuggestionsService_birthdayExtractionsForInterval_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 birthdayExtractionsForInterval:v4 withCompletion:v7];
}

- (void)contactMatchesBySocialProfile:(id)profile bundleIdentifier:(id)identifier withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  identifierCopy = identifier;
  completionCopy = completion;
  if (profileCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1177 description:{@"Invalid parameter not satisfying: %@", @"userIdentifier"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1178 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v14 = [SGSocialProfile alloc];
    v15 = [SGExtractionInfo extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
    v16 = [SGRecordId recordIdWithNumericValue:-1];
    v17 = [(SGSocialProfile *)v14 initWithUsername:0 userIdentifier:profileCopy bundleIdentifier:identifierCopy displayName:0 service:0 teamIdentifier:0 label:0 extractionInfo:v15 recordId:v16];

    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_withCompletion___block_invoke;
    v22[3] = &unk_1E7EFD0A0;
    v23 = completionCopy;
    [_remoteSuggestionManager contactMatchesBySocialProfile:v17 withCompletion:v22];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __86__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesBySocialProfile:(id)profile bundleIdentifier:(id)identifier error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = profileCopy;
  v17 = identifierCopy;
  v11 = identifierCopy;
  v12 = profileCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [_daemonConnection waitUntilReturn:v15 withTimeout:error error:?];

  return v13;
}

void __77__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 contactMatchesBySocialProfile:v5 bundleIdentifier:v6 withCompletion:v8];
}

- (void)contactMatchesBySocialProfile:(id)profile withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  completionCopy = completion;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"socialProfile"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__SGSuggestionsService_contactMatchesBySocialProfile_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager contactMatchesBySocialProfile:profileCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __69__SGSuggestionsService_contactMatchesBySocialProfile_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesBySocialProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = profileCopy;
  v8 = profileCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __60__SGSuggestionsService_contactMatchesBySocialProfile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SGSuggestionsService_contactMatchesBySocialProfile_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 contactMatchesBySocialProfile:v4 withCompletion:v7];
}

- (void)contactMatchesByEmailAddress:(id)address withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SGSuggestionsService_contactMatchesByEmailAddress_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager contactMatchesByEmailAddress:addressCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__SGSuggestionsService_contactMatchesByEmailAddress_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesByEmailAddress:(id)address error:(id *)error
{
  addressCopy = address;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = addressCopy;
  v8 = addressCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __59__SGSuggestionsService_contactMatchesByEmailAddress_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SGSuggestionsService_contactMatchesByEmailAddress_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 contactMatchesByEmailAddress:v4 withCompletion:v7];
}

- (id)contactMatchesByEmailAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v6 = [(SGSuggestionsService *)self contactMatchesByEmailAddress:addressCopy error:0];

  return v6;
}

- (void)contactMatchesByPhoneNumber:(id)number withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  completionCopy = completion;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1141 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SGSuggestionsService_contactMatchesByPhoneNumber_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager contactMatchesByPhoneNumber:numberCopy withCompletion:v14];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__SGSuggestionsService_contactMatchesByPhoneNumber_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesByPhoneNumber:(id)number error:(id *)error
{
  numberCopy = number;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = numberCopy;
  v8 = numberCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __58__SGSuggestionsService_contactMatchesByPhoneNumber_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SGSuggestionsService_contactMatchesByPhoneNumber_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 contactMatchesByPhoneNumber:v4 withCompletion:v7];
}

- (id)contactMatchesByPhoneNumber:(id)number
{
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1135 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
  }

  v6 = [(SGSuggestionsService *)self contactMatchesByPhoneNumber:numberCopy error:0];

  return v6;
}

- (void)harvestedSuggestionsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1124 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (options)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1125 description:@"Passing 0 for options would return nothing"];

    goto LABEL_3;
  }

  if (!options)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager harvestedSuggestionsFromSearchableItem:itemCopy options:options withCompletion:v15];
}

void __86__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)harvestedSuggestionsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error
{
  itemCopy = item;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = itemCopy;
  optionsCopy = options;
  v10 = itemCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __77__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 harvestedSuggestionsFromSearchableItem:v5 options:v6 withCompletion:v8];
}

- (void)extractAttributesAndDonate:(id)donate withCompletion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  donateCopy = donate;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    bundleID = [donateCopy bundleID];
    v9 = [bundleID isEqualToString:@"com.apple.mobilemail"];

    if (!v9 || ([donateCopy attributeSet], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "HTMLContentDataNoCopy"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12 < 0xC8001))
    {
      attributeSet = [donateCopy attributeSet];
      contentCreationDate = [attributeSet contentCreationDate];

      if (!contentCreationDate)
      {
        goto LABEL_8;
      }

      v15 = +[SGPreferenceStorage preExtractionMaxDocumentAgeDays];
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = v15;
        _os_log_impl(&dword_1BA729000, v16, OS_LOG_TYPE_DEFAULT, "Max allowed document age is %ld days", buf, 0xCu);
      }

      [contentCreationDate timeIntervalSinceNow];
      if (v17 <= (-86400 * v15))
      {
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = [contentCreationDate description];
        v19 = [v24 initWithFormat:@"Content date: %@ Rejecting as expired", v25];

        v26 = sgLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v19;
          _os_log_impl(&dword_1BA729000, v26, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        if (completionCopy)
        {
          v27 = MEMORY[0x1E696ABC0];
          v33 = @"message";
          v34 = v19;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v29 = [v27 errorWithDomain:@"SGErrorDomain" code:13 userInfo:v28];
          completionCopy[2](completionCopy, 0, v29);
        }
      }

      else
      {
LABEL_8:
        _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __66__SGSuggestionsService_extractAttributesAndDonate_withCompletion___block_invoke;
        v31[3] = &unk_1E7EFD0A0;
        v32 = completionCopy;
        [_remoteSuggestionManager extractAttributesAndDonate:donateCopy withCompletion:v31];

        v19 = v32;
      }

      goto LABEL_21;
    }

    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v12;
      v37 = 2048;
      v38 = 819200;
      _os_log_impl(&dword_1BA729000, v23, OS_LOG_TYPE_DEFAULT, "Rejecting email with HTML length %lu (max: %lu)", buf, 0x16u);
    }

    if (completionCopy)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = &unk_1F38744A0;
      v22 = 8;
      goto LABEL_11;
    }
  }

  else if (completionCopy)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = &unk_1F3874478;
    v22 = 0;
LABEL_11:
    contentCreationDate = [v20 errorWithDomain:@"SGErrorDomain" code:v22 userInfo:v21];
    completionCopy[2](completionCopy, 0, contentCreationDate);
LABEL_21:
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __66__SGSuggestionsService_extractAttributesAndDonate_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)extractAttributesAndDonate:(id)donate error:(id *)error
{
  donateCopy = donate;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = donateCopy;
  v8 = donateCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __57__SGSuggestionsService_extractAttributesAndDonate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SGSuggestionsService_extractAttributesAndDonate_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 extractAttributesAndDonate:v4 withCompletion:v7];
}

- (void)filteredSuggestionsFromExtractions:(id)extractions origin:(id)origin options:(unint64_t)options withCompletion:(id)completion
{
  completionCopy = completion;
  originCopy = origin;
  extractionsCopy = extractions;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__SGSuggestionsService_filteredSuggestionsFromExtractions_origin_options_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = completionCopy;
  v14 = completionCopy;
  [_remoteSuggestionManager filteredSuggestionsFromExtractions:extractionsCopy origin:originCopy options:options withCompletion:v15];
}

void __89__SGSuggestionsService_filteredSuggestionsFromExtractions_origin_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)filteredSuggestionsFromExtractions:(id)extractions origin:(id)origin options:(unint64_t)options error:(id *)error
{
  extractionsCopy = extractions;
  originCopy = origin;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = extractionsCopy;
  v19 = originCopy;
  optionsCopy = options;
  v13 = originCopy;
  v14 = extractionsCopy;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [_daemonConnection waitUntilReturn:&v17 withTimeout:error error:?];

  return v15;
}

void __80__SGSuggestionsService_filteredSuggestionsFromExtractions_origin_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__SGSuggestionsService_filteredSuggestionsFromExtractions_origin_options_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 filteredSuggestionsFromExtractions:v5 origin:v7 options:v6 withCompletion:v9];
}

- (void)suggestionsFromSearchableItem:(id)item options:(unint64_t)options processingType:(unint64_t)type withCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (itemCopy)
  {
    if (options)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1041 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (options)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1042 description:@"Passing 0 for options would return nothing"];

LABEL_3:
  bundleID = [itemCopy bundleID];

  if (!bundleID)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [itemCopy setBundleID:bundleIdentifier];
  }

  attributeSet = [itemCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet HTMLContentDataNoCopy];
  v18 = [hTMLContentDataNoCopy length];

  if (v18 <= 0xC8000)
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __92__SGSuggestionsService_suggestionsFromSearchableItem_options_processingType_withCompletion___block_invoke;
    v25[3] = &unk_1E7EFD0A0;
    v26 = completionCopy;
    [_remoteSuggestionManager suggestionsFromSearchableItem:itemCopy options:options processingType:type withCompletion:v25];

    v20 = v26;
    goto LABEL_11;
  }

  v19 = sgLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = v18;
    v29 = 2048;
    v30 = 819200;
    _os_log_impl(&dword_1BA729000, v19, OS_LOG_TYPE_DEFAULT, "Rejecting email with HTML length %lu (max: %lu)", buf, 0x16u);
  }

  if (completionCopy)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874450];
    (*(completionCopy + 2))(completionCopy, 0, v20);
LABEL_11:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __92__SGSuggestionsService_suggestionsFromSearchableItem_options_processingType_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestionsFromSearchableItem:(id)item options:(unint64_t)options processingType:(unint64_t)type error:(id *)error
{
  itemCopy = item;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = itemCopy;
  optionsCopy = options;
  typeCopy = type;
  v12 = itemCopy;
  [(SGSuggestionsService *)self syncTimeout:v15];
  v13 = [_daemonConnection waitUntilReturn:&v15 withTimeout:error error:?];

  return v13;
}

void __83__SGSuggestionsService_suggestionsFromSearchableItem_options_processingType_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__SGSuggestionsService_suggestionsFromSearchableItem_options_processingType_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 suggestionsFromSearchableItem:v5 options:v7 processingType:v6 withCompletion:v9];
}

- (void)suggestionsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (itemCopy)
  {
    if (options)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1015 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (options)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1016 description:@"Passing 0 for options would return nothing"];

LABEL_3:
  bundleID = [itemCopy bundleID];

  if (!bundleID)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [itemCopy setBundleID:bundleIdentifier];
  }

  attributeSet = [itemCopy attributeSet];
  hTMLContentDataNoCopy = [attributeSet HTMLContentDataNoCopy];
  v16 = [hTMLContentDataNoCopy length];

  if (v16 <= 0xC8000)
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__SGSuggestionsService_suggestionsFromSearchableItem_options_withCompletion___block_invoke;
    v23[3] = &unk_1E7EFD0A0;
    v24 = completionCopy;
    [_remoteSuggestionManager suggestionsFromSearchableItem:itemCopy options:options withCompletion:v23];

    v18 = v24;
    goto LABEL_11;
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v26 = v16;
    v27 = 2048;
    v28 = 819200;
    _os_log_impl(&dword_1BA729000, v17, OS_LOG_TYPE_DEFAULT, "Rejecting email with HTML length %lu (max: %lu)", buf, 0x16u);
  }

  if (completionCopy)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874428];
    (*(completionCopy + 2))(completionCopy, 0, v18);
LABEL_11:
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __77__SGSuggestionsService_suggestionsFromSearchableItem_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestionsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error
{
  itemCopy = item;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SGSuggestionsService_suggestionsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = itemCopy;
  optionsCopy = options;
  v10 = itemCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __68__SGSuggestionsService_suggestionsFromSearchableItem_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__SGSuggestionsService_suggestionsFromSearchableItem_options_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 suggestionsFromSearchableItem:v5 options:v6 withCompletion:v8];
}

- (void)suggestionsFromEmailContent:(id)content headers:(id)headers source:(id)source options:(unint64_t)options withCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  headersCopy = headers;
  sourceCopy = source;
  completionCopy = completion;
  if (contentCopy)
  {
    if (headersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:990 description:{@"Invalid parameter not satisfying: %@", @"htmlContent"}];

    if (headersCopy)
    {
LABEL_3:
      if (sourceCopy)
      {
        goto LABEL_4;
      }

LABEL_15:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:992 description:{@"Invalid parameter not satisfying: %@", @"sourceId"}];

      if (options)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:991 description:{@"Invalid parameter not satisfying: %@", @"rfc822Headers"}];

  if (!sourceCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (options)
  {
    goto LABEL_5;
  }

LABEL_16:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:993 description:@"Passing 0 for options would return nothing"];

LABEL_5:
  if ([contentCopy length] <= 0xC8000)
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke;
    v25[3] = &unk_1E7EFD0A0;
    v26 = completionCopy;
    [_remoteSuggestionManager suggestionsFromEmailContent:contentCopy headers:headersCopy source:sourceCopy options:options withCompletion:v25];

    v18 = v26;
    goto LABEL_11;
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = [contentCopy length];
    v29 = 2048;
    v30 = 819200;
    _os_log_impl(&dword_1BA729000, v17, OS_LOG_TYPE_DEFAULT, "Rejecting email with HTML length %lu (max: %lu)", buf, 0x16u);
  }

  if (completionCopy)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874400];
    (*(completionCopy + 2))(completionCopy, 0, v18);
LABEL_11:
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __90__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestionsFromEmailContent:(id)content headers:(id)headers source:(id)source options:(unint64_t)options error:(id *)error
{
  contentCopy = content;
  headersCopy = headers;
  sourceCopy = source;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_error___block_invoke;
  v21[3] = &unk_1E7EFB7F0;
  v21[4] = self;
  v22 = contentCopy;
  v23 = headersCopy;
  v24 = sourceCopy;
  optionsCopy = options;
  v16 = sourceCopy;
  v17 = headersCopy;
  v18 = contentCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [_daemonConnection waitUntilReturn:v21 withTimeout:error error:?];

  return v19;
}

void __81__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 suggestionsFromEmailContent:v5 headers:v6 source:v7 options:v8 withCompletion:v10];
}

- (void)allDeliveriesWithLimit:(unint64_t)limit withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  isClassCLocked = [MEMORY[0x1E69C5D08] isClassCLocked];
  v9 = sgLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isClassCLocked)
  {
    if (v10)
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsService getting all Deliveries", buf, 2u);
    }

    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__SGSuggestionsService_allDeliveriesWithLimit_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = completionCopy;
    [_remoteSuggestionManager allDeliveriesWithLimit:limit withCompletion:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __62__SGSuggestionsService_allDeliveriesWithLimit_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)allDeliveriesWithLimit:(unint64_t)limit error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __53__SGSuggestionsService_allDeliveriesWithLimit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SGSuggestionsService_allDeliveriesWithLimit_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 allDeliveriesWithLimit:v4 withCompletion:v7];
}

- (void)logUserCreatedReminderTitle:(id)title withCompletion:(id)completion
{
  completionCopy = completion;
  titleCopy = title;
  v8 = sgRemindersLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsService logging user created reminder title", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SGSuggestionsService_logUserCreatedReminderTitle_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFB610;
  v12 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager logUserCreatedReminderTitle:titleCopy withCompletion:v11];
}

void __67__SGSuggestionsService_logUserCreatedReminderTitle_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)logUserCreatedReminderTitle:(id)title error:(id *)error
{
  titleCopy = title;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = titleCopy;
  v8 = titleCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __58__SGSuggestionsService_logUserCreatedReminderTitle_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SGSuggestionsService_logUserCreatedReminderTitle_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 logUserCreatedReminderTitle:v4 withCompletion:v7];
}

- (void)reminderTitleForContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  contentCopy = content;
  v8 = sgRemindersLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsService detecting reminder for content", buf, 2u);
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SGSuggestionsService_reminderTitleForContent_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFD0A0;
  v12 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager reminderTitleForContent:contentCopy withCompletion:v11];
}

void __63__SGSuggestionsService_reminderTitleForContent_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)reminderTitleForContent:(id)content error:(id *)error
{
  contentCopy = content;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = contentCopy;
  v8 = contentCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];

  return v9;
}

void __54__SGSuggestionsService_reminderTitleForContent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SGSuggestionsService_reminderTitleForContent_error___block_invoke_2;
  v7[3] = &unk_1E7EFB840;
  v8 = v3;
  v6 = v3;
  [v5 reminderTitleForContent:v4 withCompletion:v7];
}

- (void)allRemindersLimitedTo:(unint64_t)to withCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v10 = sgRemindersLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v10, OS_LOG_TYPE_DEFAULT, "SuggestionsService getting all reminders", buf, 2u);
    }

    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SGSuggestionsService_allRemindersLimitedTo_withCompletion___block_invoke;
    v13[3] = &unk_1E7EFD0A0;
    v14 = completionCopy;
    [_remoteSuggestionManager allRemindersLimitedTo:to withCompletion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __61__SGSuggestionsService_allRemindersLimitedTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)allRemindersLimitedTo:(unint64_t)to error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __52__SGSuggestionsService_allRemindersLimitedTo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SGSuggestionsService_allRemindersLimitedTo_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 allRemindersLimitedTo:v4 withCompletion:v7];
}

- (void)reminderAlarmTriggeredForRecordId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:938 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__SGSuggestionsService_reminderAlarmTriggeredForRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager reminderAlarmTriggeredForRecordId:idCopy completion:v12];
}

void __73__SGSuggestionsService_reminderAlarmTriggeredForRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)reminderAlarmTriggeredForRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __64__SGSuggestionsService_reminderAlarmTriggeredForRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SGSuggestionsService_reminderAlarmTriggeredForRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 reminderAlarmTriggeredForRecordId:v4 withCompletion:v7];
}

- (void)rejectRealtimeReminder:(id)reminder withCompletion:(id)completion
{
  reminderCopy = reminder;
  completionCopy = completion;
  if (!reminderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:930 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_rejectRealtimeReminder_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager rejectRealtimeReminder:reminderCopy completion:v12];
}

void __62__SGSuggestionsService_rejectRealtimeReminder_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectRealtimeReminder:(id)reminder error:(id *)error
{
  reminderCopy = reminder;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = reminderCopy;
  v8 = reminderCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __53__SGSuggestionsService_rejectRealtimeReminder_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SGSuggestionsService_rejectRealtimeReminder_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectRealtimeReminder:v4 withCompletion:v7];
}

- (void)rejectReminderByRecordId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SGSuggestionsService_rejectReminderByRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager rejectReminderByRecordId:idCopy completion:v12];
}

void __64__SGSuggestionsService_rejectReminderByRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rejectReminderByRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __55__SGSuggestionsService_rejectReminderByRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SGSuggestionsService_rejectReminderByRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 rejectReminderByRecordId:v4 withCompletion:v7];
}

- (void)confirmRealtimeReminder:(id)reminder withCompletion:(id)completion
{
  reminderCopy = reminder;
  completionCopy = completion;
  if (!reminderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__SGSuggestionsService_confirmRealtimeReminder_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager confirmRealtimeReminder:reminderCopy completion:v12];
}

void __63__SGSuggestionsService_confirmRealtimeReminder_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmRealtimeReminder:(id)reminder error:(id *)error
{
  reminderCopy = reminder;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = reminderCopy;
  v8 = reminderCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __54__SGSuggestionsService_confirmRealtimeReminder_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SGSuggestionsService_confirmRealtimeReminder_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmRealtimeReminder:v4 withCompletion:v7];
}

- (void)confirmReminderByRecordId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:906 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SGSuggestionsService_confirmReminderByRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = completionCopy;
  v10 = completionCopy;
  [_remoteSuggestionManager confirmReminderByRecordId:idCopy completion:v12];
}

void __65__SGSuggestionsService_confirmReminderByRecordId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)confirmReminderByRecordId:(id)id error:(id *)error
{
  idCopy = id;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = idCopy;
  v8 = idCopy;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  LOBYTE(self) = [v9 BOOLValue];

  return self;
}

void __56__SGSuggestionsService_confirmReminderByRecordId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_confirmReminderByRecordId_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v5 confirmReminderByRecordId:v4 withCompletion:v7];
}

- (void)allEventsLimitedTo:(unint64_t)to withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__SGSuggestionsService_allEventsLimitedTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = completionCopy;
    [_remoteSuggestionManager allEventsLimitedTo:to withCompletion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __58__SGSuggestionsService_allEventsLimitedTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)allEventsLimitedTo:(unint64_t)to error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __49__SGSuggestionsService_allEventsLimitedTo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SGSuggestionsService_allEventsLimitedTo_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 allEventsLimitedTo:v4 withCompletion:v7];
}

- (void)suggestEventsInFutureLimitTo:(unint64_t)to withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__SGSuggestionsService_suggestEventsInFutureLimitTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = completionCopy;
    [_remoteSuggestionManager eventsInFutureLimitTo:to options:0 withCompletion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68__SGSuggestionsService_suggestEventsInFutureLimitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsInFutureLimitTo:(unint64_t)to error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __59__SGSuggestionsService_suggestEventsInFutureLimitTo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SGSuggestionsService_suggestEventsInFutureLimitTo_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 suggestEventsInFutureLimitTo:v4 withCompletion:v7];
}

- (void)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  atCopy = at;
  endingAtCopy = endingAt;
  prefixCopy = prefix;
  completionCopy = completion;
  if (atCopy)
  {
    if (endingAtCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:878 description:{@"Invalid parameter not satisfying: %@", @"end"}];

    if (prefixCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"start"}];

  if (!endingAtCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (prefixCopy)
  {
    goto LABEL_4;
  }

LABEL_13:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:879 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];

LABEL_4:
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_1BA729000, v17, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_withCompletion___block_invoke;
    v24[3] = &unk_1E7EFD0A0;
    v25 = completionCopy;
    [_remoteSuggestionManager eventsStartingAt:atCopy endingAt:endingAtCopy prefix:prefixCopy limitTo:to options:0 withCompletion:v24];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __87__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to error:(id *)error
{
  atCopy = at;
  endingAtCopy = endingAt;
  prefixCopy = prefix;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_error___block_invoke;
  v21[3] = &unk_1E7EFB7F0;
  v21[4] = self;
  v22 = atCopy;
  v23 = endingAtCopy;
  v24 = prefixCopy;
  toCopy = to;
  v16 = prefixCopy;
  v17 = endingAtCopy;
  v18 = atCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [_daemonConnection waitUntilReturn:v21 withTimeout:error error:?];

  return v19;
}

void __78__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 suggestEventsStartingAt:v5 endingAt:v6 prefix:v7 limitTo:v8 withCompletion:v10];
}

- (void)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  atCopy = at;
  endingAtCopy = endingAt;
  completionCopy = completion;
  if (atCopy)
  {
    if (endingAtCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:866 description:{@"Invalid parameter not satisfying: %@", @"start"}];

    if (endingAtCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:867 description:{@"Invalid parameter not satisfying: %@", @"end"}];

LABEL_3:
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_1BA729000, v14, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_withCompletion___block_invoke;
    v20[3] = &unk_1E7EFD0A0;
    v21 = completionCopy;
    [_remoteSuggestionManager eventsStartingAt:atCopy endingAt:endingAtCopy limitTo:to options:0 withCompletion:v20];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __80__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to error:(id *)error
{
  atCopy = at;
  endingAtCopy = endingAt;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = atCopy;
  v19 = endingAtCopy;
  toCopy = to;
  v13 = endingAtCopy;
  v14 = atCopy;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [_daemonConnection waitUntilReturn:&v17 withTimeout:error error:?];

  return v15;
}

void __71__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 suggestEventsStartingAt:v5 endingAt:v7 limitTo:v6 withCompletion:v9];
}

void __76__SGSuggestionsService_suggestEventsInFutureLimitTo_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsInFutureLimitTo:(unint64_t)to options:(unsigned int)options error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SGSuggestionsService_suggestEventsInFutureLimitTo_options_error___block_invoke;
  v12[3] = &unk_1E7EFB7C8;
  v12[4] = self;
  v12[5] = to;
  optionsCopy = options;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [_daemonConnection waitUntilReturn:v12 withTimeout:error error:?];

  return v10;
}

void __67__SGSuggestionsService_suggestEventsInFutureLimitTo_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SGSuggestionsService_suggestEventsInFutureLimitTo_options_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 suggestEventsInFutureLimitTo:v5 options:v6 withCompletion:v8];
}

void __95__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt prefix:(id)prefix limitTo:(unint64_t)to options:(unsigned int)options error:(id *)error
{
  atCopy = at;
  endingAtCopy = endingAt;
  prefixCopy = prefix;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = atCopy;
  v25 = endingAtCopy;
  v26 = prefixCopy;
  toCopy = to;
  optionsCopy = options;
  v18 = prefixCopy;
  v19 = endingAtCopy;
  v20 = atCopy;
  [(SGSuggestionsService *)self syncTimeout:v23];
  v21 = [_daemonConnection waitUntilReturn:&v23 withTimeout:error error:?];

  return v21;
}

void __86__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_options_error___block_invoke_2;
  v11[3] = &unk_1E7EFB660;
  v12 = v3;
  v10 = v3;
  [v4 suggestEventsStartingAt:v5 endingAt:v6 prefix:v7 limitTo:v8 options:v9 withCompletion:v11];
}

void __88__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestEventsStartingAt:(id)at endingAt:(id)endingAt limitTo:(unint64_t)to options:(unsigned int)options error:(id *)error
{
  atCopy = at;
  endingAtCopy = endingAt;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_options_error___block_invoke;
  v19[3] = &unk_1E7EFB778;
  v19[4] = self;
  v20 = atCopy;
  v21 = endingAtCopy;
  toCopy = to;
  optionsCopy = options;
  v15 = endingAtCopy;
  v16 = atCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v17 = [_daemonConnection waitUntilReturn:v19 withTimeout:error error:?];

  return v17;
}

void __79__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_options_error___block_invoke_2;
  v10[3] = &unk_1E7EFB660;
  v11 = v3;
  v9 = v3;
  [v4 suggestEventsStartingAt:v5 endingAt:v6 limitTo:v7 options:v8 withCompletion:v10];
}

- (void)waitForEventWithIdentifier:(id)identifier toAppearInEventStoreWithCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = identifierCopy;
  v9 = completionCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    v8 = 0;
  }

  [(SGSuggestionsService *)self waitForEventWithIdentifier:v8 toAppearInEventStoreWithLastModificationDate:0 completion:v9];
}

- (void)waitForEventWithIdentifier:(id)identifier toAppearInEventStoreWithLastModificationDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__SGSuggestionsService_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = completionCopy;
  v13 = completionCopy;
  [_remoteSuggestionManager waitForEventWithIdentifier:identifierCopy toAppearInEventStoreWithLastModificationDate:dateCopy completion:v15];
}

void __107__SGSuggestionsService_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 response1];
  v4 = [v6 BOOLValue];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (id)registerEventsChangeObserver:(id)observer
{
  observerCopy = observer;
  v4 = [[SGNotificationListener alloc] initWithNotification:@"com.apple.suggestions.eventsDidChange" callback:observerCopy];

  return v4;
}

- (id)registerContactsChangeObserver:(id)observer
{
  observerCopy = observer;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55__SGSuggestionsService_registerContactsChangeObserver___block_invoke;
  v13 = &unk_1E7EFB750;
  selfCopy = self;
  v15 = observerCopy;
  v5 = observerCopy;
  v6 = MEMORY[0x1BFAF7240](&v10);
  v7 = [SGNotificationListener alloc];
  selfCopy = [(SGNotificationListener *)v7 initWithNotification:@"com.apple.suggestions.contactsDidChange" callback:v6, v10, v11, v12, v13, selfCopy];

  return selfCopy;
}

void __55__SGSuggestionsService_registerContactsChangeObserver___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _clearHarvestStoreCache];
  (*(*(a1 + 40) + 16))();
}

- (void)_clearHarvestStoreCache
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  snapshotFuture = obj->_snapshotFuture;
  if (snapshotFuture)
  {
    [(SGFuture *)snapshotFuture disassociateFromParentObject];
    v4 = obj->_snapshotFuture;
    obj->_snapshotFuture = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

void __71__SGSuggestionsService_allContactsWithSnippets_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)allContactsWithSnippets:(BOOL)snippets limitTo:(unint64_t)to error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_allContactsWithSnippets_limitTo_error___block_invoke;
  v12[3] = &unk_1E7EFB728;
  snippetsCopy = snippets;
  v12[4] = self;
  v12[5] = to;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [_daemonConnection waitUntilReturn:v12 withTimeout:error error:?];

  return v10;
}

void __62__SGSuggestionsService_allContactsWithSnippets_limitTo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SGSuggestionsService_allContactsWithSnippets_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v6 allContactsWithSnippets:v4 limitTo:v5 withCompletion:v8];
}

- (void)allContactsLimitedTo:(unint64_t)to withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__SGSuggestionsService_allContactsLimitedTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = completionCopy;
    [_remoteSuggestionManager allContactsWithSnippets:1 limitTo:to withCompletion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __60__SGSuggestionsService_allContactsLimitedTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)allContactsLimitedTo:(unint64_t)to error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v10 withTimeout:error error:?];

  return v8;
}

void __51__SGSuggestionsService_allContactsLimitedTo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SGSuggestionsService_allContactsLimitedTo_error___block_invoke_2;
  v7[3] = &unk_1E7EFB660;
  v8 = v3;
  v6 = v3;
  [v5 allContactsLimitedTo:v4 withCompletion:v7];
}

- (void)suggestContactMatchesWithMessagingPrefix:(id)prefix limitTo:(unint64_t)to withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  completionCopy = completion;
  if (!prefixCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = completionCopy;
    [_remoteSuggestionManager contactMatchesWithMessagingPrefix:prefixCopy limitTo:to withCompletion:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __88__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestContactMatchesWithMessagingPrefix:(id)prefix limitTo:(unint64_t)to error:(id *)error
{
  prefixCopy = prefix;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = prefixCopy;
  toCopy = to;
  v10 = prefixCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __79__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 suggestContactMatchesWithMessagingPrefix:v5 limitTo:v6 withCompletion:v8];
}

- (void)suggestContactMatchesWithFullTextSearch:(id)search limitTo:(unint64_t)to withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  completionCopy = completion;
  if (!searchCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = completionCopy;
    [_remoteSuggestionManager contactMatchesWithFullTextSearch:searchCopy limitTo:to withCompletion:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __87__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestContactMatchesWithFullTextSearch:(id)search limitTo:(unint64_t)to error:(id *)error
{
  searchCopy = search;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = searchCopy;
  toCopy = to;
  v10 = searchCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __78__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 suggestContactMatchesWithFullTextSearch:v5 limitTo:v6 withCompletion:v8];
}

- (void)contactMatchesWithContactIdentifiers:(id)identifiers limitTo:(unint64_t)to withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:731 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifiers"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = completionCopy;
    [_remoteSuggestionManager contactMatchesWithContactIdentifiers:identifiersCopy limitTo:to withCompletion:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __84__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesWithContactIdentifiers:(id)identifiers limitTo:(unint64_t)to error:(id *)error
{
  identifiersCopy = identifiers;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = identifiersCopy;
  toCopy = to;
  v10 = identifiersCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __75__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 contactMatchesWithContactIdentifiers:v5 limitTo:v6 withCompletion:v8];
}

- (void)contactMatchesWithContactIdentifier:(id)identifier limitTo:(unint64_t)to withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifier"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = completionCopy;
    [_remoteSuggestionManager contactMatchesWithContactIdentifier:identifierCopy limitTo:to withCompletion:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __83__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesWithContactIdentifier:(id)identifier limitTo:(unint64_t)to error:(id *)error
{
  identifierCopy = identifier;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = identifierCopy;
  toCopy = to;
  v10 = identifierCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __74__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 contactMatchesWithContactIdentifier:v5 limitTo:v6 withCompletion:v8];
}

- (void)contactMatchesWithContact:(id)contact limitTo:(unint64_t)to withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  completionCopy = completion;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:711 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__SGSuggestionsService_contactMatchesWithContact_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = completionCopy;
    [_remoteSuggestionManager contactMatchesWithContact:contactCopy limitTo:to withCompletion:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __73__SGSuggestionsService_contactMatchesWithContact_limitTo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)contactMatchesWithContact:(id)contact limitTo:(unint64_t)to error:(id *)error
{
  contactCopy = contact;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SGSuggestionsService_contactMatchesWithContact_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = contactCopy;
  toCopy = to;
  v10 = contactCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __64__SGSuggestionsService_contactMatchesWithContact_limitTo_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SGSuggestionsService_contactMatchesWithContact_limitTo_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 contactMatchesWithContact:v5 limitTo:v6 withCompletion:v8];
}

- (void)dissectAttachmentsFromSearchableItem:(id)item options:(unint64_t)options withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];
  }

  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFD0A0;
  v15 = completionCopy;
  v12 = completionCopy;
  [_remoteSuggestionManager dissectAttachmentsFromSearchableItem:itemCopy options:options withCompletion:v14];
}

void __84__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)dissectAttachmentsFromSearchableItem:(id)item options:(unint64_t)options error:(id *)error
{
  itemCopy = item;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = itemCopy;
  optionsCopy = options;
  v10 = itemCopy;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [_daemonConnection waitUntilReturn:v13 withTimeout:error error:?];

  return v11;
}

void __75__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_error___block_invoke_2;
  v8[3] = &unk_1E7EFB660;
  v9 = v3;
  v7 = v3;
  [v4 dissectAttachmentsFromSearchableItem:v5 options:v6 withCompletion:v8];
}

- (void)suggestionsFromSimpleMailMessage:(id)message headers:(id)headers options:(unint64_t)options withCompletion:(id)completion
{
  messageCopy = message;
  headersCopy = headers;
  completionCopy = completion;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    if (headersCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"headers"}];

    goto LABEL_3;
  }

  if (!headersCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke;
  v20[3] = &unk_1E7EFB6B0;
  v20[4] = self;
  v21 = messageCopy;
  v23 = completionCopy;
  optionsCopy = options;
  v22 = headersCopy;
  v15 = completionCopy;
  v16 = headersCopy;
  v17 = messageCopy;
  [_remoteSuggestionManager clearCachesFully:1 withCompletion:v20];
}

void __88__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteSuggestionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke_2;
  v6[3] = &unk_1E7EFD0A0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 suggestionsFromSimpleMailMessage:v3 headers:v4 options:v5 withCompletion:v6];
}

void __88__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestionsFromSimpleMailMessage:(id)message headers:(id)headers options:(unint64_t)options error:(id *)error
{
  messageCopy = message;
  headersCopy = headers;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = messageCopy;
  v19 = headersCopy;
  optionsCopy = options;
  v13 = headersCopy;
  v14 = messageCopy;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [_daemonConnection waitUntilReturn:&v17 withTimeout:error error:?];

  return v15;
}

void __79__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 suggestionsFromSimpleMailMessage:v5 headers:v7 options:v6 withCompletion:v9];
}

- (void)suggestionsFromRFC822Data:(id)data source:(id)source options:(unint64_t)options withCompletion:(id)completion
{
  dataCopy = data;
  sourceCopy = source;
  completionCopy = completion;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"rfc822Data"}];

    if (sourceCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"sourceId"}];

    goto LABEL_3;
  }

  if (!sourceCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__SGSuggestionsService_suggestionsFromRFC822Data_source_options_withCompletion___block_invoke;
  v20[3] = &unk_1E7EFB6B0;
  v20[4] = self;
  v21 = dataCopy;
  v23 = completionCopy;
  optionsCopy = options;
  v22 = sourceCopy;
  v15 = completionCopy;
  v16 = sourceCopy;
  v17 = dataCopy;
  [_remoteSuggestionManager clearCachesFully:1 withCompletion:v20];
}

void __80__SGSuggestionsService_suggestionsFromRFC822Data_source_options_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteSuggestionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__SGSuggestionsService_suggestionsFromRFC822Data_source_options_withCompletion___block_invoke_2;
  v6[3] = &unk_1E7EFD0A0;
  v5 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 suggestionsFromRFC822Data:v3 source:v4 options:v5 withCompletion:v6];
}

void __80__SGSuggestionsService_suggestionsFromRFC822Data_source_options_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v5 = [v3 response1];
    v4 = [v3 error];

    (*(v2 + 16))(v2, v5, v4);
  }
}

- (id)suggestionsFromRFC822Data:(id)data source:(id)source options:(unint64_t)options error:(id *)error
{
  dataCopy = data;
  sourceCopy = source;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = dataCopy;
  v19 = sourceCopy;
  optionsCopy = options;
  v13 = sourceCopy;
  v14 = dataCopy;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [_daemonConnection waitUntilReturn:&v17 withTimeout:error error:?];

  return v15;
}

void __71__SGSuggestionsService_suggestionsFromRFC822Data_source_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__SGSuggestionsService_suggestionsFromRFC822Data_source_options_error___block_invoke_2;
  v9[3] = &unk_1E7EFB660;
  v10 = v3;
  v8 = v3;
  [v4 suggestionsFromRFC822Data:v5 source:v7 options:v6 withCompletion:v9];
}

void __56__SGSuggestionsService_clearCachesFully_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)clearCachesFully:(BOOL)fully error:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  LOBYTE(v12) = fully;
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [_daemonConnection waitUntilReturn:&v11 withTimeout:error error:?];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

void __47__SGSuggestionsService_clearCachesFully_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SGSuggestionsService_clearCachesFully_error___block_invoke_2;
  v7[3] = &unk_1E7EFD050;
  v8 = v3;
  v6 = v3;
  [v4 clearCachesFully:v5 withCompletion:v7];
}

- (void)rebuildNamesForDetailCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SGSuggestionsService_rebuildNamesForDetailCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager rebuildNamesForDetailCache:v7];
}

void __65__SGSuggestionsService_rebuildNamesForDetailCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)rebuildNamesForDetailCache:(id *)cache
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SGSuggestionsService_rebuildNamesForDetailCache___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:cache error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __51__SGSuggestionsService_rebuildNamesForDetailCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SGSuggestionsService_rebuildNamesForDetailCache___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 rebuildNamesForDetailCacheWithCompletion:v6];
}

- (void)resetConfirmationAndRejectionHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__SGSuggestionsService_resetConfirmationAndRejectionHistoryWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager resetConfirmationAndRejectionHistory:v7];
}

void __75__SGSuggestionsService_resetConfirmationAndRejectionHistoryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)resetConfirmationAndRejectionHistory:(id *)history
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SGSuggestionsService_resetConfirmationAndRejectionHistory___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:history error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __61__SGSuggestionsService_resetConfirmationAndRejectionHistory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SGSuggestionsService_resetConfirmationAndRejectionHistory___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 resetConfirmationAndRejectionHistoryWithCompletion:v6];
}

- (void)prepareForRealtimeExtractionWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteSuggestionManager = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SGSuggestionsService_prepareForRealtimeExtractionWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = completionCopy;
  v6 = completionCopy;
  [_remoteSuggestionManager prepareForRealtimeExtraction:v7];
}

void __67__SGSuggestionsService_prepareForRealtimeExtractionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

- (BOOL)prepareForRealtimeExtraction:(id *)extraction
{
  selfCopy = self;
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SGSuggestionsService_prepareForRealtimeExtraction___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = selfCopy;
  [(SGSuggestionsService *)selfCopy syncTimeout];
  v6 = [_daemonConnection waitUntilReturn:v8 withTimeout:extraction error:?];
  LOBYTE(selfCopy) = [v6 BOOLValue];

  return selfCopy;
}

void __53__SGSuggestionsService_prepareForRealtimeExtraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SGSuggestionsService_prepareForRealtimeExtraction___block_invoke_2;
  v6[3] = &unk_1E7EFD050;
  v7 = v3;
  v5 = v3;
  [v4 prepareForRealtimeExtractionWithCompletion:v6];
}

- (BOOL)isEnabledWithError:(id *)error
{
  _daemonConnection = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SGSuggestionsService_isEnabledWithError___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = self;
  [(SGSuggestionsService *)self syncTimeout];
  v5 = [_daemonConnection waitUntilReturn:v8 withTimeout:0 error:?];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

void __43__SGSuggestionsService_isEnabledWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _remoteSuggestionManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SGSuggestionsService_isEnabledWithError___block_invoke_2;
  v6[3] = &unk_1E7EFD0A0;
  v7 = v3;
  v5 = v3;
  [v4 isEnabledWithCompletion:v6];
}

void __43__SGSuggestionsService_isEnabledWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 error];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_1BA729000, v5, OS_LOG_TYPE_ERROR, "Error! %@", &v11, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v3 response1];
  v8 = [v3 error];
  (*(v6 + 16))(v6, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setSyncTimeout:(double)timeout
{
  pthread_mutex_lock(&self->_syncTimeoutLock);
  self->_syncTimeout = timeout;

  pthread_mutex_unlock(&self->_syncTimeoutLock);
}

- (double)syncTimeout
{
  pthread_mutex_lock(&self->_syncTimeoutLock);
  syncTimeout = self->_syncTimeout;
  pthread_mutex_unlock(&self->_syncTimeoutLock);
  return syncTimeout;
}

+ (void)prepareForQuery
{
  notify_post([@"com.apple.suggestions.prepareForQuery" UTF8String]);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SGSuggestionsService_prepareForQuery__block_invoke;
  v4[3] = &unk_1E7EFB5E8;
  v4[4] = &v5;
  [&unk_1F38743D8 enumerateKeysAndObjectsUsingBlock:v4];
  if ((v6[3] & 1) == 0)
  {
    v2 = sgLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_1BA729000, v2, OS_LOG_TYPE_ERROR, "Unable to boost for prepareForQuery due to no suitable entitlement being available", v3, 2u);
    }
  }

  _Block_object_dispose(&v5, 8);
}

void __39__SGSuggestionsService_prepareForQuery__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([SGSuggestionsService hasEntitlement:a3])
  {
    v8 = [[SGSuggestionsService alloc] initWithMachServiceName:v7 protocol:&unk_1F387CB20 useCache:0];
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEBUG, "prepareForQuery -- beginning keepDirty", buf, 2u);
    }

    [(SGSuggestionsService *)v8 keepDirty:1];
    v10 = MEMORY[0x1E69C5D10];
    v11 = dispatch_get_global_queue(-2, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__SGSuggestionsService_prepareForQuery__block_invoke_457;
    v13[3] = &unk_1E7EFD118;
    v14 = v8;
    v12 = v8;
    [v10 runAsyncOnQueue:v11 afterDelaySeconds:v13 block:5.0];

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __39__SGSuggestionsService_prepareForQuery__block_invoke_457(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA729000, v2, OS_LOG_TYPE_DEBUG, "prepareForQuery -- ending keepDirty", v4, 2u);
  }

  return [*(a1 + 32) keepDirty:0];
}

+ (BOOL)hasEntitlement:(id)entitlement
{
  v29 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v4 = entitlementCopy;
  if (hasEntitlement__onceToken == -1)
  {
    if (entitlementCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&hasEntitlement__onceToken, &__block_literal_global_426);
    if (v4)
    {
LABEL_3:
      v5 = hasEntitlement__cache;
      objc_sync_enter(v5);
      v6 = [hasEntitlement__cache objectForKeyedSubscript:v4];
      v7 = v6;
      if (v6)
      {
        bOOLValue = [v6 BOOLValue];
        v9 = 0;
        LOBYTE(v10) = 0;
        goto LABEL_27;
      }

      v11 = SecTaskCreateFromSelf(0);
      v12 = v11;
      if (v11)
      {
        error = 0;
        v13 = SecTaskCopyValueForEntitlement(v11, v4, &error);
        CFRelease(v12);
        v9 = v13 != 0;
        if (v13)
        {
          v14 = CFGetTypeID(v13);
          v10 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v13) != 0;
          CFRelease(v13);
          v19 = sgLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = @"NO";
            if (v10)
            {
              v20 = @"YES";
            }

            *buf = 138412546;
            v26 = v4;
            v27 = 2112;
            v28 = v20;
            _os_log_impl(&dword_1BA729000, v19, OS_LOG_TYPE_INFO, "Found %@ entitlement, value: %@", buf, 0x16u);
          }

          v21 = [MEMORY[0x1E696AD98] numberWithBool:v10];
          [hasEntitlement__cache setObject:v21 forKeyedSubscript:v4];

          goto LABEL_26;
        }

        v16 = error;
        v17 = sgLogHandle();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v26 = v4;
            v27 = 2112;
            v28 = error;
            _os_log_error_impl(&dword_1BA729000, v18, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement failed for %@, error: %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v4;
          _os_log_debug_impl(&dword_1BA729000, v18, OS_LOG_TYPE_DEBUG, "Couldn't find the %@ entitlement", buf, 0xCu);
        }

        if (error)
        {
          CFRelease(error);
        }
      }

      else
      {
        v15 = sgLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA729000, v15, OS_LOG_TYPE_INFO, "SecTaskCreateFromSelf returned NULL", buf, 2u);
        }

        v9 = 0;
      }

      LOBYTE(v10) = 0;
LABEL_26:
      bOOLValue = 0;
LABEL_27:

      objc_sync_exit(v5);
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  LOBYTE(v10) = 0;
LABEL_31:
  bOOLValue = v10;
LABEL_32:

  v22 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

uint64_t __39__SGSuggestionsService_hasEntitlement___block_invoke()
{
  hasEntitlement__cache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(&unk_1F38743B0, "count")}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_daemonConnectionFutureForMachServiceName:(id)name protocol:(id)protocol useCache:(BOOL)cache
{
  cacheCopy = cache;
  nameCopy = name;
  protocolCopy = protocol;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2207;
  v24 = __Block_byref_object_dispose__2208;
  v25 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__SGSuggestionsService__daemonConnectionFutureForMachServiceName_protocol_useCache___block_invoke;
  v16[3] = &unk_1E7EFB598;
  v19 = &v20;
  v9 = nameCopy;
  v17 = v9;
  v10 = protocolCopy;
  v18 = v10;
  v11 = MEMORY[0x1BFAF7240](v16);
  v12 = v11;
  if (cacheCopy)
  {
    v13 = +[SGSuggestionsService daemonConnections];
    [v13 runWithLockAcquired:v12];
  }

  else
  {
    (*(v11 + 16))(v11, 0);
  }

  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __84__SGSuggestionsService__daemonConnectionFutureForMachServiceName_protocol_useCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(*(a1 + 48) + 8) + 40) workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__SGSuggestionsService__daemonConnectionFutureForMachServiceName_protocol_useCache___block_invoke_2;
    block[3] = &unk_1E7EFD200;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = v11;
    v16 = v12;
    v15 = *(a1 + 32);
    dispatch_async(v10, block);

    [v3 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
  }
}

void __84__SGSuggestionsService__daemonConnectionFutureForMachServiceName_protocol_useCache___block_invoke_2(void *a1)
{
  v4 = [SGDSuggestManagerInterface xpcInterfaceForProtocol:a1[4]];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [[SGDaemonConnection alloc] initWithMachServiceName:a1[5] xpcInterface:v4];
  [v2 succeed:v3];
}

+ (id)serviceForSpotlightKnowledge
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.spotlightknowledged" protocol:&unk_1F387C670];

  return v2;
}

+ (id)serviceForMessages
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)serviceForFides
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.fides" protocol:&unk_1F387C5D8];

  return v2;
}

+ (id)serviceForInternal
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.internal" protocol:&unk_1F387C368];

  return v2;
}

+ (id)serviceForIpsos
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.ipsos" protocol:&unk_1F387BAF8];

  return v2;
}

+ (id)serviceForDeliveries
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.deliveries" protocol:&unk_1F387BA20];

  return v2;
}

+ (id)serviceForReminders
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.reminders" protocol:&unk_1F387B990];

  return v2;
}

+ (id)serviceForMail
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.suggestd.mail" protocol:&unk_1F387AE50];

  return v2;
}

+ (void)setInProcessSuggestManager:(id)manager
{
  managerCopy = manager;
  pthread_mutex_lock(&_inProcessSuggestManagerLock);
  v4 = _inProcessSuggestManager;
  _inProcessSuggestManager = managerCopy;

  pthread_mutex_unlock(&_inProcessSuggestManagerLock);
}

@end