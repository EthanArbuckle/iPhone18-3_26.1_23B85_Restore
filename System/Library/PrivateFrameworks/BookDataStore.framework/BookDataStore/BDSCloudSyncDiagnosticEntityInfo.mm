@interface BDSCloudSyncDiagnosticEntityInfo
- (BDSCloudSyncDiagnosticEntityInfo)initWithCoder:(id)coder;
- (BDSCloudSyncDiagnosticEntityInfo)initWithName:(id)name enabledSync:(BOOL)sync dirtyCloudDataInfos:(id)infos;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCloudSyncDiagnosticEntityInfo

- (BDSCloudSyncDiagnosticEntityInfo)initWithName:(id)name enabledSync:(BOOL)sync dirtyCloudDataInfos:(id)infos
{
  nameCopy = name;
  infosCopy = infos;
  v14.receiver = self;
  v14.super_class = BDSCloudSyncDiagnosticEntityInfo;
  v11 = [(BDSCloudSyncDiagnosticEntityInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_enabledSync = sync;
    objc_storeStrong(&v12->_dirtyCloudDataInfos, infos);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_15;
    }

    name = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
    name2 = [v5 name];
    v9 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
      name4 = [v5 name];
      v12 = [name3 isEqual:name4];

      if (!v12)
      {
LABEL_10:
        v6 = 0;
LABEL_15:

        return v6;
      }
    }

    enabledSync = [(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync];
    if (enabledSync == [v5 enabledSync])
    {
      dirtyCloudDataInfos = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
      dirtyCloudDataInfos2 = [v5 dirtyCloudDataInfos];
      if (dirtyCloudDataInfos == dirtyCloudDataInfos2)
      {
        v6 = 1;
      }

      else
      {
        dirtyCloudDataInfos3 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
        dirtyCloudDataInfos4 = [v5 dirtyCloudDataInfos];
        v6 = [dirtyCloudDataInfos3 isEqualToArray:dirtyCloudDataInfos4];
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 1;
}

- (BDSCloudSyncDiagnosticEntityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCloudSyncDiagnosticEntityInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_enabledSync = [coderCopy decodeBoolForKey:@"enabledSync"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"dirtyCloudDataInfos"];
    dirtyCloudDataInfos = v5->_dirtyCloudDataInfos;
    v5->_dirtyCloudDataInfos = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeBool:-[BDSCloudSyncDiagnosticEntityInfo enabledSync](self forKey:{"enabledSync"), @"enabledSync"}];
  dirtyCloudDataInfos = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  [coderCopy encodeObject:dirtyCloudDataInfos forKey:@"dirtyCloudDataInfos"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticEntityInfo);
  if (v4)
  {
    name = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
    v6 = [name copy];
    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setName:v6];

    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setEnabledSync:[(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync]];
    dirtyCloudDataInfos = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
    v8 = [dirtyCloudDataInfos copy];
    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setDirtyCloudDataInfos:v8];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  enabledSync = [(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync];
  dirtyCloudDataInfos = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  v8 = [dirtyCloudDataInfos count];
  dirtyCloudDataInfos2 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  v10 = [v3 stringWithFormat:@"<%@: name:%@, enabledSync:%d, dirtyInfos(count=%lu):%@>", v4, name, enabledSync, v8, dirtyCloudDataInfos2];

  return v10;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  name = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSCloudSyncDiagnosticEntityInfo enabledSync](self, "enabledSync")}];
  [v3 setObject:v5 forKeyedSubscript:@"enabledSync"];

  dirtyCloudDataInfos = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];

  if (dirtyCloudDataInfos)
  {
    dirtyCloudDataInfos2 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
    v8 = [dirtyCloudDataInfos2 valueForKey:@"stateForLog"];
    [v3 setObject:v8 forKeyedSubscript:@"dirtyCloudDataInfos"];
  }

  return v3;
}

@end