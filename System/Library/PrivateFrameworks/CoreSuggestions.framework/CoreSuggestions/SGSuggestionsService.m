@interface SGSuggestionsService
+ (BOOL)hasEntitlement:(id)a3;
+ (id)_daemonConnectionFutureForMachServiceName:(id)a3 protocol:(id)a4 useCache:(BOOL)a5;
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
+ (void)setInProcessSuggestManager:(id)a3;
- (BOOL)addInteractions:(id)a3 bundleId:(id)a4 error:(id *)a5;
- (BOOL)addSearchableItems:(id)a3 error:(id *)a4;
- (BOOL)clearCachesFully:(BOOL)a3 error:(id *)a4;
- (BOOL)confirmContact:(id)a3 error:(id *)a4;
- (BOOL)confirmContactDetailRecord:(id)a3 confirmationUI:(int)a4 error:(id *)a5;
- (BOOL)confirmContactDetailRecord:(id)a3 error:(id *)a4;
- (BOOL)confirmEvent:(id)a3 error:(id *)a4;
- (BOOL)confirmEventByRecordId:(id)a3 error:(id *)a4;
- (BOOL)confirmRealtimeReminder:(id)a3 error:(id *)a4;
- (BOOL)confirmRecord:(id)a3 error:(id *)a4;
- (BOOL)confirmReminderByRecordId:(id)a3 error:(id *)a4;
- (BOOL)daemonExit:(id *)a3;
- (BOOL)deleteEventByRecordId:(id)a3 error:(id *)a4;
- (BOOL)isEnabledWithError:(id *)a3;
- (BOOL)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 error:(id *)a4;
- (BOOL)logUserCreatedReminderTitle:(id)a3 error:(id *)a4;
- (BOOL)ping:(id *)a3;
- (BOOL)prepareForRealtimeExtraction:(id *)a3;
- (BOOL)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 error:(id *)a5;
- (BOOL)rebuildNamesForDetailCache:(id *)a3;
- (BOOL)registerURLFeedback:(unsigned __int8)a3 absoluteURL:(id)a4 error:(id *)a5;
- (BOOL)rejectContact:(id)a3 error:(id *)a4;
- (BOOL)rejectContact:(id)a3 rejectionUI:(int)a4 error:(id *)a5;
- (BOOL)rejectContactDetailRecord:(id)a3 error:(id *)a4;
- (BOOL)rejectContactDetailRecord:(id)a3 rejectionUI:(int)a4 error:(id *)a5;
- (BOOL)rejectEvent:(id)a3 error:(id *)a4;
- (BOOL)rejectEventByRecordId:(id)a3 error:(id *)a4;
- (BOOL)rejectRealtimeReminder:(id)a3 error:(id *)a4;
- (BOOL)rejectRecord:(id)a3 error:(id *)a4;
- (BOOL)rejectRecord:(id)a3 rejectionUI:(int)a4 error:(id *)a5;
- (BOOL)rejectReminderByRecordId:(id)a3 error:(id *)a4;
- (BOOL)reminderAlarmTriggeredForRecordId:(id)a3 error:(id *)a4;
- (BOOL)removeAllStoredPseudoContacts:(id *)a3;
- (BOOL)reportMessagesFound:(id)a3 lost:(id)a4 error:(id *)a5;
- (BOOL)resetConfirmationAndRejectionHistory:(id *)a3;
- (BOOL)resolveFullDownloadRequests:(id)a3 error:(id *)a4;
- (BOOL)sendRTCLogs:(id *)a3;
- (BOOL)sleep:(id *)a3;
- (BOOL)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7;
- (BOOL)updateMessages:(id)a3 state:(unint64_t)a4 error:(id *)a5;
- (double)syncTimeout;
- (id)_daemonConnection;
- (id)_remoteSuggestionManager;
- (id)allContactsLimitedTo:(unint64_t)a3 error:(id *)a4;
- (id)allContactsWithSnippets:(BOOL)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)allDeliveriesWithLimit:(unint64_t)a3 error:(id *)a4;
- (id)allEventsLimitedTo:(unint64_t)a3 error:(id *)a4;
- (id)allRemindersLimitedTo:(unint64_t)a3 error:(id *)a4;
- (id)birthdayExtractionsForInterval:(id)a3 error:(id *)a4;
- (id)cacheSnapshotFuture;
- (id)celebrationExtractionsForInterval:(id)a3 error:(id *)a4;
- (id)cnContactMatchesForRecordId:(id)a3 error:(id *)a4;
- (id)cnContactMatchesForRecordIds:(id)a3 error:(id *)a4;
- (id)contactFromRecordID:(id)a3;
- (id)contactFromRecordID:(id)a3 error:(id *)a4;
- (id)contactMatchesByEmailAddress:(id)a3;
- (id)contactMatchesByEmailAddress:(id)a3 error:(id *)a4;
- (id)contactMatchesByPhoneNumber:(id)a3;
- (id)contactMatchesByPhoneNumber:(id)a3 error:(id *)a4;
- (id)contactMatchesBySocialProfile:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)contactMatchesBySocialProfile:(id)a3 error:(id *)a4;
- (id)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)emailAddressIsSignificant:(id)a3 error:(id *)a4;
- (id)eventFromRecordID:(id)a3 error:(id *)a4;
- (id)eventFromUniqueId:(id)a3 error:(id *)a4;
- (id)extractAttributesAndDonate:(id)a3 error:(id *)a4;
- (id)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)foundInStringForRecordId:(id)a3 style:(unsigned __int8)a4 error:(id *)a5;
- (id)fullDownloadRequestBatch:(unint64_t)a3 error:(id *)a4;
- (id)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 error:(id *)a12;
- (id)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 error:(id *)a6;
- (id)interactionStoreLookupForDetail:(id)a3 error:(id *)a4;
- (id)ipsosMessagesFromSearchableItems:(id)a3 error:(id *)a4;
- (id)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 error:(id *)a6;
- (id)messagesToRefreshWithError:(id *)a3;
- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 error:(id *)a6;
- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 onlySignificant:(BOOL)a6 error:(id *)a7;
- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 onlySignificant:(BOOL)a6 supportsInfoLookup:(BOOL)a7 error:(id *)a8;
- (id)namesForDetailCaches;
- (id)originFromRecordId:(id)a3 error:(id *)a4;
- (id)powerState;
- (id)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 error:(id *)a8;
- (id)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 error:(id *)a8;
- (id)recentURLsWithLimit:(unsigned int)a3 error:(id *)a4;
- (id)registerContactsChangeObserver:(id)a3;
- (id)registerEventsChangeObserver:(id)a3;
- (id)reminderTitleForContent:(id)a3 error:(id *)a4;
- (id)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 error:(id *)a5;
- (id)reportUserEngagement:(BOOL)a3 forWarning:(id)a4 error:(id *)a5;
- (id)reportValue:(BOOL)a3 forFeatureSetting:(int64_t)a4 error:(id *)a5;
- (id)saliencyFromEmailHeaders:(id)a3 error:(id *)a4;
- (id)saliencyFromRFC822Data:(id)a3 error:(id *)a4;
- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)a3 mailboxIds:(id)a4 receivedOnOrAfter:(id)a5 ascending:(BOOL)a6 limit:(unint64_t)a7 error:(id *)a8;
- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 error:(id *)a5;
- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 error:(id *)a7;
- (id)suggestContactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)suggestContactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5;
- (id)suggestEventsInFutureLimitTo:(unint64_t)a3 error:(id *)a4;
- (id)suggestEventsInFutureLimitTo:(unint64_t)a3 options:(unsigned int)a4 error:(id *)a5;
- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 error:(id *)a6;
- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 options:(unsigned int)a6 error:(id *)a7;
- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 error:(id *)a7;
- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 options:(unsigned int)a7 error:(id *)a8;
- (id)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 error:(id *)a7;
- (id)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 error:(id *)a6;
- (id)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)titleSuggestionForMessage:(id)a3 error:(id *)a4;
- (id)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 error:(id *)a5;
- (id)urlsFoundBetweenStartDate:(id)a3 endDate:(id)a4 excludingBundleIdentifiers:(id)a5 containingSubstring:(id)a6 flagFilter:(unsigned __int8)a7 limit:(unsigned int)a8 error:(id *)a9;
- (id)urlsFoundBetweenStartDate:(id)a3 endDate:(id)a4 excludingBundleIdentifiers:(id)a5 limit:(unsigned int)a6 error:(id *)a7;
- (int)_confirmRejectUI;
- (void)_clearHarvestStoreCache;
- (void)addInteractions:(id)a3 bundleId:(id)a4 withCompletion:(id)a5;
- (void)addSearchableItemMetadata:(id)a3 htmlData:(id)a4 completion:(id)a5;
- (void)addSearchableItems:(id)a3 withCompletion:(id)a4;
- (void)allContactsLimitedTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)allDeliveriesWithLimit:(unint64_t)a3 withCompletion:(id)a4;
- (void)allEventsLimitedTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)allRemindersLimitedTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)birthdayExtractionsForInterval:(id)a3 withCompletion:(id)a4;
- (void)celebrationExtractionsForInterval:(id)a3 withCompletion:(id)a4;
- (void)cnContactMatchesForRecordId:(id)a3 withCompletion:(id)a4;
- (void)cnContactMatchesForRecordIds:(id)a3 withCompletion:(id)a4;
- (void)confirmContact:(id)a3 withCompletion:(id)a4;
- (void)confirmContactDetailRecord:(id)a3 withCompletion:(id)a4;
- (void)confirmEvent:(id)a3 withCompletion:(id)a4;
- (void)confirmEventByRecordId:(id)a3 withCompletion:(id)a4;
- (void)confirmRealtimeReminder:(id)a3 withCompletion:(id)a4;
- (void)confirmRecord:(id)a3 withCompletion:(id)a4;
- (void)confirmReminderByRecordId:(id)a3 withCompletion:(id)a4;
- (void)contactFromRecordID:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesByEmailAddress:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesByPhoneNumber:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesBySocialProfile:(id)a3 bundleIdentifier:(id)a4 withCompletion:(id)a5;
- (void)contactMatchesBySocialProfile:(id)a3 withCompletion:(id)a4;
- (void)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)daemonExitWithCompletion:(id)a3;
- (void)deleteCloudKitZoneWithCompletion:(id)a3;
- (void)deleteEventByRecordId:(id)a3 withCompletion:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 completion:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 groupIdentifiers:(id)a4 completion:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 identifiers:(id)a4 completion:(id)a5;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 domainIdentifiers:(id)a4 completion:(id)a5;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5;
- (void)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)emailAddressIsSignificant:(id)a3 withCompletion:(id)a4;
- (void)evaluateRecipe:(id)a3 attachments:(id)a4 completion:(id)a5;
- (void)eventFromRecordID:(id)a3 withCompletion:(id)a4;
- (void)eventFromUniqueId:(id)a3 withCompletion:(id)a4;
- (void)eventsForSchemas:(id)a3 usingStore:(id)a4 completion:(id)a5;
- (void)extractAttributesAndDonate:(id)a3 withCompletion:(id)a4;
- (void)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)fullDownloadRequestBatch:(unint64_t)a3 withCompletion:(id)a4;
- (void)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 withCompletion:(id)a12;
- (void)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 withCompletion:(id)a6;
- (void)interactionStoreLookupForDetail:(id)a3 withCompletion:(id)a4;
- (void)ipsosMessagesFromSearchableItems:(id)a3 withCompletion:(id)a4;
- (void)keysForSchemas:(id)a3 completion:(id)a4;
- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 withCompletion:(id)a4;
- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 withCompletion:(id)a6;
- (void)logMetricAutocompleteUserSelectedRecordId:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricContactCreated:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)a3;
- (void)logMetricSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logMetricSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5;
- (void)logUserCreatedReminderTitle:(id)a3 withCompletion:(id)a4;
- (void)messagesToRefreshWithCompletion:(id)a3;
- (void)originFromRecordId:(id)a3 withCompletion:(id)a4;
- (void)pingWithCompletion:(id)a3;
- (void)planReceivedFromServerWithPayload:(id)a3 completion:(id)a4;
- (void)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 withCompletion:(id)a8;
- (void)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 withCompletion:(id)a8;
- (void)prepareForRealtimeExtractionWithCompletion:(id)a3;
- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 withCompletion:(id)a5;
- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5;
- (void)realtimeSuggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 extractionDate:(id)a6 withCompletion:(id)a7;
- (void)rebuildNamesForDetailCacheWithCompletion:(id)a3;
- (void)rejectContact:(id)a3 withCompletion:(id)a4;
- (void)rejectContactDetailRecord:(id)a3 withCompletion:(id)a4;
- (void)rejectEvent:(id)a3 withCompletion:(id)a4;
- (void)rejectEventByRecordId:(id)a3 withCompletion:(id)a4;
- (void)rejectRealtimeReminder:(id)a3 withCompletion:(id)a4;
- (void)rejectRecord:(id)a3 withCompletion:(id)a4;
- (void)rejectReminderByRecordId:(id)a3 withCompletion:(id)a4;
- (void)reminderAlarmTriggeredForRecordId:(id)a3 withCompletion:(id)a4;
- (void)reminderTitleForContent:(id)a3 withCompletion:(id)a4;
- (void)removeAllStoredPseudoContactsWithCompletion:(id)a3;
- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 withCompletion:(id)a5;
- (void)reportMessagesFound:(id)a3 lost:(id)a4 withCompletion:(id)a5;
- (void)resetConfirmationAndRejectionHistoryWithCompletion:(id)a3;
- (void)resolveFullDownloadRequests:(id)a3 withCompletion:(id)a4;
- (void)saliencyFromEmailHeaders:(id)a3 withCompletion:(id)a4;
- (void)saliencyFromRFC822Data:(id)a3 withCompletion:(id)a4;
- (void)setSyncTimeout:(double)a3;
- (void)sleepWithCompletion:(id)a3;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 withCompletion:(id)a5;
- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 withCompletion:(id)a7;
- (void)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 withCompletion:(id)a7;
- (void)suggestContactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)suggestContactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5;
- (void)suggestEventsInFutureLimitTo:(unint64_t)a3 withCompletion:(id)a4;
- (void)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 withCompletion:(id)a7;
- (void)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 withCompletion:(id)a7;
- (void)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)suggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 withCompletion:(id)a6;
- (void)titleSuggestionForMessage:(id)a3 withCompletion:(id)a4;
- (void)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 withCompletion:(id)a5;
- (void)updateMessages:(id)a3 state:(unint64_t)a4 withCompletion:(id)a5;
- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithCompletion:(id)a4;
- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithLastModificationDate:(id)a4 completion:(id)a5;
@end

