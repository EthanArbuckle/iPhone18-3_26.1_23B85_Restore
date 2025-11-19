@interface CPLBucketFileStorage
- (BOOL)_fixupStoredDestinationURL:(id)a3 isOriginal:(BOOL)a4 needsCommit:(BOOL *)a5 error:(id *)a6;
- (BOOL)_getIsOriginal:(BOOL *)a3 markedForDelete:(BOOL *)a4 forDestinationURL:(id)a5 error:(id *)a6;
- (BOOL)_markURLForDelete:(id)a3 error:(id *)a4;
- (BOOL)_setIsOriginal:(BOOL *)a3 markedForDelete:(BOOL *)a4 onDestinationURL:(id)a5 clearFlags:(BOOL)a6 error:(id *)a7;
- (BOOL)deleteFileWithIdentity:(id)a3 includingOriginal:(BOOL)a4 error:(id *)a5;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)a3;
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5;
- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4;
- (BOOL)hasFileWithIdentity:(id)a3;
- (BOOL)markForDeleteFileWithIdentity:(id)a3 error:(id *)a4;
- (BOOL)openWithError:(id *)a3;
- (BOOL)releaseFileURL:(id)a3 error:(id *)a4;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)storeUnretainedData:(id)a3 identity:(id)a4 isOriginal:(BOOL)a5 error:(id *)a6;
- (BOOL)storeUnretainedFileAtURL:(id)a3 identity:(id)a4 isOriginal:(BOOL)a5 error:(id *)a6;
- (CPLBucketFileStorage)initWithAbstractObject:(id)a3;
- (id)_destinationURLForIdentity:(id)a3;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)a3 errorHandler:(id)a4;
- (id)retainFileURLForIdentity:(id)a3 resourceType:(unint64_t)a4 error:(id *)a5;
- (void)_clearFlagsOnURL:(id)a3;
- (void)checkFileSizeForIdentity:(id)a3;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLBucketFileStorage

- (void)writeTransactionDidSucceed
{
  temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
  self->_temporarilyRetainedURLsAtTheStartOfTransaction = 0;
}

- (CPLBucketFileStorage)initWithAbstractObject:(id)a3
{
  v15.receiver = self;
  v15.super_class = CPLBucketFileStorage;
  v3 = [(CPLBucketFileStorage *)&v15 initWithAbstractObject:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CPLBucketFileStorage *)v3 abstractObject];
    v6 = [v5 baseURL];
    v7 = [v6 URLByAppendingPathComponent:@"filecache" isDirectory:1];
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

- (BOOL)openWithError:(id *)a3
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

    else if (a3)
    {
      v10 = v9;
      v7 = 0;
      *a3 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_destinationURLForIdentity:(id)a3
{
  v5 = a3;
  v6 = [v5 fingerPrint];
  v7 = [v5 fileUTI];
  if (!v6)
  {
    sub_1001C7A04(a2, self);
  }

  v8 = v7;
  v14 = 0;
  v9 = [CPLResourceIdentity storageNameForFingerPrint:v6 fileUTI:v7 bucket:&v14];
  v10 = v14;
  v11 = [(NSURL *)self->_urlForFiles URLByAppendingPathComponent:v10 isDirectory:1];
  v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];

  return v12;
}

