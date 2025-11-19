@interface DACPLogShared
+ (DACPLogShared)shared;
- (BOOL)_array:(id)a3 beginsWithArray:(id)a4 outRemainingArray:(id *)a5;
- (BOOL)_logData:(id)a3 UUID:(id)a4 startNewFile:(BOOL)a5 sizeCheck:(int64_t)a6 wantsCompressed:(BOOL)a7 maxFileCount:(int64_t)a8 outDidCreateNewFile:(BOOL *)a9 outNewFilePath:(id *)a10;
- (BOOL)_slurpToFileUUID:(id)a3 slurpeeFileDescriptor:(int)a4 prefix:(id)a5 suffix:(id)a6 startNewFile:(BOOL)a7 sizeCheck:(int64_t)a8 wantsCompressed:(BOOL)a9 maxLogFileCount:(int)a10 outDidCreateNewFile:(BOOL *)a11 outNewFilePath:(id *)a12;
- (DACPLogShared)init;
- (id)_getUUIDForFolder:(id)a3 baseName:(id)a4;
@end

@implementation DACPLogShared

+ (DACPLogShared)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__DACPLogShared_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sharedInstance;

  return v2;
}

uint64_t __23__DACPLogShared_shared__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  shared_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DACPLogShared)init
{
  v6.receiver = self;
  v6.super_class = DACPLogShared;
  v2 = [(DACPLogShared *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    UUIDToFileMap = v2->_UUIDToFileMap;
    v2->_UUIDToFileMap = v3;
  }

  return v2;
}

- (BOOL)_array:(id)a3 beginsWithArray:(id)a4 outRemainingArray:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 DACPLogArrayBeginsWithArray:v8];
  v10 = v9;
  if (a5 && v9)
  {
    *a5 = [v7 DACPLogSubarrayFromIndexToEndOfArray:{objc_msgSend(v8, "count")}];
  }

  return v10;
}

- (id)_getUUIDForFolder:(id)a3 baseName:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v39 = a4;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_INFO, "Handling getUUIDForPath", buf, 2u);
  }

  *buf = 0;
  v56 = buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__0;
  v59 = __Block_byref_object_dispose__0;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (_getUUIDForFolder_baseName__onceToken != -1)
  {
    [DACPLogShared _getUUIDForFolder:baseName:];
  }

  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v61 = 138412290;
    v62 = v41;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_INFO, "Testing requested log folder %@", v61, 0xCu);
  }

  v7 = geteuid();
  v40 = _homeDirectoryPathComponentsForUID(v7);
  if (v40)
  {
    v8 = [v41 pathComponents];
    v50 = 0;
    v9 = [(DACPLogShared *)self _array:v8 beginsWithArray:&unk_2837D0078 outRemainingArray:&v50];
    v10 = v50;
    v11 = v10;
    if (!v9)
    {
      v49 = v10;
      v12 = [(DACPLogShared *)self _array:v8 beginsWithArray:&unk_2837D0090 outRemainingArray:&v49];
      v13 = v49;

      if (v12)
      {
        v11 = v13;
      }

      else
      {
        v48 = v13;
        v15 = [(DACPLogShared *)self _array:v8 beginsWithArray:&unk_2837D00A8 outRemainingArray:&v48];
        v37 = v48;

        if (!v15)
        {
          v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
          for (i = 1; i - 1 < [v8 count]; ++i)
          {
            v18 = [v8 objectAtIndexedSubscript:i - 1];
            [v16 addObject:v18];
            v19 = [MEMORY[0x277CCACA8] pathWithComponents:v16];
            v20 = v19;
            v21 = realpath_DARWIN_EXTSN([v19 fileSystemRepresentation], 0);

            if (v21)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
              v23 = [v22 pathComponents];
              v24 = [v23 isEqualToArray:v40];

              if (v24)
              {
                v26 = DALoggingwithCategory(0);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *v61 = 136315138;
                  v62 = v21;
                  _os_log_impl(&dword_2243BD000, v26, OS_LOG_TYPE_INFO, "Matched client home directory: %s", v61, 0xCu);
                }

                if (i - 1 >= ([v8 count] - 1))
                {
                  v11 = MEMORY[0x277CBEBF8];
                }

                else
                {
                  v11 = [v8 subarrayWithRange:{i, objc_msgSend(v8, "count") - i}];
                }

                free(v21);
                goto LABEL_31;
              }

              free(v21);
            }
          }

          v25 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v61 = 138412290;
            v62 = v41;
            _os_log_impl(&dword_2243BD000, v25, OS_LOG_TYPE_ERROR, "The path %@ does not begin with the caller's home directory.", v61, 0xCu);
          }

          *(v52 + 24) = 1;
          v11 = v37;
          goto LABEL_37;
        }

        v11 = v37;
      }
    }

