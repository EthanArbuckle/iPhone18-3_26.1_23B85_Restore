@interface DMCSnapshotUtilities
- (BOOL)_executeSnapshotActionAtPath:(id)path action:(id)action;
- (BOOL)captureSnapshotAtPath:(id)path name:(id)name;
- (BOOL)deleteSnapshotAtPath:(id)path name:(id)name;
@end

@implementation DMCSnapshotUtilities

- (BOOL)captureSnapshotAtPath:(id)path name:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__DMCSnapshotUtilities_captureSnapshotAtPath_name___block_invoke;
  v9[3] = &unk_1E7ADD270;
  v10 = nameCopy;
  v7 = nameCopy;
  LOBYTE(path) = [(DMCSnapshotUtilities *)self _executeSnapshotActionAtPath:path action:v9];

  return path;
}

BOOL __51__DMCSnapshotUtilities_captureSnapshotAtPath_name___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = fs_snapshot_create(a2, [*(a1 + 32) UTF8String], 0);
  v3 = *DMCLogObjects();
  if (v2 < 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = v3;
      v6 = __error();
      v7 = [v4 stringWithUTF8String:strerror(*v6)];
      v8 = *__error();
      v11 = 138543618;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "fs_snapshot_create() failed with error: %{public}@ (%d)", &v11, 0x12u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "fs_snapshot_create() succeeded.", &v11, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2 >= 0;
}

- (BOOL)deleteSnapshotAtPath:(id)path name:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__DMCSnapshotUtilities_deleteSnapshotAtPath_name___block_invoke;
  v9[3] = &unk_1E7ADD270;
  v10 = nameCopy;
  v7 = nameCopy;
  LOBYTE(path) = [(DMCSnapshotUtilities *)self _executeSnapshotActionAtPath:path action:v9];

  return path;
}

BOOL __50__DMCSnapshotUtilities_deleteSnapshotAtPath_name___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (fs_snapshot_delete(a2, [*(a1 + 32) UTF8String], 0) < 0 && *__error() != 2)
  {
    v5 = *DMCLogObjects();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = __error();
      v9 = [v6 stringWithUTF8String:strerror(*v8)];
      v10 = *__error();
      v11 = 138543618;
      v12 = v9;
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "fs_snapshot_delete() failed with error: %{public}@ (%d)", &v11, 0x12u);

      result = 0;
    }
  }

  else
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "fs_snapshot_delete() succeeded.", &v11, 2u);
    }

    result = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_executeSnapshotActionAtPath:(id)path action:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = open([@"/private/var" fileSystemRepresentation], 0);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = v8;
      v11 = __error();
      v12 = [v9 stringWithUTF8String:strerror(*v11)];
      v13 = *__error();
      v16 = 138543618;
      v17 = v12;
      v18 = 1024;
      v19 = v13;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "open() failed with error: %{public}@ (%d)", &v16, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = actionCopy[2](actionCopy, v5);
    close(v6);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

@end