@interface BCMutableAssetDetail
- (BCMutableAssetDetail)initWithAssetID:(id)a3;
- (BCMutableAssetDetail)initWithCloudData:(id)a3;
- (BCMutableAssetDetail)initWithCoder:(id)a3;
- (BCMutableAssetDetail)initWithRecord:(id)a3;
- (BOOL)isAudiobook;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
- (void)setReadingProgressHighWaterMark:(float)a3;
@end

@implementation BCMutableAssetDetail

- (BCMutableAssetDetail)initWithAssetID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0298();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    self = *(v5 + 12);
    *(v5 + 12) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetDetail)initWithCloudData:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v43 initWithCloudData:v4];
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

      v5->_isFinished = [v7 isFinished];
      v5->_notFinished = [v7 notFinished];
      v5->_taste = [v7 taste];
      v5->_tasteSyncedToStore = [v7 tasteSyncedToStore];
      v11 = [v7 dateFinished];
      v12 = [v11 copy];
      dateFinished = v5->_dateFinished;
      v5->_dateFinished = v12;

      v5->_finishedDateKind = [v7 finishedDateKind];
      v14 = [v7 lastOpenDate];
      v15 = [v14 copy];
      lastOpenDate = v5->_lastOpenDate;
      v5->_lastOpenDate = v15;

      [v7 readingProgress];
      v5->_readingProgress = v17;
      [v7 readingProgressHighWaterMark];
      v5->_readingProgressHighWaterMark = v18;
      v19 = [v7 readingPositionCFIString];
      v20 = [v19 copy];
      readingPositionCFIString = v5->_readingPositionCFIString;
      v5->_readingPositionCFIString = v20;

      v22 = [v7 readingPositionAnnotationVersion];
      v23 = [v22 copy];
      readingPositionAnnotationVersion = v5->_readingPositionAnnotationVersion;
      v5->_readingPositionAnnotationVersion = v23;

      v25 = [v7 readingPositionAssetVersion];
      v26 = [v25 copy];
      readingPositionAssetVersion = v5->_readingPositionAssetVersion;
      v5->_readingPositionAssetVersion = v26;

      v28 = [v7 readingPositionUserData];
      v29 = [v28 copy];
      readingPositionUserData = v5->_readingPositionUserData;
      v5->_readingPositionUserData = v29;

      v5->_readingPositionLocationRangeStart = [v7 readingPositionLocationRangeStart];
      v5->_readingPositionLocationRangeEnd = [v7 readingPositionLocationRangeEnd];
      v5->_readingPositionAbsolutePhysicalLocation = [v7 readingPositionAbsolutePhysicalLocation];
      v31 = [v7 readingPositionStorageUUID];
      v32 = [v31 copy];
      readingPositionStorageUUID = v5->_readingPositionStorageUUID;
      v5->_readingPositionStorageUUID = v32;

      v34 = [v7 readingPositionLocationUpdateDate];
      v35 = [v34 copy];
      readingPositionLocationUpdateDate = v5->_readingPositionLocationUpdateDate;
      v5->_readingPositionLocationUpdateDate = v35;

      v37 = [v7 datePlaybackTimeUpdated];
      v38 = [v37 copy];
      datePlaybackTimeUpdated = v5->_datePlaybackTimeUpdated;
      v5->_datePlaybackTimeUpdated = v38;

      [v7 bookmarkTime];
      v5->_bookmarkTime = v40;
    }

    else
    {
      v41 = sub_100002660();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1001C011C();
      }

      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableAssetDetail)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C02CC();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v37.receiver = self;
  v37.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v37 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    self = [v4 objectForKey:@"isFinished"];
    v5->_isFinished = [(BCMutableAssetDetail *)self BOOLValue];
    v8 = [v4 objectForKey:@"notFinished"];
    v5->_notFinished = [v8 BOOLValue];
    v36 = [v4 objectForKey:@"taste"];
    v5->_taste = [v36 integerValue];
    v35 = [v4 objectForKey:@"tasteSyncedToStore"];
    v5->_tasteSyncedToStore = [v35 integerValue];
    v9 = [v4 objectForKey:@"dateFinished"];
    dateFinished = v5->_dateFinished;
    v5->_dateFinished = v9;

    v11 = [v4 encryptedValues];
    v34 = [v11 objectForKeyedSubscript:@"finishedDateKind"];

    v5->_finishedDateKind = [v34 integerValue];
    v12 = [v4 objectForKey:@"lastOpenDate"];
    lastOpenDate = v5->_lastOpenDate;
    v5->_lastOpenDate = v12;

    v14 = [v4 objectForKey:@"readingProgress"];
    [v14 floatValue];
    v5->_readingProgress = v15;
    v16 = [v4 objectForKey:@"readingProgressHighWaterMark"];
    [v16 floatValue];
    v5->_readingProgressHighWaterMark = v17;
    v18 = [v4 objectForKey:@"readingPositionCFIString"];
    readingPositionCFIString = v5->_readingPositionCFIString;
    v5->_readingPositionCFIString = v18;

    v20 = [v4 objectForKey:@"readingPositionUserData"];
    readingPositionUserData = v5->_readingPositionUserData;
    v5->_readingPositionUserData = v20;

    v22 = [v4 objectForKey:@"readingPositionLocationRangeStart"];
    v5->_readingPositionLocationRangeStart = [v22 intValue];
    v23 = [v4 objectForKey:@"readingPositionLocationRangeEnd"];
    v5->_readingPositionLocationRangeEnd = [v23 intValue];
    v24 = [v4 objectForKey:@"readingPositionAbsolutePhysicalLocation"];
    v5->_readingPositionAbsolutePhysicalLocation = [v24 intValue];
    v25 = [v4 objectForKey:@"readingPositionStorageUUID"];
    readingPositionStorageUUID = v5->_readingPositionStorageUUID;
    v5->_readingPositionStorageUUID = v25;

    v27 = [v4 objectForKey:@"readingPositionLocationUpdateDate"];
    readingPositionLocationUpdateDate = v5->_readingPositionLocationUpdateDate;
    v5->_readingPositionLocationUpdateDate = v27;

    v29 = [v4 objectForKey:@"datePlaybackTimeUpdated"];
    datePlaybackTimeUpdated = v5->_datePlaybackTimeUpdated;
    v5->_datePlaybackTimeUpdated = v29;

    v31 = [v4 objectForKey:@"bookmarkTime"];
    [v31 doubleValue];
    v5->_bookmarkTime = v32;

LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v29 = [(BCMutableAssetDetail *)self assetID];
  if ([(BCMutableAssetDetail *)self isFinished])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v28 = v3;
  if ([(BCMutableAssetDetail *)self notFinished])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v27 = v4;
  v26 = [(BCMutableAssetDetail *)self dateFinished];
  v25 = [(BCMutableAssetDetail *)self finishedDateKind];
  v24 = [(BCMutableAssetDetail *)self lastOpenDate];
  v23 = [(BCMutableAssetDetail *)self taste];
  v22 = [(BCMutableAssetDetail *)self tasteSyncedToStore];
  [(BCMutableAssetDetail *)self readingProgress];
  v6 = v5;
  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  v8 = v7;
  v9 = [(BCMutableAssetDetail *)self readingPositionCFIString];
  v10 = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  v11 = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  v21 = [(BCMutableAssetDetail *)self readingPositionUserData];
  v20 = [(BCMutableAssetDetail *)self readingPositionLocationRangeStart];
  v12 = [(BCMutableAssetDetail *)self readingPositionLocationRangeEnd];
  v13 = [(BCMutableAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  v14 = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  v15 = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  v16 = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [(BCMutableAssetDetail *)self bookmarkTime];
  v18 = [NSString stringWithFormat:@"BCMutableAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", v29, v28, v27, v26, v25, v24, v23, v22, *&v6, *&v8, v9, v10, v11, v21, v20, v12, v13, v14, v15, v16, v17];

  return v18;
}

- (void)setReadingProgressHighWaterMark:(float)a3
{
  readingProgressHighWaterMark = self->_readingProgressHighWaterMark;
  if (readingProgressHighWaterMark >= a3)
  {
    if (readingProgressHighWaterMark > a3)
    {
      v6 = sub_100002660();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(BCMutableAssetDetail *)self assetID];
        v8 = self->_readingProgressHighWaterMark;
        v9 = 138412802;
        v10 = v7;
        v11 = 2048;
        v12 = v8;
        v13 = 2048;
        v14 = a3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCMutableAssetDetail %@ attempt to move readingProgressHighWaterMark backwards from %f to %f", &v9, 0x20u);
      }
    }
  }

  else
  {
    self->_readingProgressHighWaterMark = a3;
  }
}

