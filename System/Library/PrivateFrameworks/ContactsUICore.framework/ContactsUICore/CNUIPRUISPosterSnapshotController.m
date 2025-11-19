@interface CNUIPRUISPosterSnapshotController
- (id)currentSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (id)sharedController;
- (void)acquireKeepActiveAssertionForReason:(id)a3;
- (void)executeSnapshotRequest:(id)a3 completion:(id)a4;
- (void)releaseKeepActiveAssertionForReason:(id)a3;
@end

@implementation CNUIPRUISPosterSnapshotController

- (id)sharedController
{
  if (sharedController___onceToken != -1)
  {
    [CNUIPRUISPosterSnapshotController sharedController];
  }

  v3 = sharedController___sharedSnapshotController;

  return v3;
}

void __53__CNUIPRUISPosterSnapshotController_sharedController__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DECAF000-0000-0000-0000-000000000003"];
  v1 = +[CNUIPRUISPosterSnapshotSQLiteCache contactsSnapshotCache];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPRUISPosterSnapshotControllerClass_softClass;
  v10 = getPRUISPosterSnapshotControllerClass_softClass;
  if (!getPRUISPosterSnapshotControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getPRUISPosterSnapshotControllerClass_block_invoke;
    v6[3] = &unk_1E76E79E0;
    v6[4] = &v7;
    __getPRUISPosterSnapshotControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithSQLiteCache:v1 instanceIdentifier:v0];
  v5 = sharedController___sharedSnapshotController;
  sharedController___sharedSnapshotController = v4;
}

- (id)currentSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNUIPRUISPosterSnapshotController *)self sharedController];
  v8 = [v6 wrappedRequest];

  v9 = [v7 currentSnapshotBundleForRequest:v8 error:a4];

  if (v9)
  {
    v10 = [[CNUIPRUISPosterSnapshotBundle alloc] initWithWrappedBundle:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNUIPRUISPosterSnapshotController *)self sharedController];
  v8 = [v6 wrappedRequest];

  v9 = [v7 latestSnapshotBundleForRequest:v8 error:a4];

  if (v9)
  {
    v10 = [[CNUIPRPosterSnapshotBundle alloc] initWithWrappedBundle:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)executeSnapshotRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNUIPRUISPosterSnapshotController *)self sharedController];
  v9 = [v7 wrappedRequest];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CNUIPRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke;
  v11[3] = &unk_1E76E99A8;
  v12 = v6;
  v10 = v6;
  [v8 executeSnapshotRequest:v9 completion:v11];
}

void __71__CNUIPRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*(a1 + 32))
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v11 = [[CNUIPRUISPosterSnapshotRequest alloc] initWithWrappedRequest:v9];

    v10 = [[CNUIPRUISPosterSnapshotResult alloc] initWithWrappedResult:v8];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)acquireKeepActiveAssertionForReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v8 = "Posters are not supported on iPad";
      v9 = v7;
      v10 = 2;
LABEL_9:
      _os_log_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_INFO, v8, &v14, v10);
    }
  }

  else
  {
    if (acquireKeepActiveAssertionForReason__onceToken != -1)
    {
      [CNUIPRUISPosterSnapshotController acquireKeepActiveAssertionForReason:];
    }

    v11 = [_assertions objectForKeyedSubscript:v4];

    if (!v11)
    {
      v12 = [(CNUIPRUISPosterSnapshotController *)self sharedController];
      v13 = [v12 acquireKeepActiveAssertionForReason:v4];

      [_assertions setObject:v13 forKeyedSubscript:v4];
      goto LABEL_11;
    }

    v7 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      v8 = "There's already an assertion for reason: %@, skipping adding another one";
      v9 = v7;
      v10 = 12;
      goto LABEL_9;
    }
  }

LABEL_11:
}

uint64_t __73__CNUIPRUISPosterSnapshotController_acquireKeepActiveAssertionForReason___block_invoke()
{
  _assertions = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)releaseKeepActiveAssertionForReason:(id)a3
{
  v3 = _assertions;
  v4 = a3;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 invalidate];
  [_assertions setObject:0 forKeyedSubscript:v4];
}

@end