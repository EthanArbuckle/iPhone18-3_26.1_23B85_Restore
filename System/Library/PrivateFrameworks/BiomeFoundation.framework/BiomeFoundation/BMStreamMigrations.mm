@interface BMStreamMigrations
+ (Class)legacyClassForLibraryStream:(id)stream;
+ (id)libraryPathForStreamIdentifier:(id)identifier;
+ (id)pathToVersionFile;
+ (int64_t)handleFloatReturnValue:(id)value;
+ (int64_t)readCurrentDatabaseVersion;
+ (void)readCurrentDatabaseVersion;
+ (void)setDatabaseVersion:(int64_t)version;
- (void)_migrateStreamsToLibrary:(id)library streamType:(unint64_t)type;
- (void)_moveStreamsWithPathMapping:(id)mapping;
- (void)_removeStreamPaths:(id)paths;
- (void)migrate;
- (void)migrateFromVersion:(int64_t)version;
@end

@implementation BMStreamMigrations

+ (id)pathToVersionFile
{
  v2 = +[BMProcess current];
  isRunningInUserContext = [v2 isRunningInUserContext];

  v4 = [BMPaths biomeDirectoryForDomain:isRunningInUserContext ^ 1u];
  v5 = [v4 stringByAppendingPathComponent:@"databaseVersion.json"];

  return v5;
}

+ (int64_t)handleFloatReturnValue:(id)value
{
  valueCopy = value;
  [valueCopy doubleValue];
  if (v4 <= 0.0 || v4 >= 0.99)
  {
    integerValue = [valueCopy integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

+ (int64_t)readCurrentDatabaseVersion
{
  v2 = +[BMStreamMigrations pathToVersionFile];
  v27 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v2 options:0 error:&v27];
  v4 = v27;
  if (v4)
  {
    v5 = v4;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v2];

    v8 = __biome_log_for_category(0);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "Unable to read existing database version file. Using 1 as the default version", buf, 2u);
      }

      v10 = 1;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamMigrations *)v5 readCurrentDatabaseVersion:v9];
      }

      v10 = 0;
    }
  }

  else
  {
    v25 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v25];
    v5 = v25;
    if (v5)
    {
      v11 = __biome_log_for_category(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamMigrations *)v5 readCurrentDatabaseVersion:v11];
      }

      v10 = 0;
    }

    else
    {
      v11 = [v9 objectForKeyedSubscript:@"Version"];
      v10 = [BMStreamMigrations handleFloatReturnValue:v11];
    }
  }

  return v10;
}

