@interface BDSCloudSyncDiagnosticInfo
- (BDSCloudSyncDiagnosticInfo)initWithCoder:(id)a3;
- (BDSCloudSyncDiagnosticInfo)initWithEnabledSync:(BOOL)a3 accountStatus:(int64_t)a4 container:(id)a5 gettingAccountInfo:(BOOL)a6 privateDatabaseInfo:(id)a7 privateDatabaseSyncEngineInfo:(id)a8 entityInfos:(id)a9;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticInfo

- (BDSCloudSyncDiagnosticInfo)initWithEnabledSync:(BOOL)a3 accountStatus:(int64_t)a4 container:(id)a5 gettingAccountInfo:(BOOL)a6 privateDatabaseInfo:(id)a7 privateDatabaseSyncEngineInfo:(id)a8 entityInfos:(id)a9
{
  v22 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = BDSCloudSyncDiagnosticInfo;
  v18 = [(BDSCloudSyncDiagnosticInfo *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_enabledSync = a3;
    v18->_accountStatus = a4;
    objc_storeStrong(&v18->_container, a5);
    v19->_gettingAccountInfo = a6;
    objc_storeStrong(&v19->_privateDatabaseInfo, a7);
    objc_storeStrong(&v19->_privateDatabaseSyncEngineInfo, a8);
    objc_storeStrong(&v19->_entityInfos, a9);
  }

  return v19;
}

- (BDSCloudSyncDiagnosticInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticInfo *)self init];
  if (v5)
  {
    v5->_enabledSync = [v4 decodeBoolForKey:@"enabledSync"];
    v5->_accountStatus = [v4 decodeIntegerForKey:@"accountStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;

    v5->_gettingAccountInfo = [v4 decodeBoolForKey:@"gettingAccountInfo"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateDatabaseInfo"];
    privateDatabaseInfo = v5->_privateDatabaseInfo;
    v5->_privateDatabaseInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateDatabaseSyncEngineInfo"];
    privateDatabaseSyncEngineInfo = v5->_privateDatabaseSyncEngineInfo;
    v5->_privateDatabaseSyncEngineInfo = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"entityInfos"];
    entityInfos = v5->_entityInfos;
    v5->_entityInfos = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[BDSCloudSyncDiagnosticInfo enabledSync](self forKey:{"enabledSync"), @"enabledSync"}];
  [v4 encodeInteger:-[BDSCloudSyncDiagnosticInfo accountStatus](self forKey:{"accountStatus"), @"accountStatus"}];
  v5 = [(BDSCloudSyncDiagnosticInfo *)self container];
  [v4 encodeObject:v5 forKey:@"container"];

  [v4 encodeBool:-[BDSCloudSyncDiagnosticInfo gettingAccountInfo](self forKey:{"gettingAccountInfo"), @"gettingAccountInfo"}];
  v6 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  [v4 encodeObject:v6 forKey:@"privateDatabaseInfo"];

  v7 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  [v4 encodeObject:v7 forKey:@"privateDatabaseSyncEngineInfo"];

  v8 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
  [v4 encodeObject:v8 forKey:@"entityInfos"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticInfo);
  if (v4)
  {
    [(BDSCloudSyncDiagnosticInfo *)v4 setEnabledSync:[(BDSCloudSyncDiagnosticInfo *)self enabledSync]];
    [(BDSCloudSyncDiagnosticInfo *)v4 setAccountStatus:[(BDSCloudSyncDiagnosticInfo *)self accountStatus]];
    v5 = [(BDSCloudSyncDiagnosticInfo *)self container];
    [(BDSCloudSyncDiagnosticInfo *)v4 setContainer:v5];

    [(BDSCloudSyncDiagnosticInfo *)v4 setGettingAccountInfo:[(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo]];
    v6 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
    v7 = [v6 copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setPrivateDatabaseInfo:v7];

    v8 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
    v9 = [v8 copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setPrivateDatabaseSyncEngineInfo:v9];

    v10 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
    v11 = [v10 copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setEntityInfos:v11];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSCloudSyncDiagnosticInfo *)self enabledSync];
  v5 = [(BDSCloudSyncDiagnosticInfo *)self accountStatus];
  v6 = [(BDSCloudSyncDiagnosticInfo *)self container];
  v7 = [(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo];
  v8 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  v9 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  v10 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
  v11 = [NSString stringWithFormat:@"<%@: enabledSync:%d, accountStatus:%ld, container:%@, gettingAccountInfo:%d, privateDatabase:%@, privateDatabaseSyncEngine:%@, entities:%@>", v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticInfo *)self enabledSync]];
  [v3 setObject:v4 forKeyedSubscript:@"enabledSync"];

  v5 = [NSNumber numberWithInteger:[(BDSCloudSyncDiagnosticInfo *)self accountStatus]];
  [v3 setObject:v5 forKeyedSubscript:@"accountStatus"];

  v6 = [(BDSCloudSyncDiagnosticInfo *)self container];
  [v3 setObject:v6 forKeyedSubscript:@"container"];

  v7 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo]];
  [v3 setObject:v7 forKeyedSubscript:@"gettingAccountInfo"];

  v8 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  v9 = [v8 stateForLog];
  [v3 setObject:v9 forKeyedSubscript:@"privateDatabaseInfo"];

  v10 = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  v11 = [v10 stateForLog];
  [v3 setObject:v11 forKeyedSubscript:@"privateDatabaseSyncEngineInfo"];

  v12 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];

  if (v12)
  {
    v13 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
    v14 = [v13 valueForKey:@"stateForLog"];
    [v3 setObject:v14 forKeyedSubscript:@"entityInfos"];
  }

  return v3;
}

@end