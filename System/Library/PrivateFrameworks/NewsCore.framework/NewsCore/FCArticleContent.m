@interface FCArticleContent
- (BOOL)isEqual:(id)a3;
- (FCArticleContent)initWithArticleID:(id)a3 anfContent:(id)a4;
- (FCArticleContent)initWithArticleID:(id)a3 contentType:(unint64_t)a4;
- (FCArticleContent)initWithArticleID:(id)a3 webContent:(id)a4;
- (FCArticleContent)initWithContext:(id)a3 articleRecord:(id)a4;
- (unint64_t)hash;
@end

@implementation FCArticleContent

- (FCArticleContent)initWithContext:(id)a3 articleRecord:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 base];
  v9 = [v8 identifier];

  v10 = [v7 contentType];
  if (v10 == 2)
  {
    v19 = [v6 assetManager];
    v20 = [v7 generateFlintDocumentAssetHandleWithAssetManager:v19];

    v21 = [FCANFContent alloc];
    v22 = [v7 flintFontResourceIDs];
    v23 = [(FCANFContent *)v21 initWithIdentifier:v9 mainDocumentAssetHandle:v20 fontResourceIDs:v22];

    v18 = [(FCArticleContent *)self initWithArticleID:v9 anfContent:v23];
  }

  else if (v10 == 1)
  {
    v11 = [v6 assetManager];
    v12 = [v7 generateWebExcerptAssetHandleWithAssetManager:v11];

    v13 = [FCWebContent alloc];
    v14 = MEMORY[0x1E695DFF8];
    v15 = [v7 contentURL];
    v16 = [v14 URLWithString:v15];
    v17 = [(FCWebContent *)v13 initWithArticleID:v9 sourceURL:v16 excerptAssetHandle:v12];
    v18 = [(FCArticleContent *)self initWithArticleID:v9 webContent:v17];
  }

  else
  {
    v24 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543362;
      v28 = v9;
      _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Failed to create content for article ID: %{public}@", &v27, 0xCu);
    }

    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (FCArticleContent)initWithArticleID:(id)a3 contentType:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v16 = "[FCArticleContent initWithArticleID:contentType:]";
    v17 = 2080;
    v18 = "FCArticleContent.m";
    v19 = 1024;
    v20 = 71;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14.receiver = self;
  v14.super_class = FCArticleContent;
  v7 = [(FCArticleContent *)&v14 init];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [v6 copy];
      articleID = v8->_articleID;
      v8->_articleID = v9;

      v8->_contentType = a4;
    }

    else
    {

      v8 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (FCArticleContent)initWithArticleID:(id)a3 anfContent:(id)a4
{
  v7 = a4;
  v8 = [(FCArticleContent *)self initWithArticleID:a3 contentType:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_anfContent, a4);
  }

  return v9;
}

- (FCArticleContent)initWithArticleID:(id)a3 webContent:(id)a4
{
  v7 = a4;
  v8 = [(FCArticleContent *)self initWithArticleID:a3 contentType:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webContent, a4);
  }

  return v9;
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

    v6 = v5;

    v7 = [(FCArticleContent *)self articleID];
    v8 = [v6 articleID];
    LOBYTE(v4) = [v7 isEqual:v8];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v2 = [(FCArticleContent *)self articleID];
  v3 = [v2 hash];

  return v3;
}

@end