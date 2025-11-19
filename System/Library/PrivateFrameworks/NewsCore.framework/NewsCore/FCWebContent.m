@interface FCWebContent
- (FCWebContent)init;
- (FCWebContent)initWithArticleID:(id)a3 sourceURL:(id)a4 excerptAssetHandle:(id)a5;
@end

@implementation FCWebContent

- (FCWebContent)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCWebContent init]";
    v10 = 2080;
    v11 = "FCWebContent.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCWebContent init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCWebContent)initWithArticleID:(id)a3 sourceURL:(id)a4 excerptAssetHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FCWebContent;
  v11 = [(FCWebContent *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    articleID = v11->_articleID;
    v11->_articleID = v12;

    objc_storeStrong(&v11->_sourceURL, a4);
    objc_storeStrong(&v11->_excerptAssetHandle, a5);
  }

  return v11;
}

@end