@interface ReadingListMetadataProvider
- (ReadingListMetadataProvider)init;
- (void)fetchMetadataForBookmark:(id)bookmark completion:(id)completion;
@end

@implementation ReadingListMetadataProvider

- (ReadingListMetadataProvider)init
{
  v6.receiver = self;
  v6.super_class = ReadingListMetadataProvider;
  v2 = [(ReadingListMetadataProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)fetchMetadataForBookmark:(id)bookmark completion:(id)completion
{
  bookmarkCopy = bookmark;
  completionCopy = completion;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke;
  v20 = &unk_2781D7C98;
  v7 = bookmarkCopy;
  v21 = v7;
  v8 = completionCopy;
  v22 = v8;
  v9 = _Block_copy(&v17);
  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    v10 = objc_alloc(MEMORY[0x277D4A790]);
    v11 = MEMORY[0x277CBEBC0];
    address = [v7 address];
    v13 = [v11 URLWithString:address];
    v14 = [v10 initWithURL:v13];

    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v16 = [mEMORY[0x277D28F58] registerOneTimeRequest:v14 priority:2 responseHandler:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D4A788] unpackMetadataFromResponse:a2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 image];
    v6 = v5;
    if (v5)
    {
      v7 = MEMORY[0x277D4A780];
      v8 = [v5 platformImage];
      v9 = [v7 readingListThumbnailDataFromImage:v8];
    }

    else
    {
      v9 = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke_2;
    v12[3] = &unk_2781D7C70;
    v15 = *(a1 + 40);
    v13 = v4;
    v14 = v9;
    v11 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke_cold_1(a1, v10);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke_17;
    block[3] = &unk_2781D4D90;
    v17 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = v17;
  }
}

void __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7 = [*(a1 + 32) title];
  v3 = [*(a1 + 32) summary];
  v4 = [*(a1 + 32) imageMetadata];
  v5 = [v4 URL];
  v6 = [v5 absoluteString];
  (*(v2 + 16))(v2, 1, v7, v3, v6, *(a1 + 40));
}

void __67__ReadingListMetadataProvider_fetchMetadataForBookmark_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4[0] = 67109120;
  v4[1] = [v2 identifier];
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Error fetching metadata for Reading List item %d", v4, 8u);
}

@end