@interface HDHFDataStore
+ (uint64_t)_errorIndicatesCorruption:(uint64_t)corruption;
- (BOOL)_createNewStore:(id *)store;
- (BOOL)_requiresRebuildForState:(_BOOL8)result;
- (BOOL)accessStoreWithError:(id *)error block:(id)block;
- (BOOL)deleteHFDAt:(id)at error:(id *)error;
- (BOOL)discardStoreWithError:(id *)error;
- (BOOL)moveHFDAsideWithoutOverwritingFrom:(id)from to:(id)to error:(id *)error;
- (HDHFDataStore)initWithPath:(id)path;
- (HDHFDataStore)initWithPath:(id)path fileSystem:(shared_ptr<health::VirtualFilesystem>)system;
- (HDHFDataStoreDelegate)delegate;
- (id).cxx_construct;
- (id)_walPathForHFDAtPath:(uint64_t)path;
- (id)_writeaheadLogURLForHFDAtURL:(uint64_t)l;
- (id)description;
- (id)diagnosticDescription;
- (id)directoryURL;
- (id)fileManager;
- (int64_t)deleteSQLiteMigrationArchive:(id *)archive;
- (int64_t)rebuildState;
- (int64_t)rebuildWithTransaction:(id)transaction error:(id *)error;
- (uint64_t)_convertExceptionsToError:(void *)error inBlock:;
- (uint64_t)_deleteFileAtURL:(void *)l error:;
- (uint64_t)_lock_archiveHFDTo:(uint64_t)to nextState:(void *)state error:;
- (uint64_t)_lock_deleteCompressedArchive:(os_unfair_lock *)archive;
- (uint64_t)_lock_rebuildOneStep:(uint64_t)step;
- (uint64_t)_moveFileOnlyIfDestinationEmptyFromURL:(void *)l toURL:(void *)rL error:;
- (unique_ptr<health::DataStore,)dataStoreAtURL:(id)l filesystem:(const void *)filesystem allowCheckpoint:(BOOL)checkpoint error:(id *)error;
- (void)_requestHFDRebuild;
- (void)dealloc;
- (void)flushForInvalidation:(BOOL)invalidation;
- (void)requestHFDToSQLiteMigration;
- (void)setRebuildState:(uint64_t)state;
- (void)unitTest_requestRebuild;
@end

@implementation HDHFDataStore

