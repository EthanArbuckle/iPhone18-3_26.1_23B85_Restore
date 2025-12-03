@interface MAAutoAssetSetInfoDesire
- (MAAutoAssetSetInfoDesire)initWithCoder:(id)coder;
- (id)initForClientAssetSetPolicy:(id)policy reasonDesired:(id)desired awaitingDownloadOfDiscovered:(BOOL)discovered withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInfoDesire

- (id)summary
{
  clientAssetSetPolicy = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (clientAssetSetPolicy)
  {
  }

  else
  {
    desireReason = [(MAAutoAssetSetInfoDesire *)self desireReason];

    if (!desireReason)
    {
      v11 = @"byPolicy";
      goto LABEL_13;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  clientAssetSetPolicy2 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (clientAssetSetPolicy2)
  {
    clientAssetSetPolicy3 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
    summary = [clientAssetSetPolicy3 summary];
  }

  else
  {
    summary = @"N";
  }

  desireReason2 = [(MAAutoAssetSetInfoDesire *)self desireReason];
  if (desireReason2)
  {
    desireReason3 = [(MAAutoAssetSetInfoDesire *)self desireReason];
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", summary, desireReason3];
  }

  else
  {
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", summary, @"N"];
  }

  if (clientAssetSetPolicy2)
  {
  }

LABEL_13:
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetSetInfoDesire checkWaitTimeoutSecs](self, "checkWaitTimeoutSecs")];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetSetInfoDesire lockWaitTimeoutSecs](self, "lockWaitTimeoutSecs")];
  if ([(MAAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs])
  {
    if ([(MAAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]!= -2)
    {
      goto LABEL_18;
    }

    v14 = @"DEFAULT";
  }

  else
  {
    v14 = @"NO_WAIT";
  }

  v12 = v14;
LABEL_18:
  if (![(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs])
  {
    v15 = @"NO_WAIT";
    goto LABEL_24;
  }

  if ([(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -2)
  {
    v15 = @"DEFAULT";
LABEL_24:

    v13 = v15;
    goto LABEL_25;
  }

  if ([(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -3)
  {
    v15 = @"NO_WAIT_NOT_PERSISTED";
    goto LABEL_24;
  }

LABEL_25:
  if ([(MAAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]== -101 && [(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs]== -101)
  {
    v16 = MEMORY[0x1E696AEC0];
    if ([(MAAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    if ([(MAAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    [v16 stringWithFormat:@"%@|awaitDowload:%@|progressDesired:%@", v11, v17, v18, v28, v29];
  }

  else if ([(MAAutoAssetSetInfoDesire *)self checkWaitTimeoutSecs]== -101)
  {
    v19 = MEMORY[0x1E696AEC0];
    if ([(MAAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v20 = @"Y";
    }

    else
    {
      v20 = @"N";
    }

    if ([(MAAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v21 = @"Y";
    }

    else
    {
      v21 = @"N";
    }

    [v19 stringWithFormat:@"%@|awaitDowload:%@|lockSecs:%@, progressDesired:%@", v11, v20, v13, v21, v29];
  }

  else
  {
    lockWaitTimeoutSecs = [(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs];
    v23 = MEMORY[0x1E696AEC0];
    if ([(MAAutoAssetSetInfoDesire *)self awaitDownloadingOfDiscovered])
    {
      v24 = @"Y";
    }

    else
    {
      v24 = @"N";
    }

    if ([(MAAutoAssetSetInfoDesire *)self downloadProgressDesired])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    if (lockWaitTimeoutSecs == -101)
    {
      [v23 stringWithFormat:@"%@|awaitDowload:%@|checkSecs:%@, progressDesired:%@", v11, v24, v12, v25, v29];
    }

    else
    {
      [v23 stringWithFormat:@"%@|awaitDowload:%@|checkSecs:%@, lockSecs:%@, progressDesired:%@", v11, v24, v12, v13, v25];
    }
  }
  v26 = ;

  return v26;
}

- (id)initForClientAssetSetPolicy:(id)policy reasonDesired:(id)desired awaitingDownloadOfDiscovered:(BOOL)discovered withCheckWaitTimeout:(int64_t)timeout withLockWaitTimeout:(int64_t)waitTimeout desiringProgress:(BOOL)progress
{
  policyCopy = policy;
  desiredCopy = desired;
  v20.receiver = self;
  v20.super_class = MAAutoAssetSetInfoDesire;
  v17 = [(MAAutoAssetSetInfoDesire *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientAssetSetPolicy, policy);
    objc_storeStrong(&v18->_desireReason, desired);
    v18->_awaitDownloadingOfDiscovered = discovered;
    v18->_checkWaitTimeoutSecs = timeout;
    v18->_lockWaitTimeoutSecs = waitTimeout;
    v18->_downloadProgressDesired = progress;
  }

  return v18;
}

- (MAAutoAssetSetInfoDesire)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoDesire;
  v5 = [(MAAutoAssetSetInfoDesire *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSetPolicy"];
    clientAssetSetPolicy = v5->_clientAssetSetPolicy;
    v5->_clientAssetSetPolicy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v8;

    v5->_awaitDownloadingOfDiscovered = [coderCopy decodeBoolForKey:@"awaitDownloadingOfDiscovered"];
    v5->_checkWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [coderCopy decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [coderCopy decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientAssetSetPolicy = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  [coderCopy encodeObject:clientAssetSetPolicy forKey:@"clientAssetSetPolicy"];

  desireReason = [(MAAutoAssetSetInfoDesire *)self desireReason];
  [coderCopy encodeObject:desireReason forKey:@"desireReason"];

  [coderCopy encodeBool:-[MAAutoAssetSetInfoDesire awaitDownloadingOfDiscovered](self forKey:{"awaitDownloadingOfDiscovered"), @"awaitDownloadingOfDiscovered"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [coderCopy encodeBool:-[MAAutoAssetSetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

@end