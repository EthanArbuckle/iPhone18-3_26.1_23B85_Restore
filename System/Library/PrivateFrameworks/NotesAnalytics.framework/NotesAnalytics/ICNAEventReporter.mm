@interface ICNAEventReporter
+ (BOOL)activityTypeHasUnknownShareFlow:(id)a3;
+ (BOOL)attachmentHasDeepLinkSafariHighlight:(id)a3;
+ (id)analyticsTypeUTIAttachment:(id)a3;
+ (id)filteredActivityType:(id)a3;
+ (id)inlineAttachmentReportForModernNote:(id)a3 faultOutInlineAttachmentsAfterDone:(BOOL)a4;
+ (id)maskString:(id)a3 withoutPrefix:(id)a4 withMask:(id)a5;
+ (void)faultOutObject:(id)a3;
+ (void)resetNoteCreateApproachEnumInAppSuiteDefaults;
+ (void)setNoteCreateApproachEnumToAppSuiteDefaults:(int64_t)a3;
- (ICNAEventReporter)initWithSubTrackerName:(id)a3;
- (ICNAEventReporter)initWithSubTrackerName:(id)a3 view:(id)a4;
- (ICNAEventReporter)initWithSubTrackerName:(id)a3 window:(id)a4;
- (ICNAEventReporter)initWithSubTrackerName:(id)a3 windowScene:(id)a4;
- (ICNASubTracker)subTracker;
- (UIWindowScene)windowScene;
- (id)accountDataForHTMLAccount:(id)a3;
- (id)accountDataForModernAccount:(id)a3;
- (id)accountTypeForHTMLAccount:(id)a3;
- (id)accountTypeForModernAccount:(id)a3;
- (id)audioAttachmentDataForModernAttachment:(id)a3;
- (id)audioTranscriptInteractionDataWithSummaryViewed:(BOOL)a3 transcriptViewed:(BOOL)a4 interactionTargets:(id)a5 interactionTypes:(id)a6;
- (id)bioAuthDataForModernNote:(id)a3;
- (id)collaborationActionDataIsInviting:(BOOL)a3 inviteStep:(int64_t)a4;
- (id)collaborationStatusForModernObject:(id)a3;
- (id)collaborationTypeForModernObject:(id)a3;
- (id)folderContentDataForNoteCollection:(id)a3;
- (id)folderContentDataForNoteContainer:(id)a3;
- (id)folderContentDataForVirtualFolder:(id)a3 context:(id)a4;
- (id)folderDataForHTMLCollection:(id)a3;
- (id)folderDataForHTMLFolder:(id)a3;
- (id)folderDataForModernAccountProxy:(id)a3;
- (id)folderDataForModernFolder:(id)a3;
- (id)folderDataForVirtualFolder:(id)a3;
- (id)folderViewEventDataObjectsForNoteContainer:(id)a3 isInGridMode:(BOOL)a4;
- (id)folderViewEventDataObjectsForVirtualFolder:(id)a3 isInGridMode:(BOOL)a4 context:(id)a5;
- (id)initForAudioWithSubTrackerName:(id)a3;
- (id)noteAccessDataForHTMLNote;
- (id)noteAccessDataForModernNote:(id)a3;
- (id)noteCollapsibleSectionDataForHTMLNote:(id)a3;
- (id)noteContentDataForHTMLNote:(id)a3;
- (id)noteContentDataForModernNote:(id)a3;
- (id)noteCreateDataFromAppSuiteDefaults;
- (id)noteDataForHTMLNote:(id)a3;
- (id)noteDataForModernNote:(id)a3;
- (id)noteEditDataForContextType:(int64_t)a3;
- (id)noteEditorCallOutBarDataForButtonTypeValue:(int64_t)a3;
- (id)noteViewEventDataObjectsForHTMLNote:(id)a3;
- (id)noteViewEventDataObjectsForModernNote:(id)a3;
- (id)objectDataForCloudSyncingObject:(id)a3;
- (id)passwordDataForModernNote:(id)a3;
- (id)passwordModeDataForContextPath:(int64_t)a3 fromMode:(signed __int16)a4 toMode:(signed __int16)a5;
- (id)searchRankingExperimentItemDataWithStrategyTypeEnum:(int64_t)a3 rank:(unint64_t)a4;
- (id)searchSuggestionDataWithSearchSuggestionType:(unint64_t)a3;
- (id)selectedResultAccountTypeForSearchResult:(id)a3;
- (id)styleDataForStyleTypeValue:(int64_t)a3;
- (id)tipDataForFeature:(id)a3;
- (id)tipImpressionEventDataObjectsForFeature:(id)a3 andModernNote:(id)a4;
- (id)tipLearnMoreClickEventDataObjectsForFeature:(id)a3 learnMoreTipName:(id)a4;
- (int64_t)addApproachEnumForAddApproach:(int64_t)a3;
- (int64_t)linkContentTypeEnumForURL:(id)a3;
- (int64_t)weeksSinceDate:(id)a3;
- (unint64_t)pencilStrokeCountForDrawing:(id)a3;
- (void)aaSessionDidEnd:(id)a3;
- (void)dealloc;
- (void)flushAllTimedData:(id)a3;
- (void)popContextPathData;
- (void)popNoteCreateData;
- (void)popSearchData;
- (void)pushContextPathDataWithContextPathEnum:(int64_t)a3;
- (void)pushDocScanDataWithID:(id)a3 actionType:(int64_t)a4 stage:(int64_t)a5;
- (void)pushInlineDrawingDataForDrawingID:(id)a3 tool:(int64_t)a4;
- (void)pushNoteCreateDataWithCreateApproach:(int64_t)a3;
- (void)pushSearchDataWithSearchSessionID:(id)a3;
- (void)pushStartDocScanPageCountData:(unint64_t)a3;
- (void)pushStartTableDataWithStartColumns:(unint64_t)a3 startRows:(unint64_t)a4;
- (void)reallySubmitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 gmRank:(unint64_t)a5 queryLength:(unint64_t)a6 searchResultCountData:(id)a7 searchSuggestionData:(id)a8;
- (void)setSubTracker:(id)a3;
- (void)startActivityStreamSummaryEventForObject:(id)a3;
- (void)startAttributionSideBarViewEventForNote:(id)a3;
- (void)startAudioRecordingEvent;
- (void)startFindInNoteEvent;
- (void)startFolderListViewEventDurationTracking;
- (void)startNoteViewEventDurationTrackingForHTMLNote:(id)a3;
- (void)startNoteViewEventDurationTrackingForModernNote:(id)a3 reportCoreAnalytics:(BOOL)a4;
- (void)startOnboardingScreenViewEventDurationTracking;
- (void)startTimedEventOfType:(Class)a3;
- (void)startTipImpressionEventDurationTrackingForFeature:(id)a3 andModernNote:(id)a4;
- (void)submitActivityStreamSummaryEventForObject:(id)a3 halfHeightViewDuration:(double)a4 fullHeightViewDuration:(double)a5 sideBarViewDuration:(double)a6 minimizedViewDuration:(double)a7;
- (void)submitAddLinkEvent:(id)a3 addApproach:(int64_t)a4 url:(id)a5;
- (void)submitAddLinkEvent:(id)a3 addApproach:(int64_t)a4 url:(id)a5 noteData:(id *)a6 noteContentData:(id *)a7 noteAccessData:(id *)a8;
- (void)submitAppReviewPromptRequestEvent;
- (void)submitAppSessionResignEvent;
- (void)submitAppSessionResumeEvent;
- (void)submitAttachmentAddEventForAttachment:(id)a3;
- (void)submitAttachmentBrowserActionEventForType:(int64_t)a3;
- (void)submitAttachmentBrowserTapEvent;
- (void)submitAttributionSideBarViewEventForNote:(id)a3 contextPath:(int64_t)a4 startState:(int64_t)a5 endState:(int64_t)a6;
- (void)submitBiometricsFailEventForModernNote:(id)a3;
- (void)submitChangePasswordEventForModernAccount:(id)a3 isReset:(BOOL)a4;
- (void)submitChecklistUsageEventForModernNote:(id)a3 countOfCheckedItems:(int64_t)a4 countOfTotalItems:(int64_t)a5 checklistActionType:(int64_t)a6;
- (void)submitCollabNotificationEventWithAction:(int64_t)a3;
- (void)submitDocScanEventForNote:(id)a3 pageCount:(unint64_t)a4;
- (void)submitEverNoteImportEventWithCount:(unint64_t)a3 isSuccessful:(BOOL)a4 intoAccount:(id)a5;
- (void)submitFastSyncSessionEndForNote:(id)a3 sessionID:(id)a4 participantVersions:(id)a5 numUniqueAccounts:(id)a6 numUniqueDevices:(id)a7 errorCode:(id)a8 numIgnoredMessages:(id)a9;
- (void)submitFastSyncSessionStartForNote:(id)a3 sessionID:(id)a4 participantVersions:(id)a5 numUniqueAccounts:(id)a6 numUniqueDevices:(id)a7;
- (void)submitFolderCreateEventForModernFolder:(id)a3 creationApproach:(int64_t)a4 filterSelection:(id)a5;
- (void)submitFolderDeleteEventForModernFolder:(id)a3;
- (void)submitFolderListViewEvent;
- (void)submitFullscreenDrawingToInlineDrawingEventForNote:(id)a3 drawing:(id)a4 drawingID:(id)a5 method:(int64_t)a6;
- (void)submitHashtagAddEventForNote:(id)a3 tokenContentIdentifier:(id)a4 viaAutoComplete:(BOOL)a5;
- (void)submitHashtagDeleteEvent:(id)a3 approachEnum:(int64_t)a4;
- (void)submitHashtagRenameEvent:(id)a3 approachEnum:(int64_t)a4;
- (void)submitInlineDrawingDataForDrawingDeletion:(id)a3 drawingID:(id)a4 forNote:(id)a5;
- (void)submitLinkedNoteAcceleratorEndEvent:(id)a3 maxCharactersTyped:(unint64_t)a4 endResultCount:(unint64_t)a5;
- (void)submitLinkedNoteAcceleratorInitiateEvent:(id)a3;
- (void)submitMentionAddEventForNote:(id)a3 mentionID:(id)a4 participantID:(id)a5 viaAutoComplete:(BOOL)a6;
- (void)submitMentionDeleteEvent:(id)a3;
- (void)submitMoveCheckedItemsToBottomSwitchEventWithNewState:(BOOL)a3 isInApp:(BOOL)a4;
- (void)submitNoteActionMenuEventForNoteEditorWithUsageType:(int64_t)a3 activityType:(id)a4;
- (void)submitNoteCreateEventForHTMLNote:(id)a3;
- (void)submitNoteCreateEventForHTMLNote:(id)a3 createApproach:(int64_t)a4;
- (void)submitNoteCreateEventForModernNote:(id)a3;
- (void)submitNoteCreateEventForModernNote:(id)a3 createApproach:(int64_t)a4;
- (void)submitNoteCreateEventForSearchIndexableNote:(id)a3 createApproach:(int64_t)a4;
- (void)submitNoteDeleteEventForHTMLNote:(id)a3;
- (void)submitNoteDeleteEventForModernNote:(id)a3;
- (void)submitNoteEditEventForHTMLNote:(id)a3;
- (void)submitNoteEditEventForModernNote:(id)a3 fromQuickNote:(BOOL)a4;
- (void)submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:(id)a3 buttonTypeValue:(int64_t)a4;
- (void)submitNoteEditorCallOutBarButtonSelectionEventForModernNote:(id)a3 buttonTypeValue:(int64_t)a4;
- (void)submitNotePinEventForModernNote:(id)a3 contextPath:(int64_t)a4;
- (void)submitNoteSharrowEventForHTMLNote:(id)a3 activityType:(id)a4 contextPath:(int64_t)a5;
- (void)submitNoteSharrowEventForModernNote:(id)a3 activityType:(id)a4 collaborationSelected:(BOOL)a5 countOfCollaboratorsAdded:(int64_t)a6 countOfCollaboratorsRemoved:(int64_t)a7 startInvitedCount:(int64_t)a8 startAcceptedCount:(int64_t)a9 endInvitedCount:(int64_t)a10 endAcceptedCount:(int64_t)a11;
- (void)submitNoteViewEventForHTMLNote:(id)a3;
- (void)submitNoteViewEventForModernNote:(id)a3 referringNote:(id)a4 collapsibleSectionAffordanceExposures:(int64_t)a5 collapsibleSectionAffordanceUsages:(int64_t)a6;
- (void)submitNotesToPagesEventWithContextPath:(int64_t)a3;
- (void)submitOnboardingScreenViewEventWithType:(int64_t)a3;
- (void)submitPDFWorkflowEngagementSummary:(id)a3 modernNote:(id)a4;
- (void)submitPaletteEngagementEventForNote:(id)a3 startPosition:(int64_t)a4 endPosition:(int64_t)a5;
- (void)submitPasswordFailEventForModernNote:(id)a3;
- (void)submitPasswordProtectEventForModernNote:(id)a3;
- (void)submitPasswordSuccessEventForModernNote:(id)a3;
- (void)submitPendingInlineDrawingDataForNote:(id)a3;
- (void)submitSearchAttemptEvent;
- (void)submitSearchInitiateEventWithSearchSessionID:(id)a3 searchSuggestionType:(unint64_t)a4;
- (void)submitSearchResultExposureSummaryEventWithSearchResultExposureData:(id)a3 searchSessionID:(id)a4;
- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 gmRank:(unint64_t)a5;
- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 queryLength:(unint64_t)a5 topHitResultCount:(unint64_t)a6 noteResultCount:(unint64_t)a7 attachmentResultCount:(unint64_t)a8 gmRank:(unint64_t)a9;
- (void)submitSnapshotCompletionEventIsSuccessful:(BOOL)a3;
- (void)submitSnapshotRegisterEventIsSuccessful:(BOOL)a3;
- (void)submitSnapshotTriggeredEvent;
- (void)submitStyleFormatEventForHTMLNote:(id)a3 styleTypeValue:(int64_t)a4;
- (void)submitStyleFormatEventForModernNote:(id)a3 styleTypeValue:(int64_t)a4;
- (void)submitTableCreateEventForAttachment:(id)a3 inNote:(id)a4;
- (void)submitTableEditEventForNote:(id)a3 endColumns:(unint64_t)a4 endRows:(unint64_t)a5;
- (void)submitTableRemoveEventForAttachment:(id)a3 inNote:(id)a4;
- (void)submitTimedEventOfTypeIfPossible:(Class)a3;
- (void)submitTipImpressionEventForFeature:(id)a3 andModernNote:(id)a4;
- (void)submitTipLearnMoreClickEventForFeature:(id)a3 learnMoreTipName:(id)a4;
@end

@implementation ICNAEventReporter

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAEventReporter;
  [(ICNAEventReporter *)&v4 dealloc];
}

- (ICNAEventReporter)initWithSubTrackerName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICNAEventReporter;
  v5 = [(ICNAOptedInObject *)&v13 init];
  if (v5)
  {
    v6 = [[ICNASubTracker alloc] initWithName:v4];
    subTracker = v5->_subTracker;
    v5->_subTracker = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    timedDataTrackingSet = v5->_timedDataTrackingSet;
    v5->_timedDataTrackingSet = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = +[ICNAController sharedController];
    [v10 addObserver:v5 selector:sel_flushAllTimedData_ name:@"ICNASessionFlushTimedDataNotification" object:v11];
  }

  return v5;
}