- (id)_writeaheadLogURLForHFDAtURL:(uint64_t)l
{
  v3 = a2;
  v4 = v3;
  if (l)
  {
    uRLByDeletingPathExtension = [v3 URLByDeletingPathExtension];
    v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"hfd-wal"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_moveFileOnlyIfDestinationEmptyFromURL:(void *)l toURL:(void *)rL error:
{
  v7 = a2;
  lCopy = l;
  if (self)
  {
    fileManager = [self fileManager];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(lCopy, "fileSystemRepresentation")}];
    v11 = [fileManager fileExistsAtPath:v10];

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v20 = 0;
      v13 = [fileManager moveItemAtURL:v7 toURL:lCopy error:&v20];
      v14 = v20;
      v15 = v14;
      if (v13 & 1) != 0 || ([v14 hk_isCocoaNoSuchFileError])
      {
        v12 = 1;
      }

      else
      {
        v16 = v15;
        v17 = v16;
        if (v16)
        {
          if (rL)
          {
            v18 = v16;
            *rL = v17;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)_deleteFileAtURL:(void *)l error:
{
  v5 = a2;
  if (self)
  {
    fileManager = [self fileManager];
    v14 = 0;
    v7 = [fileManager removeItemAtURL:v5 error:&v14];
    v8 = v14;

    if (v7 & 1) != 0 || ([v8 hk_isCocoaNoSuchFileError])
    {
      v9 = 1;
    }

    else
    {
      v10 = v8;
      v11 = v10;
      if (v10)
      {
        if (l)
        {
          v12 = v10;
          *l = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unique_ptr<health::DataStore,)dataStoreAtURL:(id)l filesystem:(const void *)filesystem allowCheckpoint:(BOOL)checkpoint error:(id *)error
{
  v10 = v6;
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3812000000;
  v24 = __Block_byref_object_copy__101;
  v25 = __Block_byref_object_dispose__101;
  v26 = &unk_22929BC4D;
  v27 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HDHFDataStore_HFDMigrationSupport__dataStoreAtURL_filesystem_allowCheckpoint_error___block_invoke;
  v16[3] = &unk_278621F70;
  checkpointCopy = checkpoint;
  v18 = &v21;
  v12 = lCopy;
  v17 = v12;
  filesystemCopy = filesystem;
  hfd_catchExceptionsAsErrors(v16, error, 0);
  v13 = v22[6];
  v22[6] = 0;
  *v10 = v13;

  _Block_object_dispose(&v21, 8);
  v14 = v27;
  v27 = 0;
  if (v14)
  {
    health::TransactionalFile::~TransactionalFile(v14);
    MEMORY[0x22AAC8590]();
  }

  return v15;
}

void __86__HDHFDataStore_HFDMigrationSupport__dataStoreAtURL_filesystem_allowCheckpoint_error___block_invoke(uint64_t a1)
{
  *(a1 + 56);
  [*(a1 + 32) fileSystemRepresentation];
  v2 = *(a1 + 48);
  operator new();
}

- (BOOL)moveHFDAsideWithoutOverwritingFrom:(id)from to:(id)to error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (([(HDHFDataStore *)self _moveFileOnlyIfDestinationEmptyFromURL:fromCopy toURL:toCopy error:error]& 1) != 0)
  {
    v10 = [(HDHFDataStore *)self _writeaheadLogURLForHFDAtURL:toCopy];
    v11 = [(HDHFDataStore *)self _writeaheadLogURLForHFDAtURL:fromCopy];
    v12 = [(HDHFDataStore *)self _moveFileOnlyIfDestinationEmptyFromURL:v11 toURL:v10 error:error];
    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        v19 = 138543362;
        v20 = v18;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to move production HFD WAL aside (%{public}@)", &v19, 0xCu);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      v19 = 138543362;
      v20 = v17;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to move production HFD aside (%{public}@)", &v19, 0xCu);
    }

    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)deleteHFDAt:(id)at error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  atCopy = at;
  if (([(HDHFDataStore *)self _deleteFileAtURL:atCopy error:error]& 1) != 0)
  {
    v7 = [(HDHFDataStore *)self _writeaheadLogURLForHFDAtURL:atCopy];
    v8 = [(HDHFDataStore *)self _deleteFileAtURL:v7 error:error];
    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v14 = *error;
        v15 = 138543618;
        v16 = v7;
        v17 = 2114;
        v18 = v14;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to delete HFD WAL at '%{public}@' (%{public}@)", &v15, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      v15 = 138543618;
      v16 = atCopy;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to delete HFD at '%{public}@' (%{public}@)", &v15, 0x16u);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HDHFDataStore)initWithPath:(id)path
{
  v5 = 0;
  v6 = 0;
  v3 = [(HDHFDataStore *)self initWithPath:path fileSystem:&v5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

- (HDHFDataStore)initWithPath:(id)path fileSystem:(shared_ptr<health::VirtualFilesystem>)system
{
  ptr = system.__ptr_;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = HDHFDataStore;
  v8 = [(HDHFDataStore *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileSystemPath, path);
    v11 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v9->_fileSystem.__cntrl_;
    v9->_fileSystem.__ptr_ = v11;
    v9->_fileSystem.__cntrl_ = v10;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v9->_lock._os_unfair_lock_opaque = 0;
    v13 = v9->_highFrequencyDataStore.__cntrl_;
    v9->_highFrequencyDataStore.__ptr_ = 0;
    v9->_highFrequencyDataStore.__cntrl_ = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = HKCreateSerialDispatchQueue();
    openQueue = v9->_openQueue;
    v9->_openQueue = v14;
  }

  return v9;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHFDataStore.mm" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"atomic_load(&_invalidated)"}];
  }

  v6.receiver = self;
  v6.super_class = HDHFDataStore;
  [(HDHFDataStore *)&v6 dealloc];
}

- (id)_walPathForHFDAtPath:(uint64_t)path
{
  v3 = a2;
  v4 = v3;
  if (path)
  {
    stringByDeletingPathExtension = [v3 stringByDeletingPathExtension];
    v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"hfd-wal"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  if (self->_highFrequencyDataStore.__ptr_)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = v5;
    fileSystemPath = self->_fileSystemPath;
    v8 = atomic_load(&self->_invalidated);
    if (v8)
    {
      v9 = "INVALIDATED";
    }

    else
    {
      v9 = "";
    }

    v10 = [v3 stringWithFormat:@"<%@:%p %@ %s OPEN>", v5, self, self->_fileSystemPath, v9];
  }

  else
  {
    v11 = atomic_load(&self->_hasOpenStore);
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v6 = v14;
    v15 = self->_fileSystemPath;
    v16 = atomic_load(&self->_invalidated);
    if (v16)
    {
      v17 = "INVALIDATED";
    }

    else
    {
      v17 = "";
    }

    if (v11)
    {
      [v12 stringWithFormat:@"<%@:%p %@ %s PENDING DISCARD>", v14, self, self->_fileSystemPath, v17];
    }

    else
    {
      [v12 stringWithFormat:@"<%@:%p %@ %s closed>", v14, self, self->_fileSystemPath, v17];
    }
    v10 = ;
  }

  v18 = v10;

  return v18;
}

- (id)diagnosticDescription
{
  v37 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v37 setDateStyle:2];
  [v37 setTimeStyle:0];
  fileSystemPath = [(HDHFDataStore *)self fileSystemPath];
  stringByDeletingLastPathComponent = [fileSystemPath stringByDeletingLastPathComponent];
  fileManager = [(HDHFDataStore *)self fileManager];
  v43 = 0;
  v36 = fileManager;
  v5 = [fileManager attributesOfItemAtPath:fileSystemPath error:&v43];
  v6 = v43;
  v7 = v6;
  if (v5)
  {
    v39 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
  }

  else if ([v6 hk_isCocoaNoSuchFileError])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v39 = 0;
  }

  v9 = [(HDHFDataStore *)self _walPathForHFDAtPath:fileSystemPath];
  v42 = v7;
  v10 = [fileManager attributesOfItemAtPath:v9 error:&v42];
  v11 = v42;

  if (v10)
  {
    v38 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  }

  else if ([v11 hk_isCocoaNoSuchFileError])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  }

  else
  {
    v38 = 0;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = sizeStringForNumber(v39);
  if (v8)
  {
    v14 = [v37 stringFromDate:v8];
  }

  else
  {
    v14 = @"<unknown>";
  }

  v15 = sizeStringForNumber(v38);
  v16 = [v12 stringWithFormat:@"\nHFD size: %@ (created %@ WAL size %@; rebuild state %ld)", v13, v14, v15, -[HDHFDataStore rebuildState](self, "rebuildState")];;

  if (v8)
  {
  }

  if ([(HDHFDataStore *)self rebuildState]>= 2 && [(HDHFDataStore *)self rebuildState]< 6)
  {
    v33 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"healthdb_archive.hfd"];
    v18 = [(HDHFDataStore *)self _walPathForHFDAtPath:v33];
    v41 = v11;
    v19 = [v36 attributesOfItemAtPath:v18 error:&v41];
    v20 = v41;

    if (v19)
    {
      v21 = v33;
      v32 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    }

    else
    {
      v21 = v33;
      if ([v20 hk_isCocoaNoSuchFileError])
      {
        v32 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      }

      else
      {
        v32 = 0;
      }
    }

    if (([v36 fileExistsAtPath:v21] & 1) == 0)
    {
      v22 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"healthdb_archive.hfd.tgz"];

      v21 = v22;
    }

    v40 = v20;
    v10 = [v36 attributesOfItemAtPath:v21 error:&v40];
    v34 = v21;
    v11 = v40;

    if (v10)
    {
      v23 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      v24 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
    }

    else if ([v11 hk_isCocoaNoSuchFileError])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v25 = MEMORY[0x277CCACA8];
    v31 = v23;
    v26 = sizeStringForNumber(v23);
    if (v24)
    {
      v27 = [v37 stringFromDate:v24];
    }

    else
    {
      v27 = @"<unknown>";
    }

    v28 = sizeStringForNumber(v32);
    v29 = [v25 stringWithFormat:@"\nHFD archive size: %@ (created %@ WAL size %@)", v26, v27, v28];;

    if (v24)
    {
    }

    v17 = [v16 stringByAppendingString:v29];
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (void)flushForInvalidation:(BOOL)invalidation
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x4012000000;
  v9 = __Block_byref_object_copy__153;
  v10 = __Block_byref_object_dispose__153;
  v11 = &unk_22929BC4D;
  v12 = 0;
  v13 = 0;
  HKWithUnfairLock();
  if (v7[6])
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Closing store", buf, 0xCu);
    }

    atomic_store(0, &self->_hasOpenStore);
    _HDHFDataStoreWillCloseStore(self);
    health::TransactionalFile::invalidate(v7[6]);
  }

  _Block_object_dispose(&v6, 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __38__HDHFDataStore_flushForInvalidation___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    atomic_store(1u, (*(a1 + 32) + 48));
  }

  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Discarding store and preparing for flush.", &v12, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 32);
  v6 = *(v4 + 40);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 56);
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)discardStoreWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__370;
  v17 = __Block_byref_object_dispose__371;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  HKWithUnfairLock();
  v4 = *(v10 + 24);
  if ((v4 & 1) == 0)
  {
    v5 = v14[5];
    v6 = v5;
    if (v5)
    {
      if (error)
      {
        v7 = v5;
        *error = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v4 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v4 & 1;
}

void __39__HDHFDataStore_discardStoreWithError___block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2->_highFrequencyDataStore.__ptr_)
  {
    _HDHFDataStoreWillCloseStore(v2);
    v3 = a1[4];
    v4 = *(v3 + 40);
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    atomic_store(0, (a1[4] + 49));
    v2 = a1[4];
  }

  v5 = [(HDHFDataStore *)v2 fileManager];
  v6 = *(a1[4] + 88);
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v5 removeItemAtPath:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8 & 1) != 0 || ([*(*(a1[5] + 8) + 40) hk_isCocoaNoSuchFileError])
  {
    v9 = [*(a1[4] + 88) stringByDeletingPathExtension];
    v10 = [v9 stringByAppendingPathExtension:@"hfd-wal"];

    v11 = *(a1[5] + 8);
    v18 = *(v11 + 40);
    v12 = [v5 removeItemAtPath:v10 error:&v18];
    objc_storeStrong((v11 + 40), v18);
    if (v12 & 1) != 0 || ([*(*(a1[5] + 8) + 40) hk_isCocoaNoSuchFileError])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(a1[5] + 8) + 40);
        *buf = 138543362;
        v21 = v17;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Unable to delete HFD writeahead log (%{public}@)", buf, 0xCu);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1[5] + 8) + 40);
      *buf = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Unable to delete HFD (%{public}@)", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_createNewStore:(id *)store
{
  [(HDHFDataStore *)self flushForInvalidation:0];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_fileSystemPath];
  v13 = 0;
  v6 = [(HDHFDataStore *)self deleteHFDAt:v5 error:&v13];
  v7 = v13;

  if (v6 || [v7 hk_isCocoaNoSuchFileError])
  {
    [(HDHFDataStore *)self setRebuildState:?];
    v8 = 1;
  }

  else
  {
    v9 = v7;
    v10 = v9;
    if (v9)
    {
      if (store)
      {
        v11 = v9;
        *store = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
  }

  return v8;
}

- (void)setRebuildState:(uint64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if (state)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      stateCopy = state;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated rebuild state: %ld", &v7, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((state + 80));
    [WeakRetained HFDataStore:state setInteger:a2 forKey:@"HKHFDRebuildStage"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __68__HDHFDataStore__lock_primitiveOpenHighFrequencyDataStoreWithError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDHFDataStore__lock_primitiveOpenHighFrequencyDataStoreWithError___block_invoke_2;
  v17[3] = &unk_27861CAE8;
  v17[5] = *(a1 + 48);
  v18 = 0;
  v17[4] = v3;
  v4 = [(HDHFDataStore *)v3 _convertExceptionsToError:v17 inBlock:?];
  v5 = v18;
  if (v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 64);
      v9 = CFAbsoluteTimeGetCurrent();
      *buf = 138543874;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v9 - Current;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished constructing data store (%ld) in %0.3lfs", buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 64);
      v16 = CFAbsoluteTimeGetCurrent();
      *buf = 138543874;
      v20 = v14;
      v21 = 2048;
      v22 = v15;
      v23 = 2048;
      v24 = v16 - Current;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to construct data store (%ld) in %0.3lfs", buf, 0x20u);
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = v5;
    v6 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

void __68__HDHFDataStore__lock_primitiveOpenHighFrequencyDataStoreWithError___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 88) UTF8String];
  v2 = *(a1 + 32);
  operator new();
}

- (uint64_t)_convertExceptionsToError:(void *)error inBlock:
{
  v40 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!self)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__HDHFDataStore__convertExceptionsToError_inBlock___block_invoke;
  v34[3] = &unk_278627D40;
  v35 = errorCopy;
  v33 = 0;
  v7 = hfd_catchExceptionsAsErrors(v34, &v33, 0);
  v8 = v33;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      if (a2)
      {
        v12 = v10;
        *a2 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    userInfo = [v11 userInfo];
    if (![HDHFDataStore _errorIndicatesCorruption:v11])
    {
      goto LABEL_16;
    }

    v30 = [userInfo objectForKeyedSubscript:@"HKDatabaseFailureTypeKey"];
    intValue = [v30 intValue];
    v14 = [userInfo objectForKey:@"HKDatabaseSuberrorKey"];
    v15 = v14;
    if (v14)
    {
      intValue2 = [v14 intValue];
    }

    else
    {
      intValue2 = 0;
    }

    v16 = [userInfo objectForKey:@"HKDatabaseRecommendsPromptingUserKey"];
    bOOLValue = [v16 BOOLValue];

    rebuildState = [self rebuildState];
    objc_opt_self();
    v18 = intValue;
    if (intValue <= 0xB)
    {
      if (((1 << intValue) & 0xBC4) != 0)
      {
LABEL_15:
        rebuildState2 = [self rebuildState];
        WeakRetained = objc_loadWeakRetained(self + 10);
        [WeakRetained HFDataStore:self detectedCorruptionOfType:v18 code:intValue2 error:v11 shouldPromptUser:bOOLValue initialRebuildState:rebuildState updatedRebuildState:rebuildState2];

LABEL_16:
        v21 = v11;
        objc_opt_self();
        userInfo2 = [v21 userInfo];
        v23 = [userInfo2 objectForKeyedSubscript:@"HKDatabaseErrorIsOutOfSpaceKey"];
        bOOLValue2 = [v23 BOOLValue];

        if (bOOLValue2)
        {
          v25 = objc_loadWeakRetained(self + 10);
          [v25 HFDataStoreDetectedOutOfSpace:self];
        }

        goto LABEL_19;
      }

      if (((1 << intValue) & 0x3A) != 0)
      {
LABEL_14:
        [(HDHFDataStore *)self _requestHFDRebuild];
        goto LABEL_15;
      }

      if (intValue == 10)
      {
        if (intValue2 != 27 && intValue2 != 22)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    if (intValue != 100)
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v37 = v18;
        v38 = 1024;
        v39 = intValue2;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Unexpected failure type when considering rebuild request: %ld (%d)", buf, 0x12u);
      }
    }

    goto LABEL_15;
  }

LABEL_19:

LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void __50__HDHFDataStore__highFrequencyDataStoreWithError___block_invoke(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v36 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  os_unfair_lock_assert_owner((v2 + 24));
  v3 = atomic_load((v2 + 48));
  if (v3)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v36 code:100 format:@"HFD invalidated"];
LABEL_4:
    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    goto LABEL_8;
  }

  os_unfair_lock_assert_owner((v2 + 24));
  if (*(v2 + 32))
  {
LABEL_7:
    v4 = *(v2 + 32);
LABEL_8:
    v5 = *(v2 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_10;
  }

  v11 = v2;
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 3221225472;
  v51 = ___ZL27_HDHFDataStoreWillOpenStoreP13HDHFDataStore_block_invoke;
  v52 = &unk_278627D90;
  v53 = v11;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL27_HDHFDataStoreWillOpenStoreP13HDHFDataStore_block_invoke_488;
  v59 = &unk_278627D68;
  v60 = v53;
  v12 = v53;
  active = _WithActiveHFDataStores(&block, buf);

  if ((active & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v36 code:103 format:{@"%@: Reached timeout waiting for existing data store to close the HFD.", v12}];
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      LODWORD(block) = 138412290;
      *(&block + 4) = v12;
      _os_log_fault_impl(&dword_228986000, v24, OS_LOG_TYPE_FAULT, "%@: Reached timeout waiting for existing data store to close the HFD.", &block, 0xCu);
    }

    goto LABEL_4;
  }

  os_unfair_lock_assert_owner((v2 + 24));
  openAttempt = v12->_openAttempt;
  v12->_openAttempt = openAttempt + 1;
  _HKInitializeLogging();
  v15 = MEMORY[0x277CCC2A0];
  v16 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = openAttempt;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Opening store (%ld)", buf, 0x16u);
  }

  v43 = 0;
  os_unfair_lock_assert_owner((v2 + 24));
  WeakRetained = objc_loadWeakRetained(&v12->_delegate);
  v18 = [WeakRetained allowHFDMigration:v12];

  if (v18)
  {
    do
    {
      v19 = [(HDHFDataStore *)v12 _lock_rebuildOneStep:?];
    }

    while (v19 == 3);
    v20 = v43;
    if (v19)
    {
      _HKInitializeLogging();
      v21 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to migrate HFD during open: %{public}@", buf, 0x16u);
      }

      v22 = v20;
      v20 = v22;
      if (v22)
      {
        v23 = v22;
        v36 = v20;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v20 = v43;
  }

  if ([(HDHFDataStore *)v12 rebuildState]== 100)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v36 code:1104 description:@"Attempt to access the HFD after migration to SQLite and deletion of the HFD"];
LABEL_31:

    v5 = 0;
    goto LABEL_32;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4012000000;
  v59 = __Block_byref_object_copy__153;
  v60 = __Block_byref_object_dispose__153;
  v61 = &unk_22929BC4D;
  v62 = 0;
  v63 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__370;
  v41 = __Block_byref_object_dispose__371;
  v42 = 0;
  v25 = dispatch_semaphore_create(0);
  openQueue = v12->_openQueue;
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 3221225472;
  v51 = __68__HDHFDataStore__lock_primitiveOpenHighFrequencyDataStoreWithError___block_invoke;
  v52 = &unk_278627CF0;
  v53 = v12;
  v55 = buf;
  v56 = &v37;
  v57 = openAttempt;
  v27 = v25;
  v54 = v27;
  dispatch_async(openQueue, &block);
  v28 = dispatch_time(0, 20000000000);
  if (dispatch_semaphore_wait(v27, v28))
  {
    _HKInitializeLogging();
    v29 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_FAULT))
    {
      *v44 = 138543362;
      v45 = v12;
      _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "%{public}@: Timed out attempting to open the HFD, despite tracking saying we should be successful.", v44, 0xCu);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:&v36 code:1103 format:@"Timed out attempting to open the HFD."];
