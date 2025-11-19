@interface CPLEngineFileStorage
+ (id)platformImplementationProtocol;
- (BOOL)_fixupIdentity:(id)a3 fileURL:(id)a4 data:(id)a5 error:(id *)a6;
- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)a3 error:(id *)a4;
- (BOOL)addDeleteFlagToFileAtURL:(id)a3 error:(id *)a4;
- (BOOL)checkIsEmpty;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)commitFileWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteFileWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)a3;
- (BOOL)discardUncommittedFileWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)discardUncommittedFileWithIdentity:(id)a3 error:(id *)a4;
- (BOOL)doWrite:(id)a3 error:(id *)a4;
- (BOOL)hasCrashMarker;
- (BOOL)hasFileWithIdentifier:(id)a3;
- (BOOL)hasFileWithIdentity:(id)a3;
- (BOOL)openWithFileRecoveryHandler:(id)a3 error:(id *)a4;
- (BOOL)openWithRecoveryHandler:(id)a3 error:(id *)a4;
- (BOOL)releaseFileURL:(id)a3 error:(id *)a4;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)storeData:(id)a3 identifier:(id)a4 needsCommit:(BOOL *)a5 error:(id *)a6;
- (BOOL)storeUnretainedData:(id)a3 identifier:(id)a4 error:(id *)a5;
- (BOOL)storeUnretainedFileAtURL:(id)a3 identifier:(id)a4 error:(id *)a5;
- (BOOL)trackAllStoresAndDeletes;
- (CPLEngineFileStorage)initWithBaseURL:(id)a3;
- (id)_identityForIdentifier:(id)a3;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)a3 errorHandler:(id)a4;
- (id)retainFileURLForIdentifier:(id)a3 error:(id *)a4;
- (id)retainFileURLForIdentity:(id)a3 resourceType:(unint64_t)a4 error:(id *)a5;
- (void)_addIdentityToUncommittedFiles:(id)a3;
- (void)_removeIdentityFromUncommittedFiles:(id)a3;
- (void)checkFileSizeForIdentity:(id)a3;
- (void)doRead:(id)a3;
- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)a3;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineFileStorage

- (void)writeTransactionDidSucceed
{
  v2 = [(CPLEngineFileStorage *)self platformObject];
  [v2 writeTransactionDidSucceed];
}

- (id)retainFileURLForIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:a3];
  v7 = [(CPLEngineFileStorage *)self retainFileURLForIdentity:v6 resourceType:0 error:a4];

  return v7;
}

- (BOOL)hasFileWithIdentifier:(id)a3
{
  v3 = self;
  v4 = [(CPLEngineFileStorage *)self _identityForIdentifier:a3];
  LOBYTE(v3) = [(CPLEngineFileStorage *)v3 hasFileWithIdentity:v4];

  return v3;
}

- (BOOL)storeUnretainedData:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:a4];
  LOBYTE(a5) = [(CPLEngineFileStorage *)self storeUnretainedData:v8 identity:v9 isOriginal:0 error:a5];

  return a5;
}

- (BOOL)storeUnretainedFileAtURL:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:a4];
  LOBYTE(a5) = [(CPLEngineFileStorage *)self storeUnretainedFileAtURL:v8 identity:v9 isOriginal:0 error:a5];

  return a5;
}

- (BOOL)deleteFileWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:a3];
  LOBYTE(a4) = [(CPLEngineFileStorage *)self deleteFileWithIdentity:v6 error:a4];

  return a4;
}

- (BOOL)discardUncommittedFileWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:a3];
  LOBYTE(a4) = [(CPLEngineFileStorage *)self discardUncommittedFileWithIdentity:v6 error:a4];

  return a4;
}

- (BOOL)commitFileWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:a3];
  LOBYTE(a4) = [(CPLEngineFileStorage *)self commitFileWithIdentity:v6 error:a4];

  return a4;
}

- (BOOL)storeData:(id)a3 identifier:(id)a4 needsCommit:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(CPLEngineFileStorage *)self _identityForIdentifier:a4];
  LOBYTE(a6) = [(CPLEngineFileStorage *)self storeData:v10 identity:v11 isOriginal:0 needsCommit:a5 error:a6];

  return a6;
}

- (id)_identityForIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CPLResourceIdentity);
  [(CPLResourceIdentity *)v4 setFingerPrint:v3];

  [(CPLResourceIdentity *)v4 setFileUTI:@"public.data"];

  return v4;
}

