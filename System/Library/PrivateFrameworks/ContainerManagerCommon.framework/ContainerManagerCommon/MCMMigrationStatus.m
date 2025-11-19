@interface MCMMigrationStatus
+ (id)currentBuildVersion;
- (BOOL)_writeMigrationStatusToDisk;
- (BOOL)hasMigrationOccurredForType:(id)a3;
- (BOOL)isBuildUpgrade;
- (MCMMigrationStatus)init;
- (MCMMigrationStatus)initWithFileURL:(id)a3;
- (NSMutableDictionary)migrationInfo;
- (NSURL)migrationFileURL;
- (id)_iso8601DateFormatter;
- (id)_readMigrationStatusFromDisk;
- (id)_readMigrationStatusFromDiskAtURL:(id)a3;
- (id)initForMobileUserMigration;
- (id)initForSystemMigration;
- (void)_consolidateForUnifiedDaemonFromManyMarkerFilesToOneWithLibraryURL:(id)a3;
- (void)_consolidateForUserDaemonFromManyMarkerFilesToOneWithLibraryURL:(id)a3;
- (void)_consolidateSystemDaemonMigrationStatusWithLibraryURL:(id)a3;
- (void)_consolidateUnifiedDaemonMigrationStatusWithLibraryURL:(id)a3;
- (void)_consolidateUserDaemonMigrationStatusWithLibraryURL:(id)a3;
- (void)_readStatusFromMarkerFileWithName:(id)a3 andSetAsType:(id)a4 libraryURL:(id)a5;
- (void)_removeMarkerFileWithName:(id)a3 libraryURL:(id)a4;
- (void)clearMigrationCompleteForType:(id)a3;
- (void)setMigrationCompleteForType:(id)a3;
- (void)setMigrationFileURL:(id)a3;
- (void)setMigrationInfo:(id)a3;
- (void)writeCurrentBuildInfoToDisk;
@end

@implementation MCMMigrationStatus

- (void)setMigrationFileURL:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_migrationFileURL = &self->_migrationFileURL;

  objc_storeStrong(p_migrationFileURL, a3);
}

- (NSURL)migrationFileURL
{
  result = self->_migrationFileURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setMigrationInfo:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_migrationInfo = &self->_migrationInfo;

  objc_storeStrong(p_migrationInfo, a3);
}

- (NSMutableDictionary)migrationInfo
{
  result = self->_migrationInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_iso8601DateFormatter
{
  v5 = *MEMORY[0x1E69E9840];
  if (_iso8601DateFormatter_onceToken != -1)
  {
    dispatch_once(&_iso8601DateFormatter_onceToken, &__block_literal_global_64);
  }

  v2 = _iso8601DateFormatter_dateFormatter;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __43__MCMMigrationStatus__iso8601DateFormatter__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = _iso8601DateFormatter_dateFormatter;
  _iso8601DateFormatter_dateFormatter = v0;

  v2 = _iso8601DateFormatter_dateFormatter;
  v3 = *MEMORY[0x1E69E9840];

  return [v2 setFormatOptions:1907];
}

- (BOOL)isBuildUpgrade
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(MCMMigrationStatus *)self migrationInfo];
  v3 = [v2 objectForKeyedSubscript:@"LastBuildInfo"];

  if (v3)
  {
    v4 = *MEMORY[0x1E695E1E8];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    if (!v5)
    {
      v7 = container_log_handle_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Could not get build version from last build info dictionary; assuming this is an upgrade", &v18, 2u);
      }

      v15 = 1;
      goto LABEL_26;
    }

    v6 = _CFCopySystemVersionDictionary();
    v7 = v6;
    if (!v6)
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not get current build info; assuming this is an upgrade", &v18, 2u);
      }

      v15 = 1;
      goto LABEL_25;
    }

    v8 = [v6 objectForKeyedSubscript:v4];
    if (!v8)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Could not get current build string; assuming this is an upgrade", &v18, 2u);
      }

      v15 = 1;
      goto LABEL_24;
    }

    v9 = [v3 objectForKeyedSubscript:@"ReleaseType"];
    v10 = [v7 objectForKeyedSubscript:@"ReleaseType"];
    v11 = [v5 isEqual:v8];
    v12 = container_log_handle_for_category();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v18 = 138413058;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v9;
        v14 = "Current build version (%@ / %@) equal to last version recorded (%@ / %@); skipping upgrade";
