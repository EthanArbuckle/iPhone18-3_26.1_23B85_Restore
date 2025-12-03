@interface CPLEngineFileStorage
+ (id)platformImplementationProtocol;
- (BOOL)_fixupIdentity:(id)identity fileURL:(id)l data:(id)data error:(id *)error;
- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)addDeleteFlagToFileAtURL:(id)l error:(id *)error;
- (BOOL)checkIsEmpty;
- (BOOL)closeWithError:(id *)error;
- (BOOL)commitFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)error;
- (BOOL)discardUncommittedFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)discardUncommittedFileWithIdentity:(id)identity error:(id *)error;
- (BOOL)doWrite:(id)write error:(id *)error;
- (BOOL)hasCrashMarker;
- (BOOL)hasFileWithIdentifier:(id)identifier;
- (BOOL)hasFileWithIdentity:(id)identity;
- (BOOL)openWithFileRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)openWithRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)releaseFileURL:(id)l error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)storeData:(id)data identifier:(id)identifier needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)storeUnretainedData:(id)data identifier:(id)identifier error:(id *)error;
- (BOOL)storeUnretainedFileAtURL:(id)l identifier:(id)identifier error:(id *)error;
- (BOOL)trackAllStoresAndDeletes;
- (CPLEngineFileStorage)initWithBaseURL:(id)l;
- (id)_identityForIdentifier:(id)identifier;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler;
- (id)retainFileURLForIdentifier:(id)identifier error:(id *)error;
- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error;
- (void)_addIdentityToUncommittedFiles:(id)files;
- (void)_removeIdentityFromUncommittedFiles:(id)files;
- (void)checkFileSizeForIdentity:(id)identity;
- (void)doRead:(id)read;
- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)transaction;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineFileStorage

- (void)writeTransactionDidSucceed
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject writeTransactionDidSucceed];
}

- (id)retainFileURLForIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  v7 = [(CPLEngineFileStorage *)self retainFileURLForIdentity:v6 resourceType:0 error:error];

  return v7;
}

- (BOOL)hasFileWithIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(selfCopy) = [(CPLEngineFileStorage *)selfCopy hasFileWithIdentity:v4];

  return selfCopy;
}

- (BOOL)storeUnretainedData:(id)data identifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeUnretainedData:dataCopy identity:v9 isOriginal:0 error:error];

  return error;
}

- (BOOL)storeUnretainedFileAtURL:(id)l identifier:(id)identifier error:(id *)error
{
  lCopy = l;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeUnretainedFileAtURL:lCopy identity:v9 isOriginal:0 error:error];

  return error;
}

- (BOOL)deleteFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self deleteFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)discardUncommittedFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self discardUncommittedFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)commitFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self commitFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)storeData:(id)data identifier:(id)identifier needsCommit:(BOOL *)commit error:(id *)error
{
  dataCopy = data;
  v11 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeData:dataCopy identity:v11 isOriginal:0 needsCommit:commit error:error];

  return error;
}

- (id)_identityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(CPLResourceIdentity);
  [(CPLResourceIdentity *)v4 setFingerPrint:identifierCopy];

  [(CPLResourceIdentity *)v4 setFileUTI:@"public.data"];

  return v4;
}

- (BOOL)openWithFileRecoveryHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke;
  v9[3] = &unk_1E861BE38;
  v10 = handlerCopy;
  v7 = handlerCopy;
  LOBYTE(error) = [(CPLEngineFileStorage *)self openWithRecoveryHandler:v9 error:error];

  return error;
}

uint64_t __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fingerPrint];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (BOOL)addDeleteFlagToFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject addDeleteFlagToFileAtURL:lCopy error:error];

  return error;
}

- (void)writeTransactionDidFail
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject writeTransactionDidFail];
}

- (BOOL)checkIsEmpty
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  fileEnumerator = [(CPLEngineFileStorage *)self fileEnumerator];
  v3 = [fileEnumerator countByEnumeratingWithState:v8 objects:v11 count:16];
  if (v3 && (_CPLSilentLogging & 1) == 0)
  {
    v4 = **(&v8[0] + 1);
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Resource cache contains at least one item: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3 == 0;
}

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v9 = [platformObject fileEnumeratorIncludingPropertiesForKeys:keysCopy errorHandler:handlerCopy];

  return v9;
}

