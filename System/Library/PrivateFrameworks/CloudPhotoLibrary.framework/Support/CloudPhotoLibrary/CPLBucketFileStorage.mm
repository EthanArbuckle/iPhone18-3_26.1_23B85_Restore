@interface CPLBucketFileStorage
- (BOOL)_fixupStoredDestinationURL:(id)l isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)_getIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete forDestinationURL:(id)l error:(id *)error;
- (BOOL)_markURLForDelete:(id)delete error:(id *)error;
- (BOOL)_setIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete onDestinationURL:(id)l clearFlags:(BOOL)flags error:(id *)error;
- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)error;
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l;
- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l;
- (BOOL)hasFileWithIdentity:(id)identity;
- (BOOL)markForDeleteFileWithIdentity:(id)identity error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)releaseFileURL:(id)l error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (CPLBucketFileStorage)initWithAbstractObject:(id)object;
- (id)_destinationURLForIdentity:(id)identity;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler;
- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error;
- (void)_clearFlagsOnURL:(id)l;
- (void)checkFileSizeForIdentity:(id)identity;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLBucketFileStorage

- (void)writeTransactionDidSucceed
{
  temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
  self->_temporarilyRetainedURLsAtTheStartOfTransaction = 0;
}

- (CPLBucketFileStorage)initWithAbstractObject:(id)object
{
  v15.receiver = self;
  v15.super_class = CPLBucketFileStorage;
  v3 = [(CPLBucketFileStorage *)&v15 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    abstractObject = [(CPLBucketFileStorage *)v3 abstractObject];
    baseURL = [abstractObject baseURL];
    v7 = [baseURL URLByAppendingPathComponent:@"filecache" isDirectory:1];
    urlForFiles = v4->_urlForFiles;
    v4->_urlForFiles = v7;

    v9 = objc_alloc_init(NSFileManager);
    fileManager = v4->_fileManager;
    v4->_fileManager = v9;

    logDomain = v4->_logDomain;
    v4->_logDomain = @"engine.filestorage.bucketstorage";

    v12 = objc_alloc_init(NSCountedSet);
    temporarilyRetainedURLs = v4->_temporarilyRetainedURLs;
    v4->_temporarilyRetainedURLs = v12;
  }

  return v4;
}