- (id)initForAudioWithSubTrackerName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICNAEventReporter;
  v5 = [(ICNAOptedInObject *)&v14 init];
  if (v5)
  {
    v6 = [ICNASubTracker alloc];
    v7 = +[ICNAController sharedController];
    v8 = [v7 aaTrackerForAudio];
    v9 = [(ICNASubTracker *)v6 initWithName:v4 parentAATracker:v8];
    subTracker = v5->_subTracker;
    v5->_subTracker = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    timedDataTrackingSet = v5->_timedDataTrackingSet;
    v5->_timedDataTrackingSet = v11;
  }

  return v5;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)a3 windowScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v24.receiver = self;
    v24.super_class = ICNAEventReporter;
    v9 = [(ICNAOptedInObject *)&v24 init];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_windowScene, v8);
      objc_storeStrong(&v10->_subTrackerName, a3);
      v11 = [v8 session];
      v12 = [v11 persistentIdentifier];

      v13 = +[ICNAController sharedController];
      v14 = [v13 aaTrackerForWindowSceneIdentifier:v12];

      if (v14)
      {
        v15 = [[ICNASubTracker alloc] initWithName:v7 parentAATracker:v14];
        subTracker = v10->_subTracker;
        v10->_subTracker = v15;
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      timedDataTrackingSet = v10->_timedDataTrackingSet;
      v10->_timedDataTrackingSet = v17;

      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      [v19 addObserver:v10 selector:sel_flushAllTimedData_ name:@"ICNASessionFlushTimedDataNotification" object:0];

      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 addObserver:v10 selector:sel_aaSessionDidEnd_ name:@"ICNASessionDidEndNotification" object:0];
    }

    self = v10;
    v21 = self;
  }

  else
  {
    v22 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:windowScene:];
    }

    v21 = 0;
  }

  return v21;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)a3 window:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a4 windowScene];
    self = [(ICNAEventReporter *)self initWithSubTrackerName:v6 windowScene:v7];

    v8 = self;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:window:];
    }

    v8 = 0;
  }

  return v8;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)a3 view:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a4 window];
    v8 = [v7 windowScene];
    self = [(ICNAEventReporter *)self initWithSubTrackerName:v6 windowScene:v8];

    v9 = self;
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:view:];
    }

    v9 = 0;
  }

  return v9;
}

- (ICNASubTracker)subTracker
{
  subTracker = self->_subTracker;
  if (!subTracker)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [WeakRetained session];
    v6 = [v5 persistentIdentifier];

    v7 = +[ICNAController sharedController];
    v8 = [v7 aaTrackerForWindowSceneIdentifier:v6];

    if (v8)
    {
      v9 = [[ICNASubTracker alloc] initWithName:self->_subTrackerName parentAATracker:v8];
      v10 = self->_subTracker;
      self->_subTracker = v9;
    }

    subTracker = self->_subTracker;
  }

  return subTracker;
}

- (void)setSubTracker:(id)a3
{
  v5 = a3;
  if (self->_subTracker != v5)
  {
    v8 = v5;
    v6 = NSStringFromSelector(sel_subTracker);
    [(ICNAEventReporter *)self willChangeValueForKey:v6];

    objc_storeStrong(&self->_subTracker, a3);
    v7 = NSStringFromSelector(sel_subTracker);
    [(ICNAEventReporter *)self didChangeValueForKey:v7];

    v5 = v8;
  }
}

- (void)startTimedEventOfType:(Class)a3
{
  objc_initWeak(&location, self);
  v5 = +[ICNAController sharedController];
  v6 = [(ICNAEventReporter *)self subTracker];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ICNAEventReporter_startTimedEventOfType___block_invoke;
  v7[3] = &unk_2799AFA98;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  [v5 trackTimedEventType:a3 subTracker:v6 synchronousTaskBeforeStarting:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __43__ICNAEventReporter_startTimedEventOfType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = NSStringFromClass(*(a1 + 40));
    v4 = [v5 timedDataTrackingSet];
    [v4 addObject:v3];

    WeakRetained = v5;
  }
}

- (void)submitTimedEventOfTypeIfPossible:(Class)a3
{
  objc_initWeak(&location, self);
  v5 = +[ICNAController sharedController];
  v6 = [(ICNAEventReporter *)self subTracker];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke;
  v7[3] = &unk_2799AFAC0;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  [v5 submitEventOfType:a3 subTracker:v6 synchronousTaskBeforeSubmitting:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

uint64_t __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = NSStringFromClass(*(a1 + 40));
    v4 = [WeakRetained timedDataTrackingSet];
    v5 = [v4 containsObject:v3];

    v6 = [WeakRetained timedDataTrackingSet];
    [v6 removeObject:v3];
  }

  else
  {
    v5 = 1;
  }

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke_cold_1(a1, v5, v7);
  }

  return v5;
}

- (void)flushAllTimedData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = ICDynamicCast();

  v7 = [v6 session];
  v8 = [v7 persistentIdentifier];

  v9 = [(ICNAEventReporter *)self windowScene];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 session];
    v12 = [v11 persistentIdentifier];
    v13 = [v8 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    objc_initWeak(&location, self);
    v14 = +[ICNAController sharedController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__ICNAEventReporter_flushAllTimedData___block_invoke;
    v15[3] = &unk_2799AF408;
    objc_copyWeak(&v16, &location);
    [v14 performOnInstrumentationQueueWaitUntilDone:0 block:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_6:
}

void __39__ICNAEventReporter_flushAllTimedData___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [WeakRetained timedDataTrackingSet];
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          v9 = +[ICNAController sharedController];
          v10 = NSClassFromString(v8);
          v11 = [v2 subTracker];
          [v9 _immediatelySubmitEventOfType:v10 subTracker:v11];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    v12 = [v2 timedDataTrackingSet];
    [v12 removeAllObjects];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)aaSessionDidEnd:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"ICNAEventReporterLostSessionNotification" object:self];
}

- (void)submitAppSessionResignEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:v4];
}

- (void)submitAppSessionResumeEvent
{
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:v4];
}

- (void)startOnboardingScreenViewEventDurationTracking
{
  v10 = [[ICASOnboardingScreenType alloc] initWithOnboardingScreenType:0];
  v3 = [[ICASOnboardingUserAction alloc] initWithOnboardingUserAction:0];
  v4 = [[ICASOnboardingScreenData alloc] initWithOnboardingScreenType:v10 onboardingUserAction:v3];
  v5 = +[ICNAController sharedController];
  v6 = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObject:v4 unique:1 onlyOnce:0 subTracker:v6];

  v7 = +[ICNAController sharedController];
  v8 = objc_opt_class();
  v9 = [(ICNAEventReporter *)self subTracker];
  [v7 trackTimedEventType:v8 subTracker:v9];
}

- (void)submitOnboardingScreenViewEventWithType:(int64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASOnboardingScreenType alloc] initWithOnboardingScreenType:a3];
  v5 = [ICASOnboardingScreenData alloc];
  v6 = [[ICASOnboardingUserAction alloc] initWithOnboardingUserAction:1];
  v7 = [(ICASOnboardingScreenData *)v5 initWithOnboardingScreenType:v4 onboardingUserAction:v6];

  v8 = +[ICNAController sharedController];
  v9 = objc_opt_class();
  v13[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [(ICNAEventReporter *)self subTracker];
  [v8 submitEventOfType:v9 pushThenPopDataObjects:v10 subTracker:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteCreateEventForModernNote:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v6 = [v4 folder];
  v7 = [(ICNAEventReporter *)self folderDataForModernFolder:v6];

  v8 = [v4 account];

  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:v8];

  v10 = [(ICNAEventReporter *)self noteCreateDataFromAppSuiteDefaults];
  if (v10)
  {
    v11 = +[ICNAController sharedController];
    v12 = [(ICNAEventReporter *)self subTracker];
    [v11 pushDataObject:v10 unique:0 onlyOnce:1 subTracker:v12];
  }

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v18[0] = v5;
  v18[1] = v7;
  v18[2] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteCreateEventForModernNote:(id)a3 createApproach:(int64_t)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v8 = [ICASNoteCreateData alloc];
  v9 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:a4];
  v10 = [(ICASNoteCreateData *)v8 initWithNoteCreateApproach:v9];

  v11 = [v6 folder];
  v12 = [(ICNAEventReporter *)self folderDataForModernFolder:v11];

  v13 = [v6 account];

  v14 = [(ICNAEventReporter *)self accountDataForModernAccount:v13];

  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v20[0] = v7;
  v20[1] = v10;
  v20[2] = v12;
  v20[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v18 = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteCreateEventForHTMLNote:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteDataForHTMLNote:v4];
  v6 = [v4 folder];
  v7 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v6];

  v8 = [v4 account];

  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v8];

  v10 = [(ICNAEventReporter *)self noteCreateDataFromAppSuiteDefaults];
  if (v10)
  {
    v11 = +[ICNAController sharedController];
    v12 = [(ICNAEventReporter *)self subTracker];
    [v11 pushDataObject:v10 unique:0 onlyOnce:1 subTracker:v12];
  }

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v18[0] = v5;
  v18[1] = v7;
  v18[2] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteCreateEventForHTMLNote:(id)a3 createApproach:(int64_t)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteDataForHTMLNote:v6];
  v8 = [ICASNoteCreateData alloc];
  v9 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:a4];
  v10 = [(ICASNoteCreateData *)v8 initWithNoteCreateApproach:v9];

  v11 = [v6 folder];
  v12 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v11];

  v13 = [v6 account];

  v14 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v13];

  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v20[0] = v7;
  v20[1] = v10;
  v20[2] = v12;
  v20[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v18 = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteCreateEventForSearchIndexableNote:(id)a3 createApproach:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();
  v7 = ICProtocolCast();

  if (v8)
  {
    [(ICNAEventReporter *)self submitNoteCreateEventForModernNote:v8 createApproach:a4];
  }

  else if (v7)
  {
    [(ICNAEventReporter *)self submitNoteCreateEventForHTMLNote:v7 createApproach:a4];
  }
}

- (void)submitNoteDeleteEventForModernNote:(id)a3
{
  v4 = a3;
  v13 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v5 = [(ICNAEventReporter *)self noteContentDataForModernNote:v4];
  v6 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v7 = [v4 account];

  v8 = [(ICNAEventReporter *)self accountDataForModernAccount:v7];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, v5, v6, v8, 0}];
  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v12 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v9 subTracker:v12];
}

- (void)submitNoteDeleteEventForHTMLNote:(id)a3
{
  v4 = a3;
  v13 = [(ICNAEventReporter *)self noteDataForHTMLNote:v4];
  v5 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:v4];
  v6 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v7 = [v4 account];

  v8 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v7];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, v5, v6, v8, 0}];
  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v12 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v9 subTracker:v12];
}

- (void)submitNoteSharrowEventForModernNote:(id)a3 activityType:(id)a4 collaborationSelected:(BOOL)a5 countOfCollaboratorsAdded:(int64_t)a6 countOfCollaboratorsRemoved:(int64_t)a7 startInvitedCount:(int64_t)a8 startAcceptedCount:(int64_t)a9 endInvitedCount:(int64_t)a10 endAcceptedCount:(int64_t)a11
{
  v14 = a5;
  v52 = a4;
  v17 = a3;
  v50 = [(ICNAEventReporter *)self noteDataForModernNote:v17];
  v18 = [(ICNAEventReporter *)self noteContentDataForModernNote:v17];
  v19 = [v17 folder];
  v51 = [(ICNAEventReporter *)self folderDataForModernFolder:v19];

  v20 = [v17 account];
  v49 = [(ICNAEventReporter *)self accountDataForModernAccount:v20];

  v48 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v17];

  v47 = [objc_opt_class() filteredActivityType:v52];
  v21 = [[ICASSharrowContextData alloc] initWithSharrowSelectedItem:v47];
  if ([v52 isEqualToString:@"com.apple.notes.sharing.initiate"])
  {
    v22 = 0;
  }

  else if ([v52 isEqualToString:@"com.apple.notes.sharing.cancel"])
  {
    v22 = 3;
  }

  else
  {
    v23 = [objc_opt_class() activityTypeHasUnknownShareFlow:v52];
    v24 = 1;
    if (v14)
    {
      v24 = 2;
    }

    if (v23)
    {
      v22 = 3;
    }

    else
    {
      v22 = v24;
    }
  }

  v46 = [[ICASShareFlowType alloc] initWithShareFlowType:v22];
  v44 = [[ICASShareFlowData alloc] initWithShareFlowType:v46];
  v25 = [ICASCollaboratorData alloc];
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a6)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a7)];
  v43 = [(ICASCollaboratorData *)v25 initWithCountOfCollaboratorAdded:v26 countOfCollaboratorRemoved:v27];

  v28 = [ICASStartCollaborationCollaboratorData alloc];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a8)];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a9)];
  v45 = [(ICASStartCollaborationCollaboratorData *)v28 initWithStartInvitedCount:v29 startAcceptedCount:v30];

  v31 = [ICASEndCollaborationCollaboratorData alloc];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a10)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a11)];
  v34 = [(ICASEndCollaborationCollaboratorData *)v31 initWithEndInvitedCount:v32 endAcceptedCount:v33];

  v35 = v21;
  v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v50, v18, v51, v21, v49, v48, v44, v43, v45, v34, 0}];
  v37 = [ICASContextPathData alloc];
  v38 = [[ICASContextPath alloc] initWithContextPath:1];
  v39 = [(ICASContextPathData *)v37 initWithContextPath:v38];

  [v36 addObject:v39];
  v40 = objc_opt_class();
  v41 = +[ICNAController sharedController];
  v42 = [(ICNAEventReporter *)self subTracker];
  [v41 submitEventOfType:v40 pushThenPopDataObjects:v36 subTracker:v42];
}

- (void)submitNoteSharrowEventForHTMLNote:(id)a3 activityType:(id)a4 contextPath:(int64_t)a5
{
  v37 = a4;
  v7 = a3;
  v8 = [(ICNAEventReporter *)self noteDataForHTMLNote:v7];
  v9 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:v7];
  v10 = [v7 folder];

  v11 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v10];
  v12 = [ICASSharrowContextData alloc];
  v13 = [objc_opt_class() filteredActivityType:v37];
  v36 = [(ICASSharrowContextData *)v12 initWithSharrowSelectedItem:v13];

  v32 = v10;
  v14 = [v10 account];
  v35 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v14];

  v34 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  if ([v37 isEqualToString:@"com.apple.notes.sharing.initiate"])
  {
    v15 = 0;
  }

  else if ([objc_opt_class() activityTypeHasUnknownShareFlow:v37])
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  v16 = [[ICASShareFlowType alloc] initWithShareFlowType:v15];
  v17 = [[ICASShareFlowData alloc] initWithShareFlowType:v16];
  v18 = [[ICASCollaboratorData alloc] initWithCountOfCollaboratorAdded:&unk_286E61B70 countOfCollaboratorRemoved:&unk_286E61B70];
  v19 = [[ICASStartCollaborationCollaboratorData alloc] initWithStartInvitedCount:&unk_286E61B70 startAcceptedCount:&unk_286E61B70];
  v20 = [[ICASEndCollaborationCollaboratorData alloc] initWithEndInvitedCount:&unk_286E61B70 endAcceptedCount:&unk_286E61B70];
  v31 = v11;
  v33 = v9;
  v29 = v9;
  v21 = v8;
  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, v29, v11, v36, v35, v34, v17, v18, v19, v20, 0}];
  if (a5)
  {
    v23 = [ICASContextPathData alloc];
    v24 = [[ICASContextPath alloc] initWithContextPath:a5];
    v25 = [(ICASContextPathData *)v23 initWithContextPath:v24];

    [v22 addObject:v25];
  }

  v26 = objc_opt_class();
  v27 = +[ICNAController sharedController];
  v28 = [(ICNAEventReporter *)self subTracker];
  [v27 submitEventOfType:v26 pushThenPopDataObjects:v22 subTracker:v28];
}

- (void)pushContextPathDataWithContextPathEnum:(int64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASContextPathData alloc];
  v6 = [[ICASContextPath alloc] initWithContextPath:a3];
  v7 = [(ICASContextPathData *)v5 initWithContextPath:v6];

  v8 = +[ICNAController sharedController];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [(ICNAEventReporter *)self subTracker];
  [v8 pushDataObjects:v9 unique:0 onlyOnce:0 subTracker:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)popContextPathData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:v4];
}

