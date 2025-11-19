@interface ICNASnapshotReporter
+ (id)sharedReporter;
- (BOOL)killMiniSnapshotBackgroundTaskIfNecessary;
- (BOOL)shouldRunSnapshotManually;
- (BOOL)shouldScheduleSnapshot;
- (BOOL)shouldSnapshot;
- (id)accountPurposeForHTMLAccount;
- (id)accountPurposeForModernAccount:(id)a3;
- (id)backgroundAppRefreshData;
- (id)deviceSnapshotSummaryForDataType:(Class)a3;
- (id)drawingSnapshotItemDataForDrawingAttachment:(id)a3;
- (id)lastSnapshotRunningTimeStamp;
- (id)lastSnapshotScheduleTimeStamp;
- (id)snapshotItemDataForHTMLAccount:(id)a3;
- (id)snapshotItemDataForModernAccount:(id)a3;
- (id)sortedFoldersForAccount:(id)a3;
- (id)tableSnapshotItemDataForTableAttachment:(id)a3;
- (id)userSnapshotSummaryForDataType:(Class)a3;
- (unint64_t)pageCountForDocScanAttachment:(id)a3;
- (void)beginMiniSnapshotBackgroundTask;
- (void)checkIfSnapshotNotFiredForALongTime;
- (void)performBlockForHTMLManagedObjectContext:(id)a3;
- (void)performBlockForModernManagedObjectContext:(id)a3;
- (void)reallyPerformSnapshotWithCompletionHandler:(id)a3;
- (void)scheduleSnapshotIfNecessary;
- (void)setupContextsIfNecessary;
- (void)snapshotAttachment:(id)a3 reportedDataToNote:(id)a4 reportedDataToAccount:(id)a5;
- (void)snapshotDevice;
- (void)snapshotHTMLAccount:(id)a3 reportedDataToDevice:(id)a4 reportedDataFromFolderToDevice:(id)a5 reportedDataFromNoteToDevice:(id)a6;
- (void)snapshotHTMLFolder:(id)a3 reportedDataToAccount:(id)a4 reportedDataToDevice:(id)a5 noteReportToAccount:(id)a6 reportedDataFromNoteToDevice:(id)a7;
- (void)snapshotHTMLNote:(id)a3 reportedDataToAccount:(id)a4 reportedDataToDevice:(id)a5;
- (void)snapshotModernAccount:(id)a3 reportedDataToDevice:(id)a4 reportedDataFromFolderToDevice:(id)a5 reportedDataFromNoteToDevice:(id)a6;
- (void)snapshotModernFolder:(id)a3 reportedDataToParentFolder:(id)a4 reportedDataToAccount:(id)a5 reportedDataToDevice:(id)a6 reportedDataFromNotesToAccount:(id)a7 reportedDataFromAttachmentToAccount:(id)a8 reportedDataFromNoteToDevice:(id)a9;
- (void)snapshotModernNote:(id)a3 reportedDataToAccount:(id)a4 reportToDevice:(id)a5 reportedDataFromAttachmentToAccount:(id)a6;
- (void)submitMiniSnapshot;
- (void)submitSnapshotScheduleEventWithResult:(int64_t)a3 error:(id)a4 lastScheduledTime:(id)a5;
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
  v2 = [(ICNASnapshotReporter *)obj modernContext];

  if (!v2)
  {
    v3 = [MEMORY[0x277D35F30] sharedContext];
    v4 = [v3 workerManagedObjectContext];
    [(ICNASnapshotReporter *)obj setModernContext:v4];
  }

  v5 = [(ICNASnapshotReporter *)obj htmlContext];

  if (!v5)
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
  v2 = [(ICNASnapshotReporter *)obj contextHolderCount];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
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
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25C6BF000, log, OS_LOG_TYPE_ERROR, "Snapshot scheduled at %@ not run. Last snapshot was ran at %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSnapshotIfNecessary
{
  v3 = [(ICNASnapshotReporter *)self shouldScheduleSnapshot];
  v4 = os_log_create("com.apple.notes", "Analytics");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [ICNASnapshotReporter scheduleSnapshotIfNecessary];
    }

    v6 = [(ICNASnapshotReporter *)self lastSnapshotScheduleTimeStamp];
    v7 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v7 setObject:v8 forKey:@"analytics_last_snapshot_timestamp"];

    v9 = [MEMORY[0x277D35E58] sharedScheduler];
    v10 = objc_opt_class();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ICNASnapshotReporter_scheduleSnapshotIfNecessary__block_invoke;
    v12[3] = &unk_2799AF2A0;
    v12[4] = self;
    v13 = v6;
    v11 = v6;
    [v9 scheduleTask:v10 completion:v12];
  }

  else
  {
    if (v5)
    {
      [ICNASnapshotReporter scheduleSnapshotIfNecessary];
    }

    v11 = [(ICNASnapshotReporter *)self lastSnapshotScheduleTimeStamp];
    [(ICNASnapshotReporter *)self submitSnapshotScheduleEventWithResult:3 error:0 lastScheduledTime:v11];
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

- (void)submitSnapshotScheduleEventWithResult:(int64_t)a3 error:(id)a4 lastScheduledTime:(id)a5
{
  v27 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  v11 = [[ICASResultType alloc] initWithResultType:a3];
  v12 = [[ICASResultData alloc] initWithResultType:v11];
  [v10 addObject:v12];
  if (v27)
  {
    v13 = [ICASSnapshotErrorData alloc];
    v14 = [v27 domain];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v27, "code")}];
    v16 = [(ICASSnapshotErrorData *)v13 initWithErrorDomain:v14 errorCode:v15];

    [v10 addObject:v16];
  }

  v17 = [ICASSnapshotTimeData alloc];
  v18 = MEMORY[0x277CCABB0];
  [v9 timeIntervalSince1970];
  v20 = v19;

  v21 = [v18 numberWithDouble:v20];
  v22 = [(ICASSnapshotTimeData *)v17 initWithLastTimeOfAttemptedSchedule:v21];

  [v10 addObject:v22];
  v23 = [(ICNASnapshotReporter *)self backgroundAppRefreshData];
  [v10 addObject:v23];
  v24 = +[ICNAController sharedController];
  v25 = objc_opt_class();
  v26 = [(ICNAEventReporter *)self subTracker];
  [v24 submitEventOfType:v25 pushThenPopDataObjects:v10 subTracker:v26];
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
  v9 = [(ICNAEventReporter *)self subTracker];
  [v8 enterGroupWithSubtracker:v9];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v22[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v13 = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:v13];

  v14 = +[ICNAController sharedController];
  v15 = [(ICNAEventReporter *)self subTracker];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__ICNASnapshotReporter_submitMiniSnapshot__block_invoke_579;
  v17[3] = &unk_2799AF130;
  v17[4] = self;
  [v14 leaveGroupWithSubtracker:v15 completionHandler:v17];

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

- (void)reallyPerformSnapshotWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(ICNASnapshotReporter *)v5 isPerformingSnapshot])
  {
    if (v4)
    {
      v4[2](v4);
    }

    objc_sync_exit(v5);
  }

  else
  {
    [(ICNASnapshotReporter *)v5 setIsPerformingSnapshot:1];
    objc_sync_exit(v5);

    v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v6 setObject:v7 forKey:@"analytics_last_snapshot_running_timestamp"];

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
    [(ICNASnapshotReporter *)v5 setupContextsIfNecessary];
    [(ICNASnapshotReporter *)v5 snapshotDevice];
    [(ICNASnapshotReporter *)v5 tearDownContextsIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x277D35F30] performSelector:sel_endBackgroundTask_ withObject:v10];
    }

    if (v4)
    {
      v4[2](v4);
    }

    v11 = v5;
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
  v14 = [v47[5] accountTypeSummary];
  v53[0] = v31;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v35[5], "countOfPinnedNotes"))}];
  v17 = [(ICNASnapshotReporter *)self deviceSnapshotSummaryForDataType:objc_opt_class()];
  v18 = [(ICNASnapshotReporter *)self userSnapshotSummaryForDataType:objc_opt_class()];
  v19 = [(ICASDeviceSnapshotData *)v30 initWithUserStartMonth:v11 userStartYear:v12 saltVersion:v13 accountTypeSummary:v14 collabFoldersSummary:v15 totalCountOfPinnedNotes:v16 deviceSnapshotSummary:v17 userSnapshotSummary:v18];

  v20 = +[ICNAController sharedController];
  v21 = [(ICNAEventReporter *)self subTracker];
  [v20 enterGroupWithSubtracker:v21];

  v22 = +[ICNAController sharedController];
  v23 = objc_opt_class();
  v52 = v19;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v25 = [(ICNAEventReporter *)self subTracker];
  [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:v25];

  v26 = +[ICNAController sharedController];
  v27 = [(ICNAEventReporter *)self subTracker];
  [v26 leaveGroupWithSubtracker:v27];

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

