@interface BDSCloudSyncDiagnosticSyncEngineInfo
- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithCoder:(id)a3;
- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithEstablishedSalt:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticSyncEngineInfo

- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithEstablishedSalt:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BDSCloudSyncDiagnosticSyncEngineInfo;
  result = [(BDSCloudSyncDiagnosticSyncEngineInfo *)&v5 init];
  if (result)
  {
    result->_establishedSalt = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = a3;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(v5) = 0;
    if (self && v4)
    {
      v6 = [(BDSCloudSyncDiagnosticSyncEngineInfo *)self establishedSalt];
      LODWORD(v5) = v6 ^ [v4 establishedSalt] ^ 1;
    }
  }

  return v5;
}

- (BDSCloudSyncDiagnosticSyncEngineInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticSyncEngineInfo *)self init];
  if (v5)
  {
    v5->_establishedSalt = [v4 decodeBoolForKey:@"establishedSalt"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[BDSCloudSyncDiagnosticSyncEngineInfo establishedSalt](self forKey:{"establishedSalt"), @"establishedSalt"}];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSCloudSyncDiagnosticSyncEngineInfo establishedSalt](self, "establishedSalt")}];
  [v3 setObject:v4 forKeyedSubscript:@"establishedSalt"];

  return v3;
}

@end