- (BOOL)_setIsOriginal:(BOOL *)a3 markedForDelete:(BOOL *)a4 onDestinationURL:(id)a5 clearFlags:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a5;
  v13 = v12;
  if (!(a3 | a4))
  {
    LOBYTE(v16) = 1;
    goto LABEL_35;
  }

  v14 = open([v12 fileSystemRepresentation], 0);
  v15 = v14;
  if (a7 && (v14 & 0x80000000) != 0)
  {
    [CPLErrors posixErrorForURL:v13];
    *a7 = LOBYTE(v16) = 0;
    goto LABEL_35;
  }

  v16 = v14 >= 0;
  if ((v14 & 0x80000000) == 0 && v8)
  {
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v14 url:v13];
  }

  if (a3 && (v15 & 0x80000000) == 0)
  {
    v17 = *a3;
    v18 = v13;
    if (v17)
    {
      v19 = fsetxattr(v15, "com.apple.cpl.original", "Y", 1uLL, 0, 0);
      v16 = v19 == 0;
      if (!a7 || !v19)
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
      if (!a7 || v20 == 93)
      {
        goto LABEL_20;
      }
    }

    [CPLErrors posixErrorForURL:v18];
    *a7 = v16 = 0;
LABEL_20:
  }

  if (a4 && v16)
  {
    v21 = *a4;
    v22 = v13;
    if (v21)
    {
      v23 = fsetxattr(v15, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
      LOBYTE(v16) = v23 == 0;
      if (!a7 || !v23)
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
      if (!a7 || v24 == 93)
      {
        goto LABEL_32;
      }
    }

    [CPLErrors posixErrorForURL:v22];
    *a7 = LOBYTE(v16) = 0;
LABEL_32:
  }

  if ((v15 & 0x80000000) == 0)
  {
    close(v15);
  }

LABEL_35:

  return v16;
}

- (BOOL)_getIsOriginal:(BOOL *)a3 markedForDelete:(BOOL *)a4 forDestinationURL:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = v9;
  if (a3 | a4)
  {
    v11 = open([v9 fileSystemRepresentation], 0);
    v12 = v11;
    if (a6 && v11 < 0)
    {
      [CPLErrors posixErrorForURL:v10];
      *a6 = LOBYTE(v13) = 0;
    }

    else
    {
      v13 = v11 >= 0;
      if (a3 && (v11 & 0x80000000) == 0)
      {
        v14 = v10;
        if (fgetxattr(v12, "com.apple.cpl.original", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *a3 = 0;
            v13 = 1;
          }

          else if (a6)
          {
            [CPLErrors posixErrorForURL:v14];
            *a6 = v13 = 0;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 1;
          *a3 = 1;
        }
      }

      if (a4 && v13)
      {
        v15 = v10;
        if (fgetxattr(v12, "com.apple.cpl.delete", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *a4 = 0;
            LOBYTE(v13) = 1;
          }

          else if (a6)
          {
            [CPLErrors posixErrorForURL:v15];
            *a6 = LOBYTE(v13) = 0;
          }

          else
          {
            LOBYTE(v13) = 0;
          }
        }

        else
        {
          LOBYTE(v13) = 1;
          *a4 = 1;
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

- (BOOL)_fixupStoredDestinationURL:(id)a3 isOriginal:(BOOL)a4 needsCommit:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v22 = 0;
  if (v8)
  {
    if (![(CPLBucketFileStorage *)self _getIsOriginal:&v22 + 1 markedForDelete:&v22 forDestinationURL:v10 error:a6])
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
    if (![(CPLBucketFileStorage *)self _getIsOriginal:0 markedForDelete:&v22 forDestinationURL:v10 error:a6])
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

  *a5 = v22;
  if ((v11 & 1) != 0 || v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_1001805BC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v10 path];
        v18 = v17;
        v19 = "";
        v20 = " original";
        if (!v11)
        {
          v20 = "";
        }

        *buf = 138412802;
        v24 = v17;
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

    v13 = [(CPLBucketFileStorage *)self _setIsOriginal:v12 markedForDelete:v15 onDestinationURL:v10 clearFlags:0 error:a6];
  }

  else
  {
    v13 = 1;
  }

LABEL_23:

  return v13;
}

- (BOOL)hasFileWithIdentity:(id)a3
{
  v3 = self;
  v4 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:a3];
  LOBYTE(v3) = [(NSFileManager *)v3->_fileManager cplFileExistsAtURL:v4];

  return v3;
}

- (void)checkFileSizeForIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:v4];
  v10 = 0;
  v9 = 0;
  v6 = [v5 getResourceValue:&v10 forKey:NSURLFileSizeKey error:&v9];
  v7 = v10;
  v8 = v9;
  if (v6)
  {
    [v4 setFileSize:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }
}

- (id)retainFileURLForIdentity:(id)a3 resourceType:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:v7];
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
    v12 = [v8 path];
    v18 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 initWithDomain:NSCocoaErrorDomain code:4 userInfo:v13];

    if (a5)
    {
      v15 = v14;
      *a5 = v14;
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_markURLForDelete:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = open([v5 fileSystemRepresentation], 0);
  if (v6 < 0)
  {
    if (*__error() == 2)
    {
      v10 = 1;
    }

    else if (a4)
    {
      [CPLErrors posixErrorForURL:v5];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = v6;
    v8 = v5;
    v9 = fsetxattr(v7, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
    v10 = v9 == 0;
    if (a4 && v9)
    {
      *a4 = [CPLErrors posixErrorForURL:v8];
    }

    close(v7);
  }

  return v10;
}

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  fileManager = self->_fileManager;
  urlForFiles = self->_urlForFiles;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100181A14;
  v13[3] = &unk_10027BE78;
  v14 = v6;
  v9 = v6;
  v10 = [(NSFileManager *)fileManager enumeratorAtURL:urlForFiles includingPropertiesForKeys:a3 options:4 errorHandler:v13];
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

- (void)_clearFlagsOnURL:(id)a3
{
  v4 = a3;
  v5 = open([v4 fileSystemRepresentation], 0);
  if ((v5 & 0x80000000) != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_1001805BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v4 path];
        v9 = [CPLErrors posixErrorForURL:v4];
        v11 = 138412546;
        v12 = v8;
        sub_1000033B4();
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to clear flags when storing resource at %@ (ignoring): %@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v6 = v5;
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v5 url:v4];
    close(v6);
  }
}

