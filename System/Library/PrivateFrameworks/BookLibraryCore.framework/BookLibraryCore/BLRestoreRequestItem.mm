@interface BLRestoreRequestItem
+ (id)_assetDictionaryWithDownloadMetadata:(id)metadata;
+ (id)_downloadDictionaryWithDownloadMetadata:(id)metadata additionalDownloadPropertiesDictionary:(id)dictionary;
- (BLRestoreRequestItem)initWithCoder:(id)coder;
- (BLRestoreRequestItem)initWithDownloadDictionary:(id)dictionary assetDictionary:(id)assetDictionary;
- (BLRestoreRequestItem)initWithDownloadMetadataDictionary:(id)dictionary additionalDownloadPropertiesDictionary:(id)propertiesDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLRestoreRequestItem

- (BLRestoreRequestItem)initWithDownloadDictionary:(id)dictionary assetDictionary:(id)assetDictionary
{
  dictionaryCopy = dictionary;
  assetDictionaryCopy = assetDictionary;
  if (!dictionaryCopy)
  {
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "ContentRestore: downloadDictionary cannot be nil. Restore will fail", buf, 2u);
    }
  }

  v13.receiver = self;
  v13.super_class = BLRestoreRequestItem;
  v10 = [(BLRestoreRequestItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_downloadDictionary, dictionary);
    objc_storeStrong(&v11->_assetDictionary, assetDictionary);
  }

  return v11;
}

- (BLRestoreRequestItem)initWithDownloadMetadataDictionary:(id)dictionary additionalDownloadPropertiesDictionary:(id)propertiesDictionary
{
  dictionaryCopy = dictionary;
  propertiesDictionaryCopy = propertiesDictionary;
  if (!dictionaryCopy)
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "ContentRestore: downloadMetadataDictionary cannot be nil. Restore will fail", v14, 2u);
    }
  }

  v9 = [[BLDownloadMetadata alloc] initWithDictionary:dictionaryCopy];
  v10 = [objc_opt_class() _downloadDictionaryWithDownloadMetadata:v9 additionalDownloadPropertiesDictionary:propertiesDictionaryCopy];
  v11 = [objc_opt_class() _assetDictionaryWithDownloadMetadata:v9];
  v12 = [(BLRestoreRequestItem *)self initWithDownloadDictionary:v10 assetDictionary:v11];

  return v12;
}

+ (id)_downloadDictionaryWithDownloadMetadata:(id)metadata additionalDownloadPropertiesDictionary:(id)dictionary
{
  metadataCopy = metadata;
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  kind = [metadataCopy kind];
  [v7 setObject:kind forKeyedSubscript:@"1"];

  v9 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:{objc_msgSend(metadataCopy, "collectionIdentifier")}];
  [v7 setObject:v9 forKeyedSubscript:@"4"];

  v10 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:{objc_msgSend(metadataCopy, "itemIdentifier")}];
  [v7 setObject:v10 forKeyedSubscript:@"7"];

  v11 = [metadataCopy valueForMetadataKey:@"s"];
  [v7 setObject:v11 forKeyedSubscript:@"T"];

  v12 = [metadataCopy valueForMetadataKey:@"softwareVersionExternalIdentifier"];
  [v7 setObject:v12 forKeyedSubscript:@"R"];

  title = [metadataCopy title];
  [v7 setObject:title forKeyedSubscript:@"2"];

  v14 = [metadataCopy valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = [v14 objectForKeyedSubscript:@"accountInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v17 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  v16 = [v15 objectForKeyedSubscript:@"DSPersonID"];
  v17 = BLGetNSNumberFromValue(v16);

  v18 = [v15 objectForKeyedSubscript:@"AppleID"];

  if (v17)
  {
    [v7 setObject:v17 forKeyedSubscript:@"U"];
  }

LABEL_7:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [metadataCopy valueForMetadataKey:@"appleId"];

    v18 = v19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setObject:v18 forKeyedSubscript:@"Z"];
  }

  if (dictionaryCopy)
  {
    [v7 addEntriesFromDictionary:dictionaryCopy];
  }

  return v7;
}

+ (id)_assetDictionaryWithDownloadMetadata:(id)metadata
{
  v3 = MEMORY[0x277CBEB38];
  metadataCopy = metadata;
  v5 = objc_alloc_init(v3);
  v6 = [metadataCopy valueForMetadataKey:@"asset-info"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"flavor"];
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:@"g"];
    }
  }

  return v5;
}

- (BLRestoreRequestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = BLRestoreRequestItem;
  v5 = [(BLRestoreRequestItem *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"downloadDictionary"];
    downloadDictionary = v5->_downloadDictionary;
    v5->_downloadDictionary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"assetDictionary"];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  downloadDictionary = self->_downloadDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:downloadDictionary forKey:@"downloadDictionary"];
  [coderCopy encodeObject:self->_assetDictionary forKey:@"assetDictionary"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  downloadDictionary = [(BLRestoreRequestItem *)self downloadDictionary];
  v6 = [downloadDictionary copy];
  [v4 setDownloadDictionary:v6];

  assetDictionary = [(BLRestoreRequestItem *)self assetDictionary];
  v8 = [assetDictionary copy];
  [v4 setAssetDictionary:v8];

  return v4;
}

@end