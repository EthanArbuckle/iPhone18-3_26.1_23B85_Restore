@interface BCMutableAssetAnnotations
- (BCMutableAssetAnnotations)initWithAssetID:(id)d;
- (BCMutableAssetAnnotations)initWithCloudData:(id)data;
- (BCMutableAssetAnnotations)initWithRecord:(id)record;
- (NSString)debugDescription;
- (id)configuredRecordFromAttributes;
@end

@implementation BCMutableAssetAnnotations

- (BCMutableAssetAnnotations)initWithAssetID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705D08();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableAssetAnnotations;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetAnnotations)initWithCloudData:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = BCMutableAssetAnnotations;
  v5 = [(BCMutableCloudData *)&v17 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      assetID = [v6 assetID];
      v9 = [assetID copy];

      if ([(BCMutableAssetAnnotations *)v9 length])
      {
        objc_storeStrong(&v5->_assetID, v9);
        assetVersion = [v7 assetVersion];
        v11 = [assetVersion copy];
        assetVersion = v5->_assetVersion;
        v5->_assetVersion = v11;

        bookAnnotations = [v7 bookAnnotations];
        p_super = &v5->_bookAnnotations->super;
        v5->_bookAnnotations = bookAnnotations;
LABEL_12:

        goto LABEL_13;
      }

      v15 = BDSCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705D44();
      }

      p_super = &v5->super.super;
    }

    else
    {
      p_super = BDSCloudKitLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705D80();
      }

      v9 = v5;
    }

    v5 = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (BCMutableAssetAnnotations)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705E70();
    }

    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = BCMutableAssetAnnotations;
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:recordCopy];
  if (v5)
  {
    self = [BCCloudData localIdentifierFromRecord:recordCopy];
    if ([(BCMutableAssetAnnotations *)self length])
    {
      objc_storeStrong(&v5->_assetID, self);
      v6 = [recordCopy objectForKey:@"assetVersion"];
      assetVersion = v5->_assetVersion;
      v5->_assetVersion = v6;

      objc_opt_class();
      v8 = [recordCopy objectForKey:@"assetAnnotations"];
      v9 = BUDynamicCast();

      fileURL = [v9 fileURL];
      if (fileURL)
      {
        v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL];
        p_super = &v5->_bookAnnotations->super;
        v5->_bookAnnotations = v11;
      }

      else
      {
        p_super = BDSCloudKitLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          sub_1E4705DBC(&v5->_assetID);
        }
      }

      goto LABEL_15;
    }

    v13 = BDSCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705E34();
    }

    v9 = &v5->super.super;
LABEL_11:
    v5 = 0;
LABEL_15:
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  assetID = [(BCMutableAssetAnnotations *)self assetID];
  assetVersion = [(BCMutableAssetAnnotations *)self assetVersion];
  bookAnnotations = [(BCMutableAssetAnnotations *)self bookAnnotations];
  v7 = [v3 stringWithFormat:@"assetID: %@, assetVersion: %@, annotations: %@", assetID, assetVersion, bookAnnotations];

  return v7;
}

- (id)configuredRecordFromAttributes
{
  v14.receiver = self;
  v14.super_class = BCMutableAssetAnnotations;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v14 configuredRecordFromAttributes];
  assetVersion = [(BCMutableAssetAnnotations *)self assetVersion];
  [configuredRecordFromAttributes setObject:assetVersion forKey:@"assetVersion"];

  v5 = +[BCCloudAssetManager sharedManager];
  assetAnnotationManager = [v5 assetAnnotationManager];
  assetID = [(BCMutableAssetAnnotations *)self assetID];
  v8 = [assetAnnotationManager fileURLForCachingCKAssetWithAssetID:assetID];

  if (v8 && (-[BCMutableAssetAnnotations bookAnnotations](self, "bookAnnotations"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 writeToURL:v8 atomically:1], v9, v10))
  {
    v11 = [objc_alloc(MEMORY[0x1E695B878]) initWithFileURL:v8];
    [configuredRecordFromAttributes setObject:v11 forKey:@"assetAnnotations"];
  }

  else
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705EAC();
    }

    [configuredRecordFromAttributes setObject:0 forKey:@"assetAnnotations"];
  }

  return configuredRecordFromAttributes;
}

@end