@interface BCMutableReadingNowDetail
- (BCMutableReadingNowDetail)initWithAssetID:(id)d;
- (BCMutableReadingNowDetail)initWithCloudData:(id)data;
- (BCMutableReadingNowDetail)initWithCoder:(id)coder;
- (BCMutableReadingNowDetail)initWithRecord:(id)record;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableReadingNowDetail

- (BCMutableReadingNowDetail)initWithAssetID:(id)d
{
  dCopy = d;
  if (!dCopy)
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
    v6 = [dCopy copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableReadingNowDetail)initWithCloudData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v18 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      assetID = [v6 assetID];
      v9 = [assetID copy];
      assetID = v5->_assetID;
      v5->_assetID = v9;

      v5->_isTrackedAsRecent = [v7 isTrackedAsRecent];
      lastEngagedDate = [v7 lastEngagedDate];
      v12 = [lastEngagedDate copy];
      lastEngagedDate = v5->_lastEngagedDate;
      v5->_lastEngagedDate = v12;

      cloudAssetType = [v7 cloudAssetType];
      v15 = [cloudAssetType copy];
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

      cloudAssetType = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableReadingNowDetail)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
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
  v5 = [(BCMutableCloudData *)&v14 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    self = [recordCopy objectForKey:@"isTrackedAsRecent"];
    v5->_isTrackedAsRecent = [(BCMutableReadingNowDetail *)self BOOLValue];
    v8 = [recordCopy objectForKey:@"lastEngagedDate"];
    lastEngagedDate = v5->_lastEngagedDate;
    v5->_lastEngagedDate = v8;

    objc_opt_class();
    v10 = [recordCopy objectForKey:@"cloudAssetType"];
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
  assetID = [(BCMutableReadingNowDetail *)self assetID];
  if ([(BCMutableReadingNowDetail *)self isTrackedAsRecent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  lastEngagedDate = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  cloudAssetType = [(BCMutableReadingNowDetail *)self cloudAssetType];
  v8 = [v3 stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType: %@", assetID, v5, lastEngagedDate, cloudAssetType];

  return v8;
}

- (id)configuredRecordFromAttributes
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = BCMutableReadingNowDetail;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v11 configuredRecordFromAttributes];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BCMutableReadingNowDetail isTrackedAsRecent](self, "isTrackedAsRecent")}];
  [configuredRecordFromAttributes setObject:v4 forKey:@"isTrackedAsRecent"];

  lastEngagedDate = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  [configuredRecordFromAttributes setObject:lastEngagedDate forKey:@"lastEngagedDate"];

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    cloudAssetType = [(BCMutableReadingNowDetail *)self cloudAssetType];
    *buf = 138412546;
    v13 = cloudAssetType;
    v14 = 2112;
    v15 = @"cloudAssetType";
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCReadingNowDetail configuredRecordFromAttributes setting cloudAssetType:%@ for %@", buf, 0x16u);
  }

  cloudAssetType2 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  [configuredRecordFromAttributes setObject:cloudAssetType2 forKey:@"cloudAssetType"];

  v9 = *MEMORY[0x1E69E9840];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BCMutableReadingNowDetail;
  coderCopy = coder;
  [(BCMutableCloudData *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[BCMutableReadingNowDetail isTrackedAsRecent](self forKey:{"isTrackedAsRecent", v7.receiver, v7.super_class), @"isTrackedAsRecent"}];
  lastEngagedDate = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  [coderCopy encodeObject:lastEngagedDate forKey:@"lastEngagedDate"];

  cloudAssetType = [(BCMutableReadingNowDetail *)self cloudAssetType];
  [coderCopy encodeObject:cloudAssetType forKey:@"cloudAssetType"];
}

- (BCMutableReadingNowDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BCMutableReadingNowDetail;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    assetID = v6->_assetID;
    v6->_assetID = localRecordID;

    v6->_isTrackedAsRecent = [coderCopy decodeBoolForKey:@"isTrackedAsRecent"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastEngagedDate"];
    lastEngagedDate = v6->_lastEngagedDate;
    v6->_lastEngagedDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v6->_cloudAssetType;
    v6->_cloudAssetType = v11;
  }

  return v6;
}

@end