LABEL_38:
    v30 = 0;
    v5 = 0;
    goto LABEL_39;
  }

  if (!*(*&buf[8] + 48))
  {
    _HKInitializeLogging();
    v33 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v35 = v38[5];
      *v44 = 138543874;
      v45 = v12;
      v46 = 2048;
      v47 = openAttempt;
      v48 = 2114;
      v49 = v35;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Failed opening store (%ld): %{public}@", v44, 0x20u);
    }

    v34 = v38[5];
    if (v34)
    {
      v34 = v34;
      v36 = v34;
    }

    goto LABEL_38;
  }

  _HKInitializeLogging();
  v32 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 138543618;
    v45 = v12;
    v46 = 2048;
    v47 = openAttempt;
    _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished opening store (%ld)", v44, 0x16u);
  }

  v30 = *(*&buf[8] + 48);
  v5 = *(*&buf[8] + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_39:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(buf, 8);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (v30)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v2 + 32) = v30;
    cntrl = v12->_highFrequencyDataStore.__cntrl_;
    v12->_highFrequencyDataStore.__cntrl_ = v5;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    atomic_store(1u, &v12->_hasOpenStore);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    goto LABEL_7;
  }

LABEL_32:
  _HDHFDataStoreWillCloseStore(v12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_4;
  }

  v4 = 0;
