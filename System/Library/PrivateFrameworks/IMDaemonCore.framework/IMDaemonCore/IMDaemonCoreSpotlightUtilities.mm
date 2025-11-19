@interface IMDaemonCoreSpotlightUtilities
+ (BOOL)_needsReindexingDueToInvalidClientState;
+ (BOOL)_needsReindexingDueToVersionMismatch;
+ (BOOL)needsDeferredIndexing;
+ (BOOL)needsReindexing;
+ (IMSpotlightClientState)currentClientState;
+ (OS_dispatch_queue)spotlightIndexQueue;
+ (int64_t)lastIndexedRowID;
+ (void)stageIndexingDeletionForMigrationIfNeededWithCompletion:(id)a3;
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
  v2 = [MEMORY[0x277D18EE0] synchronousSpotlightQueryProvider];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B5911AC;
  v5[3] = &unk_2787052E0;
  v5[4] = &v6;
  [v2 fetchSpotlightClientStateWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)needsDeferredIndexing
{
  v2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  if (v3)
  {
    return 0;
  }

  v5 = MEMORY[0x277D1A978];

  return [v5 needsDeferredIndexing];
}

+ (BOOL)_needsReindexingDueToVersionMismatch
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a1 currentClientState];
  v4 = [v3 needsReindex];
  v5 = [a1 needsDeferredIndexing];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v3 indexRevision];
    v8 = [MEMORY[0x277D1AC60] _latestIndexRevision];
    v9 = @"NO";
    v12 = 134218498;
    v13 = v7;
    if (v5)
    {
      v9 = @"YES";
    }

    v14 = 2048;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Current index version %lld expected %lld. Needs Deferred Indexing %@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return (v5 | v4) & 1;
}

+ (BOOL)_needsReindexingDueToInvalidClientState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [MEMORY[0x277D18EE0] synchronousSpotlightQueryProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B5914BC;
  v4[3] = &unk_278705308;
  v4[4] = &v5;
  [v2 validateSpotlightClientStateWithCompletion:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (BOOL)needsReindexing
{
  if ([a1 _needsReindexingDueToVersionMismatch])
  {
    return 1;
  }

  return MEMORY[0x2821F9670](a1, sel__needsReindexingDueToInvalidClientState);
}

+ (int64_t)lastIndexedRowID
{
  v2 = +[IMDaemonCoreSpotlightUtilities currentClientState];
  v3 = [v2 lastIndexedRowID];

  return v3;
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

+ (void)stageIndexingDeletionForMigrationIfNeededWithCompletion:(id)a3
{
  v3 = a3;
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

    v3[2](v3, 0);
    goto LABEL_14;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Clearing IMCoreSpotlight index state due to restore from backup", buf, 2u);
  }

  v8 = [MEMORY[0x277D18EE0] spotlightQueryProvider];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5918B0;
  v9[3] = &unk_278704440;
  v10 = v3;
  [v8 invalidateSpotlightClientStateVersioningWithCompletion:v9];

LABEL_14:
}

@end