@interface MAAutoAssetInfoInstance
- (MAAutoAssetInfoInstance)initWithCoder:(id)coder;
- (id)description;
- (id)initForClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d usingAssetSelector:(id)selector associatingFrameworkUUID:(id)iD;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoInstance

- (id)initForClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d usingAssetSelector:(id)selector associatingFrameworkUUID:(id)iD
{
  nameCopy = name;
  processNameCopy = processName;
  selectorCopy = selector;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = MAAutoAssetInfoInstance;
  v17 = [(MAAutoAssetInfoInstance *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_autoAssetClientName, name);
    objc_storeStrong(&v18->_clientProcessName, processName);
    v18->_clientProcessID = d;
    objc_storeStrong(&v18->_clientAssetSelector, selector);
    objc_storeStrong(&v18->_frameworkInstanceUUID, iD);
  }

  return v18;
}

- (MAAutoAssetInfoInstance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAAutoAssetInfoInstance;
  v5 = [(MAAutoAssetInfoInstance *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetClientName"];
    autoAssetClientName = v5->_autoAssetClientName;
    v5->_autoAssetClientName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v8;

    v5->_clientProcessID = [coderCopy decodeIntegerForKey:@"clientProcessID"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSelector"];
    clientAssetSelector = v5->_clientAssetSelector;
    v5->_clientAssetSelector = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  autoAssetClientName = [(MAAutoAssetInfoInstance *)self autoAssetClientName];
  [coderCopy encodeObject:autoAssetClientName forKey:@"autoAssetClientName"];

  clientProcessName = [(MAAutoAssetInfoInstance *)self clientProcessName];
  [coderCopy encodeObject:clientProcessName forKey:@"clientProcessName"];

  [coderCopy encodeInteger:-[MAAutoAssetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  clientAssetSelector = [(MAAutoAssetInfoInstance *)self clientAssetSelector];
  [coderCopy encodeObject:clientAssetSelector forKey:@"clientAssetSelector"];

  frameworkInstanceUUID = [(MAAutoAssetInfoInstance *)self frameworkInstanceUUID];
  [coderCopy encodeObject:frameworkInstanceUUID forKey:@"frameworkInstanceUUID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAssetInfoInstance *)self summary];
  frameworkInstanceUUID = [(MAAutoAssetInfoInstance *)self frameworkInstanceUUID];
  v6 = [v3 stringWithFormat:@"%@|%@", summary, frameworkInstanceUUID];

  return v6;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  autoAssetClientName = [(MAAutoAssetInfoInstance *)self autoAssetClientName];
  clientAssetSelector = [(MAAutoAssetInfoInstance *)self clientAssetSelector];
  summary = [clientAssetSelector summary];
  clientProcessName = [(MAAutoAssetInfoInstance *)self clientProcessName];
  v8 = [v3 stringWithFormat:@"%@(%@)%@:%ld", autoAssetClientName, summary, clientProcessName, -[MAAutoAssetInfoInstance clientProcessID](self, "clientProcessID")];

  return v8;
}

@end