uint64_t __79__CPLEngineFileStorage__compactStorageIncludeOriginals_desiredFreeSpace_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Error accessing %@ file: %@", &v11, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)resetWithError:(id *)error
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject resetWithError:error];

  return error;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Discarding all URLs for upload", &v16, 2u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v7 = [platformObject discardAllRetainedFileURLsWithError:error];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        v9 = "All URLs were discarded successfully";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEBUG;
        v12 = 2;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v10, v11, v9, &v16, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      v16 = 138412290;
      v17 = v13;
      v9 = "Unable to discard all URLs: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_12;
    }

LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)releaseFileURL:(id)l error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      path = [lCopy path];
      v19 = 138412290;
      v20 = path;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Releasing %@", &v19, 0xCu);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v10 = [platformObject releaseFileURL:lCopy error:error];

  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19) = 0;
        v12 = "URL was released successfully";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 2;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v13, v14, v12, &v19, v15);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *error;
      v19 = 138412290;
      v20 = v16;
      v12 = "Unable to release URL: %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
      goto LABEL_12;
    }

LABEL_13:
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [CPLResource shortDescriptionForResourceType:type];
      v17 = 138412546;
      v18 = identityCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Retaining URL for %@ (%@)", &v17, 0x16u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v12 = [platformObject retainFileURLForIdentity:identityCopy resourceType:type error:error];

  if (v12 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      path = [v12 path];
      v17 = 138412290;
      v18 = path;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "Retained URL: %@", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)checkFileSizeForIdentity:(id)identity
{
  identityCopy = identity;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject checkFileSizeForIdentity:identityCopy];
}

- (BOOL)hasFileWithIdentity:(id)identity
{
  identityCopy = identity;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v6 = [platformObject hasFileWithIdentity:identityCopy];

  return v6;
}

- (BOOL)discardUncommittedFileWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:identityCopy error:error];
  if (v7)
  {
    [(CPLEngineFileStorage *)self _removeIdentityFromUncommittedFiles:identityCopy];
  }

  return v7;
}

uint64_t __72__CPLEngineFileStorage_storeData_identity_isOriginal_needsCommit_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) _addIdentityToUncommittedFiles:*(a1 + 40)];
  return 1;
}

uint64_t __92__CPLEngineFileStorage_storeFileAtURL_identity_isOriginal_moveIfPossible_needsCommit_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) _addIdentityToUncommittedFiles:*(a1 + 40)];
  return 1;
}

- (BOOL)_fixupIdentity:(id)identity fileURL:(id)l data:(id)data error:(id *)error
{
  identityCopy = identity;
  lCopy = l;
  fileUTI = [identityCopy fileUTI];
  if (!fileUTI)
  {
    pathExtension = [lCopy pathExtension];
    if (![pathExtension length])
    {
      fileURL = [identityCopy fileURL];
      pathExtension2 = [fileURL pathExtension];

      pathExtension = pathExtension2;
    }

    v14 = [CPLResourceIdentity fileUTIForExtension:pathExtension];
    [identityCopy setFileUTI:v14];
  }

  fingerPrint = [identityCopy fingerPrint];
  if (!fingerPrint)
  {
    v16 = [CPLErrors incorrectParametersErrorForParameter:@"fingerprint"];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }
  }

  return fingerPrint != 0;
}