LABEL_31:
    v27 = [_getUUIDForFolder_baseName__homeDirComponents arrayByAddingObjectsFromArray:v11];
    v28 = [MEMORY[0x277CCACA8] pathWithComponents:v27];
    v29 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *v61 = 138412290;
      v62 = v28;
      _os_log_impl(&dword_2243BD000, v29, OS_LOG_TYPE_INFO, "Resolved log file folder to %@", v61, 0xCu);
    }

    if ([v28 length] && objc_msgSend(v28, "characterAtIndex:", objc_msgSend(v28, "length") - 1) == 47)
    {
      v30 = [v28 substringToIndex:{objc_msgSend(v28, "length") - 1}];

      v28 = v30;
    }

    v31 = _fileOpsQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DACPLogShared__getUUIDForFolder_baseName___block_invoke_116;
    block[3] = &unk_278520BB8;
    v46 = &v51;
    v43 = v28;
    v44 = self;
    v45 = v39;
    v47 = buf;
    v32 = v28;
    dispatch_sync(v31, block);

LABEL_37:
    goto LABEL_38;
  }

  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v61 = 0;
    _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_ERROR, "Could not resolve client home directory. Not granting access to write logs.", v61, 2u);
  }

  *(v52 + 24) = 1;
LABEL_38:

  if (*(v52 + 24) == 1)
  {
    v33 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v61 = 138412546;
      v62 = v41;
      v63 = 2112;
      v64 = v39;
      _os_log_impl(&dword_2243BD000, v33, OS_LOG_TYPE_ERROR, "Get UUID for for folder resulted in an error. Folder: %@. Basename: %@.", v61, 0x16u);
    }
  }

  v34 = *(v56 + 5);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __44__DACPLogShared__getUUIDForFolder_baseName___block_invoke()
{
  v0 = getuid();
  v1 = _homeDirectoryPathComponentsForUID(v0);
  v2 = _getUUIDForFolder_baseName__homeDirComponents;
  _getUUIDForFolder_baseName__homeDirComponents = v1;

  if (!_getUUIDForFolder_baseName__homeDirComponents)
  {
    v3 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_DEFAULT, "Could not resolve home directory. Falling back to /var/mobile.", v6, 2u);
    }

    v4 = [@"/var/mobile" pathComponents];
    v5 = _getUUIDForFolder_baseName__homeDirComponents;
    _getUUIDForFolder_baseName__homeDirComponents = v4;
  }
}

