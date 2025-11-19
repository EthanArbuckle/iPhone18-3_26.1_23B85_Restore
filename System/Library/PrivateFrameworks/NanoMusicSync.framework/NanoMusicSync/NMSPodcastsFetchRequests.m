@interface NMSPodcastsFetchRequests
+ (id)_createFetchRequestForEpisodeDownloadableItem;
+ (id)_predicateForDownloadableWatchEpisodesWithDownloadedOnly:(BOOL)a3 unplayedOnly:(BOOL)a4;
+ (id)legacy_fetchRequestForEpisodesWithFeedURL:(id)a3 downloadedOnly:(BOOL)a4 ctx:(id)a5;
+ (id)legacy_fetchRequestForStationWithUUID:(id)a3;
@end

@implementation NMSPodcastsFetchRequests

void __87__NMSPodcastsFetchRequests_fetchRequestForFeedURL_downloadSettings_downloadedOnly_ctx___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) executeFetchRequest:*(a1 + 40)];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_predicateForDownloadableWatchEpisodesWithDownloadedOnly:(BOOL)a3 unplayedOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277D3DAF8] predicateForAudio:1];
  v7 = [MEMORY[0x277D3DAF8] predicateForEntitledEpisodes];
  v8 = [v6 AND:v7];

  if (v5)
  {
    v9 = [MEMORY[0x277D3DAF8] predicateForDownloaded:1 excludeHidden:1];
    v10 = [v8 AND:v9];

    v8 = v10;
  }

  if (v4)
  {
    v11 = [MEMORY[0x277D3DAF8] predicateForVisuallyPlayed:0];
    v12 = [v8 AND:v11];

    v8 = v12;
  }

  return v8;
}

+ (id)_createFetchRequestForEpisodeDownloadableItem
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*MEMORY[0x277D3DCF8]];
  v3 = [MEMORY[0x277D3DAF8] propertiesToFetchDownloadInfo];
  [v2 setPropertiesToFetch:v3];

  v4 = [MEMORY[0x277D3DAF8] relationshipKeyPathsForPrefetchingDownloadInfo];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  [v2 setFetchBatchSize:20];

  return v2;
}

+ (id)legacy_fetchRequestForStationWithUUID:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = *MEMORY[0x277D3DD48];
  v5 = a3;
  v6 = [v3 fetchRequestWithEntityName:v4];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D3DE08], v5];

  [v6 setPredicate:v7];
  [v6 setFetchLimit:1];

  return v6;
}

+ (id)legacy_fetchRequestForEpisodesWithFeedURL:(id)a3 downloadedOnly:(BOOL)a4 ctx:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277CBE428];
  v10 = *MEMORY[0x277D3DD50];
  v11 = a3;
  v12 = [v9 fetchRequestWithEntityName:v10];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D3DE68], v11];

  [v12 setPredicate:v13];
  v14 = *MEMORY[0x277D3DE70];
  v30[0] = *MEMORY[0x277D3DF10];
  v30[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v12 setPropertiesToFetch:v15];

  [v12 setFetchLimit:1];
  v16 = [a1 _createFetchRequestForEpisodeDownloadableItem];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__NMSPodcastsFetchRequests_legacy_fetchRequestForEpisodesWithFeedURL_downloadedOnly_ctx___block_invoke;
  v24[3] = &unk_27993E728;
  v25 = v8;
  v26 = v12;
  v17 = v16;
  v27 = v17;
  v28 = a1;
  v29 = a4;
  v18 = v12;
  v19 = v8;
  [v19 performBlockAndWait:v24];
  v20 = v27;
  v21 = v17;

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __89__NMSPodcastsFetchRequests_legacy_fetchRequestForEpisodesWithFeedURL_downloadedOnly_ctx___block_invoke(uint64_t a1)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v25];
  v5 = v25;
  v6 = [v4 firstObject];

  if (!v5)
  {
    v24 = [MEMORY[0x277D3DAF8] predicateForUserSetTopLevelEpisodes];
    v7 = MEMORY[0x277D3DAF8];
    v8 = [v6 uuid];
    v9 = [v7 predicateForAllEpisodesOnPodcastUuid:v8];
    v10 = [v24 AND:v9];
    v11 = [*(a1 + 56) _predicateForDownloadableWatchEpisodesWithDownloadedOnly:*(a1 + 64) unplayedOnly:1];
    v12 = [v10 AND:v11];
    v13 = [MEMORY[0x277D3DAF8] predicateForPodcastIsSubscribed:1];
    v14 = [v12 AND:v13];
    [*(a1 + 48) setPredicate:v14];

    v15 = [v6 sortAscending];
    v16 = *MEMORY[0x277D3DCA0];
    if (v15)
    {
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v16 ascending:1];
      v27[0] = v17;
      v18 = v27;
    }

    else
    {
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v16 ascending:0];
      v26 = v17;
      v18 = &v26;
    }

    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:v15];
    v18[1] = v19;
    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:v15 ^ 1];
    v18[2] = v20;
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
    v18[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
    [*(a1 + 48) setSortDescriptors:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end