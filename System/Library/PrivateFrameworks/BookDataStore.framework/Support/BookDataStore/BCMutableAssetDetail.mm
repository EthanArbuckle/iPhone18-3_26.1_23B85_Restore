@interface BCMutableAssetDetail
- (BCMutableAssetDetail)initWithAssetID:(id)d;
- (BCMutableAssetDetail)initWithCloudData:(id)data;
- (BCMutableAssetDetail)initWithCoder:(id)coder;
- (BCMutableAssetDetail)initWithRecord:(id)record;
- (BOOL)isAudiobook;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
- (void)setReadingProgressHighWaterMark:(float)mark;
@end

@implementation BCMutableAssetDetail

- (BCMutableAssetDetail)initWithAssetID:(id)d
{
  dCopy = d;
  if (!dCopy)
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
    v6 = [dCopy copy];
    self = *(v5 + 12);
    *(v5 + 12) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetDetail)initWithCloudData:(id)data
{
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v43 initWithCloudData:dataCopy];
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

      v5->_isFinished = [v7 isFinished];
      v5->_notFinished = [v7 notFinished];
      v5->_taste = [v7 taste];
      v5->_tasteSyncedToStore = [v7 tasteSyncedToStore];
      dateFinished = [v7 dateFinished];
      v12 = [dateFinished copy];
      dateFinished = v5->_dateFinished;
      v5->_dateFinished = v12;

      v5->_finishedDateKind = [v7 finishedDateKind];
      lastOpenDate = [v7 lastOpenDate];
      v15 = [lastOpenDate copy];
      lastOpenDate = v5->_lastOpenDate;
      v5->_lastOpenDate = v15;

      [v7 readingProgress];
      v5->_readingProgress = v17;
      [v7 readingProgressHighWaterMark];
      v5->_readingProgressHighWaterMark = v18;
      readingPositionCFIString = [v7 readingPositionCFIString];
      v20 = [readingPositionCFIString copy];
      readingPositionCFIString = v5->_readingPositionCFIString;
      v5->_readingPositionCFIString = v20;

      readingPositionAnnotationVersion = [v7 readingPositionAnnotationVersion];
      v23 = [readingPositionAnnotationVersion copy];
      readingPositionAnnotationVersion = v5->_readingPositionAnnotationVersion;
      v5->_readingPositionAnnotationVersion = v23;

      readingPositionAssetVersion = [v7 readingPositionAssetVersion];
      v26 = [readingPositionAssetVersion copy];
      readingPositionAssetVersion = v5->_readingPositionAssetVersion;
      v5->_readingPositionAssetVersion = v26;

      readingPositionUserData = [v7 readingPositionUserData];
      v29 = [readingPositionUserData copy];
      readingPositionUserData = v5->_readingPositionUserData;
      v5->_readingPositionUserData = v29;

      v5->_readingPositionLocationRangeStart = [v7 readingPositionLocationRangeStart];
      v5->_readingPositionLocationRangeEnd = [v7 readingPositionLocationRangeEnd];
      v5->_readingPositionAbsolutePhysicalLocation = [v7 readingPositionAbsolutePhysicalLocation];
      readingPositionStorageUUID = [v7 readingPositionStorageUUID];
      v32 = [readingPositionStorageUUID copy];
      readingPositionStorageUUID = v5->_readingPositionStorageUUID;
      v5->_readingPositionStorageUUID = v32;

      readingPositionLocationUpdateDate = [v7 readingPositionLocationUpdateDate];
      v35 = [readingPositionLocationUpdateDate copy];
      readingPositionLocationUpdateDate = v5->_readingPositionLocationUpdateDate;
      v5->_readingPositionLocationUpdateDate = v35;

      datePlaybackTimeUpdated = [v7 datePlaybackTimeUpdated];
      v38 = [datePlaybackTimeUpdated copy];
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