@implementation SGSuggestionsService

+ (id)serviceForContacts
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.contacts" protocol:&unk_1F387B388];

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
      v9 = [(SGSuggestionsService *)self _daemonConnection];
      v5 = [(SGRemoteObjectProxy *)v8 initWithConnection:v9 queuesRequestsIfBusy:self->_queuesRequestsIfBusy];
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
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.urls" protocol:&unk_1F387B530];

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
  v4 = [(SGFuture *)self->_daemonConnectionFuture wait];
  v5 = [(SGFuture *)self->_daemonConnectionFuture result];
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)cacheSnapshotFuture
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SGSuggestionsService_cacheSnapshotFuture__block_invoke;
  v6[3] = &unk_1E7EFB908;
  v6[4] = self;
  v3 = [SGFuture futureForObject:self withKey:a2 onCreate:v6];
  v4 = self;
  objc_sync_enter(v4);
  objc_storeStrong(&v4->_snapshotFuture, v3);
  objc_sync_exit(v4);

  return v3;
}

+ (id)serviceForEvents
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.events" protocol:&unk_1F387B7A0];

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

- (id)foundInStringForRecordId:(id)a3 style:(unsigned __int8)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__SGSuggestionsService_foundInStringForRecordId_style_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (BOOL)registerURLFeedback:(unsigned __int8)a3 absoluteURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_registerURLFeedback_absoluteURL_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  v15 = a3;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (id)urlsFoundBetweenStartDate:(id)a3 endDate:(id)a4 excludingBundleIdentifiers:(id)a5 containingSubstring:(id)a6 flagFilter:(unsigned __int8)a7 limit:(unsigned int)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = [(SGSuggestionsService *)self _daemonConnection];
  v26 = MEMORY[0x1E69E9820];
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v32 = a7;
  v31 = a8;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  [(SGSuggestionsService *)self syncTimeout:v26];
  v24 = [v19 waitUntilReturn:&v26 withTimeout:a9 error:?];

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

- (id)urlsFoundBetweenStartDate:(id)a3 endDate:(id)a4 excludingBundleIdentifiers:(id)a5 limit:(unsigned int)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__SGSuggestionsService_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_error___block_invoke;
  v21[3] = &unk_1E7EFBDD0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = a6;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [v15 waitUntilReturn:v21 withTimeout:a7 error:?];

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

- (id)recentURLsWithLimit:(unsigned int)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  LODWORD(v11) = a3;
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __113__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v11 = v8;
  [v10 reportMailIntelligenceFollowUpUserEngagement:a3 forStringFromFollowUpWarning:v9 withCompletion:v12];
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

