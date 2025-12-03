@interface FCTodayMarkAsReadTransaction
- (FCTodayMarkAsReadTransaction)init;
- (FCTodayMarkAsReadTransaction)initWithArticleID:(id)d articleVersion:(int64_t)version readDate:(id)date;
- (FCTodayMarkAsReadTransaction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)performWithPrivateDataContext:(id)context;
- (void)performWithTodayPrivateData:(id)data;
@end

@implementation FCTodayMarkAsReadTransaction

- (FCTodayMarkAsReadTransaction)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTodayMarkAsReadTransaction init]";
    v10 = 2080;
    v11 = "FCTodayMarkAsReadTransaction.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTodayMarkAsReadTransaction init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTodayMarkAsReadTransaction)initWithArticleID:(id)d articleVersion:(int64_t)version readDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v21 = "[FCTodayMarkAsReadTransaction initWithArticleID:articleVersion:readDate:]";
    v22 = 2080;
    v23 = "FCTodayMarkAsReadTransaction.m";
    v24 = 1024;
    v25 = 34;
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
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "readDate"];
    *buf = 136315906;
    v21 = "[FCTodayMarkAsReadTransaction initWithArticleID:articleVersion:readDate:]";
    v22 = 2080;
    v23 = "FCTodayMarkAsReadTransaction.m";
    v24 = 1024;
    v25 = 35;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = FCTodayMarkAsReadTransaction;
  v10 = [(FCTodayMarkAsReadTransaction *)&v19 init];
  if (v10)
  {
    v11 = [dCopy copy];
    articleID = v10->_articleID;
    v10->_articleID = v11;

    v10->_articleVersion = version;
    v13 = [dateCopy copy];
    readDate = v10->_readDate;
    v10->_readDate = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)performWithPrivateDataContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  contextCopy = context;
  [v4 isMainThread];
  v6 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    articleID = [(FCTodayMarkAsReadTransaction *)self articleID];
    v14 = 138543362;
    v15 = articleID;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Will apply mark-as-read transaction to reading history, articleID=%{public}@", &v14, 0xCu);
  }

  readingHistory = [contextCopy readingHistory];

  articleID2 = [(FCTodayMarkAsReadTransaction *)self articleID];
  articleVersion = [(FCTodayMarkAsReadTransaction *)self articleVersion];
  readDate = [(FCTodayMarkAsReadTransaction *)self readDate];
  [readingHistory markArticleAsReadWithArticleID:articleID2 articleVersion:articleVersion readDate:readDate];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performWithTodayPrivateData:(id)data
{
  dataCopy = data;
  recentlyReadHistoryItems = [dataCopy recentlyReadHistoryItems];
  objc_opt_class();
  if (recentlyReadHistoryItems && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = recentlyReadHistoryItems;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:recentlyReadHistoryItems];
    [dataCopy setRecentlyReadHistoryItems:v5];
  }

  articleID = [(FCTodayMarkAsReadTransaction *)self articleID];
  articleVersion = [(FCTodayMarkAsReadTransaction *)self articleVersion];
  readDate = [(FCTodayMarkAsReadTransaction *)self readDate];
  v9 = [v5 objectForKeyedSubscript:articleID];
  if (v9 && (FCCheckedProtocolCast(&unk_1F2ECDE28, v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    maxVersionRead = [v10 maxVersionRead];
    if (maxVersionRead <= articleVersion)
    {
      v13 = articleVersion;
    }

    else
    {
      v13 = maxVersionRead;
    }

    [v11 setMaxVersionRead:v13];
    v14 = MEMORY[0x1E695DF00];
    lastVisitedAt = [v11 lastVisitedAt];
    v16 = [v14 fc_laterDateAllowingNilWithDate:lastVisitedAt andDate:readDate];
    [v11 setLastVisitedAt:v16];
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setArticleID:articleID];
    [v11 setMaxVersionRead:articleVersion];
    [v11 setLastVisitedAt:readDate];
    [v5 setObject:v11 forKeyedSubscript:articleID];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  articleID = [(FCTodayMarkAsReadTransaction *)self articleID];
  [coderCopy encodeObject:articleID forKey:@"a"];

  [coderCopy encodeInt64:-[FCTodayMarkAsReadTransaction articleVersion](self forKey:{"articleVersion"), @"b"}];
  readDate = [(FCTodayMarkAsReadTransaction *)self readDate];
  [coderCopy encodeObject:readDate forKey:@"c"];
}

- (FCTodayMarkAsReadTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [coderCopy decodeInt64ForKey:@"b"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];

  v8 = [(FCTodayMarkAsReadTransaction *)self initWithArticleID:v5 articleVersion:v6 readDate:v7];
  return v8;
}

@end