- (void)snapshotModernAccount:(id)a3 reportedDataToDevice:(id)a4 reportedDataFromFolderToDevice:(id)a5 reportedDataFromNoteToDevice:(id)a6
{
  v329 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  if ([v10 isUnsupported])
  {
    [objc_opt_class() faultOutObject:v10];
  }

  else
  {
    v313 = v13;
    v314 = v12;
    v174 = v11;
    v15 = objc_alloc_init(ICNAHistogramManager);
    [(ICNASnapshotReporter *)self setAccountHistogramManager:v15];

    v16 = [(ICNAEventReporter *)self accountTypeForModernAccount:v10];
    v17 = v14;
    v18 = self;
    v19 = [(ICNASnapshotReporter *)self accountPurposeForModernAccount:v17];
    v20 = +[ICNAIdentityManager sharedManager];
    v21 = [v17 identifier];
    v22 = [v20 saltedID:v21 forClass:objc_opt_class()];

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
          [(ICNASnapshotReporter *)v18 snapshotModernFolder:v30 reportedDataToParentFolder:v31 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];
          v32 = [(ICNASnapshotReporter *)v18 accountHistogramManager];
          v33 = [v32 topLevelFolderTotalNoteCountHistogram];
          [v33 reportValue:{-[_ICNAFolderReportToParentFolder totalNoteCountIncludingSubFolders](v31, "totalNoteCountIncludingSubFolders")}];

          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v315 objects:v328 count:16];
      }

      while (v27);
    }

    v34 = [v310 defaultFolder];
    v145 = v18;
    v311 = v24;
    v308 = v25;
    [(ICNASnapshotReporter *)v18 snapshotModernFolder:v34 reportedDataToParentFolder:0 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];

    v35 = [v310 trashFolder];
    [(ICNASnapshotReporter *)v18 snapshotModernFolder:v35 reportedDataToParentFolder:0 reportedDataToAccount:v24 reportedDataToDevice:v314 reportedDataFromNotesToAccount:v23 reportedDataFromAttachmentToAccount:v25 reportedDataFromNoteToDevice:v313];

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
    v234 = [(_ICNAAttachmentReportToAccount *)v308 attachmentUTISummary];
    v169 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v168 = [v169 folderDirectNoteCountHistogram];
    v228 = [v168 icasHistogram];
    v167 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v166 = [v167 collabRootFolderTotalNoteCountHistogram];
    v220 = [v166 icasHistogram];
    v165 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v164 = [v165 docScanPageCountHistogram];
    v224 = [v164 icasHistogram];
    v163 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v162 = [v163 collabOwnedRootFolderInviteeCountHistogram];
    v216 = [v162 icasHistogram];
    v161 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v160 = [v161 collabOwnedRootFolderAcceptanceCountHistogram];
    v222 = [v160 icasHistogram];
    v159 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v158 = [v159 collabOwnedRootFolderNoReplyCountHistogram];
    v214 = [v158 icasHistogram];
    v157 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v156 = [v157 collabOwnedRootFolderAcceptanceRatioHistogram];
    v204 = [v156 icasHistogram];
    v155 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v154 = [v155 collabOwnedSingleNoteInviteeCountHistogram];
    v218 = [v154 icasHistogram];
    v151 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v150 = [v151 collabOwnedSingleNoteAcceptanceCountHistogram];
    v200 = [v150 icasHistogram];
    v149 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v148 = [v149 collabOwnedSingleNoteNoReplyCountHistogram];
    v212 = [v148 icasHistogram];
    v147 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v146 = [v147 collabOwnedSingleNoteAcceptanceRatioHistogram];
    v210 = [v146 icasHistogram];
    v144 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v143 = [v144 noteCharCountHistogram];
    v198 = [v143 icasHistogram];
    v142 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v141 = [v142 inlineDrawingV1TotalStrokeCountHistogram];
    v208 = [v141 icasHistogram];
    v140 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v139 = [v140 inlineDrawingV1PencilStrokeCountHistogram];
    v196 = [v139 icasHistogram];
    v138 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v137 = [v138 inlineDrawingV1FingerStrokeCountHistogram];
    v206 = [v137 icasHistogram];
    v136 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v135 = [v136 inlineDrawingV1FingerStrokeRatioHistogram];
    v195 = [v135 icasHistogram];
    v134 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v133 = [v134 inlineDrawingV2TotalStrokeCountHistogram];
    v202 = [v133 icasHistogram];
    v132 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v131 = [v132 inlineDrawingV2PencilStrokeCountHistogram];
    v199 = [v131 icasHistogram];
    v130 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v129 = [v130 inlineDrawingV2FingerStrokeCountHistogram];
    v197 = [v129 icasHistogram];
    v128 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v127 = [v128 inlineDrawingV2FingerStrokeRatioHistogram];
    v191 = [v127 icasHistogram];
    v126 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v125 = [v126 fullscreenDrawingStrokeCountHistogram];
    v194 = [v125 icasHistogram];
    v124 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v123 = [v124 tableRowCountHistogram];
    v190 = [v123 icasHistogram];
    v122 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v121 = [v122 tableColumnCountHistogram];
    v193 = [v121 icasHistogram];
    v120 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v119 = [v120 tableCellCountHistogram];
    v188 = [v119 icasHistogram];
    v118 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v117 = [v118 passwordProtectedNoteWeeklyAgeHistogram];
    v192 = [v117 icasHistogram];
    v116 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v115 = [v116 topLevelFolderTotalNoteCountHistogram];
    v186 = [v115 icasHistogram];
    v114 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v113 = [v114 attachmentCountPerNoteHistogram];
    v189 = [v113 icasHistogram];
    v112 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v111 = [v112 drawingCountPerNoteHistogram];
    v183 = [v111 icasHistogram];
    v110 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v109 = [v110 inlineDrawingFingerStrokesCountPerNoteHistogram];
    v187 = [v109 icasHistogram];
    v108 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v107 = [v108 inlineDrawingPencilStrokesCountPerNoteHistogram];
    v185 = [v107 icasHistogram];
    v106 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v105 = [v106 fullScreenDrawingStrokesCountPerNoteHistogram];
    v182 = [v105 icasHistogram];
    v104 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v103 = [v104 totalStrokesCountPerNoteHistogram];
    v181 = [v103 icasHistogram];
    v102 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v101 = [v102 tagCountPerNoteHistogram];
    v180 = [v101 icasHistogram];
    v100 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v99 = [v100 distinctTagCountPerNoteHistogram];
    v179 = [v99 icasHistogram];
    v178 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithTags](v184, "countOfNotesWithTags"))}];
    v98 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithCollapsedSections](v184, "countOfNotesWithCollapsedSections"))}];
    v177 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithMentions](v184, "countOfNotesWithMentions"))}];
    v176 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount scrapPaperCount](v184, "scrapPaperCount"))}];
    v175 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithTags](v184, "countOfScrapPapersWithTags"))}];
    v79 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfScrapPapersWithMentions](v184, "countOfScrapPapersWithMentions"))}];
    v80 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfPinnedScrapPapers](v184, "countOfPinnedScrapPapers"))}];
    v81 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfLockedScrapPapers](v184, "countOfLockedScrapPapers"))}];
    v82 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfCollaboratedScrapPapers](v184, "countOfCollaboratedScrapPapers"))}];
    v97 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v96 = [v97 mentionCountPerNoteHistogram];
    v83 = [v96 icasHistogram];
    v95 = [(ICNASnapshotReporter *)v145 accountHistogramManager];
    v84 = [v95 distinctMentionCountPerNoteHistogram];
    v85 = [v84 icasHistogram];
    v94 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(-[_ICNANoteReportToAccount countOfNotesWithMathUsage](v184, "countOfNotesWithMathUsage"))}];
    v153 = [ICASAccountSnapshotData initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:]( v152,  "initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:",  v288,  v283,  v275,  v263,  v254,  v242,  v271,  v279,  v236,  v267,  v260,  v257,  v232,  v251,  v248,  v245,  v230,  v240,  v238,  v226,  v234,  v228,  v220,  v224,  v216,  v222,  v214,  v204,  v218,  v200,  v212,  v210,  v198,  v208,  v196,  v206,  v195,  v202,  v199,  v197,  v191,  v194,  v190,  v193,  v188,  v192,  v186,
             v189,
             v183,
             v187,
             v185,
             v182,
             v181,
             v180,
             v179,
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
    v89 = [(ICNAEventReporter *)v145 subTracker];
    [v86 submitEventOfType:v87 pushThenPopDataObjects:v88 subTracker:v89];

    v90 = [v173 accountType];
    v91 = [(_ICNANoteReportToAccount *)v184 countOfNotes];
    v11 = v174;
    v92 = v90;
    v13 = v313;
    [v174 reportAccountType:v92 noteCount:v91];
    v14 = v310;
    [objc_opt_class() faultOutObject:?];
    [(ICNASnapshotReporter *)v145 setAccountHistogramManager:0];

    v12 = v314;
  }

  v93 = *MEMORY[0x277D85DE8];
}

