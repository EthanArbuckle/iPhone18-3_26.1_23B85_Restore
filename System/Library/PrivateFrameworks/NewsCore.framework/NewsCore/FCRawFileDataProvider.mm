@interface FCRawFileDataProvider
- (FCRawFileDataProvider)init;
- (FCRawFileDataProvider)initWithFilePath:(id)path holdToken:(id)token;
- (NSData)data;
@end

@implementation FCRawFileDataProvider

- (FCRawFileDataProvider)initWithFilePath:(id)path holdToken:(id)token
{
  pathCopy = path;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = FCRawFileDataProvider;
  v8 = [(FCRawFileDataProvider *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    filePath = v8->_filePath;
    v8->_filePath = v9;

    v8->_isRawFileConsumable = 1;
    objc_storeStrong(&v8->_holdToken, token);
  }

  return v8;
}

- (FCRawFileDataProvider)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRawFileDataProvider init]";
    v10 = 2080;
    v11 = "FCRawFileDataProvider.m";
    v12 = 1024;
    v13 = 44;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRawFileDataProvider init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSData)data
{
  v2 = MEMORY[0x1E695DEF0];
  filePath = [(FCRawFileDataProvider *)self filePath];
  v4 = [v2 dataWithContentsOfFile:filePath];

  return v4;
}

@end