- (void)submitCollabNotificationEventWithAction:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASCollabNotificationAction alloc] initWithCollabNotificationAction:a3];
  v5 = [[ICASCollabNotificationData alloc] initWithCollabNotificationAction:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v11[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)submitEverNoteImportEventWithCount:(unint64_t)a3 isSuccessful:(BOOL)a4 intoAccount:(id)a5
{
  v5 = a4;
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [[ICASImportFileType alloc] initWithImportFileType:5];
  v10 = [ICASImportItemData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a3)];
  v12 = [(ICASImportItemData *)v10 initWithImportFileType:v9 importItemCount:v11];

  v13 = [ICASImportData alloc];
  v42[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v15 = [(ICASImportData *)v13 initWithImportSummary:v14];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4;
  v39 = __Block_byref_object_dispose__4;
  v40 = 0;
  v16 = [v8 managedObjectContext];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __81__ICNAEventReporter_submitEverNoteImportEventWithCount_isSuccessful_intoAccount___block_invoke;
  v31 = &unk_2799AF078;
  v34 = &v35;
  v32 = self;
  v17 = v8;
  v33 = v17;
  [v16 performBlockAndWait:&v28];

  v18 = [ICASResultType alloc];
  if (v5)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [(ICASResultType *)v18 initWithResultType:v19, v28, v29, v30, v31, v32];
  v21 = [[ICASResultData alloc] initWithResultType:v20];
  v22 = +[ICNAController sharedController];
  v23 = objc_opt_class();
  v24 = v36[5];
  v41[0] = v15;
  v41[1] = v24;
  v41[2] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v26 = [(ICNAEventReporter *)self subTracker];
  [v22 submitEventOfType:v23 pushThenPopDataObjects:v25 subTracker:v26];

  _Block_object_dispose(&v35, 8);
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __81__ICNAEventReporter_submitEverNoteImportEventWithCount_isSuccessful_intoAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountDataForModernAccount:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)noteViewEventDataObjectsForModernNote:(id)a3
{
  v15[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v6 = [(ICNAEventReporter *)self noteContentDataForModernNote:v4, v5];
  v15[1] = v6;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v15[2] = v7;
  v8 = [v4 folder];
  v9 = [(ICNAEventReporter *)self folderDataForModernFolder:v8];
  v15[3] = v9;
  v10 = [v4 account];

  v11 = [(ICNAEventReporter *)self accountDataForModernAccount:v10];
  v15[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)noteViewEventDataObjectsForHTMLNote:(id)a3
{
  v16[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteDataForHTMLNote:v4];
  v16[0] = v5;
  v6 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:v4];
  v16[1] = v6;
  v7 = [(ICNAEventReporter *)self noteCollapsibleSectionDataForHTMLNote:v4];
  v16[2] = v7;
  v8 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v16[3] = v8;
  v9 = [v4 folder];
  v10 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v9];
  v16[4] = v10;
  v11 = [v4 account];

  v12 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v11];
  v16[5] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)startNoteViewEventDurationTrackingForModernNote:(id)a3 reportCoreAnalytics:(BOOL)a4
{
  v4 = a4;
  v19[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:v6];
  v9 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v10 = [v6 folder];
  v11 = [(ICNAEventReporter *)self folderDataForModernFolder:v10];

  v12 = [v6 account];
  v13 = [(ICNAEventReporter *)self accountDataForModernAccount:v12];

  v14 = +[ICNAController sharedController];
  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
  v16 = [(ICNAEventReporter *)self subTracker];
  [v14 pushDataObjects:v15 unique:1 onlyOnce:0 subTracker:v16];

  if (v4)
  {
    v17 = +[ICNACoreAnalyticsReporter sharedReporter];
    [v17 fireNoteViewEventWithNote:v6 noteData:v7 noteContentData:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteViewEventForModernNote:(id)a3 referringNote:(id)a4 collapsibleSectionAffordanceExposures:(int64_t)a5 collapsibleSectionAffordanceUsages:(int64_t)a6
{
  v22 = a4;
  v10 = [(ICNAEventReporter *)self noteViewEventDataObjectsForModernNote:a3];
  v11 = [v10 mutableCopy];

  v12 = [ICASCollapsibleSectionData alloc];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v15 = [(ICASCollapsibleSectionData *)v12 initWithSectionAffordanceExposures:v13 sectionAffordanceUsages:v14];

  [v11 addObject:v15];
  if (v22)
  {
    v16 = +[ICNAIdentityManager sharedManager];
    v17 = [v22 identifier];
    v18 = [v16 saltedID:v17 forClass:objc_opt_class()];

    v19 = [[ICASViewRefData alloc] initWithLinkedNoteId:v18];
    [v11 addObject:v19];
  }

  v20 = +[ICNAController sharedController];
  v21 = [(ICNAEventReporter *)self subTracker];
  [v20 pushDataObjects:v11 unique:1 onlyOnce:1 subTracker:v21];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)startNoteViewEventDurationTrackingForHTMLNote:(id)a3
{
  v4 = a3;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v7 = [(ICNAEventReporter *)self noteViewEventDataObjectsForHTMLNote:v4];

  v5 = +[ICNAController sharedController];
  v6 = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:0 subTracker:v6];
}

- (void)submitNoteViewEventForHTMLNote:(id)a3
{
  v6 = [(ICNAEventReporter *)self noteViewEventDataObjectsForHTMLNote:a3];
  v4 = +[ICNAController sharedController];
  v5 = [(ICNAEventReporter *)self subTracker];
  [v4 pushDataObjects:v6 unique:1 onlyOnce:1 subTracker:v5];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)pushSearchDataWithSearchSessionID:(id)a3
{
  v4 = a3;
  v5 = [ICASSearchData alloc];
  v6 = [v4 copy];

  v9 = [(ICASSearchData *)v5 initWithSearchSessionID:v6];
  v7 = +[ICNAController sharedController];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:1 onlyOnce:0 subTracker:v8];
}

- (void)popSearchData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:v4];
}

- (void)submitTableCreateEventForAttachment:(id)a3 inNote:(id)a4
{
  v23[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v20 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v22 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v8 = [v6 account];

  v21 = [(ICNAEventReporter *)self accountDataForModernAccount:v8];

  v9 = [v7 tableModel];

  v10 = [v9 table];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v10, "rowCount"))}];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v10, "columnCount"))}];
  v13 = [[ICASStartTableData alloc] initWithStartingRowCount:v11 startingColumnCount:v12];
  v14 = [[ICASEndTableData alloc] initWithEndingRowCount:v11 endingColumnCount:v12];
  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v23[0] = v20;
  v23[1] = v22;
  v23[2] = v21;
  v23[3] = v13;
  v23[4] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
  v18 = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)pushStartTableDataWithStartColumns:(unint64_t)a3 startRows:(unint64_t)a4
{
  v7 = [ICASStartTableData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a3)];
  v12 = [(ICASStartTableData *)v7 initWithStartingRowCount:v8 startingColumnCount:v9];

  v10 = +[ICNAController sharedController];
  v11 = [(ICNAEventReporter *)self subTracker];
  [v10 pushDataObject:v12 unique:1 onlyOnce:1 subTracker:v11];
}

- (void)submitTableEditEventForNote:(id)a3 endColumns:(unint64_t)a4 endRows:(unint64_t)a5
{
  v22[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:v8];
  v10 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v8];
  v11 = [v8 account];

  v12 = [(ICNAEventReporter *)self accountDataForModernAccount:v11];

  v13 = [ICASEndTableData alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a5)];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v16 = [(ICASEndTableData *)v13 initWithEndingRowCount:v14 endingColumnCount:v15];

  v17 = +[ICNAController sharedController];
  v18 = objc_opt_class();
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v20 = [(ICNAEventReporter *)self subTracker];
  [v17 submitEventOfType:v18 pushThenPopDataObjects:v19 subTracker:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)submitTableRemoveEventForAttachment:(id)a3 inNote:(id)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v21 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v9 = [v6 account];

  v20 = [(ICNAEventReporter *)self accountDataForModernAccount:v9];

  v10 = [v7 tableModel];

  v11 = [v10 table];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v11, "rowCount"))}];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v11, "columnCount"))}];
  v13 = [[ICASStartTableData alloc] initWithStartingRowCount:v19 startingColumnCount:v12];
  v14 = +[ICNAController sharedController];
  v15 = objc_opt_class();
  v22[0] = v8;
  v22[1] = v21;
  v22[2] = v20;
  v22[3] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v17 = [(ICNAEventReporter *)self subTracker];
  [v14 submitEventOfType:v15 pushThenPopDataObjects:v16 subTracker:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)submitNotePinEventForModernNote:(id)a3 contextPath:(int64_t)a4
{
  v21 = a3;
  v6 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v21];
  v7 = [v21 account];
  v8 = [(ICNAEventReporter *)self accountDataForModernAccount:v7];

  v9 = [(ICNAEventReporter *)self noteContentDataForModernNote:v21];
  v10 = [(ICNAEventReporter *)self noteDataForModernNote:v21];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v6, v8, v9, v10, 0}];
  if (a4)
  {
    v12 = [ICASContextPathData alloc];
    v13 = [[ICASContextPath alloc] initWithContextPath:a4];
    v14 = [(ICASContextPathData *)v12 initWithContextPath:v13];

    [v11 addObject:v14];
  }

  v15 = [v21 isPinned];
  v16 = off_2799AE748;
  if (!v15)
  {
    v16 = off_2799AE770;
  }

  v17 = *v16;
  v18 = objc_opt_class();
  v19 = +[ICNAController sharedController];
  v20 = [(ICNAEventReporter *)self subTracker];
  [v19 submitEventOfType:v18 pushThenPopDataObjects:v11 subTracker:v20];
}

- (void)submitFolderCreateEventForModernFolder:(id)a3 creationApproach:(int64_t)a4 filterSelection:(id)a5
{
  v29 = a5;
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = [v8 array];
  v11 = [(ICNAEventReporter *)self folderDataForModernFolder:v9];
  [v10 addObject:v11];
  v12 = [v9 account];
  v13 = [(ICNAEventReporter *)self accountDataForModernAccount:v12];

  [v10 addObject:v13];
  LODWORD(v12) = [v9 isSmartFolder];

  if (v12)
  {
    v14 = [[ICASFolderCreationApproach alloc] initWithFolderCreationApproach:a4];
    objc_opt_class();
    v15 = [v29 filterTypeSelectionForFilterType:0];
    v16 = ICDynamicCast();

    if (v29)
    {
      v17 = [v29 filterTypeSelections];
      v18 = [v17 ic_compactMap:&__block_literal_global_3];

      v19 = [v29 joinOperator];
      if (v19 == 1)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19 == 0;
      }
    }

    else
    {
      v20 = 0;
      v18 = MEMORY[0x277CBEBF8];
    }

    v21 = [ICASSmartFolderCreationData alloc];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v16, "selectedTagCount"))}];
    v23 = [[ICASFilterCondition alloc] initWithFilterCondition:v20];
    v24 = [(ICASSmartFolderCreationData *)v21 initWithFolderCreationApproach:v14 countOfTags:v22 filterCondition:v23 enabledFiltersArray:v18];

    [v10 addObject:v24];
  }

  v25 = +[ICNAController sharedController];
  v26 = objc_opt_class();
  v27 = [v10 copy];
  v28 = [(ICNAEventReporter *)self subTracker];
  [v25 submitEventOfType:v26 pushThenPopDataObjects:v27 subTracker:v28];
}

ICASEnabledFiltersArrayData *__93__ICNAEventReporter_submitFolderCreateEventForModernFolder_creationApproach_filterSelection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ICASEnabledFiltersArrayData alloc];
  [v2 filterType];
  v4 = NSStringFromICFilterType();
  v5 = [v2 rawFilterValue];

  v6 = [(ICASEnabledFiltersArrayData *)v3 initWithFilterType:v4 filterValue:v5];

  return v6;
}

- (id)folderViewEventDataObjectsForNoteContainer:(id)a3 isInGridMode:(BOOL)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v7 = [v6 managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ICNAEventReporter_folderViewEventDataObjectsForNoteContainer_isInGridMode___block_invoke;
  v12[3] = &unk_2799AFB08;
  v8 = v6;
  v13 = v8;
  v14 = self;
  v16 = a4;
  v15 = &v17;
  [v7 performBlockAndWait:v12];

  v9 = v18[5];
  if (!v9)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __77__ICNAEventReporter_folderViewEventDataObjectsForNoteContainer_isInGridMode___block_invoke(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = ICDynamicCast();
  v4 = [*(a1 + 32) noteContainerAccount];
  v5 = [v4 accountProxy];

  v6 = *(a1 + 40);
  if (v3)
  {
    [v6 folderDataForModernFolder:v3];
  }

  else
  {
    [v6 folderDataForModernAccountProxy:v5];
  }
  v7 = ;
  v8 = [*(a1 + 40) folderContentDataForNoteContainer:*(a1 + 32)];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) noteContainerAccount];
  v11 = [v9 accountDataForModernAccount:v10];

  v12 = [*(a1 + 40) layoutDataForIsInGridMode:*(a1 + 56) isTimelineView:{objc_msgSend(*(a1 + 32), "isShowingDateHeaders")}];
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)folderViewEventDataObjectsForVirtualFolder:(id)a3 isInGridMode:(BOOL)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ICNAEventReporter_folderViewEventDataObjectsForVirtualFolder_isInGridMode_context___block_invoke;
  v15[3] = &unk_2799AFB30;
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v18 = self;
  v19 = &v21;
  v17 = v11;
  v20 = a4;
  [v11 performBlockAndWait:v15];
  v12 = v22[5];
  if (!v12)
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __85__ICNAEventReporter_folderViewEventDataObjectsForVirtualFolder_isInGridMode_context___block_invoke(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountObjectID];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) accountObjectID];
    v5 = [v3 objectWithID:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [ICASAccountData alloc];
  v7 = [[ICASAccountType alloc] initWithAccountType:0];
  v8 = [(ICASAccountData *)v6 initWithAccountType:v7 accountID:&stru_286E361B0];

  v9 = [*(a1 + 48) folderDataForVirtualFolder:*(a1 + 32)];
  v17[0] = v9;
  v10 = [*(a1 + 48) folderContentDataForVirtualFolder:*(a1 + 32) context:*(a1 + 40)];
  v17[1] = v10;
  if (v5)
  {
    v11 = [*(a1 + 48) accountDataForModernAccount:v5];
  }

  else
  {
    v11 = v8;
  }

  v17[2] = v11;
  v12 = [*(a1 + 48) layoutDataForIsInGridMode:*(a1 + 64) isTimelineView:{objc_msgSend(*(a1 + 32), "isShowingDateHeaders")}];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v5)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startFolderListViewEventDurationTracking
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

- (void)submitFolderListViewEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:v3];
}

- (void)submitFolderDeleteEventForModernFolder:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self folderDataForModernFolder:v4];
  v6 = [v4 account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:v6];

  v8 = [(ICNAEventReporter *)self folderContentDataForNoteContainer:v4];

  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v5;
  v14[1] = v8;
  v14[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)pushInlineDrawingDataForDrawingID:(id)a3 tool:(int64_t)a4
{
  v11 = a3;
  v6 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(ICNAEventReporter *)self setPendingInlineDrawingInformation:v7];
  }

  v8 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
  v9 = [v8 objectForKeyedSubscript:v11];

  if (!v9)
  {
    v9 = objc_alloc_init(ICInlineDrawingAnalyticsInformation);
    [(ICInlineDrawingAnalyticsInformation *)v9 setStartFingerStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setStartPencilStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setEndFingerStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setEndPencilStrokeCount:0];
    v10 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
    [v10 setObject:v9 forKey:v11];
  }

  if (a4 == 1)
  {
    [(ICInlineDrawingAnalyticsInformation *)v9 setAddedPencilStrokeCount:[(ICInlineDrawingAnalyticsInformation *)v9 addedPencilStrokeCount]+ 1];
  }

  else
  {
    [(ICInlineDrawingAnalyticsInformation *)v9 setAddedFingerStrokeCount:[(ICInlineDrawingAnalyticsInformation *)v9 addedFingerStrokeCount]+ 1];
  }

  [(ICInlineDrawingAnalyticsInformation *)v9 setLastUsedTool:a4];
}

