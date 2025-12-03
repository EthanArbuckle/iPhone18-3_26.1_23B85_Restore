@interface MAAutoAssetInfoDesire
- (MAAutoAssetInfoDesire)initWithCoder:(id)coder;
- (MAAutoAssetInfoDesire)initWithDesiredCategory:(id)category forClientAssetPolicy:(id)policy reasonDesired:(id)desired withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoDesire

- (MAAutoAssetInfoDesire)initWithDesiredCategory:(id)category forClientAssetPolicy:(id)policy reasonDesired:(id)desired withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress
{
  categoryCopy = category;
  policyCopy = policy;
  desiredCopy = desired;
  v21.receiver = self;
  v21.super_class = MAAutoAssetInfoDesire;
  v18 = [(MAAutoAssetInfoDesire *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_updateCategoryDesiredByClient, category);
    objc_storeStrong(&v19->_clientAssetPolicy, policy);
    objc_storeStrong(&v19->_desireReason, desired);
    v19->_checkWaitTimeoutSecs = timeout;
    v19->_lockWaitTimeoutSecs = waitTimeout;
    v19->_downloadProgressDesired = progress;
  }

  return v19;
}

- (MAAutoAssetInfoDesire)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MAAutoAssetInfoDesire;
  v5 = [(MAAutoAssetInfoDesire *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateCategoryDesiredByClient"];
    updateCategoryDesiredByClient = v5->_updateCategoryDesiredByClient;
    v5->_updateCategoryDesiredByClient = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetPolicy"];
    clientAssetPolicy = v5->_clientAssetPolicy;
    v5->_clientAssetPolicy = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v10;

    v5->_checkWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [coderCopy decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  updateCategoryDesiredByClient = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  [coderCopy encodeObject:updateCategoryDesiredByClient forKey:@"updateCategoryDesiredByClient"];

  clientAssetPolicy = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];
  [coderCopy encodeObject:clientAssetPolicy forKey:@"clientAssetPolicy"];

  desireReason = [(MAAutoAssetInfoDesire *)self desireReason];
  [coderCopy encodeObject:desireReason forKey:@"desireReason"];

  [coderCopy encodeInteger:-[MAAutoAssetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [coderCopy encodeBool:-[MAAutoAssetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

- (id)summary
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0C1B388];
  updateCategoryDesiredByClient = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  if (updateCategoryDesiredByClient || ([(MAAutoAssetInfoDesire *)self clientAssetPolicy], (updateCategoryDesiredByClient = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    desireReason = [(MAAutoAssetInfoDesire *)self desireReason];

    if (!desireReason)
    {
      [v3 appendString:@"byPolicy"];
      goto LABEL_17;
    }
  }

  updateCategoryDesiredByClient2 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
  if (updateCategoryDesiredByClient2)
  {
  }

  else
  {
    clientAssetPolicy = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];

    if (!clientAssetPolicy)
    {
      desireReason2 = [(MAAutoAssetInfoDesire *)self desireReason];
      [v3 appendString:desireReason2];
      goto LABEL_16;
    }
  }

  updateCategoryDesiredByClient3 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];

  if (updateCategoryDesiredByClient3)
  {
    updateCategoryDesiredByClient4 = [(MAAutoAssetInfoDesire *)self updateCategoryDesiredByClient];
    [v3 appendFormat:@"categ:%@", updateCategoryDesiredByClient4];
  }

  clientAssetPolicy2 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];

  if (clientAssetPolicy2)
  {
    clientAssetPolicy3 = [(MAAutoAssetInfoDesire *)self clientAssetPolicy];
    summary = [clientAssetPolicy3 summary];
    [v3 appendFormat:@"policy:%@", summary];
  }

  desireReason3 = [(MAAutoAssetInfoDesire *)self desireReason];

  if (desireReason3)
  {
    desireReason2 = [(MAAutoAssetInfoDesire *)self desireReason];
    [v3 appendFormat:@"|%@", desireReason2];
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
  downloadProgressDesired = [(MAAutoAssetInfoDesire *)self downloadProgressDesired];
  v21 = @"N";
  if (downloadProgressDesired)
  {
    v21 = @"Y";
  }

  v22 = [v19 stringWithFormat:@"%@|checkSecs:%@, lockSecs:%@, prog:%@", v3, v15, v16, v21];

  return v22;
}

@end