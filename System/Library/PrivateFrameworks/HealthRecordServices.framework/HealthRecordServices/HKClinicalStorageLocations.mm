@interface HKClinicalStorageLocations
+ (BOOL)removeLocalFileAtURL:(id)l error:(id *)error;
+ (BOOL)storeData:(id)data inLocalFileAtURL:(id)l error:(id *)error;
+ (id)downloadableAttachmentsDirectory;
+ (id)homeMobileDirectory;
+ (id)mobileLibraryHealthDirectory;
@end

@implementation HKClinicalStorageLocations

+ (id)homeMobileDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = HKSharedResourcesDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)mobileLibraryHealthDirectory
{
  v2 = +[HKClinicalStorageLocations homeMobileDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Library/Health" isDirectory:1];

  return v3;
}

+ (id)downloadableAttachmentsDirectory
{
  v2 = +[HKClinicalStorageLocations mobileLibraryHealthDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"DownloadedAttachments" isDirectory:1];

  return v3;
}

+ (BOOL)storeData:(id)data inLocalFileAtURL:(id)l error:(id *)error
{
  v29[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  uRLByDeletingLastPathComponent = [uRLByDeletingPathExtension URLByDeletingLastPathComponent];

  v27 = 0;
  v13 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v27];
  v14 = v27;
  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HKClinicalStorageLocations storeData:self inLocalFileAtURL:v23 error:uRLByDeletingLastPathComponent];
    }

    v17 = v14;
    if (v17)
    {
      if (error)
      {
        v24 = v17;
        v19 = 0;
        *error = v17;
        goto LABEL_13;
      }

      _HKLogDroppedError();
    }

    v19 = 0;
    goto LABEL_13;
  }

  v15 = *MEMORY[0x277CCA198];
  v16 = *MEMORY[0x277CCA180];
  v28[0] = *MEMORY[0x277CCA1B0];
  v28[1] = v16;
  v29[0] = v15;
  v29[1] = &unk_2863F0878;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  path = [lCopy path];
  v19 = [defaultManager createFileAtPath:path contents:dataCopy attributes:v17];

  if ((v19 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HKClinicalStorageLocations storeData:self inLocalFileAtURL:v20 error:lCopy];
    }

    v21 = MEMORY[0x277CCA9B8];
    path2 = [lCopy path];
    [v21 hk_assignError:error code:102 format:{@"Error creating file at %@", path2}];
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)removeLocalFileAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v14 = 0;
  v8 = [defaultManager removeItemAtURL:lCopy error:&v14];

  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v8;
}

+ (void)storeData:(uint64_t)a1 inLocalFileAtURL:(void *)a2 error:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_2519FE000, v6, v7, "%{public}@: Failed to create directory %{public}@.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)storeData:(uint64_t)a1 inLocalFileAtURL:(void *)a2 error:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 path];
  v6 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_2519FE000, v7, v8, "%{public}@: Failed to create file %{public}@.", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end