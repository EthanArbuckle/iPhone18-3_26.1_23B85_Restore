@interface MAAutoAssetInfoDesire
- (MAAutoAssetInfoDesire)initWithCoder:(id)a3;
- (MAAutoAssetInfoDesire)initWithDesiredCategory:(id)a3 forClientAssetPolicy:(id)a4 reasonDesired:(id)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetInfoDesire

- (MAAutoAssetInfoDesire)initWithDesiredCategory:(id)a3 forClientAssetPolicy:(id)a4 reasonDesired:(id)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = MAAutoAssetInfoDesire;
  v18 = [(MAAutoAssetInfoDesire *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_updateCategoryDesiredByClient, a3);
    objc_storeStrong(&v19->_clientAssetPolicy, a4);
    objc_storeStrong(&v19->_desireReason, a5);
    v19->_checkWaitTimeoutSecs = a6;
    v19->_lockWaitTimeoutSecs = a7;
    v19->_downloadProgressDesired = a8;
  }

  return v19;
}

- (MAAutoAssetInfoDesire)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MAAutoAssetInfoDesire;
  v5 = [(MAAutoAssetInfoDesire *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateCategoryDesiredByClient"];
    updateCategoryDesiredByClient = v5->_updateCategoryDesiredByClient;
    v5->_updateCategoryDesiredByClient = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetPolicy"];
    clientAssetPolicy = v5->_clientAssetPolicy;
    v5->_clientAssetPolicy = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v10;

    v5->_checkWaitTimeoutSecs = [v4 decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [v4 decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [v4 decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  [v7 encodeObject:v4 forKey:@"updateCategoryDesiredByClient"];

  v5 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];
  [v7 encodeObject:v5 forKey:@"clientAssetPolicy"];

  v6 = [(MAAutoAssetInfoDesire *)self desireReason];
  [v7 encodeObject:v6 forKey:@"desireReason"];

  [v7 encodeInteger:-[MAAutoAssetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [v7 encodeInteger:-[MAAutoAssetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [v7 encodeBool:-[MAAutoAssetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

- (id)summary
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0C1B388];
  v4 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  if (v4 || ([(MAAutoAssetInfoDesire *)self clientAssetPolicy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v14 = [(MAAutoAssetInfoDesire *)self desireReason];

    if (!v14)
    {
      [v3 appendString:@"byPolicy"];
      goto LABEL_17;
    }
  }

  v5 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  if (v5)
  {
  }

  else
  {
    v6 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];

    if (!v6)
    {
      v13 = [(MAAutoAssetInfoDesire *)self desireReason];
      [v3 appendString:v13];
      goto LABEL_16;
    }
  }

  v7 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];

  if (v7)
  {
    v8 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
    [v3 appendFormat:@"categ:%@", v8];
  }

  v9 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];

  if (v9)
  {
    v10 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];
    v11 = [v10 summary];
    [v3 appendFormat:@"policy:%@", v11];
  }

  v12 = [(MAAutoAssetInfoDesire *)self desireReason];

  if (v12)
  {
    v13 = [(MAAutoAssetInfoDesire *)self desireReason];
    [v3 appendFormat:@"|%@", v13];
LABEL_16:
  }

LABEL_17:
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetInfoDesire checkWaitTimeoutSecs](self, "checkWaitTimeoutSecs")];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetInfoDesire lockWaitTimeoutSecs](self, "lockWaitTimeoutSecs")];
  if ([(MAAutoAssetInfoDesire *)self checkWaitTimeoutSecs])
  {
    if ([(MAAutoAssetInfoDesire *)self checkWaitTimeoutSecs]!= -2)
    {
      goto LABEL_22;
    }

    v17 = @"DEFAULT";
  }

  else
  {
    v17 = @"NO_WAIT";
  }

  v15 = v17;
LABEL_22:
  if ([(MAAutoAssetInfoDesire *)self lockWaitTimeoutSecs])
  {
    if ([(MAAutoAssetInfoDesire *)self lockWaitTimeoutSecs]!= -2)
    {
      goto LABEL_27;
    }

    v18 = @"DEFAULT";
  }

  else
  {
    v18 = @"NO_WAIT";
  }

  v16 = v18;
LABEL_27:
  v19 = MEMORY[0x1E696AEC0];
  v20 = [(MAAutoAssetInfoDesire *)self downloadProgressDesired];
  v21 = @"N";
  if (v20)
  {
    v21 = @"Y";
  }

  v22 = [v19 stringWithFormat:@"%@|checkSecs:%@, lockSecs:%@, prog:%@", v3, v15, v16, v21];

  return v22;
}

@end