- (BOOL)openWithFileRecoveryHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke;
  v9[3] = &unk_1E861BE38;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(CPLEngineFileStorage *)self openWithRecoveryHandler:v9 error:a4];

  return a4;
}

uint64_t __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fingerPrint];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (BOOL)addDeleteFlagToFileAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(a4) = [v7 addDeleteFlagToFileAtURL:v6 error:a4];

  return a4;
}

- (void)writeTransactionDidFail
{
  v2 = [(CPLEngineFileStorage *)self platformObject];
  [v2 writeTransactionDidFail];
}

- (BOOL)checkIsEmpty
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v2 = [(CPLEngineFileStorage *)self fileEnumerator];
  v3 = [v2 countByEnumeratingWithState:v8 objects:v11 count:16];
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

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineFileStorage *)self platformObject];
  v9 = [v8 fileEnumeratorIncludingPropertiesForKeys:v7 errorHandler:v6];

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

- (BOOL)resetWithError:(id *)a3
{
  v4 = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(a3) = [v4 resetWithError:a3];

  return a3;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)a3
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

  v6 = [(CPLEngineFileStorage *)self platformObject];
  v7 = [v6 discardAllRetainedFileURLsWithError:a3];

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
      v13 = *a3;
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

- (BOOL)releaseFileURL:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 path];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Releasing %@", &v19, 0xCu);
    }
  }

  v9 = [(CPLEngineFileStorage *)self platformObject];
  v10 = [v9 releaseFileURL:v6 error:a4];

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
      v16 = *a4;
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

- (id)retainFileURLForIdentity:(id)a3 resourceType:(unint64_t)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [CPLResource shortDescriptionForResourceType:a4];
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Retaining URL for %@ (%@)", &v17, 0x16u);
    }
  }

  v11 = [(CPLEngineFileStorage *)self platformObject];
  v12 = [v11 retainFileURLForIdentity:v8 resourceType:a4 error:a5];

  if (v12 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v12 path];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "Retained URL: %@", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)checkFileSizeForIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineFileStorage *)self platformObject];
  [v5 checkFileSizeForIdentity:v4];
}

- (BOOL)hasFileWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineFileStorage *)self platformObject];
  v6 = [v5 hasFileWithIdentity:v4];

  return v6;
}

- (BOOL)discardUncommittedFileWithIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:v6 error:a4];
  if (v7)
  {
    [(CPLEngineFileStorage *)self _removeIdentityFromUncommittedFiles:v6];
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

- (BOOL)_fixupIdentity:(id)a3 fileURL:(id)a4 data:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 fileUTI];
  if (!v10)
  {
    v11 = [v9 pathExtension];
    if (![v11 length])
    {
      v12 = [v8 fileURL];
      v13 = [v12 pathExtension];

      v11 = v13;
    }

    v14 = [CPLResourceIdentity fileUTIForExtension:v11];
    [v8 setFileUTI:v14];
  }

  v15 = [v8 fingerPrint];
  if (!v15)
  {
    v16 = [CPLErrors incorrectParametersErrorForParameter:@"fingerprint"];
    if (a6)
    {
      v16 = v16;
      *a6 = v16;
    }
  }

  return v15 != 0;
}

