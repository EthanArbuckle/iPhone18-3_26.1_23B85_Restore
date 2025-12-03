@interface FCArticleContent
- (BOOL)isEqual:(id)equal;
- (FCArticleContent)initWithArticleID:(id)d anfContent:(id)content;
- (FCArticleContent)initWithArticleID:(id)d contentType:(unint64_t)type;
- (FCArticleContent)initWithArticleID:(id)d webContent:(id)content;
- (FCArticleContent)initWithContext:(id)context articleRecord:(id)record;
- (unint64_t)hash;
@end

@implementation FCArticleContent

- (FCArticleContent)initWithContext:(id)context articleRecord:(id)record
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  recordCopy = record;
  base = [recordCopy base];
  identifier = [base identifier];

  contentType = [recordCopy contentType];
  if (contentType == 2)
  {
    assetManager = [contextCopy assetManager];
    v20 = [recordCopy generateFlintDocumentAssetHandleWithAssetManager:assetManager];

    v21 = [FCANFContent alloc];
    flintFontResourceIDs = [recordCopy flintFontResourceIDs];
    v23 = [(FCANFContent *)v21 initWithIdentifier:identifier mainDocumentAssetHandle:v20 fontResourceIDs:flintFontResourceIDs];

    v18 = [(FCArticleContent *)self initWithArticleID:identifier anfContent:v23];
  }

  else if (contentType == 1)
  {
    assetManager2 = [contextCopy assetManager];
    v12 = [recordCopy generateWebExcerptAssetHandleWithAssetManager:assetManager2];

    v13 = [FCWebContent alloc];
    v14 = MEMORY[0x1E695DFF8];
    contentURL = [recordCopy contentURL];
    v16 = [v14 URLWithString:contentURL];
    v17 = [(FCWebContent *)v13 initWithArticleID:identifier sourceURL:v16 excerptAssetHandle:v12];
    v18 = [(FCArticleContent *)self initWithArticleID:identifier webContent:v17];
  }

  else
  {
    v24 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543362;
      v28 = identifier;
      _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Failed to create content for article ID: %{public}@", &v27, 0xCu);
    }

    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (FCArticleContent)initWithArticleID:(id)d contentType:(unint64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (dCopy)
    {
      v9 = [dCopy copy];
      articleID = v8->_articleID;
      v8->_articleID = v9;

      v8->_contentType = type;
    }

    else
    {

      v8 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (FCArticleContent)initWithArticleID:(id)d anfContent:(id)content
{
  contentCopy = content;
  v8 = [(FCArticleContent *)self initWithArticleID:d contentType:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_anfContent, content);
  }

  return v9;
}

- (FCArticleContent)initWithArticleID:(id)d webContent:(id)content
{
  contentCopy = content;
  v8 = [(FCArticleContent *)self initWithArticleID:d contentType:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webContent, content);
  }

  return v9;
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

    v6 = v5;

    articleID = [(FCArticleContent *)self articleID];
    articleID2 = [v6 articleID];
    LOBYTE(equalCopy) = [articleID isEqual:articleID2];
  }

  else
  {
    articleID = 0;
    v6 = 0;
  }

  return equalCopy;
}

- (unint64_t)hash
{
  articleID = [(FCArticleContent *)self articleID];
  v3 = [articleID hash];

  return v3;
}

@end