- (BOOL)openWithError:(id *)error
{
  fileManager = self->_fileManager;
  urlForFiles = self->_urlForFiles;
  v12 = 0;
  v7 = 1;
  v8 = [(NSFileManager *)fileManager createDirectoryAtURL:urlForFiles withIntermediateDirectories:1 attributes:0 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    if ([(NSFileManager *)self->_fileManager cplIsFileExistsError:v9])
    {

      v9 = 0;
    }

    else if (error)
    {
      v10 = v9;
      v7 = 0;
      *error = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_destinationURLForIdentity:(id)identity
{
  identityCopy = identity;
  fingerPrint = [identityCopy fingerPrint];
  fileUTI = [identityCopy fileUTI];
  if (!fingerPrint)
  {
    sub_1001C7A04(a2, self);
  }

  v8 = fileUTI;
  v14 = 0;
  v9 = [CPLResourceIdentity storageNameForFingerPrint:fingerPrint fileUTI:fileUTI bucket:&v14];
  v10 = v14;
  v11 = [(NSURL *)self->_urlForFiles URLByAppendingPathComponent:v10 isDirectory:1];
  v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];

  return v12;
}

- (BOOL)_setIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete onDestinationURL:(id)l clearFlags:(BOOL)flags error:(id *)error
{
  flagsCopy = flags;
  lCopy = l;
  v13 = lCopy;
  if (!(original | delete))
  {
    LOBYTE(v16) = 1;
    goto LABEL_35;
  }

  v14 = open([lCopy fileSystemRepresentation], 0);
  v15 = v14;
  if (error && (v14 & 0x80000000) != 0)
  {
    [CPLErrors posixErrorForURL:v13];
    *error = LOBYTE(v16) = 0;
    goto LABEL_35;
  }

  v16 = v14 >= 0;
  if ((v14 & 0x80000000) == 0 && flagsCopy)
  {
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v14 url:v13];
  }

  if (original && (v15 & 0x80000000) == 0)
  {
    v17 = *original;
    v18 = v13;
    if (v17)
    {
      v19 = fsetxattr(v15, "com.apple.cpl.original", "Y", 1uLL, 0, 0);
      v16 = v19 == 0;
      if (!error || !v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!fremovexattr(v15, "com.apple.cpl.original", 0))
      {
        v16 = 1;
        goto LABEL_20;
      }

      v20 = *__error();
      v16 = v20 == 93;
      if (!error || v20 == 93)
      {
        goto LABEL_20;
      }
    }

    [CPLErrors posixErrorForURL:v18];
    *error = v16 = 0;
LABEL_20:
  }

  if (delete && v16)
  {
    v21 = *delete;
    v22 = v13;
    if (v21)
    {
      v23 = fsetxattr(v15, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
      LOBYTE(v16) = v23 == 0;
      if (!error || !v23)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!fremovexattr(v15, "com.apple.cpl.delete", 0))
      {
        LOBYTE(v16) = 1;
        goto LABEL_32;
      }

      v24 = *__error();
      LOBYTE(v16) = v24 == 93;
      if (!error || v24 == 93)
      {
        goto LABEL_32;
      }
    }

    [CPLErrors posixErrorForURL:v22];
    *error = LOBYTE(v16) = 0;
LABEL_32:
  }

  if ((v15 & 0x80000000) == 0)
  {
    close(v15);
  }

LABEL_35:

  return v16;
}

- (BOOL)_getIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete forDestinationURL:(id)l error:(id *)error
{
  lCopy = l;
  v10 = lCopy;
  if (original | delete)
  {
    v11 = open([lCopy fileSystemRepresentation], 0);
    v12 = v11;
    if (error && v11 < 0)
    {
      [CPLErrors posixErrorForURL:v10];
      *error = LOBYTE(v13) = 0;
    }

    else
    {
      v13 = v11 >= 0;
      if (original && (v11 & 0x80000000) == 0)
      {
        v14 = v10;
        if (fgetxattr(v12, "com.apple.cpl.original", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *original = 0;
            v13 = 1;
          }

          else if (error)
          {
            [CPLErrors posixErrorForURL:v14];
            *error = v13 = 0;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 1;
          *original = 1;
        }
      }

      if (delete && v13)
      {
        v15 = v10;
        if (fgetxattr(v12, "com.apple.cpl.delete", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *delete = 0;
            LOBYTE(v13) = 1;
          }

          else if (error)
          {
            [CPLErrors posixErrorForURL:v15];
            *error = LOBYTE(v13) = 0;
          }

          else
          {
            LOBYTE(v13) = 0;
          }
        }

        else
        {
          LOBYTE(v13) = 1;
          *delete = 1;
        }
      }

      if ((v12 & 0x80000000) == 0)
      {
        close(v12);
      }
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)_fixupStoredDestinationURL:(id)l isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error
{
  originalCopy = original;
  lCopy = l;
  v22 = 0;
  if (originalCopy)
  {
    if (![(CPLBucketFileStorage *)self _getIsOriginal:&v22 + 1 markedForDelete:&v22 forDestinationURL:lCopy error:error])
    {
      v13 = 0;
      goto LABEL_23;
    }

    v11 = HIBYTE(v22) ^ 1;
    if (HIBYTE(v22))
    {
      v12 = 0;
    }

    else
    {
      v12 = &unk_1002C4E20;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (![(CPLBucketFileStorage *)self _getIsOriginal:0 markedForDelete:&v22 forDestinationURL:lCopy error:error])
    {
      goto LABEL_23;
    }
  }

  v14 = v22;
  if (v22)
  {
    v15 = &unk_1002D2CC8;
  }

  else
  {
    v15 = 0;
  }

  *commit = v22;
  if ((v11 & 1) != 0 || v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_1001805BC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        path = [lCopy path];
        v18 = path;
        v19 = "";
        v20 = " original";
        if (!v11)
        {
          v20 = "";
        }

        *buf = 138412802;
        v24 = path;
        v25 = 2080;
        v26 = v20;
        if (v14)
        {
          v19 = " undelete";
        }

        v27 = 2080;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Marking %@:%s%s", buf, 0x20u);
      }
    }

    v13 = [(CPLBucketFileStorage *)self _setIsOriginal:v12 markedForDelete:v15 onDestinationURL:lCopy clearFlags:0 error:error];
  }

  else
  {
    v13 = 1;
  }

LABEL_23:

  return v13;
}

- (BOOL)hasFileWithIdentity:(id)identity
{
  selfCopy = self;
  v4 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identity];
  LOBYTE(selfCopy) = [(NSFileManager *)selfCopy->_fileManager cplFileExistsAtURL:v4];

  return selfCopy;
}

- (void)checkFileSizeForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  v10 = 0;
  v9 = 0;
  v6 = [v5 getResourceValue:&v10 forKey:NSURLFileSizeKey error:&v9];
  v7 = v10;
  v8 = v9;
  if (v6)
  {
    [identityCopy setFileSize:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }
}

- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error
{
  identityCopy = identity;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if (([(NSFileManager *)self->_fileManager cplFileExistsAtURL:v8]& 1) != 0)
  {
    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C7D04();
    }

    if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
    {
      v9 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
      temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
      self->_temporarilyRetainedURLsAtTheStartOfTransaction = v9;
    }

    [(NSCountedSet *)self->_temporarilyRetainedURLs addObject:v8];
  }

  else
  {
    v11 = [NSError alloc];
    v17 = NSFilePathErrorKey;
    path = [v8 path];
    v18 = path;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 initWithDomain:NSCocoaErrorDomain code:4 userInfo:v13];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_markURLForDelete:(id)delete error:(id *)error
{
  deleteCopy = delete;
  v6 = open([deleteCopy fileSystemRepresentation], 0);
  if (v6 < 0)
  {
    if (*__error() == 2)
    {
      v10 = 1;
    }

    else if (error)
    {
      [CPLErrors posixErrorForURL:deleteCopy];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = v6;
    v8 = deleteCopy;
    v9 = fsetxattr(v7, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = [CPLErrors posixErrorForURL:v8];
    }

    close(v7);
  }

  return v10;
}

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler
{
  handlerCopy = handler;
  fileManager = self->_fileManager;
  urlForFiles = self->_urlForFiles;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100181A14;
  v13[3] = &unk_10027BE78;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(NSFileManager *)fileManager enumeratorAtURL:urlForFiles includingPropertiesForKeys:keys options:4 errorHandler:v13];
  v11 = [[CPLBucketFileStorageEnumerator alloc] initWithDirectoryEnumerator:v10];

  return v11;
}

- (void)writeTransactionDidFail
{
  temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
  if (temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    objc_storeStrong(&self->_temporarilyRetainedURLs, temporarilyRetainedURLsAtTheStartOfTransaction);
    v4 = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = 0;
  }
}

- (void)_clearFlagsOnURL:(id)l
{
  lCopy = l;
  v5 = open([lCopy fileSystemRepresentation], 0);
  if ((v5 & 0x80000000) != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_1001805BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        path = [lCopy path];
        v9 = [CPLErrors posixErrorForURL:lCopy];
        v11 = 138412546;
        v12 = path;
        sub_1000033B4();
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to clear flags when storing resource at %@ (ignoring): %@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v6 = v5;
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v5 url:lCopy];
    close(v6);
  }
}

- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  path = [v13 path];
  v16 = [v14 fileExistsAtPath:path];

  v17 = *(v7 + 48);
  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v13 lastPathComponent];
        sub_100181C00();
        sub_100181CB8();
        sub_100181C30();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }
    }

    v75 = v9;
    v35 = *(v7 + 16);
    v78 = 0;
    v36 = [v35 cplCopyItemAtURL:v11 toURL:v13 error:&v78];
    v37 = v78;
    v40 = v37;
    if (v36)
    {
      v26 = v37;
    }

    else
    {
      if (![*(v7 + 16) cplIsFileDoesNotExistError:v37])
      {
        v26 = v40;
        goto LABEL_28;
      }

      HIDWORD(v74) = v8;
      uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
      v49 = uRLByDeletingLastPathComponent;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v50 = sub_1001805BC();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v49 path];
          v79 = 138412290;
          v80 = path2;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v52, v53, v54, v55, v56, v57);
        }
      }

      v58 = sub_100181C84(uRLByDeletingLastPathComponent, v42, v43, v44, v45, v46, v47, v48, v73, v74, v75, v76, v77);
      v26 = v77;

      if ((v58 & 1) == 0)
      {

        goto LABEL_28;
      }

      v59 = *(v7 + 16);
      v76 = v26;
      v60 = [v59 cplCopyItemAtURL:v11 toURL:v13 error:&v76];
      v61 = v76;

      v26 = v61;
      if (!v60)
      {
LABEL_28:
        if ([*(v7 + 16) cplIsFileExistsError:v26])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v62 = sub_1001805BC();
            if (sub_100181CE4(v62))
            {
              path3 = [v13 path];
              v79 = 138412290;
              v80 = path3;
              sub_100181C3C();
              v69 = 12;
LABEL_35:
              _os_log_impl(v64, v65, v66, v67, v68, v69);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v70 = sub_1001805BC();
          if (sub_100181CE4(v70))
          {
            path3 = [v13 path];
            sub_100181C00();
            v81 = v71;
            v82 = v26;
            sub_100181C3C();
            v69 = 32;
            goto LABEL_35;
          }

LABEL_36:

          goto LABEL_37;
        }

        LOBYTE(v16) = 0;
        goto LABEL_37;
      }
    }

    if (sub_100181C5C(v37, v38, v39, &unk_1002C4E20))
    {
      goto LABEL_17;
    }

    [*(v7 + 16) removeItemAtURL:v13 error:0];
    goto LABEL_28;
  }

  if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
  {
    v18 = sub_1001805BC();
    if (sub_1000374B8(v18))
    {
      lastPathComponent2 = [v13 lastPathComponent];
      sub_100181C00();
      sub_100181C30();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
    }

    v26 = 0;
    goto LABEL_36;
  }

  v26 = 0;
