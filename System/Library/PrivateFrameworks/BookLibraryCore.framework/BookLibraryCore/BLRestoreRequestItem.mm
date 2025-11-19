@interface BLRestoreRequestItem
+ (id)_assetDictionaryWithDownloadMetadata:(id)a3;
+ (id)_downloadDictionaryWithDownloadMetadata:(id)a3 additionalDownloadPropertiesDictionary:(id)a4;
- (BLRestoreRequestItem)initWithCoder:(id)a3;
- (BLRestoreRequestItem)initWithDownloadDictionary:(id)a3 assetDictionary:(id)a4;
- (BLRestoreRequestItem)initWithDownloadMetadataDictionary:(id)a3 additionalDownloadPropertiesDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLRestoreRequestItem

- (BLRestoreRequestItem)initWithDownloadDictionary:(id)a3 assetDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
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
    objc_storeStrong(&v10->_downloadDictionary, a3);
    objc_storeStrong(&v11->_assetDictionary, a4);
  }

  return v11;
}

- (BLRestoreRequestItem)initWithDownloadMetadataDictionary:(id)a3 additionalDownloadPropertiesDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "ContentRestore: downloadMetadataDictionary cannot be nil. Restore will fail", v14, 2u);
    }
  }

  v9 = [[BLDownloadMetadata alloc] initWithDictionary:v6];
  v10 = [objc_opt_class() _downloadDictionaryWithDownloadMetadata:v9 additionalDownloadPropertiesDictionary:v7];
  v11 = [objc_opt_class() _assetDictionaryWithDownloadMetadata:v9];
  v12 = [(BLRestoreRequestItem *)self initWithDownloadDictionary:v10 assetDictionary:v11];

  return v12;
}

+ (id)_downloadDictionaryWithDownloadMetadata:(id)a3 additionalDownloadPropertiesDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v5 kind];
  [v7 setObject:v8 forKeyedSubscript:@"1"];

  v9 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:{objc_msgSend(v5, "collectionIdentifier")}];
  [v7 setObject:v9 forKeyedSubscript:@"4"];

  v10 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:{objc_msgSend(v5, "itemIdentifier")}];
  [v7 setObject:v10 forKeyedSubscript:@"7"];

  v11 = [v5 valueForMetadataKey:@"s"];
  [v7 setObject:v11 forKeyedSubscript:@"T"];

  v12 = [v5 valueForMetadataKey:@"softwareVersionExternalIdentifier"];
  [v7 setObject:v12 forKeyedSubscript:@"R"];

  v13 = [v5 title];
  [v7 setObject:v13 forKeyedSubscript:@"2"];

  v14 = [v5 valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
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
    v19 = [v5 valueForMetadataKey:@"appleId"];

    v18 = v19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setObject:v18 forKeyedSubscript:@"Z"];
  }

  if (v6)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  return v7;
}

+ (id)_assetDictionaryWithDownloadMetadata:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 valueForMetadataKey:@"asset-info"];

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

- (BLRestoreRequestItem)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"downloadDictionary"];
    downloadDictionary = v5->_downloadDictionary;
    v5->_downloadDictionary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"assetDictionary"];
    assetDictionary = v5->_assetDictionary;
    v5->_assetDictionary = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  downloadDictionary = self->_downloadDictionary;
  v5 = a3;
  [v5 encodeObject:downloadDictionary forKey:@"downloadDictionary"];
  [v5 encodeObject:self->_assetDictionary forKey:@"assetDictionary"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(BLRestoreRequestItem *)self downloadDictionary];
  v6 = [v5 copy];
  [v4 setDownloadDictionary:v6];

  v7 = [(BLRestoreRequestItem *)self assetDictionary];
  v8 = [v7 copy];
  [v4 setAssetDictionary:v8];

  return v4;
}

@end