@interface FCFileAccessToken
- (FCFileAccessToken)init;
- (FCFileAccessToken)initWithCoder:(id)coder;
- (FCFileAccessToken)initWithType:(int64_t)type fileURL:(id)l fileCoordinator:(id)coordinator retainedAccess:(id)access;
- (id)initForReadingURL:(id)l error:(id *)error;
- (id)initForWritingURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFileAccessToken

- (FCFileAccessToken)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileAccessToken init]";
    v10 = 2080;
    v11 = "FCFileAccessToken.m";
    v12 = 1024;
    v13 = 35;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileAccessToken init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileAccessToken)initWithType:(int64_t)type fileURL:(id)l fileCoordinator:(id)coordinator retainedAccess:(id)access
{
  lCopy = l;
  coordinatorCopy = coordinator;
  accessCopy = access;
  v17.receiver = self;
  v17.super_class = FCFileAccessToken;
  v14 = [(FCFileAccessToken *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_fileURL, l);
    objc_storeStrong(&v15->_fileCoordinator, coordinator);
    objc_storeStrong(&v15->_retainedAccess, access);
  }

  return v15;
}

- (id)initForReadingURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__40;
  v25 = __Block_byref_object_dispose__40;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__FCFileAccessToken_initForReadingURL_error___block_invoke;
  v17[3] = &unk_1E7C40ED8;
  v19 = &v21;
  v20 = 0;
  v8 = v7;
  v18 = v8;
  [v8 coordinateReadingItemAtURL:lCopy options:0 error:&v20 byAccessor:v17];
  v9 = v20;
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  if (v22[5])
  {
    self = [(FCFileAccessToken *)self initWithType:0 fileURL:lCopy fileCoordinator:v8 retainedAccess:?];
    selfCopy = self;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__FCFileAccessToken_initForReadingURL_error___block_invoke_2;
    v14[3] = &unk_1E7C397D0;
    v15 = lCopy;
    v16 = v10;
    selfCopy = __45__FCFileAccessToken_initForReadingURL_error___block_invoke_2(v14);
  }

  _Block_object_dispose(&v21, 8);
  return selfCopy;
}

uint64_t __45__FCFileAccessToken_initForReadingURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retainAccess];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __45__FCFileAccessToken_initForReadingURL_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to create file access token for reading, url=%{public}@, error=%{public}@", &v7, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)initForWritingURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__40;
  v25 = __Block_byref_object_dispose__40;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__FCFileAccessToken_initForWritingURL_error___block_invoke;
  v17[3] = &unk_1E7C40ED8;
  v19 = &v21;
  v20 = 0;
  v8 = v7;
  v18 = v8;
  [v8 coordinateWritingItemAtURL:lCopy options:4 error:&v20 byAccessor:v17];
  v9 = v20;
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  if (v22[5])
  {
    self = [(FCFileAccessToken *)self initWithType:1 fileURL:lCopy fileCoordinator:v8 retainedAccess:?];
    selfCopy = self;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__FCFileAccessToken_initForWritingURL_error___block_invoke_2;
    v14[3] = &unk_1E7C397D0;
    v15 = lCopy;
    v16 = v10;
    selfCopy = __45__FCFileAccessToken_initForWritingURL_error___block_invoke_2(v14);
  }

  _Block_object_dispose(&v21, 8);
  return selfCopy;
}

uint64_t __45__FCFileAccessToken_initForWritingURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retainAccess];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __45__FCFileAccessToken_initForWritingURL_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to create file access token for writing, url=%{public}@, error=%{public}@", &v7, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  [(NSFileCoordinator *)self->_fileCoordinator releaseAccess:self->_retainedAccess];
  v3.receiver = self;
  v3.super_class = FCFileAccessToken;
  [(FCFileAccessToken *)&v3 dealloc];
}

- (FCFileAccessToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];

  if (v6)
  {
    v7 = v6;
    if (v5 == 1)
    {
      v8 = [(FCFileAccessToken *)self initForWritingURL:v7 error:0];
    }

    else
    {
      if (v5)
      {
LABEL_10:

        selfCopy = self;
        goto LABEL_11;
      }

      v8 = [(FCFileAccessToken *)self initForReadingURL:v7 error:0];
    }

    self = v8;
    goto LABEL_10;
  }

  v9 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "failed to decode file access token due to missing fileURL", v12, 2u);
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FCFileAccessToken type](self forKey:{"type"), @"type"}];
  fileURL = [(FCFileAccessToken *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"fileURL"];
}

@end