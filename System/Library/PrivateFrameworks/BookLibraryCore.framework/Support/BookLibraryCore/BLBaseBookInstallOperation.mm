@interface BLBaseBookInstallOperation
- (BLBaseBookInstallOperation)initWithInfo:(id)info;
- (BOOL)_moveFile:(id)file toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error;
- (BOOL)_moveFile:(id)file toPath:(id)path error:(id *)error;
- (NSNumber)playlistIdentifier;
- (NSNumber)storeIdentifier;
- (NSString)artworkPath;
- (NSString)destinationFilename;
- (NSString)downloadID;
- (NSString)downloadedAssetPath;
- (NSString)plistPath;
- (id)description;
@end

@implementation BLBaseBookInstallOperation

- (BLBaseBookInstallOperation)initWithInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = BLBaseBookInstallOperation;
  v6 = [(BLBaseBookInstallOperation *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installInfo, info);
    downloadID = [infoCopy downloadID];
    if ([downloadID length])
    {
      plistPath = [infoCopy plistPath];
      v10 = [plistPath length];

      if (v10)
      {
        itunesMetadata = [infoCopy itunesMetadata];
        v12 = [itunesMetadata count];

        if (v12)
        {
          assetPath = [infoCopy assetPath];
          v14 = [assetPath length];

          if (v14)
          {
LABEL_18:

            goto LABEL_19;
          }

          v15 = @"Required asset path missing.";
        }

        else
        {
          v15 = @"Required metadata plist was empty or failed to parse.";
        }
      }

      else
      {
        v15 = @"Required plist location missing.";
      }
    }

    else
    {
      v15 = @"Required downloadID missing.";
    }

    v16 = sub_1000A8F44(0, 0, v15);
    if (v16)
    {
      v17 = v16;
      v7->_success = 0;
      objc_storeStrong(&v7->_error, v16);
      v18 = BLBookInstallLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [downloadID length];
        if (v19)
        {
          downloadID2 = [infoCopy downloadID];
        }

        else
        {
          downloadID2 = @"<unknown>";
        }

        *buf = 138543618;
        v24 = downloadID2;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: Missing info needed for Install Operation: %@", buf, 0x16u);
        if (v19)
        {
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (NSString)downloadID
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  downloadID = [installInfo downloadID];

  return downloadID;
}

- (NSString)plistPath
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  plistPath = [installInfo plistPath];

  return plistPath;
}

- (NSString)downloadedAssetPath
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  assetPath = [installInfo assetPath];

  return assetPath;
}

- (NSString)artworkPath
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  artworkPath = [installInfo artworkPath];

  return artworkPath;
}

- (NSString)destinationFilename
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  destinationFilename = [installInfo destinationFilename];

  return destinationFilename;
}

- (NSNumber)playlistIdentifier
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  storePlaylistIdentifier = [installInfo storePlaylistIdentifier];

  return storePlaylistIdentifier;
}

- (NSNumber)storeIdentifier
{
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  storeIdentifier = [installInfo storeIdentifier];

  return storeIdentifier;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  installInfo = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [NSString stringWithFormat:@"<%@(%p)>\n_installInfo = %@", v4, self, installInfo];;

  return v6;
}

- (BOOL)_moveFile:(id)file toPath:(id *)path installBehavior:(int64_t)behavior error:(id *)error
{
  fileCopy = file;
  downloadID = [(BLBaseBookInstallOperation *)self downloadID];
  v11 = BLBookInstallLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (path)
    {
      v12 = *path;
    }

    else
    {
      v12 = &stru_100125DB0;
    }

    *buf = 138543874;
    v52 = downloadID;
    v53 = 2114;
    v54 = fileCopy;
    v55 = 2114;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Install-Op]: Moving file %{public}@ to %{public}@.", buf, 0x20u);
  }

  stringByDeletingLastPathComponent = [*path stringByDeletingLastPathComponent];
  lastPathComponent = [*path lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v42 = lastPathComponent;
  pathExtension = [lastPathComponent pathExtension];
  v16 = objc_alloc_init(NSFileManager);
  v50 = 0;
  v47 = stringByDeletingLastPathComponent;
  LOBYTE(stringByDeletingLastPathComponent) = [v16 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v50];
  v17 = v50;
  v18 = v17;
  if ((stringByDeletingLastPathComponent & 1) == 0 && ([v17 bu_isFileExistsError] & 1) == 0)
  {
    v19 = BLBookInstallLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = downloadID;
      v53 = 2112;
      v54 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: Error creating directory:  %@", buf, 0x16u);
    }
  }

  v41 = v18;
  v43 = downloadID;
  v44 = fileCopy;
  v45 = 0;
  v20 = 1;
  while ([v16 fileExistsAtPath:*path])
  {
    if (behavior == 1)
    {
      v21 = [NSString stringWithFormat:@"%@-%ld", stringByDeletingPathExtension, v20];
      if ([pathExtension length])
      {
        v22 = [v21 stringByAppendingPathExtension:pathExtension];

        v21 = v22;
      }

      *path = [v47 stringByAppendingPathComponent:v21];

      if (v20++ >= 10000)
      {
        v34 = BLBookInstallLog();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        v32 = v42;
        v27 = downloadID;
        if (v35)
        {
          *buf = 138543618;
          v52 = downloadID;
          v53 = 2114;
          v54 = v42;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: File rename failed after too many tries: %{public}@", buf, 0x16u);
        }

        v25 = sub_1000A8F44(30, 0, 0);
        v29 = v44;
        v26 = v45;
        errorCopy3 = error;
        v33 = v41;
        goto LABEL_29;
      }
    }

    else
    {
      v24 = *path;
      v49 = v45;
      v39 = [v16 removeItemAtPath:v24 error:&v49];
      v25 = v49;

      v45 = v25;
      if ((v39 & 1) == 0)
      {
        v26 = BLBookInstallLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v27 = downloadID;
          v52 = downloadID;
          v53 = 2112;
          v54 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: File delete failed: %@", buf, 0x16u);
        }

        else
        {
          v27 = downloadID;
        }

        v29 = v44;
        errorCopy3 = error;
        v33 = v41;
        v32 = v42;
        goto LABEL_29;
      }
    }
  }

  v28 = *path;
  v29 = v44;
  v48 = v45;
  v30 = [v16 moveItemAtPath:v44 toPath:v28 error:&v48];
  v25 = v48;

  v27 = v43;
  if (v30)
  {
    v31 = 1;
    v33 = v41;
    v32 = v42;
    goto LABEL_32;
  }

  v26 = BLBookInstallLog();
  v33 = v41;
  v32 = v42;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v52 = v43;
    v53 = 2112;
    v54 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: File move failed:  %@", buf, 0x16u);
  }

  errorCopy3 = error;
LABEL_29:

  if (errorCopy3)
  {
    v37 = v25;
    v31 = 0;
    *errorCopy3 = v25;
  }

  else
  {
    v31 = 0;
  }

LABEL_32:

  return v31;
}

- (BOOL)_moveFile:(id)file toPath:(id)path error:(id *)error
{
  pathCopy = path;
  pathCopy2 = path;
  LOBYTE(error) = [(BLBaseBookInstallOperation *)self _moveFile:file toPath:&pathCopy installBehavior:0 error:error];
  v9 = pathCopy;

  return error;
}

@end