- (id)reportMailIntelligenceFollowUpUserEngagement:(int64_t)a3 forStringFromFollowUpWarning:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__SGSuggestionsService_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v14 = v8;
  v15 = a3;
  v13[4] = self;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (id)reportValue:(BOOL)a3 forFeatureSetting:(int64_t)a4 error:(id *)a5
{
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__SGSuggestionsService_reportValue_forFeatureSetting_error___block_invoke;
  v12[3] = &unk_1E7EFB728;
  v13 = a3;
  v12[4] = self;
  v12[5] = a4;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [v9 waitUntilReturn:v12 withTimeout:a5 error:?];

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

- (id)reportUserEngagement:(BOOL)a3 forWarning:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_reportUserEngagement_forWarning_error___block_invoke;
  v13[3] = &unk_1E7EFBD80;
  v15 = a3;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__SGSuggestionsService_identifyFollowUpWarningFromSubject_body_date_withCompletion___block_invoke;
  v16[3] = &unk_1E7EFD0A0;
  v17 = v10;
  v15 = v10;
  [v14 identifyFollowUpWarningFromSubject:v13 body:v12 date:v11 withCompletion:v16];
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

- (id)identifyFollowUpWarningFromSubject:(id)a3 body:(id)a4 date:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [v13 waitUntilReturn:&v19 withTimeout:a6 error:?];

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

- (void)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 withCompletion:(id)a12
{
  v18 = a12;
  v30 = a11;
  v29 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __187__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion___block_invoke;
  v31[3] = &unk_1E7EFD0A0;
  v32 = v18;
  v28 = v18;
  [v26 identifyComposeWarningsFromSubject:v25 content:v24 attributes:v23 toRecipients:v22 ccRecipients:v21 bccRecipients:v20 originalToRecipients:v19 originalCcRecipients:v29 attachments:v30 withCompletion:v31];
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

- (id)identifyComposeWarningsFromSubject:(id)a3 content:(id)a4 attributes:(id)a5 toRecipients:(id)a6 ccRecipients:(id)a7 bccRecipients:(id)a8 originalToRecipients:(id)a9 originalCcRecipients:(id)a10 attachments:(id)a11 error:(id *)a12
{
  v35 = a3;
  v34 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [(SGSuggestionsService *)self _daemonConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __178__SGSuggestionsService_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_error___block_invoke;
  v40[3] = &unk_1E7EFBD30;
  v40[4] = self;
  v41 = v35;
  v42 = v34;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v38 = v23;
  v37 = v22;
  v36 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = v34;
  v30 = v35;
  [(SGSuggestionsService *)self syncTimeout];
  v31 = v24;
  v32 = [v24 waitUntilReturn:v40 withTimeout:a12 error:?];

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

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFD0A0;
  v12 = v8;
  v10 = v8;
  [v9 sortedUnsubscriptionOpportunitiesForField:a3 limit:a4 withCompletion:v11];
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

- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_limit_error___block_invoke;
  v12[3] = &unk_1E7EFBD08;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [v9 waitUntilReturn:v12 withTimeout:a5 error:?];

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

- (void)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 withCompletion:(id)a7
{
  v12 = a7;
  v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = v12;
  v14 = v12;
  [v13 sortedUnsubscriptionOpportunitiesForField:a3 minCount:a4 minScore:a6 limit:v15 withCompletion:a5];
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

- (id)sortedUnsubscriptionOpportunitiesForField:(int64_t)a3 minCount:(unint64_t)a4 minScore:(double)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v13 = [(SGSuggestionsService *)self _daemonConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SGSuggestionsService_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_error___block_invoke;
  v16[3] = &unk_1E7EFBCE0;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = a4;
  *&v16[7] = a5;
  v16[8] = a6;
  [(SGSuggestionsService *)self syncTimeout];
  v14 = [v13 waitUntilReturn:v16 withTimeout:a7 error:?];

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

- (void)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 withCompletion:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2286 description:{@"Invalid parameter not satisfying: %@", @"values"}];
  }

  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v10;
  v12 = v10;
  [v11 preventUnsubscriptionOpportunitiesSuggestionsForField:a3 toValues:v9 withCompletion:v14];
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

- (BOOL)preventUnsubscriptionOpportunitiesSuggestionsForField:(int64_t)a3 toValues:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__SGSuggestionsService_preventUnsubscriptionOpportunitiesSuggestionsForField_toValues_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v14 = v8;
  v15 = a3;
  v13[4] = self;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (id)sortedSaliencyResultsRestrictedToMailboxTypes:(id)a3 mailboxIds:(id)a4 receivedOnOrAfter:(id)a5 ascending:(BOOL)a6 limit:(unint64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [(SGSuggestionsService *)self _daemonConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v28 = a6;
  v27 = a7;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [(SGSuggestionsService *)self syncTimeout:v23];
  v21 = [v17 waitUntilReturn:&v23 withTimeout:a8 error:?];

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

- (void)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__SGSuggestionsService_topSalienciesForMailboxId_limit_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v11 = v8;
  [v10 topSalienciesForMailboxId:v9 limit:a4 withCompletion:v12];
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

- (id)topSalienciesForMailboxId:(id)a3 limit:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SGSuggestionsService_topSalienciesForMailboxId_limit_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)saliencyFromEmailHeaders:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2253 description:{@"Invalid parameter not satisfying: %@", @"headers"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SGSuggestionsService_saliencyFromEmailHeaders_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v10 = v8;
  [v9 saliencyFromEmailHeaders:v7 withCompletion:v12];
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

- (id)saliencyFromEmailHeaders:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)saliencyFromRFC822Data:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2243 description:{@"Invalid parameter not satisfying: %@", @"rfc822Data"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_saliencyFromRFC822Data_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v10 = v8;
  [v9 saliencyFromRFC822Data:v7 withCompletion:v12];
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

- (id)saliencyFromRFC822Data:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)titleSuggestionForMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SGSuggestionsService_titleSuggestionForMessage_withCompletion___block_invoke;
  v10[3] = &unk_1E7EFD0A0;
  v11 = v6;
  v9 = v6;
  [v8 titleSuggestionForMessage:v7 withCompletion:v10];
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

- (id)titleSuggestionForMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)ipsosMessagesFromSearchableItems:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SGSuggestionsService_ipsosMessagesFromSearchableItems_withCompletion___block_invoke;
  v10[3] = &unk_1E7EFD0A0;
  v11 = v6;
  v9 = v6;
  [v8 ipsosMessagesFromSearchableItems:v7 withCompletion:v10];
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

- (id)ipsosMessagesFromSearchableItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)pingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SGSuggestionsService_pingWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 pingWithCompletion:v7];
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

- (BOOL)ping:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__SGSuggestionsService_ping___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)sleepWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SGSuggestionsService_sleepWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 sleepWithCompletion:v7];
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

- (BOOL)sleep:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__SGSuggestionsService_sleep___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)daemonExitWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SGSuggestionsService_daemonExitWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 daemonExitWithCompletion:v7];
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

- (BOOL)daemonExit:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__SGSuggestionsService_daemonExit___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)logMetricSearchResultsIncludedPureSuggestionWithBundleId:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v5 logMetricSearchResultsIncludedPureSuggestionWithBundleId:v4];
}

- (void)logMetricContactCreated:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v11 logMetricContactCreated:v10 contactIdentifier:v9 bundleId:v8];
}

- (void)logMetricSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v11 logMetricSuggestedContactDetailShown:v10 contactIdentifier:v9 bundleId:v8];
}

- (void)logMetricSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v11 logMetricSuggestedContactDetailUsed:v10 contactIdentifier:v9 bundleId:v8];
}

- (void)logMetricContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v11 logMetricContactSearchResultSelected:v10 contactIdentifier:v9 bundleId:v8];
}

- (void)logMetricAutocompleteUserSelectedRecordId:(id)a3 contactIdentifier:(id)a4 bundleId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  [v11 logMetricAutocompleteUserSelectedRecordId:v10 contactIdentifier:v9 bundleId:v8];
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
  v4 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SGSuggestionsService_namesForDetailCaches__block_invoke;
  v8[3] = &unk_1E7EFBC68;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 namesForDetailCacheSnapshotsWithCompletion:v8];

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
  v4 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SGSuggestionsService_powerState__block_invoke;
  v8[3] = &unk_1E7EFBC40;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 powerStateWithCompletion:v8];

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

- (void)deleteCloudKitZoneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SGSuggestionsService_deleteCloudKitZoneWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 deleteCloudKitZoneWithCompletion:v7];
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

- (BOOL)sendRTCLogs:(id *)a3
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
  v16 = a3;
  v6 = v5;
  v14 = v6;
  v7 = MEMORY[0x1BFAF7240](v13);
  v8 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SGSuggestionsService_sendRTCLogs___block_invoke_2;
  v11[3] = &unk_1E7EFD0A0;
  v9 = v7;
  v12 = v9;
  [v8 sendRTCLogsWithCompletion:v11];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v8) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v8;
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

- (void)removeAllStoredPseudoContactsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SGSuggestionsService_removeAllStoredPseudoContactsWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 removeAllStoredPseudoContactsWithCompletion:v7];
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

