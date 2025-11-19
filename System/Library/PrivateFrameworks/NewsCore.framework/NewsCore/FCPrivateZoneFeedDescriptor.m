@interface FCPrivateZoneFeedDescriptor
- (FCPrivateZoneFeedDescriptor)initWithIdentifier:(id)a3;
- (FCPrivateZoneFeedDescriptor)initWithPrivateDataController:(id)a3 identifier:(id)a4 feedType:(int64_t)a5;
- (id)backingHeadlineIDs;
- (id)streamOfLatestHeadlinesWithContext:(id)a3;
@end

@implementation FCPrivateZoneFeedDescriptor

- (FCPrivateZoneFeedDescriptor)initWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCPrivateZoneFeedDescriptor initWithIdentifier:]";
    v12 = 2080;
    v13 = "FCPrivateZoneFeedDescriptor.m";
    v14 = 1024;
    v15 = 50;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPrivateZoneFeedDescriptor initWithIdentifier:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (FCPrivateZoneFeedDescriptor)initWithPrivateDataController:(id)a3 identifier:(id)a4 feedType:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataController"];
    *buf = 136315906;
    v19 = "[FCPrivateZoneFeedDescriptor initWithPrivateDataController:identifier:feedType:]";
    v20 = 2080;
    v21 = "FCPrivateZoneFeedDescriptor.m";
    v22 = 1024;
    v23 = 55;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier"];
    *buf = 136315906;
    v19 = "[FCPrivateZoneFeedDescriptor initWithPrivateDataController:identifier:feedType:]";
    v20 = 2080;
    v21 = "FCPrivateZoneFeedDescriptor.m";
    v22 = 1024;
    v23 = 56;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = FCPrivateZoneFeedDescriptor;
  v11 = [(FCFeedDescriptor *)&v17 initWithIdentifier:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_privateDataController, a3);
    v12->_feedType = a5;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)streamOfLatestHeadlinesWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 networkReachability];
  v6 = [v5 isCloudKitReachable];

  if (v6)
  {
    v7 = NewsCoreUserDefaults();
    if ([v7 BOOLForKey:@"update_headlines_immediately"])
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 86400.0;
    }
  }

  else
  {
    v8 = 1.79769313e308;
  }

  v9 = [(FCPrivateZoneFeedDescriptor *)self backingHeadlineIDs];
  v10 = [(FCFeedDescriptor *)self streamOfHeadlinesWithIDs:v9 context:v4 cachedOnly:v6 ^ 1u maxCachedAge:v8];

  return v10;
}

- (id)backingHeadlineIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPrivateZoneFeedDescriptor backingHeadlineIDs]";
    v10 = 2080;
    v11 = "FCPrivateZoneFeedDescriptor.m";
    v12 = 1024;
    v13 = 88;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateZoneFeedDescriptor backingHeadlineIDs]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

@end