- (void)submitPendingInlineDrawingDataForNote:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v42 = a3;
  if (v42)
  {
    v4 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
    v5 = [v4 count];

    if (v5)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
      v52 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v52)
      {
        v6 = 0x277D35000uLL;
        v7 = 0x277D35000uLL;
        v51 = *v54;
        v41 = self;
        do
        {
          v8 = 0;
          do
          {
            if (*v54 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v53 + 1) + 8 * v8);
            v10 = *(v6 + 3584);
            v11 = [*(v7 + 3888) sharedContext];
            v12 = [v11 managedObjectContext];
            v13 = [v10 attachmentWithIdentifier:v9 context:v12];

            if (v13 && ([v13 markedForDeletion] & 1) == 0)
            {
              [(ICNAEventReporter *)self pendingInlineDrawingInformation];
              v14 = v47 = v13;
              v15 = [v14 objectForKeyedSubscript:v9];

              v16 = [v15 startPencilStrokeCount];
              if (v16 + [v15 startFingerStrokeCount])
              {
                v17 = 2;
              }

              else
              {
                v17 = 1;
              }

              v18 = +[ICNAIdentityManager sharedManager];
              v49 = [v18 saltedID:v9 forClass:objc_opt_class()];

              v19 = [ICASDrawingData alloc];
              v20 = [[ICASDrawingActionType alloc] initWithDrawingActionType:v17];
              v21 = -[ICASDrawingTool initWithDrawingTool:]([ICASDrawingTool alloc], "initWithDrawingTool:", [v15 lastUsedTool]);
              v50 = [(ICASDrawingData *)v19 initWithDrawingActionType:v20 drawingTool:v21 drawingID:v49];

              v22 = [ICASStartDrawingStrokeData alloc];
              v23 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "startPencilStrokeCount"))}];
              v24 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "startFingerStrokeCount"))}];
              v48 = [(ICASStartDrawingStrokeData *)v22 initWithStartPencilStrokeCount:v23 startFingerStrokeCount:v24];

              v25 = [ICASEndDrawingStrokeData alloc];
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "endPencilStrokeCount"))}];
              v27 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "endFingerStrokeCount"))}];
              v46 = [(ICASEndDrawingStrokeData *)v25 initWithEndPencilStrokeCount:v26 endFingerStrokeCount:v27];

              v44 = [(ICNAEventReporter *)v41 noteDataForModernNote:v42];
              v45 = [(ICNAEventReporter *)v41 noteContentDataForModernNote:v42];
              v28 = [(ICNAEventReporter *)v41 noteAccessDataForModernNote:v42];
              v29 = [v42 account];
              v30 = [(ICNAEventReporter *)v41 accountDataForModernAccount:v29];

              v31 = +[ICNAController sharedController];
              v32 = objc_opt_class();
              v57[0] = v44;
              v57[1] = v45;
              v57[2] = v28;
              v57[3] = v30;
              v57[4] = v50;
              v57[5] = v48;
              v57[6] = v46;
              v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:7];
              v34 = [(ICNAEventReporter *)v41 subTracker];
              [v31 submitEventOfType:v32 pushThenPopDataObjects:v33 subTracker:v34];

              self = v41;
              v35 = [v15 endPencilStrokeCount];
              v36 = v35 > [v15 startPencilStrokeCount];
              v37 = +[ICNACoreAnalyticsReporter sharedReporter];
              v38 = v36;
              v6 = 0x277D35000;
              [v37 fireUpdateHandWritingContentEventWithNoteData:v44 pencilIsUsed:v38];

              v7 = 0x277D35000;
              v13 = v47;
            }

            ++v8;
          }

          while (v52 != v8);
          v52 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v52);
      }

      v39 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
      [v39 removeAllObjects];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)submitInlineDrawingDataForDrawingDeletion:(id)a3 drawingID:(id)a4 forNote:(id)a5
{
  v39[7] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[ICNAIdentityManager sharedManager];
  v38 = [v11 saltedID:v9 forClass:objc_opt_class()];

  v12 = [ICASDrawingData alloc];
  v13 = [[ICASDrawingActionType alloc] initWithDrawingActionType:3];
  v14 = [[ICASDrawingTool alloc] initWithDrawingTool:0];
  v37 = [(ICASDrawingData *)v12 initWithDrawingActionType:v13 drawingTool:v14 drawingID:v38];

  v15 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:v10];
  v16 = [v10 strokes];

  v17 = [v16 count] - v15;
  v18 = [ICASStartDrawingStrokeData alloc];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v15)];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v17)];
  v36 = [(ICASStartDrawingStrokeData *)v18 initWithStartPencilStrokeCount:v19 startFingerStrokeCount:v20];

  v21 = [ICASEndDrawingStrokeData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v15)];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v17)];
  v24 = [(ICASEndDrawingStrokeData *)v21 initWithEndPencilStrokeCount:v22 endFingerStrokeCount:v23];

  v35 = [(ICNAEventReporter *)self noteDataForModernNote:v8];
  v25 = [(ICNAEventReporter *)self noteContentDataForModernNote:v8];
  v26 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v8];
  v27 = [v8 account];

  v28 = [(ICNAEventReporter *)self accountDataForModernAccount:v27];

  v29 = +[ICNAController sharedController];
  v30 = objc_opt_class();
  v39[0] = v35;
  v39[1] = v25;
  v39[2] = v26;
  v39[3] = v28;
  v39[4] = v37;
  v39[5] = v36;
  v39[6] = v24;
  v31 = v24;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:7];
  v33 = [(ICNAEventReporter *)self subTracker];
  [v29 submitEventOfType:v30 pushThenPopDataObjects:v32 subTracker:v33];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)submitFullscreenDrawingToInlineDrawingEventForNote:(id)a3 drawing:(id)a4 drawingID:(id)a5 method:(int64_t)a6
{
  v38[6] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[ICNAIdentityManager sharedManager];
  v37 = [v13 saltedID:v10 forClass:objc_opt_class()];

  v14 = [ICASDrawingData alloc];
  v15 = [[ICASDrawingActionType alloc] initWithDrawingActionType:1];
  v16 = [[ICASDrawingTool alloc] initWithDrawingTool:0];
  v17 = [(ICASDrawingData *)v14 initWithDrawingActionType:v15 drawingTool:v16 drawingID:v37];

  v18 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:v11];
  v19 = [v11 strokes];

  v20 = [v19 count] - v18;
  v21 = [ICASStartDrawingStrokeData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v18)];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v20)];
  v24 = [(ICASStartDrawingStrokeData *)v21 initWithStartPencilStrokeCount:v22 startFingerStrokeCount:v23];

  v25 = [ICASDrawingConversionData alloc];
  v26 = [[ICASConversionMethod alloc] initWithConversionMethod:a6];
  v27 = [(ICASDrawingConversionData *)v25 initWithConversionMethod:v26];

  v28 = [(ICNAEventReporter *)self noteDataForModernNote:v12];
  v29 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v12];
  v30 = [v12 account];

  v31 = [(ICNAEventReporter *)self accountDataForModernAccount:v30];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v38[0] = v28;
  v38[1] = v29;
  v38[2] = v31;
  v38[3] = v17;
  v38[4] = v24;
  v38[5] = v27;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
  v35 = [(ICNAEventReporter *)self subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)submitPaletteEngagementEventForNote:(id)a3 startPosition:(int64_t)a4 endPosition:(int64_t)a5
{
  v25[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:v8];
  v10 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v8];
  v11 = [v8 account];

  v12 = [(ICNAEventReporter *)self accountDataForModernAccount:v11];

  v13 = [ICASPaletteEngagementData alloc];
  v14 = [[ICASPaletteEngagementType alloc] initWithPaletteEngagementType:1];
  v15 = [(ICASPaletteEngagementData *)v13 initWithPaletteEngagementType:v14];

  v16 = [ICASPalettePositionData alloc];
  v17 = [[ICASPalettePosition alloc] initWithPalettePosition:a4];
  v18 = [[ICASPalettePosition alloc] initWithPalettePosition:a5];
  v19 = [(ICASPalettePositionData *)v16 initWithPaletteStartPosition:v17 paletteEndPosition:v18];

  v20 = +[ICNAController sharedController];
  v21 = objc_opt_class();
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v12;
  v25[3] = v15;
  v25[4] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v23 = [(ICNAEventReporter *)self subTracker];
  [v20 submitEventOfType:v21 pushThenPopDataObjects:v22 subTracker:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)submitAttachmentAddEventForAttachment:(id)a3
{
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4;
  v60 = __Block_byref_object_dispose__4;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__4;
  v54 = __Block_byref_object_dispose__4;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  objc_initWeak(&location, self);
  v5 = [v4 managedObjectContext];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __59__ICNAEventReporter_submitAttachmentAddEventForAttachment___block_invoke;
  v23 = &unk_2799AFB58;
  v25 = &v56;
  v6 = v4;
  v24 = v6;
  v26 = &v50;
  v27 = &v44;
  objc_copyWeak(&v30, &location);
  v28 = &v38;
  v29 = &v32;
  [v5 performBlockAndWait:&v20];

  v7 = [ICNAIdentityManager sharedManager:v20];
  v8 = [v7 saltedID:v57[5] forClass:objc_opt_class()];

  v9 = [ICASAttachmentItemTypeData alloc];
  v10 = [(ICASAttachmentItemTypeData *)v9 initWithAttachmentID:v8 attachmentUTI:v51[5]];
  v11 = [ICASAttachmentData alloc];
  v63[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  v13 = [(ICASAttachmentData *)v11 initWithAttachmentSummary:v12];

  v14 = +[ICNAController sharedController];
  v15 = objc_opt_class();
  v16 = v39[5];
  v62[0] = v45[5];
  v62[1] = v16;
  v62[2] = v33[5];
  v62[3] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  v18 = [(ICNAEventReporter *)self subTracker];
  [v14 submitEventOfType:v15 pushThenPopDataObjects:v17 subTracker:v18];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  v19 = *MEMORY[0x277D85DE8];
}

void __59__ICNAEventReporter_submitAttachmentAddEventForAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:*(a1 + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v21 = [*(a1 + 32) note];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = [WeakRetained noteDataForModernNote:v21];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = objc_loadWeakRetained((a1 + 80));
  v13 = [v12 noteContentDataForModernNote:v21];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = objc_loadWeakRetained((a1 + 80));
  v17 = [v21 account];
  v18 = [v16 accountDataForModernAccount:v17];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

- (void)pushStartDocScanPageCountData:(unint64_t)a3
{
  v5 = [ICASStartDocScanPageData alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a3)];
  v9 = [(ICASStartDocScanPageData *)v5 initWithStartPageCount:v6];

  v7 = +[ICNAController sharedController];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:1 onlyOnce:0 subTracker:v8];
}

- (void)pushDocScanDataWithID:(id)a3 actionType:(int64_t)a4 stage:(int64_t)a5
{
  v8 = a3;
  v15 = [[ICASDocScanActionType alloc] initWithDocScanActionType:a4];
  v9 = [[ICASDocScanStage alloc] initWithDocScanStage:a5];
  v10 = +[ICNAIdentityManager sharedManager];
  v11 = [v10 saltedID:v8 forClass:objc_opt_class()];

  v12 = [[ICASDocScanData alloc] initWithDocScanID:v11 docScanActionType:v15 docScanStage:v9];
  v13 = +[ICNAController sharedController];
  v14 = [(ICNAEventReporter *)self subTracker];
  [v13 pushDataObject:v12 unique:0 onlyOnce:1 subTracker:v14];
}

- (void)submitDocScanEventForNote:(id)a3 pageCount:(unint64_t)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v8 = [v6 account];

  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:v8];

  v10 = [ICASEndDocScanPageData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v12 = [(ICASEndDocScanPageData *)v10 initWithEndPageCount:v11];

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v18[0] = v7;
  v18[1] = v9;
  v18[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitPasswordProtectEventForModernNote:(id)a3
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v6 = [v4 account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:v6];

  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:v4];
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v10 = [(ICNAEventReporter *)self passwordDataForModernNote:v4];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v16[0] = v5;
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
  v14 = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitChangePasswordEventForModernAccount:(id)a3 isReset:(BOOL)a4
{
  v4 = a4;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self accountDataForModernAccount:a3];
  v7 = off_2799AE750;
  if (!v4)
  {
    v7 = off_2799AE6C8;
  }

  v8 = *v7;
  v9 = objc_opt_class();
  v10 = +[ICNAController sharedController];
  v14[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v9 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitPasswordFailEventForModernNote:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v6 = [v4 account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:v6];

  v8 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v9 = [(ICNAEventReporter *)self passwordDataForModernNote:v4];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v13 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submitPasswordSuccessEventForModernNote:(id)a3
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v6 = [v4 account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:v6];

  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:v4];
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v10 = [(ICNAEventReporter *)self passwordDataForModernNote:v4];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v16[0] = v5;
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
  v14 = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitBiometricsFailEventForModernNote:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];
  v6 = [v4 account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:v6];

  v8 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v9 = [(ICNAEventReporter *)self bioAuthDataForModernNote:v4];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v13 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submitFastSyncSessionStartForNote:(id)a3 sessionID:(id)a4 participantVersions:(id)a5 numUniqueAccounts:(id)a6 numUniqueDevices:(id)a7
{
  v29[5] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[ICNAIdentityManager sharedManager];
  v18 = [v17 saltedID:v15 forClass:objc_opt_class()];

  v19 = [[ICASFastSyncData alloc] initWithFastSyncSessionId:v18 participantVersions:v14];
  v20 = [[ICASFastSyncParticipantData alloc] initWithCountOfUniqueAccounts:v13 countOfUniqueDevices:v12];

  v21 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v16];
  v22 = [(ICNAEventReporter *)self noteContentDataForModernNote:v16];
  v23 = [(ICNAEventReporter *)self noteDataForModernNote:v16];

  v24 = +[ICNAController sharedController];
  v25 = objc_opt_class();
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
  v27 = [(ICNAEventReporter *)self subTracker];
  [v24 submitEventOfType:v25 pushThenPopDataObjects:v26 subTracker:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)submitFastSyncSessionEndForNote:(id)a3 sessionID:(id)a4 participantVersions:(id)a5 numUniqueAccounts:(id)a6 numUniqueDevices:(id)a7 errorCode:(id)a8 numIgnoredMessages:(id)a9
{
  v41[6] = *MEMORY[0x277D85DE8];
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = +[ICNAIdentityManager sharedManager];
  v40 = [v22 saltedID:v20 forClass:objc_opt_class()];

  v39 = [v19 ic_map:&__block_literal_global_417];

  v23 = [[ICASFastSyncData alloc] initWithFastSyncSessionId:v40 participantVersions:v39];
  v24 = [[ICASFastSyncParticipantData alloc] initWithCountOfUniqueAccounts:v18 countOfUniqueDevices:v17];

  v25 = [ICASFastSyncErrorData alloc];
  if (v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = &unk_286E61B70;
  }

  if (v15)
  {
    v27 = v15;
  }

  else
  {
    v27 = &unk_286E61B70;
  }

  v28 = [(ICASFastSyncErrorData *)v25 initWithErrorCode:v26 countOfIgnoredMessages:v27, self];

  v29 = [v38 noteAccessDataForModernNote:v21];
  v30 = [v38 noteContentDataForModernNote:v21];
  v31 = [v38 noteDataForModernNote:v21];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v41[0] = v23;
  v41[1] = v24;
  v41[2] = v28;
  v41[3] = v29;
  v41[4] = v30;
  v41[5] = v31;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
  v35 = [v38 subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteEditEventForModernNote:(id)a3 fromQuickNote:(BOOL)a4
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteEditDataForContextType:v5];
  v8 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v9 = [v6 account];
  v10 = [(ICNAEventReporter *)self accountDataForModernAccount:v9];

  v11 = [(ICNAEventReporter *)self noteContentDataForModernNote:v6];
  v12 = [(ICNAEventReporter *)self noteDataForModernNote:v6];

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v18[0] = v8;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v7;
  v18[4] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  v16 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteEditEventForHTMLNote:(id)a3
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteEditDataForContextType:1];
  v6 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v7 = [v4 account];
  v8 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v7];

  v9 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:v4];
  v10 = [(ICNAEventReporter *)self noteDataForHTMLNote:v4];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v16[0] = v6;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v5;
  v16[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
  v14 = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitChecklistUsageEventForModernNote:(id)a3 countOfCheckedItems:(int64_t)a4 countOfTotalItems:(int64_t)a5 checklistActionType:(int64_t)a6
{
  v25[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [ICASChecklistItemsData alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a5)];
  v14 = [(ICASChecklistItemsData *)v11 initWithCountOfCheckedItems:v12 countOfTotalItems:v13];

  v15 = [[ICASChecklistAction alloc] initWithChecklistAction:a6];
  if ([MEMORY[0x277D36968] checklistAutoSortEnabled])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = [[ICASMoveCheckedItemsToBottomSwitchSetting alloc] initWithMoveCheckedItemsToBottomSwitchSetting:v16];
  v18 = [[ICASChecklistUsageData alloc] initWithChecklistAction:v15 moveCheckedItemsToBottomSwitchSetting:v17];
  v19 = [(ICNAEventReporter *)self noteDataForModernNote:v10];

  v20 = +[ICNAController sharedController];
  v21 = objc_opt_class();
  v25[0] = v14;
  v25[1] = v18;
  v25[2] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v23 = [(ICNAEventReporter *)self subTracker];
  [v20 submitEventOfType:v21 pushThenPopDataObjects:v22 subTracker:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)submitStyleFormatEventForHTMLNote:(id)a3 styleTypeValue:(int64_t)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v8 = [v6 account];
  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v8];

  v10 = [(ICNAEventReporter *)self noteDataForHTMLNote:v6];

  v11 = [(ICNAEventReporter *)self styleDataForStyleTypeValue:a4];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitStyleFormatEventForModernNote:(id)a3 styleTypeValue:(int64_t)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v8 = [v6 account];
  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:v8];

  v10 = [(ICNAEventReporter *)self noteDataForModernNote:v6];

  v11 = [(ICNAEventReporter *)self styleDataForStyleTypeValue:a4];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteEditorCallOutBarButtonSelectionEventForModernNote:(id)a3 buttonTypeValue:(int64_t)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v6];
  v8 = [v6 account];
  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:v8];

  v10 = [(ICNAEventReporter *)self noteEditorCallOutBarDataForButtonTypeValue:a4];
  v11 = [(ICNAEventReporter *)self noteContentDataForModernNote:v6];

  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:(id)a3 buttonTypeValue:(int64_t)a4
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v8 = [v6 account];
  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v8];

  v10 = [(ICNAEventReporter *)self noteEditorCallOutBarDataForButtonTypeValue:a4];
  v11 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:v6];

  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitMoveCheckedItemsToBottomSwitchEventWithNewState:(BOOL)a3 isInApp:(BOOL)a4
{
  v4 = a4;
  v17[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [[ICASSwitchSelectionType alloc] initWithSwitchSelectionType:v6];
  v8 = [[ICASSwitchSelectionData alloc] initWithSwitchSelectionType:v7];
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [[ICASSwitchSelectionContext alloc] initWithSwitchSelectionContext:v9];
  v11 = [[ICASSwitchSelectionContextData alloc] initWithSwitchSelectionContext:v10];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v8;
  v17[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitAttachmentBrowserTapEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 pushThenPopDataObjects:MEMORY[0x277CBEBF8] subTracker:v4];
}

- (void)submitAttachmentBrowserActionEventForType:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASActionType alloc] initWithActionType:a3];
  v5 = [[ICASAttachmentActionData alloc] initWithActionType:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v11[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)submitSearchAttemptEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:v4];
}

