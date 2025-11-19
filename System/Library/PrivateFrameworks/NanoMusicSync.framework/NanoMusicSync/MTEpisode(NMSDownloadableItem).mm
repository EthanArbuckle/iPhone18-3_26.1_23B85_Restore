@interface MTEpisode(NMSDownloadableItem)
+ (id)_sizeEstimation;
+ (id)propertiesToFetchDownloadInfo;
+ (id)relationshipKeyPathsForPrefetchingDownloadInfo;
- (NMSDownloadableItem)downloadInfo;
@end

@implementation MTEpisode(NMSDownloadableItem)

- (NMSDownloadableItem)downloadInfo
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [a1 managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__MTEpisode_NMSDownloadableItem__downloadInfo__block_invoke;
  v8[3] = &unk_27993EC08;
  v8[4] = a1;
  v8[5] = &v23;
  v8[6] = &v17;
  v8[7] = &v13;
  v8[8] = &v9;
  [v2 performBlockAndWait:v8];

  v3 = [objc_opt_class() _sizeEstimation];
  v4 = [v3 sizeForFeedURL:v18[5] duration:v10[3] feedProvidedSize:v14[3]];

  v5 = [NMSDownloadableItem alloc];
  v6 = [(NMSDownloadableItem *)v5 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v24[5] size:v4 itemType:1 manuallyAdded:0];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v6;
}

+ (id)propertiesToFetchDownloadInfo
{
  v4[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D3DBE8];
  v4[0] = *MEMORY[0x277D3DCD0];
  v4[1] = v0;
  v4[2] = *MEMORY[0x277D3DC00];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)relationshipKeyPathsForPrefetchingDownloadInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D3DE68];
  v6[0] = *MEMORY[0x277D3DC90];
  v6[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v1 componentsJoinedByString:@"."];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_sizeEstimation
{
  if (_sizeEstimation_onceToken != -1)
  {
    +[MTEpisode(NMSDownloadableItem) _sizeEstimation];
  }

  v1 = _sizeEstimation_sizeEstimation;

  return v1;
}

@end