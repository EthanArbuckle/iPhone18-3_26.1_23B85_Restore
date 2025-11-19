@interface BCMutableAssetAnnotations
- (BCMutableAssetAnnotations)initWithAssetID:(id)a3;
- (BCMutableAssetAnnotations)initWithCloudData:(id)a3;
- (BCMutableAssetAnnotations)initWithRecord:(id)a3;
- (NSString)debugDescription;
- (id)configuredRecordFromAttributes;
@end

@implementation BCMutableAssetAnnotations

- (BCMutableAssetAnnotations)initWithAssetID:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v6 = [v4 copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetAnnotations)initWithCloudData:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BCMutableAssetAnnotations;
  v5 = [(BCMutableCloudData *)&v17 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 assetID];
      v9 = [v8 copy];

      if ([(BCMutableAssetAnnotations *)v9 length])
      {
        objc_storeStrong(&v5->_assetID, v9);
        v10 = [v7 assetVersion];
        v11 = [v10 copy];
        assetVersion = v5->_assetVersion;
        v5->_assetVersion = v11;

        v13 = [v7 bookAnnotations];
        p_super = &v5->_bookAnnotations->super;
        v5->_bookAnnotations = v13;
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

- (BCMutableAssetAnnotations)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:v4];
  if (v5)
  {
    self = [BCCloudData localIdentifierFromRecord:v4];
    if ([(BCMutableAssetAnnotations *)self length])
    {
      objc_storeStrong(&v5->_assetID, self);
      v6 = [v4 objectForKey:@"assetVersion"];
      assetVersion = v5->_assetVersion;
      v5->_assetVersion = v6;

      objc_opt_class();
      v8 = [v4 objectForKey:@"assetAnnotations"];
      v9 = BUDynamicCast();

      v10 = [v9 fileURL];
      if (v10)
      {
        v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10];
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
  v4 = [(BCMutableAssetAnnotations *)self assetID];
  v5 = [(BCMutableAssetAnnotations *)self assetVersion];
  v6 = [(BCMutableAssetAnnotations *)self bookAnnotations];
  v7 = [v3 stringWithFormat:@"assetID: %@, assetVersion: %@, annotations: %@", v4, v5, v6];

  return v7;
}

- (id)configuredRecordFromAttributes
{
  v14.receiver = self;
  v14.super_class = BCMutableAssetAnnotations;
  v3 = [(BCMutableCloudData *)&v14 configuredRecordFromAttributes];
  v4 = [(BCMutableAssetAnnotations *)self assetVersion];
  [v3 setObject:v4 forKey:@"assetVersion"];

  v5 = +[BCCloudAssetManager sharedManager];
  v6 = [v5 assetAnnotationManager];
  v7 = [(BCMutableAssetAnnotations *)self assetID];
  v8 = [v6 fileURLForCachingCKAssetWithAssetID:v7];

  if (v8 && (-[BCMutableAssetAnnotations bookAnnotations](self, "bookAnnotations"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 writeToURL:v8 atomically:1], v9, v10))
  {
    v11 = [objc_alloc(MEMORY[0x1E695B878]) initWithFileURL:v8];
    [v3 setObject:v11 forKey:@"assetAnnotations"];
  }

  else
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705EAC();
    }

    [v3 setObject:0 forKey:@"assetAnnotations"];
  }

  return v3;
}

@end