LABEL_22:
        _os_log_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 0x2Au);
      }
    }

    else if (v13)
    {
      v18 = 138413058;
      v19 = v5;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      v14 = "Detected upgrade from %@ (%@) to %@ (%@)";
      goto LABEL_22;
    }

    v15 = v11 ^ 1;
LABEL_24:

LABEL_25:
LABEL_26:

    goto LABEL_27;
  }

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Did not find last build info; we must be upgrading from pre-9.3.1 or upgrading for the first time to a build with split daemon configuration or this is an erase install.", &v18, 2u);
  }

  v15 = 1;
LABEL_27:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)writeCurrentBuildInfoToDisk
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _CFCopySystemVersionDictionary();
  v4 = [(MCMMigrationStatus *)self migrationInfo];
  [v4 setObject:v3 forKeyedSubscript:@"LastBuildInfo"];

  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [objc_opt_class() currentBuildVersion];
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Saved last build version of %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setMigrationCompleteForType:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(MCMMigrationStatus *)self _iso8601DateFormatter];
  v7 = [v6 stringFromDate:v5];

  v8 = [objc_opt_class() currentBuildVersion];
  v18[0] = @"MCMMigrationVersionNumber";
  v18[1] = @"MCMMigrationTime";
  v19[0] = v8;
  v19[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v10 = [(MCMMigrationStatus *)self migrationInfo];
  [v10 setObject:v9 forKeyedSubscript:v4];

  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [objc_opt_class() currentBuildVersion];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Migration completed on %@ for %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)clearMigrationCompleteForType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMMigrationStatus *)self migrationInfo];
  [v5 removeObjectForKey:v4];

  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Migration cleared for %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasMigrationOccurredForType:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMMigrationStatus *)self migrationInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (BOOL)_writeMigrationStatusToDisk
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(MCMMigrationStatus *)self migrationFileURL];
  v4 = +[MCMFileManager defaultManager];
  v5 = [v4 dataWritingOptionsForFileAtURL:v3];

  v6 = [(MCMMigrationStatus *)self migrationInfo];
  v14 = 0;
  v7 = [v6 MCM_writeToURL:v3 withOptions:v5 error:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() currentBuildVersion];
      v13 = [v3 path];
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to write migration status on %@ for %@ : %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_readMigrationStatusFromDiskAtURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v4 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:a3 options:0 error:&v14];
  v5 = v14;
  v6 = [v4 mutableCopy];

  if (!v6)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v8 = [v5 code];

      if (v8 == 2)
      {
        v6 = objc_opt_new();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [(MCMMigrationStatus *)self migrationFileURL];
      v13 = [v12 path];
      *buf = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to read migration status file at %@ : %@", buf, 0x16u);
    }

    v6 = 0;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_readMigrationStatusFromDisk
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(MCMMigrationStatus *)self migrationFileURL];
  v4 = [(MCMMigrationStatus *)self _readMigrationStatusFromDiskAtURL:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_removeMarkerFileWithName:(id)a3 libraryURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a4 URLByAppendingPathComponent:a3 isDirectory:0];
  v5 = +[MCMFileManager defaultManager];
  v11 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v11];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 path];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to remove marker file at %@: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_readStatusFromMarkerFileWithName:(id)a3 andSetAsType:(id)a4 libraryURL:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a5 URLByAppendingPathComponent:a3 isDirectory:0];
  v18 = 0;
  v10 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:v9 options:0 error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    [(NSMutableDictionary *)self->_migrationInfo setObject:v10 forKeyedSubscript:v8];
  }

  else
  {
    v13 = [v11 domain];
    if ([v13 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v14 = [v12 code];

      if (v14 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [v9 path];
      *buf = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to read migration marker file at %@ : %@", buf, 0x16u);
    }
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_consolidateForUnifiedDaemonFromManyMarkerFilesToOneWithLibraryURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Migrating from many marker files down to one", v7, 2u);
  }

  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_bundle_migration_complete.plist" andSetAsType:@"BundleMigration" libraryURL:v4];
  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_acl2_migration_complete.plist" andSetAsType:@"ACLMigration" libraryURL:v4];
  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_group_id_migration_complete.plist" andSetAsType:@"GroupIdMigration" libraryURL:v4];
  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_code_signing_migration_complete.plist" andSetAsType:@"CodeSigningMigration" libraryURL:v4];
  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_bundle_migration_complete.plist" libraryURL:v4];
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_acl2_migration_complete.plist" libraryURL:v4];
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_group_id_migration_complete.plist" libraryURL:v4];
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_code_signing_migration_complete.plist" libraryURL:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_consolidateForUserDaemonFromManyMarkerFilesToOneWithLibraryURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Migrating from many marker files down to one", v7, 2u);
  }

  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_group_id_migration_complete.plist" andSetAsType:@"GroupIdMigration" libraryURL:v4];
  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_code_signing_migration_complete.plist" andSetAsType:@"CodeSigningMigration" libraryURL:v4];
  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_group_id_migration_complete.plist" libraryURL:v4];
    [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_code_signing_migration_complete.plist" libraryURL:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_consolidateUnifiedDaemonMigrationStatusWithLibraryURL:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMMigrationStatus *)self _consolidateForUnifiedDaemonFromManyMarkerFilesToOneWithLibraryURL:a3];
}