- (void)_removeIdentityFromUncommittedFiles:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identityForStorage];
  v6 = [(NSMutableArray *)self->_uncommittedFiles indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Removing %@ from the list of uncommitted files", buf, 0xCu);
      }
    }

    [(NSMutableArray *)self->_uncommittedFiles removeObjectAtIndex:v7];
    if (![(NSMutableArray *)self->_uncommittedFiles count])
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      crashMarkerURL = self->_crashMarkerURL;
      v17 = 0;
      v15 = [v13 removeItemAtURL:crashMarkerURL error:&v17];
      v9 = v17;

      if (v15 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_17;
      }

      v10 = __CPLStorageOSLogDomain_2026();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v19 = v9;
      v11 = "Unable to remove crash recovery file: %@";
      v12 = v10;
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

      v10 = [(NSURL *)self->_crashMarkerURL path];
      *buf = 138412290;
      v19 = v10;
      v11 = "Unable to store the crash recovery file to %@";
      v12 = v9;
      goto LABEL_15;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addIdentityToUncommittedFiles:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identityForStorage];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Adding %@ to the list of uncommitted files", &v10, 0xCu);
    }
  }

  [(NSMutableArray *)self->_uncommittedFiles addObject:v5];
  if (([(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NSURL *)self->_crashMarkerURL path];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Unable to store the crash recovery file to %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasCrashMarker
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(NSURL *)self->_crashMarkerURL path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)closeWithError:(id *)a3
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

  v6 = [(CPLEngineFileStorage *)self platformObject];
  v7 = [v6 closeWithError:a3];

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
        v11 = [(NSURL *)self->_baseURL path];
        v15 = 138412290;
        v16 = v11;
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
      v12 = *a3;
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Error closing: %@", &v15, 0xCu);
    }

    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)openWithRecoveryHandler:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Opening", &v20, 2u);
    }
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 createDirectoryAtURL:self->_baseURL withIntermediateDirectories:1 attributes:0 error:a4];

  if (v9)
  {
    v10 = [(CPLEngineFileStorage *)self platformObject];
    v11 = [v10 openWithError:a4];

    if (v11)
    {
      if ([(CPLEngineFileStorage *)self _recoverFromCrashWithRecoveryHandler:v6 error:a4])
      {
        if (_CPLSilentLogging)
        {
          v14 = 1;
          goto LABEL_20;
        }

        v12 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(NSURL *)self->_baseURL path];
          v20 = 138412290;
          v21 = v13;
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
      v16 = [(CPLEngineFileStorage *)self platformObject];
      v17 = *a4;
      v20 = 138412546;
      v21 = v16;
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

- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

    v39 = a4;
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

          v15 = [(__objc2_class *)v13[94] identityFromStoredIdentity:*(*(&v44 + 1) + 8 * i), v39];
          if (v6)
          {
            if (!v6[2](v6, v15))
            {
              goto LABEL_27;
            }

            if ((v8[51] & 1) == 0)
            {
              v16 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v15;
                _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Will keep %@", buf, 0xCu);
              }
            }
          }

          v43 = 0;
          v17 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:v15 error:&v43];
          v18 = v43;
          if (v17)
          {
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v15;
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
            [v15 identityForStorage];
            v42 = v18;
            v24 = v6;
            v25 = v11;
            v26 = v12;
            v27 = self;
            v28 = v13;
            v30 = v29 = v8;
            [(NSMutableArray *)uncommittedFiles addObject:v30];

            v8 = v29;
            v13 = v28;
            self = v27;
            v12 = v26;
            v11 = v25;
            v6 = v24;
            v18 = v42;
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = v15;
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
      v32 = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [v32 removeItemAtURL:self->_crashMarkerURL error:v39];

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
            v35 = [(NSURL *)self->_crashMarkerURL path];
            v36 = *v39;
            *buf = 138412546;
            v49 = v35;
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

- (BOOL)doWrite:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_barrier_sync(lock, block);
  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
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

- (void)doRead:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CPLEngineFileStorage_doRead___block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, block);
}

void __31__CPLEngineFileStorage_doRead___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (CPLEngineFileStorage)initWithBaseURL:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = CPLEngineFileStorage;
  v6 = [(CPLEngineFileStorage *)&v31 init];
  if (v6)
  {
    v7 = [v5 copy];
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

      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      [v29 handleFailureInMethod:a2 object:v6 file:v30 lineNumber:120 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }

    v19 = [(CPLEngineFileStorage *)v6 _markerURLForTrackAllStoresAndDeletes];
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [v19 path];
    v22 = [v20 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = [(CPLEngineFileStorage *)v6 platformObject];
      [v23 setTrackAllStoresAndDeletes:1];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)a3
{
  trackAllStoresAndDeletesUntilEndOfTransaction = self->_trackAllStoresAndDeletesUntilEndOfTransaction;
  if (trackAllStoresAndDeletesUntilEndOfTransaction)
  {
    if (a3)
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
    if (!a3)
    {
      return;
    }

    v5 = [(CPLEngineFileStorage *)self platformObject];
    self->_shouldResetPlatformTrackAllStoresAndDeletes = [v5 trackAllStoresAndDeletes] ^ 1;

    self->_trackAllStoresAndDeletesUntilEndOfTransaction = 1;
  }

  v6 = [(CPLEngineFileStorage *)self platformObject];
  [v6 setTrackAllStoresAndDeletes:!trackAllStoresAndDeletesUntilEndOfTransaction];
}

- (BOOL)trackAllStoresAndDeletes
{
  v2 = [(CPLEngineFileStorage *)self platformObject];
  v3 = [v2 trackAllStoresAndDeletes];

  return v3;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

@end