LABEL_10:
  v6 = v36;
  v7 = v36;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 56);
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!*(*(a1[5] + 8) + 48))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)_errorIndicatesCorruption:(uint64_t)corruption
{
  v2 = a2;
  objc_opt_self();
  userInfo = [v2 userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"HKDatabaseErrorIndicatesCorruptionKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)accessStoreWithError:(id *)error block:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHFDataStore.mm" lineNumber:548 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if ([(HDHFDataStore *)self rebuildState]!= 100)
  {
    if (self)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x4012000000;
      v36 = __Block_byref_object_copy__153;
      v37 = __Block_byref_object_dispose__153;
      v38 = &unk_22929BC4D;
      v39 = 0;
      v40 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__370;
      v31 = __Block_byref_object_dispose__371;
      v32 = 0;
      v26[1] = MEMORY[0x277D85DD0];
      v26[2] = 3221225472;
      v26[3] = __50__HDHFDataStore__highFrequencyDataStoreWithError___block_invoke;
      v26[4] = &unk_278627D18;
      v26[5] = self;
      v26[6] = &v33;
      v26[7] = &v27;
      HKWithUnfairLock();
      v9 = v34;
      v10 = v34[6];
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v12 = v28[5];
        v11 = v12;
        if (v12)
        {
          v13 = v12;
        }

        v9 = v34;
        v10 = v34[6];
      }

      v14 = v9[7];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _Block_object_dispose(&v27, 8);

      _Block_object_dispose(&v33, 8);
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }
    }

    else
    {
      v10 = 0;
      v14 = 0;
      v11 = 0;
    }

    v15 = v11;
    if ([(HDHFDataStore *)self rebuildState]== 100)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:1104 description:@"Attempt to access the HFD after migration to SQLite and deletion of the HFD"];
    }

    else
    {
      if (v10)
      {
        v26[0] = v15;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3321888768;
        v22[2] = __44__HDHFDataStore_accessStoreWithError_block___block_invoke;
        v22[3] = &unk_283BEB7B0;
        v23 = blockCopy;
        v24 = v10;
        v25 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = [(HDHFDataStore *)&self->super.isa _convertExceptionsToError:v26 inBlock:v22];
        v17 = v26[0];

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v16)
        {
          v8 = 1;
          v15 = v17;
          if (!v14)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v15 = v17;
      }

      if ([(HDHFDataStore *)self _requiresRebuildForState:?])
      {
        [(HDHFDataStore *)self flushForInvalidation:0];
      }

      v18 = v15;
      v15 = v18;
      if (v18)
      {
        if (error)
        {
          v19 = v18;
          *error = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v8 = 0;
    if (!v14)
    {
LABEL_35:

      goto LABEL_36;
    }

LABEL_34:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_35;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:1104 description:@"Attempt to access the HFD after migration to SQLite and deletion of the HFD"];
  v8 = 0;
LABEL_36:

  return v8;
}

- (BOOL)_requiresRebuildForState:(_BOOL8)result
{
  v7 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2 <= 0x14 && ((1 << a2) & 0x1FFC7F) != 0)
    {
      result = 1;
    }

    else
    {
      if (a2 != 100)
      {
        _HKInitializeLogging();
        v4 = *MEMORY[0x277CCC2A0];
        result = os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT);
        if (!result)
        {
          goto LABEL_5;
        }

        v5 = 134217984;
        v6 = a2;
        _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "Unexpected HFD rebuild state: %ld", &v5, 0xCu);
      }

      result = 0;
    }
  }

LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_requestHFDRebuild
{
  if (self && ![self rebuildState])
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "Requesting rebuild of the HFD", v4, 2u);
    }

    [(HDHFDataStore *)self setRebuildState:?];
    WeakRetained = objc_loadWeakRetained(self + 10);
    [WeakRetained didMigrateHFDataStore:self fromState:0 toState:1 success:1 error:0];
  }
}

- (id)directoryURL
{
  if (self)
  {
    v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(self + 88)];
    uRLByDeletingLastPathComponent = [v1 URLByDeletingLastPathComponent];
  }

  else
  {
    uRLByDeletingLastPathComponent = 0;
  }

  return uRLByDeletingLastPathComponent;
}

- (int64_t)rebuildWithTransaction:(id)transaction error:(id *)error
{
  [(HDHFDataStore *)self flushForInvalidation:0];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__370;
  v14 = __Block_byref_object_dispose__371;
  v15 = 0;
  HKWithUnfairLock();
  v5 = v11[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v17[3];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __46__HDHFDataStore_rebuildWithTransaction_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [(HDHFDataStore *)v2 _lock_rebuildOneStep:?];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (uint64_t)_lock_rebuildOneStep:(uint64_t)step
{
  v159 = *MEMORY[0x277D85DE8];
  if (step)
  {
    os_unfair_lock_assert_owner((step + 24));
    os_unfair_lock_assert_owner((step + 24));
    if (![step rebuildState])
    {
      v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(step + 88)];
      v5 = *MEMORY[0x277CBE838];
      v6 = *MEMORY[0x277CBE7D0];
      *&v146 = *MEMORY[0x277CBE838];
      *(&v146 + 1) = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:2];
      *v145 = 0;
      v8 = [v4 resourceValuesForKeys:v7 error:v145];
      v9 = *v145;

      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:v5];
        longLongValue = [v10 longLongValue];

        if (longLongValue >= 0x140000000)
        {
          v12 = [v8 objectForKeyedSubscript:v6];
          [v12 doubleValue];
          v14 = v13;

          v15 = v14 / longLongValue;
          if (v15 <= 0.5)
          {
            _HKInitializeLogging();
            v16 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = step;
              *&buf[12] = 2048;
              *&buf[14] = longLongValue;
              *&buf[22] = 2048;
              v154 = (1.0 - v15) * 100.0;
              _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: HFD is large (%lld bytes) and %02.2lf%% sparse; requesting rebuild.", buf, 0x20u);
            }

            [(HDHFDataStore *)step setRebuildState:?];
            WeakRetained = objc_loadWeakRetained((step + 80));
            [WeakRetained didMigrateHFDataStore:step fromState:0 toState:1 success:1 error:0];
          }
        }
      }

      else if (([v9 hk_isCocoaNoSuchFileError] & 1) == 0)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = step;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get HFD sizes when checking for sparseness during open: %{public}@", buf, 0x16u);
        }
      }
    }

    rebuildState = [step rebuildState];
    if ([(HDHFDataStore *)step _requiresRebuildForState:rebuildState])
    {
      _HKInitializeLogging();
      v20 = MEMORY[0x277CCC2A0];
      v21 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = step;
        *&buf[12] = 2048;
        *&buf[14] = rebuildState;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Rebuild required with current state %ld.", buf, 0x16u);
      }

      v22 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:step activityName:@"HFD Rebuild"];
      v133 = 0;
      os_unfair_lock_assert_owner((step + 24));
      if (rebuildState > 9)
      {
        if (rebuildState < 19)
        {
          os_unfair_lock_assert_owner((step + 24));
          v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(step + 88)];
          *v145 = 0;
          [step dataStoreAtURL:v23 filesystem:step + 8 allowCheckpoint:0 error:v145];
          v24 = *v145;

          if (v146)
          {
            v25 = objc_loadWeakRetained((step + 80));
            v26 = [v25 migrateDataForHFDataStore:step toSQLiteFrom:v146 error:&v133];

            if (v26)
            {
              [(HDHFDataStore *)step setRebuildState:?];
LABEL_46:
              v51 = 1;
LABEL_65:
              std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&v146);

              goto LABEL_80;
            }
          }

          else
          {
            if ([HDHFDataStore _errorIndicatesCorruption:v24])
            {
              _HKInitializeLogging();
              v53 = *v20;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                *&buf[4] = step;
                *&buf[12] = 2114;
                *&buf[14] = v24;
                _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_INFO, "%{public}@: Corrupted HFD detected (%{public}@; silently progressing migration to SQLite", buf, 0x16u);
              }

              [(HDHFDataStore *)step setRebuildState:?];
              goto LABEL_46;
            }

            v56 = v24;
            v57 = v56;
            if (v56)
            {
              v58 = v56;
              v133 = v57;
            }

            _HKInitializeLogging();
            v59 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = step;
              *&buf[12] = 2114;
              *&buf[14] = v57;
              _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "%{public}@: Failed to open production HFD - %{public}@.", buf, 0x16u);
            }
          }

          v51 = 0;
          goto LABEL_65;
        }

        if (rebuildState != 19)
        {
          if (rebuildState != 20)
          {
            if (rebuildState == 100)
            {
              _HKInitializeLogging();
              v54 = *v20;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_228986000, v54, OS_LOG_TYPE_FAULT, "Rebuild requested while HFD is at terminal state HDHFDataStoreRebuildStateHFDArchivedPostSQLiteMigration", buf, 2u);
              }

              goto LABEL_79;
            }

            goto LABEL_58;
          }

          v66 = @"healthdb_archive_sqlite_migration.hfd";
          v67 = 100;
