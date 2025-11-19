@interface WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions)
- (void)fetchThumbnailForBookmark:()ReadingListMetadataFetcherAdditions completion:;
@end

@implementation WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions)

- (void)fetchThumbnailForBookmark:()ReadingListMetadataFetcherAdditions completion:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 readingListIconURL];
  v9 = MEMORY[0x277CBEBC0];
  v10 = [v7 readingListIconURL];

  v11 = [v9 URLWithString:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
    v13 = [v12 webui_safariCookieAcceptPolicyEnumValue];

    if (v13 == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __115__WBSImageFetchingURLSessionTaskManager_ReadingListMetadataFetcherAdditions__fetchThumbnailForBookmark_completion___block_invoke;
    v16[3] = &unk_2781D7CC0;
    v18 = v6;
    v17 = v8;
    [a1 downloadImageWithURL:v11 options:v14 completionHandler:v16];
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions) fetchThumbnailForBookmark:completion:];
    }

    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

@end