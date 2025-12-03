@interface HFDiskCache
- (HFDiskCache)initWithCacheDirectoryURL:(id)l diskCacheDelegate:(id)delegate;
- (HFDiskCacheDelegate)diskCacheDelegate;
- (void)_createCacheEntriesFromFilesOnDisk;
- (void)cache:(id)cache didEvictObject:(id)object forKey:(id)key cost:(unint64_t)cost;
- (void)createCacheEntriesFromFilesOnDisk;
@end

@implementation HFDiskCache

- (HFDiskCache)initWithCacheDirectoryURL:(id)l diskCacheDelegate:(id)delegate
{
  lCopy = l;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = HFDiskCache;
  v9 = [(HFCache *)&v18 initWithDelegate:self];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_directoryURL, l);
    objc_storeWeak(&v10->_diskCacheDelegate, delegateCopy);
    objc_initWeak(&location, v10);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__HFDiskCache_initWithCacheDirectoryURL_diskCacheDelegate___block_invoke;
    v15 = &unk_277DF5520;
    objc_copyWeak(&v16, &location);
    [(HFCache *)v10 setOverrideObjectEvictionComparator:&v12];
    [(HFDiskCache *)v10 createCacheEntriesFromFilesOnDisk:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __59__HFDiskCache_initWithCacheDirectoryURL_diskCacheDelegate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v56 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v15 = objc_opt_class();
  v16 = v11;
  if (!v16)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  if (!v17)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];

LABEL_7:
    v18 = 0;
  }

  v21 = objc_opt_class();
  v22 = v13;
  if (!v22)
  {
LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v45 = v22;
  if (!v23)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v24 handleFailureInFunction:v25 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v21, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v49 = 0;
  v26 = *MEMORY[0x277CBE7A8];
  v48 = 0;
  v27 = [v18 getResourceValue:&v49 forKey:v26 error:&v48];
  v28 = v49;
  v29 = v48;
  if (v27)
  {
    v46 = 0;
    v47 = 0;
    v30 = [v45 getResourceValue:&v47 forKey:v26 error:&v46];
    v31 = v47;
    v32 = v46;

    if (v30)
    {
      v33 = [v28 compare:v31];
      v29 = v32;
      v34 = v44;
    }

    else
    {
      v41 = v28;
      v36 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v51 = "[HFDiskCache initWithCacheDirectoryURL:diskCacheDelegate:]_block_invoke";
        v52 = 2112;
        v53 = v32;
        v54 = 2112;
        v55 = v45;
        _os_log_error_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_ERROR, "%s error: %@; %@", buf, 0x20u);
      }

      v37 = [WeakRetained defaultObjectEvictionComparator];
      v38 = v32;
      v34 = v44;
      v33 = (v37)[2](v37, v44, v16, a4, v12, v22, a7);

      v29 = v38;
      v28 = v41;
    }
  }

  else
  {
    v35 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "[HFDiskCache initWithCacheDirectoryURL:diskCacheDelegate:]_block_invoke";
      v52 = 2112;
      v53 = v29;
      v54 = 2112;
      v55 = v18;
      _os_log_error_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_ERROR, "%s error: %@; %@", buf, 0x20u);
    }

    v31 = [WeakRetained defaultObjectEvictionComparator];
    v34 = v44;
    v33 = v31[2](v31, v44, v16, a4, v12, v22, a7);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)createCacheEntriesFromFilesOnDisk
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HFDiskCache_createCacheEntriesFromFilesOnDisk__block_invoke;
  block[3] = &unk_277DF3D38;
  block[4] = self;
  dispatch_async(accessQueue2, block);
}