LABEL_75:
          v51 = [(HDHFDataStore *)step _lock_archiveHFDTo:v66 nextState:v67 error:&v133];
          goto LABEL_80;
        }

        v28 = 20;
        goto LABEL_77;
      }

      v28 = 10;
      if (rebuildState <= 2)
      {
        switch(rebuildState)
        {
          case 0:
            goto LABEL_78;
          case 1:
            v66 = @"healthdb_archive.hfd";
            v67 = 2;
            goto LABEL_75;
          case 2:
            v28 = 3;
LABEL_77:
            os_unfair_lock_assert_owner((step + 24));
            goto LABEL_78;
        }
      }

      else
      {
        if (rebuildState <= 4)
        {
          if (rebuildState != 3)
          {
            stepCopy = step;
            Current = CFAbsoluteTimeGetCurrent();
            os_unfair_lock_assert_owner((step + 24));
            v30 = objc_loadWeakRetained((step + 80));
            v132 = [v30 activeTransactionForCurrentThreadForHFDataStore:step forWriting:0];

            if (!v132)
            {
              [MEMORY[0x277CCA9B8] hk_assignError:&v133 code:121 format:@"No active transaction when attempting HFD restore."];
              v51 = 0;
LABEL_176:

              goto LABEL_80;
            }

            directoryURL = [(HDHFDataStore *)step directoryURL];
            v129 = [directoryURL URLByAppendingPathComponent:@"healthdb_archive.hfd"];

            directoryURL2 = [(HDHFDataStore *)stepCopy directoryURL];
            v131 = [directoryURL2 URLByAppendingPathComponent:@"healthdb_archive.hfd.tgz"];

            fileManager = [stepCopy fileManager];
            v33 = MEMORY[0x277CCACA8];
            v34 = v131;
            v35 = [v33 stringWithUTF8String:{objc_msgSend(v131, "fileSystemRepresentation")}];
            v36 = [fileManager fileExistsAtPath:v35];

            if (v36)
            {
              v143 = 0;
              v37 = [fileManager removeItemAtURL:v129 error:&v143];
              v38 = v143;
              v39 = v38;
              if ((v37 & 1) == 0 && ([v38 hk_isCocoaNoSuchFileError] & 1) == 0)
              {
                _HKInitializeLogging();
                v80 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v39;
                  _os_log_error_impl(&dword_228986000, v80, OS_LOG_TYPE_ERROR, "Failed to clear target location before decompressing archived HFD: %{public}@", buf, 0xCu);
                }

                v81 = v39;
                if (v81)
                {
                  v82 = v81;
                  v83 = v81;
                  v81 = v82;
                  v133 = v82;
                }

                v52 = v81;

                v51 = 0;
                goto LABEL_175;
              }

              v127 = v39;
              v124 = objc_alloc_init(HDFileArchiver);
              directoryURL3 = [(HDHFDataStore *)stepCopy directoryURL];
              v142 = 0;
              v126 = [(HDFileArchiver *)v124 decompressArchiveAt:v131 to:directoryURL3 error:&v142];
              v41 = v142;

              if (!v126)
              {
                v42 = stepCopy;
                v43 = v41;
                v44 = v43;
                if (v42 && ([v43 domain], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEqual:", *MEMORY[0x277CCA5B8]), v45, (v46 & 1) != 0))
                {
                  if ([v44 code] == 1 || objc_msgSend(v44, "code") == 28 || objc_msgSend(v44, "code") == 11 || objc_msgSend(v44, "code") == 23)
                  {

LABEL_37:
                    _HKInitializeLogging();
                    v47 = *v20;
                    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      *&buf[4] = v44;
                      _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "Failed to decompress archived HFD: %{public}@", buf, 0xCu);
                    }

                    v48 = v44;
                    v49 = v48;
                    if (v48)
                    {
                      v50 = v48;
                      v133 = v49;
                    }

                    v51 = 0;
                    v52 = v127;
                    goto LABEL_175;
                  }

                  v120 = [v44 code] == 13;

                  if (v120)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                }

                _HKInitializeLogging();
                v84 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v44;
                  _os_log_error_impl(&dword_228986000, v84, OS_LOG_TYPE_ERROR, "Suppressing decompression error %{public}@", buf, 0xCu);
                }

                v85 = objc_loadWeakRetained(stepCopy + 10);
                [v85 didMigrateHFDataStore:stepCopy fromState:4 toState:4 success:0 error:v44];
              }
            }

            else
            {
              v126 = 0;
            }

            v140 = 0;
            [stepCopy dataStoreAtURL:v129 filesystem:stepCopy + 1 allowCheckpoint:0 error:&v140];
            v86 = v140;
            v128 = v86;
            if (!v141)
            {
              v99 = v86;
              if ([HDHFDataStore _errorIndicatesCorruption:v86])
              {
                _HKInitializeLogging();
                v100 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = stepCopy;
                  _os_log_impl(&dword_228986000, v100, OS_LOG_TYPE_DEFAULT, "%{public}@: Archived HFD is too corrupt to open; marking rebuild as complete and continuing with existing production HFD.", buf, 0xCu);
                }

                v101 = objc_loadWeakRetained(stepCopy + 10);
                [v101 HFDataStoreDidPerformRebuild:stepCopy didDecompressArchivedHFD:0 didOpenArchivedHFD:0 didOpenMovedAsideHFD:0 recoveryAnalytics:MEMORY[0x277CBEC10] duration:CFAbsoluteTimeGetCurrent() - Current];

                v52 = v128;
                [(HDHFDataStore *)stepCopy setRebuildState:?];
                v51 = 1;
                goto LABEL_174;
              }

              v104 = v99;
              v87 = v104;
              if (v104)
              {
                v105 = v104;
                v51 = 0;
                v133 = v87;
              }

              else
              {
                v51 = 0;
              }

LABEL_173:

              v52 = v128;
LABEL_174:
              std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&v141);