LABEL_17:
  LOBYTE(v16) = 1;
LABEL_37:

  return v16;
}

- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  path = [v13 path];
  v16 = [v14 fileExistsAtPath:path];

  v17 = *(v7 + 48);
  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v13 lastPathComponent];
        sub_100181C00();
        sub_100181CB8();
        sub_100181C30();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }
    }

    v73 = v9;
    v76 = 0;
    v35 = [v11 writeToURL:v13 options:1 error:&v76];
    v36 = v76;
    v39 = v36;
    if (v35)
    {
      v26 = v36;
    }

    else
    {
      if (![*(v7 + 16) cplIsFileDoesNotExistError:v36])
      {
        v26 = v39;
        goto LABEL_28;
      }

      HIDWORD(v72) = v8;
      uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
      v48 = uRLByDeletingLastPathComponent;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v49 = sub_1001805BC();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v48 path];
          v77 = 138412290;
          v78 = path2;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v51, v52, v53, v54, v55, v56);
        }
      }

      v57 = sub_100181C84(uRLByDeletingLastPathComponent, v41, v42, v43, v44, v45, v46, v47, v71, v72, v73, v74, v75);
      v26 = v75;

      if ((v57 & 1) == 0)
      {

        goto LABEL_28;
      }

      v74 = v26;
      v58 = [v11 writeToURL:v13 options:1 error:&v74];
      v59 = v74;

      v26 = v59;
      if (!v58)
      {
LABEL_28:
        if ([*(v7 + 16) cplIsFileExistsError:v26])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v60 = sub_1001805BC();
            if (sub_100181CE4(v60))
            {
              path3 = [v13 path];
              sub_100181C00();
              sub_100181C3C();
              v67 = 22;
LABEL_35:
              _os_log_impl(v62, v63, v64, v65, v66, v67);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v68 = sub_1001805BC();
          if (sub_100181CE4(v68))
          {
            path3 = [v13 path];
            sub_100181C00();
            v79 = v69;
            v80 = v26;
            sub_100181C3C();
            v67 = 32;
            goto LABEL_35;
          }

LABEL_36:

          goto LABEL_37;
        }

        LOBYTE(v16) = 0;
        goto LABEL_37;
      }
    }

    if (sub_100181C5C(v36, v37, v38, &unk_1002C4E20))
    {
      goto LABEL_17;
    }

    [*(v7 + 16) removeItemAtURL:v13 error:0];
    goto LABEL_28;
  }

  if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
  {
    v18 = sub_1001805BC();
    if (sub_1000374B8(v18))
    {
      lastPathComponent2 = [v13 lastPathComponent];
      sub_100181C00();
      sub_100181C30();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
    }

    v26 = 0;
    goto LABEL_36;
  }

  v26 = 0;
