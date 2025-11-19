@interface FCArticleClassification
- (BOOL)isEqual:(id)a3;
- (FCArticleClassification)initWithArticleID:(id)a3;
- (unint64_t)hash;
@end

@implementation FCArticleClassification

- (FCArticleClassification)initWithArticleID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v14 = "[FCArticleClassification initWithArticleID:]";
    v15 = 2080;
    v16 = "FCArticleClassification.m";
    v17 = 1024;
    v18 = 22;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12.receiver = self;
  v12.super_class = FCArticleClassification;
  v5 = [(FCArticleClassification *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
      articleID = v6->_articleID;
      v6->_articleID = v7;
    }

    else
    {
      articleID = v5;
      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(FCArticleClassification *)self articleID];
    v8 = [v6 articleID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCArticleClassification *)self articleID];
  v3 = [v2 hash];

  return v3;
}

@end