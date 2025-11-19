@interface FCFeedTransformationComposite
- (FCFeedTransformationComposite)init;
- (FCFeedTransformationComposite)initWithFeedTransformations:(id)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationComposite

- (FCFeedTransformationComposite)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedTransformationComposite init]";
    v10 = 2080;
    v11 = "FCFeedTransformationComposite.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedTransformationComposite init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedTransformationComposite)initWithFeedTransformations:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedTransformations"];
    *buf = 136315906;
    v13 = "[FCFeedTransformationComposite initWithFeedTransformations:]";
    v14 = 2080;
    v15 = "FCFeedTransformationComposite.m";
    v16 = 1024;
    v17 = 30;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCFeedTransformationComposite;
  v5 = [(FCFeedTransformationComposite *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    feedTransformations = v5->_feedTransformations;
    v5->_feedTransformations = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedTransformationComposite *)self shouldLogTransformationResults];
  v6 = [(FCFeedTransformationComposite *)self feedTransformations];
  if (v5)
  {
    FCApplyFeedTransformationsAndLog(v4, v6);
  }

  else
  {
    FCApplyFeedTransformations(v4, v6);
  }
  v7 = ;

  return v7;
}

@end