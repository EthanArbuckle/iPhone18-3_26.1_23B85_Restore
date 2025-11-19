@interface BDSCloudSyncDiagnosticDatabaseInfo
- (BDSCloudSyncDiagnosticDatabaseInfo)initWithAttached:(BOOL)a3 establishedSalt:(BOOL)a4 container:(id)a5;
- (BDSCloudSyncDiagnosticDatabaseInfo)initWithCoder:(id)a3;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticDatabaseInfo

- (BDSCloudSyncDiagnosticDatabaseInfo)initWithAttached:(BOOL)a3 establishedSalt:(BOOL)a4 container:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BDSCloudSyncDiagnosticDatabaseInfo;
  v10 = [(BDSCloudSyncDiagnosticDatabaseInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_attached = a3;
    v10->_establishedSalt = a4;
    objc_storeStrong(&v10->_container, a5);
  }

  return v11;
}

- (BDSCloudSyncDiagnosticDatabaseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self init];
  if (v5)
  {
    v5->_attached = [v4 decodeBoolForKey:@"attached"];
    v5->_establishedSalt = [v4 decodeBoolForKey:@"establishedSalt"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[BDSCloudSyncDiagnosticDatabaseInfo attached](self forKey:{"attached"), @"attached"}];
  [v4 encodeBool:-[BDSCloudSyncDiagnosticDatabaseInfo establishedSalt](self forKey:{"establishedSalt"), @"establishedSalt"}];
  v5 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  [v4 encodeObject:v5 forKey:@"container"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticDatabaseInfo);
  if (v4)
  {
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setAttached:[(BDSCloudSyncDiagnosticDatabaseInfo *)self attached]];
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setEstablishedSalt:[(BDSCloudSyncDiagnosticDatabaseInfo *)self establishedSalt]];
    v5 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setContainer:v5];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self attached];
  v5 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self establishedSalt];
  v6 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  v7 = [NSString stringWithFormat:@"<%@: attached:%d, establishedSalt:%d, container:%@>", v3, v4, v5, v6];

  return v7;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticDatabaseInfo *)self attached]];
  [v3 setObject:v4 forKeyedSubscript:@"attached"];

  v5 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticDatabaseInfo *)self establishedSalt]];
  [v3 setObject:v5 forKeyedSubscript:@"establishedSalt"];

  v6 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"<nil>";
  }

  [v3 setObject:v8 forKeyedSubscript:@"container"];

  return v3;
}

@end