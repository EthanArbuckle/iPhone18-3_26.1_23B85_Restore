@interface MAAutoAssetSetInfoDesire
- (MAAutoAssetSetInfoDesire)initWithCoder:(id)a3;
- (id)initForClientAssetSetPolicy:(id)a3 reasonDesired:(id)a4 awaitingDownloadOfDiscovered:(BOOL)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetInfoDesire

- (id)summary
{
  v4 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (v4)
  {
  }

  else
  {
    v5 = [(MAAutoAssetSetInfoDesire *)self desireReason];

    if (!v5)
    {
      v11 = @"byPolicy";
      goto LABEL_13;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  if (v7)
  {
    v2 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
    v8 = [v2 summary];
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(MAAutoAssetSetInfoDesire *)self desireReason];
  if (v9)
  {
    v10 = [(MAAutoAssetSetInfoDesire *)self desireReason];
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", v8, v10];
  }

  else
  {
    v11 = [v6 initWithFormat:@"clientAssetSetPolicy:%@|desireReason:%@", v8, @"N"];
  }

  if (v7)
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
    v22 = [(MAAutoAssetSetInfoDesire *)self lockWaitTimeoutSecs];
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

    if (v22 == -101)
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

- (id)initForClientAssetSetPolicy:(id)a3 reasonDesired:(id)a4 awaitingDownloadOfDiscovered:(BOOL)a5 withCheckWaitTimeout:(int64_t)a6 withLockWaitTimeout:(int64_t)a7 desiringProgress:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = MAAutoAssetSetInfoDesire;
  v17 = [(MAAutoAssetSetInfoDesire *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientAssetSetPolicy, a3);
    objc_storeStrong(&v18->_desireReason, a4);
    v18->_awaitDownloadingOfDiscovered = a5;
    v18->_checkWaitTimeoutSecs = a6;
    v18->_lockWaitTimeoutSecs = a7;
    v18->_downloadProgressDesired = a8;
  }

  return v18;
}

- (MAAutoAssetSetInfoDesire)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoDesire;
  v5 = [(MAAutoAssetSetInfoDesire *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAssetSetPolicy"];
    clientAssetSetPolicy = v5->_clientAssetSetPolicy;
    v5->_clientAssetSetPolicy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desireReason"];
    desireReason = v5->_desireReason;
    v5->_desireReason = v8;

    v5->_awaitDownloadingOfDiscovered = [v4 decodeBoolForKey:@"awaitDownloadingOfDiscovered"];
    v5->_checkWaitTimeoutSecs = [v4 decodeIntegerForKey:@"checkWaitTimeoutSecs"];
    v5->_lockWaitTimeoutSecs = [v4 decodeIntegerForKey:@"lockWaitTimeoutSecs"];
    v5->_downloadProgressDesired = [v4 decodeBoolForKey:@"downloadProgressDesired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MAAutoAssetSetInfoDesire *)self clientAssetSetPolicy];
  [v6 encodeObject:v4 forKey:@"clientAssetSetPolicy"];

  v5 = [(MAAutoAssetSetInfoDesire *)self desireReason];
  [v6 encodeObject:v5 forKey:@"desireReason"];

  [v6 encodeBool:-[MAAutoAssetSetInfoDesire awaitDownloadingOfDiscovered](self forKey:{"awaitDownloadingOfDiscovered"), @"awaitDownloadingOfDiscovered"}];
  [v6 encodeInteger:-[MAAutoAssetSetInfoDesire checkWaitTimeoutSecs](self forKey:{"checkWaitTimeoutSecs"), @"checkWaitTimeoutSecs"}];
  [v6 encodeInteger:-[MAAutoAssetSetInfoDesire lockWaitTimeoutSecs](self forKey:{"lockWaitTimeoutSecs"), @"lockWaitTimeoutSecs"}];
  [v6 encodeBool:-[MAAutoAssetSetInfoDesire downloadProgressDesired](self forKey:{"downloadProgressDesired"), @"downloadProgressDesired"}];
}

@end