- (void)startFindInNoteEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

void __75__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_modernNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteAccessDataForModernNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) noteContentDataForModernNote:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) folder];
  v13 = [v11 folderDataForModernFolder:v12];
  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(a1 + 32);
  v20 = [*(a1 + 40) account];
  v17 = [v16 accountDataForModernAccount:v20];
  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void __73__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_htmlNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteContentDataForHTMLNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) noteDataForHTMLNote:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) folder];
  v10 = [v8 folderDataForHTMLFolder:v9];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);
  v17 = [*(a1 + 40) account];
  v14 = [v13 accountDataForHTMLAccount:v17];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (void)submitSearchInitiateEventWithSearchSessionID:(id)a3 searchSuggestionType:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [ICASSearchData alloc];
  v8 = [v6 copy];

  v9 = [(ICASSearchData *)v7 initWithSearchSessionID:v8];
  v10 = [(ICNAEventReporter *)self searchSuggestionDataWithSearchSuggestionType:a4];
  v11 = v10;
  if (v10)
  {
    v21 = v9;
    v22 = v10;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v21;
    v14 = 2;
  }

  else
  {
    v20 = v9;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v20;
    v14 = 1;
  }

  v15 = [v12 arrayWithObjects:v13 count:{v14, v20, v21, v22, v23}];
  v16 = +[ICNAController sharedController];
  v17 = objc_opt_class();
  v18 = [(ICNAEventReporter *)self subTracker];
  [v16 submitEventOfType:v17 pushThenPopDataObjects:v15 subTracker:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 gmRank:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[ICASSearchResultCountData alloc] initWithTopHitCount:&unk_286E61B70 notesCount:&unk_286E61B70 attachmentsCount:&unk_286E61B70];
  [(ICNAEventReporter *)self reallySubmitSearchResultSelectEventWithSearchResult:v9 searchSessionID:v8 gmRank:a5 queryLength:0 searchResultCountData:v10 searchSuggestionData:0];
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 queryLength:(unint64_t)a5 topHitResultCount:(unint64_t)a6 noteResultCount:(unint64_t)a7 attachmentResultCount:(unint64_t)a8 gmRank:(unint64_t)a9
{
  v25 = a3;
  v15 = a4;
  v16 = [ICASSearchResultCountData alloc];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a6)];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a7)];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a8)];
  v20 = [(ICASSearchResultCountData *)v16 initWithTopHitCount:v17 notesCount:v18 attachmentsCount:v19];

  v21 = [v25 configuration];
  v22 = [v21 searchSuggestionType];

  if (v22)
  {
    v23 = [v25 configuration];
    v24 = -[ICNAEventReporter searchSuggestionDataWithSearchSuggestionType:](self, "searchSuggestionDataWithSearchSuggestionType:", [v23 searchSuggestionType]);
  }

  else
  {
    v24 = 0;
  }

  [(ICNAEventReporter *)self reallySubmitSearchResultSelectEventWithSearchResult:v25 searchSessionID:v15 gmRank:a9 queryLength:a5 searchResultCountData:v20 searchSuggestionData:v24];
}

- (void)reallySubmitSearchResultSelectEventWithSearchResult:(id)a3 searchSessionID:(id)a4 gmRank:(unint64_t)a5 queryLength:(unint64_t)a6 searchResultCountData:(id)a7 searchSuggestionData:(id)a8
{
  v50[3] = *MEMORY[0x277D85DE8];
  v46 = a7;
  v45 = a8;
  v14 = a4;
  v15 = a3;
  v16 = [ICASSearchData alloc];
  v17 = [v14 copy];

  v44 = [(ICASSearchData *)v16 initWithSearchSessionID:v17];
  v47 = self;
  v49 = [(ICNAEventReporter *)self selectedResultAccountTypeForSearchResult:v15];
  v18 = [v15 object];
  v19 = [v18 searchResultType];

  if (v19)
  {
    v20 = 2 * (v19 == 1);
  }

  else
  {
    v20 = 1;
  }

  v43 = [[ICASSelectedResultType alloc] initWithSelectedResultType:v20];
  v48 = [[ICASGmRankingStrategyType alloc] initWithGmRankingStrategyType:2];
  v21 = +[ICNAIdentityManager sharedManager];
  v22 = [v15 object];
  v23 = [v22 contentIdentifier];
  v24 = [v21 saltedID:v23 forClass:objc_opt_class()];

  v25 = [ICASSearchSelectionData alloc];
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a5)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a6)];
  v28 = MEMORY[0x277CCABB0];
  v29 = [v15 configuration];
  v30 = [v29 foundAttachmentObjectID];
  v31 = [v28 numberWithInt:v30 != 0];
  v32 = MEMORY[0x277CCABB0];
  v33 = [v15 configuration];

  v34 = [v32 numberWithBool:{objc_msgSend(v33, "isTopHit")}];
  v35 = [(ICASSearchSelectionData *)v25 initWithSelectedResultID:v24 selectedResultAccountType:v49 selectedResultType:v43 gmRankingStrategyType:v48 gmRank:v26 searchRankingExperimentSummary:0 gmRankIOS13:0 charLengthOfQueryString:v27 isNoteFoundByAttachment:v31 isTopHit:v34];

  v50[0] = v44;
  v50[1] = v35;
  v50[2] = v46;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  v37 = v36;
  if (v45)
  {
    v38 = [v36 arrayByAddingObject:v45];

    v37 = v38;
  }

  v39 = +[ICNAController sharedController];
  v40 = objc_opt_class();
  v41 = [(ICNAEventReporter *)v47 subTracker];
  [v39 submitEventOfType:v40 pushThenPopDataObjects:v37 subTracker:v41];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)submitSearchResultExposureSummaryEventWithSearchResultExposureData:(id)a3 searchSessionID:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [[ICASSearchData alloc] initWithSearchSessionID:v6];

  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v8;
  v14[1] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)tipImpressionEventDataObjectsForFeature:(id)a3 andModernNote:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [(ICNAEventReporter *)self tipDataForFeature:v8];

  v11 = [v9 initWithObjects:{v10, 0}];
  if (v6)
  {
    v12 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
    [v11 addObject:v12];
  }

  v13 = [v11 copy];

  return v13;
}

- (void)startTipImpressionEventDurationTrackingForFeature:(id)a3 andModernNote:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v10 = [(ICNAEventReporter *)self tipImpressionEventDataObjectsForFeature:v7 andModernNote:v6];

  v8 = +[ICNAController sharedController];
  v9 = [(ICNAEventReporter *)self subTracker];
  [v8 pushDataObjects:v10 unique:1 onlyOnce:0 subTracker:v9];
}

- (void)submitTipImpressionEventForFeature:(id)a3 andModernNote:(id)a4
{
  v7 = [(ICNAEventReporter *)self tipImpressionEventDataObjectsForFeature:a3 andModernNote:a4];
  v5 = +[ICNAController sharedController];
  v6 = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:v6];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (id)tipLearnMoreClickEventDataObjectsForFeature:(id)a3 learnMoreTipName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICASTipLearnMoreData alloc] initWithLearnMoreTipName:v5 tipFeature:v6];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v7, 0}];
  v9 = [v8 copy];

  return v9;
}

- (void)submitTipLearnMoreClickEventForFeature:(id)a3 learnMoreTipName:(id)a4
{
  v8 = [(ICNAEventReporter *)self tipLearnMoreClickEventDataObjectsForFeature:a3 learnMoreTipName:a4];
  v5 = +[ICNAController sharedController];
  v6 = objc_opt_class();
  v7 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v6 pushThenPopDataObjects:v8 subTracker:v7];
}

- (void)submitSnapshotRegisterEventIsSuccessful:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASResultType alloc];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(ICASResultType *)v5 initWithResultType:v6];
  v8 = [[ICASResultData alloc] initWithResultType:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitSnapshotTriggeredEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:v4];
}

- (void)submitSnapshotCompletionEventIsSuccessful:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASResultType alloc];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(ICASResultType *)v5 initWithResultType:v6];
  v8 = [[ICASResultData alloc] initWithResultType:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitNoteActionMenuEventForNoteEditorWithUsageType:(int64_t)a3 activityType:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [[ICASActionMenuUsageType alloc] initWithActionMenuUsageType:a3];
  v8 = [[ICASActionMenuContextType alloc] initWithActionMenuContextType:1];
  v9 = [ICASActionMenuData alloc];
  v10 = [objc_opt_class() filteredActivityType:v6];

  v11 = [(ICASActionMenuData *)v9 initWithActionMenuUsageType:v7 actionMenuContextType:v8 actionMenuSelection:v10];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v17[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitMentionAddEventForNote:(id)a3 mentionID:(id)a4 participantID:(id)a5 viaAutoComplete:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [a3 objectID];
  v13 = [MEMORY[0x277D35F30] sharedContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__ICNAEventReporter_submitMentionAddEventForNote_mentionID_participantID_viaAutoComplete___block_invoke;
  v17[3] = &unk_2799AFBF0;
  v18 = v12;
  v19 = v11;
  v22 = a6;
  v20 = v10;
  v21 = self;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [v13 performBackgroundTask:v17];
}

void __90__ICNAEventReporter_submitMentionAddEventForNote_mentionID_participantID_viaAutoComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35F28] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 inlineAttachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          if ([v10 isMentionAttachment])
          {
            v11 = *(a1 + 40);
            v12 = [v10 tokenContentIdentifier];
            if ([v11 isEqualToString:v12])
            {
              v13 = [v10 identifier];
              v14 = [v13 isEqualToString:*(a1 + 48)];

              if (!v14)
              {
                v7 = 1;
                goto LABEL_14;
              }
            }

            else
            {
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

LABEL_14:

    v15 = [ICASMentionAddApproach alloc];
    if (*(a1 + 64))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [(ICASMentionAddApproach *)v15 initWithMentionAddApproach:v16];
    v18 = [ICASMentionAddData alloc];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v20 = [(ICASMentionAddData *)v18 initWithIsExistingMention:v19 mentionAddApproach:v17];

    v21 = [*(a1 + 56) noteDataForModernNote:v4];
    v22 = +[ICNAController sharedController];
    v23 = objc_opt_class();
    v31[0] = v21;
    v31[1] = v20;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v25 = [*(a1 + 56) subTracker];
    [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)submitMentionDeleteEvent:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNAEventReporter *)self noteDataForModernNote:a3];
  v5 = +[ICNAController sharedController];
  v6 = objc_opt_class();
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v6 pushThenPopDataObjects:v7 subTracker:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startAttributionSideBarViewEventForNote:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [[ICASCollabActivityContextPath alloc] initWithCollabActivityContextPath:0];
    v6 = [ICASEditorCallOutData alloc];
    v7 = [[ICASStartState alloc] initWithStartState:0];
    v8 = [[ICASEndState alloc] initWithEndState:0];
    v9 = [(ICASEditorCallOutData *)v6 initWithCollabActivityContextPath:v5 startState:v7 endState:v8];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v10 = [v4 managedObjectContext];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __61__ICNAEventReporter_startAttributionSideBarViewEventForNote___block_invoke;
    v20 = &unk_2799AF078;
    v23 = &v24;
    v21 = self;
    v22 = v4;
    [v10 performBlockAndWait:&v17];

    if (v25[5])
    {
      v11 = [ICNAController sharedController:v17];
      v12 = v25[5];
      v30[0] = v9;
      v30[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      v14 = [(ICNAEventReporter *)self subTracker];
      [v11 pushDataObjects:v13 unique:1 onlyOnce:0 subTracker:v14];

      [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter startAttributionSideBarViewEventForNote:];
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter startAttributionSideBarViewEventForNote:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __61__ICNAEventReporter_startAttributionSideBarViewEventForNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)submitAttributionSideBarViewEventForNote:(id)a3 contextPath:(int64_t)a4 startState:(int64_t)a5 endState:(int64_t)a6
{
  v36[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (v10)
  {
    v11 = [[ICASCollabActivityContextPath alloc] initWithCollabActivityContextPath:a4];
    v12 = [ICASEditorCallOutData alloc];
    v13 = [[ICASStartState alloc] initWithStartState:a5];
    v14 = [[ICASEndState alloc] initWithEndState:a6];
    v15 = [(ICASEditorCallOutData *)v12 initWithCollabActivityContextPath:v11 startState:v13 endState:v14];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    v16 = [v10 managedObjectContext];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __94__ICNAEventReporter_submitAttributionSideBarViewEventForNote_contextPath_startState_endState___block_invoke;
    v26 = &unk_2799AF078;
    v29 = &v30;
    v27 = self;
    v28 = v10;
    [v16 performBlockAndWait:&v23];

    if (v15)
    {
      if (v31[5])
      {
        v17 = [ICNAController sharedController:v23];
        v18 = v31[5];
        v36[0] = v15;
        v36[1] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
        v20 = [(ICNAEventReporter *)self subTracker];
        [v17 pushDataObjects:v19 unique:1 onlyOnce:0 subTracker:v20];

        [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
LABEL_12:

        _Block_object_dispose(&v30, 8);
        goto LABEL_13;
      }

      v21 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
      }
    }

    else
    {
      v21 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
      }
    }

    goto LABEL_12;
  }

  v11 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
  {
    [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
  }

LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __94__ICNAEventReporter_submitAttributionSideBarViewEventForNote_contextPath_startState_endState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)startActivityStreamSummaryEventForObject:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v5 serverShareCheckingParent];
  v13 = [v4 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v6, "ic_nonOwnerInvitedParticipantsCount"))}];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 serverShareCheckingParent];

  v9 = [v7 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v8, "ic_nonOwnerAcceptedParticipantsCount"))}];

  v10 = [[ICASStartCollaborationCollaboratorData alloc] initWithStartInvitedCount:v13 startAcceptedCount:v9];
  v11 = +[ICNAController sharedController];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v11 pushDataObject:v10 unique:1 onlyOnce:0 subTracker:v12];
}

