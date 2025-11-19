@interface BCMutableReadingNowDetail
- (BCMutableReadingNowDetail)initWithAssetID:(id)a3;
- (BCMutableReadingNowDetail)initWithCloudData:(id)a3;
- (BCMutableReadingNowDetail)initWithCoder:(id)a3;
- (BCMutableReadingNowDetail)initWithRecord:(id)a3;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableReadingNowDetail

- (BCMutableReadingNowDetail)initWithAssetID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708AEC();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableReadingNowDetail)initWithCloudData:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v18 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 assetID];
      v9 = [v8 copy];
      assetID = v5->_assetID;
      v5->_assetID = v9;

      v5->_isTrackedAsRecent = [v7 isTrackedAsRecent];
      v11 = [v7 lastEngagedDate];
      v12 = [v11 copy];
      lastEngagedDate = v5->_lastEngagedDate;
      v5->_lastEngagedDate = v12;

      v14 = [v7 cloudAssetType];
      v15 = [v14 copy];
      cloudAssetType = v5->_cloudAssetType;
      v5->_cloudAssetType = v15;
    }

    else
    {
      cloudAssetType = BDSCloudKitLog();
      if (os_log_type_enabled(cloudAssetType, OS_LOG_TYPE_ERROR))
      {
        sub_1E47086E4();
      }

      v14 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableReadingNowDetail)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708B20();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v14 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    self = [v4 objectForKey:@"isTrackedAsRecent"];
    v5->_isTrackedAsRecent = [(BCMutableReadingNowDetail *)self BOOLValue];
    v8 = [v4 objectForKey:@"lastEngagedDate"];
    lastEngagedDate = v5->_lastEngagedDate;
    v5->_lastEngagedDate = v8;

    objc_opt_class();
    v10 = [v4 objectForKey:@"cloudAssetType"];
    v11 = BUDynamicCast();
    cloudAssetType = v5->_cloudAssetType;
    v5->_cloudAssetType = v11;

LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCMutableReadingNowDetail *)self assetID];
  if ([(BCMutableReadingNowDetail *)self isTrackedAsRecent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  v7 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  v8 = [v3 stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType: %@", v4, v5, v6, v7];

  return v8;
}

- (id)configuredRecordFromAttributes
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = BCMutableReadingNowDetail;
  v3 = [(BCMutableCloudData *)&v11 configuredRecordFromAttributes];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BCMutableReadingNowDetail isTrackedAsRecent](self, "isTrackedAsRecent")}];
  [v3 setObject:v4 forKey:@"isTrackedAsRecent"];

  v5 = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  [v3 setObject:v5 forKey:@"lastEngagedDate"];

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCMutableReadingNowDetail *)self cloudAssetType];
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = @"cloudAssetType";
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCReadingNowDetail configuredRecordFromAttributes setting cloudAssetType:%@ for %@", buf, 0x16u);
  }

  v8 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  [v3 setObject:v8 forKey:@"cloudAssetType"];

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BCMutableReadingNowDetail;
  v4 = a3;
  [(BCMutableCloudData *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:-[BCMutableReadingNowDetail isTrackedAsRecent](self forKey:{"isTrackedAsRecent", v7.receiver, v7.super_class), @"isTrackedAsRecent"}];
  v5 = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  [v4 encodeObject:v5 forKey:@"lastEngagedDate"];

  v6 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  [v4 encodeObject:v6 forKey:@"cloudAssetType"];
}

- (BCMutableReadingNowDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    assetID = v6->_assetID;
    v6->_assetID = v7;

    v6->_isTrackedAsRecent = [v4 decodeBoolForKey:@"isTrackedAsRecent"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastEngagedDate"];
    lastEngagedDate = v6->_lastEngagedDate;
    v6->_lastEngagedDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v6->_cloudAssetType;
    v6->_cloudAssetType = v11;
  }

  return v6;
}

@end