- (void)_removeIdentityFromUncommittedFiles:(id)files
{
  v20 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  identityForStorage = [filesCopy identityForStorage];
  v6 = [(NSMutableArray *)self->_uncommittedFiles indexOfObject:identityForStorage];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = filesCopy;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Removing %@ from the list of uncommitted files", buf, 0xCu);
      }
    }

    [(NSMutableArray *)self->_uncommittedFiles removeObjectAtIndex:v7];
    if (![(NSMutableArray *)self->_uncommittedFiles count])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      crashMarkerURL = self->_crashMarkerURL;
      v17 = 0;
      v15 = [defaultManager removeItemAtURL:crashMarkerURL error:&v17];
      v9 = v17;

      if (v15 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_17;
      }

      path = __CPLStorageOSLogDomain_2026();
      if (!os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v19 = v9;
      v11 = "Unable to remove crash recovery file: %@";
      v12 = path;
LABEL_15:
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
LABEL_16:

      goto LABEL_17;
    }

    if (([(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_2026();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      path = [(NSURL *)self->_crashMarkerURL path];
      *buf = 138412290;
      v19 = path;
      v11 = "Unable to store the crash recovery file to %@";
      v12 = v9;
      goto LABEL_15;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addIdentityToUncommittedFiles:(id)files
{
  v12 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  identityForStorage = [filesCopy identityForStorage];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = filesCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Adding %@ to the list of uncommitted files", &v10, 0xCu);
    }
  }

  [(NSMutableArray *)self->_uncommittedFiles addObject:identityForStorage];
  if (([(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = [(NSURL *)self->_crashMarkerURL path];
      v10 = 138412290;
      v11 = path;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Unable to store the crash recovery file to %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasCrashMarker
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_crashMarkerURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5;
}

- (BOOL)closeWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Opening", &v15, 2u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v7 = [platformObject closeWithError:error];

  if (v7)
  {
    if ([(NSMutableArray *)self->_uncommittedFiles count]&& (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(NSMutableArray *)self->_uncommittedFiles count];
        v15 = 134217984;
        v16 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Storage still has %lu uncommitted files", &v15, 0xCu);
      }
    }

    [(NSMutableArray *)self->_uncommittedFiles removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        path = [(NSURL *)self->_baseURL path];
        v15 = 138412290;
        v16 = path;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Closed storage at %@", &v15, 0xCu);
      }

LABEL_17:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *error;
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Error closing: %@", &v15, 0xCu);
    }

    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)openWithRecoveryHandler:(id)handler error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Opening", &v20, 2u);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager createDirectoryAtURL:self->_baseURL withIntermediateDirectories:1 attributes:0 error:error];

  if (v9)
  {
    platformObject = [(CPLEngineFileStorage *)self platformObject];
    v11 = [platformObject openWithError:error];

    if (v11)
    {
      if ([(CPLEngineFileStorage *)self _recoverFromCrashWithRecoveryHandler:handlerCopy error:error])
      {
        if (_CPLSilentLogging)
        {
          v14 = 1;
          goto LABEL_20;
        }

        v12 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          path = [(NSURL *)self->_baseURL path];
          v20 = 138412290;
          v21 = path;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Opened storage at %@", &v20, 0xCu);
        }

        v14 = 1;
        goto LABEL_19;
      }

LABEL_21:
      v14 = 0;
      goto LABEL_20;
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v12 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platformObject2 = [(CPLEngineFileStorage *)self platformObject];
      v17 = *error;
      v20 = 138412546;
      v21 = platformObject2;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ failed to open: %@", &v20, 0x16u);
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v12 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      baseURL = self->_baseURL;
      v20 = 138412290;
      v21 = baseURL;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to create folder %@", &v20, 0xCu);
    }
  }

  v14 = 0;
LABEL_19:

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)handler error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E695DF70] arrayWithContentsOfURL:self->_crashMarkerURL];
  if (v7)
  {
    v8 = &propertiesForChangeType__facesProperties;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v49 = [v7 count];
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Found %lu uncommitted files in storage", buf, 0xCu);
      }
    }

    errorCopy = error;
    v40 = v7;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v13 = off_1E861A000;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          errorCopy = [(__objc2_class *)v13[94] identityFromStoredIdentity:*(*(&v44 + 1) + 8 * i), errorCopy];
          if (handlerCopy)
          {
            if (!handlerCopy[2](handlerCopy, errorCopy))
            {
              goto LABEL_27;
            }

            if ((v8[51] & 1) == 0)
            {
              v16 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = errorCopy;
                _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Will keep %@", buf, 0xCu);
              }
            }
          }

          v43 = 0;
          v17 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:errorCopy error:&v43];
          v18 = v43;
          if (v17)
          {
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = errorCopy;
                v20 = v19;
                v21 = OS_LOG_TYPE_DEBUG;
                v22 = "Cleaned up %@";
                goto LABEL_24;
              }

              goto LABEL_25;
            }
          }

          else
          {
            uncommittedFiles = self->_uncommittedFiles;
            [errorCopy identityForStorage];
            v42 = v18;
            v24 = handlerCopy;
            v25 = v11;
            v26 = v12;
            selfCopy = self;
            v28 = v13;
            v30 = v29 = v8;
            [(NSMutableArray *)uncommittedFiles addObject:v30];

            v8 = v29;
            v13 = v28;
            self = selfCopy;
            v12 = v26;
            v11 = v25;
            handlerCopy = v24;
            v18 = v42;
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = errorCopy;
                v20 = v19;
                v21 = OS_LOG_TYPE_ERROR;
                v22 = "Unable to clean up %@";
LABEL_24:
                _os_log_impl(&dword_1DC05A000, v20, v21, v22, buf, 0xCu);
              }

LABEL_25:
            }
          }

