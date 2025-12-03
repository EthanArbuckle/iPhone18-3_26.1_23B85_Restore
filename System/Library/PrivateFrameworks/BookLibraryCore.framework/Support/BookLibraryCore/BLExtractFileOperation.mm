@interface BLExtractFileOperation
- (BLBookInstallInfo)installInfo;
- (BLExtractFileOperation)initWithSoucePath:(id)path destinationPath:(id)destinationPath fileAttributes:(id)attributes installInfo:(id)info;
- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error;
- (BOOL)_performExtraction:(id *)extraction;
- (NSString)description;
- (void)_initializeProgress;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)main;
@end

@implementation BLExtractFileOperation

- (BLExtractFileOperation)initWithSoucePath:(id)path destinationPath:(id)destinationPath fileAttributes:(id)attributes installInfo:(id)info
{
  pathCopy = path;
  destinationPathCopy = destinationPath;
  attributesCopy = attributes;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = BLExtractFileOperation;
  v15 = [(BLExtractFileOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceFilePath, path);
    objc_storeStrong(&v16->_destinationFilePath, destinationPath);
    objc_storeStrong(&v16->_fileAttributes, attributes);
    objc_storeWeak(&v16->_installInfo, infoCopy);
    v17 = objc_alloc_init(BLOperationProgress);
    progress = v16->_progress;
    v16->_progress = v17;
  }

  return v16;
}

- (void)main
{
  [(BLExtractFileOperation *)self _initializeProgress];
  sourceFilePath = [(BLExtractFileOperation *)self sourceFilePath];
  if (![sourceFilePath length])
  {

    goto LABEL_6;
  }

  destinationFilePath = [(BLExtractFileOperation *)self destinationFilePath];
  v5 = [destinationFilePath length];

  if (!v5)
  {
LABEL_6:
    v7 = sub_1000A8F44(7, @"Unable to extract", @"Missing either source or destination path.");
    v6 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  v6 = [(BLExtractFileOperation *)self _performExtraction:&v9];
  v7 = v9;
  if (v6)
  {
    destinationFilePath2 = [(BLExtractFileOperation *)self destinationFilePath];
    [(BLExtractFileOperation *)self _applyFileAttributesToDirectory:destinationFilePath2 error:0];

    v6 = 1;
  }

LABEL_7:
  [(BLExtractFileOperation *)self setError:v7];
  [(BLExtractFileOperation *)self setSuccess:v6];
}

- (BOOL)_applyFileAttributesToDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v7 = BLBookInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    buf.st_dev = 138412290;
    *&buf.st_mode = directoryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Install-ExtractFile-Op]: Fixing file permissions for %@", &buf, 0xCu);
  }

  v41 = 0;
  v35 = objc_alloc_init(NSFileManager);
  v8 = [v35 subpathsOfDirectoryAtPath:directoryCopy error:&v41];
  v9 = v41;
  if (!v8)
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = directoryCopy;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Install-ExtractFile-Op]: Could not get sub-paths of %@:  %@", &buf, 0x16u);
    }

    v23 = 0;
    goto LABEL_30;
  }

  fileAttributes = [(BLExtractFileOperation *)self fileAttributes];
  v11 = [fileAttributes mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v12)
  {
    v23 = 1;
    goto LABEL_29;
  }

  v13 = v12;
  v34 = v11;
  v31 = v8;
  errorCopy = error;
  v14 = *v38;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v37 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      v18 = [directoryCopy stringByAppendingPathComponent:v16];
      fileSystemRepresentation = [v18 fileSystemRepresentation];
      if (fileSystemRepresentation)
      {
        memset(&buf, 0, sizeof(buf));
        if (stat(fileSystemRepresentation, &buf))
        {
          v24 = BLBookInstallLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = __error();
            v26 = strerror(*v25);
            *v42 = 138412546;
            v43 = v18;
            v44 = 2080;
            v45 = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Install-ExtractFile-Op]: Could not stat %@: %s", v42, 0x16u);
          }

          v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
          v9 = v27;
        }

        else
        {
          v20 = [NSNumber alloc];
          0x1B0u = [v20 initWithShort:buf.st_mode | 0x1B0u];
          [v34 setObject:0x1B0u forKey:NSFilePosixPermissions];

          v36 = 0;
          v22 = [v35 setAttributes:v34 ofItemAtPath:v18 error:&v36];
          v9 = v36;
          if (v22)
          {

            goto LABEL_15;
          }

          v28 = BLBookInstallLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *v42 = 138412546;
            v43 = v18;
            v44 = 2112;
            v45 = v9;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[Install-ExtractFile-Op]: Could not set file attributes for file: %@, error:  %@", v42, 0x16u);
          }
        }

        v8 = v31;
        error = errorCopy;
        v11 = v34;

        objc_autoreleasePoolPop(v17);
        v23 = 0;
        goto LABEL_29;
      }