- (id)configuredRecordFromAttributes
{
  v26.receiver = self;
  v26.super_class = BCMutableAssetDetail;
  v3 = [(BCMutableCloudData *)&v26 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithBool:[(BCMutableAssetDetail *)self isFinished]];
  [v3 setObject:v4 forKey:@"isFinished"];

  v5 = [NSNumber numberWithBool:[(BCMutableAssetDetail *)self notFinished]];
  [v3 setObject:v5 forKey:@"notFinished"];

  v6 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self taste]];
  [v3 setObject:v6 forKey:@"taste"];

  v7 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self tasteSyncedToStore]];
  [v3 setObject:v7 forKey:@"tasteSyncedToStore"];

  v8 = [(BCMutableAssetDetail *)self lastOpenDate];
  [v3 setObject:v8 forKey:@"lastOpenDate"];

  v9 = [(BCMutableAssetDetail *)self dateFinished];
  [v3 setObject:v9 forKey:@"dateFinished"];

  if (_os_feature_enabled_impl())
  {
    v10 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self finishedDateKind]];
    v11 = [v3 encryptedValues];
    [v11 setObject:v10 forKeyedSubscript:@"finishedDateKind"];
  }

  [(BCMutableAssetDetail *)self readingProgress];
  v12 = [NSNumber numberWithFloat:?];
  [v3 setObject:v12 forKey:@"readingProgress"];

  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  v13 = [NSNumber numberWithFloat:?];
  [v3 setObject:v13 forKey:@"readingProgressHighWaterMark"];

  v14 = [(BCMutableAssetDetail *)self readingPositionCFIString];
  [v3 setObject:v14 forKey:@"readingPositionCFIString"];

  v15 = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  [v3 setObject:v15 forKey:@"readingPositionAnnotationVersion"];

  v16 = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  [v3 setObject:v16 forKey:@"readingPositionAssetVersion"];

  v17 = [(BCMutableAssetDetail *)self readingPositionUserData];
  [v3 setObject:v17 forKey:@"readingPositionUserData"];

  v18 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionLocationRangeStart]];
  [v3 setObject:v18 forKey:@"readingPositionLocationRangeStart"];

  v19 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionLocationRangeEnd]];
  [v3 setObject:v19 forKey:@"readingPositionLocationRangeEnd"];

  v20 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionAbsolutePhysicalLocation]];
  [v3 setObject:v20 forKey:@"readingPositionAbsolutePhysicalLocation"];

  v21 = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  [v3 setObject:v21 forKey:@"readingPositionStorageUUID"];

  v22 = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  [v3 setObject:v22 forKey:@"readingPositionLocationUpdateDate"];

  v23 = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [v3 setObject:v23 forKey:@"datePlaybackTimeUpdated"];

  [(BCMutableAssetDetail *)self bookmarkTime];
  v24 = [NSNumber numberWithDouble:?];
  [v3 setObject:v24 forKey:@"bookmarkTime"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = BCMutableAssetDetail;
  v4 = a3;
  [(BCMutableCloudData *)&v16 encodeWithCoder:v4];
  [v4 encodeBool:-[BCMutableAssetDetail isFinished](self forKey:{"isFinished", v16.receiver, v16.super_class), @"isFinished"}];
  [v4 encodeBool:-[BCMutableAssetDetail notFinished](self forKey:{"notFinished"), @"notFinished"}];
  [v4 encodeInt32:-[BCMutableAssetDetail taste](self forKey:{"taste"), @"taste"}];
  [v4 encodeInt32:-[BCMutableAssetDetail tasteSyncedToStore](self forKey:{"tasteSyncedToStore"), @"tasteSyncedToStore"}];
  v5 = [(BCMutableAssetDetail *)self dateFinished];
  [v4 encodeObject:v5 forKey:@"dateFinished"];

  [v4 encodeInt32:-[BCMutableAssetDetail finishedDateKind](self forKey:{"finishedDateKind"), @"finishedDateKind"}];
  v6 = [(BCMutableAssetDetail *)self lastOpenDate];
  [v4 encodeObject:v6 forKey:@"lastOpenDate"];

  [(BCMutableAssetDetail *)self readingProgress];
  [v4 encodeDouble:@"readingProgress" forKey:v7];
  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  [v4 encodeDouble:@"readingProgressHighWaterMark" forKey:v8];
  v9 = [(BCMutableAssetDetail *)self readingPositionCFIString];
  [v4 encodeObject:v9 forKey:@"readingPositionCFIString"];

  v10 = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  [v4 encodeObject:v10 forKey:@"readingPositionAnnotationVersion"];

  v11 = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  [v4 encodeObject:v11 forKey:@"readingPositionAssetVersion"];

  v12 = [(BCMutableAssetDetail *)self readingPositionUserData];
  [v4 encodeObject:v12 forKey:@"readingPositionUserData"];

  [v4 encodeInt32:-[BCMutableAssetDetail readingPositionLocationRangeStart](self forKey:{"readingPositionLocationRangeStart"), @"readingPositionLocationRangeStart"}];
  [v4 encodeInt32:-[BCMutableAssetDetail readingPositionLocationRangeEnd](self forKey:{"readingPositionLocationRangeEnd"), @"readingPositionLocationRangeEnd"}];
  [v4 encodeInt32:-[BCMutableAssetDetail readingPositionAbsolutePhysicalLocation](self forKey:{"readingPositionAbsolutePhysicalLocation"), @"readingPositionAbsolutePhysicalLocation"}];
  v13 = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  [v4 encodeObject:v13 forKey:@"readingPositionStorageUUID"];

  v14 = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  [v4 encodeObject:v14 forKey:@"readingPositionLocationUpdateDate"];

  v15 = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [v4 encodeObject:v15 forKey:@"datePlaybackTimeUpdated"];

  [(BCMutableAssetDetail *)self bookmarkTime];
  [v4 encodeDouble:@"bookmarkTime" forKey:?];
}