- (void)snapshotHTMLAccount:(id)a3 reportedDataToDevice:(id)a4 reportedDataFromFolderToDevice:(id)a5 reportedDataFromNoteToDevice:(id)a6
{
  v150 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v102 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(ICNAHistogramManager);
  [(ICNASnapshotReporter *)self setAccountHistogramManager:v13];

  v14 = v10;
  v15 = [(ICNASnapshotReporter *)self sortedFoldersForAccount:v10];
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

        [(ICNASnapshotReporter *)self snapshotHTMLFolder:*(*(&v143 + 1) + 8 * v22++) reportedDataToAccount:v16 reportedDataToDevice:v11 noteReportToAccount:v17 reportedDataFromNoteToDevice:v12];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v143 objects:v149 count:16];
    }

    while (v20);
  }

  v76 = v14;
  v142 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:v14];
  v101 = [(ICNASnapshotReporter *)self accountPurposeForHTMLAccount];
  v23 = +[ICNAIdentityManager sharedManager];
  v24 = [v14 accountIdentifier];
  v100 = [v23 saltedID:v24 forClass:objc_opt_class()];

  v99 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v100 accountType:v142 accountPurpose:v101];
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
  v98 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v97 = [v98 folderDirectNoteCountHistogram];
  v132 = [v97 icasHistogram];
  v96 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v95 = [v96 collabRootFolderTotalNoteCountHistogram];
  v131 = [v95 icasHistogram];
  v94 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v93 = [v94 docScanPageCountHistogram];
  v130 = [v93 icasHistogram];
  v92 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v91 = [v92 collabOwnedRootFolderInviteeCountHistogram];
  v129 = [v91 icasHistogram];
  v90 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v89 = [v90 collabOwnedRootFolderAcceptanceCountHistogram];
  v128 = [v89 icasHistogram];
  v88 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v87 = [v88 collabOwnedRootFolderNoReplyCountHistogram];
  v127 = [v87 icasHistogram];
  v86 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v85 = [v86 collabOwnedRootFolderAcceptanceRatioHistogram];
  v126 = [v85 icasHistogram];
  v84 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v83 = [v84 collabOwnedSingleNoteInviteeCountHistogram];
  v125 = [v83 icasHistogram];
  v82 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v81 = [v82 collabOwnedSingleNoteAcceptanceCountHistogram];
  v124 = [v81 icasHistogram];
  v80 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v79 = [v80 collabOwnedSingleNoteNoReplyCountHistogram];
  v123 = [v79 icasHistogram];
  v78 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v77 = [v78 collabOwnedSingleNoteAcceptanceRatioHistogram];
  v122 = [v77 icasHistogram];
  v75 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v74 = [v75 noteCharCountHistogram];
  v121 = [v74 icasHistogram];
  v73 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v72 = [v73 inlineDrawingV1TotalStrokeCountHistogram];
  v120 = [v72 icasHistogram];
  v71 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v70 = [v71 inlineDrawingV1PencilStrokeCountHistogram];
  v119 = [v70 icasHistogram];
  v69 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v68 = [v69 inlineDrawingV1FingerStrokeCountHistogram];
  v118 = [v68 icasHistogram];
  v67 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v66 = [v67 inlineDrawingV1FingerStrokeRatioHistogram];
  v117 = [v66 icasHistogram];
  v65 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v64 = [v65 inlineDrawingV2TotalStrokeCountHistogram];
  v114 = [v64 icasHistogram];
  v63 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v62 = [v63 inlineDrawingV2PencilStrokeCountHistogram];
  v113 = [v62 icasHistogram];
  v61 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v60 = [v61 inlineDrawingV2FingerStrokeCountHistogram];
  v112 = [v60 icasHistogram];
  v59 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v58 = [v59 inlineDrawingV2FingerStrokeRatioHistogram];
  v111 = [v58 icasHistogram];
  v57 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v56 = [v57 fullscreenDrawingStrokeCountHistogram];
  v110 = [v56 icasHistogram];
  v55 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v54 = [v55 tableRowCountHistogram];
  v109 = [v54 icasHistogram];
  v53 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v52 = [v53 tableColumnCountHistogram];
  v108 = [v52 icasHistogram];
  v51 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v50 = [v51 tableCellCountHistogram];
  v107 = [v50 icasHistogram];
  v49 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v48 = [v49 passwordProtectedNoteWeeklyAgeHistogram];
  v106 = [v48 icasHistogram];
  v47 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v46 = [v47 topLevelFolderTotalNoteCountHistogram];
  v105 = [v46 icasHistogram];
  v45 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v44 = [v45 attachmentCountPerNoteHistogram];
  v104 = [v44 icasHistogram];
  v43 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v42 = [v43 drawingCountPerNoteHistogram];
  v103 = [v42 icasHistogram];
  v41 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v40 = [v41 inlineDrawingFingerStrokesCountPerNoteHistogram];
  v25 = [v40 icasHistogram];
  v39 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v38 = [v39 inlineDrawingPencilStrokesCountPerNoteHistogram];
  v26 = [v38 icasHistogram];
  v37 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v36 = [v37 fullScreenDrawingStrokesCountPerNoteHistogram];
  v27 = [v36 icasHistogram];
  v35 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v34 = [v35 totalStrokesCountPerNoteHistogram];
  v28 = [v34 icasHistogram];
  v116 = [ICASAccountSnapshotData initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:]( v115,  "initWithUserStartMonth:userStartYear:saltVersion:accountSnapshotSummary:accountNotesTwoFactorSummary:collabNotesSummary:collabFoldersSummary:noteAttachmentSummary:scrapPaperAttachmentSummary:lockedNotesSummary:smartFoldersSummary:totalNoteCount:totalFolderCount:totalSmartFolderCount:totalChecklistCount:totalNotesWithChecklistCount:totalCountOfPinnedNotes:totalCountOfLockedNotes:deviceSnapshotSummary:userSnapshotSummary:attachmentUTISummary:folderDirectNoteCountHistogram:collabRootFolderTotalNoteCountHistogram:docScanPageCountHistogram:collabOwnedRootFolderInviteeCountHistogram:collabOwnedRootFolderAcceptanceCountHistogram:collabOwnedRootFolderNoReplyCountHistogram:collabOwnedRootFolderAcceptanceRatioHistogram:collabOwnedSingleNoteInviteeCountHistogram:collabOwnedSingleNoteAcceptanceCountHistogram:collabOwnedSingleNoteNoReplyCountHistogram:collabOwnedSingleNoteAcceptanceRatioHistogram:noteCharCountHistogram:inlineDrawingV1TotalStrokeCountHistogram:inlineDrawingV1PencilStrokeCountHistogram:inlineDrawingV1FingerStrokeCountHistogram:inlineDrawingV1FingerStrokeRatioHistogram:inlineDrawingV2TotalStrokeCountHistogram:inlineDrawingV2PencilStrokeCountHistogram:inlineDrawingV2FingerStrokeCountHistogram:inlineDrawingV2FingerStrokeRatioHistogram:fullscreenDrawingStrokeCountHistogram:tableRowCountHistogram:tableColumnCountHistogram:tableCellCountHistogram:passwordProtectedNoteWeeklyAgeHistogram:topLevelFolderTotalNoteCountHistogram:attachmentCountPerNoteHistogram:drawingCountPerNoteHistogram:inlineDrawingFingerStrokesCountPerNoteHistogram:inlineDrawingPencilStrokesCountPerNoteHistogram:fullScreenDrawingStrokesCountPerNoteHistogram:totalStrokesCountPerNoteHistogram:tagCountPerNoteHistogram:distinctTagCountPerNoteHistogram:totalCountOfNotesWithTags:totalCountOfNotesWithCollapsedSections:totalCountOfNotesWithMentions:totalScrapPaperCount:totalCountOfScrapPapersWithTags:totalCountOfScrapPapersWithMentions:totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:",  v141,  v140,  v139,  v138,  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  MEMORY[0x277CBEBF8],  v137,  v136,  v135,  &unk_286E5E150,  &unk_286E5E150,  &unk_286E5E150,  &unk_286E5E150,  v134,  v133,  MEMORY[0x277CBEBF8],  v132,  v131,  v130,  v129,  v128,  v127,  v126,  v125,  v124,  v123,  v122,  v121,  v120,  v119,  v118,  v117,  v114,  v113,  v112,  v111,  v110,  v109,  v108,  v107,  v106,  v105,
           v104,
           v103,
           v25,
           v26,
           v27,
           v28,
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
  v32 = [(ICNAEventReporter *)self subTracker];
  [v29 submitEventOfType:v30 pushThenPopDataObjects:v31 subTracker:v32];

  [v102 reportAccountType:objc_msgSend(v142 noteCount:{"accountType"), -[_ICNANoteReportToAccount countOfNotes](v17, "countOfNotes")}];
  [objc_opt_class() faultOutObject:v76];
  [(ICNASnapshotReporter *)self setAccountHistogramManager:0];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)snapshotModernFolder:(id)a3 reportedDataToParentFolder:(id)a4 reportedDataToAccount:(id)a5 reportedDataToDevice:(id)a6 reportedDataFromNotesToAccount:(id)a7 reportedDataFromAttachmentToAccount:(id)a8 reportedDataFromNoteToDevice:(id)a9
{
  v90 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v70 = a6;
  v74 = a7;
  v73 = a8;
  v72 = a9;
  if ([v15 isUnsupported])
  {
    [objc_opt_class() faultOutObject:v15];
    v18 = v17;
  }

  else
  {
    v71 = self;
    if (!v16)
    {
      v16 = objc_alloc_init(_ICNAFolderReportToParentFolder);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v19 = [v15 foldersInFolder];
    v20 = [v19 countByEnumeratingWithState:&v83 objects:v89 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v83 + 1) + 8 * i);
          v25 = objc_alloc_init(_ICNAFolderReportToParentFolder);
          [(ICNASnapshotReporter *)v71 snapshotModernFolder:v24 reportedDataToParentFolder:v25 reportedDataToAccount:v17 reportedDataToDevice:v70 reportedDataFromNotesToAccount:v74 reportedDataFromAttachmentToAccount:v73 reportedDataFromNoteToDevice:v72];
          [(_ICNAFolderReportToParentFolder *)v16 setTotalNoteCountIncludingSubFolders:[(_ICNAFolderReportToParentFolder *)v16 totalNoteCountIncludingSubFolders]+ [(_ICNAFolderReportToParentFolder *)v25 totalNoteCountIncludingSubFolders]];
        }

        v21 = [v19 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v21);
    }

    v26 = [v15 isSmartFolder];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v27 = [v15 visibleNotesInFolder];
    v28 = [v27 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v28)
    {
      v29 = v28;
      v67 = v15;
      v30 = 0;
      v31 = *v80;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v80 != v31)
          {
            objc_enumerationMutation(v27);
          }

          if ((v26 & 1) == 0)
          {
            v33 = *(*(&v79 + 1) + 8 * j);
            v34 = objc_autoreleasePoolPush();
            [(ICNASnapshotReporter *)v71 snapshotModernNote:v33 reportedDataToAccount:v74 reportToDevice:v72 reportedDataFromAttachmentToAccount:v73];
            objc_autoreleasePoolPop(v34);
          }

          [(_ICNAFolderReportToParentFolder *)v16 setTotalNoteCountIncludingSubFolders:[(_ICNAFolderReportToParentFolder *)v16 totalNoteCountIncludingSubFolders]+ 1];
        }

        v30 += v29;
        v29 = [v27 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v29);
      v35 = v30;
      v15 = v67;
    }

    else
    {
      v35 = 0.0;
    }

    v18 = v17;
    v36 = v71;
    if (([v15 isDefaultFolderForAccount] & 1) == 0 && (objc_msgSend(v15, "isTrashFolder") & 1) == 0)
    {
      v37 = [(ICNAEventReporter *)v71 collaborationStatusForModernObject:v15];
      v38 = [(ICNAEventReporter *)v71 collaborationTypeForModernObject:v15];
      if ([v38 collaborationType] == 2)
      {
        v39 = [(ICNASnapshotReporter *)v71 accountHistogramManager];
        v40 = [v39 collabRootFolderTotalNoteCountHistogram];
        [v40 reportValue:{-[_ICNAFolderReportToParentFolder totalNoteCountIncludingSubFolders](v16, "totalNoteCountIncludingSubFolders")}];
      }

      if ([v37 collaborationStatus] == 1 && objc_msgSend(v38, "collaborationType") == 2)
      {
        v41 = [v15 serverShare];
        v42 = [v41 ic_nonOwnerInvitedParticipantsCount];
        v43 = [v41 ic_nonOwnerAcceptedParticipantsCount];
        v44 = [(ICNASnapshotReporter *)v71 accountHistogramManager];
        [v44 collabOwnedRootFolderInviteeCountHistogram];
        v45 = v68 = v38;
        v46 = v42;
        [v45 reportValue:v42];

        v47 = [(ICNASnapshotReporter *)v71 accountHistogramManager];
        v48 = [v47 collabOwnedRootFolderAcceptanceCountHistogram];
        [v48 reportValue:v43];

        v49 = [(ICNASnapshotReporter *)v71 accountHistogramManager];
        v50 = [v49 collabOwnedRootFolderNoReplyCountHistogram];
        v36 = v71;
        [v50 reportValue:(v42 - v43)];

        v38 = v68;
        v51 = [(ICNASnapshotReporter *)v71 accountHistogramManager];
        v52 = [v51 collabOwnedRootFolderAcceptanceRatioHistogram];
        [v52 reportValue:v43 / v46];
      }

      v53 = [(ICNASnapshotReporter *)v36 accountHistogramManager];
      v54 = [v53 folderDirectNoteCountHistogram];
      [v54 reportValue:v35];

      [v18 setCountOfFolders:{objc_msgSend(v18, "countOfFolders") + 1}];
      if ([v15 folderType] == 2)
      {
        v69 = v38;
        [v18 setCountOfCustomSmartFolders:{objc_msgSend(v18, "countOfCustomSmartFolders") + 1}];
        v55 = [v15 smartFolderQuery];
        v56 = [v15 managedObjectContext];
        v57 = [v15 account];
        v58 = [v57 objectID];
        v59 = [v55 filterSelectionWithManagedObjectContext:v56 account:v58];

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v60 = [v59 filterTypeSelections];
        v61 = [v60 countByEnumeratingWithState:&v75 objects:v87 count:16];
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
                objc_enumerationMutation(v60);
              }

              v65 = [*(*(&v75 + 1) + 8 * k) filterType];
              if (v65 > 4)
              {
                if (v65 > 7)
                {
                  switch(v65)
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

                else if (v65 == 5)
                {
                  [v18 setCountOfSmartFoldersWithChecklistsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithChecklistsFilter") + 1}];
                }

                else if (v65 == 6)
                {
                  [v18 setCountOfSmartFoldersWithAttachmentsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithAttachmentsFilter") + 1}];
                }

                else
                {
                  [v18 setCountOfSmartFoldersWithFoldersFilter:{objc_msgSend(v18, "countOfSmartFoldersWithFoldersFilter") + 1}];
                }
              }

              else if (v65 > 1)
              {
                if (v65 == 2)
                {
                  [v18 setCountOfSmartFoldersWithDateModifiedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithDateModifiedFilter") + 1}];
                }

                else if (v65 == 3)
                {
                  [v18 setCountOfSmartFoldersWithSharedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithSharedFilter") + 1}];
                }

                else
                {
                  [v18 setCountOfSmartFoldersWithMentionsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithMentionsFilter") + 1}];
                }
              }

              else if (v65 == -1)
              {
                [v18 setCountOfSmartFoldersWithUnknownFilter:{objc_msgSend(v18, "countOfSmartFoldersWithUnknownFilter") + 1}];
              }

              else if (v65)
              {
                if (v65 == 1)
                {
                  [v18 setCountOfSmartFoldersWithDateCreatedFilter:{objc_msgSend(v18, "countOfSmartFoldersWithDateCreatedFilter") + 1}];
                }
              }

              else
              {
                [v18 setCountOfSmartFoldersWithTagsFilter:{objc_msgSend(v18, "countOfSmartFoldersWithTagsFilter") + 1}];
              }
            }

            v62 = [v60 countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v62);
        }

        v38 = v69;
      }

      [v18 updateFolderCollaborationMatrixWithCollaborationStatus:v37 collaborationType:v38];
      [v70 updateFolderCollaborationMatrixWithCollaborationStatus:v37 collaborationType:v38];
    }

    [objc_opt_class() faultOutObject:v15];
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)snapshotHTMLFolder:(id)a3 reportedDataToAccount:(id)a4 reportedDataToDevice:(id)a5 noteReportToAccount:(id)a6 reportedDataFromNoteToDevice:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ICNASnapshotReporter *)self htmlContext];
  v18 = [v17 allVisibleNotesInFolder:v12];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v37 = v14;
  if (v20)
  {
    v21 = v20;
    v35 = v13;
    v36 = v12;
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
        [(ICNASnapshotReporter *)self snapshotHTMLNote:v25 reportedDataToAccount:v15 reportedDataToDevice:v16];
        objc_autoreleasePoolPop(v26);
      }

      v22 += v21;
      v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
    v27 = v22;
    v13 = v35;
    v12 = v36;
    v14 = v37;
  }

  else
  {
    v27 = 0.0;
  }

  if ([v12 isCustomFolder])
  {
    v28 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
    v29 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
    v30 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v31 = [v30 topLevelFolderTotalNoteCountHistogram];
    [v31 reportValue:v27];

    v32 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v33 = [v32 folderDirectNoteCountHistogram];
    [v33 reportValue:v27];

    v14 = v37;
    [v13 setCountOfFolders:{objc_msgSend(v13, "countOfFolders") + 1}];
    [v13 updateFolderCollaborationMatrixWithCollaborationStatus:v28 collaborationType:v29];
    [v37 updateFolderCollaborationMatrixWithCollaborationStatus:v28 collaborationType:v29];
  }

  [objc_opt_class() faultOutObject:v12];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)snapshotModernNote:(id)a3 reportedDataToAccount:(id)a4 reportToDevice:(id)a5 reportedDataFromAttachmentToAccount:(id)a6
{
  v157 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v129 = a4;
  v128 = a5;
  v11 = a6;
  v127 = v10;
  if ([v10 isUnsupported])
  {
    [objc_opt_class() faultOutObject:v10];
  }

  else
  {
    v117 = [(ICNAEventReporter *)self collaborationTypeForModernObject:v10];
    v116 = [(ICNAEventReporter *)self collaborationStatusForModernObject:v10];
    [v129 updateNoteCollaborationMatrixWithCollaborationStatus:v116 collaborationType:v117];
    if ([v116 collaborationStatus] == 1 && objc_msgSend(v117, "collaborationType") == 2)
    {
      v12 = [v10 serverShare];
      v13 = [v12 ic_nonOwnerInvitedParticipantsCount];
      v14 = [v12 ic_nonOwnerAcceptedParticipantsCount];
      v15 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v16 = [v15 collabOwnedSingleNoteInviteeCountHistogram];
      [v16 reportValue:v13];

      v17 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v18 = [v17 collabOwnedSingleNoteAcceptanceCountHistogram];
      [v18 reportValue:v14];

      v19 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v20 = [v19 collabOwnedSingleNoteNoReplyCountHistogram];
      [v20 reportValue:(v13 - v14)];

      v21 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v22 = [v21 collabOwnedSingleNoteAcceptanceRatioHistogram];
      [v22 reportValue:v14 / v13];
    }

    v23 = [v127 textStorage];
    v126 = v23;
    v152 = 0;
    v153 = &v152;
    v154 = 0x2020000000;
    v155 = 0;
    v148 = 0;
    v149 = &v148;
    v150 = 0x2020000000;
    v151 = 0;
    v24 = v23;
    if (v23)
    {
      v25 = [v23 length];
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
      v140 = v129;
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
    v29 = [v127 visibleAttachments];
    v30 = [v29 countByEnumeratingWithState:&v135 objects:v156 count:16];
    if (v30)
    {
      v31 = *v136;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v136 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v135 + 1) + 8 * i);
          v34 = objc_autoreleasePoolPush();
          v35 = [v33 parentAttachment];
          v36 = v35 == 0;

          if (v36)
          {
            [(ICNASnapshotReporter *)self snapshotAttachment:v33 reportedDataToNote:v28 reportedDataToAccount:v11];
          }

          objc_autoreleasePoolPop(v34);
        }

        v30 = [v29 countByEnumeratingWithState:&v135 objects:v156 count:16];
      }

      while (v30);
    }

    v111 = [(_ICNAAttachmentReportToNote *)v28 countOfAudioAttachments];
    v37 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v38 = [v37 objectForKeyedSubscript:*MEMORY[0x277D35BC8]];
    v115 = [v38 unsignedIntegerValue];

    v39 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v40 = [v39 objectForKeyedSubscript:*MEMORY[0x277D35BD8]];
    v124 = [v40 unsignedIntegerValue];

    v41 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v42 = [v41 objectForKeyedSubscript:*MEMORY[0x277D35BD0]];
    v123 = [v42 unsignedIntegerValue];

    v43 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v44 = [v43 objectForKeyedSubscript:*MEMORY[0x277D35BC0]];
    v125 = [v44 unsignedIntegerValue];

    v45 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v46 = [v45 objectForKeyedSubscript:*MEMORY[0x277D35C08]];
    v114 = [v46 unsignedIntegerValue];

    v47 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v48 = [*MEMORY[0x277CE1E90] identifier];
    v49 = [v47 objectForKeyedSubscript:v48];
    v122 = [v49 unsignedIntegerValue];

    v50 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v51 = [v50 objectForKeyedSubscript:@"com.apple.notes.analytics.appleMaps"];
    v121 = [v51 unsignedIntegerValue];

    v52 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v53 = [v52 objectForKeyedSubscript:*MEMORY[0x277D35C00]];
    v120 = [v53 unsignedIntegerValue];

    v54 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v55 = [v54 objectForKeyedSubscript:*MEMORY[0x277D35BE8]];
    v113 = [v55 unsignedIntegerValue];

    v56 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v57 = [v56 objectForKeyedSubscript:*MEMORY[0x277D35BF0]];
    v119 = [v57 unsignedIntegerValue];

    v58 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v59 = [v58 objectForKeyedSubscript:*MEMORY[0x277D35BF8]];
    v118 = [v59 unsignedIntegerValue];

    v60 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachmentByUTI];
    v61 = [v60 objectForKeyedSubscript:*MEMORY[0x277D35BE0]];
    v112 = [v61 unsignedIntegerValue];

    v110 = [(_ICNAAttachmentReportToNote *)v28 countOfAttachments];
    v62 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v63 = [v62 noteCharCountHistogram];
    [v63 reportValue:v27];

    v64 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v65 = [v64 attachmentCountPerNoteHistogram];
    [v65 reportValue:{-[_ICNAAttachmentReportToNote countOfAttachments](v28, "countOfAttachments")}];

    v66 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v67 = [v66 drawingCountPerNoteHistogram];
    [v67 reportValue:(v123 + v124 + v125)];

    v68 = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV1FingerStrokes];
    v69 = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV2FingerStrokes];
    v70 = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV1PencilStrokes];
    v71 = [(_ICNAAttachmentReportToNote *)v28 countOfInlineDrawingV2PencilStrokes];
    v72 = [(_ICNAAttachmentReportToNote *)v28 countOfFullscreenDrawingStrokes];
    v73 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v74 = [v73 inlineDrawingFingerStrokesCountPerNoteHistogram];
    v75 = v69 + v68;
    [v74 reportValue:v75];

    v76 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v77 = [v76 inlineDrawingPencilStrokesCountPerNoteHistogram];
    v78 = v71 + v70;
    [v77 reportValue:v78];

    v79 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v80 = [v79 fullScreenDrawingStrokesCountPerNoteHistogram];
    [v80 reportValue:v72];

    v81 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v82 = [v81 totalStrokesCountPerNoteHistogram];
    [v82 reportValue:(v78 + v75 + v72)];

    v83 = [v127 isSystemPaper];
    [v129 setCountOfNotes:{objc_msgSend(v129, "countOfNotes") + 1}];
    [v129 setCountOfChecklists:{v149[3] + objc_msgSend(v129, "countOfChecklists")}];
    [v128 setCountOfModernNotes:{objc_msgSend(v128, "countOfModernNotes") + 1}];
    if (v83)
    {
      [v128 setCountOfScrapPapers:{objc_msgSend(v128, "countOfScrapPapers") + 1}];
    }

    if ([v127 isPinned])
    {
      [v129 setCountOfPinnedNotes:{objc_msgSend(v129, "countOfPinnedNotes") + 1}];
      [v128 setCountOfPinnedNotes:{objc_msgSend(v128, "countOfPinnedNotes") + 1}];
      [v129 updateNoteTwoFactorMatrixWithIndex:8];
      if (v83)
      {
        [v129 setCountOfPinnedScrapPapers:{objc_msgSend(v129, "countOfPinnedScrapPapers") + 1}];
      }
    }

    if ([v127 isPasswordProtected])
    {
      [v129 setCountOfLockedNotes:{objc_msgSend(v129, "countOfLockedNotes") + 1}];
      [v129 updateNoteTwoFactorMatrixWithIndex:9];
      v84 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v85 = [v84 passwordProtectedNoteWeeklyAgeHistogram];
      v86 = [v127 creationDate];
      [v85 reportValue:{-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", v86)}];

      if (v83)
      {
        [v129 setCountOfLockedScrapPapers:{objc_msgSend(v129, "countOfLockedScrapPapers") + 1}];
      }

      if ([MEMORY[0x277D35E90] shouldAuthenticateWithCustomPasswordForObject:v127])
      {
        [v129 setCountOfV1LockedNotes:{objc_msgSend(v129, "countOfV1LockedNotes") + 1}];
        v87 = [v127 account];
        v88 = [v87 resolvedLockedNotesMode] == 2;

        if (v88)
        {
          [v129 setCountOfLockedNotesWithDivergedMode:{objc_msgSend(v129, "countOfLockedNotesWithDivergedMode") + 1}];
        }

        v89 = [v127 account];
        v90 = [v89 cryptoStrategy];
        v91 = [v90 hasSameKeyAsObject:v127];

        if ((v91 & 1) == 0)
        {
          [v129 setCountOfLockedNotesWithDivergedPassword:{objc_msgSend(v129, "countOfLockedNotesWithDivergedPassword") + 1}];
        }
      }

      else if ([MEMORY[0x277D35E90] shouldAuthenticateWithDevicePasswordForObject:v127])
      {
        [v129 setCountOfV2LockedNotes:{objc_msgSend(v129, "countOfV2LockedNotes") + 1}];
        v92 = [v127 account];
        v93 = [v92 resolvedLockedNotesMode] == 1;

        if (v93)
        {
          [v129 setCountOfLockedNotesWithDivergedMode:{objc_msgSend(v129, "countOfLockedNotesWithDivergedMode") + 1}];
        }
      }
    }

    if ([v127 isSharedViaICloud])
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:0];
      if (v83)
      {
        [v129 setCountOfCollaboratedScrapPapers:{objc_msgSend(v129, "countOfCollaboratedScrapPapers") + 1}];
      }
    }

    v94 = [v127 outlineState];
    v95 = [v94 collapsedUUIDs];
    v96 = [v95 count] == 0;

    if (!v96)
    {
      [v129 setCountOfNotesWithCollapsedSections:{objc_msgSend(v129, "countOfNotesWithCollapsedSections") + 1}];
    }

    if (*(v153 + 24) == 1)
    {
      [v129 setCountOfNotesWithChecklists:{objc_msgSend(v129, "countOfNotesWithChecklists") + 1}];
    }

    if (v115 | v118)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:1];
      [v129 setCountOfNotesWithDocScan:{objc_msgSend(v129, "countOfNotesWithDocScan") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithDocScan:{objc_msgSend(v129, "countOfScrapPapersWithDocScan") + 1}];
      }
    }

    if (v124)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:2];
      [v129 setCountOfNotesWithInlineDrawingV1:{objc_msgSend(v129, "countOfNotesWithInlineDrawingV1") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithInlineDrawingV1:{objc_msgSend(v129, "countOfScrapPapersWithInlineDrawingV1") + 1}];
      }
    }

    if (v123)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:3];
      [v129 setCountOfNotesWithInlineDrawingV2:{objc_msgSend(v129, "countOfNotesWithInlineDrawingV2") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithInlineDrawingV2:{objc_msgSend(v129, "countOfScrapPapersWithInlineDrawingV2") + 1}];
      }
    }

    if (v125)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:4];
      [v129 setCountOfNotesWithFullscreenDrawing:{objc_msgSend(v129, "countOfNotesWithFullscreenDrawing") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithFullscreenDrawing:{objc_msgSend(v129, "countOfScrapPapersWithFullscreenDrawing") + 1}];
      }
    }

    if (v114)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:5];
      [v129 setCountOfNotesWithTable:{objc_msgSend(v129, "countOfNotesWithTable") + 1}];
      [v128 setCountOfModernNotesWithTable:{objc_msgSend(v128, "countOfModernNotesWithTable") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithTables:{objc_msgSend(v129, "countOfScrapPapersWithTables") + 1}];
        [v128 setCountOfScrapPapersWithTables:{objc_msgSend(v128, "countOfScrapPapersWithTables") + 1}];
      }
    }

    if (v110 - (v118 + v112) - (v115 + v111 + v124 + v123 + v125 + v114 + v122 + v121 + v120 + v113 + v119) >= 1)
    {
      [v129 updateNoteTwoFactorMatrixWithIndex:6];
      [v129 setCountOfNotesWithOtherAttachments:{objc_msgSend(v129, "countOfNotesWithOtherAttachments") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithOtherAttachments:{objc_msgSend(v129, "countOfScrapPapersWithOtherAttachments") + 1}];
      }
    }

    if (v122)
    {
      [v129 setCountOfNotesWithRichURL:{objc_msgSend(v129, "countOfNotesWithRichURL") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithRichUrl:{objc_msgSend(v129, "countOfScrapPapersWithRichUrl") + 1}];
      }
    }

    if (v121)
    {
      [v129 setCountOfNotesWithMapLink:{objc_msgSend(v129, "countOfNotesWithMapLink") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithMapLink:{objc_msgSend(v129, "countOfScrapPapersWithMapLink") + 1}];
      }
    }

    if (v120)
    {
      [v129 setCountOfNotesWithPaperKit:{objc_msgSend(v129, "countOfNotesWithPaperKit") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithPaperKit:{objc_msgSend(v129, "countOfScrapPapersWithPaperKit") + 1}];
      }
    }

    if (v113 || v119 || v118)
    {
      [v129 setCountOfNotesWithPaperDocument:{objc_msgSend(v129, "countOfNotesWithPaperDocument") + 1}];
    }

    if (v112 | v119)
    {
      [v129 setCountOfNotesWithPDF:{objc_msgSend(v129, "countOfNotesWithPDF") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasDeepLink])
    {
      [v129 setCountOfNotesWithDeepLink:{objc_msgSend(v129, "countOfNotesWithDeepLink") + 1}];
      [v128 setCountOfModernNotesWithDeeplink:{objc_msgSend(v128, "countOfModernNotesWithDeeplink") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithDeepLink:{objc_msgSend(v129, "countOfScrapPapersWithDeepLink") + 1}];
        [v128 setCountOfScrapPapersWithDeepLink:{objc_msgSend(v128, "countOfScrapPapersWithDeepLink") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasSafariHighlight])
    {
      [v128 setCountOfModernNotesWithWebHighlights:{objc_msgSend(v128, "countOfModernNotesWithWebHighlights") + 1}];
      if (v83)
      {
        [v128 setCountOfScrapPapersWithWebHighlights:{objc_msgSend(v128, "countOfScrapPapersWithWebHighlights") + 1}];
      }
    }

    if (v123 + v124 + v120 != -v125)
    {
      [v128 setCountOfModernNotesWithDrawing:{objc_msgSend(v128, "countOfModernNotesWithDrawing") + 1}];
      if (v83)
      {
        [v128 setCountOfScrapPapersWithDrawing:{objc_msgSend(v128, "countOfScrapPapersWithDrawing") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasImages])
    {
      [v128 setCountOfModernNotesWithImage:{objc_msgSend(v128, "countOfModernNotesWithImage") + 1}];
      if (v83)
      {
        [v128 setCountOfScrapPapersWithImage:{objc_msgSend(v128, "countOfScrapPapersWithImage") + 1}];
      }
    }

    if (v121 != -v122)
    {
      [v128 setCountOfModernNotesWithLinks:{objc_msgSend(v128, "countOfModernNotesWithLinks") + 1}];
      if (v83)
      {
        [v128 setCountOfScrapPapersWithLinks:{objc_msgSend(v128, "countOfScrapPapersWithLinks") + 1}];
      }
    }

    if ([(_ICNAAttachmentReportToNote *)v28 countOfAudioAttachments])
    {
      [v129 setCountOfNotesWithAttachmentAudio:{objc_msgSend(v129, "countOfNotesWithAttachmentAudio") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasAudioTranscript])
    {
      [v129 setCountOfNotesWithAttachmentAudioTranscript:{objc_msgSend(v129, "countOfNotesWithAttachmentAudioTranscript") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasAudioSummary])
    {
      [v129 setCountOfNotesWithAttachmentAudioSummary:{objc_msgSend(v129, "countOfNotesWithAttachmentAudioSummary") + 1}];
    }

    [v129 setCountOfAudioAttachments:{objc_msgSend(v129, "countOfAudioAttachments") + -[_ICNAAttachmentReportToNote countOfAudioAttachments](v28, "countOfAudioAttachments")}];
    [v129 setCountOfAudioAttachmentsRecordedInNotes:{objc_msgSend(v129, "countOfAudioAttachmentsRecordedInNotes") + -[_ICNAAttachmentReportToNote countOfAudioAttachmentsRecordedInNotes](v28, "countOfAudioAttachmentsRecordedInNotes")}];
    [v129 setCountOfAudioAttachmentsWithAppendedAudio:{objc_msgSend(v129, "countOfAudioAttachmentsWithAppendedAudio") + -[_ICNAAttachmentReportToNote countOfAudioAttachmentsWithAppendedAudio](v28, "countOfAudioAttachmentsWithAppendedAudio")}];
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
      [v129 setCountOfNotesWithTags:{objc_msgSend(v129, "countOfNotesWithTags") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithTags:{objc_msgSend(v129, "countOfScrapPapersWithTags") + 1}];
      }

      v98 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v99 = [v98 tagCountPerNoteHistogram];
      [v99 reportValue:{objc_msgSend(v97, "countOfTags")}];

      v100 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v101 = [v100 distinctTagCountPerNoteHistogram];
      [v101 reportValue:{objc_msgSend(v97, "countOfDistinctTags")}];
    }

    if ([v97 countOfMentions])
    {
      [v129 setCountOfNotesWithMentions:{objc_msgSend(v129, "countOfNotesWithMentions") + 1}];
      if (v83)
      {
        [v129 setCountOfScrapPapersWithMentions:{objc_msgSend(v129, "countOfScrapPapersWithMentions") + 1}];
      }

      v102 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v103 = [v102 mentionCountPerNoteHistogram];
      [v103 reportValue:{objc_msgSend(v97, "countOfMentions")}];

      v104 = [(ICNASnapshotReporter *)self accountHistogramManager];
      v105 = [v104 distinctMentionCountPerNoteHistogram];
      [v105 reportValue:{objc_msgSend(v97, "countOfDistinctMentions")}];
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
      v106 = [v126 ic_range];
      v107 = *MEMORY[0x277D740E8];
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __116__ICNASnapshotReporter_snapshotModernNote_reportedDataToAccount_reportToDevice_reportedDataFromAttachmentToAccount___block_invoke_2;
      v130[3] = &unk_2799AF390;
      v130[4] = self;
      v130[5] = &v144;
      v130[6] = &v131;
      [v126 enumerateAttribute:v107 inRange:v106 options:v108 usingBlock:{0, v130}];
    }

    if (*(v145 + 24) == 1)
    {
      [v129 setCountOfNotesWithNoteLink:{objc_msgSend(v129, "countOfNotesWithNoteLink") + 1}];
    }

    if (*(v132 + 24) == 1)
    {
      [v129 setCountOfNotesWithFolderLink:{objc_msgSend(v129, "countOfNotesWithFolderLink") + 1}];
    }

    if ([(_ICNAAttachmentReportToNote *)v28 hasMathUsage])
    {
      [v129 setCountOfNotesWithMathUsage:{objc_msgSend(v129, "countOfNotesWithMathUsage") + 1}];
    }

    if (v83)
    {
      [v129 setScrapPaperCount:{objc_msgSend(v129, "scrapPaperCount") + 1}];
    }

    [v129 completeTwoFactorMatrixReportingForCurrentNote];
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

- (void)snapshotHTMLNote:(id)a3 reportedDataToAccount:(id)a4 reportedDataToDevice:(id)a5
{
  v7 = a4;
  v8 = a3;
  [v7 setCountOfNotes:{objc_msgSend(v7, "countOfNotes") + 1}];
  v13 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v9 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  [v7 updateNoteCollaborationMatrixWithCollaborationStatus:v13 collaborationType:v9];

  v10 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v11 = [v10 noteCharCountHistogram];
  v12 = [v8 contentAsPlainText];
  [v11 reportValue:{objc_msgSend(v12, "length")}];

  [objc_opt_class() faultOutObject:v8];
}

- (void)snapshotAttachment:(id)a3 reportedDataToNote:(id)a4 reportedDataToAccount:(id)a5
{
  v65 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [ICNAEventReporter analyticsTypeUTIAttachment:v65];
  if ([v65 isUnsupported])
  {
    goto LABEL_38;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35BC8]])
  {
    v11 = [(ICNASnapshotReporter *)self pageCountForDocScanAttachment:v65];
    v12 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v13 = [v12 docScanPageCountHistogram];
    [v13 reportValue:v11];
LABEL_6:

    goto LABEL_7;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35C08]])
  {
    v12 = [(ICNASnapshotReporter *)self tableSnapshotItemDataForTableAttachment:v65];
    v14 = [v12 tableRowCount];
    v15 = [v14 unsignedIntegerValue];

    v16 = [v12 tableColumnCount];
    v17 = [v16 unsignedIntegerValue];

    v18 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v19 = [v18 tableRowCountHistogram];
    [v19 reportValue:v15];

    v20 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v21 = [v20 tableColumnCountHistogram];
    [v21 reportValue:v17];

    v13 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v22 = [v13 tableCellCountHistogram];
    [v22 reportValue:(v17 * v15)];

    goto LABEL_6;
  }

LABEL_7:
  v23 = *MEMORY[0x277D35BD8];
  if (([v10 isEqualToString:*MEMORY[0x277D35BD8]] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D35BD0]) & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D35BC0]))
  {
    goto LABEL_17;
  }

  v24 = [(ICNASnapshotReporter *)self drawingSnapshotItemDataForDrawingAttachment:v65];
  [v8 reportDrawingWithSnapshotData:v24];
  if ([v10 isEqualToString:v23])
  {
    v25 = [v24 countOfInlineDrawingV1FingerStrokes];
    v26 = [v25 unsignedIntegerValue];

    v27 = [v24 countOfInlineDrawingV1PencilStrokes];
    v28 = [v27 unsignedIntegerValue];

    v29 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v30 = [v29 inlineDrawingV1TotalStrokeCountHistogram];
    v31 = (v28 + v26);
    [v30 reportValue:v31];

    v32 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v33 = [v32 inlineDrawingV1PencilStrokeCountHistogram];
    [v33 reportValue:v28];

    v34 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v35 = [v34 inlineDrawingV1FingerStrokeCountHistogram];
    v36 = v26;
    [v35 reportValue:v26];

    v37 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v38 = [v37 inlineDrawingV1FingerStrokeRatioHistogram];
LABEL_14:
    v49 = v38;
    v50 = v36 / v31;
    goto LABEL_15;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D35BD0]])
  {
    v39 = [v24 countOfInlineDrawingV2FingerStrokes];
    v40 = [v39 unsignedIntegerValue];

    v41 = [v24 countOfInlineDrawingV2PencilStrokes];
    v42 = [v41 unsignedIntegerValue];

    v43 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v44 = [v43 inlineDrawingV2TotalStrokeCountHistogram];
    v31 = (v42 + v40);
    [v44 reportValue:v31];

    v45 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v46 = [v45 inlineDrawingV2PencilStrokeCountHistogram];
    [v46 reportValue:v42];

    v47 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v48 = [v47 inlineDrawingV2FingerStrokeCountHistogram];
    v36 = v40;
    [v48 reportValue:v40];

    v37 = [(ICNASnapshotReporter *)self accountHistogramManager];
    v38 = [v37 inlineDrawingV2FingerStrokeRatioHistogram];
    goto LABEL_14;
  }

  if (![v10 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    goto LABEL_16;
  }

  v63 = [v24 countOfFullscreenDrawingStrokes];
  v64 = [v63 unsignedIntegerValue];

  v37 = [(ICNASnapshotReporter *)self accountHistogramManager];
  v38 = [v37 fullscreenDrawingStrokeCountHistogram];
  v49 = v38;
  v50 = v64;
LABEL_15:
  [v38 reportValue:v50];

LABEL_16:
LABEL_17:
  v51 = [v65 synapseData];

  if (v51)
  {
    [v8 setHasDeepLink:1];
    if ([objc_opt_class() attachmentHasDeepLinkSafariHighlight:v65])
    {
      [v8 setHasSafariHighlight:1];
    }
  }

  if ([v65 attachmentType] == 3)
  {
    [v8 setHasImages:1];
  }

  if ([v65 attachmentType] == 13)
  {
    objc_opt_class();
    v52 = [v65 attachmentModel];
    v53 = ICDynamicCast();

    if ([v53 paperHasMath])
    {
      [v8 setHasMathUsage:1];
    }
  }

  if ([v65 attachmentType] == 4)
  {
    v54 = [v65 parentAttachment];

    if (!v54)
    {
      [v8 setCountOfAudioAttachments:{objc_msgSend(v8, "countOfAudioAttachments") + 1}];
      v55 = [v65 audioModel];
      v56 = [v55 audioDocument];
      if ([v55 recordedInNotes])
      {
        [v8 setCountOfAudioAttachmentsRecordedInNotes:{objc_msgSend(v8, "countOfAudioAttachmentsRecordedInNotes") + 1}];
      }

      v57 = [v56 transcriptAsPlainText];
      v58 = [v57 length];

      if (v58)
      {
        [v8 setHasAudioTranscript:1];
      }

      v59 = [v56 recordingSummaryAsPlainText];
      v60 = [v59 length];

      if (v60)
      {
        [v8 setHasAudioSummary:1];
      }

      v61 = [v56 orderedFragmentUUIDs];
      v62 = [v61 count];

      if (v62 >= 2)
      {
        [v8 setCountOfAudioAttachmentsWithAppendedAudio:{objc_msgSend(v8, "countOfAudioAttachmentsWithAppendedAudio") + 1}];
      }
    }
  }

  [v8 reportAttachmentTypeUTI:v10];
  [v9 reportAttachmentTypeUTI:v10];
LABEL_38:
  [objc_opt_class() faultOutObject:v65];
}