- (void)submitActivityStreamSummaryEventForObject:(id)a3 halfHeightViewDuration:(double)a4 fullHeightViewDuration:(double)a5 sideBarViewDuration:(double)a6 minimizedViewDuration:(double)a7
{
  v12 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v13 = [v12 managedObjectContext];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __151__ICNAEventReporter_submitActivityStreamSummaryEventForObject_halfHeightViewDuration_fullHeightViewDuration_sideBarViewDuration_minimizedViewDuration___block_invoke;
  v33 = &unk_2799AFC18;
  v14 = v12;
  v36 = &v44;
  v37 = &v38;
  v34 = v14;
  v35 = self;
  [v13 performBlockAndWait:&v30];

  v15 = [ICASActivityStreamDurationSummaryData alloc];
  v16 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(a4 * 1000.0);
  v17 = [v16 numberWithDouble:{v30, v31, v32, v33}];
  v18 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(a5 * 1000.0);
  v19 = [v18 numberWithDouble:?];
  v20 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(a6 * 1000.0);
  v21 = [v20 numberWithDouble:?];
  v22 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(a7 * 1000.0);
  v23 = [v22 numberWithDouble:?];
  v24 = [(ICASActivityStreamDurationSummaryData *)v15 initWithHalfHeightViewDuration:v17 fullHeightViewDuration:v19 sideBarViewDuration:v21 minimizedViewDuration:v23];

  v25 = [MEMORY[0x277CBEB18] ic_arrayFromNonNilObject:v45[5]];
  [v25 ic_addNonNilObject:v39[5]];
  [v25 ic_addNonNilObject:v24];
  v26 = +[ICNAController sharedController];
  v27 = objc_opt_class();
  v28 = [v25 copy];
  v29 = [(ICNAEventReporter *)self subTracker];
  [v26 submitEventOfType:v27 pushThenPopDataObjects:v28 subTracker:v29];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void __151__ICNAEventReporter_submitActivityStreamSummaryEventForObject_halfHeightViewDuration_fullHeightViewDuration_sideBarViewDuration_minimizedViewDuration___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) serverShareCheckingParent];
  v13 = [v2 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v3, "ic_nonOwnerInvitedParticipantsCount"))}];

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) serverShareCheckingParent];
  v6 = [v4 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v5, "ic_nonOwnerAcceptedParticipantsCount"))}];

  v7 = [[ICASEndCollaborationCollaboratorData alloc] initWithEndInvitedCount:v13 endAcceptedCount:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 40) objectDataForCloudSyncingObject:*(a1 + 32)];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)submitHashtagAddEventForNote:(id)a3 tokenContentIdentifier:(id)a4 viaAutoComplete:(BOOL)a5
{
  v8 = a4;
  v9 = [a3 objectID];
  v10 = [MEMORY[0x277D35F30] sharedContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ICNAEventReporter_submitHashtagAddEventForNote_tokenContentIdentifier_viaAutoComplete___block_invoke;
  v13[3] = &unk_2799AFC40;
  v14 = v9;
  v15 = v8;
  v17 = a5;
  v16 = self;
  v11 = v8;
  v12 = v9;
  [v10 performBackgroundTask:v13];
}

void __89__ICNAEventReporter_submitHashtagAddEventForNote_tokenContentIdentifier_viaAutoComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35F28] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 inlineAttachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = *v28;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          if ([v10 isHashtagAttachment])
          {
            v11 = [v10 tokenContentIdentifier];
            v12 = [v11 isEqualToString:*(a1 + 40)];

            if (v12)
            {
              v7 = 1;
              goto LABEL_13;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v13 = [ICASTagAddApproach alloc];
    if (*(a1 + 56))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = [(ICASTagAddApproach *)v13 initWithTagAddApproach:v14];
    v16 = [MEMORY[0x277D35EE8] shouldAutoConvertToTag];
    v17 = [ICASTagAddData alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v20 = [(ICASTagAddData *)v17 initWithIsExistingTag:v18 tagAddApproach:v15 isAutoConversionEnabled:v19];

    v21 = [*(a1 + 48) noteDataForModernNote:v4];
    v22 = +[ICNAController sharedController];
    v23 = objc_opt_class();
    v31[0] = v20;
    v31[1] = v21;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v25 = [*(a1 + 48) subTracker];
    [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)submitHashtagDeleteEvent:(id)a3 approachEnum:(int64_t)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self noteDataForModernNote:a3];
  v7 = [[ICASTagDeleteApproach alloc] initWithTagDeleteApproach:a4];
  v8 = [[ICASTagDeleteData alloc] initWithTagDeleteApproach:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v6;
  v14[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitHashtagRenameEvent:(id)a3 approachEnum:(int64_t)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self noteDataForModernNote:a3];
  v7 = [[ICASTagRenameApproach alloc] initWithTagRenameApproach:a4];
  v8 = [[ICASTagRenameData alloc] initWithTagRenameApproach:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v14[0] = v6;
  v14[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitAppReviewPromptRequestEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:v4];
}

- (void)submitNotesToPagesEventWithContextPath:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASNotesToPagesContextPath alloc] initWithNotesToPagesContextPath:a3];
  v5 = [[ICASNotesToPagesContextPathData alloc] initWithNotesToPagesContextPath:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v11[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)addApproachEnumForAddApproach:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_25C72AD78[a3 - 1];
  }
}

- (int64_t)linkContentTypeEnumForURL:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D35DF0] isShowNoteURL:v3] & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowHTMLNoteURL:", v3) & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowLegacyNoteURL:", v3))
  {
    v4 = 1;
  }

  else if ([MEMORY[0x277D35DF0] isShowFolderURL:v3] & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowHTMLFolderURL:", v3))
  {
    v4 = 2;
  }

  else if ([v3 ic_isWebURL])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4 * (v3 != 0);
  }

  return v4;
}

- (void)submitAddLinkEvent:(id)a3 addApproach:(int64_t)a4 url:(id)a5
{
  v8 = a3;
  [(ICNAEventReporter *)self submitAddLinkEvent:v8 addApproach:a4 contentType:[(ICNAEventReporter *)self linkContentTypeEnumForURL:a5] isTokenized:0];
}

- (void)submitAddLinkEvent:(id)a3 addApproach:(int64_t)a4 url:(id)a5 noteData:(id *)a6 noteContentData:(id *)a7 noteAccessData:(id *)a8
{
  v14 = a3;
  [(ICNAEventReporter *)self submitAddLinkEvent:v14 addApproach:a4 contentType:[(ICNAEventReporter *)self linkContentTypeEnumForURL:a5] isTokenized:0 noteData:a6 noteContentData:a7 noteAccessData:a8];
}

- (void)submitLinkedNoteAcceleratorInitiateEvent:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
  v6 = [(ICNAEventReporter *)self noteContentDataForModernNote:v4];
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v4];

  v8 = +[ICNAController sharedController];
  v9 = objc_opt_class();
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [(ICNAEventReporter *)self subTracker];
  [v8 submitEventOfType:v9 pushThenPopDataObjects:v10 subTracker:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitLinkedNoteAcceleratorEndEvent:(id)a3 maxCharactersTyped:(unint64_t)a4 endResultCount:(unint64_t)a5
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [ICASAcceleratorUsageData alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a5)];
  v12 = [(ICASAcceleratorUsageData *)v9 initWithMaxNumCharTyped:v10 endResultCount:v11];

  v13 = [(ICNAEventReporter *)self noteDataForModernNote:v8];
  v14 = [(ICNAEventReporter *)self noteContentDataForModernNote:v8];
  v15 = [(ICNAEventReporter *)self noteAccessDataForModernNote:v8];

  v16 = +[ICNAController sharedController];
  v17 = objc_opt_class();
  v21[0] = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v19 = [(ICNAEventReporter *)self subTracker];
  [v16 submitEventOfType:v17 pushThenPopDataObjects:v18 subTracker:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitPDFWorkflowEngagementSummary:(id)a3 modernNote:(id)a4
{
  v45[7] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v44 = [(ICNAEventReporter *)self noteDataForModernNote:v6];
  v42 = [(ICNAEventReporter *)self noteContentDataForModernNote:v6];

  v41 = -[ICASPdfState initWithPdfState:]([ICASPdfState alloc], "initWithPdfState:", [v7 startState]);
  v40 = -[ICASPdfState initWithPdfState:]([ICASPdfState alloc], "initWithPdfState:", [v7 endState]);
  v8 = [ICASPdfStateData alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasSmallStateUsage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasMediumStateUsage")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasLargeStateUsage")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasFullscreenStateUsage")}];
  v39 = [(ICASPdfStateData *)v8 initWithPdfStartState:v41 pdfEndState:v40 hasSmallStateUsage:v9 hasMediumStateUsage:v10 hasLargeStateUsage:v11 hasFullScreenStateUsage:v12];

  v13 = [ICASPdfPageData alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v7, "startPageCount"))}];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v7, "endPageCount"))}];
  v16 = [(ICASPdfPageData *)v13 initWithStartPageCount:v14 endPageCount:v15];

  v17 = [ICASPdfAttachmentData alloc];
  v18 = [v7 attachmentIdentifier];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasActivity")}];
  v20 = [(ICASPdfAttachmentData *)v17 initWithAttachmentID:v18 hasActivity:v19];

  v21 = [ICASPdfCollabIxData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasCollabView")}];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasCollabEdit")}];
  v38 = [(ICASPdfCollabIxData *)v21 initWithHasCollabView:v22 hasCollabEdit:v23];

  v24 = [ICASPdfNavIxData alloc];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasGestures")}];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasScroll")}];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasPagination")}];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasPinchZoom")}];
  v29 = MEMORY[0x277CCABB0];
  v30 = [v7 hasPinchToExpandState];

  v31 = [v29 numberWithBool:v30];
  v37 = [(ICASPdfNavIxData *)v24 initWithHasGestures:v25 hasScroll:v26 hasPagination:v27 hasPinchZoom:v28 hasPinchToExpandState:v31];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v45[0] = v44;
  v45[1] = v42;
  v45[2] = v39;
  v45[3] = v16;
  v45[4] = v20;
  v45[5] = v38;
  v45[6] = v37;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];
  v35 = [(ICNAEventReporter *)self subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)startAudioRecordingEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

void __86__ICNAEventReporter_submitFindInTranscriptEventWasSearchQueryEntered_audioAttachment___block_invoke(uint64_t a1)
{
  v21 = [*(a1 + 32) note];
  v2 = [*(a1 + 40) noteAccessDataForModernNote:v21];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) noteContentDataForModernNote:v21];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) noteDataForModernNote:v21];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 40);
  v12 = [v21 folder];
  v13 = [v11 folderDataForModernFolder:v12];
  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(a1 + 40);
  v17 = [v21 account];
  v18 = [v16 accountDataForModernAccount:v17];
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

+ (void)setNoteCreateApproachEnumToAppSuiteDefaults:(int64_t)a3
{
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forKey:@"analyticsNoteCreateApproachEnumValue"];
}

+ (void)resetNoteCreateApproachEnumInAppSuiteDefaults
{
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v2 removeObjectForKey:@"analyticsNoteCreateApproachEnumValue"];
}

- (id)noteCreateDataFromAppSuiteDefaults
{
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"analyticsNoteCreateApproachEnumValue"];

  if (v3)
  {
    v4 = [ICASNoteCreateData alloc];
    v5 = -[ICASNoteCreateApproach initWithNoteCreateApproach:]([ICASNoteCreateApproach alloc], "initWithNoteCreateApproach:", [v3 integerValue]);
    v6 = [(ICASNoteCreateData *)v4 initWithNoteCreateApproach:v5];

    +[ICNAEventReporter resetNoteCreateApproachEnumInAppSuiteDefaults];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pushNoteCreateDataWithCreateApproach:(int64_t)a3
{
  v5 = [ICASNoteCreateData alloc];
  v6 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:a3];
  v9 = [(ICASNoteCreateData *)v5 initWithNoteCreateApproach:v6];

  v7 = +[ICNAController sharedController];
  v8 = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:0 onlyOnce:1 subTracker:v8];
}

- (void)popNoteCreateData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  v4 = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:v4];
}

- (id)collaborationActionDataIsInviting:(BOOL)a3 inviteStep:(int64_t)a4
{
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[ICASCollaborationActionType alloc] initWithCollaborationActionType:v5];
  v7 = [[ICASCollaborationInviteStep alloc] initWithCollaborationInviteStep:a4];
  v8 = [[ICASCollaborationActionData alloc] initWithCollaborationActionType:v6 collaborationInviteStep:v7 collaborationMethod:0];

  return v8;
}

- (id)objectDataForCloudSyncingObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICNAEventReporter *)self noteDataForModernNote:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICNAEventReporter *)self folderDataForModernFolder:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)noteDataForModernNote:(id)a3
{
  v3 = a3;
  v4 = [[ICASNoteType alloc] initWithNoteType:1];
  v5 = +[ICNAIdentityManager sharedManager];
  v6 = [v3 identifier];
  v7 = [v5 saltedID:v6 forClass:objc_opt_class()];

  v8 = [v3 isSystemPaper];
  v9 = [ICASNoteData alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController handwritingAutoRefineEnabled](ICNAController, "handwritingAutoRefineEnabled")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioTranscriptEnabled](ICNAController, "audioTranscriptEnabled")}];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioSummaryEnabled](ICNAController, "audioSummaryEnabled")}];
  v14 = [(ICASNoteData *)v9 initWithNoteID:v7 noteType:v4 isScrapPaper:v10 isHandwritingAutoRefineEnabled:v11 isAudioTranscriptEnabled:v12 isAudioSummaryEnabled:v13];

  return v14;
}

- (id)noteDataForHTMLNote:(id)a3
{
  v3 = a3;
  v4 = [[ICASNoteType alloc] initWithNoteType:2];
  v5 = +[ICNAIdentityManager sharedManager];
  v6 = [v3 identifier];

  v7 = [v5 saltedID:v6 forClass:objc_opt_class()];

  v8 = [ICASNoteData alloc];
  v9 = [(ICASNoteData *)v8 initWithNoteID:v7 noteType:v4 isScrapPaper:MEMORY[0x277CBEC28] isHandwritingAutoRefineEnabled:MEMORY[0x277CBEC28] isAudioTranscriptEnabled:MEMORY[0x277CBEC28] isAudioSummaryEnabled:MEMORY[0x277CBEC28]];

  return v9;
}

- (id)passwordDataForModernNote:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D35E90] shouldAuthenticateWithCustomPasswordForObject:v3])
  {
    v4 = 1;
  }

  else if ([MEMORY[0x277D35E90] shouldAuthenticateWithDevicePasswordForObject:v3])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASPasswordType alloc] initWithPasswordType:v4];
  v6 = [v3 passwordHint];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 account];
    v9 = [v8 passwordHint];
    v7 = v9 != 0;
  }

  v10 = [ICASPasswordData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v12 = [(ICASPasswordData *)v10 initWithPasswordType:v5 hasHint:v11];

  return v12;
}

- (id)bioAuthDataForModernNote:(id)a3
{
  v3 = [MEMORY[0x277D366E0] promptForIntent:0 object:a3];
  if ([v3 allowsBiometricAuthentication] && objc_msgSend(MEMORY[0x277D35F08], "biometricsType") == 2)
  {
    v4 = 1;
  }

  else if ([v3 allowsBiometricAuthentication])
  {
    v4 = 2 * ([MEMORY[0x277D35F08] biometricsType] == 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASBioAuthType alloc] initWithBioAuthType:v4];
  v6 = [[ICASBioAuthData alloc] initWithBioAuthType:v5];

  return v6;
}

