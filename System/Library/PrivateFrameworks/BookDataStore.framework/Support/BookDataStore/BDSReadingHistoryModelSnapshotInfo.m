@interface BDSReadingHistoryModelSnapshotInfo
- (BDSReadingHistoryModelSnapshotInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryModelSnapshotInfo)initWithLoaded:(int64_t)a3 lastSource:(int64_t)a4 modelReadingDay:(id)a5 modelLongestStreak:(id)a6 remoteModelReadingDay:(id)a7 remoteModelLongestStreak:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryModelSnapshotInfo

- (BDSReadingHistoryModelSnapshotInfo)initWithLoaded:(int64_t)a3 lastSource:(int64_t)a4 modelReadingDay:(id)a5 modelLongestStreak:(id)a6 remoteModelReadingDay:(id)a7 remoteModelLongestStreak:(id)a8
{
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = BDSReadingHistoryModelSnapshotInfo;
  v18 = [(BDSReadingHistoryModelSnapshotInfo *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_loaded = a3;
    v18->_lastSource = a4;
    objc_storeStrong(&v18->_modelReadingDay, a5);
    objc_storeStrong(&v19->_modelLongestStreak, a6);
    objc_storeStrong(&v19->_remoteModelReadingDay, a7);
    objc_storeStrong(&v19->_remoteModelLongestStreak, a8);
  }

  return v19;
}

- (BDSReadingHistoryModelSnapshotInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryModelSnapshotInfo *)self init];
  if (v5)
  {
    v5->_loaded = [v4 decodeIntegerForKey:@"loaded"];
    v5->_lastSource = [v4 decodeIntegerForKey:@"lastSource"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelReadingDay"];
    modelReadingDay = v5->_modelReadingDay;
    v5->_modelReadingDay = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelLongestStreak"];
    modelLongestStreak = v5->_modelLongestStreak;
    v5->_modelLongestStreak = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteModelReadingDay"];
    remoteModelReadingDay = v5->_remoteModelReadingDay;
    v5->_remoteModelReadingDay = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteModelLongestStreak"];
    remoteModelLongestStreak = v5->_remoteModelLongestStreak;
    v5->_remoteModelLongestStreak = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BDSReadingHistoryModelSnapshotInfo loaded](self forKey:{"loaded"), @"loaded"}];
  [v4 encodeInteger:-[BDSReadingHistoryModelSnapshotInfo lastSource](self forKey:{"lastSource"), @"lastSource"}];
  v5 = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
  [v4 encodeObject:v5 forKey:@"modelReadingDay"];

  v6 = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
  [v4 encodeObject:v6 forKey:@"modelLongestStreak"];

  v7 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
  [v4 encodeObject:v7 forKey:@"remoteModelReadingDay"];

  v8 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
  [v4 encodeObject:v8 forKey:@"remoteModelLongestStreak"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSReadingHistoryModelSnapshotInfo);
  if (v4)
  {
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setLoaded:[(BDSReadingHistoryModelSnapshotInfo *)self loaded]];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setLastSource:[(BDSReadingHistoryModelSnapshotInfo *)self lastSource]];
    v5 = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setModelReadingDay:v5];

    v6 = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setModelLongestStreak:v6];

    v7 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setRemoteModelReadingDay:v7];

    v8 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
    [(BDSReadingHistoryModelSnapshotInfo *)v4 setRemoteModelLongestStreak:v8];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSReadingHistoryModelSnapshotInfo *)self loaded];
  v5 = [(BDSReadingHistoryModelSnapshotInfo *)self lastSource];
  v6 = [(BDSReadingHistoryModelSnapshotInfo *)self modelReadingDay];
  v7 = [(BDSReadingHistoryModelSnapshotInfo *)self modelLongestStreak];
  v8 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelReadingDay];
  v9 = [(BDSReadingHistoryModelSnapshotInfo *)self remoteModelLongestStreak];
  v10 = [NSString stringWithFormat:@"<%@: %p loaded:%ld, lastSource:%ld, modelReadingDay:%@, modelLongestStreak:%@, remoteModelReadingDay:%@, remoteModelLongestStreak:%@>", v3, self, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end