- (void)_consolidateUserDaemonMigrationStatusWithLibraryURL:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMMigrationStatus *)self _consolidateForUserDaemonFromManyMarkerFilesToOneWithLibraryURL:a3];
}

- (void)_consolidateSystemDaemonMigrationStatusWithLibraryURL:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v22 = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Consolidating system session daemon migration status", v22, 2u);
  }

  v6 = [v4 URLByDeletingLastPathComponent];

  v7 = [v6 URLByAppendingPathComponent:@"mcm_migration_status.plist" isDirectory:0];
  v8 = [(MCMMigrationStatus *)self _readMigrationStatusFromDiskAtURL:v7];
  v9 = [(MCMMigrationStatus *)self migrationInfo];
  v10 = [v9 objectForKeyedSubscript:@"BundleMigration"];

  v11 = 0;
  if (!v10)
  {
    v12 = [v8 objectForKeyedSubscript:@"BundleMigration"];

    if (v12)
    {
      v13 = [v8 objectForKeyedSubscript:@"BundleMigration"];
      v14 = [(MCMMigrationStatus *)self migrationInfo];
      [v14 setObject:v13 forKeyedSubscript:@"BundleMigration"];

      v11 = 0;
    }

    else
    {
      [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_bundle_migration_complete.plist" andSetAsType:@"BundleMigration" libraryURL:v6];
      v11 = 1;
    }
  }

  v15 = [(MCMMigrationStatus *)self migrationInfo];
  v16 = [v15 objectForKeyedSubscript:@"ACLMigration"];

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = [v8 objectForKeyedSubscript:@"ACLMigration"];

  if (v17)
  {
    v18 = [v8 objectForKeyedSubscript:@"ACLMigration"];
    v19 = [(MCMMigrationStatus *)self migrationInfo];
    [v19 setObject:v18 forKeyedSubscript:@"ACLMigration"];

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  [(MCMMigrationStatus *)self _readStatusFromMarkerFileWithName:@"mcm_acl2_migration_complete.plist" andSetAsType:@"ACLMigration" libraryURL:v6];
  v20 = 1;
LABEL_11:
  if ([(MCMMigrationStatus *)self _writeMigrationStatusToDisk])
  {
    if (v11)
    {
      [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_bundle_migration_complete.plist" libraryURL:v6];
    }

    if (v20)
    {
      [(MCMMigrationStatus *)self _removeMarkerFileWithName:@"mcm_acl2_migration_complete.plist" libraryURL:v6];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (MCMMigrationStatus)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMMigrationStatus *)self initForSystemMigration];
}

- (id)initForMobileUserMigration
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCMMigrationStatus;
  v2 = [(MCMMigrationStatus *)&v17 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = +[MCMUserIdentitySharedCache sharedInstance];
  v4 = [v3 managedUserPathRegistryForUserIdentity:0];
  v5 = [v4 containermanagerUserLibrary];

  v6 = [v5 url];
  v7 = v6;
  if (!v6)
  {
    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Failed to get library url.";
LABEL_12:
    _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  v8 = [v6 URLByAppendingPathComponent:@"mcm_user_migration_status.plist" isDirectory:0];
  migrationFileURL = v2->_migrationFileURL;
  v2->_migrationFileURL = v8;

  v10 = [(MCMMigrationStatus *)v2 _readMigrationStatusFromDisk];
  migrationInfo = v2->_migrationInfo;
  v2->_migrationInfo = v10;

  if (!v2->_migrationInfo)
  {
    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Error reading user migration file from disk.  This is bad";
    goto LABEL_12;
  }

LABEL_5:
  v12 = v2;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (MCMMigrationStatus)initWithFileURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MCMMigrationStatus;
  v6 = [(MCMMigrationStatus *)&v14 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_migrationFileURL, a3), [(MCMMigrationStatus *)v7 _readMigrationStatusFromDisk], v8 = objc_claimAutoreleasedReturnValue(), migrationInfo = v7->_migrationInfo, v7->_migrationInfo = v8, migrationInfo, !v7->_migrationInfo))
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Error reading user migration file from disk.  This is bad", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)initForSystemMigration
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = MCMMigrationStatus;
  v2 = [(MCMMigrationStatus *)&v24 init];
  if (!v2)
  {
LABEL_19:
    v18 = v2;
    goto LABEL_20;
  }

  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerLibrary];

  v6 = [v5 url];
  v7 = v6;
  if (!v6)
  {
    v16 = container_log_handle_for_category();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = "Failed to get library url.";
LABEL_22:
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_11;
  }

  v8 = [v6 URLByAppendingPathComponent:@"mcm_migration_status.plist" isDirectory:0];
  migrationFileURL = v2->_migrationFileURL;
  v2->_migrationFileURL = v8;

  v10 = [(MCMMigrationStatus *)v2 _readMigrationStatusFromDisk];
  migrationInfo = v2->_migrationInfo;
  v2->_migrationInfo = v10;

  if (v2->_migrationInfo)
  {
    v12 = containermanager_copy_global_configuration();
    v13 = [v12 runmode];

    if (v13)
    {
      v14 = containermanager_copy_global_configuration();
      v15 = [v14 runmode];

      if (v15 == 2)
      {
        if (![(NSMutableDictionary *)v2->_migrationInfo count])
        {
          [(MCMMigrationStatus *)v2 _consolidateUserDaemonMigrationStatusWithLibraryURL:v7];
        }
      }

      else
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 runmode];

        if (v21 == 1 && ![(NSMutableDictionary *)v2->_migrationInfo count])
        {
          [(MCMMigrationStatus *)v2 _consolidateUnifiedDaemonMigrationStatusWithLibraryURL:v7];
        }
      }
    }

    else if (![(NSMutableDictionary *)v2->_migrationInfo count]|| ([(NSMutableDictionary *)v2->_migrationInfo objectForKeyedSubscript:@"MigrationStatusConsolidation"], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
    {
      [(MCMMigrationStatus *)v2 _consolidateSystemDaemonMigrationStatusWithLibraryURL:v7];
      [(MCMMigrationStatus *)v2 setMigrationCompleteForType:@"MigrationStatusConsolidation"];
    }

    goto LABEL_19;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "Error reading system migration file from disk.  This is bad";
    goto LABEL_22;
  }

LABEL_11:

  v18 = 0;
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)currentBuildVersion
{
  v5 = *MEMORY[0x1E69E9840];
  if (currentBuildVersion_onceToken != -1)
  {
    dispatch_once(&currentBuildVersion_onceToken, &__block_literal_global_12080);
  }

  v2 = currentBuildVersion_systemVersionNumber;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __41__MCMMigrationStatus_currentBuildVersion__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v3 = v0;
    v1 = [v0 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    if (v1)
    {
      objc_storeStrong(&currentBuildVersion_systemVersionNumber, v1);
    }

    v0 = v3;
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end