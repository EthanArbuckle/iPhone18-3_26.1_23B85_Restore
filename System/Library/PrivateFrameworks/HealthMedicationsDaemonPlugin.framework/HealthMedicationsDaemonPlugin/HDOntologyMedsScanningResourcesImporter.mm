@interface HDOntologyMedsScanningResourcesImporter
+ (BOOL)_deleteVisionAssetWithShardRegistry:(id)a3 reason:(id)a4 error:(id *)a5;
+ (BOOL)_validateVisionAssetIntegrity:(id)a3 error:(id *)a4;
+ (BOOL)canImportEntry:(id)a3;
+ (BOOL)importOntologyShardEntry:(id)a3 shardRegistry:(id)a4 error:(id *)a5;
+ (id)_visionAssetPathWithRegistry:(id)a3;
+ (id)pruneEntries:(id)a3 options:(unint64_t)a4 shardRegistry:(id)a5 error:(id *)a6;
+ (int64_t)purgeableSpaceForUrgency:(int)a3 shardRegistry:(id)a4;
@end

@implementation HDOntologyMedsScanningResourcesImporter

+ (BOOL)canImportEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 schemaType];
  v5 = *MEMORY[0x277CCC628];
  if (v4 == *MEMORY[0x277CCC628])
  {
    LOBYTE(v5) = [v3 schemaVersion] == 2;
  }

  else if (v5)
  {
    v6 = [v3 schemaType];
    if ([v6 isEqualToString:v5])
    {
      LOBYTE(v5) = [v3 schemaVersion] == 2;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)importOntologyShardEntry:(id)a3 shardRegistry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([a1 canImportEntry:v8])
  {
    v10 = [a1 _visionAssetPathWithRegistry:v9];
    v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v11 fileExistsAtPath:v10] && !objc_msgSend(v11, "removeItemAtPath:error:", v10, a5))
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:a5];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    v15 = [v9 unzipStagedShardFileForEntry:v8 toURL:v14 error:a5];

    if (v15)
    {
      v16 = [a1 _validateVisionAssetIntegrity:v10 error:a5];
    }

    else
    {
LABEL_8:
      v16 = 0;
    }
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v10 = [v8 schemaType];
    [v17 hk_assignError:a5 code:3 format:{@"%@ cannot import entry with schema type (%@, %ld)", v18, v10, objc_msgSend(v8, "schemaVersion")}];
    v16 = 0;
  }

  return v16;
}

uint64_t __88__HDOntologyMedsScanningResourcesImporter_willPruneEntries_options_shardRegistry_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 desiredState] == 3)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 schemaType];
    v3 = [v4 isEqualToString:*MEMORY[0x277CCC628]];
  }

  return v3;
}

+ (id)pruneEntries:(id)a3 options:(unint64_t)a4 shardRegistry:(id)a5 error:(id *)a6
{
  v9 = a3;
  if ([a1 _deleteVisionAssetWithShardRegistry:a5 reason:@"Prune request" error:a6])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)purgeableSpaceForUrgency:(int)a3 shardRegistry:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v5 = [a1 _visionAssetPathWithRegistry:a4];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v14 = 0;
    v7 = [v6 hk_fileSizeWithError:&v14];
    v8 = v14;
    v9 = v8;
    if (v7 || ([v8 hk_isCocoaNoSuchFileError] & 1) != 0)
    {
      v10 = [v7 longLongValue];
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogMedication();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v16 = a1;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v9;
        _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Error getting size of '%{public}@': %{public}@", buf, 0x20u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_visionAssetPathWithRegistry:(id)a3
{
  v3 = [a3 daemon];
  v4 = [v3 healthDirectoryPath];

  v5 = [v4 stringByAppendingPathComponent:@"vision"];

  return v5;
}

+ (BOOL)_validateVisionAssetIntegrity:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v7 contentsOfDirectoryAtPath:v6 error:a4];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2863C2C18];
    v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v11 = [v9 isSubsetOfSet:v10];
    if ((v11 & 1) == 0)
    {
      v12 = [v9 hk_minus:v10];
      v13 = [v12 allObjects];
      v14 = [v13 componentsJoinedByString:@" - "];

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:106 format:{@"Vision asset missing required file: %@", v14}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_deleteVisionAssetWithShardRegistry:(id)a3 reason:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a1 _visionAssetPathWithRegistry:a3];
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  _HKInitializeLogging();
  v11 = HKLogMedication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = a1;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing asset directory '%{public}@' for %{public}@", buf, 0x20u);
  }

  v21 = 0;
  v12 = [v10 removeItemAtPath:v9 error:&v21];
  v13 = v21;
  v14 = v13;
  if (v12 & 1) != 0 || ([v13 hk_isCocoaNoSuchFileError])
  {
    v15 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v23 = a1;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v8;
      v28 = 2114;
      v29 = v14;
      _os_log_error_impl(&dword_25181C000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Error removing asset directory for %{public}@ '%{public}@': %{public}@", buf, 0x2Au);
    }

    v17 = v14;
    if (v17)
    {
      if (a5)
      {
        v18 = v17;
        *a5 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end