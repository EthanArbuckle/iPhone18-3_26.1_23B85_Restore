@interface HDOntologyMedsScanningResourcesImporter
+ (BOOL)_deleteVisionAssetWithShardRegistry:(id)registry reason:(id)reason error:(id *)error;
+ (BOOL)_validateVisionAssetIntegrity:(id)integrity error:(id *)error;
+ (BOOL)canImportEntry:(id)entry;
+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error;
+ (id)_visionAssetPathWithRegistry:(id)registry;
+ (id)pruneEntries:(id)entries options:(unint64_t)options shardRegistry:(id)registry error:(id *)error;
+ (int64_t)purgeableSpaceForUrgency:(int)urgency shardRegistry:(id)registry;
@end

@implementation HDOntologyMedsScanningResourcesImporter

+ (BOOL)canImportEntry:(id)entry
{
  entryCopy = entry;
  schemaType = [entryCopy schemaType];
  v5 = *MEMORY[0x277CCC628];
  if (schemaType == *MEMORY[0x277CCC628])
  {
    LOBYTE(v5) = [entryCopy schemaVersion] == 2;
  }

  else if (v5)
  {
    schemaType2 = [entryCopy schemaType];
    if ([schemaType2 isEqualToString:v5])
    {
      LOBYTE(v5) = [entryCopy schemaVersion] == 2;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error
{
  entryCopy = entry;
  registryCopy = registry;
  if ([self canImportEntry:entryCopy])
  {
    schemaType = [self _visionAssetPathWithRegistry:registryCopy];
    v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v11 fileExistsAtPath:schemaType] && !objc_msgSend(v11, "removeItemAtPath:error:", schemaType, error))
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:schemaType];
    v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:error];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:schemaType];
    v15 = [registryCopy unzipStagedShardFileForEntry:entryCopy toURL:v14 error:error];

    if (v15)
    {
      v16 = [self _validateVisionAssetIntegrity:schemaType error:error];
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
    schemaType = [entryCopy schemaType];
    [v17 hk_assignError:error code:3 format:{@"%@ cannot import entry with schema type (%@, %ld)", v18, schemaType, objc_msgSend(entryCopy, "schemaVersion")}];
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

+ (id)pruneEntries:(id)entries options:(unint64_t)options shardRegistry:(id)registry error:(id *)error
{
  entriesCopy = entries;
  if ([self _deleteVisionAssetWithShardRegistry:registry reason:@"Prune request" error:error])
  {
    v10 = entriesCopy;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)purgeableSpaceForUrgency:(int)urgency shardRegistry:(id)registry
{
  v21 = *MEMORY[0x277D85DE8];
  if (urgency == 4)
  {
    v5 = [self _visionAssetPathWithRegistry:registry];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v14 = 0;
    v7 = [v6 hk_fileSizeWithError:&v14];
    v8 = v14;
    v9 = v8;
    if (v7 || ([v8 hk_isCocoaNoSuchFileError] & 1) != 0)
    {
      longLongValue = [v7 longLongValue];
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogMedication();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v9;
        _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Error getting size of '%{public}@': %{public}@", buf, 0x20u);
      }

      longLongValue = 0;
    }
  }

  else
  {
    longLongValue = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return longLongValue;
}

+ (id)_visionAssetPathWithRegistry:(id)registry
{
  daemon = [registry daemon];
  healthDirectoryPath = [daemon healthDirectoryPath];

  v5 = [healthDirectoryPath stringByAppendingPathComponent:@"vision"];

  return v5;
}

+ (BOOL)_validateVisionAssetIntegrity:(id)integrity error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  integrityCopy = integrity;
  v7 = objc_alloc_init(v5);
  v8 = [v7 contentsOfDirectoryAtPath:integrityCopy error:error];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2863C2C18];
    v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v11 = [v9 isSubsetOfSet:v10];
    if ((v11 & 1) == 0)
    {
      v12 = [v9 hk_minus:v10];
      allObjects = [v12 allObjects];
      v14 = [allObjects componentsJoinedByString:@" - "];

      [MEMORY[0x277CCA9B8] hk_assignError:error code:106 format:{@"Vision asset missing required file: %@", v14}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_deleteVisionAssetWithShardRegistry:(id)registry reason:(id)reason error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v9 = [self _visionAssetPathWithRegistry:registry];
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  _HKInitializeLogging();
  v11 = HKLogMedication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = reasonCopy;
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
      selfCopy2 = self;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = reasonCopy;
      v28 = 2114;
      v29 = v14;
      _os_log_error_impl(&dword_25181C000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Error removing asset directory for %{public}@ '%{public}@': %{public}@", buf, 0x2Au);
    }

    v17 = v14;
    if (v17)
    {
      if (error)
      {
        v18 = v17;
        *error = v17;
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