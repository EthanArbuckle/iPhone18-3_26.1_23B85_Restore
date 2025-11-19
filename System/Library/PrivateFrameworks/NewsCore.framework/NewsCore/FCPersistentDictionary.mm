@interface FCPersistentDictionary
- (BOOL)writeWithAccessor:(id)a3;
- (FCPersistentDictionary)init;
- (FCPersistentDictionary)initWithFileURL:(id)a3 allowedClasses:(id)a4;
- (id)read;
@end

@implementation FCPersistentDictionary

- (id)read
{
  v3 = [(FCPersistentDictionary *)self fileURL];
  v4 = [(FCPersistentDictionary *)self allowedClasses];
  v5 = FCReadDictionary(v3, v4);

  return v5;
}

- (FCPersistentDictionary)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersistentDictionary init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedDictionary.m";
    v12 = 1024;
    v13 = 138;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersistentDictionary init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersistentDictionary)initWithFileURL:(id)a3 allowedClasses:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v21 = "[FCPersistentDictionary initWithFileURL:allowedClasses:]";
    v22 = 2080;
    v23 = "FCFileCoordinatedDictionary.m";
    v24 = 1024;
    v25 = 143;
    v26 = 2114;
    v27 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "allowedClasses"];
    *buf = 136315906;
    v21 = "[FCPersistentDictionary initWithFileURL:allowedClasses:]";
    v22 = 2080;
    v23 = "FCFileCoordinatedDictionary.m";
    v24 = 1024;
    v25 = 144;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v18.receiver = self;
  v18.super_class = FCPersistentDictionary;
  v8 = [(FCPersistentDictionary *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    fileURL = v8->_fileURL;
    v8->_fileURL = v9;

    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v12 = [v7 setByAddingObjectsFromArray:v11];
    allowedClasses = v8->_allowedClasses;
    v8->_allowedClasses = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)writeWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [(FCPersistentDictionary *)self fileURL];
  v6 = [(FCPersistentDictionary *)self allowedClasses];
  v7 = [(FCPersistentDictionary *)self fileURL];
  v8 = FCReadWriteDictionaryWithAccessor(v5, v6, v7, 0, v4);

  return v8;
}

@end