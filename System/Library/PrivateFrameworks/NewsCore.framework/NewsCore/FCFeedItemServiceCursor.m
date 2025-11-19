@interface FCFeedItemServiceCursor
- (FCFeedItemServiceCursor)init;
- (FCFeedItemServiceCursor)initWithLastRefreshed:(id)a3 feedItems:(id)a4;
@end

@implementation FCFeedItemServiceCursor

- (FCFeedItemServiceCursor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedItemServiceCursor init]";
    v10 = 2080;
    v11 = "FCFeedItemServiceCursor.m";
    v12 = 1024;
    v13 = 19;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedItemServiceCursor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedItemServiceCursor)initWithLastRefreshed:(id)a3 feedItems:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "lastRefreshed"];
    *buf = 136315906;
    v19 = "[FCFeedItemServiceCursor initWithLastRefreshed:feedItems:]";
    v20 = 2080;
    v21 = "FCFeedItemServiceCursor.m";
    v22 = 1024;
    v23 = 25;
    v24 = 2114;
    v25 = v15;
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
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems"];
    *buf = 136315906;
    v19 = "[FCFeedItemServiceCursor initWithLastRefreshed:feedItems:]";
    v20 = 2080;
    v21 = "FCFeedItemServiceCursor.m";
    v22 = 1024;
    v23 = 26;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = FCFeedItemServiceCursor;
  v8 = [(FCFeedItemServiceCursor *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    lastRefreshed = v8->_lastRefreshed;
    v8->_lastRefreshed = v9;

    v11 = [v7 copy];
    feedItems = v8->_feedItems;
    v8->_feedItems = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

@end