LABEL_175:

              goto LABEL_176;
            }

            v87 = [MEMORY[0x277CBEBC0] fileURLWithPath:stepCopy[11]];
            directoryURL4 = [(HDHFDataStore *)stepCopy directoryURL];
            v125 = [directoryURL4 URLByAppendingPathComponent:@"healthdb_archive_temporary.hfd"];

            v89 = v125;
            if ([stepCopy moveHFDAsideWithoutOverwritingFrom:v87 to:v125 error:&v133])
            {
              if ([stepCopy deleteHFDAt:v87 error:&v133])
              {
                v138 = 0;
                [stepCopy dataStoreAtURL:v125 filesystem:stepCopy + 1 allowCheckpoint:0 error:&v138];
                v90 = v138;
                if (!v139)
                {
                  if (([HDHFDataStore _errorIndicatesCorruption:v90]& 1) == 0)
                  {
                    _HKInitializeLogging();
                    v108 = *v20;
                    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      *&buf[4] = stepCopy;
                      _os_log_error_impl(&dword_228986000, v108, OS_LOG_TYPE_ERROR, "%{public}@: Unable to open moved-aside HFD.", buf, 0xCu);
                    }

                    v109 = v90;
                    if (v109)
                    {
                      v109 = v109;
                      v133 = v109;
                    }

                    v51 = 0;
                    goto LABEL_171;
                  }

                  _HKInitializeLogging();
                  v106 = *v20;
                  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = stepCopy;
                    _os_log_impl(&dword_228986000, v106, OS_LOG_TYPE_DEFAULT, "%{public}@: Moved-aside HFD is too corrupt to open; marking rebuild as complete and continuing with exisitng production HFD.", buf, 0xCu);
                  }
                }

                [stepCopy dataStoreAtURL:v87 filesystem:stepCopy + 1 allowCheckpoint:1 error:&v133];
                if (!v137)
                {
                  _HKInitializeLogging();
                  v107 = *v20;
                  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = stepCopy;
                    _os_log_error_impl(&dword_228986000, v107, OS_LOG_TYPE_ERROR, "%{public}@: Failed to open new production HFD.", buf, 0xCu);
                  }

                  v51 = 0;
                  goto LABEL_170;
                }

                v123 = v90;
                v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v135 = 0;
                v136 = v91;
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3321888768;
                *&buf[16] = __45__HDHFDataStore__lock_restoreHFDFromArchive___block_invoke;
                v154 = COERCE_DOUBLE(&__block_descriptor_64_ea8_32c58_ZTSKZ45__HDHFDataStore__lock_restoreHFDFromArchive__E3__0_e9_B16__0__8l);
                v155 = &stepCopy;
                v156 = &v137;
                v157 = &v141;
                v158 = &v136;
                v92 = hfd_catchExceptionsAsErrors(buf, &v135, 0);
                v93 = v135;
                if ((v92 & 1) == 0)
                {
                  if (![HDHFDataStore _errorIndicatesCorruption:v93])
                  {
                    _HKInitializeLogging();
                    v112 = *v20;
                    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v146) = 138543362;
                      *(&v146 + 4) = v93;
                      _os_log_error_impl(&dword_228986000, v112, OS_LOG_TYPE_ERROR, "Failed to migrate contents of archived HFD to new copy (%{public}@)", &v146, 0xCu);
                    }

                    v113 = v93;
                    v114 = v93;
                    v115 = v114;
                    if (v114)
                    {
                      v116 = v114;
                      v133 = v115;
                    }

                    goto LABEL_168;
                  }

                  _HKInitializeLogging();
                  v94 = *v20;
                  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v146) = 0;
                    _os_log_error_impl(&dword_228986000, v94, OS_LOG_TYPE_ERROR, "Archival HFD corrupted beyond recovery; silently continuing", &v146, 2u);
                  }
                }

                if (!v139)
                {
                  v121 = v93;
                  v122 = 0;
                  goto LABEL_158;
                }

                _HKInitializeLogging();
                v95 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v146) = 138543362;
                  *(&v146 + 4) = stepCopy;
                  _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning migration from moved-aside HFD.", &v146, 0xCu);
                }

                *&v146 = MEMORY[0x277D85DD0];
                *(&v146 + 1) = 3321888768;
                v147 = __45__HDHFDataStore__lock_restoreHFDFromArchive___block_invoke_403;
                v148 = &__block_descriptor_64_ea8_32c58_ZTSKZ45__HDHFDataStore__lock_restoreHFDFromArchive__E3__1_e9_B16__0__8l;
                v149 = &v137;
                v150 = &stepCopy;
                v151 = &v139;
                v152 = &v136;
                v134 = 0;
                v96 = hfd_catchExceptionsAsErrors(&v146, &v134, 0);
                v97 = v134;
                if (v96)
                {
LABEL_134:
                  v121 = v93;

                  v122 = v139 != 0;
LABEL_158:
                  v110 = objc_loadWeakRetained(stepCopy + 10);
                  [v110 HFDataStoreDidPerformRebuild:stepCopy didDecompressArchivedHFD:v126 didOpenArchivedHFD:1 didOpenMovedAsideHFD:v122 recoveryAnalytics:v136 duration:CFAbsoluteTimeGetCurrent() - Current];

                  v111 = v121;
                  [(HDHFDataStore *)stepCopy setRebuildState:?];
                  v51 = 1;
LABEL_169:

                  v90 = v123;
LABEL_170:
                  std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&v137);
LABEL_171:
                  std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&v139);

                  v89 = v125;
                  goto LABEL_172;
                }

                if ([HDHFDataStore _errorIndicatesCorruption:v97])
                {
                  _HKInitializeLogging();
                  v98 = *v20;
                  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                  {
                    *v145 = 0;
                    _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "Recovered production DB corrupted; silently continuing", v145, 2u);
                  }

                  goto LABEL_134;
                }

                _HKInitializeLogging();
                v113 = v93;
                v117 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                {
                  *v145 = 138543362;
                  *&v145[4] = v97;
                  _os_log_error_impl(&dword_228986000, v117, OS_LOG_TYPE_ERROR, "Failed to migrate contents of moved-aside production HFD to new copy (%{public}@)", v145, 0xCu);
                }

                v118 = v97;
                v115 = v118;
                if (v118)
                {
                  v119 = v118;
                  v133 = v115;
                }

LABEL_168:
                v51 = 0;
                v111 = v113;
                goto LABEL_169;
              }

              _HKInitializeLogging();
              v102 = *v20;
              if (!os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
LABEL_144:
                v51 = 0;
LABEL_172:

                goto LABEL_173;
              }

              *buf = 0;
              v103 = "Failed to delete stale HFD at production location.";
            }

            else
            {
              _HKInitializeLogging();
              v102 = *v20;
              if (!os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_144;
              }

              *buf = 0;
              v103 = "Failed to move aside production HFD in preparation for rebuild.";
            }

            _os_log_error_impl(&dword_228986000, v102, OS_LOG_TYPE_ERROR, v103, buf, 2u);
            goto LABEL_144;
          }

          os_unfair_lock_assert_owner((step + 24));
          if (([(HDHFDataStore *)step _lock_deleteCompressedArchive:?]& 1) == 0)
          {
LABEL_68:
            v51 = 0;
            goto LABEL_80;
          }

          v28 = 4;
