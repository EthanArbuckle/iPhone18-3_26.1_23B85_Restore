@interface NEArticleLinkPresentationSource
+ (double)deviceScreenScaleFromPotentialBackgroundThread;
- (LPLinkMetadata)linkMetadata;
- (NEArticleLinkPresentationSource)initWithHeadline:(id)headline articleURL:(id)l selectedText:(id)text;
- (id)thumbnailImageProviderFromHeadline:(id)headline;
- (id)titleFromHeadline:(id)headline;
@end

@implementation NEArticleLinkPresentationSource

- (NEArticleLinkPresentationSource)initWithHeadline:(id)headline articleURL:(id)l selectedText:(id)text
{
  headlineCopy = headline;
  lCopy = l;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = NEArticleLinkPresentationSource;
  v12 = [(NEArticleLinkPresentationSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_headline, headline);
    objc_storeStrong(&v13->_url, l);
    v14 = [textCopy copy];
    selectedText = v13->_selectedText;
    v13->_selectedText = v14;
  }

  return v13;
}

- (LPLinkMetadata)linkMetadata
{
  headline = [(NEArticleLinkPresentationSource *)self headline];
  v4 = [(NEArticleLinkPresentationSource *)self thumbnailImageProviderFromHeadline:headline];

  v5 = [NELinkMetadataSource alloc];
  headline2 = [(NEArticleLinkPresentationSource *)self headline];
  v7 = [(NEArticleLinkPresentationSource *)self titleFromHeadline:headline2];
  v8 = [(NEArticleLinkPresentationSource *)self url];
  selectedText = [(NEArticleLinkPresentationSource *)self selectedText];
  v10 = [(NELinkMetadataSource *)v5 initWithTitle:v7 url:v8 imageProvider:v4 iconProvider:v4 selectedText:selectedText];

  linkMetadata = [(NELinkMetadataSource *)v10 linkMetadata];

  return linkMetadata;
}

- (id)titleFromHeadline:(id)headline
{
  headlineCopy = headline;
  title = [headlineCopy title];
  if (title)
  {
    v5 = title;
    sourceName = [headlineCopy sourceName];

    if (sourceName)
    {
      v7 = MEMORY[0x1E696AEC0];
      title2 = [headlineCopy title];
      sourceName2 = [headlineCopy sourceName];
      v10 = [v7 stringWithFormat:@"%@ - %@", title2, sourceName2];

      goto LABEL_9;
    }
  }

  title3 = [headlineCopy title];

  if (title3)
  {
    title4 = [headlineCopy title];
LABEL_8:
    v10 = title4;
    goto LABEL_9;
  }

  sourceName3 = [headlineCopy sourceName];

  if (sourceName3)
  {
    title4 = [headlineCopy sourceName];
    goto LABEL_8;
  }

  v10 = &stru_1F51F8900;
LABEL_9:

  return v10;
}

- (id)thumbnailImageProviderFromHeadline:(id)headline
{
  headlineCopy = headline;
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__NEArticleLinkPresentationSource_thumbnailImageProviderFromHeadline___block_invoke;
  v8[3] = &unk_1E84CD0B8;
  v9 = headlineCopy;
  v6 = headlineCopy;
  [v4 registerItemForTypeIdentifier:identifier loadHandler:v8];

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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
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