@interface HDDatabaseLegacyJournalFile
+ (id)_loadJournalEntry:(uint64_t)entry;
+ (uint64_t)_processOkemoJournalWithVersion:(uint64_t)version fileHandle:(void *)handle mapping:(uint64_t)mapping size:(uint64_t)size headerLength:(uint64_t)length profile:(void *)profile error:(uint64_t)error handler:(void *)handler;
- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error;
- (BOOL)createAndOpenForWritingWithError:(id *)error;
- (BOOL)flushDataToDisk:(id *)disk;
- (BOOL)openForReadingWithError:(id *)error;
- (BOOL)removeWithError:(id *)error;
- (HDDatabaseLegacyJournalFile)init;
- (HDDatabaseLegacyJournalFile)initWithURL:(id)l;
- (NSString)description;
- (NSString)journalPath;
- (double)modificationTime;
- (id)_fullPath;
- (int64_t)size;
- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
- (unsigned)readVersionWithError:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation HDDatabaseLegacyJournalFile

- (HDDatabaseLegacyJournalFile)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseLegacyJournalFile)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HDDatabaseLegacyJournalFile;
  v6 = [(HDDatabaseLegacyJournalFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v7->_version = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(HDDatabaseLegacyJournalFile *)self close];
  v3.receiver = self;
  v3.super_class = HDDatabaseLegacyJournalFile;
  [(HDDatabaseLegacyJournalFile *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
  isOpen = [(HDDatabaseLegacyJournalFile *)self isOpen];
  v6 = @"closed";
  if (isOpen)
  {
    v6 = @"open";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", _fullPath, v6];

  return v7;
}

- (id)_fullPath
{
  if (self)
  {
    self = [self[1] path];
    v1 = vars8;
  }

  return self;
}

- (NSString)journalPath
{
  path = [(NSURL *)self->_URL path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  return stringByDeletingLastPathComponent;
}

- (int64_t)size
{
  URL = self->_URL;
  v4 = 0;
  [(NSURL *)URL getResourceValue:&v4 forKey:*MEMORY[0x277CBE838] error:0];
  return [v4 integerValue];
}

- (double)modificationTime
{
  URL = self->_URL;
  v8 = 0;
  [(NSURL *)URL getResourceValue:&v8 forKey:*MEMORY[0x277CBE7B0] error:0];
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    return v3;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v4 = v6;
  }

  return v4;
}

- (BOOL)openForReadingWithError:(id *)error
{
  if ([(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseLegacyJournalFile.m" lineNumber:101 description:{@"Cannot open %@ because it is already open", self}];
  }

  name = [(HDDatabaseLegacyJournalFile *)self name];
  journalPath = [(HDDatabaseLegacyJournalFile *)self journalPath];
  v8 = name;
  objc_opt_self();
  v9 = [journalPath stringByAppendingPathComponent:v8];

  v10 = MEMORY[0x277CCA9F8];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v16 = 0;
  v12 = [v10 fileHandleForReadingFromURL:v11 error:&v16];
  v13 = v16;

  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:102 description:@"Error opening journal file" underlyingError:v13];
  }

  if (v12)
  {
    objc_storeStrong(&self->_fileHandle, v12);
  }

  return v12 != 0;
}

- (void)close
{
  fileHandle = self->_fileHandle;
  self->_fileHandle = 0;
  v3 = fileHandle;

  [(NSFileHandle *)v3 closeFile];
}

- (BOOL)removeWithError:(id *)error
{
  [(NSURL *)self->_URL removeAllCachedResourceValues];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
  LOBYTE(error) = [defaultManager removeItemAtPath:_fullPath error:error];

  return error;
}

- (unsigned)readVersionWithError:(id *)error
{
  p_version = &self->_version;
  version = self->_version;
  if (version)
  {
    return version;
  }

  if (![(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Cannot read journal version if journal file is not open"];
    return 0;
  }

  if (![(NSFileHandle *)self->_fileHandle seekToOffset:0 error:error])
  {
    return 0;
  }

  fileHandle = self->_fileHandle;
  v11 = 0;
  v8 = [(NSFileHandle *)fileHandle hk_readValue:p_version ofSize:4 error:&v11];
  v9 = v11;
  if (v8)
  {
    version = *p_version;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to read journal version" underlyingError:v9];
    version = 0;
  }

  return version;
}

- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  v76 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  if ([(HDDatabaseLegacyJournalFile *)self isOpen])
  {
    v11 = [(HDDatabaseLegacyJournalFile *)self readVersionWithError:error];
    if (v11)
    {
      v12 = v11;
      _fullPath = [(HDDatabaseLegacyJournalFile *)&self->super.isa _fullPath];
      fileHandle = self->_fileHandle;
      v15 = _fullPath;
      v16 = profileCopy;
      v17 = fileHandle;
      v18 = handlerCopy;
      v19 = objc_opt_self();
      if ([(NSFileHandle *)v17 seekToOffset:4 error:error])
      {
        memset(&v63, 0, sizeof(v63));
        fileDescriptor = [(NSFileHandle *)v17 fileDescriptor];
        if ((fstat(fileDescriptor, &v63) & 0x80000000) == 0)
        {
          v61 = v18;
          v62 = v16;
          v21 = mmap(0, v63.st_size, 1, 2, fileDescriptor, 0);
          if (v21 == -1)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v45 = v22;
              v46 = *__error();
              v47 = __error();
              v48 = strerror(*v47);
              *buf = 67109378;
              *&buf[4] = v46;
              LOWORD(v67) = 2080;
              *(&v67 + 2) = v48;
              _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Journal file could not be mapped: %d: %s", buf, 0x12u);
            }

            v21 = 0;
          }

          v58 = v21;
          st_size = v63.st_size;
          *buf = MEMORY[0x277D85DD0];
          *&v67 = 3221225472;
          *(&v67 + 1) = __92__HDDatabaseLegacyJournalFile__processJournalFile_profile_fileHandle_version_error_handler___block_invoke;
          v68 = &unk_27861BC80;
          v23 = v61;
          v70 = v63;
          v69 = v23;
          v71 = sel__processJournalFile_profile_fileHandle_version_error_handler_;
          v72 = v19;
          v57 = v15;
          v60 = v16;
          v59 = v17;
          v24 = buf;
          objc_opt_self();
          if (v12 - 1 < 2)
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *v73 = 67109378;
              *&v73[4] = v12;
              v74 = 2114;
              v32 = v57;
              v75 = v57;
              _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Ignoring version %u journal %{public}@", v73, 0x12u);
              v26 = 2;
              v18 = v61;
              v25 = v58;
            }

            else
            {
              v26 = 2;
              v18 = v61;
              v32 = v57;
              v25 = v58;
            }

            goto LABEL_29;
          }

          if (v12 - 3 >= 2)
          {
            if (v12 == 5)
            {
              v33 = v59;
              v34 = v60;
              v54 = v24;
              v52 = objc_opt_self();
              v65 = 0;
              *v73 = 0;
              v35 = [(NSFileHandle *)v33 hk_readValue:&v65 ofSize:1 error:v73];
              v36 = *v73;
              v53 = v33;
              v55 = v34;
              if (v35)
              {
                v37 = objc_alloc(MEMORY[0x277CBEB28]);
                v51 = [v37 initWithCapacity:v65];
                mutableBytes = [v51 mutableBytes];
                v64 = v36;
                v39 = [(NSFileHandle *)v33 hk_readValue:mutableBytes ofSize:v65 error:&v64];
                v40 = v64;

                v50 = v40;
                if (v39)
                {
                  v25 = v58;
                  v26 = [HDDatabaseLegacyJournalFile _processOkemoJournalWithVersion:v52 fileHandle:v33 mapping:v58 size:st_size headerLength:v65 + 5 profile:v55 error:error handler:v54];
                  v18 = v61;
                  v16 = v62;
                }

                else
                {
                  [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Unable to read build number from journal file" underlyingError:v40];
                  v26 = 2;
                  v18 = v61;
                  v16 = v62;
                  v25 = v58;
                }

                v32 = v57;

                v42 = v50;
              }

              else
              {
                [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Unable to read build length from journal file" underlyingError:v36];
                v26 = 2;
                v42 = v36;
                v18 = v61;
                v16 = v62;
                v32 = v57;
                v25 = v58;
              }

              goto LABEL_29;
            }

            _HKInitializeLogging();
            v41 = *MEMORY[0x277CCC2A0];
            v18 = v61;
            v25 = v58;
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *v73 = 67109378;
              *&v73[4] = v12;
              v74 = 2112;
              v32 = v57;
              v75 = v57;
              _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Unexpected journal version %u at path %@", v73, 0x12u);
              v26 = 2;
              goto LABEL_29;
            }

            v26 = 2;
          }

          else
          {
            v25 = v58;
            v26 = [HDDatabaseLegacyJournalFile _processOkemoJournalWithVersion:v59 fileHandle:v58 mapping:st_size size:4 headerLength:v60 profile:error error:v24 handler:?];
            v18 = v61;
          }

          v32 = v57;
LABEL_29:

          if (v25)
          {
            munmap(v25, v63.st_size);
          }

          goto LABEL_32;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = v18;
        v29 = *__error();
        v30 = __error();
        v49 = v29;
        v18 = v28;
        [v27 hk_assignError:error code:102 format:{@"Journal file fstat failed: %d: %s", v49, strerror(*v30)}];
      }

      v26 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v26 = 2;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Journal is not open"];
    v26 = 0;
  }

LABEL_33:

  v43 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (id)_loadJournalEntry:(uint64_t)entry
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v2 error:0];

  [v3 setClass:objc_opt_class() forClassName:@"_UserDefaultUpdatedJournalEntry"];
  [v3 setClass:objc_opt_class() forClassName:@"_UserDefaultRemovedJournalEntry"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  if (!v4 || ([v3 error], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      v9 = v6;
      error = [v3 error];
      v11 = 138543362;
      v12 = error;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Error occurred while decoding journal entry: %{public}@", &v11, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __92__HDDatabaseLegacyJournalFile__processJournalFile_profile_fileHandle_version_error_handler___block_invoke(void *a1)
{
  v2 = a1[17];
  v3 = (*(a1[4] + 16))();
  if (v3 == 4)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v7 = a1[23];
    v6 = a1[24];
    v8 = HDStringFromJournalProcessingResult(4u);
    [v5 handleFailureInMethod:v7 object:v6 file:@"HDDatabaseLegacyJournalFile.m" lineNumber:329 description:{@"%@ does not support %@", v6, v8}];
  }

  return v3;
}

+ (uint64_t)_processOkemoJournalWithVersion:(uint64_t)version fileHandle:(void *)handle mapping:(uint64_t)mapping size:(uint64_t)size headerLength:(uint64_t)length profile:(void *)profile error:(uint64_t)error handler:(void *)handler
{
  handleCopy = handle;
  profileCopy = profile;
  handlerCopy = handler;
  objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 3;
  v15 = handleCopy;
  v16 = handlerCopy;
  HKWithAutoreleasePool();
  v13 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v13;
}

uint64_t __122__HDDatabaseLegacyJournalFile__processOkemoJournalWithVersion_fileHandle_mapping_size_headerLength_profile_error_handler___block_invoke(void *a1, uint64_t *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v4 = v3;
  v5 = a1[7];
  if (v5)
  {
    v80 = v3;
    v6 = a1[8];
    v7 = a1[9];
    v8 = a1[10];
    v9 = objc_opt_self();
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = v10;
    v12 = (v8 + v5);
    v13 = v7 + v5;
    v14 = v7 + v5 - 4;
    v78 = v5;
    if (v12 >= v14)
    {
      v38 = 0;
    }

    else
    {
      v76 = v7;
      v77 = a1;
      v82 = v10;
      while (1)
      {
        v15 = v12 + 1;
        v16 = *v12;
        v12 = (v12 + v16 + 4);
        if (v12 > v13)
        {
          break;
        }

        v17 = objc_autoreleasePoolPush();
        v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:v16 freeWhenDone:0];
        if (v18)
        {
          v19 = [(HDDatabaseLegacyJournalFile *)v9 _loadJournalEntry:v18];
          if (v19)
          {
            [v82 addObject:v19];
          }

          else
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *v85 = v16;
              *&v85[4] = 2048;
              *&v85[6] = v15 - v78;
              _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to load journal entry (%d bytes at offset %lu); skipping.", buf, 0x12u);
            }
          }
        }

        objc_autoreleasePoolPop(v17);
        if (v12 >= v14)
        {
          v38 = 0;
          goto LABEL_24;
        }
      }

      v38 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"*** Journal file too short for expected data, Offset: %lu Length: %d, fileSize: %ld", v15 - v78, v16, v76}];
      v12 = v15;
LABEL_24:
      a1 = v77;
      v11 = v82;
    }

    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v85 = (v12 - v78) >> 10;
      _os_log_debug_impl(&dword_228986000, v39, OS_LOG_TYPE_DEBUG, "Processed file size %luK.", buf, 0xCu);
    }

    v40 = v11;
    v41 = v38;
    if (v41)
    {
      v42 = v41;
      if (a2)
      {
        v43 = v41;
        *a2 = v42;
      }

      else
      {
        _HKLogDroppedError();
      }

      v44 = v11;
      *(*(a1[6] + 8) + 24) = 2;
      _HKInitializeLogging();
      v50 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v46 = v50;
        v4 = v80;
        [v80 timeIntervalSinceNow];
        v52 = -v51;
        v53 = [v44 count];
        v54 = *a2;
        *buf = 134218498;
        *v85 = v52;
        *&v85[8] = 2048;
        *&v85[10] = v53;
        v86 = 2114;
        v87 = v54;
        _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "Map load time: %0.2f, entries: %ld, error: %{public}@", buf, 0x20u);
        goto LABEL_35;
      }
    }

    else
    {

      v44 = v11;
      _HKInitializeLogging();
      v45 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
      {
        v46 = v45;
        v4 = v80;
        [v80 timeIntervalSinceNow];
        v48 = -v47;
        v49 = [v44 count];
        *buf = 134218240;
        *v85 = v48;
        *&v85[8] = 2048;
        *&v85[10] = v49;
        _os_log_debug_impl(&dword_228986000, v46, OS_LOG_TYPE_DEBUG, "Map load time: %0.2f, entries: %ld", buf, 0x16u);
LABEL_35:

        goto LABEL_46;
      }
    }

    goto LABEL_45;
  }

  v21 = a1[4];
  if (!v21)
  {
    v44 = 0;
    goto LABEL_46;
  }

  v80 = v3;
  v22 = a1[8];
  v23 = v21;
  v24 = objc_opt_self();
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v83 = 0;
  v79 = v23;
  while (1)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = [v23 readDataOfLength:4];
    if ([v27 length] != 4)
    {
      break;
    }

    v28 = *[v27 bytes];
    v29 = [v23 readDataOfLength:v28];
    if ([v29 length] != v28)
    {
      v55 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Journal file too short for expected data, Offset: %lu Length: %ld, fileSize: %llu", objc_msgSend(v29, "length"), v28, objc_msgSend(v23, "offsetInFile") - objc_msgSend(v29, "length")}];

      v83 = v55;
      break;
    }

    v30 = [(HDDatabaseLegacyJournalFile *)v24 _loadJournalEntry:v29];
    if (v30)
    {
      [v25 addObject:v30];
    }

    else
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = v25;
      v33 = a1;
      v34 = [v29 length];
      v35 = [v23 offsetInFile];
      v36 = v24;
      v75 = v34;
      a1 = v33;
      v25 = v32;
      v37 = [v31 hk_error:100 format:{@"Unknown journal entry (%lu bytes at offset %llu)", v75, v35 - objc_msgSend(v29, "length")}];

      v83 = v37;
      v24 = v36;
      v23 = v79;
    }

    objc_autoreleasePoolPop(v26);
    if (!v30)
    {
      goto LABEL_39;
    }
  }

  objc_autoreleasePoolPop(v26);
