@interface ICNASnapshotReporter
+ (id)sharedReporter;
- (BOOL)killMiniSnapshotBackgroundTaskIfNecessary;
- (BOOL)shouldRunSnapshotManually;
- (BOOL)shouldScheduleSnapshot;
- (BOOL)shouldSnapshot;
- (id)accountPurposeForHTMLAccount;
- (id)accountPurposeForModernAccount:(id)account;
- (id)backgroundAppRefreshData;
- (id)deviceSnapshotSummaryForDataType:(Class)type;
- (id)drawingSnapshotItemDataForDrawingAttachment:(id)attachment;
- (id)lastSnapshotRunningTimeStamp;
- (id)lastSnapshotScheduleTimeStamp;
- (id)snapshotItemDataForHTMLAccount:(id)account;
- (id)snapshotItemDataForModernAccount:(id)account;
- (id)sortedFoldersForAccount:(id)account;
- (id)tableSnapshotItemDataForTableAttachment:(id)attachment;
- (id)userSnapshotSummaryForDataType:(Class)type;
- (unint64_t)pageCountForDocScanAttachment:(id)attachment;
- (void)beginMiniSnapshotBackgroundTask;
- (void)checkIfSnapshotNotFiredForALongTime;
- (void)performBlockForHTMLManagedObjectContext:(id)context;
- (void)performBlockForModernManagedObjectContext:(id)context;
- (void)reallyPerformSnapshotWithCompletionHandler:(id)handler;
- (void)scheduleSnapshotIfNecessary;
- (void)setupContextsIfNecessary;
- (void)snapshotAttachment:(id)attachment reportedDataToNote:(id)note reportedDataToAccount:(id)account;
- (void)snapshotDevice;
- (void)snapshotHTMLAccount:(id)account reportedDataToDevice:(id)device reportedDataFromFolderToDevice:(id)toDevice reportedDataFromNoteToDevice:(id)noteToDevice;
- (void)snapshotHTMLFolder:(id)folder reportedDataToAccount:(id)account reportedDataToDevice:(id)device noteReportToAccount:(id)toAccount reportedDataFromNoteToDevice:(id)toDevice;
- (void)snapshotHTMLNote:(id)note reportedDataToAccount:(id)account reportedDataToDevice:(id)device;
- (void)snapshotModernAccount:(id)account reportedDataToDevice:(id)device reportedDataFromFolderToDevice:(id)toDevice reportedDataFromNoteToDevice:(id)noteToDevice;
- (void)snapshotModernFolder:(id)folder reportedDataToParentFolder:(id)parentFolder reportedDataToAccount:(id)account reportedDataToDevice:(id)device reportedDataFromNotesToAccount:(id)toAccount reportedDataFromAttachmentToAccount:(id)attachmentToAccount reportedDataFromNoteToDevice:(id)toDevice;
- (void)snapshotModernNote:(id)note reportedDataToAccount:(id)account reportToDevice:(id)device reportedDataFromAttachmentToAccount:(id)toAccount;
- (void)submitMiniSnapshot;
- (void)submitSnapshotScheduleEventWithResult:(int64_t)result error:(id)error lastScheduledTime:(id)time;
- (void)tearDownContextsIfNecessary;
@end

@implementation ICNASnapshotReporter

+ (id)sharedReporter
{
  if (s_onceToken != -1)
  {
    +[ICNASnapshotReporter sharedReporter];
  }

  v3 = sharedReporter_s_instance;

  return v3;
}

uint64_t __38__ICNASnapshotReporter_sharedReporter__block_invoke()
{
  sharedReporter_s_instance = [(ICNAEventReporter *)[ICNASnapshotReporter alloc] initWithSubTrackerName:@"snapshot_reporter"];

  return MEMORY[0x2821F96F8]();
}

- (void)setupContextsIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  modernContext = [(ICNASnapshotReporter *)obj modernContext];

  if (!modernContext)
  {
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    workerManagedObjectContext = [mEMORY[0x277D35F30] workerManagedObjectContext];
    [(ICNASnapshotReporter *)obj setModernContext:workerManagedObjectContext];
  }

  htmlContext = [(ICNASnapshotReporter *)obj htmlContext];

  if (!htmlContext)
  {
    v6 = ICNewLegacyContext();
    [(ICNASnapshotReporter *)obj setHtmlContext:v6];
  }

  [(ICNASnapshotReporter *)obj setContextHolderCount:[(ICNASnapshotReporter *)obj contextHolderCount]+ 1];
  objc_sync_exit(obj);
}

- (void)tearDownContextsIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  contextHolderCount = [(ICNASnapshotReporter *)obj contextHolderCount];
  if (contextHolderCount <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = contextHolderCount;
  }

  [(ICNASnapshotReporter *)obj setContextHolderCount:v3 - 1];
  if (![(ICNASnapshotReporter *)obj contextHolderCount])
  {
    [(ICNASnapshotReporter *)obj setModernContext:0];
    [(ICNASnapshotReporter *)obj setHtmlContext:0];
  }

  objc_sync_exit(obj);
}

- (void)checkIfSnapshotNotFiredForALongTime
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25C6BF000, log, OS_LOG_TYPE_ERROR, "Snapshot scheduled at %@ not run. Last snapshot was ran at %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSnapshotIfNecessary
{
  shouldScheduleSnapshot = [(ICNASnapshotReporter *)self shouldScheduleSnapshot];
  v4 = os_log_create("com.apple.notes", "Analytics");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (shouldScheduleSnapshot)
  {
    if (v5)
    {
      [ICNASnapshotReporter scheduleSnapshotIfNecessary];
    }

    lastSnapshotScheduleTimeStamp = [(ICNASnapshotReporter *)self lastSnapshotScheduleTimeStamp];
    mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    date = [MEMORY[0x277CBEAA8] date];
    [mEMORY[0x277D36180] setObject:date forKey:@"analytics_last_snapshot_timestamp"];

    mEMORY[0x277D35E58] = [MEMORY[0x277D35E58] sharedScheduler];
    v10 = objc_opt_class();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ICNASnapshotReporter_scheduleSnapshotIfNecessary__block_invoke;
    v12[3] = &unk_2799AF2A0;
    v12[4] = self;
    v13 = lastSnapshotScheduleTimeStamp;
    lastSnapshotScheduleTimeStamp2 = lastSnapshotScheduleTimeStamp;
    [mEMORY[0x277D35E58] scheduleTask:v10 completion:v12];
  }

  else
  {
    if (v5)
    {
      [ICNASnapshotReporter scheduleSnapshotIfNecessary];
    }

    lastSnapshotScheduleTimeStamp2 = [(ICNASnapshotReporter *)self lastSnapshotScheduleTimeStamp];
    [(ICNASnapshotReporter *)self submitSnapshotScheduleEventWithResult:3 error:0 lastScheduledTime:lastSnapshotScheduleTimeStamp2];
  }
}

void __51__ICNASnapshotReporter_scheduleSnapshotIfNecessary__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__ICNASnapshotReporter_scheduleSnapshotIfNecessary__block_invoke_cold_1(v5, v7);
    }

    v6 = 2;
  }

  [*(a1 + 32) submitSnapshotScheduleEventWithResult:v6 error:v5 lastScheduledTime:*(a1 + 40)];
}

- (void)submitSnapshotScheduleEventWithResult:(int64_t)result error:(id)error lastScheduledTime:(id)time
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB18];
  timeCopy = time;
  v10 = objc_alloc_init(v8);
  v11 = [[ICASResultType alloc] initWithResultType:result];
  v12 = [[ICASResultData alloc] initWithResultType:v11];
  [v10 addObject:v12];
  if (errorCopy)
  {
    v13 = [ICASSnapshotErrorData alloc];
    domain = [errorCopy domain];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v16 = [(ICASSnapshotErrorData *)v13 initWithErrorDomain:domain errorCode:v15];

    [v10 addObject:v16];
  }

  v17 = [ICASSnapshotTimeData alloc];
  v18 = MEMORY[0x277CCABB0];
  [timeCopy timeIntervalSince1970];
  v20 = v19;

  v21 = [v18 numberWithDouble:v20];
  v22 = [(ICASSnapshotTimeData *)v17 initWithLastTimeOfAttemptedSchedule:v21];

  [v10 addObject:v22];
  backgroundAppRefreshData = [(ICNASnapshotReporter *)self backgroundAppRefreshData];
  [v10 addObject:backgroundAppRefreshData];
  v24 = +[ICNAController sharedController];
  v25 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v24 submitEventOfType:v25 pushThenPopDataObjects:v10 subTracker:subTracker];
}

- (void)submitMiniSnapshot
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICNASnapshotReporter submitMiniSnapshot];
  }

  [(ICNASnapshotReporter *)self beginMiniSnapshotBackgroundTask];
  [(ICNASnapshotReporter *)self setupContextsIfNecessary];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke;
  v20[3] = &unk_2799AF2C8;
  v5 = v4;
  v21 = v5;
  [(ICNASnapshotReporter *)self performBlockForModernManagedObjectContext:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke_2;
  v18[3] = &unk_2799AF2F0;
  v19 = v5;
  v6 = v5;
  [(ICNASnapshotReporter *)self performBlockForHTMLManagedObjectContext:v18];
  v7 = [[ICASMiniSnapshotData alloc] initWithMiniAccountSummary:v6];
  v8 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 enterGroupWithSubtracker:subTracker];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v22[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:subTracker2];

  v14 = +[ICNAController sharedController];
  subTracker3 = [(ICNAEventReporter *)self subTracker];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke_579;
  v17[3] = &unk_2799AF130;
  v17[4] = self;
  [v14 leaveGroupWithSubtracker:subTracker3 completionHandler:v17];

  [(ICNASnapshotReporter *)self tearDownContextsIfNecessary];
  v16 = *MEMORY[0x277D85DE8];
}

void __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D35DE0] allAccountsInContext:a2];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        if ([v6 didChooseToMigrate])
        {
          v7 = [v6 visibleNotesIncludingTrashCount];
          v8 = [v6 visibleCustomFoldersCount];
          v9 = [v6 visibleAttachmentsIncludingTrashCount];
          v10 = +[ICNAIdentityManager sharedManager];
          v11 = [v6 identifier];
          v12 = [v10 saltedID:v11 forClass:objc_opt_class()];

          v13 = [ICASMiniSnapshotAccountItemData alloc];
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v7)];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v8)];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v9)];
          v17 = [(ICASMiniSnapshotAccountItemData *)v13 initWithCountofNotes:v14 counfOfFolders:v15 countOfAttachments:v16 privateAccountID:v12];

          [*(a1 + 32) addObject:v17];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 allAccounts];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (([v8 isDeleted] & 1) == 0 && (objc_msgSend(v8, "didChooseToMigrate") & 1) == 0)
        {
          v9 = [v2 countOfVisibleNotesForAccount:v8];
          v10 = +[ICNAIdentityManager sharedManager];
          v11 = [v8 accountIdentifier];
          v12 = [v10 saltedID:v11 forClass:objc_opt_class()];

          v13 = [ICASMiniSnapshotAccountItemData alloc];
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v9)];
          v15 = [(ICASMiniSnapshotAccountItemData *)v13 initWithCountofNotes:v14 counfOfFolders:&unk_286E5E150 countOfAttachments:&unk_286E5E150 privateAccountID:v12];

          [*(a1 + 32) addObject:v15];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reallyPerformSnapshotWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ICNASnapshotReporter *)selfCopy isPerformingSnapshot])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(ICNASnapshotReporter *)selfCopy setIsPerformingSnapshot:1];
    objc_sync_exit(selfCopy);

    mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    date = [MEMORY[0x277CBEAA8] date];
    [mEMORY[0x277D36180] setObject:date forKey:@"analytics_last_snapshot_running_timestamp"];

    v8 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICNASnapshotReporter reallyPerformSnapshotWithCompletionHandler:];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x277D35F30] performSelector:sel_beginBackgroundTaskNamed_ withObject:@"Perform Snapshot"];
    }

    else
    {
      v9 = [MEMORY[0x277CCAE60] value:MEMORY[0x277D767B0] withObjCType:"Q"];
    }

    v10 = v9;
    [(ICNASnapshotReporter *)selfCopy setupContextsIfNecessary];
    [(ICNASnapshotReporter *)selfCopy snapshotDevice];
    [(ICNASnapshotReporter *)selfCopy tearDownContextsIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x277D35F30] performSelector:sel_endBackgroundTask_ withObject:v10];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v11 = selfCopy;
    objc_sync_enter(v11);
    [(ICNASnapshotReporter *)v11 setIsPerformingSnapshot:0];
    objc_sync_exit(v11);
  }
}

- (void)snapshotDevice
{
  v53[1] = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = objc_alloc_init(_ICNAAccountReportToDevice);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = objc_alloc_init(_ICNAFolderReportToDevice);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = objc_alloc_init(ICNANoteReportToDevice);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __38__ICNASnapshotReporter_snapshotDevice__block_invoke;
  v33[3] = &unk_2799AF318;
  v33[4] = self;
  v33[5] = &v46;
  v33[6] = &v40;
  v33[7] = &v34;
  [(ICNASnapshotReporter *)self performBlockForModernManagedObjectContext:v33];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __38__ICNASnapshotReporter_snapshotDevice__block_invoke_2;
  v32[3] = &unk_2799AF340;
  v32[4] = self;
  v32[5] = &v46;
  v32[6] = &v40;
  v32[7] = &v34;
  [(ICNASnapshotReporter *)self performBlockForHTMLManagedObjectContext:v32];
  v3 = [ICASCollabFoldersItemData alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 2, 1))}];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 2, 2))}];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 1, 1))}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 1, 2))}];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 0))}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 1))}];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v41[5], "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 2))}];
  v31 = [(ICASCollabFoldersItemData *)v3 initWithTotalFoldersCollabRootReadOnlyCount:v4 totalFoldersCollabSubfolderReadOnlyCount:v5 totalFoldersCollabRootReadWriteJoinedCount:v6 totalFoldersCollabSubfolderReadWriteJoinedCount:v7 totalFoldersNotCollabCount:v8 totalFoldersCollabRootOwnedCount:v9 totalFoldersCollabSubfolderOwnedCount:v10];

  v30 = [ICASDeviceSnapshotData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startMonth](ICNAController, "startMonth")}];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startYear](ICNAController, "startYear")}];
  v13 = +[ICNAController saltVersion];
  accountTypeSummary = [v47[5] accountTypeSummary];
  v53[0] = v31;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v35[5], "countOfPinnedNotes"))}];
  v17 = [(ICNASnapshotReporter *)self deviceSnapshotSummaryForDataType:objc_opt_class()];
  v18 = [(ICNASnapshotReporter *)self userSnapshotSummaryForDataType:objc_opt_class()];
  v19 = [(ICASDeviceSnapshotData *)v30 initWithUserStartMonth:v11 userStartYear:v12 saltVersion:v13 accountTypeSummary:accountTypeSummary collabFoldersSummary:v15 totalCountOfPinnedNotes:v16 deviceSnapshotSummary:v17 userSnapshotSummary:v18];

  v20 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v20 enterGroupWithSubtracker:subTracker];

  v22 = +[ICNAController sharedController];
  v23 = objc_opt_class();
  v52 = v19;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:subTracker2];

  v26 = +[ICNAController sharedController];
  subTracker3 = [(ICNAEventReporter *)self subTracker];
  [v26 leaveGroupWithSubtracker:subTracker3];

  v28 = +[ICNACoreAnalyticsReporter sharedReporter];
  [v28 fireSnapshotWithNoteReportToDevice:v35[5]];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v29 = *MEMORY[0x277D85DE8];
}

