@interface NPTOLibraryInfo
- (BOOL)isSyncNeeded;
- (BOOL)isSyncing;
- (NPTOLibraryInfo)initWithDevice:(id)device;
- (NSDate)lastUpdatedDate;
- (NSDictionary)collectionTargetMap;
- (id)_collectionTargetMapFileURL;
- (id)_syncNeededFileURL;
- (id)_syncingFileURL;
- (void)_createLibraryDirectoryIfNeeded;
- (void)setCollectionTargetMap:(id)map;
- (void)setSyncNeeded;
- (void)setSyncing:(BOOL)syncing;
@end

@implementation NPTOLibraryInfo

- (NPTOLibraryInfo)initWithDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NPTOLibraryInfo;
  v5 = [(NPTOLibraryInfo *)&v18 init];
  if (v5)
  {
    v6 = nanophotos_log_sync_oversize();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = deviceCopy;
      _os_log_impl(&dword_25B657000, v6, OS_LOG_TYPE_DEFAULT, "Creating library info for device: %@", buf, 0xCu);
    }

    v7 = [deviceCopy objectForKeyedSubscript:*MEMORY[0x277D2BB60]];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v7 stringByAppendingPathComponent:@"NanoPhotos"];
    v10 = [v8 fileURLWithPath:v9 isDirectory:1];
    libraryURL = v5->_libraryURL;
    v5->_libraryURL = v10;

    v12 = [[NPTONotificationCenter alloc] initWithDevice:deviceCopy];
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v12;

    v14 = [[NPTOPreferencesAccessor alloc] initWithDevice:deviceCopy];
    legacyPreferencesAccessor = v5->_legacyPreferencesAccessor;
    v5->_legacyPreferencesAccessor = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDate)lastUpdatedDate
{
  v14 = *MEMORY[0x277D85DE8];
  _collectionTargetMapFileURL = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
  v11 = 0;
  v3 = *MEMORY[0x277CBE7B0];
  v10 = 0;
  v4 = [_collectionTargetMapFileURL getResourceValue:&v11 forKey:v3 error:&v10];
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
  if (self)
  {
    self = [self[1] URLByAppendingPathComponent:@"collectionTargetMap"];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isSyncing
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _syncingFileURL = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
  path = [_syncingFileURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6;
}

- (id)_syncingFileURL
{
  if (self)
  {
    self = [self[1] URLByAppendingPathComponent:@"syncing"];
    v1 = vars8;
  }

  return self;
}

- (void)setSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  v26 = *MEMORY[0x277D85DE8];
  if ([(NPTOLibraryInfo *)self isSyncing]!= syncing)
  {
    if (syncingCopy)
    {
      [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      _syncingFileURL = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
      path = [_syncingFileURL path];
      v8 = [defaultManager createFileAtPath:path contents:0 attributes:0];

      if ((v8 & 1) == 0)
      {
        v9 = nanophotos_log_sync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_25B657000, v9, OS_LOG_TYPE_ERROR, "Failed to create syncing file.", buf, 2u);
        }
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      _syncNeededFileURL = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
      path2 = [_syncNeededFileURL path];
      v23 = 0;
      v13 = [defaultManager2 removeItemAtPath:path2 error:&v23];
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
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      _syncingFileURL2 = [(NPTOLibraryInfo *)&self->super.isa _syncingFileURL];
      path3 = [_syncingFileURL2 path];
      v22 = 0;
      v20 = [defaultManager3 removeItemAtPath:path3 error:&v22];
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
  if (self)
  {
    path = [*(self + 8) path];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager fileExistsAtPath:path];

    if ((v4 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v6 = *(self + 8);
      v11 = 0;
      v7 = [defaultManager2 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];
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
  if (self)
  {
    self = [self[1] URLByAppendingPathComponent:@"syncneeded"];
    v1 = vars8;
  }

  return self;
}

- (NSDictionary)collectionTargetMap
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  _collectionTargetMapFileURL = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
  v4 = [v2 dataWithContentsOfURL:_collectionTargetMapFileURL];

  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  classForKeyedUnarchiver = [MEMORY[0x277CBEAC0] classForKeyedUnarchiver];
  classForKeyedUnarchiver2 = [MEMORY[0x277CBEA60] classForKeyedUnarchiver];
  classForKeyedUnarchiver3 = [MEMORY[0x277CCAD78] classForKeyedUnarchiver];
  classForKeyedUnarchiver4 = [MEMORY[0x277CCACA8] classForKeyedUnarchiver];
  classForKeyedUnarchiver5 = [MEMORY[0x277CCABB0] classForKeyedUnarchiver];
  v12 = [v6 setWithObjects:{classForKeyedUnarchiver, classForKeyedUnarchiver2, classForKeyedUnarchiver3, classForKeyedUnarchiver4, classForKeyedUnarchiver5, objc_msgSend(MEMORY[0x277CBEA90], "classForKeyedUnarchiver"), 0}];
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

- (void)setCollectionTargetMap:(id)map
{
  v27 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (mapCopy || ([(NPTOLibraryInfo *)self collectionTargetMap], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    collectionTargetMap = [(NPTOLibraryInfo *)self collectionTargetMap];
    v7 = [mapCopy isEqual:collectionTargetMap];

    if (mapCopy)
    {
      if ((v7 & 1) == 0)
      {
        v22 = 0;
        v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:mapCopy requiringSecureCoding:1 error:&v22];
        v9 = v22;
        if (v9)
        {
          v10 = nanophotos_log_sync();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v24 = mapCopy;
            v25 = 2112;
            v26 = v9;
            _os_log_error_impl(&dword_25B657000, v10, OS_LOG_TYPE_ERROR, "Failed to archive library collection target map %@, error: %@", buf, 0x16u);
          }
        }

        [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
        _collectionTargetMapFileURL = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
        v21 = 0;
        v12 = [v8 writeToURL:_collectionTargetMapFileURL options:1 error:&v21];
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
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        _collectionTargetMapFileURL2 = [(NPTOLibraryInfo *)&self->super.isa _collectionTargetMapFileURL];
        path = [_collectionTargetMapFileURL2 path];
        v20 = 0;
        v18 = [defaultManager removeItemAtPath:path error:&v20];
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _syncNeededFileURL = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
  path = [_syncNeededFileURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6;
}

- (void)setSyncNeeded
{
  [(NPTOLibraryInfo *)self _createLibraryDirectoryIfNeeded];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _syncNeededFileURL = [(NPTOLibraryInfo *)&self->super.isa _syncNeededFileURL];
  path = [_syncNeededFileURL path];
  v6 = [defaultManager createFileAtPath:path contents:0 attributes:0];

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