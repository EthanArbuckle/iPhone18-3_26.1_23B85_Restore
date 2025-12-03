@interface MAAutoAssetLockReason
- (MAAutoAssetLockReason)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForClientName:(id)name forLockReason:(id)reason;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetLockReason

- (id)initForClientName:(id)name forLockReason:(id)reason
{
  nameCopy = name;
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = MAAutoAssetLockReason;
  v9 = [(MAAutoAssetLockReason *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_autoAssetClientName, name);
    objc_storeStrong(p_isa + 2, reason);
  }

  return p_isa;
}

- (MAAutoAssetLockReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MAAutoAssetLockReason;
  v5 = [(MAAutoAssetLockReason *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetClientName"];
    autoAssetClientName = v5->_autoAssetClientName;
    v5->_autoAssetClientName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockReason"];
    lockReason = v5->_lockReason;
    v5->_lockReason = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  autoAssetClientName = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [coderCopy encodeObject:autoAssetClientName forKey:@"autoAssetClientName"];

  lockReason = [(MAAutoAssetLockReason *)self lockReason];
  [coderCopy encodeObject:lockReason forKey:@"lockReason"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  autoAssetClientName = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [v4 setAutoAssetClientName:autoAssetClientName];

  lockReason = [(MAAutoAssetLockReason *)self lockReason];
  [v4 setLockReason:lockReason];

  return v4;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  autoAssetClientName = [(MAAutoAssetLockReason *)self autoAssetClientName];
  lockReason = [(MAAutoAssetLockReason *)self lockReason];
  v6 = [v3 stringWithFormat:@"client:%@|reason:%@", autoAssetClientName, lockReason];

  return v6;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  autoAssetClientName = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [v3 setSafeObject:autoAssetClientName forKey:@"autoAssetClientName"];

  lockReason = [(MAAutoAssetLockReason *)self lockReason];
  [v3 setSafeObject:lockReason forKey:@"lockReason"];

  return v3;
}

@end