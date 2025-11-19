@interface FCContentArchive
+ (BOOL)supportsSecureCoding;
+ (FCContentArchive)archiveWithAVAsset:(id)a3;
+ (FCContentArchive)archiveWithAVAssetKey:(id)a3;
+ (FCContentArchive)archiveWithAsset:(id)a3 remoteURL:(id)a4 filePath:(id)a5;
+ (FCContentArchive)archiveWithAssetWrappingKey:(id)a3 wrappingKeyID:(id)a4;
+ (FCContentArchive)archiveWithChildArchives:(id)a3;
+ (FCContentArchive)archiveWithPersistedArchivePath:(id)a3;
+ (FCContentArchive)archiveWithRecord:(id)a3;
+ (FCContentArchive)empty;
- (FCContentArchive)initWithCoder:(id)a3;
- (FCContentManifest)manifest;
- (id)unarchiveIntoContentContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCContentArchive

+ (BOOL)supportsSecureCoding
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCContentArchive supportsSecureCoding]";
    v10 = 2080;
    v11 = "FCContentArchive.m";
    v12 = 1024;
    v13 = 88;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCContentArchive supportsSecureCoding]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCContentArchive)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCContentArchive initWithCoder:]";
    v12 = 2080;
    v13 = "FCContentArchive.m";
    v14 = 1024;
    v15 = 93;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCContentArchive initWithCoder:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)encodeWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCContentArchive encodeWithCoder:]";
    v12 = 2080;
    v13 = "FCContentArchive.m";
    v14 = 1024;
    v15 = 98;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCContentArchive encodeWithCoder:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (FCContentArchive)empty
{
  if (qword_1EDB26E28 != -1)
  {
    dispatch_once(&qword_1EDB26E28, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

uint64_t __25__FCContentArchive_empty__block_invoke()
{
  v0 = objc_alloc_init(FCEmptyContentArchive);
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (FCContentArchive)archiveWithRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [FCRecordContentArchive alloc];
    v6 = v4;
    if (v5)
    {
      v9.receiver = v5;
      v9.super_class = FCRecordContentArchive;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      v5 = v7;
      if (v7)
      {
        objc_storeStrong(v7 + 1, a3);
      }
    }
  }

  else
  {
    v5 = +[FCContentArchive empty];
  }

  return v5;
}

+ (FCContentArchive)archiveWithAsset:(id)a3 remoteURL:(id)a4 filePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [FCAssetContentArchive alloc];
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (v11)
    {
      v19.receiver = v11;
      v19.super_class = FCAssetContentArchive;
      v15 = objc_msgSendSuper2(&v19, sel_init);
      v11 = v15;
      if (v15)
      {
        objc_storeStrong(v15 + 1, a3);
        objc_storeStrong(&v11->_remoteURL, a4);
        v16 = [v14 copy];
        filePath = v11->_filePath;
        v11->_filePath = v16;
      }
    }
  }

  else
  {
    v11 = +[FCContentArchive empty];
  }

  return v11;
}

+ (FCContentArchive)archiveWithAssetWrappingKey:(id)a3 wrappingKeyID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [FCAssetKeyContentArchive alloc];
    v9 = v6;
    v10 = v7;
    if (v8)
    {
      v13.receiver = v8;
      v13.super_class = FCAssetKeyContentArchive;
      v11 = objc_msgSendSuper2(&v13, sel_init);
      v8 = v11;
      if (v11)
      {
        objc_storeStrong(v11 + 1, a3);
        objc_storeStrong(&v8->_wrappingKeyID, a4);
      }
    }
  }

  else
  {
    v8 = +[FCContentArchive empty];
  }

  return v8;
}

+ (FCContentArchive)archiveWithAVAsset:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [FCAVAssetContentArchive alloc];
    v6 = v4;
    if (v5)
    {
      v9.receiver = v5;
      v9.super_class = FCAVAssetContentArchive;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      v5 = v7;
      if (v7)
      {
        objc_storeStrong(v7 + 1, a3);
      }
    }
  }

  else
  {
    v5 = +[FCContentArchive empty];
  }

  return v5;
}

+ (FCContentArchive)archiveWithAVAssetKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [FCAVAssetKeyContentArchive alloc];
    v6 = v4;
    if (v5)
    {
      v9.receiver = v5;
      v9.super_class = FCAVAssetKeyContentArchive;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      v5 = v7;
      if (v7)
      {
        objc_storeStrong(v7 + 1, a3);
      }
    }
  }

  else
  {
    v5 = +[FCContentArchive empty];
  }

  return v5;
}

+ (FCContentArchive)archiveWithPersistedArchivePath:(id)a3
{
  v3 = a3;
  v4 = [FCPersistedContentArchive alloc];
  v5 = v3;
  if (v4)
  {
    v9.receiver = v4;
    v9.super_class = FCPersistedContentArchive;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    if (v4)
    {
      v6 = [v5 copy];
      archivePath = v4->_archivePath;
      v4->_archivePath = v6;
    }
  }

  return v4;
}

+ (FCContentArchive)archiveWithChildArchives:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [FCAggregateContentArchive alloc];
    v5 = v3;
    if (v4)
    {
      v13.receiver = v4;
      v13.super_class = FCAggregateContentArchive;
      v4 = objc_msgSendSuper2(&v13, sel_init);
      if (v4)
      {
        v6 = MEMORY[0x1E695DFD8];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __51__FCAggregateContentArchive_initWithChildArchives___block_invoke;
        v11[3] = &unk_1E7C371F8;
        v12 = v5;
        v7 = [v6 fc_set:v11];
        v8 = [v7 allObjects];
        childArchives = v4->_childArchives;
        v4->_childArchives = v8;
      }
    }
  }

  return v4;
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCContentArchive unarchiveIntoContentContext:]";
    v12 = 2080;
    v13 = "FCContentArchive.m";
    v14 = 1024;
    v15 = 162;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCContentArchive unarchiveIntoContentContext:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (FCContentManifest)manifest
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCContentArchive manifest]";
    v10 = 2080;
    v11 = "FCContentArchive.m";
    v12 = 1024;
    v13 = 168;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCContentArchive manifest]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

@end