void __38__ICNASnapshotReporter_snapshotDevice__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35DE0] allAccountsInContext:a2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 didChooseToMigrate])
        {
          [*(a1 + 32) snapshotModernAccount:v8 reportedDataToDevice:*(*(*(a1 + 40) + 8) + 40) reportedDataFromFolderToDevice:*(*(*(a1 + 48) + 8) + 40) reportedDataFromNoteToDevice:*(*(*(a1 + 56) + 8) + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__ICNASnapshotReporter_snapshotDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 allAccounts];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isDeleted] & 1) == 0 && (objc_msgSend(v8, "didChooseToMigrate") & 1) == 0)
        {
          [*(a1 + 32) snapshotHTMLAccount:v8 reportedDataToDevice:*(*(*(a1 + 40) + 8) + 40) reportedDataFromFolderToDevice:*(*(*(a1 + 48) + 8) + 40) reportedDataFromNoteToDevice:*(*(*(a1 + 56) + 8) + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)snapshotModernAccount:(id)account reportedDataToDevice:(id)device reportedDataFromFolderToDevice:(id)toDevice reportedDataFromNoteToDevice:(id)noteToDevice
{
  v329 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  deviceCopy = device;
  toDeviceCopy = toDevice;
  noteToDeviceCopy = noteToDevice;
  v14 = accountCopy;
  if ([accountCopy isUnsupported])
  {
    [objc_opt_class() faultOutObject:accountCopy];
  }

  else
  {
    v313 = noteToDeviceCopy;
    v314 = toDeviceCopy;
    v174 = deviceCopy;
    v15 = objc_alloc_init(ICNAHistogramManager);
    [(ICNASnapshotReporter *)self setAccountHistogramManager:v15];

    v16 = [(ICNAEventReporter *)self accountTypeForModernAccount:accountCopy];
    v17 = v14;
    selfCopy = self;
    v19 = [(ICNASnapshotReporter *)self accountPurposeForModernAccount:v17];
    v20 = +[ICNAIdentityManager sharedManager];
    identifier = [v17 identifier];
    v22 = [v20 saltedID:identifier forClass:objc_opt_class()];

    v171 = v22;
    v173 = v16;
    v172 = v19;
    v309 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v22 accountType:v16 accountPurpose:v19];
    v23 = objc_alloc_init(_ICNANoteReportToAccount);
    v24 = objc_alloc_init(_ICNAFolderReportToAccount);
    v25 = objc_alloc_init(_ICNAAttachmentReportToAccount);
    v310 = v17;
    [v17 customRootLevelFolders];
    v315 = 0u;
    v316 = 0u;
    v317 = 0u;
    obj = v318 = 0u;
    v26 = [obj countByEnumeratingWithState:&v315 objects:v328 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v316;
      do
      {
        v29 = 0;
        do
        {
          if (*v316 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v315 + 1) + 8 * v29);
          v31 = objc_alloc_init(_ICNAFolderReportToParentFolder);
          [(ICNASnapshotReporter *)selfCopy snapshotModernFolder:v30 reportedDataToParentFolder:v31 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];
          accountHistogramManager = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
          topLevelFolderTotalNoteCountHistogram = [accountHistogramManager topLevelFolderTotalNoteCountHistogram];
          [topLevelFolderTotalNoteCountHistogram reportValue:{-[_ICNAFolderReportToParentFolder totalNoteCountIncludingSubFolders](v31, "totalNoteCountIncludingSubFolders")}];

          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v315 objects:v328 count:16];
      }

      while (v27);
    }

    defaultFolder = [v310 defaultFolder];
    v145 = selfCopy;
    v311 = v24;
    v308 = v25;
    [(ICNASnapshotReporter *)selfCopy snapshotModernFolder:defaultFolder reportedDataToParentFolder:0 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];

    trashFolder = [v310 trashFolder];
    [(ICNASnapshotReporter *)selfCopy snapshotModernFolder:trashFolder reportedDataToParentFolder:0 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];

    v306 = [ICASAccountNotesTwoFactorItemData alloc];
    v304 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 1))}];
    v301 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 2))}];
    v298 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 3))}];
    v294 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 4))}];
    v284 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 5))}];
    v280 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 6))}];
    v289 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 7))}];
    v276 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 0, 8))}];
    v272 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 2))}];
    v268 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 3))}];
    v264 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 4))}];
    v261 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 5))}];
    v255 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 6))}];
    v258 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 7))}];
    v249 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 8))}];
    v252 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 1, 9))}];
    v246 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 3))}];
    v243 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 4))}];
    v241 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 5))}];
    v239 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 6))}];
    v237 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 7))}];
    v235 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 8))}];
    v229 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 2, 9))}];
    v233 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 4))}];
    v227 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 5))}];
    v231 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 6))}];
    v225 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 7))}];
    v217 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 8))}];
    v223 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 3, 9))}];
    v215 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 4, 5))}];
    v221 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 4, 6))}];
    v213 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 4, 7))}];
    v211 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 4, 8))}];
    v209 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 4, 9))}];
    v219 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 5, 6))}];
    v207 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 5, 7))}];
    v205 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 5, 8))}];
    v203 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 5, 9))}];
    v201 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 6, 7))}];
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 6, 8))}];
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 6, 9))}];
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 7, 8))}];
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFactor:andFactor:](v23, "countOfNotesWithFactor:andFactor:", 8, 9))}];
    v307 = [(ICASAccountNotesTwoFactorItemData *)v306 initWithTotalCountOfNotesWithCollabAndDocScan:v304 totalCountOfNotesWithCollabAndInlineDrawingV1:v301 totalCountOfNotesWithCollabAndInlineDrawingV2:v298 totalCountOfNotesWithCollabAndFullscreenDrawing:v294 totalCountOfNotesWithCollabAndTables:v284 totalCountOfNotesWithCollabAndOtherAttachments:v280 totalCountOfNotesWithCollabAndChecklist:v289 totalCountOfNotesWithCollabAndIsPinned:v276 totalCountOfNotesWithDocScanAndInlineDrawingV1:v272 totalCountOfNotesWithDocScanAndInlineDrawingV2:v268 totalCountOfNotesWithDocScanAndFullscreenDrawing:v264 totalCountOfNotesWithDocScanAndTables:v261 totalCountOfNotesWithDocScanAndOtherAttachments:v255 totalCountOfNotesWithDocScanAndChecklist:v258 totalCountOfNotesWithDocScanAndIsPinned:v249 totalCountOfNotesWithDocScanAndIsLocked:v252 totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2:v246 totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing:v243 totalCountOfNotesWithInlineDrawingV1AndTables:v241 totalCountOfNotesWithInlineDrawingV1AndOtherAttachments:v239 totalCountOfNotesWithInlineDrawingV1AndChecklist:v237 totalCountOfNotesWithInlineDrawingV1AndIsPinned:v235 totalCountOfNotesWithInlineDrawingV1AndIsLocked:v229 totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing:v233 totalCountOfNotesWithInlineDrawingV2AndTables:v227 totalCountOfNotesWithInlineDrawingV2AndOtherAttachments:v231 totalCountOfNotesWithInlineDrawingV2AndChecklist:v225 totalCountOfNotesWithInlineDrawingV2AndIsPinned:v217 totalCountOfNotesWithInlineDrawingV2AndIsLocked:v223 totalCountOfNotesWithFullscreenDrawingAndTables:v215 totalCountOfNotesWithFullscreenDrawingAndOtherAttachments:v221 totalCountOfNotesWithFullscreenDrawingAndChecklist:v213 totalCountOfNotesWithFullscreenDrawingAndIsPinned:v211 totalCountOfNotesWithFullscreenDrawingAndIsLocked:v209 totalCountOfNotesWithTablesAndOtherAttachments:v219 totalCountOfNotesWithTablesAndChecklist:v207 totalCountOfNotesWithTablesAndIsPinned:v205 totalCountOfNotesWithTablesAndIsLocked:v203 totalCountOfNotesWithOtherAttachmentsAndChecklist:v201 totalCountOfNotesWithOtherAttachmentsAndIsPinned:v36 totalCountOfNotesWithOtherAttachmentsAndIsLocked:v37 totalCountOfNotesWithChecklistAndIsPinned:v38 totalCountOfNotesIsPinnedAndIsLocked:v39];

    v40 = [ICASCollabNotesItemData alloc];
    v41 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 2, 1))}];
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 2, 2))}];
    v43 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 1, 1))}];
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 1, 2))}];
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 0, 0))}];
    v46 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 0, 1))}];
    v47 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollaborationStatus:collaborationType:](v23, "countOfNotesWithCollaborationStatus:collaborationType:", 0, 2))}];
    v305 = [(ICASCollabNotesItemData *)v40 initWithTotalNotesCollabRootReadOnlyCount:v41 totalNotesCollabThruFolderReadOnlyCount:v42 totalNotesCollabRootReadWriteJoinedCount:v43 totalNotesCollabThruFolderReadWriteJoinedCount:v44 totalNotesNotCollabCount:v45 totalNotesCollabRootOwnedCount:v46 totalNotesCollabThruFolderOwnedCount:v47];

    v302 = [ICASCollabFoldersItemData alloc];
    v48 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 2, 1))}];
    v49 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 2, 2))}];
    v50 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 1, 1))}];
    v51 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 1, 2))}];
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 0))}];
    v53 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 1))}];
    v54 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFoldersWithCollaborationStatus:collaborationType:](v311, "countOfFoldersWithCollaborationStatus:collaborationType:", 0, 2))}];
    v303 = [(ICASCollabFoldersItemData *)v302 initWithTotalFoldersCollabRootReadOnlyCount:v48 totalFoldersCollabSubfolderReadOnlyCount:v49 totalFoldersCollabRootReadWriteJoinedCount:v50 totalFoldersCollabSubfolderReadWriteJoinedCount:v51 totalFoldersNotCollabCount:v52 totalFoldersCollabRootOwnedCount:v53 totalFoldersCollabSubfolderOwnedCount:v54];

    v299 = [ICASNoteAttachmentItemData alloc];
    v290 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithDocScan](v23, "countOfNotesWithDocScan"))}];
    v285 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithInlineDrawingV1](v23, "countOfNotesWithInlineDrawingV1"))}];
    v281 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithInlineDrawingV2](v23, "countOfNotesWithInlineDrawingV2"))}];
    v295 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithPaperKit](v23, "countOfNotesWithPaperKit"))}];
    v262 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFullscreenDrawing](v23, "countOfNotesWithFullscreenDrawing"))}];
    v259 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithTable](v23, "countOfNotesWithTable"))}];
    v277 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithOtherAttachments](v23, "countOfNotesWithOtherAttachments"))}];
    v273 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithRichURL](v23, "countOfNotesWithRichURL"))}];
    v269 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithMapLink](v23, "countOfNotesWithMapLink"))}];
    v265 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithDeepLink](v23, "countOfNotesWithDeepLink"))}];
    v256 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithPaperDocument](v23, "countOfNotesWithPaperDocument"))}];
    v250 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithPDF](v23, "countOfNotesWithPDF"))}];
    v253 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithNoteLink](v23, "countOfNotesWithNoteLink"))}];
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithFolderLink](v23, "countOfNotesWithFolderLink"))}];
    v247 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithAttachmentAudio](v23, "countOfNotesWithAttachmentAudio"))}];
    v244 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfAudioAttachments](v23, "countOfAudioAttachments"))}];
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(-1)];
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfAudioAttachmentsWithAppendedAudio](v23, "countOfAudioAttachmentsWithAppendedAudio"))}];
    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithAttachmentAudioTranscript](v23, "countOfNotesWithAttachmentAudioTranscript"))}];
    v59 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithAttachmentAudioSummary](v23, "countOfNotesWithAttachmentAudioSummary"))}];
    v300 = [(ICASNoteAttachmentItemData *)v299 initWithTotalCountOfNotesWithAttachmentDocScan:v290 totalCountOfNotesWithAttachmentInlineDrawingV1:v285 totalCountOfNotesWithAttachmentInlineDrawingV2:v281 totalCountOfNotesWithAttachmentPaperKit:v295 totalCountOfNotesWithAttachmentFullscreenDrawing:v262 totalCountOfNotesWithAttachmentTables:v259 totalCountOfNotesWithAttachmentOther:v277 totalCountOfNotesWithAttachmentRichUrl:v273 totalCountOfNotesWithAttachmentMapLink:v269 totalCountOfNotesWithAttachmentDeepLink:v265 totalCountOfNotesWithPaperDocument:v256 totalCountOfNotesWithPdfDocument:v250 totalCountOfNotesWithNoteLinks:v253 totalCountOfNotesWithFolderLinks:v55 totalCountOfNotesWithAttachmentAudio:v247 totalCountOfAudioAttachments:v244 totalCountOfAudioAttachmentsRecordedInNotes:v56 totalCountOfAudioAttachmentsWithAppendedAudio:v57 totalCountOfNotesWithAttachmentAudioTranscript:v58 totalCountOfNotesWithAttachmentAudioSummary:v59];

    v296 = [ICASScrapPaperAttachmentItemData alloc];
    v291 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithDocScan](v23, "countOfScrapPapersWithDocScan"))}];
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithInlineDrawingV1](v23, "countOfScrapPapersWithInlineDrawingV1"))}];
    v286 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithInlineDrawingV2](v23, "countOfScrapPapersWithInlineDrawingV2"))}];
    v61 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithPaperKit](v23, "countOfScrapPapersWithPaperKit"))}];
    v62 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithFullscreenDrawing](v23, "countOfScrapPapersWithFullscreenDrawing"))}];
    v63 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithTables](v23, "countOfScrapPapersWithTables"))}];
    v64 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithOtherAttachments](v23, "countOfScrapPapersWithOtherAttachments"))}];
    v65 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithRichUrl](v23, "countOfScrapPapersWithRichUrl"))}];
    v184 = v23;
    v66 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithMapLink](v23, "countOfScrapPapersWithMapLink"))}];
    v67 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithDeepLink](v23, "countOfScrapPapersWithDeepLink"))}];
    v297 = [(ICASScrapPaperAttachmentItemData *)v296 initWithTotalCountOfScrapPapersWithAttachmentDocScan:v291 totalCountOfScrapPapersWithAttachmentInlineDrawingV1:v60 totalCountOfScrapPapersWithAttachmentInlineDrawingV2:v286 totalCountOfScrapPapersWithAttachmentPaperKit:v61 totalCountOfScrapPapersWithAttachmentFullscreenDrawing:v62 totalCountOfScrapPapersWithAttachmentTables:v63 totalCountOfScrapPapersWithAttachmentOther:v64 totalCountOfScrapPapersWithAttachmentRichUrl:v65 totalCountOfScrapPapersWithAttachmentMapLink:v66 totalCountOfScrapPapersWithAttachmentDeepLink:v67];

    v292 = [ICASSmartFoldersItemData alloc];
    v287 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithTagsFilter](v311, "countOfSmartFoldersWithTagsFilter"))}];
    v282 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithDateCreatedFilter](v311, "countOfSmartFoldersWithDateCreatedFilter"))}];
    v274 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithDateModifiedFilter](v311, "countOfSmartFoldersWithDateModifiedFilter"))}];
    v270 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithSharedFilter](v311, "countOfSmartFoldersWithSharedFilter"))}];
    v68 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithMentionsFilter](v311, "countOfSmartFoldersWithMentionsFilter"))}];
    v278 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithChecklistsFilter](v311, "countOfSmartFoldersWithChecklistsFilter"))}];
    v69 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithAttachmentsFilter](v311, "countOfSmartFoldersWithAttachmentsFilter"))}];
    v266 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithFoldersFilter](v311, "countOfSmartFoldersWithFoldersFilter"))}];
    v70 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithQuickNotesFilter](v311, "countOfSmartFoldersWithQuickNotesFilter"))}];
    v71 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithPinnedNotesFilter](v311, "countOfSmartFoldersWithPinnedNotesFilter"))}];
    v72 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithLockedNotesFilter](v311, "countOfSmartFoldersWithLockedNotesFilter"))}];
    v73 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfSmartFoldersWithUnknownFilter](v311, "countOfSmartFoldersWithUnknownFilter"))}];
    v293 = [(ICASSmartFoldersItemData *)v292 initWithTotalCountOfSmartFoldersWithTagsFilter:v287 totalCountOfSmartFoldersWithDateCreatedFilter:v282 totalCountOfSmartFoldersWithDateModifiedFilter:v274 totalCountOfSmartFoldersWithSharedFilter:v270 totalCountOfSmartFoldersWithMentionsFilter:v68 totalCountOfSmartFoldersWithChecklistsFilter:v278 totalCountOfSmartFoldersWithAttachmentsFilter:v69 totalCountOfSmartFoldersWithFoldersFilter:v266 totalCountOfSmartFoldersWithQuickNotesFilter:v70 totalCountOfSmartFoldersWithPinnedNotesFilter:v71 totalCountOfSmartFoldersWithLockedNotesFilter:v72 totalCountOfSmartFoldersWithUnknownFilter:v73];

    v74 = [ICASLockedNotesItemData alloc];
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfV1LockedNotes](v184, "countOfV1LockedNotes"))}];
    v76 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfV2LockedNotes](v184, "countOfV2LockedNotes"))}];
    v77 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfLockedNotesWithDivergedMode](v184, "countOfLockedNotesWithDivergedMode"))}];
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfLockedNotesWithDivergedPassword](v184, "countOfLockedNotesWithDivergedPassword"))}];
    v170 = [(ICASLockedNotesItemData *)v74 initWithTotalCountOfV1LockedNotes:v75 totalCountOfV2LockedNotes:v76 totalCountOfLockedNotesWithDivergedMode:v77 totalCountOfLockedNotesWithDivergedPassword:v78];

    v152 = [ICASAccountSnapshotData alloc];
    v288 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startMonth](ICNAController, "startMonth")}];
    v283 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startYear](ICNAController, "startYear")}];
    v275 = +[ICNAController saltVersion];
    v327 = v309;
    v263 = [MEMORY[0x277CBEA60] arrayWithObjects:&v327 count:1];
    v326 = v307;
    v254 = [MEMORY[0x277CBEA60] arrayWithObjects:&v326 count:1];
    v325 = v305;
    v242 = [MEMORY[0x277CBEA60] arrayWithObjects:&v325 count:1];
    v324 = v303;
    v271 = [MEMORY[0x277CBEA60] arrayWithObjects:&v324 count:1];
    v323 = v300;
    v279 = [MEMORY[0x277CBEA60] arrayWithObjects:&v323 count:1];
    v322 = v297;
    v236 = [MEMORY[0x277CBEA60] arrayWithObjects:&v322 count:1];
    v321 = v170;
    v267 = [MEMORY[0x277CBEA60] arrayWithObjects:&v321 count:1];
    v320 = v293;
    v260 = [MEMORY[0x277CBEA60] arrayWithObjects:&v320 count:1];
    v257 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotes](v184, "countOfNotes"))}];
    v232 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFolders](v311, "countOfFolders"))}];
    v251 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfCustomSmartFolders](v311, "countOfCustomSmartFolders"))}];
    v248 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfChecklists](v184, "countOfChecklists"))}];
    v245 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithChecklists](v184, "countOfNotesWithChecklists"))}];
    v230 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfPinnedNotes](v184, "countOfPinnedNotes"))}];
    v240 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfLockedNotes](v184, "countOfLockedNotes"))}];
    v238 = [(ICNASnapshotReporter *)v145 deviceSnapshotSummaryForDataType:objc_opt_class()];
    v226 = [(ICNASnapshotReporter *)v145 userSnapshotSummaryForDataType:objc_opt_class()];
    attachmentUTISummary = [(_ICNAAttachmentReportToAccount *)v308 attachmentUTISummary];
    accountHistogramManager2 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    folderDirectNoteCountHistogram = [accountHistogramManager2 folderDirectNoteCountHistogram];
    icasHistogram = [folderDirectNoteCountHistogram icasHistogram];
    accountHistogramManager3 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabRootFolderTotalNoteCountHistogram = [accountHistogramManager3 collabRootFolderTotalNoteCountHistogram];
    icasHistogram2 = [collabRootFolderTotalNoteCountHistogram icasHistogram];
    accountHistogramManager4 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    docScanPageCountHistogram = [accountHistogramManager4 docScanPageCountHistogram];
    icasHistogram3 = [docScanPageCountHistogram icasHistogram];
    accountHistogramManager5 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedRootFolderInviteeCountHistogram = [accountHistogramManager5 collabOwnedRootFolderInviteeCountHistogram];
    icasHistogram4 = [collabOwnedRootFolderInviteeCountHistogram icasHistogram];
    accountHistogramManager6 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedRootFolderAcceptanceCountHistogram = [accountHistogramManager6 collabOwnedRootFolderAcceptanceCountHistogram];
    icasHistogram5 = [collabOwnedRootFolderAcceptanceCountHistogram icasHistogram];
    accountHistogramManager7 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedRootFolderNoReplyCountHistogram = [accountHistogramManager7 collabOwnedRootFolderNoReplyCountHistogram];
    icasHistogram6 = [collabOwnedRootFolderNoReplyCountHistogram icasHistogram];
    accountHistogramManager8 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedRootFolderAcceptanceRatioHistogram = [accountHistogramManager8 collabOwnedRootFolderAcceptanceRatioHistogram];
    icasHistogram7 = [collabOwnedRootFolderAcceptanceRatioHistogram icasHistogram];
    accountHistogramManager9 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedSingleNoteInviteeCountHistogram = [accountHistogramManager9 collabOwnedSingleNoteInviteeCountHistogram];
    icasHistogram8 = [collabOwnedSingleNoteInviteeCountHistogram icasHistogram];
    accountHistogramManager10 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedSingleNoteAcceptanceCountHistogram = [accountHistogramManager10 collabOwnedSingleNoteAcceptanceCountHistogram];
    icasHistogram9 = [collabOwnedSingleNoteAcceptanceCountHistogram icasHistogram];
    accountHistogramManager11 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedSingleNoteNoReplyCountHistogram = [accountHistogramManager11 collabOwnedSingleNoteNoReplyCountHistogram];
    icasHistogram10 = [collabOwnedSingleNoteNoReplyCountHistogram icasHistogram];
    accountHistogramManager12 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    collabOwnedSingleNoteAcceptanceRatioHistogram = [accountHistogramManager12 collabOwnedSingleNoteAcceptanceRatioHistogram];
    icasHistogram11 = [collabOwnedSingleNoteAcceptanceRatioHistogram icasHistogram];
    accountHistogramManager13 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    noteCharCountHistogram = [accountHistogramManager13 noteCharCountHistogram];
    icasHistogram12 = [noteCharCountHistogram icasHistogram];
    accountHistogramManager14 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV1TotalStrokeCountHistogram = [accountHistogramManager14 inlineDrawingV1TotalStrokeCountHistogram];
    icasHistogram13 = [inlineDrawingV1TotalStrokeCountHistogram icasHistogram];
    accountHistogramManager15 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV1PencilStrokeCountHistogram = [accountHistogramManager15 inlineDrawingV1PencilStrokeCountHistogram];
    icasHistogram14 = [inlineDrawingV1PencilStrokeCountHistogram icasHistogram];
    accountHistogramManager16 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV1FingerStrokeCountHistogram = [accountHistogramManager16 inlineDrawingV1FingerStrokeCountHistogram];
    icasHistogram15 = [inlineDrawingV1FingerStrokeCountHistogram icasHistogram];
    accountHistogramManager17 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV1FingerStrokeRatioHistogram = [accountHistogramManager17 inlineDrawingV1FingerStrokeRatioHistogram];
    icasHistogram16 = [inlineDrawingV1FingerStrokeRatioHistogram icasHistogram];
    accountHistogramManager18 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV2TotalStrokeCountHistogram = [accountHistogramManager18 inlineDrawingV2TotalStrokeCountHistogram];
    icasHistogram17 = [inlineDrawingV2TotalStrokeCountHistogram icasHistogram];
    accountHistogramManager19 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV2PencilStrokeCountHistogram = [accountHistogramManager19 inlineDrawingV2PencilStrokeCountHistogram];
    icasHistogram18 = [inlineDrawingV2PencilStrokeCountHistogram icasHistogram];
    accountHistogramManager20 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV2FingerStrokeCountHistogram = [accountHistogramManager20 inlineDrawingV2FingerStrokeCountHistogram];
    icasHistogram19 = [inlineDrawingV2FingerStrokeCountHistogram icasHistogram];
    accountHistogramManager21 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingV2FingerStrokeRatioHistogram = [accountHistogramManager21 inlineDrawingV2FingerStrokeRatioHistogram];
    icasHistogram20 = [inlineDrawingV2FingerStrokeRatioHistogram icasHistogram];
    accountHistogramManager22 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    fullscreenDrawingStrokeCountHistogram = [accountHistogramManager22 fullscreenDrawingStrokeCountHistogram];
    icasHistogram21 = [fullscreenDrawingStrokeCountHistogram icasHistogram];
    accountHistogramManager23 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    tableRowCountHistogram = [accountHistogramManager23 tableRowCountHistogram];
    icasHistogram22 = [tableRowCountHistogram icasHistogram];
    accountHistogramManager24 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    tableColumnCountHistogram = [accountHistogramManager24 tableColumnCountHistogram];
    icasHistogram23 = [tableColumnCountHistogram icasHistogram];
    accountHistogramManager25 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    tableCellCountHistogram = [accountHistogramManager25 tableCellCountHistogram];
    icasHistogram24 = [tableCellCountHistogram icasHistogram];
    accountHistogramManager26 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    passwordProtectedNoteWeeklyAgeHistogram = [accountHistogramManager26 passwordProtectedNoteWeeklyAgeHistogram];
    icasHistogram25 = [passwordProtectedNoteWeeklyAgeHistogram icasHistogram];
    accountHistogramManager27 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    topLevelFolderTotalNoteCountHistogram2 = [accountHistogramManager27 topLevelFolderTotalNoteCountHistogram];
    icasHistogram26 = [topLevelFolderTotalNoteCountHistogram2 icasHistogram];
    accountHistogramManager28 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    attachmentCountPerNoteHistogram = [accountHistogramManager28 attachmentCountPerNoteHistogram];
    icasHistogram27 = [attachmentCountPerNoteHistogram icasHistogram];
    accountHistogramManager29 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    drawingCountPerNoteHistogram = [accountHistogramManager29 drawingCountPerNoteHistogram];
    icasHistogram28 = [drawingCountPerNoteHistogram icasHistogram];
    accountHistogramManager30 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingFingerStrokesCountPerNoteHistogram = [accountHistogramManager30 inlineDrawingFingerStrokesCountPerNoteHistogram];
    icasHistogram29 = [inlineDrawingFingerStrokesCountPerNoteHistogram icasHistogram];
    accountHistogramManager31 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    inlineDrawingPencilStrokesCountPerNoteHistogram = [accountHistogramManager31 inlineDrawingPencilStrokesCountPerNoteHistogram];
    icasHistogram30 = [inlineDrawingPencilStrokesCountPerNoteHistogram icasHistogram];
    accountHistogramManager32 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    fullScreenDrawingStrokesCountPerNoteHistogram = [accountHistogramManager32 fullScreenDrawingStrokesCountPerNoteHistogram];
    icasHistogram31 = [fullScreenDrawingStrokesCountPerNoteHistogram icasHistogram];
    accountHistogramManager33 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    totalStrokesCountPerNoteHistogram = [accountHistogramManager33 totalStrokesCountPerNoteHistogram];
    icasHistogram32 = [totalStrokesCountPerNoteHistogram icasHistogram];
    accountHistogramManager34 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    tagCountPerNoteHistogram = [accountHistogramManager34 tagCountPerNoteHistogram];
    icasHistogram33 = [tagCountPerNoteHistogram icasHistogram];
    accountHistogramManager35 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    distinctTagCountPerNoteHistogram = [accountHistogramManager35 distinctTagCountPerNoteHistogram];
    icasHistogram34 = [distinctTagCountPerNoteHistogram icasHistogram];
    v178 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithTags](v184, "countOfNotesWithTags"))}];
    v98 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollapsedSections](v184, "countOfNotesWithCollapsedSections"))}];
    v177 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithMentions](v184, "countOfNotesWithMentions"))}];
    v176 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount scrapPaperCount](v184, "scrapPaperCount"))}];
    v175 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithTags](v184, "countOfScrapPapersWithTags"))}];
    v79 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithMentions](v184, "countOfScrapPapersWithMentions"))}];
    v80 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfPinnedScrapPapers](v184, "countOfPinnedScrapPapers"))}];
    v81 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfLockedScrapPapers](v184, "countOfLockedScrapPapers"))}];
    v82 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfCollaboratedScrapPapers](v184, "countOfCollaboratedScrapPapers"))}];
    accountHistogramManager36 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    mentionCountPerNoteHistogram = [accountHistogramManager36 mentionCountPerNoteHistogram];
    icasHistogram35 = [mentionCountPerNoteHistogram icasHistogram];
    accountHistogramManager37 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    distinctMentionCountPerNoteHistogram = [accountHistogramManager37 distinctMentionCountPerNoteHistogram];
    icasHistogram36 = [distinctMentionCountPerNoteHistogram icasHistogram];
    v94 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithMathUsage](v184, "countOfNotesWithMathUsage"))}];
    v153 = [ICASAccountSnapshotData initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:]( v152,  "initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:",  v288,  v283,  v275,  v263,  v254,  v242,  v271,  v279,  v236,  v267,  v260,  v257,  v232,  v251,  v248,  v245,  v230,  v240,  v238,  v226,  attachmentUTISummary,  icasHistogram,  icasHistogram2,  icasHistogram3,  icasHistogram4,  icasHistogram5,  icasHistogram6,  icasHistogram7,  icasHistogram8,  icasHistogram9,  icasHistogram10,  icasHistogram11,  icasHistogram12,  icasHistogram13,  icasHistogram14,  icasHistogram15,  icasHistogram16,  icasHistogram17,  icasHistogram18,  icasHistogram19,  icasHistogram20,  icasHistogram21,  icasHistogram22,  icasHistogram23,  icasHistogram24,  icasHistogram25,  icasHistogram26,
             icasHistogram27,
             icasHistogram28,
             icasHistogram29,
             icasHistogram30,
             icasHistogram31,
             icasHistogram32,
             icasHistogram33,
             icasHistogram34,
             v178,
             v98,
             v177,
             v176,
             v175,
             v79);

    v86 = +[ICNAController sharedController];
    v87 = objc_opt_class();
    v319 = v153;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v319 count:1];
    subTracker = [(ICNAEventReporter *)v145 subTracker];
    [v86 submitEventOfType:v87 pushThenPopDataObjects:v88 subTracker:subTracker];

    accountType = [v173 accountType];
    countOfNotes = [(_ICNANoteReportToAccount *)v184 countOfNotes];
    deviceCopy = v174;
    v92 = accountType;
    noteToDeviceCopy = v313;
    [v174 reportAccountType:v92 noteCount:countOfNotes];
    v14 = v310;
    [objc_opt_class() faultOutObject:?];
    [(ICNASnapshotReporter *)v145 setAccountHistogramManager:0];

    toDeviceCopy = v314;
  }

  v93 = *MEMORY[0x277D85DE8];
}

