@interface BCMutableCloudSyncVersions
- (BCMutableCloudSyncVersions)initWithCloudSyncVersions:(id)versions;
- (BCMutableCloudSyncVersions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableCloudSyncVersions

- (BCMutableCloudSyncVersions)initWithCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  v13.receiver = self;
  v13.super_class = BCMutableCloudSyncVersions;
  v5 = [(BCMutableCloudSyncVersions *)&v13 init];
  if (v5)
  {
    dataType = [versionsCopy dataType];
    v7 = [dataType copy];
    dataType = v5->_dataType;
    v5->_dataType = v7;

    v5->_cloudVersion = [versionsCopy cloudVersion];
    v5->_localVersion = [versionsCopy localVersion];
    v5->_syncVersion = [versionsCopy syncVersion];
    historyToken = [versionsCopy historyToken];
    v10 = [historyToken copy];
    historyToken = v5->_historyToken;
    v5->_historyToken = v10;

    v5->_historyTokenOffset = [versionsCopy historyTokenOffset];
  }

  return v5;
}

- (id)description
{
  dataType = [(BCMutableCloudSyncVersions *)self dataType];
  cloudVersion = [(BCMutableCloudSyncVersions *)self cloudVersion];
  localVersion = [(BCMutableCloudSyncVersions *)self localVersion];
  syncVersion = [(BCMutableCloudSyncVersions *)self syncVersion];
  historyToken = [(BCMutableCloudSyncVersions *)self historyToken];
  v8 = [NSString stringWithFormat:@"dataType: %@, cloudVersion: %lld, localVersion: %lld, syncVersion: %lld historyToken:%@ historyTokenOffset=%lld", dataType, cloudVersion, localVersion, syncVersion, historyToken, [(BCMutableCloudSyncVersions *)self historyTokenOffset]];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataType = [(BCMutableCloudSyncVersions *)self dataType];
  [coderCopy encodeObject:dataType forKey:@"dataType"];

  [coderCopy encodeInt64:-[BCMutableCloudSyncVersions cloudVersion](self forKey:{"cloudVersion"), @"cloudVersion"}];
  [coderCopy encodeInt64:-[BCMutableCloudSyncVersions localVersion](self forKey:{"localVersion"), @"localVersion"}];
  [coderCopy encodeInt64:-[BCMutableCloudSyncVersions syncVersion](self forKey:{"syncVersion"), @"syncVersion"}];
  historyToken = [(BCMutableCloudSyncVersions *)self historyToken];
  [coderCopy encodeObject:historyToken forKey:@"historyToken"];

  [coderCopy encodeInt64:-[BCMutableCloudSyncVersions historyTokenOffset](self forKey:{"historyTokenOffset"), @"historyTokenOffset"}];
}

- (BCMutableCloudSyncVersions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BCMutableCloudSyncVersions;
  v5 = [(BCMutableCloudSyncVersions *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
    [(BCMutableCloudSyncVersions *)v5 setDataType:v6];

    -[BCMutableCloudSyncVersions setCloudVersion:](v5, "setCloudVersion:", [coderCopy decodeInt64ForKey:@"cloudVersion"]);
    -[BCMutableCloudSyncVersions setLocalVersion:](v5, "setLocalVersion:", [coderCopy decodeInt64ForKey:@"localVersion"]);
    -[BCMutableCloudSyncVersions setSyncVersion:](v5, "setSyncVersion:", [coderCopy decodeInt64ForKey:@"syncVersion"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"historyToken"];
    [(BCMutableCloudSyncVersions *)v5 setHistoryToken:v7];

    v5->_historyTokenOffset = [coderCopy decodeInt64ForKey:@"historyTokenOffset"];
  }

  return v5;
}

@end