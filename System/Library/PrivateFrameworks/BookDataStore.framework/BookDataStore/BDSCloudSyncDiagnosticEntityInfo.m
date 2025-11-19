@interface BDSCloudSyncDiagnosticEntityInfo
- (BDSCloudSyncDiagnosticEntityInfo)initWithCoder:(id)a3;
- (BDSCloudSyncDiagnosticEntityInfo)initWithName:(id)a3 enabledSync:(BOOL)a4 dirtyCloudDataInfos:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticEntityInfo

- (BDSCloudSyncDiagnosticEntityInfo)initWithName:(id)a3 enabledSync:(BOOL)a4 dirtyCloudDataInfos:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BDSCloudSyncDiagnosticEntityInfo;
  v11 = [(BDSCloudSyncDiagnosticEntityInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_enabledSync = a4;
    objc_storeStrong(&v12->_dirtyCloudDataInfos, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_15;
    }

    v7 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
    v8 = [v5 name];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
      v11 = [v5 name];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
LABEL_10:
        v6 = 0;
LABEL_15:

        return v6;
      }
    }

    v13 = [(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync];
    if (v13 == [v5 enabledSync])
    {
      v14 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
      v15 = [v5 dirtyCloudDataInfos];
      if (v14 == v15)
      {
        v6 = 1;
      }

      else
      {
        v16 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
        v17 = [v5 dirtyCloudDataInfos];
        v6 = [v16 isEqualToArray:v17];
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 1;
}

- (BDSCloudSyncDiagnosticEntityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticEntityInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_enabledSync = [v4 decodeBoolForKey:@"enabledSync"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"dirtyCloudDataInfos"];
    dirtyCloudDataInfos = v5->_dirtyCloudDataInfos;
    v5->_dirtyCloudDataInfos = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  [v4 encodeBool:-[BDSCloudSyncDiagnosticEntityInfo enabledSync](self forKey:{"enabledSync"), @"enabledSync"}];
  v6 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  [v4 encodeObject:v6 forKey:@"dirtyCloudDataInfos"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticEntityInfo);
  if (v4)
  {
    v5 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
    v6 = [v5 copy];
    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setName:v6];

    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setEnabledSync:[(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync]];
    v7 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
    v8 = [v7 copy];
    [(BDSCloudSyncDiagnosticEntityInfo *)v4 setDirtyCloudDataInfos:v8];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  v6 = [(BDSCloudSyncDiagnosticEntityInfo *)self enabledSync];
  v7 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  v8 = [v7 count];
  v9 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
  v10 = [v3 stringWithFormat:@"<%@: name:%@, enabledSync:%d, dirtyInfos(count=%lu):%@>", v4, v5, v6, v8, v9];

  return v10;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(BDSCloudSyncDiagnosticEntityInfo *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSCloudSyncDiagnosticEntityInfo enabledSync](self, "enabledSync")}];
  [v3 setObject:v5 forKeyedSubscript:@"enabledSync"];

  v6 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];

  if (v6)
  {
    v7 = [(BDSCloudSyncDiagnosticEntityInfo *)self dirtyCloudDataInfos];
    v8 = [v7 valueForKey:@"stateForLog"];
    [v3 setObject:v8 forKeyedSubscript:@"dirtyCloudDataInfos"];
  }

  return v3;
}

@end