@interface BDSReadingHistoryModelSnapshotInfo
- (BDSReadingHistoryModelSnapshotInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryModelSnapshotInfo)initWithLoaded:(int64_t)loaded lastSource:(int64_t)source modelReadingDay:(id)day modelLongestStreak:(id)streak remoteModelReadingDay:(id)readingDay remoteModelLongestStreak:(id)longestStreak;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryModelSnapshotInfo

- (BDSReadingHistoryModelSnapshotInfo)initWithLoaded:(int64_t)loaded lastSource:(int64_t)source modelReadingDay:(id)day modelLongestStreak:(id)streak remoteModelReadingDay:(id)readingDay remoteModelLongestStreak:(id)longestStreak
{
  dayCopy = day;
  streakCopy = streak;
  readingDayCopy = readingDay;
  longestStreakCopy = longestStreak;
  v22.receiver = self;
  v22.super_class = BDSReadingHistoryModelSnapshotInfo;
  v18 = [(BDSReadingHistoryModelSnapshotInfo *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_loaded = loaded;
    v18->_lastSource = source;
    objc_storeStrong(&v18->_modelReadingDay, day);
    objc_storeStrong(&v19->_modelLongestStreak, streak);
    objc_storeStrong(&v19->_remoteModelReadingDay, readingDay);
    objc_storeStrong(&v19->_remoteModelLongestStreak, longestStreak);
  }

  return v19;
}

- (BDSReadingHistoryModelSnapshotInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryModelSnapshotInfo *)self init];
  if (v5)
  {
    v5->_loaded = [coderCopy decodeIntegerForKey:@"loaded"];
    v5->_lastSource = [coderCopy decodeIntegerForKey:@"lastSource"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelReadingDay"];
    modelReadingDay = v5->_modelReadingDay;
    v5->_modelReadingDay = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelLongestStreak"];
    modelLongestStreak = v5->_modelLongestStreak;
    v5->_modelLongestStreak = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteModelReadingDay"];
    remoteModelReadingDay = v5->_remoteModelReadingDay;
    v5->_remoteModelReadingDay = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteModelLongestStreak"];
    remoteModelLongestStreak = v5->_remoteModelLongestStreak;
    v5->_remoteModelLongestStreak = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BDSReadingHistoryModelSnapshotInfo loaded](self forKey:{"loaded"), @"loaded"}];
  [coderCopy encodeInteger:-[BDSReadingHistoryModelSnapshotInfo lastSource](self forKey:{"lastSource"), @"lastSource"}];
  modelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
  [coderCopy encodeObject:modelReadingDay forKey:@"modelReadingDay"];

  modelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
  [coderCopy encodeObject:modelLongestStreak forKey:@"modelLongestStreak"];

  remoteModelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
  [coderCopy encodeObject:remoteModelReadingDay forKey:@"remoteModelReadingDay"];

  remoteModelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
  [coderCopy encodeObject:remoteModelLongestStreak forKey:@"remoteModelLongestStreak"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSReadingHistoryModelSnapshotInfo);
  if (v4)
  {
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setLoaded:[(BDSReadingHistoryModelSnapshotInfo *)self loaded]];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setLastSource:[(BDSReadingHistoryModelSnapshotInfo *)self lastSource]];
    modelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setModelReadingDay:modelReadingDay];

    modelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setModelLongestStreak:modelLongestStreak];

    remoteModelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setRemoteModelReadingDay:remoteModelReadingDay];

    remoteModelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setRemoteModelLongestStreak:remoteModelLongestStreak];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  loaded = [(BDSReadingHistoryModelSnapshotInfo *)self loaded];
  lastSource = [(BDSReadingHistoryModelSnapshotInfo *)self lastSource];
  modelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
  modelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
  remoteModelReadingDay = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
  remoteModelLongestStreak = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
  v10 = [NSString stringWithFormat:@"<%@: %p loaded:%ld, lastSource:%ld, modelReadingDay:%@, modelLongestStreak:%@, remoteModelReadingDay:%@, remoteModelLongestStreak:%@>", v3, self, loaded, lastSource, modelReadingDay, modelLongestStreak, remoteModelReadingDay, remoteModelLongestStreak];

  return v10;
}

@end