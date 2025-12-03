@interface NMSPodcastCustomShowMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSPodcastCustomShowMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== type)
  {
    v6 = objc_alloc(MEMORY[0x277CD5DA0]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__NMSPodcastCustomShowMediaItemGroup_identifiersForContainerType___block_invoke;
    v10[3] = &unk_27993DFA0;
    v10[4] = self;
    v7 = [v6 initWithBlock:v10];
    [array addObject:v7];
  }

  v8 = [array copy];

  return v8;
}

void __66__NMSPodcastCustomShowMediaItemGroup_identifiersForContainerType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 referenceObj];
  [v3 setContentItemID:v4];
}

- (id)itemList
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(NMSPodcastSizeEstimation);
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __46__NMSPodcastCustomShowMediaItemGroup_itemList__block_invoke;
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

void __46__NMSPodcastCustomShowMediaItemGroup_itemList__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) referenceObj];
  v4 = +[NMSPodcastsFetchRequests legacy_fetchRequestForEpisodesWithFeedURL:downloadedOnly:ctx:](NMSPodcastsFetchRequests, "legacy_fetchRequestForEpisodesWithFeedURL:downloadedOnly:ctx:", v3, [*v2 downloadedItemsOnly], *(v2 + 8));

  [v4 setFetchBatchSize:20];
  v5 = *(v2 + 8);
  v30 = 0;
  v25 = v4;
  v6 = [v5 executeFetchRequest:v4 error:&v30];
  v7 = v30;
  if (v7)
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__NMSPodcastCustomShowMediaItemGroup_itemList__block_invoke_cold_1(v2);
    }
  }

  v24 = v7;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = *(a1 + 48);
        v16 = [*(a1 + 32) referenceObj];
        [v14 duration];
        v18 = [v15 sizeForFeedURL:v16 duration:objc_msgSend(v14 feedProvidedSize:{"byteSize"), v17}];

        v19 = *(a1 + 56);
        v20 = [NMSDownloadableItem alloc];
        v21 = [v14 uuid];
        v22 = [(NMSDownloadableItem *)v20 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v21 size:v18 itemType:1 manuallyAdded:0];
        [v19 addObject:v22];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __46__NMSPodcastCustomShowMediaItemGroup_itemList__block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 referenceObj];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0(&dword_25B27B000, v2, v3, "Failed to fetch show episodes itemList for show %@ - %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end