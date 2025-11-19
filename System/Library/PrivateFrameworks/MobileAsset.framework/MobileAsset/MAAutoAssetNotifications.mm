@interface MAAutoAssetNotifications
- (MAAutoAssetNotifications)init;
- (MAAutoAssetNotifications)initWithCoder:(id)a3;
- (id)copy;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetNotifications

- (MAAutoAssetNotifications)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetNotifications;
  result = [(MAAutoAssetNotifications *)&v3 init];
  if (result)
  {
    *&result->_downloadProgress = 0;
    *&result->_newerVersionDiscovered = 0;
  }

  return result;
}

- (MAAutoAssetNotifications)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetNotifications;
  v5 = [(MAAutoAssetNotifications *)&v7 init];
  if (v5)
  {
    v5->_newerVersionDiscovered = [v4 decodeBoolForKey:@"newerVersionDiscovered"];
    v5->_checkForNewerFailure = [v4 decodeBoolForKey:@"checkForNewerFailure"];
    v5->_contentAvailableForUse = [v4 decodeBoolForKey:@"contentAvailableForUse"];
    v5->_contentVersionRevoked = [v4 decodeBoolForKey:@"contentVersionRevoked"];
    v5->_lockUsageCheck = [v4 decodeBoolForKey:@"lockUsageCheck"];
    v5->_filesystemSpaceCritical = [v4 decodeBoolForKey:@"filesystemSpaceCritical"];
    v5->_assetPurged = [v4 decodeBoolForKey:@"assetPurged"];
    v5->_downloadPending = [v4 decodeBoolForKey:@"downloadPending"];
    v5->_downloadProgress = [v4 decodeBoolForKey:@"downloadProgress"];
    v5->_downloadAbandoned = [v4 decodeBoolForKey:@"downloadAbandoned"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MAAutoAssetNotifications newerVersionDiscovered](self forKey:{"newerVersionDiscovered"), @"newerVersionDiscovered"}];
  [v4 encodeBool:-[MAAutoAssetNotifications checkForNewerFailure](self forKey:{"checkForNewerFailure"), @"checkForNewerFailure"}];
  [v4 encodeBool:-[MAAutoAssetNotifications contentAvailableForUse](self forKey:{"contentAvailableForUse"), @"contentAvailableForUse"}];
  [v4 encodeBool:-[MAAutoAssetNotifications contentVersionRevoked](self forKey:{"contentVersionRevoked"), @"contentVersionRevoked"}];
  [v4 encodeBool:-[MAAutoAssetNotifications lockUsageCheck](self forKey:{"lockUsageCheck"), @"lockUsageCheck"}];
  [v4 encodeBool:-[MAAutoAssetNotifications filesystemSpaceCritical](self forKey:{"filesystemSpaceCritical"), @"filesystemSpaceCritical"}];
  [v4 encodeBool:-[MAAutoAssetNotifications assetPurged](self forKey:{"assetPurged"), @"assetPurged"}];
  [v4 encodeBool:-[MAAutoAssetNotifications downloadPending](self forKey:{"downloadPending"), @"downloadPending"}];
  [v4 encodeBool:-[MAAutoAssetNotifications downloadProgress](self forKey:{"downloadProgress"), @"downloadProgress"}];
  [v4 encodeBool:-[MAAutoAssetNotifications downloadAbandoned](self forKey:{"downloadAbandoned"), @"downloadAbandoned"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetNotifications);
  [(MAAutoAssetNotifications *)v3 setNewerVersionDiscovered:[(MAAutoAssetNotifications *)self newerVersionDiscovered]];
  [(MAAutoAssetNotifications *)v3 setCheckForNewerFailure:[(MAAutoAssetNotifications *)self checkForNewerFailure]];
  [(MAAutoAssetNotifications *)v3 setContentAvailableForUse:[(MAAutoAssetNotifications *)self contentAvailableForUse]];
  [(MAAutoAssetNotifications *)v3 setContentVersionRevoked:[(MAAutoAssetNotifications *)self contentVersionRevoked]];
  [(MAAutoAssetNotifications *)v3 setLockUsageCheck:[(MAAutoAssetNotifications *)self lockUsageCheck]];
  [(MAAutoAssetNotifications *)v3 setFilesystemSpaceCritical:[(MAAutoAssetNotifications *)self filesystemSpaceCritical]];
  [(MAAutoAssetNotifications *)v3 setAssetPurged:[(MAAutoAssetNotifications *)self assetPurged]];
  [(MAAutoAssetNotifications *)v3 setDownloadPending:[(MAAutoAssetNotifications *)self downloadPending]];
  [(MAAutoAssetNotifications *)v3 setDownloadProgress:[(MAAutoAssetNotifications *)self downloadProgress]];
  [(MAAutoAssetNotifications *)v3 setDownloadAbandoned:[(MAAutoAssetNotifications *)self downloadAbandoned]];
  return v3;
}

- (id)summary
{
  v16 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetNotifications *)self newerVersionDiscovered])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v15 = v3;
  if ([(MAAutoAssetNotifications *)self checkForNewerFailure])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v14 = v4;
  if ([(MAAutoAssetNotifications *)self contentAvailableForUse])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self contentVersionRevoked])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self lockUsageCheck])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self filesystemSpaceCritical])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self assetPurged])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self downloadPending])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self downloadProgress])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  if ([(MAAutoAssetNotifications *)self downloadAbandoned])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  return [v16 stringWithFormat:@"discovered:%@|checkFail:%@|avail:%@|revoked:%@|usageCheck:%@|spaceCritical:%@|purged:%@|pending:%@|progress:%@|abandoned:%@", v15, v14, v5, v6, v7, v8, v9, v10, v11, v12];
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MAAutoAssetNotifications *)self newerVersionDiscovered])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 setSafeObject:v4 forKey:@"newerVersionDiscovered"];
  if ([(MAAutoAssetNotifications *)self checkForNewerFailure])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 setSafeObject:v5 forKey:@"checkForNewerFailure"];
  if ([(MAAutoAssetNotifications *)self contentAvailableForUse])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 setSafeObject:v6 forKey:@"contentAvailableForUse"];
  if ([(MAAutoAssetNotifications *)self contentVersionRevoked])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 setSafeObject:v7 forKey:@"contentVersionRevoked"];
  if ([(MAAutoAssetNotifications *)self lockUsageCheck])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 setSafeObject:v8 forKey:@"lockUsageCheck"];
  if ([(MAAutoAssetNotifications *)self filesystemSpaceCritical])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setSafeObject:v9 forKey:@"filesystemSpaceCritical"];
  if ([(MAAutoAssetNotifications *)self assetPurged])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 setSafeObject:v10 forKey:@"assetPurged"];
  if ([(MAAutoAssetNotifications *)self downloadPending])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 setSafeObject:v11 forKey:@"downloadPending"];
  if ([(MAAutoAssetNotifications *)self downloadProgress])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 setSafeObject:v12 forKey:@"downloadProgress"];
  if ([(MAAutoAssetNotifications *)self downloadAbandoned])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 setSafeObject:v13 forKey:@"downloadAbandoned"];
  return v3;
}

@end