- (BCMutableAssetDetail)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
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
  v5 = [(BCMutableCloudData *)&v37 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    self = [recordCopy objectForKey:@"isFinished"];
    v5->_isFinished = [(BCMutableAssetDetail *)self BOOLValue];
    v8 = [recordCopy objectForKey:@"notFinished"];
    v5->_notFinished = [v8 BOOLValue];
    v36 = [recordCopy objectForKey:@"taste"];
    v5->_taste = [v36 integerValue];
    v35 = [recordCopy objectForKey:@"tasteSyncedToStore"];
    v5->_tasteSyncedToStore = [v35 integerValue];
    v9 = [recordCopy objectForKey:@"dateFinished"];
    dateFinished = v5->_dateFinished;
    v5->_dateFinished = v9;

    encryptedValues = [recordCopy encryptedValues];
    v34 = [encryptedValues objectForKeyedSubscript:@"finishedDateKind"];

    v5->_finishedDateKind = [v34 integerValue];
    v12 = [recordCopy objectForKey:@"lastOpenDate"];
    lastOpenDate = v5->_lastOpenDate;
    v5->_lastOpenDate = v12;

    v14 = [recordCopy objectForKey:@"readingProgress"];
    [v14 floatValue];
    v5->_readingProgress = v15;
    v16 = [recordCopy objectForKey:@"readingProgressHighWaterMark"];
    [v16 floatValue];
    v5->_readingProgressHighWaterMark = v17;
    v18 = [recordCopy objectForKey:@"readingPositionCFIString"];
    readingPositionCFIString = v5->_readingPositionCFIString;
    v5->_readingPositionCFIString = v18;

    v20 = [recordCopy objectForKey:@"readingPositionUserData"];
    readingPositionUserData = v5->_readingPositionUserData;
    v5->_readingPositionUserData = v20;

    v22 = [recordCopy objectForKey:@"readingPositionLocationRangeStart"];
    v5->_readingPositionLocationRangeStart = [v22 intValue];
    v23 = [recordCopy objectForKey:@"readingPositionLocationRangeEnd"];
    v5->_readingPositionLocationRangeEnd = [v23 intValue];
    v24 = [recordCopy objectForKey:@"readingPositionAbsolutePhysicalLocation"];
    v5->_readingPositionAbsolutePhysicalLocation = [v24 intValue];
    v25 = [recordCopy objectForKey:@"readingPositionStorageUUID"];
    readingPositionStorageUUID = v5->_readingPositionStorageUUID;
    v5->_readingPositionStorageUUID = v25;

    v27 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
    readingPositionLocationUpdateDate = v5->_readingPositionLocationUpdateDate;
    v5->_readingPositionLocationUpdateDate = v27;

    v29 = [recordCopy objectForKey:@"datePlaybackTimeUpdated"];
    datePlaybackTimeUpdated = v5->_datePlaybackTimeUpdated;
    v5->_datePlaybackTimeUpdated = v29;

    v31 = [recordCopy objectForKey:@"bookmarkTime"];
    [v31 doubleValue];
    v5->_bookmarkTime = v32;

LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  assetID = [(BCMutableAssetDetail *)self assetID];
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
  dateFinished = [(BCMutableAssetDetail *)self dateFinished];
  finishedDateKind = [(BCMutableAssetDetail *)self finishedDateKind];
  lastOpenDate = [(BCMutableAssetDetail *)self lastOpenDate];
  taste = [(BCMutableAssetDetail *)self taste];
  tasteSyncedToStore = [(BCMutableAssetDetail *)self tasteSyncedToStore];
  [(BCMutableAssetDetail *)self readingProgress];
  v6 = v5;
  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  v8 = v7;
  readingPositionCFIString = [(BCMutableAssetDetail *)self readingPositionCFIString];
  readingPositionAnnotationVersion = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  readingPositionAssetVersion = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  readingPositionUserData = [(BCMutableAssetDetail *)self readingPositionUserData];
  readingPositionLocationRangeStart = [(BCMutableAssetDetail *)self readingPositionLocationRangeStart];
  readingPositionLocationRangeEnd = [(BCMutableAssetDetail *)self readingPositionLocationRangeEnd];
  readingPositionAbsolutePhysicalLocation = [(BCMutableAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  readingPositionStorageUUID = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  readingPositionLocationUpdateDate = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  datePlaybackTimeUpdated = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [(BCMutableAssetDetail *)self bookmarkTime];
  v18 = [NSString stringWithFormat:@"BCMutableAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", assetID, v28, v27, dateFinished, finishedDateKind, lastOpenDate, taste, tasteSyncedToStore, *&v6, *&v8, readingPositionCFIString, readingPositionAnnotationVersion, readingPositionAssetVersion, readingPositionUserData, readingPositionLocationRangeStart, readingPositionLocationRangeEnd, readingPositionAbsolutePhysicalLocation, readingPositionStorageUUID, readingPositionLocationUpdateDate, datePlaybackTimeUpdated, v17];

  return v18;
}

- (void)setReadingProgressHighWaterMark:(float)mark
{
  readingProgressHighWaterMark = self->_readingProgressHighWaterMark;
  if (readingProgressHighWaterMark >= mark)
  {
    if (readingProgressHighWaterMark > mark)
    {
      v6 = sub_100002660();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        assetID = [(BCMutableAssetDetail *)self assetID];
        v8 = self->_readingProgressHighWaterMark;
        v9 = 138412802;
        v10 = assetID;
        v11 = 2048;
        v12 = v8;
        v13 = 2048;
        markCopy = mark;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCMutableAssetDetail %@ attempt to move readingProgressHighWaterMark backwards from %f to %f", &v9, 0x20u);
      }
    }
  }

  else
  {
    self->_readingProgressHighWaterMark = mark;
  }
}

- (id)configuredRecordFromAttributes
{
  v26.receiver = self;
  v26.super_class = BCMutableAssetDetail;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v26 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithBool:[(BCMutableAssetDetail *)self isFinished]];
  [configuredRecordFromAttributes setObject:v4 forKey:@"isFinished"];

  v5 = [NSNumber numberWithBool:[(BCMutableAssetDetail *)self notFinished]];
  [configuredRecordFromAttributes setObject:v5 forKey:@"notFinished"];

  v6 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self taste]];
  [configuredRecordFromAttributes setObject:v6 forKey:@"taste"];

  v7 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self tasteSyncedToStore]];
  [configuredRecordFromAttributes setObject:v7 forKey:@"tasteSyncedToStore"];

  lastOpenDate = [(BCMutableAssetDetail *)self lastOpenDate];
  [configuredRecordFromAttributes setObject:lastOpenDate forKey:@"lastOpenDate"];

  dateFinished = [(BCMutableAssetDetail *)self dateFinished];
  [configuredRecordFromAttributes setObject:dateFinished forKey:@"dateFinished"];

  if (_os_feature_enabled_impl())
  {
    v10 = [NSNumber numberWithShort:[(BCMutableAssetDetail *)self finishedDateKind]];
    encryptedValues = [configuredRecordFromAttributes encryptedValues];
    [encryptedValues setObject:v10 forKeyedSubscript:@"finishedDateKind"];
  }

  [(BCMutableAssetDetail *)self readingProgress];
  v12 = [NSNumber numberWithFloat:?];
  [configuredRecordFromAttributes setObject:v12 forKey:@"readingProgress"];

  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  v13 = [NSNumber numberWithFloat:?];
  [configuredRecordFromAttributes setObject:v13 forKey:@"readingProgressHighWaterMark"];

  readingPositionCFIString = [(BCMutableAssetDetail *)self readingPositionCFIString];
  [configuredRecordFromAttributes setObject:readingPositionCFIString forKey:@"readingPositionCFIString"];

  readingPositionAnnotationVersion = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  [configuredRecordFromAttributes setObject:readingPositionAnnotationVersion forKey:@"readingPositionAnnotationVersion"];

  readingPositionAssetVersion = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  [configuredRecordFromAttributes setObject:readingPositionAssetVersion forKey:@"readingPositionAssetVersion"];

  readingPositionUserData = [(BCMutableAssetDetail *)self readingPositionUserData];
  [configuredRecordFromAttributes setObject:readingPositionUserData forKey:@"readingPositionUserData"];

  v18 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionLocationRangeStart]];
  [configuredRecordFromAttributes setObject:v18 forKey:@"readingPositionLocationRangeStart"];

  v19 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionLocationRangeEnd]];
  [configuredRecordFromAttributes setObject:v19 forKey:@"readingPositionLocationRangeEnd"];

  v20 = [NSNumber numberWithInt:[(BCMutableAssetDetail *)self readingPositionAbsolutePhysicalLocation]];
  [configuredRecordFromAttributes setObject:v20 forKey:@"readingPositionAbsolutePhysicalLocation"];

  readingPositionStorageUUID = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  [configuredRecordFromAttributes setObject:readingPositionStorageUUID forKey:@"readingPositionStorageUUID"];

  readingPositionLocationUpdateDate = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  [configuredRecordFromAttributes setObject:readingPositionLocationUpdateDate forKey:@"readingPositionLocationUpdateDate"];

  datePlaybackTimeUpdated = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [configuredRecordFromAttributes setObject:datePlaybackTimeUpdated forKey:@"datePlaybackTimeUpdated"];

  [(BCMutableAssetDetail *)self bookmarkTime];
  v24 = [NSNumber numberWithDouble:?];
  [configuredRecordFromAttributes setObject:v24 forKey:@"bookmarkTime"];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = BCMutableAssetDetail;
  coderCopy = coder;
  [(BCMutableCloudData *)&v16 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[BCMutableAssetDetail isFinished](self forKey:{"isFinished", v16.receiver, v16.super_class), @"isFinished"}];
  [coderCopy encodeBool:-[BCMutableAssetDetail notFinished](self forKey:{"notFinished"), @"notFinished"}];
  [coderCopy encodeInt32:-[BCMutableAssetDetail taste](self forKey:{"taste"), @"taste"}];
  [coderCopy encodeInt32:-[BCMutableAssetDetail tasteSyncedToStore](self forKey:{"tasteSyncedToStore"), @"tasteSyncedToStore"}];
  dateFinished = [(BCMutableAssetDetail *)self dateFinished];
  [coderCopy encodeObject:dateFinished forKey:@"dateFinished"];

  [coderCopy encodeInt32:-[BCMutableAssetDetail finishedDateKind](self forKey:{"finishedDateKind"), @"finishedDateKind"}];
  lastOpenDate = [(BCMutableAssetDetail *)self lastOpenDate];
  [coderCopy encodeObject:lastOpenDate forKey:@"lastOpenDate"];

  [(BCMutableAssetDetail *)self readingProgress];
  [coderCopy encodeDouble:@"readingProgress" forKey:v7];
  [(BCMutableAssetDetail *)self readingProgressHighWaterMark];
  [coderCopy encodeDouble:@"readingProgressHighWaterMark" forKey:v8];
  readingPositionCFIString = [(BCMutableAssetDetail *)self readingPositionCFIString];
  [coderCopy encodeObject:readingPositionCFIString forKey:@"readingPositionCFIString"];

  readingPositionAnnotationVersion = [(BCMutableAssetDetail *)self readingPositionAnnotationVersion];
  [coderCopy encodeObject:readingPositionAnnotationVersion forKey:@"readingPositionAnnotationVersion"];

  readingPositionAssetVersion = [(BCMutableAssetDetail *)self readingPositionAssetVersion];
  [coderCopy encodeObject:readingPositionAssetVersion forKey:@"readingPositionAssetVersion"];

  readingPositionUserData = [(BCMutableAssetDetail *)self readingPositionUserData];
  [coderCopy encodeObject:readingPositionUserData forKey:@"readingPositionUserData"];

  [coderCopy encodeInt32:-[BCMutableAssetDetail readingPositionLocationRangeStart](self forKey:{"readingPositionLocationRangeStart"), @"readingPositionLocationRangeStart"}];
  [coderCopy encodeInt32:-[BCMutableAssetDetail readingPositionLocationRangeEnd](self forKey:{"readingPositionLocationRangeEnd"), @"readingPositionLocationRangeEnd"}];
  [coderCopy encodeInt32:-[BCMutableAssetDetail readingPositionAbsolutePhysicalLocation](self forKey:{"readingPositionAbsolutePhysicalLocation"), @"readingPositionAbsolutePhysicalLocation"}];
  readingPositionStorageUUID = [(BCMutableAssetDetail *)self readingPositionStorageUUID];
  [coderCopy encodeObject:readingPositionStorageUUID forKey:@"readingPositionStorageUUID"];

  readingPositionLocationUpdateDate = [(BCMutableAssetDetail *)self readingPositionLocationUpdateDate];
  [coderCopy encodeObject:readingPositionLocationUpdateDate forKey:@"readingPositionLocationUpdateDate"];

  datePlaybackTimeUpdated = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  [coderCopy encodeObject:datePlaybackTimeUpdated forKey:@"datePlaybackTimeUpdated"];

  [(BCMutableAssetDetail *)self bookmarkTime];
  [coderCopy encodeDouble:@"bookmarkTime" forKey:?];
}