- (void)snapshotHTMLAccount:(id)account reportedDataToDevice:(id)device reportedDataFromFolderToDevice:(id)toDevice reportedDataFromNoteToDevice:(id)noteToDevice
{
  v150 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  deviceCopy = device;
  toDeviceCopy = toDevice;
  noteToDeviceCopy = noteToDevice;
  v13 = objc_alloc_init(ICNAHistogramManager);
  [(ICNASnapshotReporter *)self setAccountHistogramManager:v13];

  v14 = accountCopy;
  v15 = [(ICNASnapshotReporter *)self sortedFoldersForAccount:accountCopy];
  v16 = objc_alloc_init(_ICNAFolderReportToAccount);
  v17 = objc_alloc_init(_ICNANoteReportToAccount);
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v143 objects:v149 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v144;
    do
    {
      v22 = 0;
      do
      {
        if (*v144 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(ICNASnapshotReporter *)self snapshotHTMLFolder:*(*(&v143 + 1) + 8 * v22++) reportedDataToAccount:v16 reportedDataToDevice:toDeviceCopy noteReportToAccount:v17 reportedDataFromNoteToDevice:noteToDeviceCopy];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v143 objects:v149 count:16];
    }

    while (v20);
  }

  v76 = v14;
  v142 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:v14];
  accountPurposeForHTMLAccount = [(ICNASnapshotReporter *)self accountPurposeForHTMLAccount];
  v23 = +[ICNAIdentityManager sharedManager];
  accountIdentifier = [v14 accountIdentifier];
  v100 = [v23 saltedID:accountIdentifier forClass:objc_opt_class()];

  v99 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v100 accountType:v142 accountPurpose:accountPurposeForHTMLAccount];
  v115 = [ICASAccountSnapshotData alloc];
  v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startMonth](ICNAController, "startMonth")}];
  v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[ICNAController startYear](ICNAController, "startYear")}];
  v139 = +[ICNAController saltVersion];
  v148 = v99;
  v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
  v137 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotes](v17, "countOfNotes"))}];
  v136 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfFolders](v16, "countOfFolders"))}];
  v135 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNAFolderReportToAccount countOfCustomSmartFolders](v16, "countOfCustomSmartFolders"))}];
  v134 = [(ICNASnapshotReporter *)self deviceSnapshotSummaryForDataType:objc_opt_class()];
  v133 = [(ICNASnapshotReporter *)self userSnapshotSummaryForDataType:objc_opt_class()];
  accountHistogramManager = [(ICNASnapshotReporter *)self accountHistogramManager];
  folderDirectNoteCountHistogram = [accountHistogramManager folderDirectNoteCountHistogram];
  icasHistogram = [folderDirectNoteCountHistogram icasHistogram];
  accountHistogramManager2 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabRootFolderTotalNoteCountHistogram = [accountHistogramManager2 collabRootFolderTotalNoteCountHistogram];
  icasHistogram2 = [collabRootFolderTotalNoteCountHistogram icasHistogram];
  accountHistogramManager3 = [(ICNASnapshotReporter *)self accountHistogramManager];
  docScanPageCountHistogram = [accountHistogramManager3 docScanPageCountHistogram];
  icasHistogram3 = [docScanPageCountHistogram icasHistogram];
  accountHistogramManager4 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedRootFolderInviteeCountHistogram = [accountHistogramManager4 collabOwnedRootFolderInviteeCountHistogram];
  icasHistogram4 = [collabOwnedRootFolderInviteeCountHistogram icasHistogram];
  accountHistogramManager5 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedRootFolderAcceptanceCountHistogram = [accountHistogramManager5 collabOwnedRootFolderAcceptanceCountHistogram];
  icasHistogram5 = [collabOwnedRootFolderAcceptanceCountHistogram icasHistogram];
  accountHistogramManager6 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedRootFolderNoReplyCountHistogram = [accountHistogramManager6 collabOwnedRootFolderNoReplyCountHistogram];
  icasHistogram6 = [collabOwnedRootFolderNoReplyCountHistogram icasHistogram];
  accountHistogramManager7 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedRootFolderAcceptanceRatioHistogram = [accountHistogramManager7 collabOwnedRootFolderAcceptanceRatioHistogram];
  icasHistogram7 = [collabOwnedRootFolderAcceptanceRatioHistogram icasHistogram];
  accountHistogramManager8 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedSingleNoteInviteeCountHistogram = [accountHistogramManager8 collabOwnedSingleNoteInviteeCountHistogram];
  icasHistogram8 = [collabOwnedSingleNoteInviteeCountHistogram icasHistogram];
  accountHistogramManager9 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedSingleNoteAcceptanceCountHistogram = [accountHistogramManager9 collabOwnedSingleNoteAcceptanceCountHistogram];
  icasHistogram9 = [collabOwnedSingleNoteAcceptanceCountHistogram icasHistogram];
  accountHistogramManager10 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedSingleNoteNoReplyCountHistogram = [accountHistogramManager10 collabOwnedSingleNoteNoReplyCountHistogram];
  icasHistogram10 = [collabOwnedSingleNoteNoReplyCountHistogram icasHistogram];
  accountHistogramManager11 = [(ICNASnapshotReporter *)self accountHistogramManager];
  collabOwnedSingleNoteAcceptanceRatioHistogram = [accountHistogramManager11 collabOwnedSingleNoteAcceptanceRatioHistogram];
  icasHistogram11 = [collabOwnedSingleNoteAcceptanceRatioHistogram icasHistogram];
  accountHistogramManager12 = [(ICNASnapshotReporter *)self accountHistogramManager];
  noteCharCountHistogram = [accountHistogramManager12 noteCharCountHistogram];
  icasHistogram12 = [noteCharCountHistogram icasHistogram];
  accountHistogramManager13 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV1TotalStrokeCountHistogram = [accountHistogramManager13 inlineDrawingV1TotalStrokeCountHistogram];
  icasHistogram13 = [inlineDrawingV1TotalStrokeCountHistogram icasHistogram];
  accountHistogramManager14 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV1PencilStrokeCountHistogram = [accountHistogramManager14 inlineDrawingV1PencilStrokeCountHistogram];
  icasHistogram14 = [inlineDrawingV1PencilStrokeCountHistogram icasHistogram];
  accountHistogramManager15 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV1FingerStrokeCountHistogram = [accountHistogramManager15 inlineDrawingV1FingerStrokeCountHistogram];
  icasHistogram15 = [inlineDrawingV1FingerStrokeCountHistogram icasHistogram];
  accountHistogramManager16 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV1FingerStrokeRatioHistogram = [accountHistogramManager16 inlineDrawingV1FingerStrokeRatioHistogram];
  icasHistogram16 = [inlineDrawingV1FingerStrokeRatioHistogram icasHistogram];
  accountHistogramManager17 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV2TotalStrokeCountHistogram = [accountHistogramManager17 inlineDrawingV2TotalStrokeCountHistogram];
  icasHistogram17 = [inlineDrawingV2TotalStrokeCountHistogram icasHistogram];
  accountHistogramManager18 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV2PencilStrokeCountHistogram = [accountHistogramManager18 inlineDrawingV2PencilStrokeCountHistogram];
  icasHistogram18 = [inlineDrawingV2PencilStrokeCountHistogram icasHistogram];
  accountHistogramManager19 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV2FingerStrokeCountHistogram = [accountHistogramManager19 inlineDrawingV2FingerStrokeCountHistogram];
  icasHistogram19 = [inlineDrawingV2FingerStrokeCountHistogram icasHistogram];
  accountHistogramManager20 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV2FingerStrokeRatioHistogram = [accountHistogramManager20 inlineDrawingV2FingerStrokeRatioHistogram];
  icasHistogram20 = [inlineDrawingV2FingerStrokeRatioHistogram icasHistogram];
  accountHistogramManager21 = [(ICNASnapshotReporter *)self accountHistogramManager];
  fullscreenDrawingStrokeCountHistogram = [accountHistogramManager21 fullscreenDrawingStrokeCountHistogram];
  icasHistogram21 = [fullscreenDrawingStrokeCountHistogram icasHistogram];
  accountHistogramManager22 = [(ICNASnapshotReporter *)self accountHistogramManager];
  tableRowCountHistogram = [accountHistogramManager22 tableRowCountHistogram];
  icasHistogram22 = [tableRowCountHistogram icasHistogram];
  accountHistogramManager23 = [(ICNASnapshotReporter *)self accountHistogramManager];
  tableColumnCountHistogram = [accountHistogramManager23 tableColumnCountHistogram];
  icasHistogram23 = [tableColumnCountHistogram icasHistogram];
  accountHistogramManager24 = [(ICNASnapshotReporter *)self accountHistogramManager];
  tableCellCountHistogram = [accountHistogramManager24 tableCellCountHistogram];
  icasHistogram24 = [tableCellCountHistogram icasHistogram];
  accountHistogramManager25 = [(ICNASnapshotReporter *)self accountHistogramManager];
  passwordProtectedNoteWeeklyAgeHistogram = [accountHistogramManager25 passwordProtectedNoteWeeklyAgeHistogram];
  icasHistogram25 = [passwordProtectedNoteWeeklyAgeHistogram icasHistogram];
  accountHistogramManager26 = [(ICNASnapshotReporter *)self accountHistogramManager];
  topLevelFolderTotalNoteCountHistogram = [accountHistogramManager26 topLevelFolderTotalNoteCountHistogram];
  icasHistogram26 = [topLevelFolderTotalNoteCountHistogram icasHistogram];
  accountHistogramManager27 = [(ICNASnapshotReporter *)self accountHistogramManager];
  attachmentCountPerNoteHistogram = [accountHistogramManager27 attachmentCountPerNoteHistogram];
  icasHistogram27 = [attachmentCountPerNoteHistogram icasHistogram];
  accountHistogramManager28 = [(ICNASnapshotReporter *)self accountHistogramManager];
  drawingCountPerNoteHistogram = [accountHistogramManager28 drawingCountPerNoteHistogram];
  icasHistogram28 = [drawingCountPerNoteHistogram icasHistogram];
  accountHistogramManager29 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingFingerStrokesCountPerNoteHistogram = [accountHistogramManager29 inlineDrawingFingerStrokesCountPerNoteHistogram];
  icasHistogram29 = [inlineDrawingFingerStrokesCountPerNoteHistogram icasHistogram];
  accountHistogramManager30 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingPencilStrokesCountPerNoteHistogram = [accountHistogramManager30 inlineDrawingPencilStrokesCountPerNoteHistogram];
  icasHistogram30 = [inlineDrawingPencilStrokesCountPerNoteHistogram icasHistogram];
  accountHistogramManager31 = [(ICNASnapshotReporter *)self accountHistogramManager];
  fullScreenDrawingStrokesCountPerNoteHistogram = [accountHistogramManager31 fullScreenDrawingStrokesCountPerNoteHistogram];
  icasHistogram31 = [fullScreenDrawingStrokesCountPerNoteHistogram icasHistogram];
  accountHistogramManager32 = [(ICNASnapshotReporter *)self accountHistogramManager];
  totalStrokesCountPerNoteHistogram = [accountHistogramManager32 totalStrokesCountPerNoteHistogram];
  icasHistogram32 = [totalStrokesCountPerNoteHistogram icasHistogram];
  v116 = [ICASAccountSnapshotData initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:]( v115,  "initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:",  v141,  v140,  v139,  v138,  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  v137,  v136,  v135,  &unk_286E5E150,  &unk_286E5E150,  &unk_286E5E150,  &unk_286E5E150,  v134,  v133,  MEMORY[0x277CBEBF8],  icasHistogram,  icasHistogram2,  icasHistogram3,  icasHistogram4,  icasHistogram5,  icasHistogram6,  icasHistogram7,  icasHistogram8,  icasHistogram9,  icasHistogram10,  icasHistogram11,  icasHistogram12,  icasHistogram13,  icasHistogram14,  icasHistogram15,  icasHistogram16,  icasHistogram17,  icasHistogram18,  icasHistogram19,  icasHistogram20,  icasHistogram21,  icasHistogram22,  icasHistogram23,  icasHistogram24,  icasHistogram25,  icasHistogram26,
           icasHistogram27,
           icasHistogram28,
           icasHistogram29,
           icasHistogram30,
           icasHistogram31,
           icasHistogram32,
           MEMORY[0x277CBEBF8],
           MEMORY[0x277CBEBF8],
           &unk_286E5E150,
           &unk_286E5E150,
           &unk_286E5E150,
           &unk_286E5E150,
           &unk_286E5E150,
           &unk_286E5E150);

  v29 = +[ICNAController sharedController];
  v30 = objc_opt_class();
  v147 = v116;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v29 submitEventOfType:v30 pushThenPopDataObjects:v31 subTracker:subTracker];

  [deviceCopy reportAccountType:objc_msgSend(v142 noteCount:{"accountType"), -[_ICNANoteReportToAccount countOfNotes](v17, "countOfNotes")}];
  [objc_opt_class() faultOutObject:v76];
  [(ICNASnapshotReporter *)self setAccountHistogramManager:0];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)snapshotModernFolder:(id)folder reportedDataToParentFolder:(id)parentFolder reportedDataToAccount:(id)account reportedDataToDevice:(id)device reportedDataFromNotesToAccount:(id)toAccount reportedDataFromAttachmentToAccount:(id)attachmentToAccount reportedDataFromNoteToDevice:(id)toDevice
{
  v90 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  parentFolderCopy = parentFolder;
  accountCopy = account;
  deviceCopy = device;
  toAccountCopy = toAccount;
  attachmentToAccountCopy = attachmentToAccount;
  toDeviceCopy = toDevice;
  if ([folderCopy isUnsupported])
  {
    [objc_opt_class() faultOutObject:folderCopy];
    v18 = accountCopy;
  }

  else
  {
    selfCopy = self;
    if (!parentFolderCopy)
    {
      parentFolderCopy = objc_alloc_init(_ICNAFolderReportToParentFolder);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    foldersInFolder = [folderCopy foldersInFolder];
    v20 = [foldersInFolder countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v84;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v84 != v22)
          {
            objc_enumerationMutation(foldersInFolder);
          }

          v24 = *(*(&v83 + 1) + 8 * i);
          v25 = objc_alloc_init(_ICNAFolderReportToParentFolder);
          [(ICNASnapshotReporter *)selfCopy snapshotModernFolder:v24 reportedDataToParentFolder:v25 reportedDataToAccount:accountCopy reportedDataToDevice:deviceCopy reportedDataFromNotesToAccount:toAccountCopy reportedDataFromAttachmentToAccount:attachmentToAccountCopy reportedDataFromNoteToDevice:toDeviceCopy];
          [(_ICNAFolderReportToParentFolder *)parentFolderCopy setTotalNoteCountIncludingSubFolders:[(_ICNAFolderReportToParentFolder *)parentFolderCopy totalNoteCountIncludingSubFolders]+ [(_ICNAFolderReportToParentFolder *)v25 totalNoteCountIncludingSubFolders]];
        }

        v21 = [foldersInFolder countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v21);
    }

    isSmartFolder = [folderCopy isSmartFolder];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    visibleNotesInFolder = [folderCopy visibleNotesInFolder];
    v28 = [visibleNotesInFolder countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v28)
    {
      v29 = v28;
      v67 = folderCopy;
      v30 = 0;
      v31 = *v80;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v80 != v31)
          {
            objc_enumerationMutation(visibleNotesInFolder);
          }

          if ((isSmartFolder & 1) == 0)
          {
            v33 = *(*(&v79 + 1) + 8 * j);
            v34 = objc_autoreleasePoolPush();
            [(ICNASnapshotReporter *)selfCopy snapshotModernNote:v33 reportedDataToAccount:toAccountCopy reportToDevice:toDeviceCopy reportedDataFromAttachmentToAccount:attachmentToAccountCopy];
            objc_autoreleasePoolPop(v34);
          }

          [(_ICNAFolderReportToParentFolder *)parentFolderCopy setTotalNoteCountIncludingSubFolders:[(_ICNAFolderReportToParentFolder *)parentFolderCopy totalNoteCountIncludingSubFolders]+ 1];
        }

        v30 += v29;
        v29 = [visibleNotesInFolder countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v29);
      v35 = v30;
      folderCopy = v67;
    }

    else
    {
      v35 = 0.0;
    }

    v18 = accountCopy;
    v36 = selfCopy;
    if (([folderCopy isDefaultFolderForAccount] & 1) == 0 && (objc_msgSend(folderCopy, "isTrashFolder") & 1) == 0)
    {
      v37 = [(ICNAEventReporter *)selfCopy collaborationStatusForModernObject:folderCopy];
      v38 = [(ICNAEventReporter *)selfCopy collaborationTypeForModernObject:folderCopy];
      if ([v38 collaborationType] == 2)
      {
        accountHistogramManager = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
        collabRootFolderTotalNoteCountHistogram = [accountHistogramManager collabRootFolderTotalNoteCountHistogram];
        [collabRootFolderTotalNoteCountHistogram reportValue:{-[_ICNAFolderReportToParentFolder totalNoteCountIncludingSubFolders](parentFolderCopy, "totalNoteCountIncludingSubFolders")}];
      }

      if ([v37 collaborationStatus] == 1 && objc_msgSend(v38, "collaborationType") == 2)
      {
        serverShare = [folderCopy serverShare];
        ic_nonOwnerInvitedParticipantsCount = [serverShare ic_nonOwnerInvitedParticipantsCount];
        ic_nonOwnerAcceptedParticipantsCount = [serverShare ic_nonOwnerAcceptedParticipantsCount];
        accountHistogramManager2 = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
        [accountHistogramManager2 collabOwnedRootFolderInviteeCountHistogram];
        v45 = v68 = v38;
        v46 = ic_nonOwnerInvitedParticipantsCount;
        [v45 reportValue:ic_nonOwnerInvitedParticipantsCount];

        accountHistogramManager3 = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
        collabOwnedRootFolderAcceptanceCountHistogram = [accountHistogramManager3 collabOwnedRootFolderAcceptanceCountHistogram];
        [collabOwnedRootFolderAcceptanceCountHistogram reportValue:ic_nonOwnerAcceptedParticipantsCount];

        accountHistogramManager4 = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
        collabOwnedRootFolderNoReplyCountHistogram = [accountHistogramManager4 collabOwnedRootFolderNoReplyCountHistogram];
        v36 = selfCopy;
        [collabOwnedRootFolderNoReplyCountHistogram reportValue:(ic_nonOwnerInvitedParticipantsCount - ic_nonOwnerAcceptedParticipantsCount)];

        v38 = v68;
        accountHistogramManager5 = [(ICNASnapshotReporter *)selfCopy accountHistogramManager];
        collabOwnedRootFolderAcceptanceRatioHistogram = [accountHistogramManager5 collabOwnedRootFolderAcceptanceRatioHistogram];
        [collabOwnedRootFolderAcceptanceRatioHistogram reportValue:ic_nonOwnerAcceptedParticipantsCount / v46];
      }

      accountHistogramManager6 = [(ICNASnapshotReporter *)v36 accountHistogramManager];
      folderDirectNoteCountHistogram = [accountHistogramManager6 folderDirectNoteCountHistogram];
      [folderDirectNoteCountHistogram reportValue:v35];

      [v18 setCountOfFolders:{objc_msgSend(v18, "countOfFolders") + 1}];
      if ([folderCopy folderType] == 2)
      {
        v69 = v38;
        [v18 setCountOfCustomSmartFolders:{objc_msgSend(v18, "countOfCustomSmartFolders") + 1}];
        smartFolderQuery = [folderCopy smartFolderQuery];
        managedObjectContext = [folderCopy managedObjectContext];
        account = [folderCopy account];
        objectID = [account objectID];
        v59 = [smartFolderQuery filterSelectionWithManagedObjectContext:managedObjectContext account:objectID];

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        filterTypeSelections = [v59 filterTypeSelections];
        v61 = [filterTypeSelections countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v76;
          do
          {
            for (k = 0; k != v62; ++k)
            {
              if (*v76 != v63)
              {
                objc_enumerationMutation(filterTypeSelections);
              }

              filterType = [*(*(&v75 + 1) + 8 * k) filterType];
              if (filterType > 4)
              {
                if (filterType > 7)
                {
                  switch(filterType)
                  {
                    case 8:
                      [v18 setCountOfSmartFoldersWithQuickNotesFilter:{objc_msgSend(v18, "countOfSmartFoldersWithQuickNotesFilter") + 1}];
                      break;
                    case 9:
                      [v18 setCountOfSmartFoldersWithPinnedNotesFilter:{objc_msgSend(v18, "countOfSmartFoldersWithPinnedNotesFilter") + 1}];
                      break;
                    case 10:
                      [v18 setCountOfSmartFoldersWithLockedNotesFilter:{objc_msgSend(v18, "countOfSmartFoldersWithLockedNotesFilter") + 1}];
                      break;
                  }
                }

                else if (filterType == 5)
                {
                  [v18 setCountOfSmartFoldersWithChecklistsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithChecklistsFilter") + 1}];
                }

                else if (filterType == 6)
                {
                  [v18 setCountOfSmartFoldersWithAttachmentsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithAttachmentsFilter") + 1}];
                }

                else
                {
                  [v18 setCountOfSmartFoldersWithFoldersFilter:{objc_msgSend(v18, "countOfSmartFoldersWithFoldersFilter") + 1}];
                }
              }

              else if (filterType > 1)
              {
                if (filterType == 2)
                {
                  [v18 setCountOfSmartFoldersWithDateModifiedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithDateModifiedFilter") + 1}];
                }

                else if (filterType == 3)
                {
                  [v18 setCountOfSmartFoldersWithSharedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithSharedFilter") + 1}];
                }

                else
                {
                  [v18 setCountOfSmartFoldersWithMentionsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithMentionsFilter") + 1}];
                }
              }

              else if (filterType == -1)
              {
                [v18 setCountOfSmartFoldersWithUnknownFilter:{objc_msgSend(v18, "countOfSmartFoldersWithUnknownFilter") + 1}];
              }

              else if (filterType)
              {
                if (filterType == 1)
                {
                  [v18 setCountOfSmartFoldersWithDateCreatedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithDateCreatedFilter") + 1}];
                }
              }

              else
              {
                [v18 setCountOfSmartFoldersWithTagsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithTagsFilter") + 1}];
              }
            }

            v62 = [filterTypeSelections countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v62);
        }

        v38 = v69;
      }

      [v18 updateFolderCollaborationMatrixWithCollaborationStatus:v37 collaborationType:v38];
      [deviceCopy updateFolderCollaborationMatrixWithCollaborationStatus:v37 collaborationType:v38];
    }

    [objc_opt_class() faultOutObject:folderCopy];
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)snapshotHTMLFolder:(id)folder reportedDataToAccount:(id)account reportedDataToDevice:(id)device noteReportToAccount:(id)toAccount reportedDataFromNoteToDevice:(id)toDevice
{
  v43 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  accountCopy = account;
  deviceCopy = device;
  toAccountCopy = toAccount;
  toDeviceCopy = toDevice;
  htmlContext = [(ICNASnapshotReporter *)self htmlContext];
  v18 = [htmlContext allVisibleNotesInFolder:folderCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v37 = deviceCopy;
  if (v20)
  {
    v21 = v20;
    v35 = accountCopy;
    v36 = folderCopy;
    v22 = 0;
    v23 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        [(ICNASnapshotReporter *)self snapshotHTMLNote:v25 reportedDataToAccount:toAccountCopy reportedDataToDevice:toDeviceCopy];
        objc_autoreleasePoolPop(v26);
      }

      v22 += v21;
      v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
    v27 = v22;
    accountCopy = v35;
    folderCopy = v36;
    deviceCopy = v37;
  }

  else
  {
    v27 = 0.0;
  }

  if ([folderCopy isCustomFolder])
  {
    v28 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
    v29 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
    accountHistogramManager = [(ICNASnapshotReporter *)self accountHistogramManager];
    topLevelFolderTotalNoteCountHistogram = [accountHistogramManager topLevelFolderTotalNoteCountHistogram];
    [topLevelFolderTotalNoteCountHistogram reportValue:v27];

    accountHistogramManager2 = [(ICNASnapshotReporter *)self accountHistogramManager];
    folderDirectNoteCountHistogram = [accountHistogramManager2 folderDirectNoteCountHistogram];
    [folderDirectNoteCountHistogram reportValue:v27];

    deviceCopy = v37;
    [accountCopy setCountOfFolders:{objc_msgSend(accountCopy, "countOfFolders") + 1}];
    [accountCopy updateFolderCollaborationMatrixWithCollaborationStatus:v28 collaborationType:v29];
    [v37 updateFolderCollaborationMatrixWithCollaborationStatus:v28 collaborationType:v29];
  }

  [objc_opt_class() faultOutObject:folderCopy];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)snapshotModernNote:(id)note reportedDataToAccount:(id)account reportToDevice:(id)device reportedDataFromAttachmentToAccount:(id)toAccount
{
  v157 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  accountCopy = account;
  deviceCopy = device;
  toAccountCopy = toAccount;
  v127 = noteCopy;
  if ([noteCopy isUnsupported])
  {
    [objc_opt_class() faultOutObject:noteCopy];
  }

  else
  {
    v117 = [(ICNAEventReporter *)self collaborationTypeForModernObject:noteCopy];
    v116 = [(ICNAEventReporter *)self collaborationStatusForModernObject:noteCopy];
    [accountCopy updateNoteCollaborationMatrixWithCollaborationStatus:v116 collaborationType:v117];
    if ([v116 collaborationStatus] == 1 && objc_msgSend(v117, "collaborationType") == 2)
    {
      serverShare = [noteCopy serverShare];
      ic_nonOwnerInvitedParticipantsCount = [serverShare ic_nonOwnerInvitedParticipantsCount];
      ic_nonOwnerAcceptedParticipantsCount = [serverShare ic_nonOwnerAcceptedParticipantsCount];
      accountHistogramManager = [(ICNASnapshotReporter *)self accountHistogramManager];
      collabOwnedSingleNoteInviteeCountHistogram = [accountHistogramManager collabOwnedSingleNoteInviteeCountHistogram];
      [collabOwnedSingleNoteInviteeCountHistogram reportValue:ic_nonOwnerInvitedParticipantsCount];

      accountHistogramManager2 = [(ICNASnapshotReporter *)self accountHistogramManager];
      collabOwnedSingleNoteAcceptanceCountHistogram = [accountHistogramManager2 collabOwnedSingleNoteAcceptanceCountHistogram];
      [collabOwnedSingleNoteAcceptanceCountHistogram reportValue:ic_nonOwnerAcceptedParticipantsCount];

      accountHistogramManager3 = [(ICNASnapshotReporter *)self accountHistogramManager];
      collabOwnedSingleNoteNoReplyCountHistogram = [accountHistogramManager3 collabOwnedSingleNoteNoReplyCountHistogram];
      [collabOwnedSingleNoteNoReplyCountHistogram reportValue:(ic_nonOwnerInvitedParticipantsCount - ic_nonOwnerAcceptedParticipantsCount)];

      accountHistogramManager4 = [(ICNASnapshotReporter *)self accountHistogramManager];
      collabOwnedSingleNoteAcceptanceRatioHistogram = [accountHistogramManager4 collabOwnedSingleNoteAcceptanceRatioHistogram];
      [collabOwnedSingleNoteAcceptanceRatioHistogram reportValue:ic_nonOwnerAcceptedParticipantsCount / ic_nonOwnerInvitedParticipantsCount];
    }

    textStorage = [v127 textStorage];
    v126 = textStorage;
    v152 = 0;
    v153 = &v152;
    v154 = 0x2020000000;
    v155 = 0;
    v148 = 0;
    v149 = &v148;
    v150 = 0x2020000000;
    v151 = 0;
    v24 = textStorage;
    if (textStorage)
    {
      v25 = [textStorage length];
      v144 = 0;
      v145 = &v144;
      v146 = 0x2020000000;
      v147 = 0;
      v26 = [v24 length];
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __116__ICNASnapshotReporter_snapshotModernNote_reportedDataToAccount_reportToDevice_reportedDataFromAttachmentToAccount___block_invoke;
      v139[3] = &unk_2799AF368;
      v141 = &v152;
      v140 = accountCopy;
      v142 = &v144;
      v143 = &v148;
      [v24 enumerateAttributesInRange:0 options:v26 usingBlock:{0, v139}];

      _Block_object_dispose(&v144, 8);
      v27 = v25;
    }

    else
    {
      v27 = 0.0;
    }

    v28 = objc_alloc_init(_ICNAAttachmentReportToNote);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    visibleAttachments = [v127 visibleAttachments];
    v30 = [visibleAttachments countByEnumeratingWithState:&v135 objects:v156 count:16];
    if (v30)
    {
      v31 = *v136;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v136 != v31)
          {
            objc_enumerationMutation(visibleAttachments);
          }

          v33 = *(*(&v135 + 1) + 8 * i);
          v34 = objc_autoreleasePoolPush();
          parentAttachment = [v33 parentAttachment];
          v36 = parentAttachment == 0;

          if (v36)
          {
            [(ICNASnapshotReporter *)self snapshotAttachment:v33 reportedDataToNote:v28 reportedDataToAccount:toAccountCopy];
          }

          objc_autoreleasePoolPop(v34);
        }

        v30 = [visibleAttachments countByEnumeratingWithState:&v135 objects:v156 count:16];
      }

      while (v30);
    }

    countOfAudioAttachments = [(_ICNAAttachmentReportToNote *)v28 countOfAudioAttachments];
    countOfAttachmentByUTI = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v38 = [countOfAttachmentByUTI objectForKeyedSubscript:*MEMORY[0x277D35BC8]];
    unsignedIntegerValue = [v38 unsignedIntegerValue];

    countOfAttachmentByUTI2 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v40 = [countOfAttachmentByUTI2 objectForKeyedSubscript:*MEMORY[0x277D35BD8]];
    unsignedIntegerValue2 = [v40 unsignedIntegerValue];

    countOfAttachmentByUTI3 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v42 = [countOfAttachmentByUTI3 objectForKeyedSubscript:*MEMORY[0x277D35BD0]];
    unsignedIntegerValue3 = [v42 unsignedIntegerValue];

    countOfAttachmentByUTI4 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v44 = [countOfAttachmentByUTI4 objectForKeyedSubscript:*MEMORY[0x277D35BC0]];
    unsignedIntegerValue4 = [v44 unsignedIntegerValue];

    countOfAttachmentByUTI5 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v46 = [countOfAttachmentByUTI5 objectForKeyedSubscript:*MEMORY[0x277D35C08]];
    unsignedIntegerValue5 = [v46 unsignedIntegerValue];

    countOfAttachmentByUTI6 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    identifier = [*MEMORY[0x277CE1E90] identifier];
    v49 = [countOfAttachmentByUTI6 objectForKeyedSubscript:identifier];
    unsignedIntegerValue6 = [v49 unsignedIntegerValue];

    countOfAttachmentByUTI7 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v51 = [countOfAttachmentByUTI7 objectForKeyedSubscript:@"com.apple.notes.analytics.appleMaps"];
    unsignedIntegerValue7 = [v51 unsignedIntegerValue];

    countOfAttachmentByUTI8 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v53 = [countOfAttachmentByUTI8 objectForKeyedSubscript:*MEMORY[0x277D35C00]];
    unsignedIntegerValue8 = [v53 unsignedIntegerValue];

    countOfAttachmentByUTI9 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v55 = [countOfAttachmentByUTI9 objectForKeyedSubscript:*MEMORY[0x277D35BE8]];
    unsignedIntegerValue9 = [v55 unsignedIntegerValue];

    countOfAttachmentByUTI10 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v57 = [countOfAttachmentByUTI10 objectForKeyedSubscript:*MEMORY[0x277D35BF0]];
    unsignedIntegerValue10 = [v57 unsignedIntegerValue];

    countOfAttachmentByUTI11 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v59 = [countOfAttachmentByUTI11 objectForKeyedSubscript:*MEMORY[0x277D35BF8]];
    unsignedIntegerValue11 = [v59 unsignedIntegerValue];

    countOfAttachmentByUTI12 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v61 = [countOfAttachmentByUTI12 objectForKeyedSubscript:*MEMORY[0x277D35BE0]];
    unsignedIntegerValue12 = [v61 unsignedIntegerValue];

    countOfAttachments = [(_ICNAAttachmentReportToNote *)v28 countOfAttachments];
    accountHistogramManager5 = [(ICNASnapshotReporter *)self accountHistogramManager];
    noteCharCountHistogram = [accountHistogramManager5 noteCharCountHistogram];
    [noteCharCountHistogram reportValue:v27];

    accountHistogramManager6 = [(ICNASnapshotReporter *)self accountHistogramManager];
    attachmentCountPerNoteHistogram = [accountHistogramManager6 attachmentCountPerNoteHistogram];
    [attachmentCountPerNoteHistogram reportValue:{-[_ICNAAttachmentReportToNote countOfAttachments](v28, "countOfAttachments")}];

    accountHistogramManager7 = [(ICNASnapshotReporter *)self accountHistogramManager];
    drawingCountPerNoteHistogram = [accountHistogramManager7 drawingCountPerNoteHistogram];
    [drawingCountPerNoteHistogram reportValue:(unsignedIntegerValue3 + unsignedIntegerValue2 + unsignedIntegerValue4)];

    countOfInlineDrawingV1FingerStrokes = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV1FingerStrokes];
    countOfInlineDrawingV2FingerStrokes = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV2FingerStrokes];
    countOfInlineDrawingV1PencilStrokes = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV1PencilStrokes];
    countOfInlineDrawingV2PencilStrokes = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV2PencilStrokes];
    countOfFullscreenDrawingStrokes = [(_ICNAAttachmentReportToNote *)v28 countOfFullscreenDrawingStrokes];
    accountHistogramManager8 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingFingerStrokesCountPerNoteHistogram = [accountHistogramManager8 inlineDrawingFingerStrokesCountPerNoteHistogram];
    v75 = countOfInlineDrawingV2FingerStrokes + countOfInlineDrawingV1FingerStrokes;
    [inlineDrawingFingerStrokesCountPerNoteHistogram reportValue:v75];

    accountHistogramManager9 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingPencilStrokesCountPerNoteHistogram = [accountHistogramManager9 inlineDrawingPencilStrokesCountPerNoteHistogram];
    v78 = countOfInlineDrawingV2PencilStrokes + countOfInlineDrawingV1PencilStrokes;
    [inlineDrawingPencilStrokesCountPerNoteHistogram reportValue:v78];

    accountHistogramManager10 = [(ICNASnapshotReporter *)self accountHistogramManager];
    fullScreenDrawingStrokesCountPerNoteHistogram = [accountHistogramManager10 fullScreenDrawingStrokesCountPerNoteHistogram];
    [fullScreenDrawingStrokesCountPerNoteHistogram reportValue:countOfFullscreenDrawingStrokes];

    accountHistogramManager11 = [(ICNASnapshotReporter *)self accountHistogramManager];
    totalStrokesCountPerNoteHistogram = [accountHistogramManager11 totalStrokesCountPerNoteHistogram];
    [totalStrokesCountPerNoteHistogram reportValue:(v78 + v75 + countOfFullscreenDrawingStrokes)];

    isSystemPaper = [v127 isSystemPaper];
    [accountCopy setCountOfNotes:{objc_msgSend(accountCopy, "countOfNotes") + 1}];
    [accountCopy setCountOfChecklists:{v149[3] + objc_msgSend(accountCopy, "countOfChecklists")}];
    [deviceCopy setCountOfModernNotes:{objc_msgSend(deviceCopy, "countOfModernNotes") + 1}];
    if (isSystemPaper)
    {
      [deviceCopy setCountOfScrapPapers:{objc_msgSend(deviceCopy, "countOfScrapPapers") + 1}];
    }

    if ([v127 isPinned])
    {
      [accountCopy setCountOfPinnedNotes:{objc_msgSend(accountCopy, "countOfPinnedNotes") + 1}];
      [deviceCopy setCountOfPinnedNotes:{objc_msgSend(deviceCopy, "countOfPinnedNotes") + 1}];
      [accountCopy updateNoteTwoFactorMatrixWithIndex:8];
      if (isSystemPaper)
      {
        [accountCopy setCountOfPinnedScrapPapers:{objc_msgSend(accountCopy, "countOfPinnedScrapPapers") + 1}];
      }
    }

    if ([v127 isPasswordProtected])
    {
      [accountCopy setCountOfLockedNotes:{objc_msgSend(accountCopy, "countOfLockedNotes") + 1}];
      [accountCopy updateNoteTwoFactorMatrixWithIndex:9];
      accountHistogramManager12 = [(ICNASnapshotReporter *)self accountHistogramManager];
      passwordProtectedNoteWeeklyAgeHistogram = [accountHistogramManager12 passwordProtectedNoteWeeklyAgeHistogram];
      creationDate = [v127 creationDate];
      [passwordProtectedNoteWeeklyAgeHistogram reportValue:{-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", creationDate)}];

      if (isSystemPaper)
      {
        [accountCopy setCountOfLockedScrapPapers:{objc_msgSend(accountCopy, "countOfLockedScrapPapers") + 1}];
      }

      if ([MEMORY[0x277D35E90] shouldAuthenticateWithCustomPasswordForObject:v127])
      {
        [accountCopy setCountOfV1LockedNotes:{objc_msgSend(accountCopy, "countOfV1LockedNotes") + 1}];
        account = [v127 account];
        v88 = [account resolvedLockedNotesMode] == 2;

        if (v88)
        {
          [accountCopy setCountOfLockedNotesWithDivergedMode:{objc_msgSend(accountCopy, "countOfLockedNotesWithDivergedMode") + 1}];
        }

        account2 = [v127 account];
        cryptoStrategy = [account2 cryptoStrategy];
        v91 = [cryptoStrategy hasSameKeyAsObject:v127];

        if ((v91 & 1) == 0)
        {
          [accountCopy setCountOfLockedNotesWithDivergedPassword:{objc_msgSend(accountCopy, "countOfLockedNotesWithDivergedPassword") + 1}];
        }
      }

      else if ([MEMORY[0x277D35E90] shouldAuthenticateWithDevicePasswordForObject:v127])
      {
        [accountCopy setCountOfV2LockedNotes:{objc_msgSend(accountCopy, "countOfV2LockedNotes") + 1}];
        account3 = [v127 account];
        v93 = [account3 resolvedLockedNotesMode] == 1;

        if (v93)
        {
          [accountCopy setCountOfLockedNotesWithDivergedMode:{objc_msgSend(accountCopy, "countOfLockedNotesWithDivergedMode") + 1}];
        }
      }
    }

    if ([v127 isSharedViaICloud])
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:0];
      if (isSystemPaper)
      {
        [accountCopy setCountOfCollaboratedScrapPapers:{objc_msgSend(accountCopy, "countOfCollaboratedScrapPapers") + 1}];
      }
    }

    outlineState = [v127 outlineState];
    collapsedUUIDs = [outlineState collapsedUUIDs];
    v96 = [collapsedUUIDs count] == 0;

    if (!v96)
    {
      [accountCopy setCountOfNotesWithCollapsedSections:{objc_msgSend(accountCopy, "countOfNotesWithCollapsedSections") + 1}];
    }

    if (*(v153 + 24) == 1)
    {
      [accountCopy setCountOfNotesWithChecklists:{objc_msgSend(accountCopy, "countOfNotesWithChecklists") + 1}];
    }

    if (unsignedIntegerValue | unsignedIntegerValue11)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:1];
      [accountCopy setCountOfNotesWithDocScan:{objc_msgSend(accountCopy, "countOfNotesWithDocScan") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithDocScan:{objc_msgSend(accountCopy, "countOfScrapPapersWithDocScan") + 1}];
      }
    }

    if (unsignedIntegerValue2)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:2];
      [accountCopy setCountOfNotesWithInlineDrawingV1:{objc_msgSend(accountCopy, "countOfNotesWithInlineDrawingV1") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithInlineDrawingV1:{objc_msgSend(accountCopy, "countOfScrapPapersWithInlineDrawingV1") + 1}];
      }
    }

    if (unsignedIntegerValue3)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:3];
      [accountCopy setCountOfNotesWithInlineDrawingV2:{objc_msgSend(accountCopy, "countOfNotesWithInlineDrawingV2") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithInlineDrawingV2:{objc_msgSend(accountCopy, "countOfScrapPapersWithInlineDrawingV2") + 1}];
      }
    }

    if (unsignedIntegerValue4)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:4];
      [accountCopy setCountOfNotesWithFullscreenDrawing:{objc_msgSend(accountCopy, "countOfNotesWithFullscreenDrawing") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithFullscreenDrawing:{objc_msgSend(accountCopy, "countOfScrapPapersWithFullscreenDrawing") + 1}];
      }
    }

    if (unsignedIntegerValue5)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:5];
      [accountCopy setCountOfNotesWithTable:{objc_msgSend(accountCopy, "countOfNotesWithTable") + 1}];
      [deviceCopy setCountOfModernNotesWithTable:{objc_msgSend(deviceCopy, "countOfModernNotesWithTable") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithTables:{objc_msgSend(accountCopy, "countOfScrapPapersWithTables") + 1}];
        [deviceCopy setCountOfScrapPapersWithTables:{objc_msgSend(deviceCopy, "countOfScrapPapersWithTables") + 1}];
      }
    }

    if (countOfAttachments - (unsignedIntegerValue11 + unsignedIntegerValue12) - (unsignedIntegerValue + countOfAudioAttachments + unsignedIntegerValue2 + unsignedIntegerValue3 + unsignedIntegerValue4 + unsignedIntegerValue5 + unsignedIntegerValue6 + unsignedIntegerValue7 + unsignedIntegerValue8 + unsignedIntegerValue9 + unsignedIntegerValue10) >= 1)
    {
      [accountCopy updateNoteTwoFactorMatrixWithIndex:6];
      [accountCopy setCountOfNotesWithOtherAttachments:{objc_msgSend(accountCopy, "countOfNotesWithOtherAttachments") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithOtherAttachments:{objc_msgSend(accountCopy, "countOfScrapPapersWithOtherAttachments") + 1}];
      }
    }

    if (unsignedIntegerValue6)
    {
      [accountCopy setCountOfNotesWithRichURL:{objc_msgSend(accountCopy, "countOfNotesWithRichURL") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithRichUrl:{objc_msgSend(accountCopy, "countOfScrapPapersWithRichUrl") + 1}];
      }
    }

    if (unsignedIntegerValue7)
    {
      [accountCopy setCountOfNotesWithMapLink:{objc_msgSend(accountCopy, "countOfNotesWithMapLink") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithMapLink:{objc_msgSend(accountCopy, "countOfScrapPapersWithMapLink") + 1}];
      }
    }

    if (unsignedIntegerValue8)
    {
      [accountCopy setCountOfNotesWithPaperKit:{objc_msgSend(accountCopy, "countOfNotesWithPaperKit") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithPaperKit:{objc_msgSend(accountCopy, "countOfScrapPapersWithPaperKit") + 1}];
      }
    }

    if (unsignedIntegerValue9 || unsignedIntegerValue10 || unsignedIntegerValue11)
    {
      [accountCopy setCountOfNotesWithPaperDocument:{objc_msgSend(accountCopy, "countOfNotesWithPaperDocument") + 1}];
    }

    if (unsignedIntegerValue12 | unsignedIntegerValue10)
    {
      [accountCopy setCountOfNotesWithPDF:{objc_msgSend(accountCopy, "countOfNotesWithPDF") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasDeepLink])
    {
      [accountCopy setCountOfNotesWithDeepLink:{objc_msgSend(accountCopy, "countOfNotesWithDeepLink") + 1}];
      [deviceCopy setCountOfModernNotesWithDeeplink:{objc_msgSend(deviceCopy, "countOfModernNotesWithDeeplink") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithDeepLink:{objc_msgSend(accountCopy, "countOfScrapPapersWithDeepLink") + 1}];
        [deviceCopy setCountOfScrapPapersWithDeepLink:{objc_msgSend(deviceCopy, "countOfScrapPapersWithDeepLink") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasSafariHighlight])
    {
      [deviceCopy setCountOfModernNotesWithWebHighlights:{objc_msgSend(deviceCopy, "countOfModernNotesWithWebHighlights") + 1}];
      if (isSystemPaper)
      {
        [deviceCopy setCountOfScrapPapersWithWebHighlights:{objc_msgSend(deviceCopy, "countOfScrapPapersWithWebHighlights") + 1}];
      }
    }

    if (unsignedIntegerValue3 + unsignedIntegerValue2 + unsignedIntegerValue8 != -unsignedIntegerValue4)
    {
      [deviceCopy setCountOfModernNotesWithDrawing:{objc_msgSend(deviceCopy, "countOfModernNotesWithDrawing") + 1}];
      if (isSystemPaper)
      {
        [deviceCopy setCountOfScrapPapersWithDrawing:{objc_msgSend(deviceCopy, "countOfScrapPapersWithDrawing") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasImages])
    {
      [deviceCopy setCountOfModernNotesWithImage:{objc_msgSend(deviceCopy, "countOfModernNotesWithImage") + 1}];
      if (isSystemPaper)
      {
        [deviceCopy setCountOfScrapPapersWithImage:{objc_msgSend(deviceCopy, "countOfScrapPapersWithImage") + 1}];
      }
    }

    if (unsignedIntegerValue7 != -unsignedIntegerValue6)
    {
      [deviceCopy setCountOfModernNotesWithLinks:{objc_msgSend(deviceCopy, "countOfModernNotesWithLinks") + 1}];
      if (isSystemPaper)
      {
        [deviceCopy setCountOfScrapPapersWithLinks:{objc_msgSend(deviceCopy, "countOfScrapPapersWithLinks") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 countOfAudioAttachments])
    {
      [accountCopy setCountOfNotesWithAttachmentAudio:{objc_msgSend(accountCopy, "countOfNotesWithAttachmentAudio") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasAudioTranscript])
    {
      [accountCopy setCountOfNotesWithAttachmentAudioTranscript:{objc_msgSend(accountCopy, "countOfNotesWithAttachmentAudioTranscript") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasAudioSummary])
    {
      [accountCopy setCountOfNotesWithAttachmentAudioSummary:{objc_msgSend(accountCopy, "countOfNotesWithAttachmentAudioSummary") + 1}];
    }

    [accountCopy setCountOfAudioAttachments:{objc_msgSend(accountCopy, "countOfAudioAttachments") + -[_ICNAAttachmentReportToNote countOfAudioAttachments](v28, "countOfAudioAttachments")}];
    [accountCopy setCountOfAudioAttachmentsRecordedInNotes:{objc_msgSend(accountCopy, "countOfAudioAttachmentsRecordedInNotes") + -[_ICNAAttachmentReportToNote countOfAudioAttachmentsRecordedInNotes](v28, "countOfAudioAttachmentsRecordedInNotes")}];
    [accountCopy setCountOfAudioAttachmentsWithAppendedAudio:{objc_msgSend(accountCopy, "countOfAudioAttachmentsWithAppendedAudio") + -[_ICNAAttachmentReportToNote countOfAudioAttachmentsWithAppendedAudio](v28, "countOfAudioAttachmentsWithAppendedAudio")}];
    v97 = [objc_opt_class() inlineAttachmentReportForModernNote:v127 faultOutInlineAttachmentsAfterDone:1];
    v144 = 0;
    v145 = &v144;
    v146 = 0x2020000000;
    v147 = 0;
    v131 = 0;
    v132 = &v131;
    v133 = 0x2020000000;
    v134 = 0;
    if ([v97 countOfTags])
    {
      [accountCopy setCountOfNotesWithTags:{objc_msgSend(accountCopy, "countOfNotesWithTags") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithTags:{objc_msgSend(accountCopy, "countOfScrapPapersWithTags") + 1}];
      }

      accountHistogramManager13 = [(ICNASnapshotReporter *)self accountHistogramManager];
      tagCountPerNoteHistogram = [accountHistogramManager13 tagCountPerNoteHistogram];
      [tagCountPerNoteHistogram reportValue:{objc_msgSend(v97, "countOfTags")}];

      accountHistogramManager14 = [(ICNASnapshotReporter *)self accountHistogramManager];
      distinctTagCountPerNoteHistogram = [accountHistogramManager14 distinctTagCountPerNoteHistogram];
      [distinctTagCountPerNoteHistogram reportValue:{objc_msgSend(v97, "countOfDistinctTags")}];
    }

    if ([v97 countOfMentions])
    {
      [accountCopy setCountOfNotesWithMentions:{objc_msgSend(accountCopy, "countOfNotesWithMentions") + 1}];
      if (isSystemPaper)
      {
        [accountCopy setCountOfScrapPapersWithMentions:{objc_msgSend(accountCopy, "countOfScrapPapersWithMentions") + 1}];
      }

      accountHistogramManager15 = [(ICNASnapshotReporter *)self accountHistogramManager];
      mentionCountPerNoteHistogram = [accountHistogramManager15 mentionCountPerNoteHistogram];
      [mentionCountPerNoteHistogram reportValue:{objc_msgSend(v97, "countOfMentions")}];

      accountHistogramManager16 = [(ICNASnapshotReporter *)self accountHistogramManager];
      distinctMentionCountPerNoteHistogram = [accountHistogramManager16 distinctMentionCountPerNoteHistogram];
      [distinctMentionCountPerNoteHistogram reportValue:{objc_msgSend(v97, "countOfDistinctMentions")}];
    }

    if ([v97 countOfNoteLinks])
    {
      *(v145 + 24) = 1;
    }

    if ([v97 countOfFolderLinks])
    {
      *(v132 + 24) = 1;
    }

    if ([v97 countOfCalculateResults] || objc_msgSend(v97, "countOfCalculateGraphExpressions"))
    {
      [(_ICNAAttachmentReportToNote *)v28 setHasMathUsage:1];
    }

    if (v126)
    {
      ic_range = [v126 ic_range];
      v107 = *MEMORY[0x277D740E8];
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __116__ICNASnapshotReporter_snapshotModernNote_reportedDataToAccount_reportToDevice_reportedDataFromAttachmentToAccount___block_invoke_2;
      v130[3] = &unk_2799AF390;
      v130[4] = self;
      v130[5] = &v144;
      v130[6] = &v131;
      [v126 enumerateAttribute:v107 inRange:ic_range options:v108 usingBlock:{0, v130}];
    }

    if (*(v145 + 24) == 1)
    {
      [accountCopy setCountOfNotesWithNoteLink:{objc_msgSend(accountCopy, "countOfNotesWithNoteLink") + 1}];
    }

    if (*(v132 + 24) == 1)
    {
      [accountCopy setCountOfNotesWithFolderLink:{objc_msgSend(accountCopy, "countOfNotesWithFolderLink") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasMathUsage])
    {
      [accountCopy setCountOfNotesWithMathUsage:{objc_msgSend(accountCopy, "countOfNotesWithMathUsage") + 1}];
    }

    if (isSystemPaper)
    {
      [accountCopy setScrapPaperCount:{objc_msgSend(accountCopy, "scrapPaperCount") + 1}];
    }

    [accountCopy completeTwoFactorMatrixReportingForCurrentNote];
    [objc_opt_class() faultOutObject:v127];
    _Block_object_dispose(&v131, 8);
    _Block_object_dispose(&v144, 8);

    _Block_object_dispose(&v148, 8);
    _Block_object_dispose(&v152, 8);
  }

  v109 = *MEMORY[0x277D85DE8];
}

void __116__ICNASnapshotReporter_snapshotModernNote_reportedDataToAccount_reportToDevice_reportedDataFromAttachmentToAccount___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  if ([v6 style] == 103)
  {
    v3 = *(*(a1 + 40) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      [*(a1 + 32) updateNoteTwoFactorMatrixWithIndex:7];
    }

    v4 = *(*(a1 + 48) + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      *(v4 + 24) = 1;
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 8);
    if (*(v5 + 24) == 1)
    {
      *(v5 + 24) = 0;
    }
  }
}

void __116__ICNASnapshotReporter_snapshotModernNote_reportedDataToAccount_reportToDevice_reportedDataFromAttachmentToAccount___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_16;
    }

    v7 = [MEMORY[0x277CBEBC0] URLWithString:v11];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = [*(a1 + 32) linkContentTypeEnumForURL:v7];
  if (v9 == 1)
  {
    v10 = 40;
    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = 48;
LABEL_11:
    *(*(*(a1 + v10) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && a5 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    *a5 = 1;
  }

LABEL_16:
}

- (void)snapshotHTMLNote:(id)note reportedDataToAccount:(id)account reportedDataToDevice:(id)device
{
  accountCopy = account;
  noteCopy = note;
  [accountCopy setCountOfNotes:{objc_msgSend(accountCopy, "countOfNotes") + 1}];
  v13 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v9 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  [accountCopy updateNoteCollaborationMatrixWithCollaborationStatus:v13 collaborationType:v9];

  accountHistogramManager = [(ICNASnapshotReporter *)self accountHistogramManager];
  noteCharCountHistogram = [accountHistogramManager noteCharCountHistogram];
  contentAsPlainText = [noteCopy contentAsPlainText];
  [noteCharCountHistogram reportValue:{objc_msgSend(contentAsPlainText, "length")}];

  [objc_opt_class() faultOutObject:noteCopy];
}

- (void)snapshotAttachment:(id)attachment reportedDataToNote:(id)note reportedDataToAccount:(id)account
{
  attachmentCopy = attachment;
  noteCopy = note;
  accountCopy = account;
  v10 = [ICNAEventReporter analyticsTypeUTIAttachment:attachmentCopy];
  if ([attachmentCopy isUnsupported])
  {
    goto LABEL_38;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35BC8]])
  {
    v11 = [(ICNASnapshotReporter *)self pageCountForDocScanAttachment:attachmentCopy];
    accountHistogramManager = [(ICNASnapshotReporter *)self accountHistogramManager];
    docScanPageCountHistogram = [accountHistogramManager docScanPageCountHistogram];
    [docScanPageCountHistogram reportValue:v11];
LABEL_6:

    goto LABEL_7;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35C08]])
  {
    accountHistogramManager = [(ICNASnapshotReporter *)self tableSnapshotItemDataForTableAttachment:attachmentCopy];
    tableRowCount = [accountHistogramManager tableRowCount];
    unsignedIntegerValue = [tableRowCount unsignedIntegerValue];

    tableColumnCount = [accountHistogramManager tableColumnCount];
    unsignedIntegerValue2 = [tableColumnCount unsignedIntegerValue];

    accountHistogramManager2 = [(ICNASnapshotReporter *)self accountHistogramManager];
    tableRowCountHistogram = [accountHistogramManager2 tableRowCountHistogram];
    [tableRowCountHistogram reportValue:unsignedIntegerValue];

    accountHistogramManager3 = [(ICNASnapshotReporter *)self accountHistogramManager];
    tableColumnCountHistogram = [accountHistogramManager3 tableColumnCountHistogram];
    [tableColumnCountHistogram reportValue:unsignedIntegerValue2];

    docScanPageCountHistogram = [(ICNASnapshotReporter *)self accountHistogramManager];
    tableCellCountHistogram = [docScanPageCountHistogram tableCellCountHistogram];
    [tableCellCountHistogram reportValue:(unsignedIntegerValue2 * unsignedIntegerValue)];

    goto LABEL_6;
  }

LABEL_7:
  v23 = *MEMORY[0x277D35BD8];
  if (([v10 isEqualToString:*MEMORY[0x277D35BD8]] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D35BD0]) & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D35BC0]))
  {
    goto LABEL_17;
  }

  v24 = [(ICNASnapshotReporter *)self drawingSnapshotItemDataForDrawingAttachment:attachmentCopy];
  [noteCopy reportDrawingWithSnapshotData:v24];
  if ([v10 isEqualToString:v23])
  {
    countOfInlineDrawingV1FingerStrokes = [v24 countOfInlineDrawingV1FingerStrokes];
    unsignedIntegerValue3 = [countOfInlineDrawingV1FingerStrokes unsignedIntegerValue];

    countOfInlineDrawingV1PencilStrokes = [v24 countOfInlineDrawingV1PencilStrokes];
    unsignedIntegerValue4 = [countOfInlineDrawingV1PencilStrokes unsignedIntegerValue];

    accountHistogramManager4 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV1TotalStrokeCountHistogram = [accountHistogramManager4 inlineDrawingV1TotalStrokeCountHistogram];
    v31 = (unsignedIntegerValue4 + unsignedIntegerValue3);
    [inlineDrawingV1TotalStrokeCountHistogram reportValue:v31];

    accountHistogramManager5 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV1PencilStrokeCountHistogram = [accountHistogramManager5 inlineDrawingV1PencilStrokeCountHistogram];
    [inlineDrawingV1PencilStrokeCountHistogram reportValue:unsignedIntegerValue4];

    accountHistogramManager6 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV1FingerStrokeCountHistogram = [accountHistogramManager6 inlineDrawingV1FingerStrokeCountHistogram];
    v36 = unsignedIntegerValue3;
    [inlineDrawingV1FingerStrokeCountHistogram reportValue:unsignedIntegerValue3];

    accountHistogramManager7 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV1FingerStrokeRatioHistogram = [accountHistogramManager7 inlineDrawingV1FingerStrokeRatioHistogram];
LABEL_14:
    v49 = inlineDrawingV1FingerStrokeRatioHistogram;
    v50 = v36 / v31;
    goto LABEL_15;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35BD0]])
  {
    countOfInlineDrawingV2FingerStrokes = [v24 countOfInlineDrawingV2FingerStrokes];
    unsignedIntegerValue5 = [countOfInlineDrawingV2FingerStrokes unsignedIntegerValue];

    countOfInlineDrawingV2PencilStrokes = [v24 countOfInlineDrawingV2PencilStrokes];
    unsignedIntegerValue6 = [countOfInlineDrawingV2PencilStrokes unsignedIntegerValue];

    accountHistogramManager8 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV2TotalStrokeCountHistogram = [accountHistogramManager8 inlineDrawingV2TotalStrokeCountHistogram];
    v31 = (unsignedIntegerValue6 + unsignedIntegerValue5);
    [inlineDrawingV2TotalStrokeCountHistogram reportValue:v31];

    accountHistogramManager9 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV2PencilStrokeCountHistogram = [accountHistogramManager9 inlineDrawingV2PencilStrokeCountHistogram];
    [inlineDrawingV2PencilStrokeCountHistogram reportValue:unsignedIntegerValue6];

    accountHistogramManager10 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV2FingerStrokeCountHistogram = [accountHistogramManager10 inlineDrawingV2FingerStrokeCountHistogram];
    v36 = unsignedIntegerValue5;
    [inlineDrawingV2FingerStrokeCountHistogram reportValue:unsignedIntegerValue5];

    accountHistogramManager7 = [(ICNASnapshotReporter *)self accountHistogramManager];
    inlineDrawingV1FingerStrokeRatioHistogram = [accountHistogramManager7 inlineDrawingV2FingerStrokeRatioHistogram];
    goto LABEL_14;
  }

  if (![v10 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    goto LABEL_16;
  }

  countOfFullscreenDrawingStrokes = [v24 countOfFullscreenDrawingStrokes];
  unsignedIntegerValue7 = [countOfFullscreenDrawingStrokes unsignedIntegerValue];

  accountHistogramManager7 = [(ICNASnapshotReporter *)self accountHistogramManager];
  inlineDrawingV1FingerStrokeRatioHistogram = [accountHistogramManager7 fullscreenDrawingStrokeCountHistogram];
  v49 = inlineDrawingV1FingerStrokeRatioHistogram;
  v50 = unsignedIntegerValue7;
LABEL_15:
  [inlineDrawingV1FingerStrokeRatioHistogram reportValue:v50];

LABEL_16:
LABEL_17:
  synapseData = [attachmentCopy synapseData];

  if (synapseData)
  {
    [noteCopy setHasDeepLink:1];
    if ([objc_opt_class() attachmentHasDeepLinkSafariHighlight:attachmentCopy])
    {
      [noteCopy setHasSafariHighlight:1];
    }
  }

  if ([attachmentCopy attachmentType] == 3)
  {
    [noteCopy setHasImages:1];
  }

  if ([attachmentCopy attachmentType] == 13)
  {
    objc_opt_class();
    attachmentModel = [attachmentCopy attachmentModel];
    v53 = ICDynamicCast();

    if ([v53 paperHasMath])
    {
      [noteCopy setHasMathUsage:1];
    }
  }

  if ([attachmentCopy attachmentType] == 4)
  {
    parentAttachment = [attachmentCopy parentAttachment];

    if (!parentAttachment)
    {
      [noteCopy setCountOfAudioAttachments:{objc_msgSend(noteCopy, "countOfAudioAttachments") + 1}];
      audioModel = [attachmentCopy audioModel];
      audioDocument = [audioModel audioDocument];
      if ([audioModel recordedInNotes])
      {
        [noteCopy setCountOfAudioAttachmentsRecordedInNotes:{objc_msgSend(noteCopy, "countOfAudioAttachmentsRecordedInNotes") + 1}];
      }

      transcriptAsPlainText = [audioDocument transcriptAsPlainText];
      v58 = [transcriptAsPlainText length];

      if (v58)
      {
        [noteCopy setHasAudioTranscript:1];
      }

      recordingSummaryAsPlainText = [audioDocument recordingSummaryAsPlainText];
      v60 = [recordingSummaryAsPlainText length];

      if (v60)
      {
        [noteCopy setHasAudioSummary:1];
      }

      orderedFragmentUUIDs = [audioDocument orderedFragmentUUIDs];
      v62 = [orderedFragmentUUIDs count];

      if (v62 >= 2)
      {
        [noteCopy setCountOfAudioAttachmentsWithAppendedAudio:{objc_msgSend(noteCopy, "countOfAudioAttachmentsWithAppendedAudio") + 1}];
      }
    }
  }

  [noteCopy reportAttachmentTypeUTI:v10];
  [accountCopy reportAttachmentTypeUTI:v10];
LABEL_38:
  [objc_opt_class() faultOutObject:attachmentCopy];
}

