@interface NMSPodcastStationMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)a3;
- (id)itemList;
@end

@implementation NMSPodcastStationMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== a3)
  {
    v6 = objc_alloc(MEMORY[0x277CD5DA0]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__NMSPodcastStationMediaItemGroup_identifiersForContainerType___block_invoke;
    v10[3] = &unk_27993DFA0;
    v10[4] = self;
    v7 = [v6 initWithBlock:v10];
    [v5 addObject:v7];
  }

  v8 = [v5 copy];

  return v8;
}

void __63__NMSPodcastStationMediaItemGroup_identifiersForContainerType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 referenceObj];
  [v3 setContentItemID:v4];
}

- (id)itemList
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(NMSPodcastSizeEstimation);
  v5 = [(NMSMediaItemGroup *)self referenceObj];
  v6 = [NMSPodcastsFetchRequests legacy_fetchRequestForStationWithUUID:v5];

  v7 = *MEMORY[0x277D3DC90];
  v29[0] = *MEMORY[0x277D3DDD8];
  v29[1] = v7;
  v30[0] = v29[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v9 = [v8 componentsJoinedByString:@"."];
  v30[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v6 setRelationshipKeyPathsForPrefetching:v10];

  [v6 setFetchBatchSize:20];
  v11 = [MEMORY[0x277D3DAE8] sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke;
  v23 = &unk_27993EBB8;
  v24 = v12;
  v25 = v6;
  v26 = self;
  v27 = v4;
  v28 = v3;
  v13 = v3;
  v14 = v4;
  v15 = v6;
  v16 = v12;
  [v16 performBlockAndWait:&v20];
  v17 = [v13 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v29 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v29];
  v5 = v29;
  v6 = [v4 firstObject];

  if (v5)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke_cold_1(a1);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v6 episodes];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ((![*(a1 + 48) downloadedItemsOnly] || objc_msgSend(v13, "isDownloaded")) && (objc_msgSend(v13, "isHidden") & 1) == 0 && objc_msgSend(v13, "isEntitled"))
        {
          v14 = *(a1 + 56);
          v15 = [v13 podcast];
          v16 = [v15 feedURL];
          [v13 duration];
          v18 = [v14 sizeForFeedURL:v16 duration:objc_msgSend(v13 feedProvidedSize:{"byteSize"), v17}];

          v19 = *(a1 + 64);
          v20 = [NMSDownloadableItem alloc];
          v21 = [v13 uuid];
          v22 = [(NMSDownloadableItem *)v20 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v21 size:v18 itemType:1 manuallyAdded:0];
          [v19 addObject:v22];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 48) referenceObj];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0(&dword_25B27B000, v2, v3, "Failed to fetch station itemList for station %@ - %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end