- (BOOL)removeAllStoredPseudoContacts:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SGSuggestionsService_removeAllStoredPseudoContacts___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)realtimeSuggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 extractionDate:(id)a6 withCompletion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2032 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_8:
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2034 description:{@"Invalid parameter not satisfying: %@", @"HTMLPayload"}];

      if (v16)
      {
        goto LABEL_5;
      }

LABEL_9:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2035 description:{@"Invalid parameter not satisfying: %@", @"extractionDate"}];

      goto LABEL_5;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:2033 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __99__SGSuggestionsService_realtimeSuggestionsFromURL_title_HTMLPayload_extractionDate_withCompletion___block_invoke;
  v24[3] = &unk_1E7EFD0A0;
  v25 = v17;
  v19 = v17;
  [v18 realtimeSuggestionsFromURL:v13 title:v14 HTMLPayload:v15 extractionDate:v16 withCompletion:v24];
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

- (void)suggestionsFromURL:(id)a3 title:(id)a4 HTMLPayload:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v14 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__SGSuggestionsService_suggestionsFromURL_title_HTMLPayload_withCompletion___block_invoke;
    v18[3] = &unk_1E7EFD0A0;
    v19 = v13;
    [v14 suggestionsFromURL:v10 title:v11 HTMLPayload:v12 withCompletion:v18];

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

  if (v13)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:4 userInfo:0];
    (*(v13 + 2))(v13, 0, v15);
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

- (void)eventsForSchemas:(id)a3 usingStore:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1970 description:{@"Invalid parameter not satisfying: %@", @"schemas"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1971 description:{@"Invalid parameter not satisfying: %@", @"store"}];

LABEL_3:
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    v23 = [v9 count];
    v24 = 2117;
    v25 = v9;
    _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_DEFAULT, "eventsForSchemas count=%tu %{sensitive}@", buf, 0x16u);
  }

  v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__SGSuggestionsService_eventsForSchemas_usingStore_completion___block_invoke;
  v19[3] = &unk_1E7EFBBF0;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  [v13 schemaOrgToEvents:v9 completion:v19];

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

- (void)keysForSchemas:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1955 description:{@"Invalid parameter not satisfying: %@", @"schemas"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__SGSuggestionsService_keysForSchemas_completion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v10 = v8;
  [v9 schemaOrgToEvents:v7 completion:v12];
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

- (void)deleteInteractionsWithBundleId:(id)a3 groupIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1942 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__SGSuggestionsService_deleteInteractionsWithBundleId_groupIdentifiers_completion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = v11;
  v13 = v11;
  [v12 deleteInteractionsWithBundleId:v9 groupIdentifiers:v10 completion:v15];
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

- (void)deleteInteractionsWithBundleId:(id)a3 identifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1930 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__SGSuggestionsService_deleteInteractionsWithBundleId_identifiers_completion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = v11;
  v13 = v11;
  [v12 deleteInteractionsWithBundleId:v9 identifiers:v10 completion:v15];
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

- (void)deleteInteractionsWithBundleId:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1919 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__SGSuggestionsService_deleteInteractionsWithBundleId_completion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 deleteInteractionsWithBundleId:v7 completion:v12];
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

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1909 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 deleteSpotlightReferencesWithBundleIdentifier:v7 completion:v12];
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

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 domainIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1899 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1900 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifiers"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = v11;
  v13 = v11;
  [v12 deleteSpotlightReferencesWithBundleIdentifier:v9 domainIdentifiers:v10 completion:v16];
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

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1885 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1886 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifiers"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__SGSuggestionsService_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = v11;
  v13 = v11;
  [v12 deleteSpotlightReferencesWithBundleIdentifier:v9 uniqueIdentifiers:v10 completion:v16];
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

- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)a3 uniqueIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1875 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1876 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifiers"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__SGSuggestionsService_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = v11;
  v13 = v11;
  [v12 purgeSpotlightReferencesWithBundleIdentifier:v9 uniqueIdentifiers:v10 completion:v16];
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

- (void)evaluateRecipe:(id)a3 attachments:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1864 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1865 description:{@"Invalid parameter not satisfying: %@", @"attachments"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__SGSuggestionsService_evaluateRecipe_attachments_completion___block_invoke;
  v16[3] = &unk_1E7EFD0A0;
  v17 = v11;
  v13 = v11;
  [v12 evaluateRecipe:v9 attachments:v10 completion:v16];
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

- (void)planReceivedFromServerWithPayload:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1854 description:{@"Invalid parameter not satisfying: %@", @"payload"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SGSuggestionsService_planReceivedFromServerWithPayload_completion___block_invoke;
  v12[3] = &unk_1E7EFD0A0;
  v13 = v8;
  v10 = v8;
  [v9 planReceivedFromServerWithPayload:v7 completion:v12];
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

- (void)resolveFullDownloadRequests:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1841 description:{@"Invalid parameter not satisfying: %@", @"requests"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SGSuggestionsService_resolveFullDownloadRequests_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 resolveFullDownloadRequests:v7 withCompletion:v12];
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

- (BOOL)resolveFullDownloadRequests:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)fullDownloadRequestBatch:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SGSuggestionsService_fullDownloadRequestBatch_withCompletion___block_invoke;
  v9[3] = &unk_1E7EFD0A0;
  v10 = v6;
  v8 = v6;
  [v7 fullDownloadRequestBatch:a3 withCompletion:v9];
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

- (id)fullDownloadRequestBatch:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)updateMessages:(id)a3 state:(unint64_t)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1823 description:{@"Invalid parameter not satisfying: %@", @"messages"}];
  }

  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SGSuggestionsService_updateMessages_state_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v10;
  v12 = v10;
  [v11 updateMessages:v9 state:a4 completion:v14];
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

- (BOOL)updateMessages:(id)a3 state:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SGSuggestionsService_updateMessages_state_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (void)reportMessagesFound:(id)a3 lost:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SGSuggestionsService_reportMessagesFound_lost_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = v8;
  v12 = v8;
  [v11 reportMessagesFound:v10 lost:v9 withCompletion:v13];
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

- (BOOL)reportMessagesFound:(id)a3 lost:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SGSuggestionsService_reportMessagesFound_lost_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [v10 waitUntilReturn:v15 withTimeout:a5 error:?];
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

- (void)messagesToRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestionsService_messagesToRefreshWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFD0A0;
  v8 = v4;
  v6 = v4;
  [v5 messagesToRefreshWithCompletion:v7];
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

- (id)messagesToRefreshWithError:(id *)a3
{
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SGSuggestionsService_messagesToRefreshWithError___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = self;
  [(SGSuggestionsService *)self syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];

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

- (void)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 withCompletion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1795 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v18 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_withCompletion___block_invoke;
  v21[3] = &unk_1E7EFB610;
  v22 = v17;
  v19 = v17;
  [v18 spotlightReimportFromIdentifier:v13 forPersonHandle:v14 startDate:v15 endDate:v16 completion:v21];
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

- (BOOL)spotlightReimportFromIdentifier:(id)a3 forPersonHandle:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(SGSuggestionsService *)self _daemonConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__SGSuggestionsService_spotlightReimportFromIdentifier_forPersonHandle_startDate_endDate_error___block_invoke;
  v23[3] = &unk_1E7EFBB80;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(SGSuggestionsService *)self syncTimeout];
  v21 = [v16 waitUntilReturn:v23 withTimeout:a7 error:?];
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

- (void)addInteractions:(id)a3 bundleId:(id)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1786 description:{@"Invalid parameter not satisfying: %@", @"interactions"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1787 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__SGSuggestionsService_addInteractions_bundleId_withCompletion___block_invoke;
  v16[3] = &unk_1E7EFB610;
  v17 = v11;
  v13 = v11;
  [v12 addInteractions:v9 bundleId:v10 completion:v16];
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

- (BOOL)addInteractions:(id)a3 bundleId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SGSuggestionsService_addInteractions_bundleId_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [v10 waitUntilReturn:v15 withTimeout:a5 error:?];
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

- (void)addSearchableItemMetadata:(id)a3 htmlData:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__SGSuggestionsService_addSearchableItemMetadata_htmlData_completion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = v8;
  v12 = v8;
  [v11 addSearchableItemMetadata:v10 htmlData:v9 completion:v13];
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

- (void)addSearchableItems:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (BOOL)addSearchableItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 withCompletion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1747 description:{@"Invalid parameter not satisfying: %@", @"toAddresses"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_8:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1749 description:{@"Invalid parameter not satisfying: %@", @"fromAddress"}];

      if (v18)
      {
        goto LABEL_5;
      }

LABEL_9:
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1750 description:{@"Invalid parameter not satisfying: %@", @"bounds"}];

      goto LABEL_5;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1748 description:{@"Invalid parameter not satisfying: %@", @"ccAddresses"}];

  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_5:
  v20 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __116__SGSuggestionsService_predictedCCEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke;
  v26[3] = &unk_1E7EFD0A0;
  v27 = v19;
  v21 = v19;
  [v20 predictedCCEmailAddressesWithToAddresses:v15 ccAddresses:v16 fromAddress:v17 date:v18 bounds:v26 completion:a6];
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