LABEL_78:
          [(HDHFDataStore *)step setRebuildState:v28];
LABEL_79:
          v51 = 1;
          goto LABEL_80;
        }

        if (rebuildState == 5)
        {
          os_unfair_lock_assert_owner((step + 24));
          directoryURL5 = [(HDHFDataStore *)step directoryURL];
          v61 = [directoryURL5 URLByAppendingPathComponent:@"healthdb_archive_temporary.hfd"];

          if ([step deleteHFDAt:v61 error:&v133])
          {
            directoryURL6 = [(HDHFDataStore *)step directoryURL];
            v63 = [directoryURL6 URLByAppendingPathComponent:@"healthdb_archive.hfd"];

            if ([step deleteHFDAt:v63 error:&v133])
            {
              *buf = 0;
              v51 = [(HDHFDataStore *)step _lock_deleteCompressedArchive:buf];
              v64 = *buf;
              v65 = v64;
              if (v51)
              {
                [(HDHFDataStore *)step setRebuildState:?];
              }

              else
              {
                v79 = v64;
                if (v79)
                {
                  v79 = v79;
                  v133 = v79;
                }
              }
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = 0;
          }

LABEL_80:
          v68 = COERCE_DOUBLE(v133);
          [v22 invalidate];
          rebuildState2 = [step rebuildState];
          if (v51)
          {
            v70 = objc_loadWeakRetained((step + 80));
            [v70 didMigrateHFDataStore:step fromState:rebuildState toState:rebuildState2 success:1 error:0];

            if (rebuildState2 != rebuildState)
            {
              if ([(HDHFDataStore *)step _requiresRebuildForState:rebuildState2])
              {
                v27 = 3;
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_96;
            }

            _HKInitializeLogging();
            v71 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              *&buf[4] = step;
              *&buf[12] = 2048;
              *&buf[14] = rebuildState;
              _os_log_fault_impl(&dword_228986000, v71, OS_LOG_TYPE_FAULT, "%{public}@: HFD rebuild at state %ld reported success but failed to update result state.", buf, 0x16u);
            }

            [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"HFD rebuild at state %ld reported success but failed to update result state.", rebuildState}];
          }

          else
          {
            _HKInitializeLogging();
            v72 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = step;
              *&buf[12] = 2048;
              *&buf[14] = rebuildState;
              *&buf[22] = 2114;
              v154 = v68;
              _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "%{public}@: HFD rebuild at state %ld failed: %{public}@", buf, 0x20u);
            }

            v73 = objc_loadWeakRetained((step + 80));
            [v73 didMigrateHFDataStore:step fromState:rebuildState toState:rebuildState2 success:0 error:*&v68];

            v74 = *&v68;
            v75 = v74;
            if (v74)
            {
              if (a2)
              {
                v76 = v74;
                *a2 = v75;
              }

              else
              {
                _HKLogDroppedError();
              }
            }
          }

          v27 = 1;
LABEL_96:

          goto LABEL_97;
        }

        if (rebuildState == 6)
        {
          goto LABEL_78;
        }
      }

LABEL_58:
      _HKInitializeLogging();
      v55 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = rebuildState;
        _os_log_fault_impl(&dword_228986000, v55, OS_LOG_TYPE_FAULT, "Unexpected HFD rebuild state: %ld", buf, 0xCu);
      }

      goto LABEL_68;
    }
  }

  v27 = 0;
LABEL_97:
  v77 = *MEMORY[0x277D85DE8];
  return v27;
}

- (int64_t)rebuildState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained HFDataStore:self integerForKey:@"HKHFDRebuildStage"];

  return v4;
}

- (void)requestHFDToSQLiteMigration
{
  [(HDHFDataStore *)self flushForInvalidation:0];

  [(HDHFDataStore *)self setRebuildState:?];
}

- (uint64_t)_lock_archiveHFDTo:(uint64_t)to nextState:(void *)state error:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  os_unfair_lock_assert_owner((self + 24));
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC2A0];
  v9 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Moving aside HFD", buf, 2u);
  }

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(self + 88)];
  directoryURL = [(HDHFDataStore *)self directoryURL];
  v12 = [directoryURL URLByAppendingPathComponent:v7];

  v22 = 0;
  v13 = [self moveHFDAsideWithoutOverwritingFrom:v10 to:v12 error:&v22];
  v14 = v22;
  if (v13)
  {
    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "HFD archive successful", buf, 2u);
    }

    [(HDHFDataStore *)self setRebuildState:to];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to archive the current HFD - %{public}@", buf, 0xCu);
    }

    v17 = v14;
    v18 = v17;
    if (v17)
    {
      if (state)
      {
        v19 = v17;
        *state = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (uint64_t)_lock_deleteCompressedArchive:(os_unfair_lock *)archive
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(archive + 6);
  directoryURL = [(HDHFDataStore *)archive directoryURL];
  v5 = [directoryURL URLByAppendingPathComponent:@"healthdb_archive.hfd.tgz"];

  fileManager = [(os_unfair_lock *)archive fileManager];
  v16 = 0;
  v7 = [fileManager removeItemAtURL:v5 error:&v16];
  v8 = v16;

  if (v7 & 1) != 0 || ([v8 hk_isCocoaNoSuchFileError])
  {
    v9 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      archiveCopy = archive;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete compressed archive - %{public}@", buf, 0x16u);
    }

    v11 = v8;
    v12 = v11;
    if (v11)
    {
      if (a2)
      {
        v13 = v11;
        *a2 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void __45__HDHFDataStore__lock_restoreHFDFromArchive___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v7 = **(a1 + 32);
    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Beginning migration from archived HFD.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = **(a1 + 40);
  operator new();
}

void __45__HDHFDataStore__lock_restoreHFDFromArchive___block_invoke_403(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v2 = **(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  operator new();
}

- (int64_t)deleteSQLiteMigrationArchive:(id *)archive
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__370;
  v13 = __Block_byref_object_dispose__371;
  v14 = 0;
  HKWithUnfairLock();
  v4 = v10[5];
  v5 = v4;
  if (v4)
  {
    if (archive)
    {
      v6 = v4;
      *archive = v5;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v7 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v7 ^ 1;
}

void __46__HDHFDataStore_deleteSQLiteMigrationArchive___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [(HDHFDataStore *)v2 directoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"healthdb_archive_sqlite_migration.hfd"];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v2 deleteHFDAt:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v2;
}

- (id)fileManager
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);

  return v2;
}

- (void)unitTest_requestRebuild
{
  [(HDHFDataStore *)self setRebuildState:?];

  [(HDHFDataStore *)&self->super.isa _requestHFDRebuild];
}

- (HDHFDataStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end