LABEL_17:
  LOBYTE(v16) = 1;
LABEL_37:

  return v16;
}

- (BOOL)releaseFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001805BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [lCopy lastPathComponent];
      sub_10000AF90();
      sub_1000374A0(&_mh_execute_header, v6, v8, "RELEASING %@", v12);
    }
  }

  if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    v9 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
    temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = v9;
  }

  [(NSCountedSet *)self->_temporarilyRetainedURLs removeObject:lCopy];

  return 1;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)error
{
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001805BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DISCARDING al retained resources", v8, 2u);
    }
  }

  if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    v5 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
    temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = v5;
  }

  [(NSCountedSet *)self->_temporarilyRetainedURLs removeAllObjects];
  return 1;
}

- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error
{
  identityCopy = identity;
  v9 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if (([(NSCountedSet *)self->_temporarilyRetainedURLs containsObject:v9]& 1) == 0)
  {
    if (original)
    {
      v19 = 0;
    }

    else
    {
      LOBYTE(v52) = 0;
      v51 = 0;
      v5 = [(CPLBucketFileStorage *)self _getIsOriginal:&v52 markedForDelete:0 forDestinationURL:v9 error:&v51];
      v39 = v51;
      v18 = v39;
      if (!v5)
      {
        if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
        {
          v30 = sub_1001805BC();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            lastPathComponent = [v9 lastPathComponent];
            sub_100181C18();
            sub_100181C30();
            goto LABEL_33;
          }

LABEL_34:
          v38 = 1;
          goto LABEL_22;
        }

LABEL_35:
        v38 = 1;
        goto LABEL_37;
      }

      if (v52)
      {
        if (!self->_trackAllStoresAndDeletes || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_21;
        }

        v40 = sub_1001805BC();
        if (sub_1000374B8(v40))
        {
          lastPathComponent2 = [v9 lastPathComponent];
          sub_100181C18();
          sub_100181C30();
          _os_log_impl(v42, v43, v44, v45, v46, v47);
        }

        goto LABEL_7;
      }

      v19 = v39;
    }

    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      v20 = sub_1001805BC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent3 = [v9 lastPathComponent];
        sub_100181C18();
        sub_100181C30();
        _os_log_impl(v22, v23, v24, v25, v26, v27);
      }
    }

    fileManager = self->_fileManager;
    v49 = v19;
    v29 = [(NSFileManager *)fileManager removeItemAtURL:v9 error:&v49];
    v18 = v49;

    if ((v29 & 1) == 0)
    {
      if (![(NSFileManager *)self->_fileManager cplIsFileDoesNotExistError:v18])
      {
        v38 = 0;
        goto LABEL_37;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = sub_1001805BC();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          lastPathComponent = [v9 path];
          v52 = 138412290;
          v53 = lastPathComponent;
          sub_100181CAC();
LABEL_33:
          _os_log_impl(v32, v33, v34, v35, v36, v37);

          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  if (!self->_trackAllStoresAndDeletes || (_CPLSilentLogging & 1) != 0)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v10 = sub_1001805BC();
  if (sub_1000374B8(v10))
  {
    lastPathComponent4 = [v9 lastPathComponent];
    sub_100181C18();
    sub_100181C30();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
  }

  v18 = 0;
LABEL_7:

LABEL_21:
  v50 = v18;
  v38 = [(CPLBucketFileStorage *)self _markURLForDelete:v9 error:&v50];
  v30 = v18;
  v18 = v50;
LABEL_22:

LABEL_37:
  return v38;
}

- (BOOL)markForDeleteFileWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_1000374B8(v9))
    {
      lastPathComponent = [v8 lastPathComponent];
      *v20 = 138412546;
      *&v20[4] = identityCopy;
      sub_1000033B4();
      *&v20[14] = v11;
      sub_100181C30();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = [(CPLBucketFileStorage *)self _markURLForDelete:v8 error:error, *v20, *&v20[16]];

  return v18;
}

