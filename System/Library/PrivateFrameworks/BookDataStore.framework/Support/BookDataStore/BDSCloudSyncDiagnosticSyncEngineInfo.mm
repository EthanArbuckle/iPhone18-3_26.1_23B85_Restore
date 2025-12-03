@interface BDSCloudSyncDiagnosticSyncEngineInfo
- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithCoder:(id)coder;
- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithEstablishedSalt:(BOOL)salt;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCloudSyncDiagnosticSyncEngineInfo

- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithEstablishedSalt:(BOOL)salt
{
  v5.receiver = self;
  v5.super_class = BDSCloudSyncDiagnosticSyncEngineInfo;
  result = [(BDSCloudSyncDiagnosticSyncEngineInfo *)&v5 init];
  if (result)
  {
    result->_establishedSalt = salt;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(equalCopy) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(equalCopy) = 0;
    if (self && v4)
    {
      establishedSalt = [(BDSCloudSyncDiagnosticSyncEngineInfo *)self establishedSalt];
      LODWORD(equalCopy) = establishedSalt ^ [v4 establishedSalt] ^ 1;
    }
  }

  return equalCopy;
}

- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCloudSyncDiagnosticSyncEngineInfo *)self init];
  if (v5)
  {
    v5->_establishedSalt = [coderCopy decodeBoolForKey:@"establishedSalt"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticSyncEngineInfo establishedSalt](self forKey:{"establishedSalt"), @"establishedSalt"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticSyncEngineInfo);
  if (v4)
  {
    [(BDSCloudSyncDiagnosticSyncEngineInfo *)v4 setEstablishedSalt:[(BDSCloudSyncDiagnosticSyncEngineInfo *)self establishedSalt]];
  }

  return v4;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticSyncEngineInfo *)self establishedSalt]];
  [v3 setObject:v4 forKeyedSubscript:@"establishedSalt"];

  return v3;
}

@end