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
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708F6C();
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
      v41 = BDSCloudKitLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708DF0();
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
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708FA0();
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
  v30 = MEMORY[0x1E696AEC0];
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
  v18 = [v30 stringWithFormat:@"BCMutableAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", v29, v28, v27, v26, v25, v24, v23, v22, *&v6, *&v8, v9, v10, v11, v21, v20, v12, v13, v14, v15, v16, v17];

  return v18;
}

- (void)setReadingProgressHighWaterMark:(float)a3
{
  v16 = *MEMORY[0x1E69E9840];
  readingProgressHighWaterMark = self->_readingProgressHighWaterMark;
  if (readingProgressHighWaterMark >= a3)
  {
    if (readingProgressHighWaterMark > a3)
    {
      v6 = BDSCloudKitLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(BCMutableAssetDetail *)self assetID];
        v8 = self->_readingProgressHighWaterMark;
        v10 = 138412802;
        v11 = v7;
        v12 = 2048;
        v13 = v8;
        v14 = 2048;
        v15 = a3;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCMutableAssetDetail %@ attempt to move readingProgressHighWaterMark backwards from %f to %f", &v10, 0x20u);
      }
    }
  }

  else
  {
    self->_readingProgressHighWaterMark = a3;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)configuredRecordFromAttributes
{
  v29.receiver = self;
  v29.super_class = BCMutableAssetDetail;
  v3 = [(BCMutableCloudData *)&v29 configuredRecordFromAttributes];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BCMutableAssetDetail isFinished](self, "isFinished")}];
  [v3 setObject:v4 forKey:@"isFinished"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BCMutableAssetDetail notFinished](self, "notFinished")}];
  [v3 setObject:v5 forKey:@"notFinished"];

  v6 = [MEMORY[0x1E696AD98] numberWithShort:{-[BCMutableAssetDetail taste](self, "taste")}];
  [v3 setObject:v6 forKey:@"taste"];

  v7 = [MEMORY[0x1E696AD98] numberWithShort:{-[BCMutableAssetDetail tasteSyncedToStore](self, "tasteSyncedToStore")}];
  [v3 setObject:v7 forKey:@"tasteSyncedToStore"];

  v8 = [(BCMutableAssetDetail *)self lastOpenDate];
  [v3 setObject:v8 forKey:@"lastOpenDate"];

  v9 = [(BCMutableAssetDetail *)self dateFinished];
  [v3 setObject:v9 forKey:@"dateFinished"];

  if (_os_feature_enabled_impl())
  {
    v10 = [MEMORY[0x1E696AD98] numberWithShort:{-[BCMutableAssetDetail finishedDateKind](self, "finishedDateKind")}];
    v11 = [v3 encryptedValues];
    [v11 setObject:v10 forKeyedSubscript:@"finishedDateKind"];
  }

  v12 = MEMORY[0x1E696AD98];
  [(BCMutableAssetDetail *)self readingProgress];
  v13 = [v12 numberWithFloat:?];
  [v3 setObject:v13 forKey:@"readingProgress"];

  v14 = MEMORY[0x1E696AD98];
  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  v15 = [v14 numberWithFloat:?];
  [v3 setObject:v15 forKey:@"readingProgressHighWaterMark"];

  v16 = [(BCMutableAssetDetail *)self readingPositionCFIString];
  [v3 setObject:v16 forKey:@"readingPositionCFIString"];

  v17 = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  [v3 setObject:v17 forKey:@"readingPositionAnnotationVersion"];

  v18 = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  [v3 setObject:v18 forKey:@"readingPositionAssetVersion"];

  v19 = [(BCMutableAssetDetail *)self readingPositionUserData];
  [v3 setObject:v19 forKey:@"readingPositionUserData"];

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableAssetDetail readingPositionLocationRangeStart](self, "readingPositionLocationRangeStart")}];
  [v3 setObject:v20 forKey:@"readingPositionLocationRangeStart"];

  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableAssetDetail readingPositionLocationRangeEnd](self, "readingPositionLocationRangeEnd")}];
  [v3 setObject:v21 forKey:@"readingPositionLocationRangeEnd"];

  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BCMutableAssetDetail readingPositionAbsolutePhysicalLocation](self, "readingPositionAbsolutePhysicalLocation")}];
  [v3 setObject:v22 forKey:@"readingPositionAbsolutePhysicalLocation"];

  v23 = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  [v3 setObject:v23 forKey:@"readingPositionStorageUUID"];

  v24 = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  [v3 setObject:v24 forKey:@"readingPositionLocationUpdateDate"];

  v25 = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [v3 setObject:v25 forKey:@"datePlaybackTimeUpdated"];

  v26 = MEMORY[0x1E696AD98];
  [(BCMutableAssetDetail *)self bookmarkTime];
  v27 = [v26 numberWithDouble:?];
  [v3 setObject:v27 forKey:@"bookmarkTime"];

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