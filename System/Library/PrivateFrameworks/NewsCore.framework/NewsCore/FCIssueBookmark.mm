@interface FCIssueBookmark
+ (id)ANFBookmarkWithArticleID:(id)a3;
+ (id)PDFBookmarkWithPageID:(id)a3;
- (FCIssueBookmark)init;
- (FCIssueBookmark)initWithIssueType:(int64_t)a3 articleID:(id)a4 pageID:(id)a5;
@end

@implementation FCIssueBookmark

- (FCIssueBookmark)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueBookmark init]";
    v10 = 2080;
    v11 = "FCIssueBookmark.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueBookmark init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueBookmark)initWithIssueType:(int64_t)a3 articleID:(id)a4 pageID:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!a3 && !v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueType != FCIssueTypeANF || articleID != nil"];
    *buf = 136315906;
    v23 = "[FCIssueBookmark initWithIssueType:articleID:pageID:]";
    v24 = 2080;
    v25 = "FCIssueBookmark.m";
    v26 = 1024;
    v27 = 30;
    v28 = 2114;
    v29 = v11;
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  if (a3 == 1 && !v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueType != FCIssueTypePDF || pageID != nil"];
    *buf = 136315906;
    v23 = "[FCIssueBookmark initWithIssueType:articleID:pageID:]";
    v24 = 2080;
    v25 = "FCIssueBookmark.m";
    v26 = 1024;
    v27 = 31;
    v28 = 2114;
    v29 = v11;
    v12 = MEMORY[0x1E69E9C10];
LABEL_12:
    _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v21.receiver = self;
  v21.super_class = FCIssueBookmark;
  v13 = [(FCIssueBookmark *)&v21 init];
  v14 = v13;
  if (v13)
  {
    v13->_issueType = a3;
    v15 = [v8 copy];
    articleID = v14->_articleID;
    v14->_articleID = v15;

    v17 = [v10 copy];
    pageID = v14->_pageID;
    v14->_pageID = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)PDFBookmarkWithPageID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "pageID != nil"];
    *buf = 136315906;
    v9 = "+[FCIssueBookmark PDFBookmarkWithPageID:]";
    v10 = 2080;
    v11 = "FCIssueBookmark.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [[FCIssueBookmark alloc] initWithIssueType:1 articleID:0 pageID:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)ANFBookmarkWithArticleID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v9 = "+[FCIssueBookmark ANFBookmarkWithArticleID:]";
    v10 = 2080;
    v11 = "FCIssueBookmark.m";
    v12 = 1024;
    v13 = 54;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [[FCIssueBookmark alloc] initWithIssueType:0 articleID:v3 pageID:0];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end