- (id)predictedCCEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(SGSuggestionsService *)self _daemonConnection];
  v25 = MEMORY[0x1E69E9820];
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v30 = a6;
  v29 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  [(SGSuggestionsService *)self syncTimeout:v25];
  v23 = [v18 waitUntilReturn:&v25 withTimeout:a8 error:?];

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

- (void)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 withCompletion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1726 description:{@"Invalid parameter not satisfying: %@", @"toAddresses"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_8:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1728 description:{@"Invalid parameter not satisfying: %@", @"fromAddress"}];

      if (v18)
      {
        goto LABEL_5;
      }

LABEL_9:
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1729 description:{@"Invalid parameter not satisfying: %@", @"bounds"}];

      goto LABEL_5;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1727 description:{@"Invalid parameter not satisfying: %@", @"ccAddresses"}];

  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_5:
  v20 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __116__SGSuggestionsService_predictedToEmailAddressesWithToAddresses_ccAddresses_fromAddress_date_bounds_withCompletion___block_invoke;
  v26[3] = &unk_1E7EFD0A0;
  v27 = v19;
  v21 = v19;
  [v20 predictedToEmailAddressesWithToAddresses:v15 ccAddresses:v16 fromAddress:v17 date:v18 bounds:v26 completion:a6];
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

- (id)predictedToEmailAddressesWithToAddresses:(id)a3 ccAddresses:(id)a4 fromAddress:(id)a5 date:(double)a6 bounds:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(SGSuggestionsService *)self _daemonConnection];
  v25 = MEMORY[0x1E69E9820];
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v30 = a6;
  v29 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  [(SGSuggestionsService *)self syncTimeout:v25];
  v23 = [v18 waitUntilReturn:&v25 withTimeout:a8 error:?];

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

- (BOOL)rejectContactDetailRecord:(id)a3 rejectionUI:(int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SGSuggestionsService_rejectContactDetailRecord_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (void)rejectContactDetailRecord:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1697 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectContactDetailRecord %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SGSuggestionsService_rejectContactDetailRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = v8;
  v12 = v8;
  [v10 rejectContactDetailRecord:v7 confirmRejectUI:v11 completion:v15];

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

- (BOOL)rejectContactDetailRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (BOOL)rejectRecord:(id)a3 rejectionUI:(int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__SGSuggestionsService_rejectRecord_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (void)rejectRecord:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1673 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectRecord %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__SGSuggestionsService_rejectRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = v8;
  v12 = v8;
  [v10 rejectRecord:v7 confirmRejectUI:v11 completion:v15];

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

- (BOOL)rejectRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)rejectContact:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1662 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-rejectContact", buf, 2u);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__SGSuggestionsService_rejectContact_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v12 = v8;
  [v10 rejectContact:v7 confirmRejectUI:v11 completion:v14];
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

- (BOOL)rejectContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (BOOL)rejectContact:(id)a3 rejectionUI:(int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__SGSuggestionsService_rejectContact_rejectionUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (void)deleteEventByRecordId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1638 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-deleteEventByRecordId: %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SGSuggestionsService_deleteEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v11 = v8;
  [v10 deleteEventByRecordId:v7 completion:v14];

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

- (BOOL)deleteEventByRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)rejectEventByRecordId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1629 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-rejectEventByRecordId: %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SGSuggestionsService_rejectEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v11 = v8;
  [v10 rejectEventByRecordId:v7 completion:v14];

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

- (BOOL)rejectEventByRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmEventByRecordId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1620 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-confirmEventByRecordId: %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__SGSuggestionsService_confirmEventByRecordId_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v11 = v8;
  [v10 confirmEventByRecordId:v7 completion:v14];

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

- (BOOL)confirmEventByRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (BOOL)confirmContactDetailRecord:(id)a3 confirmationUI:(int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SGSuggestionsService_confirmContactDetailRecord_confirmationUI_error___block_invoke;
  v13[3] = &unk_1E7EFBB30;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];
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

- (void)confirmContactDetailRecord:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1597 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmContactDetailRecord", buf, 2u);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SGSuggestionsService_confirmContactDetailRecord_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v12 = v8;
  [v10 confirmContactDetailRecord:v7 confirmRejectUI:v11 completion:v14];
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

- (BOOL)confirmContactDetailRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmRecord:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1586 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmRecord %@", buf, 0xCu);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SGSuggestionsService_confirmRecord_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFB610;
  v16 = v8;
  v12 = v8;
  [v10 confirmRecord:v7 confirmRejectUI:v11 completion:v15];

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

- (BOOL)confirmRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmContact:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1575 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceContactsConfirmRejectProtocol-confirmContact", buf, 2u);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11 = [(SGSuggestionsService *)self _confirmRejectUI];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__SGSuggestionsService_confirmContact_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFB610;
  v15 = v8;
  v12 = v8;
  [v10 confirmContact:v7 confirmRejectUI:v11 completion:v14];
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

- (BOOL)confirmContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS"))
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"com.apple.CoreSuggestions.suggest_tool"])
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

- (void)rejectEvent:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1545 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-rejectEvent", buf, 2u);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SGSuggestionsService_rejectEvent_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = v8;
  v11 = v8;
  [v10 rejectEvent:v7 completion:v13];
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

- (BOOL)rejectEvent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmEvent:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestionsServiceEventsConfirmRejectProtocol-confirmEvent", buf, 2u);
  }

  v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__SGSuggestionsService_confirmEvent_withCompletion___block_invoke;
  v13[3] = &unk_1E7EFB610;
  v14 = v8;
  v11 = v8;
  [v10 confirmEvent:v7 completion:v13];
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

- (BOOL)confirmEvent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)originFromRecordId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1525 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__SGSuggestionsService_originFromRecordId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 originFromRecordId:v7 completion:v14];
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

- (id)originFromRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1515 description:{@"Invalid parameter not satisfying: %@", @"launchInfo"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SGSuggestionsService_launchAppForSuggestedEventUsingLaunchInfo_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 launchAppForSuggestedEventUsingLaunchInfo:v7 completion:v12];
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

- (BOOL)launchAppForSuggestedEventUsingLaunchInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 withCompletion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1499 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
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

    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }

  else
  {
    v17 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __110__SGSuggestionsService_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_withCompletion___block_invoke;
    v20[3] = &unk_1E7EFD0A0;
    v21 = v14;
    [v17 launchInfoForSuggestedEventWithUniqueIdentifier:v11 sourceURL:v12 clientLocale:v13 ignoreUserActivitySupport:0 ignoreMailCheck:0 completion:v20];
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

- (id)launchInfoForSuggestedEventWithUniqueIdentifier:(id)a3 sourceURL:(id)a4 clientLocale:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [v13 waitUntilReturn:&v19 withTimeout:a6 error:?];

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

- (void)eventFromUniqueId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1490 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SGSuggestionsService_eventFromUniqueId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 eventFromUniqueId:v7 completion:v14];
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

- (id)eventFromUniqueId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)eventFromRecordID:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1480 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SGSuggestionsService_eventFromRecordID_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 eventFromRecordId:v7 withCompletion:v14];
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

- (id)eventFromRecordID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)emailAddressIsSignificant:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1469 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
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

    if (v8)
    {
      v8[2](v8, &unk_1F3874298, 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__SGSuggestionsService_emailAddressIsSignificant_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 emailAddressIsSignificant:v7 withCompletion:v14];
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

- (id)emailAddressIsSignificant:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)cnContactMatchesForRecordIds:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1459 description:{@"Invalid parameter not satisfying: %@", @"recordIds"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SGSuggestionsService_cnContactMatchesForRecordIds_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 cnContactMatchesForRecordIds:v7 withCompletion:v14];
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

- (id)cnContactMatchesForRecordIds:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)cnContactMatchesForRecordId:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1449 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SGSuggestionsService_cnContactMatchesForRecordId_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 cnContactMatchesForRecordId:v7 withCompletion:v14];
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

- (id)cnContactMatchesForRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)contactFromRecordID:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1439 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__SGSuggestionsService_contactFromRecordID_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 contactFromRecordId:v7 withCompletion:v14];
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

- (id)contactFromRecordID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (id)contactFromRecordID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1433 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v6 = [(SGSuggestionsService *)self contactFromRecordID:v5 error:0];

  return v6;
}

