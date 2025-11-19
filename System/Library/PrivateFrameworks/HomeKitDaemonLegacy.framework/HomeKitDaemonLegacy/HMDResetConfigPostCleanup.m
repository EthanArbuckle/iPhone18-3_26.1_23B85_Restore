@interface HMDResetConfigPostCleanup
+ (id)_readExistingPostCleanupRecord;
+ (id)logCategory;
+ (id)resetConfigPostCleanupFileLocation;
+ (id)sqlFileListToRemove:(id)a3 fromRootDirectory:(id)a4;
+ (void)cleanupInvalidUserDefaults:(id)a3;
+ (void)deleteFilesInsideDirectory:(id)a3 excludingFiles:(id)a4 shouldSkipDirectories:(BOOL)a5 usingFileManager:(id)a6;
+ (void)performAnyPostCleanupStepsIfNecessary;
+ (void)performIndividualCleanupTasks:(unint64_t)a3 onRootDirectory:(id)a4;
+ (void)performResetConfigPostCleanupSteps:(unint64_t)a3 dueToReason:(unint64_t)a4;
+ (void)removeFilesAtLocation:(id)a3;
+ (void)removeFilesAtLocation:(id)a3 usingFileManager:(id)a4;
+ (void)writePostCleanupRecordWithReason:(unint64_t)a3 steps:(unint64_t)a4;
@end

@implementation HMDResetConfigPostCleanup

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_2484);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __40__HMDResetConfigPostCleanup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v26 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)resetConfigPostCleanupFileLocation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HMDCreateHomeKitDaemonCacheDirectory();
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    v5 = [v4 URLByAppendingPathComponent:@"resetConfigPostCleanup.plist"];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed to create homekit daemon cache directory", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)deleteFilesInsideDirectory:(id)a3 excludingFiles:(id)a4 shouldSkipDirectories:(BOOL)a5 usingFileManager:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = a1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v16;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Going to delete all the files inside directory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__HMDResetConfigPostCleanup_deleteFilesInsideDirectory_excludingFiles_shouldSkipDirectories_usingFileManager___block_invoke;
  aBlock[3] = &unk_27972BF08;
  v30 = v11;
  v18 = v11;
  v19 = _Block_copy(aBlock);
  v20 = *MEMORY[0x277CBE868];
  v31[0] = *MEMORY[0x277CBE8E8];
  v31[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__HMDResetConfigPostCleanup_deleteFilesInsideDirectory_excludingFiles_shouldSkipDirectories_usingFileManager___block_invoke_2;
  v24[3] = &unk_279720CF8;
  v26 = v19;
  v27 = v14;
  v28 = a5;
  v25 = v12;
  v22 = v12;
  [v22 enumerateItemsAtURL:v17 includingPropertiesForKeys:v21 usingBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __110__HMDResetConfigPostCleanup_deleteFilesInsideDirectory_excludingFiles_shouldSkipDirectories_usingFileManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = [a2 lastPathComponent];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __110__HMDResetConfigPostCleanup_deleteFilesInsideDirectory_excludingFiles_shouldSkipDirectories_usingFileManager___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not deleting excluded file: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v15 = 0;
    [v3 getResourceValue:&v15 forKey:*MEMORY[0x277CBE868] error:0];
    v8 = v15;
    if ([v8 BOOLValue] && *(a1 + 56) == 1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 48);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping the directory : %@", buf, 0x16u);
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v13 = *(a1 + 48);
      v16 = v3;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      [v13 removeFilesAtLocation:v10 usingFileManager:*(a1 + 32)];
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)removeFilesAtLocation:(id)a3 usingFileManager:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HMDResetConfigPostCleanup_removeFilesAtLocation_usingFileManager___block_invoke;
  v8[3] = &unk_279720CD0;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __68__HMDResetConfigPostCleanup_removeFilesAtLocation_usingFileManager___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [(__CFString *)v3 path];
  LOBYTE(v4) = [v4 isDeletableFileAtPath:v5];

  if (v4)
  {
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [v6 removeItemAtURL:v3 error:&v19];
    v8 = v19;
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = @"Unsuccessfully";
      *buf = 138544130;
      v21 = v12;
      v22 = 2112;
      if (v7)
      {
        v13 = @"Successfully";
      }

      v23 = v13;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@%@ removed file [%@] with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@File is not deletable by homed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)removeFilesAtLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDFileManager);
  [a1 removeFilesAtLocation:v4 usingFileManager:v5];
}

+ (void)cleanupInvalidUserDefaults:(id)a3
{
  v3 = a3;
  v4 = [v3 dictionaryRepresentation];
  v5 = [v4 allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDResetConfigPostCleanup_cleanupInvalidUserDefaults___block_invoke;
  v7[3] = &unk_279734040;
  v8 = v3;
  v6 = v3;
  [v5 na_each:v7];
}

void __56__HMDResetConfigPostCleanup_cleanupInvalidUserDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"HMDHomeWalletKeyManagerHomeNeedsWalletKeyRoll_"])
  {
    [*(a1 + 32) removeObjectForKey:v3];
  }
}