- (id)deviceSnapshotSummaryForDataType:(Class)type
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = +[ICNAController deviceID];
  v20 = [v4 saltedID:v5 forClass:type];

  v6 = [ICASDeviceSnapshotItemData alloc];
  v16 = +[ICNAController deviceModel];
  v7 = +[ICNAController devicePlatform];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController bioAuthEnabled](ICNAController, "bioAuthEnabled")}];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController localNotesEnabled](ICNAController, "localNotesEnabled")}];
  v17 = +[ICNAController osVersion];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioTranscriptEnabled](ICNAController, "audioTranscriptEnabled")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioSummaryEnabled](ICNAController, "audioSummaryEnabled")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController mathTextEnabled](ICNAController, "mathTextEnabled")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController mathHandwritingEnabled](ICNAController, "mathHandwritingEnabled")}];
  v12 = [(ICASDeviceSnapshotItemData *)v6 initWithDeviceModel:v16 devicePlatform:v7 bioAuthEnabled:v19 localNotesEnabled:v18 osVersion:v17 deviceID:v20 audioTranscriptEnabled:v8 audioSummaryEnabled:v9 mathTextEnabled:v10 mathHandwritingEnabled:v11];

  v21[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)userSnapshotSummaryForDataType:(Class)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = +[ICNAController userID];
  v6 = [v4 saltedID:v5 forClass:type];

  v7 = [ICASUserSnapshotItemData alloc];
  v8 = +[ICNAController storeFrontID];
  v9 = [(ICASUserSnapshotItemData *)v7 initWithUserID:v6 userStorefrontID:v8];

  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)pageCountForDocScanAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  attachmentModel = [attachmentCopy attachmentModel];

  v5 = ICDynamicCast();

  subAttachmentCount = [v5 subAttachmentCount];
  return subAttachmentCount;
}

- (id)drawingSnapshotItemDataForDrawingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:attachmentCopy];
  v6 = *MEMORY[0x277D35BD8];
  v30 = v5;
  if (([v5 isEqualToString:*MEMORY[0x277D35BD8]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D35BD0]))
  {
    attachmentModel = [attachmentCopy attachmentModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drawing = attachmentModel;
      handwritingRecognitionDrawing = [drawing handwritingRecognitionDrawing];
      v10 = handwritingRecognitionDrawing;
      if (handwritingRecognitionDrawing)
      {
        newDrawingFromMergeableData = handwritingRecognitionDrawing;
      }

      else
      {
        newDrawingFromMergeableData = [drawing newDrawingFromMergeableData];
      }

      commands = newDrawingFromMergeableData;

      v18 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:commands];
      strokes = [commands strokes];
      v16 = [strokes count] - v18;

      v20 = [v5 isEqualToString:v6];
      v13 = 0;
      if (v20)
      {
        v14 = 0;
      }

      else
      {
        v14 = v16;
      }

      if (v20)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }

      if (v20)
      {
        v17 = v18;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      attachmentModel = drawing;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    attachmentModel = [attachmentCopy attachmentModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drawing = [attachmentModel drawing];
      commands = [drawing commands];
      v13 = [commands count];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_9:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_22:
    v21 = attachmentCopy;

    goto LABEL_23;
  }

  v21 = attachmentCopy;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_23:
  v22 = [ICASDrawingSnapshotItemData alloc];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v28 = [(ICASDrawingSnapshotItemData *)v22 initWithCountOfInlineDrawingV1PencilStrokes:v23 countOfInlineDrawingV1FingerStrokes:v24 countOfInlineDrawingV2PencilStrokes:v25 countOfInlineDrawingV2FingerStrokes:v26 countOfFullscreenDrawingStrokes:v27];

  return v28;
}

- (id)tableSnapshotItemDataForTableAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  attachmentModel = [attachmentCopy attachmentModel];

  v5 = ICDynamicCast();

  table = [v5 table];
  v7 = table;
  if (table)
  {
    rowCount = [table rowCount];
    columnCount = [v7 columnCount];
  }

  else
  {
    columnCount = 0;
    rowCount = 0;
  }

  v10 = [ICASTableSnapshotItemData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:rowCount];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:columnCount];
  v13 = [(ICASTableSnapshotItemData *)v10 initWithTableRowCount:v11 tableColumnCount:v12];

  return v13;
}

- (id)snapshotItemDataForModernAccount:(id)account
{
  accountCopy = account;
  v5 = [(ICNAEventReporter *)self accountTypeForModernAccount:accountCopy];
  v6 = [(ICNASnapshotReporter *)self accountPurposeForModernAccount:accountCopy];
  v7 = +[ICNAIdentityManager sharedManager];
  identifier = [accountCopy identifier];

  v9 = [v7 saltedID:identifier forClass:objc_opt_class()];

  v10 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v9 accountType:v5 accountPurpose:v6];

  return v10;
}

- (id)snapshotItemDataForHTMLAccount:(id)account
{
  accountCopy = account;
  v5 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:accountCopy];
  accountPurposeForHTMLAccount = [(ICNASnapshotReporter *)self accountPurposeForHTMLAccount];
  v7 = +[ICNAIdentityManager sharedManager];
  accountIdentifier = [accountCopy accountIdentifier];

  v9 = [v7 saltedID:accountIdentifier forClass:objc_opt_class()];

  v10 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v9 accountType:v5 accountPurpose:accountPurposeForHTMLAccount];

  return v10;
}