- (void)interactionStoreLookupForDetail:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1417 description:{@"Invalid parameter not satisfying: %@", @"detail"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else if ([v7 isEqualToString:&stru_1F385B250])
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, "Suggestions interactionStoreLookupForDetail with an empty parameter", buf, 2u);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, &stru_1F385B250, 0);
    }
  }

  else
  {
    v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__SGSuggestionsService_interactionStoreLookupForDetail_withCompletion___block_invoke;
    v15[3] = &unk_1E7EFD0A0;
    v16 = v8;
    [v12 interactionStoreLookupForDetail:v7 withCompletion:v15];
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

- (id)interactionStoreLookupForDetail:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 onlySignificant:(BOOL)a6 supportsInfoLookup:(BOOL)a7 error:(id *)a8
{
  v14 = a3;
  v15 = [(SGSuggestionsService *)self _daemonConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = v14;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v16 = v14;
  [(SGSuggestionsService *)self syncTimeout:v19];
  v17 = [v15 waitUntilReturn:&v19 withTimeout:a8 error:?];

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

- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 onlySignificant:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = v12;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v14 = v12;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [v13 waitUntilReturn:&v17 withTimeout:a7 error:?];

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

- (id)namesForDetail:(id)a3 limitTo:(unint64_t)a4 prependMaybe:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _daemonConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = v10;
  v17 = a4;
  v18 = a5;
  v12 = v10;
  [(SGSuggestionsService *)self syncTimeout:v15];
  v13 = [v11 waitUntilReturn:&v15 withTimeout:a6 error:?];

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

- (void)celebrationExtractionsForInterval:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1209 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__SGSuggestionsService_celebrationExtractionsForInterval_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 celebrationExtractionsForInterval:v7 withCompletion:v14];
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

- (id)celebrationExtractionsForInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)birthdayExtractionsForInterval:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1199 description:{@"Invalid parameter not satisfying: %@", @"interval"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__SGSuggestionsService_birthdayExtractionsForInterval_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 birthdayExtractionsForInterval:v7 withCompletion:v14];
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

- (id)birthdayExtractionsForInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)contactMatchesBySocialProfile:(id)a3 bundleIdentifier:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1177 description:{@"Invalid parameter not satisfying: %@", @"userIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1178 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

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

    if (v11)
    {
      (*(v11 + 2))(v11, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v14 = [SGSocialProfile alloc];
    v15 = [SGExtractionInfo extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
    v16 = [SGRecordId recordIdWithNumericValue:-1];
    v17 = [(SGSocialProfile *)v14 initWithUsername:0 userIdentifier:v9 bundleIdentifier:v10 displayName:0 service:0 teamIdentifier:0 label:0 extractionInfo:v15 recordId:v16];

    v18 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_withCompletion___block_invoke;
    v22[3] = &unk_1E7EFD0A0;
    v23 = v11;
    [v18 contactMatchesBySocialProfile:v17 withCompletion:v22];
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

- (id)contactMatchesBySocialProfile:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SGSuggestionsService *)self _daemonConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__SGSuggestionsService_contactMatchesBySocialProfile_bundleIdentifier_error___block_invoke;
  v15[3] = &unk_1E7EFB890;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v13 = [v10 waitUntilReturn:v15 withTimeout:a5 error:?];

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

- (void)contactMatchesBySocialProfile:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"socialProfile"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__SGSuggestionsService_contactMatchesBySocialProfile_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 contactMatchesBySocialProfile:v7 withCompletion:v14];
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

- (id)contactMatchesBySocialProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)contactMatchesByEmailAddress:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SGSuggestionsService_contactMatchesByEmailAddress_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 contactMatchesByEmailAddress:v7 withCompletion:v14];
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

- (id)contactMatchesByEmailAddress:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (id)contactMatchesByEmailAddress:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v6 = [(SGSuggestionsService *)self contactMatchesByEmailAddress:v5 error:0];

  return v6;
}

- (void)contactMatchesByPhoneNumber:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1141 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
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

    if (v8)
    {
      (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SGSuggestionsService_contactMatchesByPhoneNumber_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v8;
    [v11 contactMatchesByPhoneNumber:v7 withCompletion:v14];
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

- (id)contactMatchesByPhoneNumber:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (id)contactMatchesByPhoneNumber:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1135 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
  }

  v6 = [(SGSuggestionsService *)self contactMatchesByPhoneNumber:v5 error:0];

  return v6;
}

- (void)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1124 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1125 description:@"Passing 0 for options would return nothing"];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = v10;
  v12 = v10;
  [v11 harvestedSuggestionsFromSearchableItem:v9 options:a4 withCompletion:v15];
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

- (id)harvestedSuggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SGSuggestionsService_harvestedSuggestionsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)extractAttributesAndDonate:(id)a3 withCompletion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [v6 bundleID];
    v9 = [v8 isEqualToString:@"com.apple.mobilemail"];

    if (!v9 || ([v6 attributeSet], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "HTMLContentDataNoCopy"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12 < 0xC8001))
    {
      v13 = [v6 attributeSet];
      v14 = [v13 contentCreationDate];

      if (!v14)
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

      [v14 timeIntervalSinceNow];
      if (v17 <= (-86400 * v15))
      {
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = [v14 description];
        v19 = [v24 initWithFormat:@"Content date: %@ Rejecting as expired", v25];

        v26 = sgLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v19;
          _os_log_impl(&dword_1BA729000, v26, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        if (v7)
        {
          v27 = MEMORY[0x1E696ABC0];
          v33 = @"message";
          v34 = v19;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v29 = [v27 errorWithDomain:@"SGErrorDomain" code:13 userInfo:v28];
          v7[2](v7, 0, v29);
        }
      }

      else
      {
LABEL_8:
        v18 = [(SGSuggestionsService *)self _remoteSuggestionManager];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __66__SGSuggestionsService_extractAttributesAndDonate_withCompletion___block_invoke;
        v31[3] = &unk_1E7EFD0A0;
        v32 = v7;
        [v18 extractAttributesAndDonate:v6 withCompletion:v31];

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

    if (v7)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = &unk_1F38744A0;
      v22 = 8;
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = &unk_1F3874478;
    v22 = 0;
LABEL_11:
    v14 = [v20 errorWithDomain:@"SGErrorDomain" code:v22 userInfo:v21];
    v7[2](v7, 0, v14);
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

- (id)extractAttributesAndDonate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__SGSuggestionsService_filteredSuggestionsFromExtractions_origin_options_withCompletion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = v10;
  v14 = v10;
  [v13 filteredSuggestionsFromExtractions:v12 origin:v11 options:a5 withCompletion:v15];
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

- (id)filteredSuggestionsFromExtractions:(id)a3 origin:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = v10;
  v19 = v11;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [v12 waitUntilReturn:&v17 withTimeout:a6 error:?];

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

- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 withCompletion:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (v11)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1041 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1042 description:@"Passing 0 for options would return nothing"];

LABEL_3:
  v13 = [v11 bundleID];

  if (!v13)
  {
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];
    [v11 setBundleID:v15];
  }

  v16 = [v11 attributeSet];
  v17 = [v16 HTMLContentDataNoCopy];
  v18 = [v17 length];

  if (v18 <= 0xC8000)
  {
    v21 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __92__SGSuggestionsService_suggestionsFromSearchableItem_options_processingType_withCompletion___block_invoke;
    v25[3] = &unk_1E7EFD0A0;
    v26 = v12;
    [v21 suggestionsFromSearchableItem:v11 options:a4 processingType:a5 withCompletion:v25];

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

  if (v12)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874450];
    (*(v12 + 2))(v12, 0, v20);
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

- (id)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 processingType:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(SGSuggestionsService *)self _daemonConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = v10;
  v17 = a4;
  v18 = a5;
  v12 = v10;
  [(SGSuggestionsService *)self syncTimeout:v15];
  v13 = [v11 waitUntilReturn:&v15 withTimeout:a6 error:?];

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

- (void)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1015 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:1016 description:@"Passing 0 for options would return nothing"];

LABEL_3:
  v11 = [v9 bundleID];

  if (!v11)
  {
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];
    [v9 setBundleID:v13];
  }

  v14 = [v9 attributeSet];
  v15 = [v14 HTMLContentDataNoCopy];
  v16 = [v15 length];

  if (v16 <= 0xC8000)
  {
    v19 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__SGSuggestionsService_suggestionsFromSearchableItem_options_withCompletion___block_invoke;
    v23[3] = &unk_1E7EFD0A0;
    v24 = v10;
    [v19 suggestionsFromSearchableItem:v9 options:a4 withCompletion:v23];

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

  if (v10)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874428];
    (*(v10 + 2))(v10, 0, v18);
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

- (id)suggestionsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SGSuggestionsService_suggestionsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 withCompletion:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:990 description:{@"Invalid parameter not satisfying: %@", @"htmlContent"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_15:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:992 description:{@"Invalid parameter not satisfying: %@", @"sourceId"}];

      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:991 description:{@"Invalid parameter not satisfying: %@", @"rfc822Headers"}];

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (a6)
  {
    goto LABEL_5;
  }

LABEL_16:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:993 description:@"Passing 0 for options would return nothing"];