- (BOOL)storeUnretainedFileAtURL:(id)a3 identity:(id)a4 isOriginal:(BOOL)a5 error:(id *)a6
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  v15 = [v13 path];
  v16 = [v14 fileExistsAtPath:v15];

  v17 = *(v7 + 48);
  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v13 lastPathComponent];
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
      v41 = [v13 URLByDeletingLastPathComponent];
      v49 = v41;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v50 = sub_1001805BC();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = [v49 path];
          v79 = 138412290;
          v80 = v51;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v52, v53, v54, v55, v56, v57);
        }
      }

      v58 = sub_100181C84(v41, v42, v43, v44, v45, v46, v47, v48, v73, v74, v75, v76, v77);
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
              v63 = [v13 path];
              v79 = 138412290;
              v80 = v63;
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
            v63 = [v13 path];
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
      v19 = [v13 lastPathComponent];
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

- (BOOL)storeUnretainedData:(id)a3 identity:(id)a4 isOriginal:(BOOL)a5 error:(id *)a6
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  v15 = [v13 path];
  v16 = [v14 fileExistsAtPath:v15];

  v17 = *(v7 + 48);
  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v13 lastPathComponent];
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
      v40 = [v13 URLByDeletingLastPathComponent];
      v48 = v40;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v49 = sub_1001805BC();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = [v48 path];
          v77 = 138412290;
          v78 = v50;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v51, v52, v53, v54, v55, v56);
        }
      }

      v57 = sub_100181C84(v40, v41, v42, v43, v44, v45, v46, v47, v71, v72, v73, v74, v75);
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
              v61 = [v13 path];
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
            v61 = [v13 path];
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
      v19 = [v13 lastPathComponent];
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

- (BOOL)releaseFileURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001805BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 lastPathComponent];
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

  [(NSCountedSet *)self->_temporarilyRetainedURLs removeObject:v5];

  return 1;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)a3
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

- (BOOL)deleteFileWithIdentity:(id)a3 includingOriginal:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:v8];
  if (([(NSCountedSet *)self->_temporarilyRetainedURLs containsObject:v9]& 1) == 0)
  {
    if (a4)
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
            v31 = [v9 lastPathComponent];
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
          v41 = [v9 lastPathComponent];
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
        v21 = [v9 lastPathComponent];
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
          v31 = [v9 path];
          v52 = 138412290;
          v53 = v31;
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
    v11 = [v9 lastPathComponent];
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

- (BOOL)markForDeleteFileWithIdentity:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:v7];
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_1000374B8(v9))
    {
      v10 = [v8 lastPathComponent];
      *v20 = 138412546;
      *&v20[4] = v7;
      sub_1000033B4();
      *&v20[14] = v11;
      sub_100181C30();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = [(CPLBucketFileStorage *)self _markURLForDelete:v8 error:a4, *v20, *&v20[16]];

  return v18;
}