void __44__DACPLogShared__getUUIDForFolder_baseName___block_invoke_116(void *a1)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v35 = 1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:a1[4] isDirectory:&v35])
  {
    if ((v35 & 1) == 0)
    {
      v3 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = a1[4];
        *buf = 138412290;
        v38 = v4;
        _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_ERROR, "Folder path %@ does not refer to a directory.", buf, 0xCu);
      }

      *(*(a1[7] + 8) + 24) = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v41 = *MEMORY[0x277CCA180];
    v42[0] = &unk_2837D0048;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = a1[4];
    v34 = 0;
    [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v5 error:&v34];
    v8 = v34;

    v9 = DALoggingwithCategory(0);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[4];
        *buf = 138412546;
        v38 = v11;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "Could not create directory %@. Error: %@", buf, 0x16u);
      }

      *(*(a1[7] + 8) + 24) = 1;
      goto LABEL_26;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = a1[4];
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_INFO, "Created directory at path: %@", buf, 0xCu);
    }
  }

  v29 = v2;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = *(a1[5] + 8);
  v14 = [(DACPLogDFile *)v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [*(a1[5] + 8) objectForKey:v18];
        v20 = [v19 folder];
        if ([v20 isEqualToString:a1[4]])
        {
          v21 = [v19 baseName];
          v22 = [v21 isEqualToString:a1[6]];

          if (v22)
          {
            objc_storeStrong((*(a1[8] + 8) + 40), v18);

            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v15 = [(DACPLogDFile *)v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v15);
  }

  v13 = [[DACPLogDFile alloc] initWithFolder:a1[4] baseName:a1[6]];
  v23 = *(a1[5] + 8);
  v24 = [(DACPLogDFile *)v13 UUID];
  [v23 setObject:v13 forKey:v24];

  v25 = [(DACPLogDFile *)v13 UUID];
  v26 = *(a1[8] + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

LABEL_25:
  v2 = v29;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_logData:(id)a3 UUID:(id)a4 startNewFile:(BOOL)a5 sizeCheck:(int64_t)a6 wantsCompressed:(BOOL)a7 maxFileCount:(int64_t)a8 outDidCreateNewFile:(BOOL *)a9 outNewFilePath:(id *)a10
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_INFO, "Handling logData", buf, 2u);
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v17 = _fileOpsQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__DACPLogShared__logData_UUID_startNewFile_sizeCheck_wantsCompressed_maxFileCount_outDidCreateNewFile_outNewFilePath___block_invoke;
  block[3] = &unk_278520BE0;
  block[4] = self;
  v18 = v15;
  v28 = v18;
  v30 = &v48;
  v31 = buf;
  v36 = a5;
  v32 = &v44;
  v33 = &v52;
  v19 = v14;
  v29 = v19;
  v37 = a7;
  v34 = a6;
  v35 = a8;
  dispatch_sync(v17, block);

  if (*(v53 + 24) == 1)
  {
    v20 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v56 = 138412290;
      v57 = v18;
      _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_ERROR, "Log data resulted in an error. UUID: %@.", v56, 0xCu);
    }
  }

  else
  {
    *(v49 + 24) ^= 1u;
    if (a9)
    {
      *a9 = *(v45 + 24);
    }

    if (a10)
    {
      v21 = *(v39 + 5);
      if (v21)
      {
        *a10 = v21;
      }
    }
  }

  v22 = *(v49 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __118__DACPLogShared__logData_UUID_startNewFile_sizeCheck_wantsCompressed_maxFileCount_outDidCreateNewFile_outNewFilePath___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Cannot find UUID. Asking client to retry.", buf, 2u);
    }

    v8 = *(a1 + 56);
    goto LABEL_11;
  }

  if (*(a1 + 104) != 1)
  {
    if (*(a1 + 88) < 1)
    {
      v11 = 0;
    }

    else
    {
      v9 = *(a1 + 105);
      v10 = *(*(a1 + 72) + 8);
      v21[1] = 0;
      [v2 checkForMaximumFileSize:? wantsCompressed:? outDidCreateNewFile:? outNewFilePath:?];
      v11 = 0;
    }

    buf[0] = 0;
    v12 = *(a1 + 48);
    v21[0] = 0;
    v13 = [v3 logData:v12 outDidCreateNewFile:buf outNewFilePath:v21];
    v14 = v21[0];
    v15 = v14;
    *(*(*(a1 + 80) + 8) + 24) = v13 ^ 1;
    if (buf[0] == 1)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v16 = v14;

      v11 = v16;
    }

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v11;
    v19 = v11;

    goto LABEL_16;
  }

  v4 = [v2 startNewFile];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = *(a1 + 80);
LABEL_11:
    *(*(v8 + 8) + 24) = 1;
    goto LABEL_19;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  *(*(*(a1 + 80) + 8) + 24) = [v3 logData:*(a1 + 48) outDidCreateNewFile:0 outNewFilePath:0] ^ 1;
LABEL_16:
  v20 = *(a1 + 96);
  if (v20 && *(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [v3 cullFilesMaxFileCount:v20 - 1];
  }

LABEL_19:
}

