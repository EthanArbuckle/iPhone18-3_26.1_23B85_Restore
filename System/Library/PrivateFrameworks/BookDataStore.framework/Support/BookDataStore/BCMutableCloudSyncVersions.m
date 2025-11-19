@interface BCMutableCloudSyncVersions
- (BCMutableCloudSyncVersions)initWithCloudSyncVersions:(id)a3;
- (BCMutableCloudSyncVersions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableCloudSyncVersions

- (BCMutableCloudSyncVersions)initWithCloudSyncVersions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCMutableCloudSyncVersions;
  v5 = [(BCMutableCloudSyncVersions *)&v13 init];
  if (v5)
  {
    v6 = [v4 dataType];
    v7 = [v6 copy];
    dataType = v5->_dataType;
    v5->_dataType = v7;

    v5->_cloudVersion = [v4 cloudVersion];
    v5->_localVersion = [v4 localVersion];
    v5->_syncVersion = [v4 syncVersion];
    v9 = [v4 historyToken];
    v10 = [v9 copy];
    historyToken = v5->_historyToken;
    v5->_historyToken = v10;

    v5->_historyTokenOffset = [v4 historyTokenOffset];
  }

  return v5;
}

- (id)description
{
  v3 = [(BCMutableCloudSyncVersions *)self dataType];
  v4 = [(BCMutableCloudSyncVersions *)self cloudVersion];
  v5 = [(BCMutableCloudSyncVersions *)self localVersion];
  v6 = [(BCMutableCloudSyncVersions *)self syncVersion];
  v7 = [(BCMutableCloudSyncVersions *)self historyToken];
  v8 = [NSString stringWithFormat:@"dataType: %@, cloudVersion: %lld, localVersion: %lld, syncVersion: %lld historyToken:%@ historyTokenOffset=%lld", v3, v4, v5, v6, v7, [(BCMutableCloudSyncVersions *)self historyTokenOffset]];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BCMutableCloudSyncVersions *)self dataType];
  [v6 encodeObject:v4 forKey:@"dataType"];

  [v6 encodeInt64:-[BCMutableCloudSyncVersions cloudVersion](self forKey:{"cloudVersion"), @"cloudVersion"}];
  [v6 encodeInt64:-[BCMutableCloudSyncVersions localVersion](self forKey:{"localVersion"), @"localVersion"}];
  [v6 encodeInt64:-[BCMutableCloudSyncVersions syncVersion](self forKey:{"syncVersion"), @"syncVersion"}];
  v5 = [(BCMutableCloudSyncVersions *)self historyToken];
  [v6 encodeObject:v5 forKey:@"historyToken"];

  [v6 encodeInt64:-[BCMutableCloudSyncVersions historyTokenOffset](self forKey:{"historyTokenOffset"), @"historyTokenOffset"}];
}

- (BCMutableCloudSyncVersions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCMutableCloudSyncVersions;
  v5 = [(BCMutableCloudSyncVersions *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
    [(BCMutableCloudSyncVersions *)v5 setDataType:v6];

    -[BCMutableCloudSyncVersions setCloudVersion:](v5, "setCloudVersion:", [v4 decodeInt64ForKey:@"cloudVersion"]);
    -[BCMutableCloudSyncVersions setLocalVersion:](v5, "setLocalVersion:", [v4 decodeInt64ForKey:@"localVersion"]);
    -[BCMutableCloudSyncVersions setSyncVersion:](v5, "setSyncVersion:", [v4 decodeInt64ForKey:@"syncVersion"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"historyToken"];
    [(BCMutableCloudSyncVersions *)v5 setHistoryToken:v7];

    v5->_historyTokenOffset = [v4 decodeInt64ForKey:@"historyTokenOffset"];
  }

  return v5;
}

@end