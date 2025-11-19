@interface NEArticleLinkPresentationSource
+ (double)deviceScreenScaleFromPotentialBackgroundThread;
- (LPLinkMetadata)linkMetadata;
- (NEArticleLinkPresentationSource)initWithHeadline:(id)a3 articleURL:(id)a4 selectedText:(id)a5;
- (id)thumbnailImageProviderFromHeadline:(id)a3;
- (id)titleFromHeadline:(id)a3;
@end

@implementation NEArticleLinkPresentationSource

- (NEArticleLinkPresentationSource)initWithHeadline:(id)a3 articleURL:(id)a4 selectedText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NEArticleLinkPresentationSource;
  v12 = [(NEArticleLinkPresentationSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_headline, a3);
    objc_storeStrong(&v13->_url, a4);
    v14 = [v11 copy];
    selectedText = v13->_selectedText;
    v13->_selectedText = v14;
  }

  return v13;
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [(NEArticleLinkPresentationSource *)self headline];
  v4 = [(NEArticleLinkPresentationSource *)self thumbnailImageProviderFromHeadline:v3];

  v5 = [NELinkMetadataSource alloc];
  v6 = [(NEArticleLinkPresentationSource *)self headline];
  v7 = [(NEArticleLinkPresentationSource *)self titleFromHeadline:v6];
  v8 = [(NEArticleLinkPresentationSource *)self url];
  v9 = [(NEArticleLinkPresentationSource *)self selectedText];
  v10 = [(NELinkMetadataSource *)v5 initWithTitle:v7 url:v8 imageProvider:v4 iconProvider:v4 selectedText:v9];

  v11 = [(NELinkMetadataSource *)v10 linkMetadata];

  return v11;
}

- (id)titleFromHeadline:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 sourceName];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v3 title];
      v9 = [v3 sourceName];
      v10 = [v7 stringWithFormat:@"%@ - %@", v8, v9];

      goto LABEL_9;
    }
  }

  v11 = [v3 title];

  if (v11)
  {
    v12 = [v3 title];
LABEL_8:
    v10 = v12;
    goto LABEL_9;
  }

  v13 = [v3 sourceName];

  if (v13)
  {
    v12 = [v3 sourceName];
    goto LABEL_8;
  }

  v10 = &stru_1F51F8900;
LABEL_9:

  return v10;
}

- (id)thumbnailImageProviderFromHeadline:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v5 = [*MEMORY[0x1E6982F28] identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke;
  v8[3] = &unk_1E84CD0B8;
  v9 = v3;
  v6 = v3;
  [v4 registerItemForTypeIdentifier:v5 loadHandler:v8];

  return v4;
}

void __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  +[NEArticleLinkPresentationSource deviceScreenScaleFromPotentialBackgroundThread];
  v5 = v2;
  v3 = v2;
  v4 = FCFetchThumbnailForHeadlineWithMinimumSize();
}

void __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke_3;
  v7[3] = &unk_1E84CD068;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  dispatch_async(v5, v7);
}

void __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [*(a1 + 32) filePath];
  v4 = [v2 imageWithContentsOfFile:v3];
  v5 = UIImagePNGRepresentation(v4);

  (*(*(a1 + 40) + 16))();
}

+ (double)deviceScreenScaleFromPotentialBackgroundThread
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 scale];
    v4 = v3;

    return v4;
  }

  else
  {
    if (deviceScreenScaleFromPotentialBackgroundThread_onceToken[0] != -1)
    {
      +[NEArticleLinkPresentationSource deviceScreenScaleFromPotentialBackgroundThread];
    }

    return *&deviceScreenScaleFromPotentialBackgroundThread_screenScale;
  }
}

void __81__NEArticleLinkPresentationSource_deviceScreenScaleFromPotentialBackgroundThread__block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  deviceScreenScaleFromPotentialBackgroundThread_screenScale = v0;
}

@end