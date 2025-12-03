@interface IMDaemonCoreSpotlightUtilities
+ (BOOL)_needsReindexingDueToInvalidClientState;
+ (BOOL)_needsReindexingDueToVersionMismatch;
+ (BOOL)needsDeferredIndexing;
+ (BOOL)needsReindexing;
+ (IMSpotlightClientState)currentClientState;
+ (OS_dispatch_queue)spotlightIndexQueue;
+ (int64_t)lastIndexedRowID;
+ (void)stageIndexingDeletionForMigrationIfNeededWithCompletion:(id)completion;
@end

@implementation IMDaemonCoreSpotlightUtilities

+ (IMSpotlightClientState)currentClientState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_22B4D76D0;
  v10 = sub_22B4D78C4;
  v11 = 0;
  synchronousSpotlightQueryProvider = [MEMORY[0x277D18EE0] synchronousSpotlightQueryProvider];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B5911AC;
  v5[3] = &unk_2787052E0;
  v5[4] = &v6;
  [synchronousSpotlightQueryProvider fetchSpotlightClientStateWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)needsDeferredIndexing
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [mEMORY[0x277D1A9B8] isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled)
  {
    return 0;
  }

  v5 = MEMORY[0x277D1A978];

  return [v5 needsDeferredIndexing];
}

+ (BOOL)_needsReindexingDueToVersionMismatch
{
  v18 = *MEMORY[0x277D85DE8];
  currentClientState = [self currentClientState];
  needsReindex = [currentClientState needsReindex];
  needsDeferredIndexing = [self needsDeferredIndexing];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    indexRevision = [currentClientState indexRevision];
    _latestIndexRevision = [MEMORY[0x277D1AC60] _latestIndexRevision];
    v9 = @"NO";
    v12 = 134218498;
    v13 = indexRevision;
    if (needsDeferredIndexing)
    {
      v9 = @"YES";
    }

    v14 = 2048;
    v15 = _latestIndexRevision;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Current index version %lld expected %lld. Needs Deferred Indexing %@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return (needsDeferredIndexing | needsReindex) & 1;
}

+ (BOOL)_needsReindexingDueToInvalidClientState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  synchronousSpotlightQueryProvider = [MEMORY[0x277D18EE0] synchronousSpotlightQueryProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B5914BC;
  v4[3] = &unk_278705308;
  v4[4] = &v5;
  [synchronousSpotlightQueryProvider validateSpotlightClientStateWithCompletion:v4];

  LOBYTE(synchronousSpotlightQueryProvider) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return synchronousSpotlightQueryProvider;
}

+ (BOOL)needsReindexing
{
  if ([self _needsReindexingDueToVersionMismatch])
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel__needsReindexingDueToInvalidClientState);
}

+ (int64_t)lastIndexedRowID
{
  v2 = +[IMDaemonCoreSpotlightUtilities currentClientState];
  lastIndexedRowID = [v2 lastIndexedRowID];

  return lastIndexedRowID;
}

+ (OS_dispatch_queue)spotlightIndexQueue
{
  if (qword_281420EC0 != -1)
  {
    sub_22B7D3C7C();
  }

  v3 = qword_281420EB8;

  return v3;
}

+ (void)stageIndexingDeletionForMigrationIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!sub_22B5918C0())
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D3D08(v6);
    }

    goto LABEL_10;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = off_281421338;
  v19 = off_281421338;
  if (!off_281421338)
  {
    *buf = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = sub_22B591A04;
    v14 = &unk_278703200;
    v15 = &v16;
    sub_22B591A04(buf);
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    sub_22B7D3C90();
  }

  v5 = v4();
  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if ((v5 & 4) == 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not clearing IMCoreSpotlight index state, erase or upgrade install", buf, 2u);
    }

LABEL_10:

    completionCopy[2](completionCopy, 0);
    goto LABEL_14;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Clearing IMCoreSpotlight index state due to restore from backup", buf, 2u);
  }

  spotlightQueryProvider = [MEMORY[0x277D18EE0] spotlightQueryProvider];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5918B0;
  v9[3] = &unk_278704440;
  v10 = completionCopy;
  [spotlightQueryProvider invalidateSpotlightClientStateVersioningWithCompletion:v9];

LABEL_14:
}

@end