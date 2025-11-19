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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C26AC();
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
      cloudAssetType = sub_100002660();
      if (os_log_type_enabled(cloudAssetType, OS_LOG_TYPE_ERROR))
      {
        sub_1001C22A4();
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
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C26E0();
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
  v3 = [(BCMutableReadingNowDetail *)self assetID];
  if ([(BCMutableReadingNowDetail *)self isTrackedAsRecent])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  v6 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  v7 = [NSString stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType: %@", v3, v4, v5, v6];

  return v7;
}

- (id)configuredRecordFromAttributes
{
  v10.receiver = self;
  v10.super_class = BCMutableReadingNowDetail;
  v3 = [(BCMutableCloudData *)&v10 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithBool:[(BCMutableReadingNowDetail *)self isTrackedAsRecent]];
  [v3 setObject:v4 forKey:@"isTrackedAsRecent"];

  v5 = [(BCMutableReadingNowDetail *)self lastEngagedDate];
  [v3 setObject:v5 forKey:@"lastEngagedDate"];

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCMutableReadingNowDetail *)self cloudAssetType];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = @"cloudAssetType";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCReadingNowDetail configuredRecordFromAttributes setting cloudAssetType:%@ for %@", buf, 0x16u);
  }

  v8 = [(BCMutableReadingNowDetail *)self cloudAssetType];
  [v3 setObject:v8 forKey:@"cloudAssetType"];

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