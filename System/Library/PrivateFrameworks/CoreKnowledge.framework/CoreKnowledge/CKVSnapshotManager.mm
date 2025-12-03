@interface CKVSnapshotManager
+ (id)sharedInstance;
+ (id)writeProfileToFile:(id)file withFilename:(id)filename inDirectory:(id)directory error:(id *)error;
- (BOOL)_purgeProfileSnapshots;
- (CKVSnapshotManager)initWithRootDirectoryURL:(id)l setEnumerator:(id)enumerator;
- (id)_buildProfile:(id)profile error:(id *)error;
- (id)_getFilesSortedByCreationDateForDirectoryPath:(id)path;
- (id)captureInMemory:(id *)memory;
- (id)captureToFileInDirectory:(id)directory error:(id *)error;
- (void)cleanup;
@end

@implementation CKVSnapshotManager

- (BOOL)_purgeProfileSnapshots
{
  v29 = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_rootDirectoryURL path];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(CKVSnapshotManager *)self _getFilesSortedByCreationDateForDirectoryPath:path];
  v6 = v5;
  if (!v5)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  if (![v5 count] || (v7 = objc_msgSend(v6, "count")) == 0)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_20;
  }

  v21 = path;
  v8 = 0;
  v9 = 0;
  v10 = v7 - 1;
  while (1)
  {
    v11 = [v6 objectAtIndex:{v10, v21}];
    firstObject = [v11 firstObject];
    lastObject = [v11 lastObject];
    [lastObject timeIntervalSinceNow];
    if (fabs(v14) >= 43200.0 || (v9 + 1) >= 0xB)
    {
      break;
    }

    ++v9;
LABEL_12:

    if (--v10 == -1)
    {
      v18 = 1;
      v17 = v8;
      goto LABEL_19;
    }
  }

  v22 = v8;
  v16 = [defaultManager removeItemAtURL:firstObject error:&v22];
  v17 = v22;

  if (v16)
  {
    v8 = v17;
    goto LABEL_12;
  }

  v19 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = "[CKVSnapshotManager _purgeProfileSnapshots]";
    v25 = 2112;
    v26 = firstObject;
    v27 = 2112;
    v28 = v17;
    _os_log_error_impl(&dword_1C8683000, v19, OS_LOG_TYPE_ERROR, "%s Failed to remove snapshot %@ error: %@", buf, 0x20u);
  }

  v18 = 0;
LABEL_19:
  path = v21;
LABEL_20:

  return v18;
}

- (void)cleanup
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(CKVSnapshotManager *)self _purgeProfileSnapshots])
  {
    v3 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CKVSnapshotManager cleanup]";
      _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Removing snapshot directory following purge failure", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    rootDirectoryURL = self->_rootDirectoryURL;
    v9 = 0;
    v6 = [defaultManager removeItemAtURL:rootDirectoryURL error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      v8 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[CKVSnapshotManager cleanup]";
        v12 = 2112;
        v13 = v7;
        _os_log_error_impl(&dword_1C8683000, v8, OS_LOG_TYPE_ERROR, "%s Failed to remove snapshot directory: %@", buf, 0x16u);
      }
    }
  }
}

- (id)_getFilesSortedByCreationDateForDirectoryPath:(id)path
{
  v42 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    v33 = 0;
    v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v33];
    v6 = v33;
    if (v5)
    {
      v24 = defaultManager;
      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v5;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v30;
        v10 = *MEMORY[0x1E695DAA8];
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = pathCopy;
            v13 = [pathCopy stringByAppendingPathComponent:{*(*(&v29 + 1) + 8 * i), v23}];
            v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
            v27 = 0;
            v28 = 0;
            [v14 getResourceValue:&v28 forKey:v10 error:&v27];
            v15 = v28;
            v16 = v27;

            if (v16 || !v15)
            {
              v19 = CKLogContextVocabulary;
              if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v37 = "[CKVSnapshotManager _getFilesSortedByCreationDateForDirectoryPath:]";
                v38 = 2112;
                v39 = v13;
                v40 = 2112;
                v41 = v16;
                _os_log_error_impl(&dword_1C8683000, v19, OS_LOG_TYPE_ERROR, "%s Failed to get file creation date for file %@ error: %@", buf, 0x20u);
              }

              v18 = 0;
              pathCopy = v12;
              defaultManager = v24;
              v20 = v26;
              goto LABEL_22;
            }

            v34[0] = v14;
            v34[1] = v15;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
            [v26 addObject:v17];

            v6 = 0;
            pathCopy = v12;
          }

          v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          v6 = 0;
          v16 = 0;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v16 = v6;
      }

      v20 = v26;
      v18 = [v26 sortedArrayUsingComparator:&__block_literal_global_1120];
      defaultManager = v24;
