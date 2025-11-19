@interface NMSAudiobooksMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)a3;
- (id)itemList;
- (void)itemList;
@end

@implementation NMSAudiobooksMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== a3)
  {
    v6 = [(NMSMediaItemGroup *)self referenceObj];
    v7 = objc_alloc(MEMORY[0x277CD5DA0]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__NMSAudiobooksMediaItemGroup_identifiersForContainerType___block_invoke;
    v12[3] = &unk_27993DFA0;
    v13 = v6;
    v8 = v6;
    v9 = [v7 initWithBlock:v12];
    [v5 addObject:v9];
  }

  v10 = [v5 copy];

  return v10;
}

void __59__NMSAudiobooksMediaItemGroup_identifiersForContainerType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 audiobookIdentifier];
  [v3 setStoreAdamID:{objc_msgSend(v4, "longLongValue")}];
}

- (id)itemList
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(NMSMediaItemGroup *)self referenceObj];
  v4 = [v3 audiobookMediaItem];
  if (!v4)
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NMSAudiobooksMediaItemGroup itemList];
    }

    goto LABEL_8;
  }

  if ([(NMSMediaItemGroup *)self downloadedItemsOnly])
  {
    v5 = [NMSAudiobookCacheItemMetadata metaDataForMediaItem:v4];
    if (!v5)
    {
      v5 = NMLogForCategory(5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(NMSAudiobooksMediaItemGroup *)v5 itemList];
      }

LABEL_8:
      v6 = MEMORY[0x277CBEBF8];
      goto LABEL_22;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [v4 valueForProperty:*MEMORY[0x277CD5708]];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 valueForProperty:*MEMORY[0x277CD57E8]];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v4 valueForProperty:*MEMORY[0x277CD5700]];
  v14 = v13;
  if (v13 && [v13 unsignedIntegerValue])
  {
    v15 = [v14 unsignedIntegerValue];
  }

  else
  {
    v15 = 64000;
  }

  if ([(NMSMediaItemGroup *)self downloadedItemsOnly])
  {
    [v5 cachedStartTime];
    v17 = v16;
    [v5 cachedDuration];
    v19 = v17 + v18;
  }

  else
  {
    v17 = fmax(v9 + -300.0, 0.0);
    v20 = [v3 downloadLimit];
    if (v12 >= v9 + v20)
    {
      v19 = v9 + v20;
    }

    else
    {
      v19 = v12;
    }
  }

  v21 = (v19 - v17) * v15 * 0.125;
  v22 = NMLogForCategory(5);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414594;
    v30 = v4;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v12;
    v35 = 2112;
    v36 = v14;
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v17;
    v41 = 2048;
    v42 = v19;
    v43 = 2048;
    v44 = v19;
    v45 = 2048;
    v46 = (v19 - v17) * v15 * 0.125;
    v47 = 2048;
    v48 = v46;
    _os_log_debug_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEBUG, "[Audiobook Quota Evaluation] Item: %@, Bookmark Time: %f, Book Duration: %f, MediaLibrary BitRate: %@, Final BitRate: %lu, Start Time: %f, Minimum End Time: %f, Expected End Time: %f, Minimum Size: %f, Expected Size: %f", buf, 0x66u);
  }

  v23 = [NMSPartialDownloadableItem alloc];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "persistentID")}];
  v25 = [(NMSPartialDownloadableItem *)v23 initWithMediaLibraryIdentifier:v24 externalLibraryIdentifier:0 size:v21 itemType:2 manuallyAdded:[(NMSMediaItemGroup *)self manuallyAdded] minimumSize:v21 offset:v17];
  v28 = v25;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)itemList
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end