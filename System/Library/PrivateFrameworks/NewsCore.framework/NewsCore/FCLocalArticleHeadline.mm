@interface FCLocalArticleHeadline
- (BOOL)hasThumbnail;
- (CGSize)thumbnailSize;
- (FCLocalArticleHeadline)initWithDictionary:(id)dictionary path:(id)path channel:(id)channel recipeIDs:(id)ds;
- (id)articleID;
- (id)identifier;
- (id)shortExcerpt;
- (id)thumbnail;
- (id)thumbnailAssetHandle;
- (id)title;
@end

@implementation FCLocalArticleHeadline

- (FCLocalArticleHeadline)initWithDictionary:(id)dictionary path:(id)path channel:(id)channel recipeIDs:(id)ds
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  channelCopy = channel;
  dsCopy = ds;
  v24.receiver = self;
  v24.super_class = FCLocalArticleHeadline;
  v14 = [(FCHeadline *)&v24 init];
  if (v14)
  {
    v15 = [dictionaryCopy copy];
    dictionary = v14->_dictionary;
    v14->_dictionary = v15;

    v17 = [pathCopy copy];
    path = v14->_path;
    v14->_path = v17;

    v19 = [channelCopy copy];
    channel = v14->_channel;
    v14->_channel = v19;

    v21 = [dsCopy copy];
    recipeIDs = v14->_recipeIDs;
    v14->_recipeIDs = v21;

    v14->_webEmbedsEnabled = 1;
  }

  return v14;
}

- (id)identifier
{
  path = [(FCLocalArticleHeadline *)self path];
  lastPathComponent = [path lastPathComponent];

  return lastPathComponent;
}

- (id)articleID
{
  path = [(FCLocalArticleHeadline *)self path];
  lastPathComponent = [path lastPathComponent];

  return lastPathComponent;
}

- (id)title
{
  dictionary = [(FCLocalArticleHeadline *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"title"];

  return v3;
}

- (BOOL)hasThumbnail
{
  thumbnailAssetHandle = [(FCLocalArticleHeadline *)self thumbnailAssetHandle];
  v3 = thumbnailAssetHandle != 0;

  return v3;
}

- (id)thumbnail
{
  thumbnail = self->_thumbnail;
  if (!thumbnail)
  {
    thumbnailAssetHandle = [(FCLocalArticleHeadline *)self thumbnailAssetHandle];
    v5 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:thumbnailAssetHandle thumbnailSize:1.79769313e308, 1.79769313e308];
    v6 = self->_thumbnail;
    self->_thumbnail = v5;

    thumbnail = self->_thumbnail;
  }

  return thumbnail;
}

- (id)thumbnailAssetHandle
{
  dictionary = [(FCLocalArticleHeadline *)self dictionary];
  v4 = [dictionary valueForKeyPath:@"metadata.thumbnailImageIdentifier"];

  if (v4)
  {
    objc_opt_class();
    dictionary2 = [(FCLocalArticleHeadline *)self dictionary];
    v6 = [dictionary2 objectForKeyedSubscript:@"resources"];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__6;
    v24 = __Block_byref_object_dispose__6;
    v25 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __46__FCLocalArticleHeadline_thumbnailAssetHandle__block_invoke;
    v17 = &unk_1E7C38058;
    v18 = v4;
    v19 = &v20;
    [v9 enumerateKeysAndObjectsUsingBlock:&v14];
    if (v21[5])
    {
      v10 = [(FCLocalArticleHeadline *)self localDraftPath:v14];
      v11 = [v10 stringByAppendingPathComponent:v21[5]];

      v12 = [[FCRawFileDataProvider alloc] initWithFilePath:v11];
      v8 = [[FCAssetHandle alloc] initWithDataProvider:v12];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__FCLocalArticleHeadline_thumbnailAssetHandle__block_invoke(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v15 = a3;
  objc_opt_class();
  v6 = [v15 objectForKeyedSubscript:@"imageIdentifier"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [v8 isEqualToString:*(a1 + 32)])
  {
    objc_opt_class();
    v9 = [v15 objectForKeyedSubscript:@"URL"];
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 lastPathComponent];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (CGSize)thumbnailSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)shortExcerpt
{
  dictionary = [(FCLocalArticleHeadline *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"subtitle"];

  return v3;
}

@end