- (id)deviceSnapshotSummaryForDataType:(Class)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = +[ICNAController deviceID];
  v20 = [v4 saltedID:v5 forClass:a3];

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

- (id)userSnapshotSummaryForDataType:(Class)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = +[ICNAController userID];
  v6 = [v4 saltedID:v5 forClass:a3];

  v7 = [ICASUserSnapshotItemData alloc];
  v8 = +[ICNAController storeFrontID];
  v9 = [(ICASUserSnapshotItemData *)v7 initWithUserID:v6 userStorefrontID:v8];

  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)pageCountForDocScanAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 attachmentModel];

  v5 = ICDynamicCast();

  v6 = [v5 subAttachmentCount];
  return v6;
}

- (id)drawingSnapshotItemDataForDrawingAttachment:(id)a3
{
  v4 = a3;
  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:v4];
  v6 = *MEMORY[0x277D35BD8];
  v30 = v5;
  if (([v5 isEqualToString:*MEMORY[0x277D35BD8]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D35BD0]))
  {
    v7 = [v4 attachmentModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 handwritingRecognitionDrawing];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v8 newDrawingFromMergeableData];
      }

      v12 = v11;

      v18 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:v12];
      v19 = [v12 strokes];
      v16 = [v19 count] - v18;

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

      v7 = v8;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    v7 = [v4 attachmentModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 drawing];
      v12 = [v8 commands];
      v13 = [v12 count];
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
    v21 = v4;

    goto LABEL_23;
  }

  v21 = v4;
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

- (id)tableSnapshotItemDataForTableAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 attachmentModel];

  v5 = ICDynamicCast();

  v6 = [v5 table];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rowCount];
    v9 = [v7 columnCount];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [ICASTableSnapshotItemData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v13 = [(ICASTableSnapshotItemData *)v10 initWithTableRowCount:v11 tableColumnCount:v12];

  return v13;
}

- (id)snapshotItemDataForModernAccount:(id)a3
{
  v4 = a3;
  v5 = [(ICNAEventReporter *)self accountTypeForModernAccount:v4];
  v6 = [(ICNASnapshotReporter *)self accountPurposeForModernAccount:v4];
  v7 = +[ICNAIdentityManager sharedManager];
  v8 = [v4 identifier];

  v9 = [v7 saltedID:v8 forClass:objc_opt_class()];

  v10 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v9 accountType:v5 accountPurpose:v6];

  return v10;
}

- (id)snapshotItemDataForHTMLAccount:(id)a3
{
  v4 = a3;
  v5 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:v4];
  v6 = [(ICNASnapshotReporter *)self accountPurposeForHTMLAccount];
  v7 = +[ICNAIdentityManager sharedManager];
  v8 = [v4 accountIdentifier];

  v9 = [v7 saltedID:v8 forClass:objc_opt_class()];

  v10 = [[ICASAccountSnapshotItemData alloc] initWithAccountID:v9 accountType:v5 accountPurpose:v6];

  return v10;
}