LABEL_27:
        }

        v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v11);
    }

    if ([(NSMutableArray *)self->_uncommittedFiles count])
    {
      v31 = 1;
      [(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1];
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [defaultManager removeItemAtURL:self->_crashMarkerURL error:errorCopy];

      if (v33)
      {
        v31 = 1;
      }

      else
      {
        if ((v8[51] & 1) == 0)
        {
          v34 = __CPLStorageOSLogDomain_2026();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            path = [(NSURL *)self->_crashMarkerURL path];
            v36 = *errorCopy;
            *buf = 138412546;
            v49 = path;
            v50 = 2112;
            v51 = v36;
            _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Unable to delete crash marker at %@. Can't open the database: %@", buf, 0x16u);
          }
        }

        v31 = 0;
      }
    }

    v7 = v40;
  }

  else
  {
    v31 = 1;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)doWrite:(id)write error:(id *)error
{
  writeCopy = write;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2046;
  v19 = __Block_byref_object_dispose__2047;
  v20 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CPLEngineFileStorage_doWrite_error___block_invoke;
  block[3] = &unk_1E861BDE8;
  v13 = &v21;
  v8 = writeCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_barrier_sync(lock, block);
  v9 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

void __38__CPLEngineFileStorage_doWrite_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (void)doRead:(id)read
{
  readCopy = read;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CPLEngineFileStorage_doRead___block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = readCopy;
  v6 = readCopy;
  dispatch_sync(lock, block);
}

void __31__CPLEngineFileStorage_doRead___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (CPLEngineFileStorage)initWithBaseURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v31.receiver = self;
  v31.super_class = CPLEngineFileStorage;
  v6 = [(CPLEngineFileStorage *)&v31 init];
  if (v6)
  {
    v7 = [lCopy copy];
    baseURL = v6->_baseURL;
    v6->_baseURL = v7;

    v9 = dispatch_queue_create("com.apple.cpl.filestorage", MEMORY[0x1E69E96A8]);
    lock = v6->_lock;
    v6->_lock = v9;

    logDomain = v6->_logDomain;
    v6->_logDomain = @"engine.filestorage";

    *&v6->_keepOriginals = 256;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    uncommittedFiles = v6->_uncommittedFiles;
    v6->_uncommittedFiles = v12;

    v14 = [(NSURL *)v6->_baseURL URLByAppendingPathComponent:@".fileStorageCrashMarker.plist" isDirectory:0];
    crashMarkerURL = v6->_crashMarkerURL;
    v6->_crashMarkerURL = v14;

    v16 = +[CPLPlatform currentPlatform];
    v17 = [v16 newPlatformImplementationForObject:v6];
    platformObject = v6->_platformObject;
    v6->_platformObject = v17;

    if (!v6->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          *buf = 138412290;
          v33 = v27;
          v28 = v27;
          _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:v6 file:v30 lineNumber:120 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }

    _markerURLForTrackAllStoresAndDeletes = [(CPLEngineFileStorage *)v6 _markerURLForTrackAllStoresAndDeletes];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [_markerURLForTrackAllStoresAndDeletes path];
    v22 = [defaultManager fileExistsAtPath:path];

    if (v22)
    {
      platformObject = [(CPLEngineFileStorage *)v6 platformObject];
      [platformObject setTrackAllStoresAndDeletes:1];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)transaction
{
  trackAllStoresAndDeletesUntilEndOfTransaction = self->_trackAllStoresAndDeletesUntilEndOfTransaction;
  if (trackAllStoresAndDeletesUntilEndOfTransaction)
  {
    if (transaction)
    {
      return;
    }

    self->_trackAllStoresAndDeletesUntilEndOfTransaction = 0;
    if (!self->_shouldResetPlatformTrackAllStoresAndDeletes)
    {
      return;
    }

    self->_shouldResetPlatformTrackAllStoresAndDeletes = 0;
  }

  else
  {
    if (!transaction)
    {
      return;
    }

    platformObject = [(CPLEngineFileStorage *)self platformObject];
    self->_shouldResetPlatformTrackAllStoresAndDeletes = [platformObject trackAllStoresAndDeletes] ^ 1;

    self->_trackAllStoresAndDeletesUntilEndOfTransaction = 1;
  }

  platformObject2 = [(CPLEngineFileStorage *)self platformObject];
  [platformObject2 setTrackAllStoresAndDeletes:!trackAllStoresAndDeletesUntilEndOfTransaction];
}

- (BOOL)trackAllStoresAndDeletes
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  trackAllStoresAndDeletes = [platformObject trackAllStoresAndDeletes];

  return trackAllStoresAndDeletes;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

@end