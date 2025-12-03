@interface NMSPodcastSavedEpisodesMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSPodcastSavedEpisodesMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== type)
  {
    v6 = [objc_alloc(MEMORY[0x277CD5DA0]) initWithBlock:&__block_literal_global_10];
    [array addObject:v6];
  }

  v7 = [array copy];

  return v7;
}

- (id)itemList
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(NMSPodcastSizeEstimation);
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__NMSPodcastSavedEpisodesMediaItemGroup_itemList__block_invoke;
  v15 = &unk_27993EB90;
  selfCopy = self;
  v17 = mainOrPrivateContext;
  v18 = v4;
  v19 = array;
  v7 = array;
  v8 = v4;
  v9 = mainOrPrivateContext;
  [v9 performBlockAndWait:&v12];
  v10 = [v7 copy];

  return v10;
}

void __49__NMSPodcastSavedEpisodesMediaItemGroup_itemList__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = +[NMSPodcastsFetchRequests legacy_fetchRequestForSavedEpisodesDownloadedOnly:](NMSPodcastsFetchRequests, "legacy_fetchRequestForSavedEpisodesDownloadedOnly:", [*(a1 + 32) downloadedItemsOnly]);
  [v2 setFetchBatchSize:20];
  v3 = *(a1 + 40);
  v28 = 0;
  v23 = v2;
  v4 = [v3 executeFetchRequest:v2 error:&v28];
  v5 = v28;
  if (v5)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__NMSPodcastSavedEpisodesMediaItemGroup_itemList__block_invoke_cold_1();
    }
  }

  v22 = v5;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = *(a1 + 48);
        v14 = [*(a1 + 32) referenceObj];
        [v12 duration];
        v16 = [v13 sizeForFeedURL:v14 duration:objc_msgSend(v12 feedProvidedSize:{"byteSize"), v15}];

        v17 = *(a1 + 56);
        v18 = [NMSDownloadableItem alloc];
        v19 = [v12 uuid];
        v20 = [(NMSDownloadableItem *)v18 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v19 size:v16 itemType:1 manuallyAdded:0];
        [v17 addObject:v20];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __49__NMSPodcastSavedEpisodesMediaItemGroup_itemList__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end