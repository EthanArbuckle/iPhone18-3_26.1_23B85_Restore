@interface DMCRFMBSnapshotSource
- (BOOL)startRestoreForSnapshot:(id)a3 excludingAppBundleIdentifiers:(id)a4 completion:(id)a5;
- (DMCRFMBSnapshotSource)initWithPersonaIdentifier:(id)a3 delegate:(id)a4;
- (DMCRFSnapshotSourceDelegate)delegate;
- (void)fetchAppBundleIDsForSnapshot:(id)a3 completion:(id)a4;
- (void)fetchRestorableSnapshotsWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation DMCRFMBSnapshotSource

- (DMCRFMBSnapshotSource)initWithPersonaIdentifier:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = DMCRFMBSnapshotSource;
  v9 = [(DMCRFMBSnapshotSource *)&v20 init];
  if (v9)
  {
    v10 = *(DMCLogObjects() + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_DEFAULT, "managed restore, DMCRFMBSnapshotSource init begin", v19, 2u);
    }

    v11 = dispatch_queue_create("snapshot source", 0);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_personaIdentifier, a3);
    v13 = [[DMCRFMBRestoreDelegate alloc] initWithDelegate:v8 source:v9];
    restoreDelegate = v9->_restoreDelegate;
    v9->_restoreDelegate = v13;

    v15 = [objc_alloc(MEMORY[0x277D28A40]) initWithDelegate:v9->_restoreDelegate eventQueue:v9->_queue personaIdentifier:v9->_personaIdentifier];
    mobileBackup = v9->_mobileBackup;
    v9->_mobileBackup = v15;
  }

  v17 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_247E7D000, v17, OS_LOG_TYPE_DEFAULT, "managed restore, DMCRFMBSnapshotSource init end", v19, 2u);
  }

  return v9;
}

- (DMCRFSnapshotSourceDelegate)delegate
{
  v2 = [(DMCRFMBSnapshotSource *)self restoreDelegate];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(DMCRFMBSnapshotSource *)self restoreDelegate];
  [v5 setDelegate:v4];
}

- (void)fetchRestorableSnapshotsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_DEFAULT, "managed restore, fetchRestorableSnapshotsWithCompletion: begin", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v6 = [(DMCRFMBSnapshotSource *)self mobileBackup];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__DMCRFMBSnapshotSource_fetchRestorableSnapshotsWithCompletion___block_invoke;
  v10[3] = &unk_278EE80C0;
  v12 = buf;
  v7 = v4;
  v11 = v7;
  [v6 fetchRestorableSnapshotsWithCompletion:v10];

  v8 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "managed restore, fetchRestorableSnapshotsWithCompletion end", v9, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void __64__DMCRFMBSnapshotSource_fetchRestorableSnapshotsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "managed restore, fetchRestorableSnapshotsWithCompletion: completion", buf, 2u);
  }

  if (v5)
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [DMCRFMBSnapshot alloc];
          v18 = [(DMCRFMBSnapshot *)v17 initWithSnapshot:v16, v21];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v18];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = [*(*(*(a1 + 40) + 8) + 40) copy];
    (*(v19 + 16))(v19, v20, v6);
  }
}

- (void)fetchAppBundleIDsForSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "managed restore, fetchAppBundleIDsForSnapshot:completion: begin", buf, 2u);
  }

  v9 = [v6 wrappedValue];
  v10 = [(DMCRFMBSnapshotSource *)self mobileBackup];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__DMCRFMBSnapshotSource_fetchAppBundleIDsForSnapshot_completion___block_invoke;
  v13[3] = &unk_278EE80E8;
  v11 = v7;
  v14 = v11;
  [v10 fetchAppBundleIDsForSnapshot:v9 completion:v13];

  v12 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "managed restore, fetchAppBundleIDsForSnapshot:completion: end", buf, 2u);
  }
}

void __65__DMCRFMBSnapshotSource_fetchAppBundleIDsForSnapshot_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "managed restore, fetchAppBundleIDsForSnapshot:completion: completion", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (BOOL)startRestoreForSnapshot:(id)a3 excludingAppBundleIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_DEFAULT, "managed restore, startRestoreForSnapshot: begin", buf, 2u);
  }

  v12 = [v8 wrappedValue];
  v13 = objc_opt_new();
  [v13 setExcludedAppBundleIDs:v10];

  v14 = [(DMCRFMBSnapshotSource *)self mobileBackup];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__DMCRFMBSnapshotSource_startRestoreForSnapshot_excludingAppBundleIdentifiers_completion___block_invoke;
  v18[3] = &unk_278EE7F58;
  v15 = v9;
  v19 = v15;
  [v14 startRestoreForSnapshot:v12 options:v13 completion:v18];

  v16 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v16, OS_LOG_TYPE_DEFAULT, "managed restore, startRestoreForSnapshot: end", buf, 2u);
  }

  return 1;
}

void __90__DMCRFMBSnapshotSource_startRestoreForSnapshot_excludingAppBundleIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "managed restore, startRestoreForSnapshot: completion", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

@end