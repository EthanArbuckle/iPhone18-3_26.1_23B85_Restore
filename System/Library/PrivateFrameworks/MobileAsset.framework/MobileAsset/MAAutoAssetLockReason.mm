@interface MAAutoAssetLockReason
- (MAAutoAssetLockReason)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForClientName:(id)a3 forLockReason:(id)a4;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetLockReason

- (id)initForClientName:(id)a3 forLockReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MAAutoAssetLockReason;
  v9 = [(MAAutoAssetLockReason *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_autoAssetClientName, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (MAAutoAssetLockReason)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MAAutoAssetLockReason;
  v5 = [(MAAutoAssetLockReason *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetClientName"];
    autoAssetClientName = v5->_autoAssetClientName;
    v5->_autoAssetClientName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockReason"];
    lockReason = v5->_lockReason;
    v5->_lockReason = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [v4 encodeObject:v5 forKey:@"autoAssetClientName"];

  v6 = [(MAAutoAssetLockReason *)self lockReason];
  [v4 encodeObject:v6 forKey:@"lockReason"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [v4 setAutoAssetClientName:v5];

  v6 = [(MAAutoAssetLockReason *)self lockReason];
  [v4 setLockReason:v6];

  return v4;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetLockReason *)self autoAssetClientName];
  v5 = [(MAAutoAssetLockReason *)self lockReason];
  v6 = [v3 stringWithFormat:@"client:%@|reason:%@", v4, v5];

  return v6;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MAAutoAssetLockReason *)self autoAssetClientName];
  [v3 setSafeObject:v4 forKey:@"autoAssetClientName"];

  v5 = [(MAAutoAssetLockReason *)self lockReason];
  [v3 setSafeObject:v5 forKey:@"lockReason"];

  return v3;
}

@end