+ (id)sqlFileListToRemove:(id)a3 fromRootDirectory:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a3;
  v7 = [v5 fileURLWithPath:a4];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6];
  v10 = [v7 URLByAppendingPathComponent:v9];
  [v8 addObject:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-shm", v6];
  v12 = [v7 URLByAppendingPathComponent:v11];
  [v8 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-wal", v6];

  v14 = [v7 URLByAppendingPathComponent:v13];
  [v8 addObject:v14];

  v15 = [v8 copy];

  return v15;
}

+ (void)performIndividualCleanupTasks:(unint64_t)a3 onRootDirectory:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  if ((v4 & 0x20) != 0)
  {
    v8 = [a1 sqlFileListToRemove:@"datastore.sqlite" fromRootDirectory:v6];
    [v7 addObjectsFromArray:v8];
  }

  if ((v4 & 0x40) != 0)
  {
    v9 = [a1 sqlFileListToRemove:@"datastore.sqlite" fromRootDirectory:v6];
    [v7 addObjectsFromArray:v9];

    v10 = [a1 sqlFileListToRemove:@"datastore3.sqlite" fromRootDirectory:v6];
    [v7 addObjectsFromArray:v10];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to remove following files : %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v7 copy];
  [v12 removeFilesAtLocation:v15];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)performResetConfigPostCleanupSteps:(unint64_t)a3 dueToReason:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a3 != 1 && a4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMDResetConfigPostCleanupStepsToString(a3);
      if (a4 - 1 > 9)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_279720D18[a4 - 1];
      }

      v18 = v13;
      v30 = 138543874;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to perform reset config post cleanup steps: %@ due to reason: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v19 = determineHomeKitDaemonRootStorePath();
    if (a3 == 128)
    {
      v24 = MEMORY[0x277CBEB98];
      v25 = HMDHomeKitDaemonDemoModePersistencePath();
      v26 = [v25 lastPathComponent];
      v23 = [v24 setWithObject:v26];

      [v8 deleteFilesInsideDirectory:v19 excludingFiles:0 shouldSkipDirectories:0];
      v27 = HMHomeKitCacheDirectory();
      [v8 deleteFilesInsideDirectory:v27 excludingFiles:0 shouldSkipDirectories:1];

      v28 = HMCacheSubdirectoryWithRelativePath();
      [v8 deleteFilesInsideDirectory:v28 excludingFiles:v23 shouldSkipDirectories:1];
    }

    else
    {
      if (a3 != -1)
      {
        [v8 performIndividualCleanupTasks:a3 onRootDirectory:v19];
        goto LABEL_20;
      }

      v20 = [v8 filesToExcludeFromHomedDirectory];
      [v8 deleteFilesInsideDirectory:v19 excludingFiles:v20 shouldSkipDirectories:1];

      v21 = HMHomeKitCacheDirectory();
      v22 = [v8 filesToExcludeFromCacheDirectory];
      [v8 deleteFilesInsideDirectory:v21 excludingFiles:v22 shouldSkipDirectories:1];

      v23 = HMCacheSubdirectoryWithRelativePath();
      [v8 deleteFilesInsideDirectory:v23 excludingFiles:0 shouldSkipDirectories:0];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    if (a4 - 1 > 9)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_279720D18[a4 - 1];
    }

    v16 = v15;
    v17 = HMDResetConfigPostCleanupStepsToString(a3);
    v30 = 138543874;
    v31 = v14;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Clean up reason or steps are not known. [reason: %@] [steps: %@]", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