- (id)accountPurposeForModernAccount:(id)account
{
  accountCopy = account;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];

  if ([currentUser userType] == 1)
  {
    v11[3] = 3;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__ICNASnapshotReporter_accountPurposeForModernAccount___block_invoke;
    v9[3] = &unk_2799AF3B8;
    v9[4] = &v10;
    [accountCopy performBlockInPersonaContext:v9];
  }

  v6 = [ICASAccountPurpose alloc];
  v7 = [(ICASAccountPurpose *)v6 initWithAccountPurpose:v11[3]];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __55__ICNASnapshotReporter_accountPurposeForModernAccount___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 isEnterprisePersona];

  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (id)accountPurposeForHTMLAccount
{
  v2 = [[ICASAccountPurpose alloc] initWithAccountPurpose:1];

  return v2;
}

- (id)backgroundAppRefreshData
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  Helper_x8__OBJC_CLASS___MCProfileConnection = gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(v4);
  sharedConnection = [*(v6 + 672) sharedConnection];
  isAutomaticAppUpdatesAllowed = [sharedConnection isAutomaticAppUpdatesAllowed];

  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mt"];
  v10 = [v9 objectForKey:@"KeepAppsUpToDateAppList"];
  v11 = ICNotesAppBundleIdentifier();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  if (isLowPowerModeEnabled)
  {
    v14 = 0;
  }

  else
  {
    v14 = isAutomaticAppUpdatesAllowed & bOOLValue;
  }

  v15 = [ICASBackgroundAppRefreshData alloc];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v17 = [(ICASBackgroundAppRefreshData *)v15 initWithAutomaticAppUpdatesAllowed:v16];

  return v17;
}

