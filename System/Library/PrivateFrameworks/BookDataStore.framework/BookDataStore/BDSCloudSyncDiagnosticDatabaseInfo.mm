@interface BDSCloudSyncDiagnosticDatabaseInfo
- (BDSCloudSyncDiagnosticDatabaseInfo)initWithAttached:(BOOL)attached establishedSalt:(BOOL)salt container:(id)container;
- (BDSCloudSyncDiagnosticDatabaseInfo)initWithCoder:(id)coder;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCloudSyncDiagnosticDatabaseInfo

- (BDSCloudSyncDiagnosticDatabaseInfo)initWithAttached:(BOOL)attached establishedSalt:(BOOL)salt container:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = BDSCloudSyncDiagnosticDatabaseInfo;
  v10 = [(BDSCloudSyncDiagnosticDatabaseInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_attached = attached;
    v10->_establishedSalt = salt;
    objc_storeStrong(&v10->_container, container);
  }

  return v11;
}

- (BDSCloudSyncDiagnosticDatabaseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCloudSyncDiagnosticDatabaseInfo *)self init];
  if (v5)
  {
    v5->_attached = [coderCopy decodeBoolForKey:@"attached"];
    v5->_establishedSalt = [coderCopy decodeBoolForKey:@"establishedSalt"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticDatabaseInfo attached](self forKey:{"attached"), @"attached"}];
  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticDatabaseInfo establishedSalt](self forKey:{"establishedSalt"), @"establishedSalt"}];
  container = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  [coderCopy encodeObject:container forKey:@"container"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticDatabaseInfo);
  if (v4)
  {
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setAttached:[(BDSCloudSyncDiagnosticDatabaseInfo *)self attached]];
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setEstablishedSalt:[(BDSCloudSyncDiagnosticDatabaseInfo *)self establishedSalt]];
    container = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
    [(BDSCloudSyncDiagnosticDatabaseInfo *)v4 setContainer:container];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  attached = [(BDSCloudSyncDiagnosticDatabaseInfo *)self attached];
  establishedSalt = [(BDSCloudSyncDiagnosticDatabaseInfo *)self establishedSalt];
  container = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  v8 = [v3 stringWithFormat:@"<%@: attached:%d, establishedSalt:%d, container:%@>", v4, attached, establishedSalt, container];

  return v8;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSCloudSyncDiagnosticDatabaseInfo attached](self, "attached")}];
  [v3 setObject:v4 forKeyedSubscript:@"attached"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSCloudSyncDiagnosticDatabaseInfo establishedSalt](self, "establishedSalt")}];
  [v3 setObject:v5 forKeyedSubscript:@"establishedSalt"];

  container = [(BDSCloudSyncDiagnosticDatabaseInfo *)self container];
  v7 = container;
  if (container)
  {
    v8 = container;
  }

  else
  {
    v8 = @"<nil>";
  }

  [v3 setObject:v8 forKeyedSubscript:@"container"];

  return v3;
}

@end