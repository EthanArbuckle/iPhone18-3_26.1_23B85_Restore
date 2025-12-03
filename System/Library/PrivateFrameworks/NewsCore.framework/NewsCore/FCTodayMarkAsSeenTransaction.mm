@interface FCTodayMarkAsSeenTransaction
- (FCTodayMarkAsSeenTransaction)init;
- (FCTodayMarkAsSeenTransaction)initWithArticleID:(id)d articleVersion:(int64_t)version seenDate:(id)date;
- (FCTodayMarkAsSeenTransaction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)performWithPrivateDataContext:(id)context;
- (void)performWithTodayPrivateData:(id)data;
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

- (FCTodayMarkAsSeenTransaction)initWithArticleID:(id)d articleVersion:(int64_t)version seenDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
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
    v11 = [dCopy copy];
    articleID = v10->_articleID;
    v10->_articleID = v11;

    v10->_articleVersion = version;
    v13 = [dateCopy copy];
    seenDate = v10->_seenDate;
    v10->_seenDate = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)performWithPrivateDataContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  contextCopy = context;
  [v4 isMainThread];
  v6 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    articleID = [(FCTodayMarkAsSeenTransaction *)self articleID];
    seenDate = [(FCTodayMarkAsSeenTransaction *)self seenDate];
    v15 = 138543618;
    v16 = articleID;
    v17 = 2114;
    v18 = seenDate;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Will apply mark-as-seen transaction to reading history, articleID=%{public}@, seenDate=%{public}@", &v15, 0x16u);
  }

  readingHistory = [contextCopy readingHistory];

  articleID2 = [(FCTodayMarkAsSeenTransaction *)self articleID];
  articleVersion = [(FCTodayMarkAsSeenTransaction *)self articleVersion];
  seenDate2 = [(FCTodayMarkAsSeenTransaction *)self seenDate];
  [readingHistory markArticleAsSeenWithArticleID:articleID2 articleVersion:articleVersion seenDate:seenDate2];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performWithTodayPrivateData:(id)data
{
  dataCopy = data;
  recentlySeenHistoryItems = [dataCopy recentlySeenHistoryItems];
  objc_opt_class();
  if (recentlySeenHistoryItems && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = recentlySeenHistoryItems;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:recentlySeenHistoryItems];
    [dataCopy setRecentlySeenHistoryItems:v6];
  }

  articleID = [(FCTodayMarkAsSeenTransaction *)self articleID];
  articleVersion = [(FCTodayMarkAsSeenTransaction *)self articleVersion];
  seenDate = [(FCTodayMarkAsSeenTransaction *)self seenDate];
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
    if (articleVersion > [v12 maxVersionSeen])
    {
      [v12 setMaxVersionSeen:articleVersion];
      [v12 setFirstSeenAtOfMaxVersionSeen:seenDate];
    }

    firstSeenAt = [v12 firstSeenAt];
    if (!firstSeenAt || (v14 = firstSeenAt, [v12 firstSeenAt], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(seenDate, "fc_isEarlierThan:", v15), v15, v14, v16))
    {
      [v12 setFirstSeenAt:seenDate];
    }
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setArticleID:articleID];
    [v17 setHasArticleBeenSeen:1];
    [v17 setMaxVersionSeen:articleVersion];
    [v17 setFirstSeenAt:seenDate];
    [v17 setFirstSeenAtOfMaxVersionSeen:seenDate];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  articleID = [(FCTodayMarkAsSeenTransaction *)self articleID];
  [coderCopy encodeObject:articleID forKey:@"a"];

  [coderCopy encodeInt64:-[FCTodayMarkAsSeenTransaction articleVersion](self forKey:{"articleVersion"), @"b"}];
  seenDate = [(FCTodayMarkAsSeenTransaction *)self seenDate];
  [coderCopy encodeObject:seenDate forKey:@"c"];
}

- (FCTodayMarkAsSeenTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [coderCopy decodeInt64ForKey:@"b"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];

  v8 = [(FCTodayMarkAsSeenTransaction *)self initWithArticleID:v5 articleVersion:v6 seenDate:v7];
  return v8;
}

@end