- (BOOL)resetWithError:(id *)error
{
  urlForFiles = self->_urlForFiles;
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v8 = [(NSURL *)urlForFiles URLByAppendingPathExtension:uUIDString];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_10000FAE0(v9))
    {
      path = [(NSURL *)self->_urlForFiles path];
      [v8 path];
      *buf = 138412546;
      v80 = path;
      v82 = v81 = 2112;
      sub_100181CC4();
      sub_100181C30();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
    }
  }

  if ([(NSFileManager *)self->_fileManager moveItemAtURL:self->_urlForFiles toURL:v8 error:error])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_1001805BC();
      if (sub_10000FAE0(v17))
      {
        path2 = [(NSURL *)self->_urlForFiles path];
        sub_100181C4C(path2, 5.7779e-34);
        sub_100181CC4();
        sub_1000374A0(v19, v20, v21, v22, v23);
      }
    }

    fileManager = self->_fileManager;
    v25 = self->_urlForFiles;
    v77 = 0;
    v26 = [(NSFileManager *)fileManager createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v77];
    v27 = v77;
    if (v26)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = sub_1001805BC();
        if (sub_10000FAE0(v28))
        {
          path3 = [v8 path];
          sub_100181C4C(path3, 5.7779e-34);
          sub_100181CC4();
          sub_1000374A0(v30, v31, v32, v33, v34);
        }
      }

      v66 = v27;
      [(NSFileManager *)self->_fileManager setDelegate:self];
      v35 = self->_fileManager;
      v76 = 0;
      v36 = [(NSFileManager *)v35 removeItemAtURL:v8 error:&v76];
      v37 = v76;
      if ((v36 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v38 = sub_1001805BC();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          path4 = [v8 path];
          *buf = 138412546;
          v80 = path4;
          v81 = 2112;
          v82 = v37;
          sub_100181CC4();
          _os_log_impl(v40, v41, OS_LOG_TYPE_ERROR, v42, v43, 0x16u);
        }
      }

      v67 = v8;
      uRLByDeletingLastPathComponent = [(NSURL *)self->_urlForFiles URLByDeletingLastPathComponent];
      lastPathComponent = [(NSURL *)self->_urlForFiles lastPathComponent];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      selfCopy = self;
      v65 = uRLByDeletingLastPathComponent;
      obj = [(NSFileManager *)self->_fileManager enumeratorAtURL:uRLByDeletingLastPathComponent includingPropertiesForKeys:0 options:1 errorHandler:&stru_10027BEB8];
      v46 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v73;
        v68 = *v73;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v73 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v72 + 1) + 8 * i);
            lastPathComponent2 = [v50 lastPathComponent];
            pathExtension = [lastPathComponent2 pathExtension];
            stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
            if ([pathExtension length] && objc_msgSend(stringByDeletingPathExtension, "isEqualToString:", lastPathComponent))
            {
              v54 = lastPathComponent;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v55 = sub_1001805BC();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v80 = lastPathComponent2;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found orphaned file cache to clean-up %@. Cleaning it up now", buf, 0xCu);
                }
              }

              v56 = selfCopy->_fileManager;
              v71 = v37;
              v57 = [(NSFileManager *)v56 removeItemAtURL:v50 error:&v71];
              v58 = v71;

              if ((v57 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
              {
                v59 = sub_1001805BC();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  path5 = [v50 path];
                  sub_100181C4C(path5, 5.778e-34);
                  v81 = 2112;
                  *(v61 + 14) = v58;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to effectively remove %@: %@", buf, 0x16u);
                }
              }

              v37 = v58;
              lastPathComponent = v54;
              v48 = v68;
            }
          }

          v47 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v47);
      }

      [(NSFileManager *)selfCopy->_fileManager setDelegate:0];
      v62 = 1;
      v27 = v66;
      v8 = v67;
    }

    else if (([(NSFileManager *)self->_fileManager cplIsFileExistsError:v27]& 1) != 0)
    {
      v62 = 1;
    }

    else if (error)
    {
      v63 = v27;
      v62 = 0;
      *error = v27;
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v5 = [lCopy getResourceValue:&v12 forKey:NSURLIsDirectoryKey error:0];
  v6 = v12;
  v7 = v6;
  if (v5 && ([v6 BOOLValue] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_1001805BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [lCopy lastPathComponent];
      v13 = 138412290;
      v14 = lastPathComponent;
      sub_1000374A0(&_mh_execute_header, v8, v10, "Deleting %@", &v13);
    }
  }

  return 1;
}

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_1000033C0(v9))
    {
      path = [lCopy path];
      sub_10000AF90();
      sub_1000033B4();
      sub_100003548(&_mh_execute_header, v11, v12, "Failed to remove %@: %@", v13, v14, v15, v16, v18);
    }
  }

  return 1;
}

@end