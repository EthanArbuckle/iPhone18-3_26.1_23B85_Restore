@interface FCTodayMarkAsSeenTransaction
- (FCTodayMarkAsSeenTransaction)init;
- (FCTodayMarkAsSeenTransaction)initWithArticleID:(id)a3 articleVersion:(int64_t)a4 seenDate:(id)a5;
- (FCTodayMarkAsSeenTransaction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)performWithPrivateDataContext:(id)a3;
- (void)performWithTodayPrivateData:(id)a3;
@end

@implementation FCTodayMarkAsSeenTransaction

- (FCTodayMarkAsSeenTransaction)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTodayMarkAsSeenTransaction init]";
    v10 = 2080;
    v11 = "FCTodayMarkAsSeenTransaction.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTodayMarkAsSeenTransaction init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTodayMarkAsSeenTransaction)initWithArticleID:(id)a3 articleVersion:(int64_t)a4 seenDate:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v21 = "[FCTodayMarkAsSeenTransaction initWithArticleID:articleVersion:seenDate:]";
    v22 = 2080;
    v23 = "FCTodayMarkAsSeenTransaction.m";
    v24 = 1024;
    v25 = 35;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "seenDate"];
    *buf = 136315906;
    v21 = "[FCTodayMarkAsSeenTransaction initWithArticleID:articleVersion:seenDate:]";
    v22 = 2080;
    v23 = "FCTodayMarkAsSeenTransaction.m";
    v24 = 1024;
    v25 = 36;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = FCTodayMarkAsSeenTransaction;
  v10 = [(FCTodayMarkAsSeenTransaction *)&v19 init];
  if (v10)
  {
    v11 = [v8 copy];
    articleID = v10->_articleID;
    v10->_articleID = v11;

    v10->_articleVersion = a4;
    v13 = [v9 copy];
    seenDate = v10->_seenDate;
    v10->_seenDate = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)performWithPrivateDataContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  v6 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FCTodayMarkAsSeenTransaction *)self articleID];
    v9 = [(FCTodayMarkAsSeenTransaction *)self seenDate];
    v15 = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Will apply mark-as-seen transaction to reading history, articleID=%{public}@, seenDate=%{public}@", &v15, 0x16u);
  }

  v10 = [v5 readingHistory];

  v11 = [(FCTodayMarkAsSeenTransaction *)self articleID];
  v12 = [(FCTodayMarkAsSeenTransaction *)self articleVersion];
  v13 = [(FCTodayMarkAsSeenTransaction *)self seenDate];
  [v10 markArticleAsSeenWithArticleID:v11 articleVersion:v12 seenDate:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performWithTodayPrivateData:(id)a3
{
  v4 = a3;
  v5 = [v4 recentlySeenHistoryItems];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
    [v4 setRecentlySeenHistoryItems:v6];
  }

  v7 = [(FCTodayMarkAsSeenTransaction *)self articleID];
  v8 = [(FCTodayMarkAsSeenTransaction *)self articleVersion];
  v9 = [(FCTodayMarkAsSeenTransaction *)self seenDate];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__FCTodayMarkAsSeenTransaction_performWithTodayPrivateData___block_invoke;
  v18[3] = &unk_1E7C47E50;
  v18[4] = self;
  v10 = [v6 fc_firstObjectPassingTest:v18];
  if (v10 && (FCCheckedProtocolCast(&unk_1F2ECDE28, v10), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    [v11 setHasArticleBeenSeen:1];
    if (v8 > [v12 maxVersionSeen])
    {
      [v12 setMaxVersionSeen:v8];
      [v12 setFirstSeenAtOfMaxVersionSeen:v9];
    }

    v13 = [v12 firstSeenAt];
    if (!v13 || (v14 = v13, [v12 firstSeenAt], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v9, "fc_isEarlierThan:", v15), v15, v14, v16))
    {
      [v12 setFirstSeenAt:v9];
    }
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setArticleID:v7];
    [v17 setHasArticleBeenSeen:1];
    [v17 setMaxVersionSeen:v8];
    [v17 setFirstSeenAt:v9];
    [v17 setFirstSeenAtOfMaxVersionSeen:v9];
    [v6 insertObject:v17 atIndex:0];

    v12 = 0;
  }
}

uint64_t __60__FCTodayMarkAsSeenTransaction_performWithTodayPrivateData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 articleID];
  v4 = [*(a1 + 32) articleID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCTodayMarkAsSeenTransaction *)self articleID];
  [v4 encodeObject:v5 forKey:@"a"];

  [v4 encodeInt64:-[FCTodayMarkAsSeenTransaction articleVersion](self forKey:{"articleVersion"), @"b"}];
  v6 = [(FCTodayMarkAsSeenTransaction *)self seenDate];
  [v4 encodeObject:v6 forKey:@"c"];
}

- (FCTodayMarkAsSeenTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [v4 decodeInt64ForKey:@"b"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];

  v8 = [(FCTodayMarkAsSeenTransaction *)self initWithArticleID:v5 articleVersion:v6 seenDate:v7];
  return v8;
}

@end