LABEL_22:

      v6 = v16;
      v5 = v23;
    }

    else
    {
      v21 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "[CKVSnapshotManager _getFilesSortedByCreationDateForDirectoryPath:]";
        v38 = 2112;
        v39 = pathCopy;
        v40 = 2112;
        v41 = v6;
        _os_log_error_impl(&dword_1C8683000, v21, OS_LOG_TYPE_ERROR, "%s Failed to scan files at path: %@ error: %@", buf, 0x20u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

uint64_t __68__CKVSnapshotManager__getFilesSortedByCreationDateForDirectoryPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndex:1];
  v6 = [v4 objectAtIndex:1];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)captureInMemory:(id *)memory
{
  v4 = [(CKVSnapshotManager *)self _buildProfile:0 error:memory];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 buildWithError:memory];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)captureToFileInDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  if (!directoryCopy)
  {
    directoryCopy = self->_rootDirectoryURL;
  }

  v7 = KVGetOrCreateDirectoryURL();

  if (v7)
  {
    v8 = [(CKVSnapshotManager *)self _buildProfile:directoryCopy error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 finishWritingWithError:error];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_buildProfile:(id)profile error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  errorCopy = error;
  v40 = [(CCSetEnumerator *)self->_setEnumerator allSets:error];
  v6 = v40;
  if (v40)
  {
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = v40;
    v8 = [v7 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v8)
    {
      v9 = *v64;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v64 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v63 + 1) + 8 * i);
          [v11 itemType];
          KVItemTypeFromCascadeItemType();
          if (KVItemTypeIsValid())
          {
            [v47 addObject:v11];
          }

          else
          {
            v12 = CKLogContextVocabulary;
            if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "[CKVSnapshotManager _buildProfile:error:]";
              *&buf[12] = 2112;
              *&buf[14] = v11;
              _os_log_impl(&dword_1C8683000, v12, OS_LOG_TYPE_INFO, "%s Skipping set: %@ not supported by Koa", buf, 0x16u);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v8);
    }

    v13 = [v47 count];
    v14 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v15 = @"to file";
      *buf = 136315650;
      *&buf[4] = "[CKVSnapshotManager _buildProfile:error:]";
      if (!profileCopy)
      {
        v15 = @"in memory";
      }

      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 1024;
      LODWORD(v73) = v13;
      _os_log_impl(&dword_1C8683000, v14, OS_LOG_TYPE_INFO, "%s Capturing vocabulary snapshot %@ for %u sets.", buf, 0x1Cu);
    }

    v39 = [MEMORY[0x1E69ABD10] capturedWithDatasetCount:v13 error:errorCopy];
    if (v39)
    {
      if (profileCopy)
      {
        [MEMORY[0x1E69ABD08] fileWriterWithProfileInfo:v39 targetDirectory:profileCopy format:2 error:errorCopy];
      }

      else
      {
        [MEMORY[0x1E69ABD08] builderWithProfileInfo:v39 format:2 error:errorCopy];
      }
      v43 = ;
      if (v43)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v73 = __Block_byref_object_copy__1128;
        v74 = __Block_byref_object_dispose__1129;
        v75 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 1;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v47;
        v17 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
        if (v17)
        {
          v44 = *MEMORY[0x1E6993998];
          v45 = *v56;
LABEL_26:
          v18 = 0;
          while (1)
          {
            if (*v56 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v55 + 1) + 8 * v18);
            context = objc_autoreleasePoolPush();
            changePublisher = [v19 changePublisher];
            localItemInstanceCount = [changePublisher localItemInstanceCount];
            v22 = [MEMORY[0x1E695DF00] now];
            v23 = objc_alloc(MEMORY[0x1E69ABCC8]);
            [v19 itemType];
            v24 = KVItemTypeFromCascadeItemType();
            v25 = [v19 descriptorWithKey:v44];
            value = [v25 value];
            v27 = (*&buf[8] + 40);
            v54 = *(*&buf[8] + 40);
            LODWORD(v37) = localItemInstanceCount;
            v28 = [v23 initWithItemType:v24 originAppId:value deviceId:0 userId:0 lastModifiedTime:0 capturedTime:v22 itemCount:v37 error:&v54];
            objc_storeStrong(v27, v54);
            v29 = changePublisher;

            if (v28 && (v30 = (*&buf[8] + 40), v53 = *(*&buf[8] + 40), [v43 addDataset:v28 error:&v53], v31 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v30, v53), v31))
            {
              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v52[2] = __42__CKVSnapshotManager__buildProfile_error___block_invoke;
              v52[3] = &unk_1E831E678;
              v52[4] = buf;
              v52[5] = &v59;
              v48[0] = MEMORY[0x1E69E9820];
              v48[1] = 3221225472;
              v48[2] = __42__CKVSnapshotManager__buildProfile_error___block_invoke_2;
              v48[3] = &unk_1E831E6A0;
              v50 = buf;
              v32 = v31;
              v49 = v32;
              v51 = &v59;
              v33 = [changePublisher sinkWithCompletion:v52 shouldContinue:v48];
              v34 = *(v60 + 24);
              if (v34 == 1)
              {
                v35 = CKLogContextVocabulary;
                if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
                {
                  *v67 = 136315394;
                  v68 = "[CKVSnapshotManager _buildProfile:error:]";
                  v69 = 2112;
                  v70 = v28;
                  _os_log_impl(&dword_1C8683000, v35, OS_LOG_TYPE_INFO, "%s Captured dataset %@", v67, 0x16u);
                }
              }
            }

            else
            {
              v34 = 0;
              *(v60 + 24) = 0;
            }

            objc_autoreleasePoolPop(context);
            if (!v34)
            {
              break;
            }

            if (v17 == ++v18)
            {
              v17 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
              if (v17)
              {
                goto LABEL_26;
              }

              break;
            }
          }
        }

        if (*(v60 + 24) != 1 || *(*&buf[8] + 40))
        {
          KVSetError();
          v16 = 0;
        }

        else
        {
          v16 = v43;
        }

        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v6 = v40;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __42__CKVSnapshotManager__buildProfile_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state])
  {
    v3 = [v6 error];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t __42__CKVSnapshotManager__buildProfile_error___block_invoke_2(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [a2 addedLocalInstances];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = *(a1[5] + 8);
        obj = *(v9 + 40);
        v10 = [MEMORY[0x1E69ABCF0] itemFromCascadeItem:v8 error:&obj];
        objc_storeStrong((v9 + 40), obj);
        if (!v10 || (v11 = a1[4], v12 = *(a1[5] + 8), v16 = *(v12 + 40), [v11 addItem:v10 error:&v16], v13 = objc_claimAutoreleasedReturnValue(), objc_storeStrong((v12 + 40), v16), v13, !v13))
        {
          *(*(a1[6] + 8) + 24) = 0;

          v14 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v14 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

- (CKVSnapshotManager)initWithRootDirectoryURL:(id)l setEnumerator:(id)enumerator
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  enumeratorCopy = enumerator;
  v16.receiver = self;
  v16.super_class = CKVSnapshotManager;
  v9 = [(CKVSnapshotManager *)&v16 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_rootDirectoryURL, l), objc_storeStrong(&v10->_setEnumerator, enumerator), (rootDirectoryURL = v10->_rootDirectoryURL) != 0) && v10->_setEnumerator)
  {
    v12 = v10;
  }

  else
  {
    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      setEnumerator = v10->_setEnumerator;
      *buf = 136315650;
      v18 = "[CKVSnapshotManager initWithRootDirectoryURL:setEnumerator:]";
      v19 = 2112;
      v20 = rootDirectoryURL;
      v21 = 2112;
      v22 = setEnumerator;
      _os_log_error_impl(&dword_1C8683000, v13, OS_LOG_TYPE_ERROR, "%s Invalid {rootDirectoryURL: %@, setEnumerator: %@}", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)writeProfileToFile:(id)file withFilename:(id)filename inDirectory:(id)directory error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  directoryCopy = directory;
  v11 = MEMORY[0x1E69ABD08];
  filenameCopy = filename;
  profileInfo = [fileCopy profileInfo];
  v14 = [v11 fileWriterWithProfileInfo:profileInfo targetDirectory:directoryCopy filename:filenameCopy format:2 error:error];

  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    path = [directoryCopy path];
    *buf = 136315650;
    v29 = "+[CKVSnapshotManager writeProfileToFile:withFilename:inDirectory:error:]";
    v30 = 2112;
    v31 = fileCopy;
    v32 = 2112;
    v33 = path;
    _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s Writing profile: %@ to file in targetDirectory: %@", buf, 0x20u);
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__CKVSnapshotManager_writeProfileToFile_withFilename_inDirectory_error___block_invoke;
  v25 = &unk_1E831E710;
  v18 = v14;
  v26 = v18;
  errorCopy = error;
  v19 = [fileCopy enumerateDatasetsWithError:error usingBlock:&v22];

  if (v19)
  {
    v20 = [v18 finishWritingWithError:{error, v22, v23, v24, v25}];
  }

  else
  {
LABEL_6:
    v20 = 0;
  }

  return v20;
}

uint64_t __72__CKVSnapshotManager_writeProfileToFile_withFilename_inDirectory_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 datasetInfo];
  v6 = [v4 addDataset:v5 error:*(a1 + 40)];

  if (v6)
  {
    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__CKVSnapshotManager_writeProfileToFile_withFilename_inDirectory_error___block_invoke_2;
    v12[3] = &unk_1E831E6E8;
    v8 = v6;
    v9 = *(a1 + 40);
    v13 = v8;
    v14 = v9;
    v10 = [v3 enumerateItemsWithError:v7 usingBlock:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __72__CKVSnapshotManager_writeProfileToFile_withFilename_inDirectory_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) addItem:a2 error:*(a1 + 40)];
  v3 = v2 != 0;

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CKVSnapshotManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1151 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1151, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

void __36__CKVSnapshotManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc(objc_opt_class());
  v4 = KVSnapshotRootDirectoryURL();
  v1 = [MEMORY[0x1E6993A50] setEnumerator];
  v2 = [v0 initWithRootDirectoryURL:v4 setEnumerator:v1];
  v3 = sharedInstance_shared;
  sharedInstance_shared = v2;
}

@end