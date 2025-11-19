@interface BLDownloadDRMOperation
- (BLDownloadDRMOperation)initWithInstallInfo:(id)a3;
- (BOOL)_decryptAsset:(id *)a3;
- (void)main;
@end

@implementation BLDownloadDRMOperation

- (BLDownloadDRMOperation)initWithInstallInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLDownloadDRMOperation;
  v6 = [(BLDownloadDRMOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installInfo, a3);
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

- (BOOL)_decryptAsset:(id *)a3
{
  v5 = [(BLDownloadDRMOperation *)self installInfo];
  v6 = [v5 dpInfo];

  if ([v6 length])
  {
    v7 = [(BLDownloadDRMOperation *)self installInfo];
    v8 = [v7 databaseManager];
    v9 = [(BLDownloadDRMOperation *)self installInfo];
    v10 = [v9 downloadID];
    [v8 syncSaveDownloadStateWithId:v10 state:11];

    v11 = [(BLDownloadDRMOperation *)self installInfo];
    v12 = [v11 assetPath];

    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(BLDownloadDRMOperation *)self installInfo];
      v15 = [v14 downloadID];
      v25 = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-DRM-Op]:  Decrypting asset for download at path: %@", &v25, 0x16u);
    }

    v16 = [[BLFairPlayDecryptFileOperation alloc] initWithPath:v12 dpInfo:v6 installInfo:self->_installInfo];
    [(BLFairPlayDecryptFileOperation *)v16 start];
    v17 = [(BLFairPlayDecryptFileOperation *)v16 success];
    v18 = [(BLFairPlayDecryptFileOperation *)v16 error];
    v19 = [(BLDownloadDRMOperation *)self installInfo];
    v20 = [v19 databaseManager];
    v21 = [(BLDownloadDRMOperation *)self installInfo];
    v22 = [v21 downloadID];
    [v20 syncSaveDownloadStateWithId:v22 state:12];

    if (a3 && (v17 & 1) == 0)
    {
      v23 = v18;
      v17 = 0;
      *a3 = v18;
    }
  }

  else
  {
    v18 = 0;
    v17 = 1;
  }

  return v17;
}

@end