- (BOOL)_slurpToFileUUID:(id)a3 slurpeeFileDescriptor:(int)a4 prefix:(id)a5 suffix:(id)a6 startNewFile:(BOOL)a7 sizeCheck:(int64_t)a8 wantsCompressed:(BOOL)a9 maxLogFileCount:(int)a10 outDidCreateNewFile:(BOOL *)a11 outNewFilePath:(id *)a12
{
  v69 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v21, OS_LOG_TYPE_INFO, "Handling slurpFile", buf, 2u);
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__0;
  v53 = __Block_byref_object_dispose__0;
  v54 = 0;
  if (v19)
  {
    v22 = [v19 dataUsingEncoding:4];
  }

  else
  {
    v22 = 0;
  }

  v35 = v19;
  v34 = a4;
  if (v20)
  {
    v23 = [v20 dataUsingEncoding:4];
    v24 = a8;
  }

  else
  {
    v24 = a8;
    v23 = 0;
  }

  v25 = _fileOpsQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __160__DACPLogShared__slurpToFileUUID_slurpeeFileDescriptor_prefix_suffix_startNewFile_sizeCheck_wantsCompressed_maxLogFileCount_outDidCreateNewFile_outNewFilePath___block_invoke;
  block[3] = &unk_278520C30;
  block[4] = self;
  v37 = v18;
  v38 = v23;
  v47 = a7;
  v41 = &v63;
  v42 = buf;
  v39 = v22;
  v40 = &v59;
  v43 = &v55;
  v44 = v24;
  v48 = a9;
  v45 = v34;
  v46 = a10;
  v26 = v37;
  v27 = v22;
  v28 = v23;
  dispatch_sync(v25, block);

  if (*(v64 + 24) == 1)
  {
    v29 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v67 = 138412290;
      v68 = v26;
      _os_log_impl(&dword_2243BD000, v29, OS_LOG_TYPE_ERROR, "Slurp to file UUID resulted in an error. UUID: %@.", v67, 0xCu);
    }
  }

  else
  {
    *(v60 + 24) ^= 1u;
    if (a11)
    {
      *a11 = *(v56 + 24);
    }

    if (a12)
    {
      v30 = *(v50 + 5);
      if (v30)
      {
        *a12 = v30;
      }
    }
  }

  v31 = *(v60 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  v32 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

void __160__DACPLogShared__slurpToFileUUID_slurpeeFileDescriptor_prefix_suffix_startNewFile_sizeCheck_wantsCompressed_maxLogFileCount_outDidCreateNewFile_outNewFilePath___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __160__DACPLogShared__slurpToFileUUID_slurpeeFileDescriptor_prefix_suffix_startNewFile_sizeCheck_wantsCompressed_maxLogFileCount_outDidCreateNewFile_outNewFilePath___block_invoke_118;
    aBlock[3] = &unk_278520C08;
    v27 = *(a1 + 104);
    v26 = *(a1 + 72);
    v4 = v2;
    v24 = v4;
    v25 = *(a1 + 48);
    v5 = _Block_copy(aBlock);
    if (*(a1 + 112) == 1)
    {
      v6 = [v4 startNewFile];
      v7 = *(*(a1 + 80) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      if (!*(*(*(a1 + 80) + 8) + 40))
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_20:

        goto LABEL_21;
      }

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v9 = *(a1 + 56);
      if (v9)
      {
        *(*(*(a1 + 72) + 8) + 24) = [v4 logData:v9 outDidCreateNewFile:0 outNewFilePath:0] ^ 1;
      }

      v5[2](v5);
    }

    else
    {
      if (*(a1 + 96) < 1)
      {
        v13 = 0;
      }

      else
      {
        v11 = *(a1 + 113);
        v12 = *(*(a1 + 88) + 8);
        v22[1] = 0;
        [v4 checkForMaximumFileSize:? wantsCompressed:? outDidCreateNewFile:? outNewFilePath:?];
        v13 = 0;
      }

      buf[0] = 0;
      v14 = *(a1 + 56);
      v22[0] = 0;
      v15 = [v4 logData:v14 outDidCreateNewFile:buf outNewFilePath:v22];
      v16 = v22[0];
      *(*(*(a1 + 72) + 8) + 24) = v15 ^ 1;
      v5[2](v5);
      if (buf[0] == 1)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        v17 = v16;

        v13 = v17;
      }

      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v13;
      v20 = v13;
    }

    v21 = *(a1 + 108);
    if (v21 && *(*(*(a1 + 88) + 8) + 24) == 1)
    {
      [v4 cullFilesMaxFileCount:v21 - 1];
    }

    goto LABEL_20;
  }

  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "Cannot find UUID. Asking client to retry.", buf, 2u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_21:
}

uint64_t __160__DACPLogShared__slurpToFileUUID_slurpeeFileDescriptor_prefix_suffix_startNewFile_sizeCheck_wantsCompressed_maxLogFileCount_outDidCreateNewFile_outNewFilePath___block_invoke_118(uint64_t a1)
{
  if (*(a1 + 56) != -1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:*(a1 + 56) closeOnDealloc:0];
    if (v2)
    {
      memset(&v7, 0, sizeof(v7));
      if (fstat(*(a1 + 56), &v7))
      {
        v3 = 0;
      }

      else if (v7.st_size < 4096)
      {
LABEL_10:
        v3 = [v2 readDataToEndOfFile];
        if ([v3 length])
        {
          *(*(*(a1 + 48) + 8) + 24) |= [*(a1 + 32) logData:v3 outDidCreateNewFile:0 outNewFilePath:0] ^ 1;
        }
      }

      else
      {
        v4 = 0;
        v3 = 0;
        while (1)
        {
          v5 = v3;
          v3 = [v2 readDataOfLength:4096];

          if (![v3 length])
          {
            break;
          }

          *(*(*(a1 + 48) + 8) + 24) |= [*(a1 + 32) logData:v3 outDidCreateNewFile:0 outNewFilePath:0] ^ 1;
          v4 -= 4096;
          if (v7.st_size + v4 < 4096)
          {

            goto LABEL_10;
          }
        }
      }
    }
  }

  result = [*(a1 + 32) logData:*(a1 + 40) outDidCreateNewFile:0 outNewFilePath:0];
  *(*(*(a1 + 48) + 8) + 24) |= result ^ 1;
  return result;
}

@end