@interface BDSCloudSyncDiagnosticInfo
- (BDSCloudSyncDiagnosticInfo)initWithCoder:(id)coder;
- (BDSCloudSyncDiagnosticInfo)initWithEnabledSync:(BOOL)sync accountStatus:(int64_t)status container:(id)container gettingAccountInfo:(BOOL)info privateDatabaseInfo:(id)databaseInfo privateDatabaseSyncEngineInfo:(id)engineInfo entityInfos:(id)infos;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCloudSyncDiagnosticInfo

- (BDSCloudSyncDiagnosticInfo)initWithEnabledSync:(BOOL)sync accountStatus:(int64_t)status container:(id)container gettingAccountInfo:(BOOL)info privateDatabaseInfo:(id)databaseInfo privateDatabaseSyncEngineInfo:(id)engineInfo entityInfos:(id)infos
{
  containerCopy = container;
  databaseInfoCopy = databaseInfo;
  engineInfoCopy = engineInfo;
  infosCopy = infos;
  v23.receiver = self;
  v23.super_class = BDSCloudSyncDiagnosticInfo;
  v18 = [(BDSCloudSyncDiagnosticInfo *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_enabledSync = sync;
    v18->_accountStatus = status;
    objc_storeStrong(&v18->_container, container);
    v19->_gettingAccountInfo = info;
    objc_storeStrong(&v19->_privateDatabaseInfo, databaseInfo);
    objc_storeStrong(&v19->_privateDatabaseSyncEngineInfo, engineInfo);
    objc_storeStrong(&v19->_entityInfos, infos);
  }

  return v19;
}

- (BDSCloudSyncDiagnosticInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCloudSyncDiagnosticInfo *)self init];
  if (v5)
  {
    v5->_enabledSync = [coderCopy decodeBoolForKey:@"enabledSync"];
    v5->_accountStatus = [coderCopy decodeIntegerForKey:@"accountStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;

    v5->_gettingAccountInfo = [coderCopy decodeBoolForKey:@"gettingAccountInfo"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateDatabaseInfo"];
    privateDatabaseInfo = v5->_privateDatabaseInfo;
    v5->_privateDatabaseInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateDatabaseSyncEngineInfo"];
    privateDatabaseSyncEngineInfo = v5->_privateDatabaseSyncEngineInfo;
    v5->_privateDatabaseSyncEngineInfo = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"entityInfos"];
    entityInfos = v5->_entityInfos;
    v5->_entityInfos = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticInfo enabledSync](self forKey:{"enabledSync"), @"enabledSync"}];
  [coderCopy encodeInteger:-[BDSCloudSyncDiagnosticInfo accountStatus](self forKey:{"accountStatus"), @"accountStatus"}];
  container = [(BDSCloudSyncDiagnosticInfo *)self container];
  [coderCopy encodeObject:container forKey:@"container"];

  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticInfo gettingAccountInfo](self forKey:{"gettingAccountInfo"), @"gettingAccountInfo"}];
  privateDatabaseInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  [coderCopy encodeObject:privateDatabaseInfo forKey:@"privateDatabaseInfo"];

  privateDatabaseSyncEngineInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  [coderCopy encodeObject:privateDatabaseSyncEngineInfo forKey:@"privateDatabaseSyncEngineInfo"];

  entityInfos = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
  [coderCopy encodeObject:entityInfos forKey:@"entityInfos"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticInfo);
  if (v4)
  {
    [(BDSCloudSyncDiagnosticInfo *)v4 setEnabledSync:[(BDSCloudSyncDiagnosticInfo *)self enabledSync]];
    [(BDSCloudSyncDiagnosticInfo *)v4 setAccountStatus:[(BDSCloudSyncDiagnosticInfo *)self accountStatus]];
    container = [(BDSCloudSyncDiagnosticInfo *)self container];
    [(BDSCloudSyncDiagnosticInfo *)v4 setContainer:container];

    [(BDSCloudSyncDiagnosticInfo *)v4 setGettingAccountInfo:[(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo]];
    privateDatabaseInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
    v7 = [privateDatabaseInfo copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setPrivateDatabaseInfo:v7];

    privateDatabaseSyncEngineInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
    v9 = [privateDatabaseSyncEngineInfo copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setPrivateDatabaseSyncEngineInfo:v9];

    entityInfos = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
    v11 = [entityInfos copy];
    [(BDSCloudSyncDiagnosticInfo *)v4 setEntityInfos:v11];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  enabledSync = [(BDSCloudSyncDiagnosticInfo *)self enabledSync];
  accountStatus = [(BDSCloudSyncDiagnosticInfo *)self accountStatus];
  container = [(BDSCloudSyncDiagnosticInfo *)self container];
  gettingAccountInfo = [(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo];
  privateDatabaseInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  privateDatabaseSyncEngineInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  entityInfos = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
  v11 = [NSString stringWithFormat:@"<%@: enabledSync:%d, accountStatus:%ld, container:%@, gettingAccountInfo:%d, privateDatabase:%@, privateDatabaseSyncEngine:%@, entities:%@>", v3, enabledSync, accountStatus, container, gettingAccountInfo, privateDatabaseInfo, privateDatabaseSyncEngineInfo, entityInfos];

  return v11;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticInfo *)self enabledSync]];
  [v3 setObject:v4 forKeyedSubscript:@"enabledSync"];

  v5 = [NSNumber numberWithInteger:[(BDSCloudSyncDiagnosticInfo *)self accountStatus]];
  [v3 setObject:v5 forKeyedSubscript:@"accountStatus"];

  container = [(BDSCloudSyncDiagnosticInfo *)self container];
  [v3 setObject:container forKeyedSubscript:@"container"];

  v7 = [NSNumber numberWithBool:[(BDSCloudSyncDiagnosticInfo *)self gettingAccountInfo]];
  [v3 setObject:v7 forKeyedSubscript:@"gettingAccountInfo"];

  privateDatabaseInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseInfo];
  stateForLog = [privateDatabaseInfo stateForLog];
  [v3 setObject:stateForLog forKeyedSubscript:@"privateDatabaseInfo"];

  privateDatabaseSyncEngineInfo = [(BDSCloudSyncDiagnosticInfo *)self privateDatabaseSyncEngineInfo];
  stateForLog2 = [privateDatabaseSyncEngineInfo stateForLog];
  [v3 setObject:stateForLog2 forKeyedSubscript:@"privateDatabaseSyncEngineInfo"];

  entityInfos = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];

  if (entityInfos)
  {
    entityInfos2 = [(BDSCloudSyncDiagnosticInfo *)self entityInfos];
    v14 = [entityInfos2 valueForKey:@"stateForLog"];
    [v3 setObject:v14 forKeyedSubscript:@"entityInfos"];
  }

  return v3;
}

@end