- (id)passwordModeDataForContextPath:(int64_t)a3 fromMode:(signed __int16)a4 toMode:(signed __int16)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a5 == 2;
  v8 = a4 == 2;
  v9 = [[ICASPwdModeChangeContextPath alloc] initWithPwdModeChangeContextPath:a3];
  if (v6 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * v8;
  }

  v11 = [[ICASStartMode alloc] initWithStartMode:v10];
  if (v5 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * v7;
  }

  v13 = [[ICASEndMode alloc] initWithEndMode:v12];
  v14 = [[ICASPasswordModeData alloc] initWithPwdModeChangeContextPath:v9 startMode:v11 endMode:v13];

  return v14;
}

- (id)collaborationStatusForModernObject:(id)a3
{
  v3 = a3;
  if ([v3 isOwnedByCurrentUser])
  {
    v4 = 1;
  }

  else if ([v3 isSharedReadOnly])
  {
    v4 = 3;
  }

  else if ([v3 isSharedViaICloud])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:v4];

  return v5;
}

- (id)collaborationTypeForModernObject:(id)a3
{
  v3 = a3;
  if ([v3 isSharedViaICloud])
  {
    if ([v3 isSharedRootObject])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = [[ICASCollaborationType alloc] initWithCollaborationType:v4];

  return v5;
}

- (id)folderDataForModernFolder:(id)a3
{
  v4 = a3;
  v5 = [[ICASFolderType alloc] initWithFolderType:1];
  if ([v4 isDefaultFolderForAccount])
  {
    v6 = 2;
  }

  else if ([v4 isTrashFolder])
  {
    v6 = 3;
  }

  else if ([v4 isSmartFolder])
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v6];
  v8 = v4;
  v9 = v8;
  v28 = v7;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      v12 = [v9 account];
      v13 = [v12 defaultFolder];
      v14 = v13;
      if (v11 == v13)
      {
        break;
      }

      v15 = [v9 account];
      v16 = [v15 trashFolder];

      if (v11 != v16)
      {
        ++v10;
        v17 = [v11 parent];

        v11 = v17;
        if (v17)
        {
          continue;
        }
      }

      v18 = v5;
      goto LABEL_16;
    }

    v18 = v5;
  }

  else
  {
    v18 = v5;
    v11 = 0;
    v10 = 0;
  }

LABEL_16:
  v19 = [(ICNAEventReporter *)self collaborationStatusForModernObject:v9];
  v20 = [(ICNAEventReporter *)self collaborationTypeForModernObject:v9];
  v21 = +[ICNAIdentityManager sharedManager];
  v22 = [v9 identifier];
  v23 = [v21 saltedID:v22 forClass:objc_opt_class()];

  v24 = [ICASFolderData alloc];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v10)];
  v26 = [(ICASFolderData *)v24 initWithFolderID:v23 folderType:v18 folderLabelType:v28 subFolderLevel:v25 collaborationStatus:v19 collaborationType:v20];

  return v26;
}

- (id)folderDataForModernAccountProxy:(id)a3
{
  v3 = a3;
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = [v3 account];

  v6 = [v5 identifier];
  v7 = [v4 saltedID:v6 forClass:objc_opt_class()];

  v8 = [ICASFolderData alloc];
  v9 = [[ICASFolderType alloc] initWithFolderType:1];
  v10 = [[ICASFolderLabelType alloc] initWithFolderLabelType:1];
  v11 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v12 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v13 = [(ICASFolderData *)v8 initWithFolderID:v7 folderType:v9 folderLabelType:v10 subFolderLevel:&unk_286E61B70 collaborationStatus:v11 collaborationType:v12];

  return v13;
}

- (id)folderDataForVirtualFolder:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:*MEMORY[0x277D36678]])
  {
    v4 = 6;
  }

  else if ([v3 isEqual:*MEMORY[0x277D36670]])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  v5 = [ICASFolderData alloc];
  v6 = +[ICNAIdentityManager sharedManager];
  v7 = [v3 identifier];
  v8 = [v6 saltedID:v7 forClass:objc_opt_class()];
  v9 = [[ICASFolderType alloc] initWithFolderType:1];
  v10 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v4];
  v11 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:0];
  v12 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v13 = [(ICASFolderData *)v5 initWithFolderID:v8 folderType:v9 folderLabelType:v10 subFolderLevel:&unk_286E61B70 collaborationStatus:v11 collaborationType:v12];

  return v13;
}

- (id)folderDataForHTMLFolder:(id)a3
{
  v3 = a3;
  v24 = [[ICASFolderType alloc] initWithFolderType:2];
  v4 = [v3 account];
  v5 = [v4 defaultFolder];

  if (v5 == v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  v7 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v6];
  v8 = v3;
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      v12 = [v9 account];
      v13 = [v12 defaultFolder];

      if (v11 == v13)
      {
        break;
      }

      ++v10;
      v14 = [v11 parentFolder];

      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v15 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v16 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v17 = +[ICNAIdentityManager sharedManager];
  v18 = [v9 externalIdentifier];
  v19 = [v17 saltedID:v18 forClass:objc_opt_class()];

  v20 = [ICASFolderData alloc];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v10)];
  v22 = [(ICASFolderData *)v20 initWithFolderID:v19 folderType:v24 folderLabelType:v7 subFolderLevel:v21 collaborationStatus:v15 collaborationType:v16];

  return v22;
}

- (id)folderDataForHTMLCollection:(id)a3
{
  v4 = a3;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v5];
  }

  else
  {
    v7 = [[ICASFolderType alloc] initWithFolderType:2];
    v8 = [[ICASFolderLabelType alloc] initWithFolderLabelType:1];
    v9 = +[ICNAIdentityManager sharedManager];
    v10 = [v4 basicAccountIdentifier];
    v11 = [v9 saltedID:v10 forClass:objc_opt_class()];

    v12 = [ICASFolderData alloc];
    v13 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
    v14 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
    v6 = [(ICASFolderData *)v12 initWithFolderID:v11 folderType:v7 folderLabelType:v8 subFolderLevel:&unk_286E61B70 collaborationStatus:v13 collaborationType:v14];
  }

  return v6;
}

- (id)folderContentDataForNoteContainer:(id)a3
{
  v3 = a3;
  v4 = [ICASFolderContentData alloc];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 visibleNotesCount];

  v7 = [v5 numberWithInteger:ICNARoundTo2SigFigsInt(v6)];
  v8 = [(ICASFolderContentData *)v4 initWithNoteCount:v7];

  return v8;
}

- (id)folderContentDataForVirtualFolder:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [ICASFolderContentData alloc];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 visibleNoteCountInContext:v5];

  v10 = [v8 numberWithInteger:ICNARoundTo2SigFigsInt(v9)];
  v11 = [(ICASFolderContentData *)v7 initWithNoteCount:v10];

  return v11;
}

- (id)folderContentDataForNoteCollection:(id)a3
{
  v3 = [MEMORY[0x277D35930] countOfVisibleNotesInCollection:a3];
  v4 = [ICASFolderContentData alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v3)];
  v6 = [(ICASFolderContentData *)v4 initWithNoteCount:v5];

  return v6;
}

- (id)accountDataForModernAccount:(id)a3
{
  v4 = a3;
  v5 = +[ICNAIdentityManager sharedManager];
  v6 = [v4 identifier];
  v7 = [v5 saltedID:v6 forClass:objc_opt_class()];

  v8 = [(ICNAEventReporter *)self accountTypeForModernAccount:v4];

  v9 = [[ICASAccountData alloc] initWithAccountType:v8 accountID:v7];

  return v9;
}

- (id)accountDataForHTMLAccount:(id)a3
{
  v4 = a3;
  v5 = +[ICNAIdentityManager sharedManager];
  v6 = [v4 accountIdentifier];
  v7 = [v5 saltedID:v6 forClass:objc_opt_class()];

  v8 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:v4];

  v9 = [[ICASAccountData alloc] initWithAccountType:v8 accountID:v7];

  return v9;
}

- (id)noteAccessDataForModernNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNAEventReporter *)self collaborationStatusForModernObject:v4];
  v6 = [(ICNAEventReporter *)self collaborationTypeForModernObject:v4];
  v7 = [ICASNoteAccessData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isPasswordProtected")}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 isPinned];

  v11 = [v9 numberWithBool:v10];
  v12 = [(ICASNoteAccessData *)v7 initWithIsPasswordProtected:v8 isPinned:v11 collaborationStatus:v5 collaborationType:v6];

  return v12;
}

- (id)noteAccessDataForHTMLNote
{
  v2 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v3 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v4 = [ICASNoteAccessData alloc];
  v5 = [(ICASNoteAccessData *)v4 initWithIsPasswordProtected:MEMORY[0x277CBEC28] isPinned:MEMORY[0x277CBEC28] collaborationStatus:v2 collaborationType:v3];

  return v5;
}

- (id)noteContentDataForModernNote:(id)a3
{
  v4 = a3;
  v5 = [v4 textStorageWithoutCreating];
  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v140 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__4;
  v81 = __Block_byref_object_dispose__4;
  v82 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__4;
  v71 = __Block_byref_object_dispose__4;
  v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v5)
  {
    v6 = [v5 length];
    v7 = [v5 string];
    v8 = [v7 paragraphRangeForRange:{0, 0}];
    v10 = v9;

    v11 = [v5 ic_range];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke;
    v66[3] = &unk_2799AFC90;
    v66[6] = v8;
    v66[7] = v10;
    v66[4] = &v141;
    v66[5] = &v145;
    [v5 enumerateAttributesInRange:v11 options:v12 usingBlock:{0, v66}];
    v13 = [v5 ic_range];
    v14 = *MEMORY[0x277D740E8];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_2;
    v65[3] = &unk_2799AFCB8;
    v65[4] = self;
    v65[5] = &v83;
    v65[6] = &v77;
    v65[7] = &v73;
    v65[8] = &v67;
    [v5 enumerateAttribute:v14 inRange:v13 options:v15 usingBlock:{0, v65}];
  }

  else
  {
    v6 = 0;
  }

  v16 = [v4 visibleAttachments];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_3;
  v64[3] = &unk_2799AFCE0;
  v64[4] = &v131;
  v64[5] = v139;
  v64[6] = &v127;
  v64[7] = &v123;
  v64[8] = &v135;
  v64[9] = &v107;
  v64[10] = &v119;
  v64[11] = &v115;
  v64[12] = &v103;
  v64[13] = &v99;
  v64[14] = &v91;
  v64[15] = &v95;
  v64[16] = &v87;
  v64[17] = &v111;
  [v16 enumerateObjectsUsingBlock:v64];
  v42 = v5;

  v17 = [objc_opt_class() inlineAttachmentReportForModernNote:v4 faultOutInlineAttachmentsAfterDone:0];
  v18 = [v17 countOfTags];
  v19 = [v17 countOfTags];
  v45 = [v17 countOfDistinctTags];
  v20 = [v17 countOfMentions];
  v21 = [v17 countOfMentions];
  v22 = [v17 countOfDistinctMentions];
  v23 = [v17 countOfNoteLinks];
  v84[3] += v23;
  v40 = [v78[5] count];
  v39 = [v17 countOfDistinctNoteLinks];
  v24 = [v17 countOfFolderLinks];
  v74[3] += v24;
  v25 = [v68[5] count];
  v38 = [v17 countOfDistinctFolderLinks];
  v63 = v4;
  v37 = [ICASNoteContentData alloc];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v6)];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:*(v146 + 24)];
  v59 = [MEMORY[0x277CCABB0] numberWithBool:*(v142 + 24)];
  v58 = [MEMORY[0x277CCABB0] numberWithBool:*(v136 + 24)];
  v57 = [MEMORY[0x277CCABB0] numberWithBool:*(v132 + 24)];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:*(v128 + 24)];
  v55 = [MEMORY[0x277CCABB0] numberWithBool:*(v124 + 24)];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:*(v112 + 24)];
  v53 = [MEMORY[0x277CCABB0] numberWithBool:*(v108 + 24)];
  v26 = MEMORY[0x277CCABB0];
  v62 = [v4 creationDate];
  v52 = [v26 numberWithInteger:{ICNARoundTo2SigFigsInt(-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", v62))}];
  v51 = [MEMORY[0x277CCABB0] numberWithBool:*(v120 + 24)];
  v50 = [MEMORY[0x277CCABB0] numberWithBool:*(v116 + 24)];
  v49 = [MEMORY[0x277CCABB0] numberWithBool:v18 != 0];
  v48 = [MEMORY[0x277CCABB0] numberWithBool:*(v104 + 24)];
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v19)];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v45)];
  v44 = [MEMORY[0x277CCABB0] numberWithBool:v20 != 0];
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v21)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v22)];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v100 + 24)];
  v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v96 + 24)];
  v30 = [MEMORY[0x277CCABB0] numberWithBool:*(v92 + 24)];
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v84[3])];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v40 + v39)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v74[3])];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v38 + v25)];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v88[3])];
  v41 = [(ICASNoteContentData *)v37 initWithCharacterCount:v61 hasChecklist:v60 hasStyleFormatting:v59 hasTable:v58 hasAttachmentInlineDrawingV1:v57 hasAttachmentInlineDrawingV2:v56 hasAttachmentFullscreenDrawing:v55 hasAttachmentOther:v54 hasAttachedPhoto:v53 weeksSinceCreation:v52 hasAttachmentRichUrl:v51 hasAttachmentMapLink:v50 hasTags:v49 hasScannedDoc:v48 countOfTags:v47 countOfDistinctTags:v46 hasMentions:v44 countOfMentions:v43 countOfDistinctMentions:v27 hasPaperKitDrawing:v28 hasPaperDocument:v29 hasPdf:v30 countOfNoteLinks:v31 countOfDistinctNoteLinks:v32 countOfFolderLinks:v33 countOfDistinctFolderLinks:v34 countOfAudioAttachments:v35];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(v139, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v145, 8);

  return v41;
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v8 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  v9 = a3 + a4;
  v10 = a1[6] + a1[7] + 1;
  v11 = [v8 style];
  if (v9 > v10)
  {
    if (v11 == 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(*(a1[4] + 8) + 24) = 1;
    goto LABEL_8;
  }

  if (v11 && [v8 style] != 1 && objc_msgSend(v8, "style") != 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ([v8 style] == 103)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v12 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D88]];
    v13 = [v12 intValue];

    v14 = MEMORY[0x277D35D98];
    v15 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
    v16 = [v15 intValue];

    v17 = [v29 objectForKeyedSubscript:*v14];
    v18 = [v17 intValue];

    v19 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DC0]];
    v20 = [v19 BOOLValue];

    v21 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
    v22 = [v21 BOOLValue];

    v23 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DB8]];
    v24 = [v23 intValue];

    v25 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D90]];

    v26 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DA0]];

    if (v13 || (v16 & 1) != 0 || (v18 & 2) != 0 || (v20 & 1) != 0 || (v22 & 1) != 0 || v24 || v25 || v26)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[4] + 8) + 24) == 1)
  {
    *v28 = 1;
  }
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v3 = [MEMORY[0x277CBEBC0] URLWithString:v8];
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = [*(a1 + 32) linkContentTypeEnumForURL:v3];
  if (v5 == 1)
  {
    v6 = 48;
    v7 = 40;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = 64;
    v7 = 56;
  }

  ++*(*(*(a1 + v7) + 8) + 24);
  [*(*(*(a1 + v6) + 8) + 40) ic_addNonNilObject:v4];
