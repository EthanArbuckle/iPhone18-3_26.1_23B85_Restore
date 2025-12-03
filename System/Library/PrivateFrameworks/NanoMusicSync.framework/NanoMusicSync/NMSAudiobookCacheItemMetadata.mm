@interface NMSAudiobookCacheItemMetadata
+ (id)metaDataForMediaItem:(id)item;
- (BOOL)_loadForMediaItem:(id)item;
- (id)_baseDirectoryForMediaItem:(id)item;
@end

@implementation NMSAudiobookCacheItemMetadata

+ (id)metaDataForMediaItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(NMSAudiobookCacheItemMetadata);
  v5 = [(NMSAudiobookCacheItemMetadata *)v4 _loadForMediaItem:itemCopy];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_baseDirectoryForMediaItem:(id)item
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277D2B5F8];
  itemCopy = item;
  mediaFolderPath = [v4 mediaFolderPath];
  v7 = [v3 fileURLWithPath:mediaFolderPath];

  v8 = MEMORY[0x277CCACA8];
  persistentID = [itemCopy persistentID];

  v10 = [v8 stringWithFormat:@"ManagedPurchases/Books/%llu.m4bpkg/", persistentID];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1 relativeToURL:v7];

  return v11;
}

- (BOOL)_loadForMediaItem:(id)item
{
  v4 = [(NMSAudiobookCacheItemMetadata *)self _baseDirectoryForMediaItem:item];
  v5 = [v4 URLByAppendingPathComponent:@"Metadata.plist"];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
  v7 = [v6 objectForKeyedSubscript:@"BLAudiobookCacheMetadataKeyCachedStartTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKeyedSubscript:@"BLAudiobookCacheMetadataKeyCachedStartTime"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"BLAudiobookCacheMetadataKeyCachedDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 objectForKeyedSubscript:@"BLAudiobookCacheMetadataKeyCachedDuration"];

    v11 = 0;
    if (v8 && v10)
    {
      [v8 doubleValue];
      [(NMSAudiobookCacheItemMetadata *)self setCachedStartTime:?];
      [v10 doubleValue];
      [(NMSAudiobookCacheItemMetadata *)self setCachedDuration:?];
      v11 = 1;
    }
  }

  else
  {

    v11 = 0;
    v10 = 0;
  }

  return v11;
}

@end