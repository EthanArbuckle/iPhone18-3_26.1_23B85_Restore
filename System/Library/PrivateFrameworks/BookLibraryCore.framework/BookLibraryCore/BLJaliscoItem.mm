@interface BLJaliscoItem
+ (id)arrayWithServerItems:(id)a3;
+ (id)itemWithServerItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumber)duration;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLJaliscoItem

+ (id)itemWithServerItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 storeID];
  [v4 setStoreID:v5];

  v6 = [v3 artist];
  [v4 setArtist:v6];

  v7 = [v3 artworkTokenCode];
  [v4 setArtworkTokenCode:v7];

  v8 = [v3 artworkURLString];
  [v4 setArtworkURLString:v8];

  v9 = [v3 cloudID];
  [v4 setCloudID:v9];

  v10 = [v3 genre];
  [v4 setGenre:v10];

  v11 = [v3 isHidden];
  [v4 setIsHidden:v11];

  v12 = [v3 purchasedAt];
  [v4 setPurchasedAt:v12];

  v13 = [v3 purchasedTokenCode];
  [v4 setPurchasedTokenCode:v13];

  v14 = [v3 purchaseHistoryID];
  [v4 setPurchaseHistoryID:v14];

  v15 = [v3 title];
  [v4 setTitle:v15];

  v16 = [v3 isExplicit];
  [v4 setIsExplicit:v16];

  v17 = [v3 isDisabled];
  [v4 setIsDisabled:v17];

  v18 = [v3 expectedDate];
  [v4 setExpectedDate:v18];

  v19 = [v3 sortedTitle];
  [v4 setSortedTitle:v19];

  v20 = [v3 sortedAuthor];
  [v4 setSortedAuthor:v20];

  v21 = [v3 displayVersion];
  [v4 setDisplayVersion:v21];

  v22 = [v3 storeDownloadParameters];
  [v4 setStoreDownloadParameters:v22];

  v23 = [v3 fileExtension];
  [v4 setFileExtension:v23];

  v24 = [v3 isPictureBook];
  [v4 setIsPictureBook:v24];

  v25 = [v3 containsAudio];
  [v4 setContainsAudio:v25];

  v26 = [v3 isReadAloud];
  [v4 setIsReadAloud:v26];

  v27 = [v3 chapterMetadataURLString];
  [v4 setChapterMetadataURLString:v27];

  v28 = [v3 isAudiobook];
  [v4 setIsAudiobook:v28];

  v29 = [v3 hlsPlaylistURLString];
  [v4 setHlsPlaylistURLString:v29];

  v30 = [v3 storeAccountID];
  [v4 setStoreAccountID:v30];

  v31 = [v3 additionalAudiobookInfo];
  [v4 setAdditionalAudiobookInfo:v31];

  v32 = [v3 needsImport];
  [v4 setNeedsImport:v32];

  v33 = [v3 booklets];

  if ([v33 count])
  {
    v34 = MEMORY[0x277CBEB98];
    v35 = [v33 allObjects];
    v36 = [BLJaliscoBookletItem arrayWithServerBookletItems:v35];
    v37 = [v34 setWithArray:v36];
    [v4 setBooklets:v37];
  }

  return v4;
}

- (NSNumber)duration
{
  v2 = [(BLJaliscoItem *)self additionalAudiobookInfo];
  v3 = [v2 objectForKeyedSubscript:@"daap.songtime"];

  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  v6 = MEMORY[0x277CCABB0];
  if (v4)
  {
    [v4 doubleValue];
    [v6 numberWithDouble:?];
  }

  else
  {
    objc_opt_class();
    BUDynamicCast();
  }
  v7 = ;

  return v7;
}

+ (id)arrayWithServerItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [BLJaliscoItem itemWithServerItem:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(BLJaliscoItem *)self storeAccountID];
  if (v5)
  {
    v6 = [v4 storeAccountID];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(BLJaliscoItem *)self storeID];
  if (v8 && ((v9 = v8, [v4 storeID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10) ? (v11 = 1) : (v11 = v7), (v11 & 1) == 0))
  {
    v13 = [v4 storeAccountID];
    v14 = [(BLJaliscoItem *)self storeAccountID];
    if ([v13 isEqualToNumber:v14])
    {
      v15 = [v4 storeID];
      v16 = [(BLJaliscoItem *)self storeID];
      v12 = [v15 isEqualToString:v16];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(BLJaliscoItem *)self storeID];
  v4 = [v3 hash];
  v5 = [(BLJaliscoItem *)self storeAccountID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BLJaliscoItem *)self title];
  v7 = [(BLJaliscoItem *)self artist];
  v8 = [(BLJaliscoItem *)self storeID];
  v9 = [(BLJaliscoItem *)self storeAccountID];
  v10 = [v3 stringWithFormat:@"<%@:%p title=%@ author=%@ storeID=%@ storeAccountID=%@ >", v5, self, v6, v7, v8, v9];

  return v10;
}

@end