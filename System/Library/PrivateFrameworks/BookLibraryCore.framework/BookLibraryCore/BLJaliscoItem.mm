@interface BLJaliscoItem
+ (id)arrayWithServerItems:(id)items;
+ (id)itemWithServerItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (NSNumber)duration;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLJaliscoItem

+ (id)itemWithServerItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  storeID = [itemCopy storeID];
  [v4 setStoreID:storeID];

  artist = [itemCopy artist];
  [v4 setArtist:artist];

  artworkTokenCode = [itemCopy artworkTokenCode];
  [v4 setArtworkTokenCode:artworkTokenCode];

  artworkURLString = [itemCopy artworkURLString];
  [v4 setArtworkURLString:artworkURLString];

  cloudID = [itemCopy cloudID];
  [v4 setCloudID:cloudID];

  genre = [itemCopy genre];
  [v4 setGenre:genre];

  isHidden = [itemCopy isHidden];
  [v4 setIsHidden:isHidden];

  purchasedAt = [itemCopy purchasedAt];
  [v4 setPurchasedAt:purchasedAt];

  purchasedTokenCode = [itemCopy purchasedTokenCode];
  [v4 setPurchasedTokenCode:purchasedTokenCode];

  purchaseHistoryID = [itemCopy purchaseHistoryID];
  [v4 setPurchaseHistoryID:purchaseHistoryID];

  title = [itemCopy title];
  [v4 setTitle:title];

  isExplicit = [itemCopy isExplicit];
  [v4 setIsExplicit:isExplicit];

  isDisabled = [itemCopy isDisabled];
  [v4 setIsDisabled:isDisabled];

  expectedDate = [itemCopy expectedDate];
  [v4 setExpectedDate:expectedDate];

  sortedTitle = [itemCopy sortedTitle];
  [v4 setSortedTitle:sortedTitle];

  sortedAuthor = [itemCopy sortedAuthor];
  [v4 setSortedAuthor:sortedAuthor];

  displayVersion = [itemCopy displayVersion];
  [v4 setDisplayVersion:displayVersion];

  storeDownloadParameters = [itemCopy storeDownloadParameters];
  [v4 setStoreDownloadParameters:storeDownloadParameters];

  fileExtension = [itemCopy fileExtension];
  [v4 setFileExtension:fileExtension];

  isPictureBook = [itemCopy isPictureBook];
  [v4 setIsPictureBook:isPictureBook];

  containsAudio = [itemCopy containsAudio];
  [v4 setContainsAudio:containsAudio];

  isReadAloud = [itemCopy isReadAloud];
  [v4 setIsReadAloud:isReadAloud];

  chapterMetadataURLString = [itemCopy chapterMetadataURLString];
  [v4 setChapterMetadataURLString:chapterMetadataURLString];

  isAudiobook = [itemCopy isAudiobook];
  [v4 setIsAudiobook:isAudiobook];

  hlsPlaylistURLString = [itemCopy hlsPlaylistURLString];
  [v4 setHlsPlaylistURLString:hlsPlaylistURLString];

  storeAccountID = [itemCopy storeAccountID];
  [v4 setStoreAccountID:storeAccountID];

  additionalAudiobookInfo = [itemCopy additionalAudiobookInfo];
  [v4 setAdditionalAudiobookInfo:additionalAudiobookInfo];

  needsImport = [itemCopy needsImport];
  [v4 setNeedsImport:needsImport];

  booklets = [itemCopy booklets];

  if ([booklets count])
  {
    v34 = MEMORY[0x277CBEB98];
    allObjects = [booklets allObjects];
    v36 = [BLJaliscoBookletItem arrayWithServerBookletItems:allObjects];
    v37 = [v34 setWithArray:v36];
    [v4 setBooklets:v37];
  }

  return v4;
}

- (NSNumber)duration
{
  additionalAudiobookInfo = [(BLJaliscoItem *)self additionalAudiobookInfo];
  v3 = [additionalAudiobookInfo objectForKeyedSubscript:@"daap.songtime"];

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

+ (id)arrayWithServerItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  storeAccountID = [(BLJaliscoItem *)self storeAccountID];
  if (storeAccountID)
  {
    storeAccountID2 = [equalCopy storeAccountID];
    v7 = storeAccountID2 == 0;
  }

  else
  {
    v7 = 1;
  }

  storeID = [(BLJaliscoItem *)self storeID];
  if (storeID && ((v9 = storeID, [equalCopy storeID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10) ? (v11 = 1) : (v11 = v7), (v11 & 1) == 0))
  {
    storeAccountID3 = [equalCopy storeAccountID];
    storeAccountID4 = [(BLJaliscoItem *)self storeAccountID];
    if ([storeAccountID3 isEqualToNumber:storeAccountID4])
    {
      storeID2 = [equalCopy storeID];
      storeID3 = [(BLJaliscoItem *)self storeID];
      v12 = [storeID2 isEqualToString:storeID3];
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
  storeID = [(BLJaliscoItem *)self storeID];
  v4 = [storeID hash];
  storeAccountID = [(BLJaliscoItem *)self storeAccountID];
  v6 = [storeAccountID hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(BLJaliscoItem *)self title];
  artist = [(BLJaliscoItem *)self artist];
  storeID = [(BLJaliscoItem *)self storeID];
  storeAccountID = [(BLJaliscoItem *)self storeAccountID];
  v10 = [v3 stringWithFormat:@"<%@:%p title=%@ author=%@ storeID=%@ storeAccountID=%@ >", v5, self, title, artist, storeID, storeAccountID];

  return v10;
}

@end