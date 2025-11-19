@interface FCTodayWidgetSectionIDFeature
- (FCTodayWidgetSectionIDFeature)init;
- (void)initWithPersonalizationIdentifier:(void *)a1;
- (void)initWithSectionID:(void *)a1;
@end

@implementation FCTodayWidgetSectionIDFeature

- (void)initWithPersonalizationIdentifier:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 length];
    v6 = [@"f8" length];
    if (v5 <= [@"+" length] + v6)
    {
      v8 = 0;
    }

    else
    {
      v7 = [v4 substringFromIndex:{objc_msgSend(@"+", "length") + objc_msgSend(@"f8", "length")}];
      a1 = [(FCTodayWidgetSectionIDFeature *)a1 initWithSectionID:v7];

      v8 = a1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FCTodayWidgetSectionIDFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCTodayWidgetSectionIDFeature *)self initWithSectionID:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTodayWidgetSectionIDFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 888;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTodayWidgetSectionIDFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)initWithSectionID:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = FCTodayWidgetSectionIDFeature;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"f8", @"+", v4];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

@end