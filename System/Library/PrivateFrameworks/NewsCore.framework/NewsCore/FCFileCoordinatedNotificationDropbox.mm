@interface FCFileCoordinatedNotificationDropbox
- (FCFileCoordinatedNotificationDropbox)init;
- (FCFileCoordinatedNotificationDropbox)initWithFileURL:(id)l;
- (void)depositWithAccessor:(id)accessor completion:(id)completion;
- (void)peekSyncWithAccessor:(id)accessor;
@end

@implementation FCFileCoordinatedNotificationDropbox

- (FCFileCoordinatedNotificationDropbox)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedNotificationDropbox init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedNotificationDropbox.m";
    v12 = 1024;
    v13 = 41;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedNotificationDropbox init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedNotificationDropbox)initWithFileURL:(id)l
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v17 = "[FCFileCoordinatedNotificationDropbox initWithFileURL:]";
    v18 = 2080;
    v19 = "FCFileCoordinatedNotificationDropbox.m";
    v20 = 1024;
    v21 = 46;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15.receiver = self;
  v15.super_class = FCFileCoordinatedNotificationDropbox;
  v5 = [(FCFileCoordinatedNotificationDropbox *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:lCopy allowedClasses:v9];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)peekSyncWithAccessor:(id)accessor
{
  v19 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v12 = "[FCFileCoordinatedNotificationDropbox peekSyncWithAccessor:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedNotificationDropbox.m";
    v15 = 1024;
    v16 = 59;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedNotificationDropbox *)self fileCoordinatedDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__FCFileCoordinatedNotificationDropbox_peekSyncWithAccessor___block_invoke;
  v9[3] = &unk_1E7C38D88;
  v10 = accessorCopy;
  v6 = accessorCopy;
  [fileCoordinatedDictionary readSyncWithAccessor:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __61__FCFileCoordinatedNotificationDropbox_peekSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    v5 = [[FCNotificationDropboxData alloc] initWithDictionary:v3];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)depositWithAccessor:(id)accessor completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  completionCopy = completion;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v15 = "[FCFileCoordinatedNotificationDropbox depositWithAccessor:completion:]";
    v16 = 2080;
    v17 = "FCFileCoordinatedNotificationDropbox.m";
    v18 = 1024;
    v19 = 76;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedNotificationDropbox *)self fileCoordinatedDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__FCFileCoordinatedNotificationDropbox_depositWithAccessor_completion___block_invoke;
  v12[3] = &unk_1E7C38DB0;
  v13 = accessorCopy;
  v9 = accessorCopy;
  [fileCoordinatedDictionary writeWithAccessor:v12 completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

void __71__FCFileCoordinatedNotificationDropbox_depositWithAccessor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[FCMutableNotificationData alloc] initWithDictionary:v3];

  (*(v2 + 16))(v2, v4);
}

@end