LABEL_39:
  _HKInitializeLogging();
  v56 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v71 = v56;
    *buf = 134217984;
    *v85 = [v23 offsetInFile] >> 10;
    _os_log_debug_impl(&dword_228986000, v71, OS_LOG_TYPE_DEBUG, "Processed file size %lluK.", buf, 0xCu);
  }

  v57 = v25;

  v44 = v25;
  if (!v83)
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      v59 = v64;
      v4 = v80;
      [v80 timeIntervalSinceNow];
      v73 = -v72;
      v74 = [v44 count];
      *buf = 134218240;
      *v85 = v73;
      *&v85[8] = 2048;
      *&v85[10] = v74;
      _os_log_debug_impl(&dword_228986000, v59, OS_LOG_TYPE_DEBUG, "Load time: %0.2f, entries: %ld", buf, 0x16u);
      goto LABEL_52;
    }

LABEL_45:
    v4 = v80;
    goto LABEL_46;
  }

  *(*(a1[6] + 8) + 24) = 2;
  _HKInitializeLogging();
  v58 = *MEMORY[0x277CCC2A0];
  if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_45;
  }

  v59 = v58;
  v4 = v80;
  [v80 timeIntervalSinceNow];
  v61 = -v60;
  v62 = [v44 count];
  v63 = *a2;
  *buf = 134218498;
  *v85 = v61;
  *&v85[8] = 2048;
  *&v85[10] = v62;
  v86 = 2114;
  v87 = v63;
  _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "Load time: %0.2f, entries: %ld, error: %{public}@", buf, 0x20u);
LABEL_52:

LABEL_46:
  if ([v44 count])
  {
    v65 = objc_alloc_init(MEMORY[0x277CBEAA8]);

    *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
    _HKInitializeLogging();
    v66 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      v67 = v66;
      [v65 timeIntervalSinceNow];
      *buf = 134217984;
      *v85 = -v68;
      _os_log_debug_impl(&dword_228986000, v67, OS_LOG_TYPE_DEBUG, "Merge time: %0.2f", buf, 0xCu);
    }
  }

  else
  {
    v65 = v4;
  }

  v69 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)createAndOpenForWritingWithError:(id *)error
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v4)
  {
    if (error)
    {
      v5 = v4;
      *error = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4 == 0;
}

- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error
{
  v6 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v6)
  {
    if (error)
    {
      v7 = v6;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v6 == 0;
}

- (BOOL)flushDataToDisk:(id *)disk
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:3328 description:@"HDDatabaseLegacyJournalFile does not support writing"];
  if (v4)
  {
    if (disk)
    {
      v5 = v4;
      *disk = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4 == 0;
}

@end