- (BCMutableAssetDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v31 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    assetID = v6->_assetID;
    v6->_assetID = v7;

    v6->_isFinished = [v4 decodeBoolForKey:@"isFinished"];
    v6->_notFinished = [v4 decodeBoolForKey:@"notFinished"];
    v6->_taste = [v4 decodeInt32ForKey:@"taste"];
    v6->_tasteSyncedToStore = [v4 decodeInt32ForKey:@"tasteSyncedToStore"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateFinished"];
    dateFinished = v6->_dateFinished;
    v6->_dateFinished = v9;

    v6->_finishedDateKind = [v4 decodeInt32ForKey:@"finishedDateKind"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastOpenDate"];
    lastOpenDate = v6->_lastOpenDate;
    v6->_lastOpenDate = v11;

    [v4 decodeDoubleForKey:@"readingProgress"];
    *&v13 = v13;
    v6->_readingProgress = *&v13;
    [v4 decodeDoubleForKey:@"readingProgressHighWaterMark"];
    *&v14 = v14;
    v6->_readingProgressHighWaterMark = *&v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionCFIString"];
    readingPositionCFIString = v6->_readingPositionCFIString;
    v6->_readingPositionCFIString = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionAnnotationVersion"];
    readingPositionAnnotationVersion = v6->_readingPositionAnnotationVersion;
    v6->_readingPositionAnnotationVersion = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionAssetVersion"];
    readingPositionAssetVersion = v6->_readingPositionAssetVersion;
    v6->_readingPositionAssetVersion = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionUserData"];
    readingPositionUserData = v6->_readingPositionUserData;
    v6->_readingPositionUserData = v21;

    v6->_readingPositionLocationRangeStart = [v4 decodeInt32ForKey:@"readingPositionLocationRangeStart"];
    v6->_readingPositionLocationRangeEnd = [v4 decodeInt32ForKey:@"readingPositionLocationRangeEnd"];
    v6->_readingPositionAbsolutePhysicalLocation = [v4 decodeInt32ForKey:@"readingPositionAbsolutePhysicalLocation"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionStorageUUID"];
    readingPositionStorageUUID = v6->_readingPositionStorageUUID;
    v6->_readingPositionStorageUUID = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionLocationUpdateDate"];
    readingPositionLocationUpdateDate = v6->_readingPositionLocationUpdateDate;
    v6->_readingPositionLocationUpdateDate = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datePlaybackTimeUpdated"];
    datePlaybackTimeUpdated = v6->_datePlaybackTimeUpdated;
    v6->_datePlaybackTimeUpdated = v27;

    [v4 decodeDoubleForKey:@"bookmarkTime"];
    v6->_bookmarkTime = v29;
  }

  return v6;
}

- (BOOL)isAudiobook
{
  v2 = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  v3 = v2 != 0;

  return v3;
}

@end