LABEL_12:
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:?];
  if ([v5 isEqualToString:*MEMORY[0x277D35BD8]])
  {
    v6 = a1[4];
LABEL_5:
    *(*(v6 + 8) + 24) = 1;
    v7 = a1[5];
LABEL_6:
    v8 = *(v7 + 8);
LABEL_24:
    *(v8 + 24) = 1;
    goto LABEL_25;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BD0]])
  {
    v6 = a1[6];
    goto LABEL_5;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    v9 = a1[7];
LABEL_23:
    v8 = *(v9 + 8);
    goto LABEL_24;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35C08]])
  {
    v9 = a1[8];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 3)
  {
    v9 = a1[9];
    goto LABEL_23;
  }

  v10 = [*MEMORY[0x277CE1E90] identifier];
  v11 = [v5 isEqualToString:v10];

  if (v11)
  {
    v9 = a1[10];
    goto LABEL_23;
  }

  if ([v5 isEqualToString:@"com.apple.notes.analytics.appleMaps"])
  {
    v9 = a1[11];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 11)
  {
    v9 = a1[12];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 13)
  {
    v9 = a1[13];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 6)
  {
    v9 = a1[14];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 14)
  {
    v12 = a1[14];
LABEL_34:
    *(*(v12 + 8) + 24) = 1;
    v7 = a1[15];
    goto LABEL_6;
  }

  if ([v14 attachmentType] == 15)
  {
    v12 = a1[12];
    goto LABEL_34;
  }

  if ([v14 attachmentType] != 4)
  {
    v9 = a1[17];
    goto LABEL_23;
  }

  v13 = [v14 parentAttachment];

  if (!v13)
  {
    ++*(*(a1[16] + 8) + 24);
  }

LABEL_25:
  if (((*(*(a1[6] + 8) + 24) & *(*(a1[4] + 8) + 24) & *(*(a1[7] + 8) + 24) & *(*(a1[8] + 8) + 24) & *(*(a1[9] + 8) + 24) & *(*(a1[10] + 8) + 24) & *(*(a1[11] + 8) + 24)) & (*(*(a1[12] + 8) + 24) & *(*(a1[13] + 8) + 24) & *(*(a1[17] + 8) + 24))) != 0)
  {
    *a3 = 1;
  }
}

+ (id)inlineAttachmentReportForModernNote:(id)a3 faultOutInlineAttachmentsAfterDone:(BOOL)a4
{
  v4 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v6 = objc_alloc_init(ICNANoteInlineAttachmentReport);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [v5 visibleInlineAttachments];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__ICNAEventReporter_inlineAttachmentReportForModernNote_faultOutInlineAttachmentsAfterDone___block_invoke;
  v21[3] = &unk_2799AFD08;
  v21[4] = &v62;
  v21[5] = &v34;
  v21[6] = &v58;
  v21[7] = &v28;
  v21[8] = &v54;
  v21[9] = &v22;
  v21[10] = &v50;
  v21[11] = &v46;
  v21[12] = &v40;
  [v7 enumerateObjectsUsingBlock:v21];

  v8 = [v35[5] count];
  v9 = [v29[5] count];
  v10 = [v23[5] count];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfTags:v63[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctTags:v8];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfMentions:v59[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctMentions:v9];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfNoteLinks:v55[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctNoteLinks:v10];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfFolderLinks:0];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctFolderLinks:0];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfCalculateResults:v51[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfCalculateGraphExpressions:v47[3]];
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v41[5];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v66 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [objc_opt_class() faultOutObject:{*(*(&v17 + 1) + 8 * i), v17}];
        }

        v12 = [v11 countByEnumeratingWithState:&v17 objects:v66 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

void __92__ICNAEventReporter_inlineAttachmentReportForModernNote_faultOutInlineAttachmentsAfterDone___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  if ([v10 isHashtagAttachment])
  {
    ++*(*(a1[4] + 8) + 24);
    v3 = a1[5];
LABEL_7:
    v4 = *(*(v3 + 8) + 40);
    v5 = [v10 tokenContentIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"???";
    }

    [v4 ic_addNonNilObject:v7];

    goto LABEL_11;
  }

  if ([v10 isMentionAttachment])
  {
    ++*(*(a1[6] + 8) + 24);
    v3 = a1[7];
    goto LABEL_7;
  }

  if ([v10 isLinkAttachment])
  {
    ++*(*(a1[8] + 8) + 24);
    v3 = a1[9];
    goto LABEL_7;
  }

  if ([v10 isCalculateResultAttachment])
  {
    ++*(*(a1[10] + 8) + 24);
LABEL_11:
    v8 = v10;
    goto LABEL_12;
  }

  v9 = [v10 isCalculateGraphExpressionAttachment];
  v8 = v10;
  if (v9)
  {
    ++*(*(a1[11] + 8) + 24);
  }

LABEL_12:
  [*(*(a1[12] + 8) + 40) ic_addNonNilObject:v8];
}

- (int64_t)weeksSinceDate:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  return llround(v7 / 60.0 / 60.0 / 24.0 / 7.0);
}

- (id)noteCollapsibleSectionDataForHTMLNote:(id)a3
{
  v3 = [[ICASCollapsibleSectionData alloc] initWithSectionAffordanceExposures:&unk_286E61B70 sectionAffordanceUsages:&unk_286E61B70];

  return v3;
}

- (id)noteContentDataForHTMLNote:(id)a3
{
  v4 = a3;
  v5 = [ICASNoteContentData alloc];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 contentAsPlainText];
  v8 = [v6 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v7, "length"))}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 creationDate];

  v11 = [v9 numberWithInteger:{ICNARoundTo2SigFigsInt(-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", v10))}];
  v12 = [(ICASNoteContentData *)v5 initWithCharacterCount:v8 hasChecklist:MEMORY[0x277CBEC28] hasStyleFormatting:MEMORY[0x277CBEC28] hasTable:MEMORY[0x277CBEC28] hasAttachmentInlineDrawingV1:MEMORY[0x277CBEC28] hasAttachmentInlineDrawingV2:MEMORY[0x277CBEC28] hasAttachmentFullscreenDrawing:MEMORY[0x277CBEC28] hasAttachmentOther:MEMORY[0x277CBEC28] hasAttachedPhoto:MEMORY[0x277CBEC28] weeksSinceCreation:v11 hasAttachmentRichUrl:MEMORY[0x277CBEC28] hasAttachmentMapLink:MEMORY[0x277CBEC28] hasTags:MEMORY[0x277CBEC28] hasScannedDoc:MEMORY[0x277CBEC28] countOfTags:&unk_286E61B70 countOfDistinctTags:&unk_286E61B70 hasMentions:MEMORY[0x277CBEC28] countOfMentions:&unk_286E61B70 countOfDistinctMentions:&unk_286E61B70 hasPaperKitDrawing:MEMORY[0x277CBEC28] hasPaperDocument:MEMORY[0x277CBEC28] hasPdf:MEMORY[0x277CBEC28] countOfNoteLinks:&unk_286E61B70 countOfDistinctNoteLinks:&unk_286E61B70 countOfFolderLinks:&unk_286E61B70 countOfDistinctFolderLinks:&unk_286E61B70 countOfAudioAttachments:&unk_286E61B70];

  return v12;
}

- (id)selectedResultAccountTypeForSearchResult:(id)a3
{
  v3 = [a3 object];
  v4 = ICProtocolCast();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v4)
      {
        v7 = [v4 account];
        if (v7)
        {
          v6 = [ICNAController accountTypeEnumForHTMLAccount:v7];
          v5 = 0;
          goto LABEL_4;
        }
      }

      else
      {
        v7 = 0;
      }

      v5 = 0;
LABEL_29:
      v12 = 0;
      goto LABEL_30;
    }

    v13 = [v3 note];
    v5 = [v13 account];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_29;
  }

  v5 = [v3 account];
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = [ICNAController accountTypeEnumForModernAccount:v5];
  v7 = 0;
LABEL_4:
  v8 = 5;
  v9 = 6;
  if (v6 != 10)
  {
    v9 = 0;
  }

  if (v6 != 9)
  {
    v8 = v9;
  }

  if ((v6 - 4) >= 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 4;
  }

  if (v6 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  if (v6 == 2)
  {
    v11 = 2;
  }

  if (v6 == 1)
  {
    v11 = 1;
  }

  if (v6 <= 3)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

LABEL_30:
  v14 = [[ICASSelectedResultAccountType alloc] initWithSelectedResultAccountType:v12];

  return v14;
}

- (id)searchSuggestionDataWithSearchSuggestionType:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25C72ADB0[a3 - 1];
  }

  v4 = [ICASSearchSuggestionData alloc];
  v5 = [[ICASSearchSuggestionType alloc] initWithSearchSuggestionType:v3];
  v6 = [(ICASSearchSuggestionData *)v4 initWithSearchSuggestionType:v5];

  return v6;
}

- (id)tipDataForFeature:(id)a3
{
  v3 = a3;
  v4 = [[ICASTipData alloc] initWithTipFeature:v3];

  return v4;
}

- (id)audioAttachmentDataForModernAttachment:(id)a3
{
  v3 = a3;
  v4 = [v3 parentAttachment];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v8 = [v7 managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__ICNAEventReporter_audioAttachmentDataForModernAttachment___block_invoke;
  v25[3] = &unk_2799AF158;
  v27 = &v28;
  v9 = v7;
  v26 = v9;
  [v8 performBlockAndWait:v25];

  v10 = +[ICNAIdentityManager sharedManager];
  v11 = [v10 saltedID:v29[5] forClass:objc_opt_class()];
  v24 = v3;

  v12 = [objc_alloc(MEMORY[0x277D35E08]) initWithAttachment:v9];
  v13 = [ICASAudioAttachmentData alloc];
  v14 = MEMORY[0x277CCABB0];
  v15 = [v12 audioDocument];
  v16 = [v15 transcriptAsPlainText];
  v17 = [v14 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v16, "length"))}];
  v18 = MEMORY[0x277CCABB0];
  v19 = [v12 audioDocument];
  v20 = [v19 recordingSummaryAsPlainText];
  v21 = [v18 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v20, "length"))}];
  v22 = [(ICASAudioAttachmentData *)v13 initWithAudioAttachmentID:v11 transcriptCharacterCount:v17 summaryCharacterCount:v21];

  _Block_object_dispose(&v28, 8);

  return v22;
}

uint64_t __60__ICNAEventReporter_audioAttachmentDataForModernAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)audioTranscriptInteractionDataWithSummaryViewed:(BOOL)a3 transcriptViewed:(BOOL)a4 interactionTargets:(id)a5 interactionTypes:(id)a6
{
  v23 = a4;
  v24 = a3;
  v7 = a5;
  v8 = a6;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 count])
  {
    v10 = 0;
    do
    {
      if (v10 >= [v8 count])
      {
        break;
      }

      v11 = [v7 objectAtIndexedSubscript:v10];
      v12 = [v8 objectAtIndexedSubscript:v10];
      if ([v11 isEqual:@"audioTranscript"])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isEqual:@"audioSummary"] ? 2 : 0;
      }

      if ([v12 isEqual:@"fullInsertToNote"])
      {
        v14 = 1;
      }

      else if ([v12 isEqual:@"partialInsertToNote"])
      {
        v14 = 2;
      }

      else
      {
        v14 = [v12 isEqual:@"copy"] ? 3 : 0;
      }

      v15 = [[ICASTranscriptInteractionTarget alloc] initWithTranscriptInteractionTarget:v13];
      v16 = [[ICASTranscriptActionType alloc] initWithTranscriptActionType:v14];
      v17 = [[ICASTranscriptInteractionItemData alloc] initWithTranscriptInteractionTarget:v15 transcriptActionType:v16];
      [v9 addObject:v17];

      ++v10;
    }

    while (v10 < [v7 count]);
  }

  v18 = [ICASAudioTranscriptInteractionData alloc];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  v21 = [(ICASAudioTranscriptInteractionData *)v18 initWithWasTranscriptViewed:v19 wasSummaryViewed:v20 transcriptInteractionSummaryArray:v9];

  return v21;
}

- (id)accountTypeForModernAccount:(id)a3
{
  v3 = a3;
  v4 = [ICASAccountType alloc];
  v5 = [ICNAController accountTypeEnumForModernAccount:v3];

  v6 = [(ICASAccountType *)v4 initWithAccountType:v5];

  return v6;
}

- (id)accountTypeForHTMLAccount:(id)a3
{
  v3 = a3;
  v4 = [ICASAccountType alloc];
  v5 = [ICNAController accountTypeEnumForHTMLAccount:v3];

  v6 = [(ICASAccountType *)v4 initWithAccountType:v5];

  return v6;
}

- (id)noteEditDataForContextType:(int64_t)a3
{
  v3 = [[ICASNoteEditContext alloc] initWithNoteEditContext:a3];
  v4 = [[ICASNoteEditData alloc] initWithNoteEditContext:v3];

  return v4;
}

- (id)styleDataForStyleTypeValue:(int64_t)a3
{
  v3 = [[ICASStyleType alloc] initWithStyleType:a3];
  v4 = [[ICASStyleData alloc] initWithStyleType:v3];

  return v4;
}

- (id)noteEditorCallOutBarDataForButtonTypeValue:(int64_t)a3
{
  v3 = [[ICASNoteEditorCallOutBarButtonType alloc] initWithNoteEditorCallOutBarButtonType:a3];
  v4 = [[ICASNoteEditorCallOutBarData alloc] initWithNoteEditorCallOutBarButtonType:v3];

  return v4;
}

- (unint64_t)pencilStrokeCountForDrawing:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 strokes];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) _inputType] == 1)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)searchRankingExperimentItemDataWithStrategyTypeEnum:(int64_t)a3 rank:(unint64_t)a4
{
  v5 = [[ICASRankingStrategyType alloc] initWithRankingStrategyType:a3];
  v6 = [ICASSearchRankingExperimentItemData alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(a4)];
  v8 = [(ICASSearchRankingExperimentItemData *)v6 initWithRankingStrategyType:v5 rank:v7];

  return v8;
}

+ (id)analyticsTypeUTIAttachment:(id)a3
{
  v3 = a3;
  v4 = [v3 typeUTI];
  v5 = [v4 copy];

  if ([v3 isMap])
  {
    v6 = @"com.apple.notes.analytics.appleMaps";
  }

  else
  {
    if ([v3 attachmentType] != 6)
    {
      goto LABEL_6;
    }

    v6 = *MEMORY[0x277D35BE0];
  }

  v5 = v6;
LABEL_6:

  return v5;
}

+ (id)filteredActivityType:(id)a3
{
  v3 = [a1 maskString:a3 withoutPrefix:@"com.apple." withMask:@"other"];
  if ([(__CFString *)v3 hasPrefix:@"com.apple.UIKit.activity.PostTo"])
  {

    v3 = @"other";
  }

  return v3;
}

+ (id)maskString:(id)a3 withoutPrefix:(id)a4 withMask:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && ((v10 = [v7 length], v10 < objc_msgSend(v8, "length")) || (objc_msgSend(v7, "hasPrefix:", v8) & 1) == 0))
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v12;
}

+ (BOOL)activityTypeHasUnknownShareFlow:(id)a3
{
  v3 = activityTypeHasUnknownShareFlow__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[ICNAEventReporter activityTypeHasUnknownShareFlow:];
  }

  v5 = [activityTypeHasUnknownShareFlow__unknownActivityTypes containsObject:v4];

  return v5;
}

uint64_t __53__ICNAEventReporter_activityTypeHasUnknownShareFlow___block_invoke()
{
  v0 = *MEMORY[0x277D54730];
  activityTypeHasUnknownShareFlow__unknownActivityTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D54778], *MEMORY[0x277D54730], *MEMORY[0x277D54720], *MEMORY[0x277D54780], *MEMORY[0x277D54718], @"com.apple.DocumentManagerUICore.SaveToFiles", @"com.apple.mobilenotes.PagesHandoff", @"com.apple.mobilenotes.findInNote", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (void)faultOutObject:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 managedObjectContext];
    [v4 refreshObject:v3 mergeChanges:0];
  }
}

+ (BOOL)attachmentHasDeepLinkSafariHighlight:(id)a3
{
  v3 = a3;
  v4 = [v3 synapseData];

  if (v4)
  {
    v4 = objc_alloc(MEMORY[0x277D6B790]);
    v5 = [v3 synapseData];
    v6 = [v4 initWithData:v5 error:0];

    v7 = [v6 userActivity];
    v8 = [v7 _linkContextInfo];
    LOBYTE(v4) = v8 != 0;
  }

  return v4;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

void __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_debug_impl(&dword_25C6BF000, log, OS_LOG_TYPE_DEBUG, "%@ is possible to submit: %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end