+ (void)performAnyPostCleanupStepsIfNecessary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [a1 cleanupInvalidUserDefaults:v3];

  v4 = [a1 resetConfigPostCleanupFileLocation];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v8 = [a1 _readExistingPostCleanupRecord];
      v9 = [v8 objectForKeyedSubscript:@"RST.POST.CleanUP.reason"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [v8 objectForKeyedSubscript:@"RST.PST.CleanUP.steps"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v11 && v14)
      {
        [a1 performResetConfigPostCleanupSteps:objc_msgSend(v14 dueToReason:{"unsignedLongValue"), objc_msgSend(v11, "unsignedIntValue")}];
        v21 = v4;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [a1 removeFilesAtLocation:v15];

        if (isFirstLaunchAfterBoot_onceToken != -1)
        {
          dispatch_once(&isFirstLaunchAfterBoot_onceToken, &__block_literal_global_826);
        }
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        v17 = a1;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543874;
          v23 = v19;
          v24 = 2112;
          v25 = v11;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to cast NSNumber from dictionary value : %@, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)writePostCleanupRecordWithReason:(unint64_t)a3 steps:(unint64_t)a4
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3 && a4 != 1)
  {
    v7 = [a1 _readExistingPostCleanupRecord];
    v8 = [v7 mutableCopy];

    v9 = [(__CFString *)v8 objectForKeyedSubscript:@"RST.PST.CleanUP.steps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v46 = 138543618;
        v47 = v15;
        v48 = 2112;
        v49 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Found existing reason : %@", &v46, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[__CFString unsignedLongValue](v11, "unsignedLongValue") | a4}];
    [(__CFString *)v8 setObject:v16 forKeyedSubscript:@"RST.PST.CleanUP.steps"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(__CFString *)v8 setObject:v17 forKeyedSubscript:@"RST.POST.CleanUP.reason"];

    v18 = [a1 resetConfigPostCleanupFileLocation];
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (!v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v46 = 138543362;
        v47 = v41;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to write reset config cleanup record", &v46, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_32;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v46 = 138543874;
      v47 = v23;
      v48 = 2112;
      v49 = v8;
      v50 = 2112;
      v51 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Going to write reset config cleanup record : [%@] -> [%@]", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = encodeRootObject();
    if (v24)
    {
      v25 = [(__CFString *)v18 path];
      v26 = [(__CFString *)v24 writeToFile:v25 atomically:1];

      v27 = objc_autoreleasePoolPush();
      v28 = v20;
      v29 = HMFGetOSLogHandle();
      v30 = v29;
      if (v26)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = HMFGetLogIdentifier();
          v46 = 138544130;
          v47 = v31;
          v48 = 2112;
          v49 = v8;
          v50 = 2112;
          v51 = v24;
          v52 = 2112;
          v53 = v18;
          v32 = "%{public}@Successfully written reset config post cleanup record on disk : %@, %@, %@";
          v33 = v30;
          v34 = OS_LOG_TYPE_DEFAULT;
          v35 = 42;
LABEL_30:
          _os_log_impl(&dword_2531F8000, v33, v34, v32, &v46, v35);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v46 = 138543874;
        v47 = v31;
        v48 = 2112;
        v49 = v24;
        v50 = 2112;
        v51 = v18;
        v32 = "%{public}@Unable to write reset config post cleanup record [%@] to location : %@";
        v33 = v30;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = 32;
        goto LABEL_30;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v44 = v20;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v46 = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = v18;
        v32 = "%{public}@Unable to write reset config cleanup record at location : %@";
        v33 = v30;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = 22;
        goto LABEL_30;
      }
    }

    objc_autoreleasePoolPop(v27);
LABEL_32:

    goto LABEL_33;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = a1;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    if (a3 - 1 > 9)
    {
      v40 = @"Unknown";
    }

    else
    {
      v40 = off_279720D18[a3 - 1];
    }

    v42 = v40;
    v43 = HMDResetConfigPostCleanupStepsToString(a4);
    v46 = 138543874;
    v47 = v39;
    v48 = 2112;
    v49 = v42;
    v50 = 2112;
    v51 = v43;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Clean up reason or steps are needed. [reason: %@] [steps: %@]", &v46, 0x20u);
  }

  objc_autoreleasePoolPop(v36);
LABEL_33:
  v45 = *MEMORY[0x277D85DE8];
}

+ (id)_readExistingPostCleanupRecord
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAC0] dictionary];
  v4 = [a1 resetConfigPostCleanupFileLocation];
  if (v4 && ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, (v7 & 1) != 0))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v11;
      v52 = 2112;
      v53 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Found reset config post cleanup record on disk at %@. Going to read it.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277CBEA90];
    v13 = [v4 path];
    v47 = 0;
    v14 = [v12 dataWithContentsOfFile:v13 options:2 error:&v47];
    v15 = v47;

    if (v14)
    {
      v45 = v15;
      v16 = MEMORY[0x277CCAAC8];
      v17 = MEMORY[0x277CBEB98];
      v49 = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      v19 = [v17 setWithArray:v18];
      v20 = MEMORY[0x277CBEB98];
      v48 = objc_opt_class();
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v22 = [v20 setWithArray:v21];
      v46 = 0;
      v23 = [v16 unarchivedDictionaryWithKeysOfClasses:v19 objectsOfClasses:v22 fromData:v14 error:&v46];
      v24 = v46;

      if (v23)
      {
        v25 = v23;
        objc_opt_class();
        v26 = objc_opt_isKindOfClass() & 1;
        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;

        if (!v26)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v9;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v32 = v44 = v29;
            *buf = 138543618;
            v51 = v32;
            v52 = 2112;
            v53 = v25;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to open the reset config post cleanup record : %@", buf, 0x16u);

            v29 = v44;
          }

          objc_autoreleasePoolPop(v29);
          v25 = v3;
        }

        v33 = v25;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v9;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v41;
          v52 = 2112;
          v53 = v24;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive reset config post cleanup record from archive data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v33 = v3;
      }

      v15 = v45;
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v9;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v37;
        v52 = 2112;
        v53 = v15;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the post cleanup record due to an error: [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v33 = v3;
    }
  }

  else
  {
    v33 = v3;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v33;
}

@end