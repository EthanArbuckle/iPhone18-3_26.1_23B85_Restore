@interface BLDownloadDRMOperation
- (BLDownloadDRMOperation)initWithInstallInfo:(id)info;
- (BOOL)_decryptAsset:(id *)asset;
- (void)main;
@end

@implementation BLDownloadDRMOperation

- (BLDownloadDRMOperation)initWithInstallInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = BLDownloadDRMOperation;
  v6 = [(BLDownloadDRMOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installInfo, info);
  }

  return v7;
}

- (void)main
{
  obj = 0;
  v3 = [(BLDownloadDRMOperation *)self _decryptAsset:&obj];
  v4 = obj;
  self->_success = v3;
  objc_storeStrong(&self->_error, v4);
}

- (BOOL)_decryptAsset:(id *)asset
{
  installInfo = [(BLDownloadDRMOperation *)self installInfo];
  dpInfo = [installInfo dpInfo];

  if ([dpInfo length])
  {
    installInfo2 = [(BLDownloadDRMOperation *)self installInfo];
    databaseManager = [installInfo2 databaseManager];
    installInfo3 = [(BLDownloadDRMOperation *)self installInfo];
    downloadID = [installInfo3 downloadID];
    [databaseManager syncSaveDownloadStateWithId:downloadID state:11];

    installInfo4 = [(BLDownloadDRMOperation *)self installInfo];
    assetPath = [installInfo4 assetPath];

    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      installInfo5 = [(BLDownloadDRMOperation *)self installInfo];
      downloadID2 = [installInfo5 downloadID];
      v25 = 138543618;
      v26 = downloadID2;
      v27 = 2112;
      v28 = assetPath;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-DRM-Op]:  Decrypting asset for download at path: %@", &v25, 0x16u);
    }

    v16 = [[BLFairPlayDecryptFileOperation alloc] initWithPath:assetPath dpInfo:dpInfo installInfo:self->_installInfo];
    [(BLFairPlayDecryptFileOperation *)v16 start];
    success = [(BLFairPlayDecryptFileOperation *)v16 success];
    error = [(BLFairPlayDecryptFileOperation *)v16 error];
    installInfo6 = [(BLDownloadDRMOperation *)self installInfo];
    databaseManager2 = [installInfo6 databaseManager];
    installInfo7 = [(BLDownloadDRMOperation *)self installInfo];
    downloadID3 = [installInfo7 downloadID];
    [databaseManager2 syncSaveDownloadStateWithId:downloadID3 state:12];

    if (asset && (success & 1) == 0)
    {
      v23 = error;
      success = 0;
      *asset = error;
    }
  }

  else
  {
    error = 0;
    success = 1;
  }

  return success;
}

@end