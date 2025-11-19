@interface WBSImageFetchingURLSessionTaskManager
@end

@implementation WBSImageFetchingURLSessionTaskManager

void __115__WBSImageFetchingURLSessionTaskManager_ReadingListMetadataFetcherAdditions__fetchThumbnailForBookmark_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x277D4A780] readingListThumbnailDataFromImage:a2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __115__WBSImageFetchingURLSessionTaskManager_ReadingListMetadataFetcherAdditions__fetchThumbnailForBookmark_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

@end