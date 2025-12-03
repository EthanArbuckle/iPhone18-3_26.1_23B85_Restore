@interface IMDMessagesSyncCoordinator
+ (id)configureWithDelegate:(id)delegate;
+ (id)scheduleAttachmentAssetDownloadWithDelegate:(id)delegate;
+ (id)scheduleBackfillSyncWithDelegate:(id)delegate;
+ (id)scheduleBackupSyncWithDelegate:(id)delegate;
+ (id)schedulePeriodicSyncWithDelegate:(id)delegate;
+ (id)scheduleTelemetrySyncWithDelegate:(id)delegate;
+ (id)startInitialSyncWithDelegate:(id)delegate;
+ (id)startUserInitiatedSyncWithDelegate:(id)delegate;
+ (void)fetchSyncStoreCountsWithCompletion:(id)completion;
@end

@implementation IMDMessagesSyncCoordinator

+ (id)configureWithDelegate:(id)delegate
{
  v6 = 0;
  objc_msgSend_configureWith_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v6, v3);
  v4 = v6;

  return v4;
}

+ (id)startInitialSyncWithDelegate:(id)delegate
{
  v10 = 0;
  started = objc_msgSend_startInitialSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (started)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)scheduleBackfillSyncWithDelegate:(id)delegate
{
  v10 = 0;
  v4 = objc_msgSend_scheduleBackfillSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)schedulePeriodicSyncWithDelegate:(id)delegate
{
  v10 = 0;
  v4 = objc_msgSend_schedulePeriodicSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)scheduleBackupSyncWithDelegate:(id)delegate
{
  v10 = 0;
  v4 = objc_msgSend_scheduleBackupSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)scheduleAttachmentAssetDownloadWithDelegate:(id)delegate
{
  v10 = 0;
  v4 = objc_msgSend_scheduleAttachmentAssetDownloadSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)scheduleTelemetrySyncWithDelegate:(id)delegate
{
  v10 = 0;
  v4 = objc_msgSend_scheduleTelemetrySyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)startUserInitiatedSyncWithDelegate:(id)delegate
{
  v10 = 0;
  started = objc_msgSend_startUserInitiatedSyncWithDelegate_error_(IMDMessagesSyncCoordinatorInternal, a2, delegate, &v10, v3);
  v5 = v10;
  v6 = v5;
  if (started)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (void)fetchSyncStoreCountsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B9313A4;
  v8[3] = &unk_27871A4D8;
  v9 = completionCopy;
  v4 = completionCopy;
  objc_msgSend_fetchSyncStoreCountsWithCompletion_(IMDMessagesSyncCoordinatorInternal, v5, v8, v6, v7);
}

@end