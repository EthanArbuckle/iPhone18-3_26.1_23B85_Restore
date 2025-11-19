@interface FCTodayMarkAsReadTransaction
- (FCTodayMarkAsReadTransaction)init;
- (FCTodayMarkAsReadTransaction)initWithArticleID:(id)a3 articleVersion:(int64_t)a4 readDate:(id)a5;
- (FCTodayMarkAsReadTransaction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)performWithPrivateDataContext:(id)a3;
- (void)performWithTodayPrivateData:(id)a3;
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

- (FCTodayMarkAsReadTransaction)initWithArticleID:(id)a3 articleVersion:(int64_t)a4 readDate:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v11 = [v8 copy];
    articleID = v10->_articleID;
    v10->_articleID = v11;

    v10->_articleVersion = a4;
    v13 = [v9 copy];
    readDate = v10->_readDate;
    v10->_readDate = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)performWithPrivateDataContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  v6 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FCTodayMarkAsReadTransaction *)self articleID];
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Will apply mark-as-read transaction to reading history, articleID=%{public}@", &v14, 0xCu);
  }

  v9 = [v5 readingHistory];

  v10 = [(FCTodayMarkAsReadTransaction *)self articleID];
  v11 = [(FCTodayMarkAsReadTransaction *)self articleVersion];
  v12 = [(FCTodayMarkAsReadTransaction *)self readDate];
  [v9 markArticleAsReadWithArticleID:v10 articleVersion:v11 readDate:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performWithTodayPrivateData:(id)a3
{
  v17 = a3;
  v4 = [v17 recentlyReadHistoryItems];
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    [v17 setRecentlyReadHistoryItems:v5];
  }

  v6 = [(FCTodayMarkAsReadTransaction *)self articleID];
  v7 = [(FCTodayMarkAsReadTransaction *)self articleVersion];
  v8 = [(FCTodayMarkAsReadTransaction *)self readDate];
  v9 = [v5 objectForKeyedSubscript:v6];
  if (v9 && (FCCheckedProtocolCast(&unk_1F2ECDE28, v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [v10 maxVersionRead];
    if (v12 <= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    [v11 setMaxVersionRead:v13];
    v14 = MEMORY[0x1E695DF00];
    v15 = [v11 lastVisitedAt];
    v16 = [v14 fc_laterDateAllowingNilWithDate:v15 andDate:v8];
    [v11 setLastVisitedAt:v16];
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setArticleID:v6];
    [v11 setMaxVersionRead:v7];
    [v11 setLastVisitedAt:v8];
    [v5 setObject:v11 forKeyedSubscript:v6];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCTodayMarkAsReadTransaction *)self articleID];
  [v4 encodeObject:v5 forKey:@"a"];

  [v4 encodeInt64:-[FCTodayMarkAsReadTransaction articleVersion](self forKey:{"articleVersion"), @"b"}];
  v6 = [(FCTodayMarkAsReadTransaction *)self readDate];
  [v4 encodeObject:v6 forKey:@"c"];
}

- (FCTodayMarkAsReadTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [v4 decodeInt64ForKey:@"b"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];

  v8 = [(FCTodayMarkAsReadTransaction *)self initWithArticleID:v5 articleVersion:v6 readDate:v7];
  return v8;
}

@end