LABEL_5:
  if ([v13 length] <= 0xC8000)
  {
    v19 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_withCompletion___block_invoke;
    v25[3] = &unk_1E7EFD0A0;
    v26 = v16;
    [v19 suggestionsFromEmailContent:v13 headers:v14 source:v15 options:a6 withCompletion:v25];

    v18 = v26;
    goto LABEL_11;
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = [v13 length];
    v29 = 2048;
    v30 = 819200;
    _os_log_impl(&dword_1BA729000, v17, OS_LOG_TYPE_DEFAULT, "Rejecting email with HTML length %lu (max: %lu)", buf, 0x16u);
  }

  if (v16)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:8 userInfo:&unk_1F3874400];
    (*(v16 + 2))(v16, 0, v18);
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

- (id)suggestionsFromEmailContent:(id)a3 headers:(id)a4 source:(id)a5 options:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__SGSuggestionsService_suggestionsFromEmailContent_headers_source_options_error___block_invoke;
  v21[3] = &unk_1E7EFB7F0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = a6;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [v15 waitUntilReturn:v21 withTimeout:a7 error:?];

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

- (void)allDeliveriesWithLimit:(unint64_t)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [MEMORY[0x1E69C5D08] isClassCLocked];
  v9 = sgLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "Cannot query Suggestions (%@) before first unlock.", buf, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsService getting all Deliveries", buf, 2u);
    }

    v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__SGSuggestionsService_allDeliveriesWithLimit_withCompletion___block_invoke;
    v14[3] = &unk_1E7EFD0A0;
    v15 = v7;
    [v12 allDeliveriesWithLimit:a3 withCompletion:v14];
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

- (id)allDeliveriesWithLimit:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)logUserCreatedReminderTitle:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sgRemindersLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsService logging user created reminder title", buf, 2u);
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SGSuggestionsService_logUserCreatedReminderTitle_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFB610;
  v12 = v6;
  v10 = v6;
  [v9 logUserCreatedReminderTitle:v7 withCompletion:v11];
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

- (BOOL)logUserCreatedReminderTitle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)reminderTitleForContent:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sgRemindersLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsService detecting reminder for content", buf, 2u);
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SGSuggestionsService_reminderTitleForContent_withCompletion___block_invoke;
  v11[3] = &unk_1E7EFD0A0;
  v12 = v6;
  v10 = v6;
  [v9 reminderTitleForContent:v7 withCompletion:v11];
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

- (id)reminderTitleForContent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];

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

- (void)allRemindersLimitedTo:(unint64_t)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
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

    if (v7)
    {
      (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], 0);
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

    v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SGSuggestionsService_allRemindersLimitedTo_withCompletion___block_invoke;
    v13[3] = &unk_1E7EFD0A0;
    v14 = v7;
    [v11 allRemindersLimitedTo:a3 withCompletion:v13];
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

- (id)allRemindersLimitedTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)reminderAlarmTriggeredForRecordId:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:938 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__SGSuggestionsService_reminderAlarmTriggeredForRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 reminderAlarmTriggeredForRecordId:v7 completion:v12];
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

- (BOOL)reminderAlarmTriggeredForRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)rejectRealtimeReminder:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:930 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_rejectRealtimeReminder_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 rejectRealtimeReminder:v7 completion:v12];
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

- (BOOL)rejectRealtimeReminder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)rejectReminderByRecordId:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SGSuggestionsService_rejectReminderByRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 rejectReminderByRecordId:v7 completion:v12];
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

- (BOOL)rejectReminderByRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmRealtimeReminder:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__SGSuggestionsService_confirmRealtimeReminder_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 confirmRealtimeReminder:v7 completion:v12];
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

- (BOOL)confirmRealtimeReminder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)confirmReminderByRecordId:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:906 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];
  }

  v9 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SGSuggestionsService_confirmReminderByRecordId_withCompletion___block_invoke;
  v12[3] = &unk_1E7EFB610;
  v13 = v8;
  v10 = v8;
  [v9 confirmReminderByRecordId:v7 completion:v12];
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

- (BOOL)confirmReminderByRecordId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  v8 = v6;
  [(SGSuggestionsService *)self syncTimeout:v11];
  v9 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
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

