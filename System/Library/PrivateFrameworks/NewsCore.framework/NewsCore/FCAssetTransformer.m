@interface FCAssetTransformer
- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5;
@end

@implementation FCAssetTransformer

- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v15 = "[FCAssetTransformer transformAssetDataFromFilePath:toFilePath:error:]";
    v16 = 2080;
    v17 = "FCAssetTransformer.m";
    v18 = 1024;
    v19 = 17;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D930];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCAssetTransformer transformAssetDataFromFilePath:toFilePath:error:]"];
  v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

@end