- (BOOL)resetWithError:(id *)a3
{
  urlForFiles = self->_urlForFiles;
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [(NSURL *)urlForFiles URLByAppendingPathExtension:v7];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_10000FAE0(v9))
    {
      v10 = [(NSURL *)self->_urlForFiles path];
      [v8 path];
      *buf = 138412546;
      v80 = v10;
      v82 = v81 = 2112;
      sub_100181CC4();
      sub_100181C30();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
    }
  }

  if ([(NSFileManager *)self->_fileManager moveItemAtURL:self->_urlForFiles toURL:v8 error:a3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_1001805BC();
      if (sub_10000FAE0(v17))
      {
        v18 = [(NSURL *)self->_urlForFiles path];
        sub_100181C4C(v18, 5.7779e-34);
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
          v29 = [v8 path];
          sub_100181C4C(v29, 5.7779e-34);
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
          v39 = [v8 path];
          *buf = 138412546;
          v80 = v39;
          v81 = 2112;
          v82 = v37;
          sub_100181CC4();
          _os_log_impl(v40, v41, OS_LOG_TYPE_ERROR, v42, v43, 0x16u);
        }
      }

      v67 = v8;
      v44 = [(NSURL *)self->_urlForFiles URLByDeletingLastPathComponent];
      v45 = [(NSURL *)self->_urlForFiles lastPathComponent];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v69 = self;
      v65 = v44;
      obj = [(NSFileManager *)self->_fileManager enumeratorAtURL:v44 includingPropertiesForKeys:0 options:1 errorHandler:&stru_10027BEB8];
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
            v51 = [v50 lastPathComponent];
            v52 = [v51 pathExtension];
            v53 = [v51 stringByDeletingPathExtension];
            if ([v52 length] && objc_msgSend(v53, "isEqualToString:", v45))
            {
              v54 = v45;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v55 = sub_1001805BC();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v80 = v51;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found orphaned file cache to clean-up %@. Cleaning it up now", buf, 0xCu);
                }
              }

              v56 = v69->_fileManager;
              v71 = v37;
              v57 = [(NSFileManager *)v56 removeItemAtURL:v50 error:&v71];
              v58 = v71;

              if ((v57 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
              {
                v59 = sub_1001805BC();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v60 = [v50 path];
                  sub_100181C4C(v60, 5.778e-34);
                  v81 = 2112;
                  *(v61 + 14) = v58;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to effectively remove %@: %@", buf, 0x16u);
                }
              }

              v37 = v58;
              v45 = v54;
              v48 = v68;
            }
          }

          v47 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v47);
      }

      [(NSFileManager *)v69->_fileManager setDelegate:0];
      v62 = 1;
      v27 = v66;
      v8 = v67;
    }

    else if (([(NSFileManager *)self->_fileManager cplIsFileExistsError:v27]& 1) != 0)
    {
      v62 = 1;
    }

    else if (a3)
    {
      v63 = v27;
      v62 = 0;
      *a3 = v27;
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

- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4
{
  v4 = a4;
  v12 = 0;
  v5 = [v4 getResourceValue:&v12 forKey:NSURLIsDirectoryKey error:0];
  v6 = v12;
  v7 = v6;
  if (v5 && ([v6 BOOLValue] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_1001805BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 lastPathComponent];
      v13 = 138412290;
      v14 = v9;
      sub_1000374A0(&_mh_execute_header, v8, v10, "Deleting %@", &v13);
    }
  }

  return 1;
}

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1001805BC();
    if (sub_1000033C0(v9))
    {
      v10 = [v8 path];
      sub_10000AF90();
      sub_1000033B4();
      sub_100003548(&_mh_execute_header, v11, v12, "Failed to remove %@: %@", v13, v14, v15, v16, v18);
    }
  }

  return 1;
}

@end