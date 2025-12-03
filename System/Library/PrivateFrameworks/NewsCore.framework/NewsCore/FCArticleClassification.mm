@interface FCArticleClassification
- (BOOL)isEqual:(id)equal;
- (FCArticleClassification)initWithArticleID:(id)d;
- (unint64_t)hash;
@end

@implementation FCArticleClassification

- (FCArticleClassification)initWithArticleID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (dCopy)
    {
      v7 = [dCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    articleID = [(FCArticleClassification *)self articleID];
    articleID2 = [v6 articleID];
    v9 = [articleID isEqual:articleID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  articleID = [(FCArticleClassification *)self articleID];
  v3 = [articleID hash];

  return v3;
}

@end