LABEL_15:

      objc_autoreleasePoolPop(v17);
    }

    v13 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v23 = 1;
  v8 = v31;
  error = errorCopy;
  v11 = v34;
LABEL_29:

LABEL_30:
  if (error)
  {
    v29 = v9;
    *error = v9;
  }

  return v23;
}

- (void)_initializeProgress
{
  v12 = 0;
  sourceFilePath = [(BLExtractFileOperation *)self sourceFilePath];
  v4 = [NSURL fileURLWithPath:sourceFilePath];

  v11 = 0;
  v5 = [[BUUnarchivingFileCopier alloc] initWithURL:v4 options:4 error:&v11];
  v6 = v11;
  [(BLExtractFileOperation *)self setCopier:v5];

  copier = [(BLExtractFileOperation *)self copier];
  [copier setDelegate:self];

  if (v6)
  {
    v8 = BLBookInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v14 = 1752392040;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error initializing unarchiving copier. sourceURL: %{mask.hash}@, error:  %@", buf, 0x20u);
    }
  }

  else
  {
    copier2 = [(BLExtractFileOperation *)self copier];
    [copier2 countTotalFileSize:&v12 totalFileCount:0];

    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Install-ExtractFile-Op]: Preparing to uncompress to total file size: %llu", buf, 0xCu);
    }

    [(BLOperationProgress *)self->_progress setUnits:1];
    [(BLOperationProgress *)self->_progress setMaxValue:v12];
    [(BLOperationProgress *)self->_progress resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(BLExtractFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (BOOL)_performExtraction:(id *)extraction
{
  sourceFilePath = [(BLExtractFileOperation *)self sourceFilePath];
  v6 = [NSURL fileURLWithPath:sourceFilePath];

  destinationFilePath = [(BLExtractFileOperation *)self destinationFilePath];
  v8 = [NSURL fileURLWithPath:destinationFilePath];

  v9 = BLBookInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    path = [v6 path];
    path2 = [v8 path];
    *buf = 141558786;
    v22 = 1752392040;
    v23 = 2112;
    v24 = path;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2112;
    v28 = path2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Install-ExtractFile-Op]: Extracting %{mask.hash}@ to %{mask.hash}@", buf, 0x2Au);
  }

  copier = [(BLExtractFileOperation *)self copier];
  v13 = copier;
  if (copier)
  {
    v20 = 0;
    v14 = [copier copyToURL:v8 error:&v20];
    v15 = v20;
    if (v14)
    {
      v16 = 1;
      if (!extraction)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = BLBookInstallLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Install-ExtractFile-Op]: Extraction failed with error:  %@", buf, 0xCu);
  }

  v16 = 0;
  if (extraction)
  {
LABEL_11:
    v18 = v15;
    *extraction = v15;
  }

LABEL_12:

  return v16;
}

- (void)_updateProgressWithByteCount:(int64_t)count
{
  currentValue = [(BLOperationProgress *)self->_progress currentValue];
  v6 = currentValue + count;
  maxValue = [(BLOperationProgress *)self->_progress maxValue];
  if (v6 >= maxValue)
  {
    v8 = maxValue;
  }

  else
  {
    v8 = v6;
  }

  if (v8 != currentValue)
  {
    [(BLOperationProgress *)self->_progress setCurrentValue:?];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = *&qword_10013E0B0 + self->_lastSnapshotTime;
  if (v10 < Current)
  {
    [(BLOperationProgress *)self->_progress snapshot];
    installInfo = [(BLExtractFileOperation *)self installInfo];
    progressDelegate = [installInfo progressDelegate];
    [progressDelegate operation:self updatedProgress:self->_progress forInstall:installInfo];

    self->_lastSnapshotTime = Current;
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@(%p)>\n_destinationFilePath = %@\n_sourceFilePath = %@;\n_fileAttributes = %@;", v4, self, self->_destinationFilePath, self->_sourceFilePath, self->_fileAttributes];;

  return v5;
}

- (BLBookInstallInfo)installInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_installInfo);

  return WeakRetained;
}

@end