- (void)allEventsLimitedTo:(unint64_t)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
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

    if (v7)
    {
      (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__SGSuggestionsService_allEventsLimitedTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = v7;
    [v10 allEventsLimitedTo:a3 withCompletion:v12];
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

- (id)allEventsLimitedTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)suggestEventsInFutureLimitTo:(unint64_t)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
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

    if (v7)
    {
      (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__SGSuggestionsService_suggestEventsInFutureLimitTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = v7;
    [v10 eventsInFutureLimitTo:a3 options:0 withCompletion:v12];
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

- (id)suggestEventsInFutureLimitTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 withCompletion:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_12:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:878 description:{@"Invalid parameter not satisfying: %@", @"end"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"start"}];

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_13:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:879 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];

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

    if (v16)
    {
      (*(v16 + 2))(v16, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v19 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_withCompletion___block_invoke;
    v24[3] = &unk_1E7EFD0A0;
    v25 = v16;
    [v19 eventsStartingAt:v13 endingAt:v14 prefix:v15 limitTo:a6 options:0 withCompletion:v24];
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

- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(SGSuggestionsService *)self _daemonConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__SGSuggestionsService_suggestEventsStartingAt_endingAt_prefix_limitTo_error___block_invoke;
  v21[3] = &unk_1E7EFB7F0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = a6;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  [(SGSuggestionsService *)self syncTimeout];
  v19 = [v15 waitUntilReturn:v21 withTimeout:a7 error:?];

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

- (void)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 withCompletion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:866 description:{@"Invalid parameter not satisfying: %@", @"start"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:867 description:{@"Invalid parameter not satisfying: %@", @"end"}];

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

    if (v13)
    {
      (*(v13 + 2))(v13, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v16 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_withCompletion___block_invoke;
    v20[3] = &unk_1E7EFD0A0;
    v21 = v13;
    [v16 eventsStartingAt:v11 endingAt:v12 limitTo:a5 options:0 withCompletion:v20];
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

- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = v10;
  v19 = v11;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [v12 waitUntilReturn:&v17 withTimeout:a6 error:?];

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

- (id)suggestEventsInFutureLimitTo:(unint64_t)a3 options:(unsigned int)a4 error:(id *)a5
{
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SGSuggestionsService_suggestEventsInFutureLimitTo_options_error___block_invoke;
  v12[3] = &unk_1E7EFB7C8;
  v12[4] = self;
  v12[5] = a3;
  v13 = a4;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [v9 waitUntilReturn:v12 withTimeout:a5 error:?];

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

- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 prefix:(id)a5 limitTo:(unint64_t)a6 options:(unsigned int)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [(SGSuggestionsService *)self _daemonConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = a6;
  v28 = a7;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [(SGSuggestionsService *)self syncTimeout:v23];
  v21 = [v17 waitUntilReturn:&v23 withTimeout:a8 error:?];

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

- (id)suggestEventsStartingAt:(id)a3 endingAt:(id)a4 limitTo:(unint64_t)a5 options:(unsigned int)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(SGSuggestionsService *)self _daemonConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__SGSuggestionsService_suggestEventsStartingAt_endingAt_limitTo_options_error___block_invoke;
  v19[3] = &unk_1E7EFB778;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = a5;
  v23 = a6;
  v15 = v13;
  v16 = v12;
  [(SGSuggestionsService *)self syncTimeout];
  v17 = [v14 waitUntilReturn:v19 withTimeout:a7 error:?];

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

- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithCompletion:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = v11;
  v9 = v7;
  if (!v11)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    v8 = 0;
  }

  [(SGSuggestionsService *)self waitForEventWithIdentifier:v8 toAppearInEventStoreWithLastModificationDate:0 completion:v9];
}

- (void)waitForEventWithIdentifier:(id)a3 toAppearInEventStoreWithLastModificationDate:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__SGSuggestionsService_waitForEventWithIdentifier_toAppearInEventStoreWithLastModificationDate_completion___block_invoke;
  v15[3] = &unk_1E7EFD0A0;
  v16 = v11;
  v13 = v11;
  [v12 waitForEventWithIdentifier:v9 toAppearInEventStoreWithLastModificationDate:v10 completion:v15];
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

- (id)registerEventsChangeObserver:(id)a3
{
  v3 = a3;
  v4 = [[SGNotificationListener alloc] initWithNotification:@"com.apple.suggestions.eventsDidChange" callback:v3];

  return v4;
}

- (id)registerContactsChangeObserver:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55__SGSuggestionsService_registerContactsChangeObserver___block_invoke;
  v13 = &unk_1E7EFB750;
  v14 = self;
  v15 = v4;
  v5 = v4;
  v6 = MEMORY[0x1BFAF7240](&v10);
  v7 = [SGNotificationListener alloc];
  v8 = [(SGNotificationListener *)v7 initWithNotification:@"com.apple.suggestions.contactsDidChange" callback:v6, v10, v11, v12, v13, v14];

  return v8;
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

- (id)allContactsWithSnippets:(BOOL)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SGSuggestionsService_allContactsWithSnippets_limitTo_error___block_invoke;
  v12[3] = &unk_1E7EFB728;
  v13 = a3;
  v12[4] = self;
  v12[5] = a4;
  [(SGSuggestionsService *)self syncTimeout];
  v10 = [v9 waitUntilReturn:v12 withTimeout:a5 error:?];

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

- (void)allContactsLimitedTo:(unint64_t)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
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

    if (v7)
    {
      (*(v7 + 2))(v7, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v10 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__SGSuggestionsService_allContactsLimitedTo_withCompletion___block_invoke;
    v12[3] = &unk_1E7EFD0A0;
    v13 = v7;
    [v10 allContactsWithSnippets:1 limitTo:a3 withCompletion:v12];
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

- (id)allContactsLimitedTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v10 withTimeout:a4 error:?];

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

- (void)suggestContactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];
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

    if (v10)
    {
      (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = v10;
    [v13 contactMatchesWithMessagingPrefix:v9 limitTo:a4 withCompletion:v16];
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

- (id)suggestContactMatchesWithMessagingPrefix:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SGSuggestionsService_suggestContactMatchesWithMessagingPrefix_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)suggestContactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"query"}];
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

    if (v10)
    {
      (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = v10;
    [v13 contactMatchesWithFullTextSearch:v9 limitTo:a4 withCompletion:v16];
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

- (id)suggestContactMatchesWithFullTextSearch:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__SGSuggestionsService_suggestContactMatchesWithFullTextSearch_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:731 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifiers"}];
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

    if (v10)
    {
      (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = v10;
    [v13 contactMatchesWithContactIdentifiers:v9 limitTo:a4 withCompletion:v16];
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

- (id)contactMatchesWithContactIdentifiers:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SGSuggestionsService_contactMatchesWithContactIdentifiers_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifier"}];
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

    if (v10)
    {
      (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = v10;
    [v13 contactMatchesWithContactIdentifier:v9 limitTo:a4 withCompletion:v16];
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

- (id)contactMatchesWithContactIdentifier:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SGSuggestionsService_contactMatchesWithContactIdentifier_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 withCompletion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:711 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
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

    if (v10)
    {
      (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v13 = [(SGSuggestionsService *)self _remoteSuggestionManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__SGSuggestionsService_contactMatchesWithContact_limitTo_withCompletion___block_invoke;
    v16[3] = &unk_1E7EFD0A0;
    v17 = v10;
    [v13 contactMatchesWithContact:v9 limitTo:a4 withCompletion:v16];
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

- (id)contactMatchesWithContact:(id)a3 limitTo:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SGSuggestionsService_contactMatchesWithContact_limitTo_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];
  }

  v11 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_withCompletion___block_invoke;
  v14[3] = &unk_1E7EFD0A0;
  v15 = v10;
  v12 = v10;
  [v11 dissectAttachmentsFromSearchableItem:v9 options:a4 withCompletion:v14];
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

- (id)dissectAttachmentsFromSearchableItem:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(SGSuggestionsService *)self _daemonConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SGSuggestionsService_dissectAttachmentsFromSearchableItem_options_error___block_invoke;
  v13[3] = &unk_1E7EFB6D8;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  [(SGSuggestionsService *)self syncTimeout];
  v11 = [v9 waitUntilReturn:v13 withTimeout:a5 error:?];

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

- (void)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"headers"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__SGSuggestionsService_suggestionsFromSimpleMailMessage_headers_options_withCompletion___block_invoke;
  v20[3] = &unk_1E7EFB6B0;
  v20[4] = self;
  v21 = v11;
  v23 = v13;
  v24 = a5;
  v22 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v14 clearCachesFully:1 withCompletion:v20];
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

- (id)suggestionsFromSimpleMailMessage:(id)a3 headers:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = v10;
  v19 = v11;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [v12 waitUntilReturn:&v17 withTimeout:a6 error:?];

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

- (void)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"rfc822Data"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGSuggestionsService.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"sourceId"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__SGSuggestionsService_suggestionsFromRFC822Data_source_options_withCompletion___block_invoke;
  v20[3] = &unk_1E7EFB6B0;
  v20[4] = self;
  v21 = v11;
  v23 = v13;
  v24 = a5;
  v22 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [v14 clearCachesFully:1 withCompletion:v20];
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

- (id)suggestionsFromRFC822Data:(id)a3 source:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SGSuggestionsService *)self _daemonConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = v10;
  v19 = v11;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  [(SGSuggestionsService *)self syncTimeout:v17];
  v15 = [v12 waitUntilReturn:&v17 withTimeout:a6 error:?];

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

- (BOOL)clearCachesFully:(BOOL)a3 error:(id *)a4
{
  v7 = [(SGSuggestionsService *)self _daemonConnection];
  LOBYTE(v12) = a3;
  [(SGSuggestionsService *)self syncTimeout:MEMORY[0x1E69E9820]];
  v8 = [v7 waitUntilReturn:&v11 withTimeout:a4 error:?];
  v9 = [v8 BOOLValue];

  return v9;
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

- (void)rebuildNamesForDetailCacheWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SGSuggestionsService_rebuildNamesForDetailCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 rebuildNamesForDetailCache:v7];
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

- (BOOL)rebuildNamesForDetailCache:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SGSuggestionsService_rebuildNamesForDetailCache___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)resetConfirmationAndRejectionHistoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__SGSuggestionsService_resetConfirmationAndRejectionHistoryWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 resetConfirmationAndRejectionHistory:v7];
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

- (BOOL)resetConfirmationAndRejectionHistory:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SGSuggestionsService_resetConfirmationAndRejectionHistory___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (void)prepareForRealtimeExtractionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestionsService *)self _remoteSuggestionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SGSuggestionsService_prepareForRealtimeExtractionWithCompletion___block_invoke;
  v7[3] = &unk_1E7EFB610;
  v8 = v4;
  v6 = v4;
  [v5 prepareForRealtimeExtraction:v7];
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

- (BOOL)prepareForRealtimeExtraction:(id *)a3
{
  v4 = self;
  v5 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SGSuggestionsService_prepareForRealtimeExtraction___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = v4;
  [(SGSuggestionsService *)v4 syncTimeout];
  v6 = [v5 waitUntilReturn:v8 withTimeout:a3 error:?];
  LOBYTE(v4) = [v6 BOOLValue];

  return v4;
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

- (BOOL)isEnabledWithError:(id *)a3
{
  v4 = [(SGSuggestionsService *)self _daemonConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SGSuggestionsService_isEnabledWithError___block_invoke;
  v8[3] = &unk_1E7EFB5C0;
  v8[4] = self;
  [(SGSuggestionsService *)self syncTimeout];
  v5 = [v4 waitUntilReturn:v8 withTimeout:0 error:?];
  v6 = [v5 BOOLValue];

  return v6;
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

- (void)setSyncTimeout:(double)a3
{
  pthread_mutex_lock(&self->_syncTimeoutLock);
  self->_syncTimeout = a3;

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

+ (BOOL)hasEntitlement:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (hasEntitlement__onceToken == -1)
  {
    if (v3)
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
        v8 = [v6 BOOLValue];
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
      v8 = 0;
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
  v8 = v10;
LABEL_32:

  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __39__SGSuggestionsService_hasEntitlement___block_invoke()
{
  hasEntitlement__cache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(&unk_1F38743B0, "count")}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_daemonConnectionFutureForMachServiceName:(id)a3 protocol:(id)a4 useCache:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
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
  v9 = v7;
  v17 = v9;
  v10 = v8;
  v18 = v10;
  v11 = MEMORY[0x1BFAF7240](v16);
  v12 = v11;
  if (v5)
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
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.spotlightknowledged" protocol:&unk_1F387C670];

  return v2;
}

+ (id)serviceForMessages
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)serviceForFides
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.fides" protocol:&unk_1F387C5D8];

  return v2;
}

+ (id)serviceForInternal
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.internal" protocol:&unk_1F387C368];

  return v2;
}

+ (id)serviceForIpsos
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.ipsos" protocol:&unk_1F387BAF8];

  return v2;
}

+ (id)serviceForDeliveries
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.deliveries" protocol:&unk_1F387BA20];

  return v2;
}

+ (id)serviceForReminders
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.reminders" protocol:&unk_1F387B990];

  return v2;
}

+ (id)serviceForMail
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.suggestd.mail" protocol:&unk_1F387AE50];

  return v2;
}

+ (void)setInProcessSuggestManager:(id)a3
{
  v3 = a3;
  pthread_mutex_lock(&_inProcessSuggestManagerLock);
  v4 = _inProcessSuggestManager;
  _inProcessSuggestManager = v3;

  pthread_mutex_unlock(&_inProcessSuggestManagerLock);
}

@end