- (id)accountPurposeForModernAccount:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [MEMORY[0x277D77BF8] sharedManager];
  v5 = [v4 currentUser];

  if ([v5 userType] == 1)
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
    [v3 performBlockInPersonaContext:v9];
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
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  Helper_x8__OBJC_CLASS___MCProfileConnection = gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(v4);
  v7 = [*(v6 + 672) sharedConnection];
  v8 = [v7 isAutomaticAppUpdatesAllowed];

  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mt"];
  v10 = [v9 objectForKey:@"KeepAppsUpToDateAppList"];
  v11 = ICNotesAppBundleIdentifier();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  if (v3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8 & v13;
  }

  v15 = [ICASBackgroundAppRefreshData alloc];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v17 = [(ICASBackgroundAppRefreshData *)v15 initWithAutomaticAppUpdatesAllowed:v16];

  return v17;
}

- (void)performBlockForHTMLManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(ICNASnapshotReporter *)self htmlContext];
  v6 = [v5 managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ICNASnapshotReporter_performBlockForHTMLManagedObjectContext___block_invoke;
  v8[3] = &unk_2799AF3E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlockAndWait:v8];
}

void __64__ICNASnapshotReporter_performBlockForHTMLManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) htmlContext];
  (*(v3 + 16))(v3, v4);

  objc_autoreleasePoolPop(v2);
}

