@interface NPTOLibraryInfo
- (BOOL)isSyncNeeded;
- (BOOL)isSyncing;
- (NPTOLibraryInfo)initWithDevice:(id)a3;
- (NSDate)lastUpdatedDate;
- (NSDictionary)collectionTargetMap;
- (id)_collectionTargetMapFileURL;
- (id)_syncNeededFileURL;
- (id)_syncingFileURL;
- (void)_createLibraryDirectoryIfNeeded;
- (void)setCollectionTargetMap:(id)a3;
- (void)setSyncNeeded;
- (void)setSyncing:(BOOL)a3;
@end

@implementation NPTOLibraryInfo

- (NPTOLibraryInfo)initWithDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NPTOLibraryInfo;
  v5 = [(NPTOLibraryInfo *)&v18 init];
  if (v5)
  {
    v6 = nanophotos_log_sync_oversize();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_25B657000, v6, OS_LOG_TYPE_DEFAULT, "Creating library info for device: %@", buf, 0xCu);
    }

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D2BB60]];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v7 stringByAppendingPathComponent:@"NanoPhotos"];
    v10 = [v8 fileURLWithPath:v9 isDirectory:1];
    libraryURL = v5->_libraryURL;
    v5->_libraryURL = v10;

    v12 = [[NPTONotificationCenter alloc] initWithDevice:v4];
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v12;

    v14 = [[NPTOPreferencesAccessor alloc] initWithDevice:v4];
    legacyPreferencesAccessor = v5->_legacyPreferencesAccessor;
    v5->_legacyPreferencesAccessor = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDate)lastUpdatedDate
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
  v11 = 0;
  v3 = *MEMORY[0x277CBE7B0];
  v10 = 0;
  v4 = [v2 getResourceValue:&v11 forKey:v3 error:&v10];
  v5 = v11;
  v6 = v10;

  if ((v4 & 1) == 0)
  {
    v7 = nanophotos_log_sync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_25B657000, v7, OS_LOG_TYPE_ERROR, "Failed to read modification date for library collection target map due to %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_collectionTargetMapFileURL
{
  if (a1)
  {
    a1 = [a1[1] URLByAppendingPathComponent:@"collectionTargetMap"];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isSyncing
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

- (id)_syncingFileURL
{
  if (a1)
  {
    a1 = [a1[1] URLByAppendingPathComponent:@"syncing"];
    v1 = vars8;
  }

  return a1;
}

- (void)setSyncing:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  if ([(NPTOLibraryInfo *)self isSyncing]!= a3)
  {
    if (v3)
    {
      [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
      v5 = [MEMORY[0x277CCAA00] defaultManager];
      v6 = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
      v7 = [v6 path];
      v8 = [v5 createFileAtPath:v7 contents:0 attributes:0];

      if ((v8 & 1) == 0)
      {
        v9 = nanophotos_log_sync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_25B657000, v9, OS_LOG_TYPE_ERROR, "Failed to create syncing file.", buf, 2u);
        }
      }

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
      v12 = [v11 path];
      v23 = 0;
      v13 = [v10 removeItemAtPath:v12 error:&v23];
      v14 = v23;

      if (v13)
      {
        goto LABEL_13;
      }

      v15 = nanophotos_log_sync();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v25 = v14;
      v16 = "Failed to remove syncneeded file: %@";
    }

    else
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
      v19 = [v18 path];
      v22 = 0;
      v20 = [v17 removeItemAtPath:v19 error:&v22];
      v14 = v22;

      if (v20)
      {
LABEL_13:

        [(NPTONotificationCenter *)self->_notificationCenter postNotificationName:?];
        goto LABEL_14;
      }

      v15 = nanophotos_log_sync();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        goto LABEL_13;
      }

      *buf = 138412290;
      v25 = v14;
      v16 = "Failed to remove syncing file: %@";
    }

    _os_log_error_impl(&dword_25B657000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_12;
  }

LABEL_14:
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"IsSyncing"];
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"Syncing"];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_createLibraryDirectoryIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [*(a1 + 8) path];
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 fileExistsAtPath:v2];

    if ((v4 & 1) == 0)
    {
      v5 = [MEMORY[0x277CCAA00] defaultManager];
      v6 = *(a1 + 8);
      v11 = 0;
      v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];
      v8 = v11;

      if ((v7 & 1) == 0)
      {
        v9 = nanophotos_log_sync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_error_impl(&dword_25B657000, v9, OS_LOG_TYPE_ERROR, "Failed to create library directory: %@", buf, 0xCu);
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_syncNeededFileURL
{
  if (a1)
  {
    a1 = [a1[1] URLByAppendingPathComponent:@"syncneeded"];
    v1 = vars8;
  }

  return a1;
}

- (NSDictionary)collectionTargetMap
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  v3 = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
  v4 = [v2 dataWithContentsOfURL:v3];

  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = [MEMORY[0x277CBEAC0] classForKeyedUnarchiver];
  v8 = [MEMORY[0x277CBEA60] classForKeyedUnarchiver];
  v9 = [MEMORY[0x277CCAD78] classForKeyedUnarchiver];
  v10 = [MEMORY[0x277CCACA8] classForKeyedUnarchiver];
  v11 = [MEMORY[0x277CCABB0] classForKeyedUnarchiver];
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_msgSend(MEMORY[0x277CBEA90], "classForKeyedUnarchiver"), 0}];
  v18 = 0;
  v13 = [v5 unarchivedObjectOfClasses:v12 fromData:v4 error:&v18];
  v14 = v18;

  if (v14)
  {
    v15 = nanophotos_log_sync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_25B657000, v15, OS_LOG_TYPE_ERROR, "Failed to unarchive library collection target map data %@, error: %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setCollectionTargetMap:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || ([(NPTOLibraryInfo *)self collectionTargetMap], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(NPTOLibraryInfo *)self collectionTargetMap];
    v7 = [v5 isEqual:v6];

    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        v22 = 0;
        v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
        v9 = v22;
        if (v9)
        {
          v10 = nanophotos_log_sync();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v24 = v5;
            v25 = 2112;
            v26 = v9;
            _os_log_error_impl(&dword_25B657000, v10, OS_LOG_TYPE_ERROR, "Failed to archive library collection target map %@, error: %@", buf, 0x16u);
          }
        }

        [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
        v11 = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
        v21 = 0;
        v12 = [v8 writeToURL:v11 options:1 error:&v21];
        v13 = v21;

        if ((v12 & 1) == 0)
        {
          v14 = nanophotos_log_sync();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_error_impl(&dword_25B657000, v14, OS_LOG_TYPE_ERROR, "Failed to write collection target map file: %@", buf, 0xCu);
          }
        }

        goto LABEL_18;
      }
    }

    else
    {

      if ((v7 & 1) == 0)
      {
        v15 = [MEMORY[0x277CCAA00] defaultManager];
        v16 = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
        v17 = [v16 path];
        v20 = 0;
        v18 = [v15 removeItemAtPath:v17 error:&v20];
        v9 = v20;

        if (v18)
        {
LABEL_19:

          [(NPTONotificationCenter *)self->_notificationCenter postNotificationName:?];
          goto LABEL_20;
        }

        v8 = nanophotos_log_sync();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_error_impl(&dword_25B657000, v8, OS_LOG_TYPE_ERROR, "Failed to remove collection target map file: %@", buf, 0xCu);
        }

LABEL_18:

        goto LABEL_19;
      }
    }
  }

LABEL_20:
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"ExpectedLibrarySize"];
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"NumberOfPhotos"];
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"WatchCollectionList"];
  [(NPTOPreferencesAccessor *)self->_legacyPreferencesAccessor removeObjectForKey:@"LibraryCollectionTargetMapData"];

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSyncNeeded
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

- (void)setSyncNeeded
{
  [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
  v5 = [v4 path];
  v6 = [v3 createFileAtPath:v5 contents:0 attributes:0];

  if ((v6 & 1) == 0)
  {
    v7 = nanophotos_log_sync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_25B657000, v7, OS_LOG_TYPE_ERROR, "Failed to create syncneeded file.", v8, 2u);
    }
  }

  [(NPTONotificationCenter *)self->_notificationCenter postNotificationName:?];
}

@end