+ (void)setDatabaseVersion:(int64_t)version
{
  v25[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[BMStreamMigrations pathToVersionFile];
  v24 = @"Version";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v25[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v23 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v23];
  v9 = v23;
  stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
  v22 = v9;
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v22];
  v11 = v22;

  v21 = v11;
  [v8 writeToFile:v5 options:268435457 error:&v21];
  v12 = v21;

  if (v12)
  {
    v13 = __biome_log_for_category(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(BMStreamMigrations *)v12 setDatabaseVersion:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)migrate
{
  v3 = +[BMStreamMigrations readCurrentDatabaseVersion];

  [(BMStreamMigrations *)self migrateFromVersion:v3];
}

- (void)migrateFromVersion:(int64_t)version
{
  v18 = *MEMORY[0x1E69E9840];
  if (version != 9)
  {
    versionCopy = version;
    v5 = __biome_log_for_category(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:versionCopy];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = &unk_1F20EBBF0;
      _os_log_impl(&dword_1AC15D000, v5, OS_LOG_TYPE_DEFAULT, "Initiating Biome migration from version %@ to version %@.", &v14, 0x16u);
    }

    if (versionCopy <= 8)
    {
      do
      {
        if (versionCopy <= 3)
        {
          if (versionCopy <= 1)
          {
            if (versionCopy)
            {
              if (versionCopy == 1)
              {
                v7 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
                [(BMStreamMigrations *)self _migrateStreamsToLibrary:v7 streamType:1];

                v8 = +[BMStreamMigrations libraryRestrictedStreamMigrationPaths];
                [(BMStreamMigrations *)self _migrateStreamsToLibrary:v8 streamType:2];
              }

              goto LABEL_25;
            }

            [(BMStreamMigrations *)self _removeStreamPaths:&unk_1F20EBDD0];
            selfCopy5 = self;
            v12 = &unk_1F20EC298;
            goto LABEL_24;
          }

          if (versionCopy != 2)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC2E8;
LABEL_24:
            [(BMStreamMigrations *)selfCopy5 _moveStreamsWithPathMapping:v12];
            goto LABEL_25;
          }

          [(BMStreamMigrations *)self _moveStreamsWithPathMapping:&unk_1F20EC2C0];
          selfCopy7 = self;
          v10 = &unk_1F20EBDE8;
          goto LABEL_22;
        }

        if (versionCopy > 5)
        {
          if (versionCopy == 6)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC310;
            goto LABEL_24;
          }

          if (versionCopy == 7)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC338;
            goto LABEL_24;
          }
        }

        else
        {
          if (versionCopy == 4)
          {
            selfCopy7 = self;
            v10 = &unk_1F20EBE00;
            goto LABEL_22;
          }

          if ([MEMORY[0x1E69C5CF8] isInternalBuild])
          {
            selfCopy7 = self;
            v10 = &unk_1F20EBE18;
LABEL_22:
            [(BMStreamMigrations *)selfCopy7 _removeStreamPaths:v10];
          }
        }

LABEL_25:
        [BMStreamMigrations setDatabaseVersion:++versionCopy];
      }

      while (versionCopy != 9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_moveStreamsWithPathMapping:(id)mapping
{
  v40 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = mappingCopy;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    v26 = *MEMORY[0x1E696A250];
    *&v7 = 138543874;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:{v11, v25}];
        if ([defaultManager fileExistsAtPath:v12])
        {
          v13 = __biome_log_for_category(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v34 = v11;
            v35 = 2114;
            v36 = v12;
            _os_log_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_INFO, "Skipping migration of %{public}@ to %{public}@ because destination already exists", buf, 0x16u);
          }

          v14 = 0;
        }

        else
        {
          v28 = 0;
          v15 = [defaultManager moveItemAtPath:v11 toPath:v12 error:&v28];
          v16 = v28;
          v14 = v16;
          if (v15)
          {
            goto LABEL_21;
          }

          domain = [v16 domain];
          if (![domain isEqualToString:v26])
          {

LABEL_15:
            v13 = __biome_log_for_category(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v34 = v11;
              v35 = 2114;
              v36 = v12;
              v37 = 2114;
              v38 = v14;
              _os_log_error_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_ERROR, "Failed to migrate %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
            }

            goto LABEL_20;
          }

          if ([v14 code] == 260)
          {
          }

          else
          {
            code = [v14 code];

            if (code != 4)
            {
              goto LABEL_15;
            }
          }

          v13 = __biome_log_for_category(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v34 = v11;
            v35 = 2114;
            v36 = v12;
            _os_log_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_INFO, "Skipping migration of %{public}@ to %{public}@ because source does not exist", buf, 0x16u);
          }
        }

LABEL_20:

LABEL_21:
        v27 = v14;
        v19 = [defaultManager removeItemAtPath:v11 error:&v27];
        v20 = v27;

        if (v19)
        {
          goto LABEL_29;
        }

        domain2 = [v20 domain];
        if ([domain2 isEqualToString:v26])
        {
          code2 = [v20 code];

          if (code2 == 4)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v23 = __biome_log_for_category(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = v11;
          v35 = 2114;
          v36 = v20;
          _os_log_error_impl(&dword_1AC15D000, v23, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ with error %{public}@", buf, 0x16u);
        }

LABEL_29:
      }

      v8 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_removeStreamPaths:(id)paths
{
  v31 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    v10 = *MEMORY[0x1E696A250];
    *&v7 = 138543618;
    v20 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v21 = 0;
        v13 = [defaultManager removeItemAtPath:v12 error:{&v21, v20}];
        v14 = v21;
        v15 = v14;
        if ((v13 & 1) == 0)
        {
          domain = [v14 domain];
          if ([domain isEqualToString:v10])
          {
            code = [v15 code];

            if (code == 4)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }

          v18 = __biome_log_for_category(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = v12;
            v28 = 2114;
            v29 = v15;
            _os_log_error_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ with error %{public}@", buf, 0x16u);
          }
        }

LABEL_14:

        ++v11;
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_migrateStreamsToLibrary:(id)library streamType:(unint64_t)type
{
  v50 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = libraryCopy;
  v7 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v44;
    v36 = *MEMORY[0x1E696A250];
    v11 = 0x1E796A000uLL;
    *&v8 = 138412290;
    v35 = v8;
    typeCopy = type;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [*(v11 + 2312) pathForStreamIdentifier:v13 streamType:{type, v35}];
        if ([defaultManager fileExistsAtPath:v14])
        {
          v15 = __biome_log_for_category(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v35;
            v48 = v13;
            _os_log_debug_impl(&dword_1AC15D000, v15, OS_LOG_TYPE_DEBUG, "Migrating stream %@ to BMLibrary.", buf, 0xCu);
          }

          v16 = v11;
          v17 = *(v11 + 2312);
          v18 = [obj valueForKey:v13];
          v19 = [v17 pathForStreamIdentifier:v18 streamType:2];

          v20 = __biome_log_for_category(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v35;
            v48 = v19;
            _os_log_debug_impl(&dword_1AC15D000, v20, OS_LOG_TYPE_DEBUG, "New path: %@", buf, 0xCu);
          }

          v42 = 1;
          stringByDeletingLastPathComponent = [v19 stringByDeletingLastPathComponent];
          v22 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v42];

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            stringByDeletingLastPathComponent2 = [v19 stringByDeletingLastPathComponent];
            v41 = 0;
            [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v41];
            v23 = v41;

            if (v23)
            {
              v25 = __biome_log_for_category(0);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = v35;
                v48 = v23;
                _os_log_error_impl(&dword_1AC15D000, v25, OS_LOG_TYPE_ERROR, "Error creating migrated path: %@", buf, 0xCu);
              }
            }
          }

          v40 = v23;
          v26 = [defaultManager moveItemAtPath:v14 toPath:v19 error:&v40];
          v27 = v40;

          if (v26)
          {
            v28 = v27;
LABEL_30:
            type = typeCopy;

            v11 = v16;
            goto LABEL_31;
          }

          domain = [v27 domain];
          if ([domain isEqual:v36])
          {
            code = [v27 code];

            if (code == 516)
            {
              v31 = __biome_log_for_category(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v35;
                v48 = v19;
                _os_log_impl(&dword_1AC15D000, v31, OS_LOG_TYPE_DEFAULT, "Skip migrating stream since the new path already exists: %@", buf, 0xCu);
              }

LABEL_26:

              v39 = v27;
              v32 = [defaultManager removeItemAtPath:v14 error:&v39];
              v28 = v39;

              if ((v32 & 1) == 0)
              {
                v33 = __biome_log_for_category(0);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = v35;
                  v48 = v28;
                  _os_log_error_impl(&dword_1AC15D000, v33, OS_LOG_TYPE_ERROR, "Error removing old stream, %@", buf, 0xCu);
                }
              }

              goto LABEL_30;
            }
          }

          else
          {
          }

          v31 = __biome_log_for_category(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = v35;
            v48 = v27;
            _os_log_error_impl(&dword_1AC15D000, v31, OS_LOG_TYPE_ERROR, "Error moving stream to library location, %@", buf, 0xCu);
          }

          goto LABEL_26;
        }

LABEL_31:
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v9);
  }

  v34 = *MEMORY[0x1E69E9840];
}

+ (id)libraryPathForStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
  v5 = [v4 objectForKey:identifierCopy];

  if (!v5)
  {
    v6 = +[BMStreamMigrations libraryRestrictedStreamMigrationPaths];
    v5 = [v6 objectForKey:identifierCopy];
  }

  return v5;
}

+ (Class)legacyClassForLibraryStream:(id)stream
{
  v3 = [self legacyClassNameForLibraryStream:stream];
  v4 = v3;
  if (v3)
  {
    v5 = NSClassFromString(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)readCurrentDatabaseVersion
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Error deserializing migration version file, %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)setDatabaseVersion:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Error writing migration version file, %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end