- (void)performBlockForHTMLManagedObjectContext:(id)context
{
  contextCopy = context;
  htmlContext = [(ICNASnapshotReporter *)self htmlContext];
  managedObjectContext = [htmlContext managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ICNASnapshotReporter_performBlockForHTMLManagedObjectContext___block_invoke;
  v8[3] = &unk_2799AF3E0;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [managedObjectContext performBlockAndWait:v8];
}

void __64__ICNASnapshotReporter_performBlockForHTMLManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) htmlContext];
  (*(v3 + 16))(v3, v4);

  objc_autoreleasePoolPop(v2);
}

- (void)performBlockForModernManagedObjectContext:(id)context
{
  contextCopy = context;
  modernContext = [(ICNASnapshotReporter *)self modernContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ICNASnapshotReporter_performBlockForModernManagedObjectContext___block_invoke;
  v7[3] = &unk_2799AF3E0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [modernContext performBlockAndWait:v7];
}

void __66__ICNASnapshotReporter_performBlockForModernManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) modernContext];
  (*(v3 + 16))(v3, v4);

  objc_autoreleasePoolPop(v2);
}

- (id)lastSnapshotScheduleTimeStamp
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [mEMORY[0x277D36180] objectForKey:@"analytics_last_snapshot_timestamp"];

  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [mEMORY[0x277D36180]2 setObject:v3 forKey:@"analytics_last_snapshot_timestamp"];
  }

  return v3;
}

- (id)lastSnapshotRunningTimeStamp
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [mEMORY[0x277D36180] objectForKey:@"analytics_last_snapshot_running_timestamp"];

  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [mEMORY[0x277D36180]2 setObject:v3 forKey:@"analytics_last_snapshot_running_timestamp"];
  }

  return v3;
}

- (BOOL)shouldRunSnapshotManually
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"forbid_analytics_snapshot"];

  date = [MEMORY[0x277CBEAA8] date];
  lastSnapshotRunningTimeStamp = [(ICNASnapshotReporter *)self lastSnapshotRunningTimeStamp];
  [date timeIntervalSinceDate:lastSnapshotRunningTimeStamp];
  v8 = v7 > 1814400.0;

  return v8 & ~v4;
}

- (BOOL)shouldScheduleSnapshot
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"forbid_analytics_snapshot"];

  return v3 ^ 1;
}

- (BOOL)shouldSnapshot
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"forbid_analytics_snapshot"];

  if (v4)
  {
    return 0;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults2 BOOLForKey:@"allow_analytics_snapshot_every_launch"];

  if (v7)
  {
    return 1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastSnapshotRunningTimeStamp = [(ICNASnapshotReporter *)self lastSnapshotRunningTimeStamp];
  [date timeIntervalSinceDate:lastSnapshotRunningTimeStamp];
  v5 = v10 > 604800.0;

  return v5;
}

- (id)sortedFoldersForAccount:(id)account
{
  v19[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = objc_alloc_init(MEMORY[0x277CBE428]);
  v5 = MEMORY[0x277CBE408];
  v6 = ICLegacyEntityNameFolder();
  managedObjectContext = [accountCopy managedObjectContext];
  v8 = [v5 entityForName:v6 inManagedObjectContext:managedObjectContext];
  [v4 setEntity:v8];

  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(account == %@)", accountCopy];
  [v4 setPredicate:accountCopy];

  v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalIdentifier" ascending:1];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v4 setSortDescriptors:v11];

  managedObjectContext2 = [accountCopy managedObjectContext];
  v18 = 0;
  v13 = [managedObjectContext2 executeFetchRequest:v4 error:&v18];
  v14 = v18;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ICNASnapshotReporter *)accountCopy sortedFoldersForAccount:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)beginMiniSnapshotBackgroundTask
{
  v3 = +[ICNAController sharedController];
  appDelegate = [v3 appDelegate];

  if (appDelegate)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v5, &location);
    performBlockOnMainThreadAndWait();
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __55__ICNASnapshotReporter_beginMiniSnapshotBackgroundTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained miniSnapshotBackgroundTaskIdentifier];
    objc_sync_enter(v3);
    v4 = +[ICNAController sharedController];
    v5 = [v4 appDelegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__ICNASnapshotReporter_beginMiniSnapshotBackgroundTask__block_invoke_2;
    v8[3] = &unk_2799AF130;
    v8[4] = v2;
    v6 = [v5 beginBackgroundTaskWithName:@"Analytics mini snapshot" expirationHandler:v8];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v2 setMiniSnapshotBackgroundTaskIdentifier:v7];

    objc_sync_exit(v3);
  }
}

void __55__ICNASnapshotReporter_beginMiniSnapshotBackgroundTask__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) killMiniSnapshotBackgroundTaskIfNecessary])
  {
    v1 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __55__ICNASnapshotReporter_beginMiniSnapshotBackgroundTask__block_invoke_2_cold_1();
    }
  }
}

- (BOOL)killMiniSnapshotBackgroundTaskIfNecessary
{
  v3 = +[ICNAController sharedController];
  appDelegate = [v3 appDelegate];

  if (!appDelegate)
  {
    return 0;
  }

  miniSnapshotBackgroundTaskIdentifier = [(ICNASnapshotReporter *)self miniSnapshotBackgroundTaskIdentifier];
  objc_sync_enter(miniSnapshotBackgroundTaskIdentifier);
  miniSnapshotBackgroundTaskIdentifier2 = [(ICNASnapshotReporter *)self miniSnapshotBackgroundTaskIdentifier];
  unsignedIntegerValue = [miniSnapshotBackgroundTaskIdentifier2 unsignedIntegerValue];

  v8 = *MEMORY[0x277D767B0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
  [(ICNASnapshotReporter *)self setMiniSnapshotBackgroundTaskIdentifier:v9];

  objc_sync_exit(miniSnapshotBackgroundTaskIdentifier);
  if (unsignedIntegerValue == v8)
  {
    return 0;
  }

  v11 = +[ICNAController sharedController];
  appDelegate2 = [v11 appDelegate];
  [appDelegate2 endBackgroundTask:unsignedIntegerValue];

  return 1;
}

void __51__ICNASnapshotReporter_scheduleSnapshotIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "Error scheduling snapshot: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sortedFoldersForAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "Error getting sorted folders for account %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end