- (void)performBlockForModernManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(ICNASnapshotReporter *)self modernContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ICNASnapshotReporter_performBlockForModernManagedObjectContext___block_invoke;
  v7[3] = &unk_2799AF3E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
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
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"analytics_last_snapshot_timestamp"];

  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v4 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [v4 setObject:v3 forKey:@"analytics_last_snapshot_timestamp"];
  }

  return v3;
}

- (id)lastSnapshotRunningTimeStamp
{
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"analytics_last_snapshot_running_timestamp"];

  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v4 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [v4 setObject:v3 forKey:@"analytics_last_snapshot_running_timestamp"];
  }

  return v3;
}

- (BOOL)shouldRunSnapshotManually
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"forbid_analytics_snapshot"];

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(ICNASnapshotReporter *)self lastSnapshotRunningTimeStamp];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7 > 1814400.0;

  return v8 & ~v4;
}

- (BOOL)shouldScheduleSnapshot
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"forbid_analytics_snapshot"];

  return v3 ^ 1;
}

- (BOOL)shouldSnapshot
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"forbid_analytics_snapshot"];

  if (v4)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"allow_analytics_snapshot_every_launch"];

  if (v7)
  {
    return 1;
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(ICNASnapshotReporter *)self lastSnapshotRunningTimeStamp];
  [v8 timeIntervalSinceDate:v9];
  v5 = v10 > 604800.0;

  return v5;
}