- (void)_createCacheEntriesFromFilesOnDisk
{
  v12[1] = *MEMORY[0x277D85DE8];
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  directoryURL = [(HFDiskCache *)self directoryURL];
  [defaultManager createDirectoryAtURL:directoryURL withIntermediateDirectories:1 attributes:0 error:0];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  directoryURL2 = [(HFDiskCache *)self directoryURL];
  v12[0] = *MEMORY[0x277CBE838];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [defaultManager2 enumeratorAtURL:directoryURL2 includingPropertiesForKeys:v8 options:20 errorHandler:&__block_literal_global_34];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HFDiskCache__createCacheEntriesFromFilesOnDisk__block_invoke_5;
  v11[3] = &unk_277DF5548;
  v11[4] = self;
  [v9 na_each:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HFDiskCache__createCacheEntriesFromFilesOnDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 path];
    v10 = 136315650;
    v11 = "[HFDiskCache _createCacheEntriesFromFilesOnDisk]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s error: %@; %@", &v10, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void __49__HFDiskCache__createCacheEntriesFromFilesOnDisk__block_invoke_5(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) diskCacheDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && ([*(a1 + 32) diskCacheDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "diskCache:shouldAddExistingFileToCache:", *(a1 + 32), v3), v6, (v7 & 1) == 0))
  {
    v13 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v3 path];
      *buf = 136315394;
      v24 = "[HFDiskCache _createCacheEntriesFromFilesOnDisk]_block_invoke";
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%s delegate declined to add existing file to cache: %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) diskCacheDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 32) diskCacheDelegate];
      v11 = [v10 diskCache:*(a1 + 32) uniqueIdentifierForExistingFile:v3];
    }

    else
    {
      v12 = [v3 lastPathComponent];
      v10 = [v12 stringByDeletingPathExtension];

      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    }

    v13 = v11;

    if (v13)
    {
      v22 = 0;
      v14 = *MEMORY[0x277CBE838];
      v21 = 0;
      v15 = [v3 getResourceValue:&v22 forKey:v14 error:&v21];
      v16 = v22;
      v17 = v21;
      if (v15)
      {
        [*(a1 + 32) _setObject:v3 forKey:v13 cost:objc_msgSend(v16 removeObjectsToAccommodateCost:{"unsignedIntegerValue"), 0}];
      }

      else
      {
        v19 = HFLogForCategory(0xDuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v24 = "[HFDiskCache _createCacheEntriesFromFilesOnDisk]_block_invoke";
          v25 = 2112;
          v26 = v14;
          v27 = 2112;
          v28 = v17;
          _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "%s %@ error: %@", buf, 0x20u);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cache:(id)cache didEvictObject:(id)object forKey:(id)key cost:(unint64_t)cost
{
  v42 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v12 = objc_opt_class();
  v13 = objectCopy;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

LABEL_7:
    v15 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0;
  v19 = [defaultManager removeItemAtURL:v15 error:&v35];
  v20 = v35;

  v21 = HFLogForCategory(0xDuLL);
  v22 = v21;
  if (!v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      relativePath = [v15 relativePath];
      *buf = 136315650;
      v37 = "[HFDiskCache cache:didEvictObject:forKey:cost:]";
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = relativePath;
      _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, "%s could not remove file at %@: %@", buf, 0x20u);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    relativePath2 = [v15 relativePath];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:cost];
    *buf = 136315650;
    v37 = "[HFDiskCache cache:didEvictObject:forKey:cost:]";
    v38 = 2112;
    v39 = relativePath2;
    v40 = 2112;
    v41 = v24;
    _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "%s removed file at %@; size: %@", buf, 0x20u);
  }

  diskCacheDelegate = [(HFDiskCache *)self diskCacheDelegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_opt_class();
    v28 = keyCopy;
    if (v28)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v22 = v28;
      if (v29)
      {
        goto LABEL_19;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v31 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v27, objc_opt_class()}];
    }

    v22 = 0;
LABEL_19:

    diskCacheDelegate2 = [(HFDiskCache *)self diskCacheDelegate];
    [diskCacheDelegate2 diskCache:self didEvictFileFromDisk:v15 forUniqueIdentifier:v22];

LABEL_22:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (HFDiskCacheDelegate)diskCacheDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diskCacheDelegate);

  return WeakRetained;
}

@end