@interface BLBaseBookInstallOperation
- (BLBaseBookInstallOperation)initWithInfo:(id)a3;
- (BOOL)_moveFile:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6;
- (BOOL)_moveFile:(id)a3 toPath:(id)a4 error:(id *)a5;
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

- (BLBaseBookInstallOperation)initWithInfo:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = BLBaseBookInstallOperation;
  v6 = [(BLBaseBookInstallOperation *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installInfo, a3);
    v8 = [v5 downloadID];
    if ([v8 length])
    {
      v9 = [v5 plistPath];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [v5 itunesMetadata];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [v5 assetPath];
          v14 = [v13 length];

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
        v19 = [v8 length];
        if (v19)
        {
          v20 = [v5 downloadID];
        }

        else
        {
          v20 = @"<unknown>";
        }

        *buf = 138543618;
        v24 = v20;
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
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 downloadID];

  return v3;
}

- (NSString)plistPath
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 plistPath];

  return v3;
}

- (NSString)downloadedAssetPath
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 assetPath];

  return v3;
}

- (NSString)artworkPath
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 artworkPath];

  return v3;
}

- (NSString)destinationFilename
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 destinationFilename];

  return v3;
}

- (NSNumber)playlistIdentifier
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 storePlaylistIdentifier];

  return v3;
}

- (NSNumber)storeIdentifier
{
  v2 = [(BLBaseBookInstallOperation *)self installInfo];
  v3 = [v2 storeIdentifier];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BLBaseBookInstallOperation *)self installInfo];
  v6 = [NSString stringWithFormat:@"<%@(%p)>\n_installInfo = %@", v4, self, v5];;

  return v6;
}

- (BOOL)_moveFile:(id)a3 toPath:(id *)a4 installBehavior:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [(BLBaseBookInstallOperation *)self downloadID];
  v11 = BLBookInstallLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (a4)
    {
      v12 = *a4;
    }

    else
    {
      v12 = &stru_100125DB0;
    }

    *buf = 138543874;
    v52 = v10;
    v53 = 2114;
    v54 = v9;
    v55 = 2114;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Install-Op]: Moving file %{public}@ to %{public}@.", buf, 0x20u);
  }

  v13 = [*a4 stringByDeletingLastPathComponent];
  v14 = [*a4 lastPathComponent];
  v46 = [v14 stringByDeletingPathExtension];
  v42 = v14;
  v15 = [v14 pathExtension];
  v16 = objc_alloc_init(NSFileManager);
  v50 = 0;
  v47 = v13;
  LOBYTE(v13) = [v16 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v50];
  v17 = v50;
  v18 = v17;
  if ((v13 & 1) == 0 && ([v17 bu_isFileExistsError] & 1) == 0)
  {
    v19 = BLBookInstallLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = v10;
      v53 = 2112;
      v54 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: Error creating directory:  %@", buf, 0x16u);
    }
  }

  v41 = v18;
  v43 = v10;
  v44 = v9;
  v45 = 0;
  v20 = 1;
  while ([v16 fileExistsAtPath:*a4])
  {
    if (a5 == 1)
    {
      v21 = [NSString stringWithFormat:@"%@-%ld", v46, v20];
      if ([v15 length])
      {
        v22 = [v21 stringByAppendingPathExtension:v15];

        v21 = v22;
      }

      *a4 = [v47 stringByAppendingPathComponent:v21];

      if (v20++ >= 10000)
      {
        v34 = BLBookInstallLog();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        v32 = v42;
        v27 = v10;
        if (v35)
        {
          *buf = 138543618;
          v52 = v10;
          v53 = 2114;
          v54 = v42;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: File rename failed after too many tries: %{public}@", buf, 0x16u);
        }

        v25 = sub_1000A8F44(30, 0, 0);
        v29 = v44;
        v26 = v45;
        v36 = a6;
        v33 = v41;
        goto LABEL_29;
      }
    }

    else
    {
      v24 = *a4;
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
          v27 = v10;
          v52 = v10;
          v53 = 2112;
          v54 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Op]: DownloadInstaller: File delete failed: %@", buf, 0x16u);
        }

        else
        {
          v27 = v10;
        }

        v29 = v44;
        v36 = a6;
        v33 = v41;
        v32 = v42;
        goto LABEL_29;
      }
    }
  }

  v28 = *a4;
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

  v36 = a6;
LABEL_29:

  if (v36)
  {
    v37 = v25;
    v31 = 0;
    *v36 = v25;
  }

  else
  {
    v31 = 0;
  }

LABEL_32:

  return v31;
}

- (BOOL)_moveFile:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v11 = a4;
  v8 = a4;
  LOBYTE(a5) = [(BLBaseBookInstallOperation *)self _moveFile:a3 toPath:&v11 installBehavior:0 error:a5];
  v9 = v11;

  return a5;
}

@end