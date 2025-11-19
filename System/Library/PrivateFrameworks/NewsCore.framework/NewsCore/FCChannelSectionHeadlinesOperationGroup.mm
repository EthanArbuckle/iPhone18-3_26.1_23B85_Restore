@interface FCChannelSectionHeadlinesOperationGroup
- (FCChannelSectionHeadlinesOperationGroup)init;
- (FCChannelSectionHeadlinesOperationGroup)initWithSection:(id)a3 headlines:(id)a4;
@end

@implementation FCChannelSectionHeadlinesOperationGroup

- (FCChannelSectionHeadlinesOperationGroup)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCChannelSectionHeadlinesOperationGroup init]";
    v10 = 2080;
    v11 = "FCChannelSectionHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCChannelSectionHeadlinesOperationGroup init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCChannelSectionHeadlinesOperationGroup)initWithSection:(id)a3 headlines:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCChannelSectionHeadlinesOperationGroup;
  v8 = [(FCChannelSectionHeadlinesOperationGroup *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    section = v8->_section;
    v8->_section = v9;

    v11 = [v7 copy];
    headlines = v8->_headlines;
    v8->_headlines = v11;
  }

  return v8;
}

@end