- (BCMutableAssetDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = BCMutableAssetDetail;
  v5 = [(BCMutableCloudData *)&v31 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    assetID = v6->_assetID;
    v6->_assetID = localRecordID;

    v6->_isFinished = [coderCopy decodeBoolForKey:@"isFinished"];
    v6->_notFinished = [coderCopy decodeBoolForKey:@"notFinished"];
    v6->_taste = [coderCopy decodeInt32ForKey:@"taste"];
    v6->_tasteSyncedToStore = [coderCopy decodeInt32ForKey:@"tasteSyncedToStore"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateFinished"];
    dateFinished = v6->_dateFinished;
    v6->_dateFinished = v9;

    v6->_finishedDateKind = [coderCopy decodeInt32ForKey:@"finishedDateKind"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastOpenDate"];
    lastOpenDate = v6->_lastOpenDate;
    v6->_lastOpenDate = v11;

    [coderCopy decodeDoubleForKey:@"readingProgress"];
    *&v13 = v13;
    v6->_readingProgress = *&v13;
    [coderCopy decodeDoubleForKey:@"readingProgressHighWaterMark"];
    *&v14 = v14;
    v6->_readingProgressHighWaterMark = *&v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionCFIString"];
    readingPositionCFIString = v6->_readingPositionCFIString;
    v6->_readingPositionCFIString = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionAnnotationVersion"];
    readingPositionAnnotationVersion = v6->_readingPositionAnnotationVersion;
    v6->_readingPositionAnnotationVersion = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionAssetVersion"];
    readingPositionAssetVersion = v6->_readingPositionAssetVersion;
    v6->_readingPositionAssetVersion = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionUserData"];
    readingPositionUserData = v6->_readingPositionUserData;
    v6->_readingPositionUserData = v21;

    v6->_readingPositionLocationRangeStart = [coderCopy decodeInt32ForKey:@"readingPositionLocationRangeStart"];
    v6->_readingPositionLocationRangeEnd = [coderCopy decodeInt32ForKey:@"readingPositionLocationRangeEnd"];
    v6->_readingPositionAbsolutePhysicalLocation = [coderCopy decodeInt32ForKey:@"readingPositionAbsolutePhysicalLocation"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionStorageUUID"];
    readingPositionStorageUUID = v6->_readingPositionStorageUUID;
    v6->_readingPositionStorageUUID = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingPositionLocationUpdateDate"];
    readingPositionLocationUpdateDate = v6->_readingPositionLocationUpdateDate;
    v6->_readingPositionLocationUpdateDate = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datePlaybackTimeUpdated"];
    datePlaybackTimeUpdated = v6->_datePlaybackTimeUpdated;
    v6->_datePlaybackTimeUpdated = v27;

    [coderCopy decodeDoubleForKey:@"bookmarkTime"];
    v6->_bookmarkTime = v29;
  }

  return v6;
}

- (BOOL)isAudiobook
{
  datePlaybackTimeUpdated = [(BCMutableAssetDetail *)self datePlaybackTimeUpdated];
  v3 = datePlaybackTimeUpdated != 0;

  return v3;
}

@end