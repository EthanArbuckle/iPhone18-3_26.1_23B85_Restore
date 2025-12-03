@interface MAAutoAssetSetNotifications
- (MAAutoAssetSetNotifications)init;
- (MAAutoAssetSetNotifications)initWithCoder:(id)coder;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetNotifications

- (id)summary
{
  v14 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetSetNotifications *)self atomicInstanceDiscovered])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v13 = v3;
  if ([(MAAutoAssetSetNotifications *)self atomicInstanceAvailableForUse])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self lockUsageCheck])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self filesystemSpaceCritical])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self atomicInstancePurged])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self downloadPending])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self downloadProgress])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self downloadAbandoned])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ([(MAAutoAssetSetNotifications *)self downloadedBecameIncomplete])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  return [v14 stringWithFormat:@"discovered:%@|availableForUse:%@|lockUsageCheck:%@|filesystemSpaceCritical:%@|purged:%@|downloadPending:%@|downloadProgress:%@|downloadAbandoned:%@|downloadBecameIncomplete:%@", v13, v4, v5, v6, v7, v8, v9, v10, v11];
}

- (MAAutoAssetSetNotifications)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSetNotifications;
  result = [(MAAutoAssetSetNotifications *)&v3 init];
  if (result)
  {
    result->_downloadedBecameIncomplete = 0;
    *&result->_atomicInstanceDiscovered = 0;
  }

  return result;
}

- (MAAutoAssetSetNotifications)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSetNotifications;
  v5 = [(MAAutoAssetSetNotifications *)&v7 init];
  if (v5)
  {
    v5->_atomicInstanceDiscovered = [coderCopy decodeBoolForKey:@"atomicInstanceDiscovered"];
    v5->_atomicInstanceAvailableForUse = [coderCopy decodeBoolForKey:@"atomicInstanceAvailableForUse"];
    v5->_lockUsageCheck = [coderCopy decodeBoolForKey:@"lockUsageCheck"];
    v5->_filesystemSpaceCritical = [coderCopy decodeBoolForKey:@"filesystemSpaceCritical"];
    v5->_atomicInstancePurged = [coderCopy decodeBoolForKey:@"atomicInstancePurged"];
    v5->_downloadPending = [coderCopy decodeBoolForKey:@"downloadPending"];
    v5->_downloadProgress = [coderCopy decodeBoolForKey:@"downloadProgress"];
    v5->_downloadAbandoned = [coderCopy decodeBoolForKey:@"downloadAbandoned"];
    v5->_downloadedBecameIncomplete = [coderCopy decodeBoolForKey:@"downloadedBecameIncomplete"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications atomicInstanceDiscovered](self forKey:{"atomicInstanceDiscovered"), @"atomicInstanceDiscovered"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications atomicInstanceAvailableForUse](self forKey:{"atomicInstanceAvailableForUse"), @"atomicInstanceAvailableForUse"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications lockUsageCheck](self forKey:{"lockUsageCheck"), @"lockUsageCheck"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications filesystemSpaceCritical](self forKey:{"filesystemSpaceCritical"), @"filesystemSpaceCritical"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications atomicInstancePurged](self forKey:{"atomicInstancePurged"), @"atomicInstancePurged"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications downloadPending](self forKey:{"downloadPending"), @"downloadPending"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications downloadProgress](self forKey:{"downloadProgress"), @"downloadProgress"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications downloadAbandoned](self forKey:{"downloadAbandoned"), @"downloadAbandoned"}];
  [coderCopy encodeBool:-[MAAutoAssetSetNotifications downloadedBecameIncomplete](self forKey:{"downloadedBecameIncomplete"), @"downloadedBecameIncomplete"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetSetNotifications);
  [(MAAutoAssetSetNotifications *)v3 setAtomicInstanceDiscovered:[(MAAutoAssetSetNotifications *)self atomicInstanceDiscovered]];
  [(MAAutoAssetSetNotifications *)v3 setAtomicInstanceAvailableForUse:[(MAAutoAssetSetNotifications *)self atomicInstanceAvailableForUse]];
  [(MAAutoAssetSetNotifications *)v3 setLockUsageCheck:[(MAAutoAssetSetNotifications *)self lockUsageCheck]];
  [(MAAutoAssetSetNotifications *)v3 setFilesystemSpaceCritical:[(MAAutoAssetSetNotifications *)self filesystemSpaceCritical]];
  [(MAAutoAssetSetNotifications *)v3 setAtomicInstancePurged:[(MAAutoAssetSetNotifications *)self atomicInstancePurged]];
  [(MAAutoAssetSetNotifications *)v3 setDownloadPending:[(MAAutoAssetSetNotifications *)self downloadPending]];
  [(MAAutoAssetSetNotifications *)v3 setDownloadProgress:[(MAAutoAssetSetNotifications *)self downloadProgress]];
  [(MAAutoAssetSetNotifications *)v3 setDownloadAbandoned:[(MAAutoAssetSetNotifications *)self downloadAbandoned]];
  [(MAAutoAssetSetNotifications *)v3 setDownloadedBecameIncomplete:[(MAAutoAssetSetNotifications *)self downloadedBecameIncomplete]];
  return v3;
}

@end