- (id)sortedFoldersForAccount:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBE428]);
  v5 = MEMORY[0x277CBE408];
  v6 = ICLegacyEntityNameFolder();
  v7 = [v3 managedObjectContext];
  v8 = [v5 entityForName:v6 inManagedObjectContext:v7];
  [v4 setEntity:v8];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(account == %@)", v3];
  [v4 setPredicate:v9];

  v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalIdentifier" ascending:1];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v4 setSortDescriptors:v11];

  v12 = [v3 managedObjectContext];
  v18 = 0;
  v13 = [v12 executeFetchRequest:v4 error:&v18];
  v14 = v18;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ICNASnapshotReporter *)v3 sortedFoldersForAccount:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)beginMiniSnapshotBackgroundTask
{
  v3 = +[ICNAController sharedController];
  v4 = [v3 appDelegate];

  if (v4)
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
  v4 = [v3 appDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICNASnapshotReporter *)self miniSnapshotBackgroundTaskIdentifier];
  objc_sync_enter(v5);
  v6 = [(ICNASnapshotReporter *)self miniSnapshotBackgroundTaskIdentifier];
  v7 = [v6 unsignedIntegerValue];

  v8 = *MEMORY[0x277D767B0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
  [(ICNASnapshotReporter *)self setMiniSnapshotBackgroundTaskIdentifier:v9];

  objc_sync_exit(v5);
  if (v7 == v8)
  {
    return 0;
  }

  v11 = +[ICNAController sharedController];
  v12 = [v11 appDelegate];
  [v12 endBackgroundTask:v7];

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