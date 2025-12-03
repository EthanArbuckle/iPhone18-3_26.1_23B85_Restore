@interface FCGroupFont
- (FCGroupFont)init;
- (FCGroupFont)initWithName:(id)name urlString:(id)string;
@end

@implementation FCGroupFont

- (FCGroupFont)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCGroupFont init]";
    v10 = 2080;
    v11 = "FCForYouConfig.m";
    v12 = 1024;
    v13 = 389;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCGroupFont init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCGroupFont)initWithName:(id)name urlString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  stringCopy = string;
  if (!nameCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "name"];
    *buf = 136315906;
    v17 = "[FCGroupFont initWithName:urlString:]";
    v18 = 2080;
    v19 = "FCForYouConfig.m";
    v20 = 1024;
    v21 = 394;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (stringCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stringCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "urlString"];
    *buf = 136315906;
    v17 = "[FCGroupFont initWithName:urlString:]";
    v18 = 2080;
    v19 = "FCForYouConfig.m";
    v20 = 1024;
    v21 = 395;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = FCGroupFont;
  v9 = [(FCGroupFont *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (nameCopy && stringCopy)
    {
      objc_storeStrong(&v9->_name, name);
      objc_storeStrong(&v10->_urlString, string);
    }

    else
    {

      v10 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end