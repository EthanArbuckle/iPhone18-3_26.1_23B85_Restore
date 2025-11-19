@interface MAAutoAssetInfoInstance
- (MAAutoAssetInfoInstance)initWithCoder:(id)a3;
- (id)description;
- (id)initForClientName:(id)a3 withProcessName:(id)a4 withProcessID:(int64_t)a5 usingAssetSelector:(id)a6 associatingFrameworkUUID:(id)a7;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetInfoInstance

- (id)initForClientName:(id)a3 withProcessName:(id)a4 withProcessID:(int64_t)a5 usingAssetSelector:(id)a6 associatingFrameworkUUID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = MAAutoAssetInfoInstance;
  v17 = [(MAAutoAssetInfoInstance *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_autoAssetClientName, a3);
    objc_storeStrong(&v18->_clientProcessName, a4);
    v18->_clientProcessID = a5;
    objc_storeStrong(&v18->_clientAssetSelector, a6);
    objc_storeStrong(&v18->_frameworkInstanceUUID, a7);
  }

  return v18;
}

- (MAAutoAssetInfoInstance)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAAutoAssetInfoInstance;
  v5 = [(MAAutoAssetInfoInstance *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetClientName"];
    autoAssetClientName = v5->_autoAssetClientName;
    v5->_autoAssetClientName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v8;

    v5->_clientProcessID = [v4 decodeIntegerForKey:@"clientProcessID"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSelector"];
    clientAssetSelector = v5->_clientAssetSelector;
    v5->_clientAssetSelector = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetInfoInstance *)self autoAssetClientName];
  [v4 encodeObject:v5 forKey:@"autoAssetClientName"];

  v6 = [(MAAutoAssetInfoInstance *)self clientProcessName];
  [v4 encodeObject:v6 forKey:@"clientProcessName"];

  [v4 encodeInteger:-[MAAutoAssetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  v7 = [(MAAutoAssetInfoInstance *)self clientAssetSelector];
  [v4 encodeObject:v7 forKey:@"clientAssetSelector"];

  v8 = [(MAAutoAssetInfoInstance *)self frameworkInstanceUUID];
  [v4 encodeObject:v8 forKey:@"frameworkInstanceUUID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetInfoInstance *)self summary];
  v5 = [(MAAutoAssetInfoInstance *)self frameworkInstanceUUID];
  v6 = [v3 stringWithFormat:@"%@|%@", v4, v5];

  return v6;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetInfoInstance *)self autoAssetClientName];
  v5 = [(MAAutoAssetInfoInstance *)self clientAssetSelector];
  v6 = [v5 summary];
  v7 = [(MAAutoAssetInfoInstance *)self clientProcessName];
  v8 = [v3 stringWithFormat:@"%@(%@)%@:%ld", v4, v6, v7, -[MAAutoAssetInfoInstance clientProcessID](self, "clientProcessID")];

  return v8;
}

@end