void _commitMasterManifest()
{
  v0 = [__masterManifest objectForKey:@"nextActivityDateByPersonIDKey"];
  v1 = [v0 count];

  if (v1)
  {
    v2 = __masterManifest;
    v4 = MSPathPublishMasterManifest();
    [v2 writeToFile:? atomically:?];
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = MSPathPublishMasterManifest();
    [v4 removeItemAtPath:v3 error:0];
  }
}

id _masterNextActivityDateByPersonID()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = __masterManifest;
  if (!__masterManifest)
  {
    v1 = [MEMORY[0x277CCAA00] defaultManager];
    v2 = MSPathPublishDir();
    [v1 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = MSPathPublishMasterManifest();
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      v6 = MEMORY[0x277CCAC58];
      v7 = MEMORY[0x277CBEA90];
      v8 = MSPathPublishMasterManifest();
      v9 = [v7 dataWithContentsOfFile:v8];
      v19 = 0;
      v10 = [v6 propertyListWithData:v9 options:1 format:0 error:&v19];
      v11 = v19;
      v12 = __masterManifest;
      __masterManifest = v10;

      if (!__masterManifest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to deserialize publisher master manifest: %{public}@", buf, 0xCu);
      }
    }

    v0 = __masterManifest;
    if (!__masterManifest)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = __masterManifest;
      __masterManifest = v13;

      v0 = __masterManifest;
    }
  }

  v15 = v0;
  v16 = [v15 objectForKey:@"nextActivityDateByPersonIDKey"];
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:v16 forKey:@"nextActivityDateByPersonIDKey"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void _commitMasterManifest_269()
{
  v0 = [__masterManifest_270 objectForKey:@"nextActivityDateByPersonID"];
  v1 = [v0 count];

  if (v1)
  {
    v2 = __masterManifest_270;
    v4 = MSPathSubscribeMasterManifest();
    [v2 writeToFile:? atomically:?];
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = MSPathSubscribeMasterManifest();
    [v4 removeItemAtPath:v3 error:0];
  }
}

id _masterNextActivityDateByPersonID_296()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = __masterManifest_270;
  if (!__masterManifest_270)
  {
    v1 = [MEMORY[0x277CCAA00] defaultManager];
    v2 = MSPathSubscribeDir();
    [v1 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = MSPathSubscribeMasterManifest();
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      v6 = MEMORY[0x277CCAC58];
      v7 = MEMORY[0x277CBEA90];
      v8 = MSPathSubscribeMasterManifest();
      v9 = [v7 dataWithContentsOfFile:v8];
      v19 = 0;
      v10 = [v6 propertyListWithData:v9 options:1 format:0 error:&v19];
      v11 = v19;
      v12 = __masterManifest_270;
      __masterManifest_270 = v10;

      if (!__masterManifest_270 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to deserialize subscriber master manifest: %{public}@", buf, 0xCu);
      }
    }

    v0 = __masterManifest_270;
    if (!__masterManifest_270)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = __masterManifest_270;
      __masterManifest_270 = v13;

      v0 = __masterManifest_270;
    }
  }

  v15 = v0;
  v16 = [v15 objectForKey:@"nextActivityDateByPersonID"];
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:v16 forKey:@"nextActivityDateByPersonID"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id MSMediaStreamDir()
{
  v0 = MSPlatform();
  v1 = [v0 pathMediaStreamDir];

  return v1;
}

id MSPathPublishDir()
{
  if (MSPathPublishDir_once != -1)
  {
    dispatch_once(&MSPathPublishDir_once, &__block_literal_global_530);
  }

  v1 = MSPathPublishDir_path;

  return v1;
}

void __MSPathPublishDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"pub"];
  v2 = MSPathPublishDir_path;
  MSPathPublishDir_path = v1;
}

id MSPathPublishDirForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathPublishDir();
  v3 = _sanitizeString(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id _sanitizeString(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 alphanumericCharacterSet];
  v4 = [v3 invertedSet];
  v5 = [v2 componentsSeparatedByCharactersInSet:v4];
  v6 = [v5 componentsJoinedByString:@"_"];

  v7 = MEMORY[0x277CCACA8];
  v8 = [v2 hash];

  v9 = [v7 stringWithFormat:@"%@+%lu", v6, v8];

  return v9;
}

id MSPathPublishMasterManifest()
{
  if (MSPathPublishMasterManifest_once != -1)
  {
    dispatch_once(&MSPathPublishMasterManifest_once, &__block_literal_global_3);
  }

  v1 = MSPathPublishMasterManifest_path;

  return v1;
}

void __MSPathPublishMasterManifest_block_invoke()
{
  v2 = MSPathPublishDir();
  v0 = [v2 stringByAppendingPathComponent:@"manifest.plist"];
  v1 = MSPathPublishMasterManifest_path;
  MSPathPublishMasterManifest_path = v0;
}

id MSPathPublishManifestForPersonID(void *a1)
{
  v1 = MSPathPublishDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"manifest.plist"];

  return v2;
}

id MSPathPublishQueueForPersonID(void *a1)
{
  v1 = MSPathPublishDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"queue.sqlite3"];

  return v2;
}

id MSPathPublishDerivativesQueueForPersonID(void *a1)
{
  v1 = MSPathPublishDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"derivatives.sqlite3"];

  return v2;
}

id MSPathPublishDiscardedQueueForPersonID(void *a1)
{
  v1 = MSPathPublishDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"quarantine.sqlite3"];

  return v2;
}

id MSPathSubscribeDir()
{
  if (MSPathSubscribeDir_once != -1)
  {
    dispatch_once(&MSPathSubscribeDir_once, &__block_literal_global_17);
  }

  v1 = MSPathSubscribeDir_path;

  return v1;
}

void __MSPathSubscribeDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"sub"];
  v2 = MSPathSubscribeDir_path;
  MSPathSubscribeDir_path = v1;
}

id MSPathSubscribeDirForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathSubscribeDir();
  v3 = _sanitizeString(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id MSPathSubscribeMasterManifest()
{
  if (MSPathSubscribeMasterManifest_once != -1)
  {
    dispatch_once(&MSPathSubscribeMasterManifest_once, &__block_literal_global_22);
  }

  v1 = MSPathSubscribeMasterManifest_path;

  return v1;
}

void __MSPathSubscribeMasterManifest_block_invoke()
{
  v2 = MSPathSubscribeDir();
  v0 = [v2 stringByAppendingPathComponent:@"manifest.plist"];
  v1 = MSPathSubscribeMasterManifest_path;
  MSPathSubscribeMasterManifest_path = v0;
}

id MSPathSubscriberManifestForPersonID(void *a1)
{
  v1 = MSPathSubscribeDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"manifest.plist"];

  return v2;
}

id MSPathSubscribeProtocolDirForPersonID(void *a1)
{
  v1 = MSPathSubscribeDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"protocol"];

  return v2;
}

id MSPathSubscriberRetrievalQueueForPersonID(void *a1)
{
  v1 = MSPathSubscribeDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"queue.sqlite3"];

  return v2;
}

id MSPathShareDir()
{
  if (MSPathShareDir_once != -1)
  {
    dispatch_once(&MSPathShareDir_once, &__block_literal_global_27);
  }

  v1 = MSPathShareDir_path;

  return v1;
}

void __MSPathShareDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"share"];
  v2 = MSPathShareDir_path;
  MSPathShareDir_path = v1;
}

id MSPathShareDirForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathShareDir();
  v3 = _sanitizeString(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id MSPathShareManifestForPersonID(void *a1)
{
  v1 = MSPathShareDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"manifest.plist"];

  return v2;
}

id MSPathDeleteDir()
{
  if (MSPathDeleteDir_once != -1)
  {
    dispatch_once(&MSPathDeleteDir_once, &__block_literal_global_32);
  }

  v1 = MSPathDeleteDir_path;

  return v1;
}

void __MSPathDeleteDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"del"];
  v2 = MSPathDeleteDir_path;
  MSPathDeleteDir_path = v1;
}

id MSPathDeleteDirForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathDeleteDir();
  v3 = _sanitizeString(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id MSPathDeleteMasterManifest()
{
  if (MSPathDeleteMasterManifest_once != -1)
  {
    dispatch_once(&MSPathDeleteMasterManifest_once, &__block_literal_global_37);
  }

  v1 = MSPathDeleteMasterManifest_path;

  return v1;
}

void __MSPathDeleteMasterManifest_block_invoke()
{
  v2 = MSPathDeleteDir();
  v0 = [v2 stringByAppendingPathComponent:@"manifest.plist"];
  v1 = MSPathDeleteMasterManifest_path;
  MSPathDeleteMasterManifest_path = v0;
}

id MSPathDeleteManifestForPersonID(void *a1)
{
  v1 = MSPathDeleteDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"manifest.plist"];

  return v2;
}

id MSPathDeleteQueueForPersonID(void *a1)
{
  v1 = MSPathDeleteDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"queue.sqlite3"];

  return v2;
}

id MSPathMMCSLibraryDir()
{
  if (MSPathMMCSLibraryDir_once != -1)
  {
    dispatch_once(&MSPathMMCSLibraryDir_once, &__block_literal_global_39);
  }

  v1 = MSPathMMCSLibraryDir_path;

  return v1;
}

void __MSPathMMCSLibraryDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"mmcs"];
  v2 = MSPathMMCSLibraryDir_path;
  MSPathMMCSLibraryDir_path = v1;
}

id MSPathMMCSMasterManifest()
{
  v0 = MSPathMMCSLibraryDir();
  v1 = [v0 stringByAppendingPathComponent:@"manifest.plist"];

  return v1;
}

id MSPathPublishMMCSLibraryForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathMMCSLibraryDir();
  v3 = [v2 stringByAppendingPathComponent:@"pub"];
  v4 = _sanitizeString(v1);

  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

id MSPathSubscribeMMCSLibraryForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathMMCSLibraryDir();
  v3 = [v2 stringByAppendingPathComponent:@"sub"];
  v4 = _sanitizeString(v1);

  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

id MSPathConfigDir()
{
  if (MSPathConfigDir_once != -1)
  {
    dispatch_once(&MSPathConfigDir_once, &__block_literal_global_44);
  }

  v1 = MSPathConfigDir_path;

  return v1;
}

void __MSPathConfigDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"config"];
  v2 = MSPathConfigDir_path;
  MSPathConfigDir_path = v1;
}

id MSPathConfigDirForPersonID(void *a1)
{
  v1 = a1;
  v2 = MSPathConfigDir();
  v3 = _sanitizeString(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id MSPathServerSideConfigPathForPersonID(void *a1)
{
  v1 = MSPathConfigDirForPersonID(a1);
  v2 = [v1 stringByAppendingPathComponent:@"serverconfig.plist"];

  return v2;
}

id MSPathAlbumSharingDir()
{
  if (MSPathAlbumSharingDir_once != -1)
  {
    dispatch_once(&MSPathAlbumSharingDir_once, &__block_literal_global_52);
  }

  v1 = MSPathAlbumSharingDir_path;

  return v1;
}

void __MSPathAlbumSharingDir_block_invoke()
{
  v0 = MSASPlatform();
  v1 = [v0 pathAlbumSharingDir];
  v2 = MSPathAlbumSharingDir_path;
  MSPathAlbumSharingDir_path = v1;

  if (!MSPathAlbumSharingDir_path)
  {
    v6 = MSPlatform();
    v3 = [v6 pathMediaStreamDir];
    v4 = [v3 stringByAppendingPathComponent:@"albumshare"];
    v5 = MSPathAlbumSharingDir_path;
    MSPathAlbumSharingDir_path = v4;
  }
}

id MSPathAlbumSharingDaemonPersistentStore()
{
  if (MSPathAlbumSharingDaemonPersistentStore_onceToken != -1)
  {
    dispatch_once(&MSPathAlbumSharingDaemonPersistentStore_onceToken, &__block_literal_global_57);
  }

  v1 = MSPathAlbumSharingDaemonPersistentStore_path;

  return v1;
}

void __MSPathAlbumSharingDaemonPersistentStore_block_invoke()
{
  v2 = MSPathAlbumSharingDir();
  v0 = [v2 stringByAppendingPathComponent:@"Daemon.sqlite"];
  v1 = MSPathAlbumSharingDaemonPersistentStore_path;
  MSPathAlbumSharingDaemonPersistentStore_path = v0;
}

uint64_t MSPathAlbumSharingDirForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingDirForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingDirForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingDirForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingDirForPersonID_path;
  v5 = MSPathAlbumSharingDirForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingDirForPersonID_block_invoke(uint64_t a1)
{
  v5 = MSPathAlbumSharingDir();
  v2 = _sanitizeString(*(a1 + 32));
  v3 = [v5 stringByAppendingPathComponent:v2];
  v4 = MSPathAlbumSharingDirForPersonID_path;
  MSPathAlbumSharingDirForPersonID_path = v3;
}

uint64_t MSPathAlbumSharingAssetsDirForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingAssetsDirForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingAssetsDirForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingAssetsDirForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingAssetsDirForPersonID_path;
  v5 = MSPathAlbumSharingAssetsDirForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingAssetsDirForPersonID_block_invoke(uint64_t a1)
{
  v1 = MSPathAlbumSharingDirForPersonID(*(a1 + 32));
  v2 = [v1 stringByAppendingPathComponent:@"assets"];
  v3 = MSPathAlbumSharingAssetsDirForPersonID_path;
  MSPathAlbumSharingAssetsDirForPersonID_path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:MSPathAlbumSharingAssetsDirForPersonID_path];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 createDirectoryAtPath:MSPathAlbumSharingAssetsDirForPersonID_path withIntermediateDirectories:1 attributes:0 error:0];
  }
}

uint64_t MSPathAlbumSharingPersistentStoreForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingPersistentStoreForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingPersistentStoreForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingPersistentStoreForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingPersistentStoreForPersonID_path;
  v5 = MSPathAlbumSharingPersistentStoreForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingPersistentStoreForPersonID_block_invoke(uint64_t a1)
{
  v3 = MSPathAlbumSharingDirForPersonID(*(a1 + 32));
  v1 = [v3 stringByAppendingPathComponent:@"PersonID.sqlite"];
  v2 = MSPathAlbumSharingPersistentStoreForPersonID_path;
  MSPathAlbumSharingPersistentStoreForPersonID_path = v1;
}

uint64_t MSPathAlbumSharingPublishMMCSLibraryForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingPublishMMCSLibraryForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingPublishMMCSLibraryForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingPublishMMCSLibraryForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingPublishMMCSLibraryForPersonID_path;
  v5 = MSPathAlbumSharingPublishMMCSLibraryForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingPublishMMCSLibraryForPersonID_block_invoke(uint64_t a1)
{
  v1 = MSPathAlbumSharingDirForPersonID(*(a1 + 32));
  v2 = [v1 stringByAppendingPathComponent:@"mmcs-pub"];
  v3 = MSPathAlbumSharingPublishMMCSLibraryForPersonID_path;
  MSPathAlbumSharingPublishMMCSLibraryForPersonID_path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:MSPathAlbumSharingPublishMMCSLibraryForPersonID_path];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 createDirectoryAtPath:MSPathAlbumSharingPublishMMCSLibraryForPersonID_path withIntermediateDirectories:1 attributes:0 error:0];
  }
}

uint64_t MSPathAlbumSharingModelForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingModelForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingModelForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingModelForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingModelForPersonID_path;
  v5 = MSPathAlbumSharingModelForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingModelForPersonID_block_invoke(uint64_t a1)
{
  v3 = MSPathAlbumSharingDirForPersonID(*(a1 + 32));
  v1 = [v3 stringByAppendingPathComponent:@"Model.sqlite"];
  v2 = MSPathAlbumSharingModelForPersonID_path;
  MSPathAlbumSharingModelForPersonID_path = v1;
}

uint64_t MSPathAlbumSharingSubscribeMMCSLibraryForPersonID(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v1;
  v2 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_onceToken, block);
  }

  v4 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path;
  v5 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path;

  return v4;
}

void __MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_block_invoke(uint64_t a1)
{
  v1 = MSPathAlbumSharingDirForPersonID(*(a1 + 32));
  v2 = [v1 stringByAppendingPathComponent:@"mmcs-sub"];
  v3 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path;
  MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 createDirectoryAtPath:MSPathAlbumSharingSubscribeMMCSLibraryForPersonID_path withIntermediateDirectories:1 attributes:0 error:0];
  }
}

id MSPathPerfDir()
{
  if (MSPathPerfDir_once != -1)
  {
    dispatch_once(&MSPathPerfDir_once, &__block_literal_global_77);
  }

  v1 = MSPathPerfDir_path;

  return v1;
}

void __MSPathPerfDir_block_invoke()
{
  v3 = MSPlatform();
  v0 = [v3 pathMediaStreamDir];
  v1 = [v0 stringByAppendingPathComponent:@"perf"];
  v2 = MSPathPerfDir_path;
  MSPathPerfDir_path = v1;
}

id MSPathPerfDB()
{
  if (MSPathPerfDB_onceToken != -1)
  {
    dispatch_once(&MSPathPerfDB_onceToken, &__block_literal_global_82);
  }

  v1 = MSPathPerfDB_path;

  return v1;
}

void __MSPathPerfDB_block_invoke()
{
  v2 = MSPathPerfDir();
  v0 = [v2 stringByAppendingPathComponent:@"perf.sqlite"];
  v1 = MSPathPerfDB_path;
  MSPathPerfDB_path = v0;
}

void CreateDirectoryAtPathIfNonNil(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v6];
    v4 = v6;

    if ((v3 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to create directory at %@: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot create directory at nil path", buf, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSPathCreateDirectories()
{
  v0 = MSPlatform();
  v1 = [v0 pathMediaStreamDir];
  CreateDirectoryAtPathIfNonNil(v1);

  v2 = MSPathPublishDir();
  CreateDirectoryAtPathIfNonNil(v2);

  v3 = MSPathSubscribeDir();
  CreateDirectoryAtPathIfNonNil(v3);

  v4 = MSPathShareDir();
  CreateDirectoryAtPathIfNonNil(v4);

  v5 = MSPathMMCSLibraryDir();
  CreateDirectoryAtPathIfNonNil(v5);

  v6 = MSPathAlbumSharingDir();
  CreateDirectoryAtPathIfNonNil(v6);

  v7 = MSPathPerfDir();
  CreateDirectoryAtPathIfNonNil(v7);
}

id MSSHA1HashForFileAtPath(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = open([v1 fileSystemRepresentation], 0);
  if (v2 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The file at %@ could not be opened for hashing.", &v7, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v3 = v2;
    v4 = MSSHA1HashForFileDescriptor(v2);
    close(v3);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id MSSHA1HashForFileDescriptor(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(0x3E8uLL, 0xE30BBAADuLL);
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  lseek(a1, 0, 0);
  while (1)
  {
    v3 = read(a1, v2, 0x3E8uLL);
    if (!v3)
    {
      break;
    }

    if (HIDWORD(v3))
    {
      __assert_rtn("MSSHA1HashForFileDescriptor", "MSUtilities.m", 41, "size <= UINT32_MAX");
    }

    CC_SHA1_Update(&v7, v2, v3);
  }

  CC_SHA1_Final(md, &v7);
  free(v2);
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id MSSHA1HashForData(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  memset(&v6, 0, sizeof(v6));
  CC_SHA1_Init(&v6);
  v2 = [v1 length];
  if (v2 >= 0xFFFFFFFF)
  {
    __assert_rtn("MSSHA1HashForData", "MSUtilities.m", 54, "length < UINT32_MAX");
  }

  CC_SHA1_Update(&v6, [v1 bytes], v2);
  CC_SHA1_Final(md, &v6);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

BOOL MSObjectsAreEquivalent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = !(v3 | v4) || v3 && v4 && ([v3 isEqual:v4] & 1) != 0;

  return v6;
}

void sub_245BB0A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245BB0CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB0E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB0F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB10E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB12A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB14C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB1640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BB1820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _logRecursiveError()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not logging any more underlying errors.", v0, 2u);
  }
}

id MSPlatform()
{
  v0 = _platform;
  if (!_platform)
  {
    [MEMORY[0x277CBEAD8] raise:@"MSCoreMediaStreamNotInitializedException" format:@"CoreMediaStream framework has not been initialized before use."];
    v0 = _platform;
  }

  return v0;
}

id MSPURLConnectionProperties()
{
  if (MSPURLConnectionProperties_once != -1)
  {
    dispatch_once(&MSPURLConnectionProperties_once, &__block_literal_global_840);
  }

  v1 = MSPURLConnectionProperties_dict;

  return v1;
}

void __MSPURLConnectionProperties_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = MSPlatform();
  v1 = [v4 socketOptions];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x277CBAEF8], 0}];
  v3 = MSPURLConnectionProperties_dict;
  MSPURLConnectionProperties_dict = v2;
}

id MSPMMCSConnectionProperties()
{
  if (MSPMMCSConnectionProperties_once != -1)
  {
    dispatch_once(&MSPMMCSConnectionProperties_once, &__block_literal_global_7);
  }

  v1 = MSPMMCSConnectionProperties_dict;

  return v1;
}

void __MSPMMCSConnectionProperties_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = MSPlatform();
  v1 = [v4 socketOptions];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x277D25610], 0}];
  v3 = MSPMMCSConnectionProperties_dict;
  MSPMMCSConnectionProperties_dict = v2;
}

void _putItemProgressCallback(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = [a7 MSVerboseDescription];
    v14 = 138543362;
    v15 = v13;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MMCS reported an error during upload: %{public}@", &v14, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = [MMCSEngine logStringForPutItemState:a5];
    v14 = 134218498;
    v15 = a3;
    v16 = 2114;
    v17 = v11;
    v18 = 2048;
    v19 = a1;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MMCS uploading callback for itemID: %llu state: %{public}@ progress: %.2f", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void _getItemDoneCallback(void *a1, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = [a5 MSVerboseDescription];
    v15 = 138543362;
    v16 = v13;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MMCS reported an error: %{public}@", &v15, 0xCu);

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = a1;
    [v11 _getItemDone:a2 path:0 error:a5];
    goto LABEL_7;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = MEMORY[0x277CCAA00];
  v10 = a1;
  v11 = [v9 defaultManager];
  v12 = [v11 stringWithFileSystemRepresentation:a4 length:strlen(a4)];
  [v10 _getItemDone:a2 path:v12 error:a5];

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
}

void _getItemProgressCallback(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = [a6 MSVerboseDescription];
    v13 = 138543362;
    v14 = v12;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MMCS reported an error during download: %{public}@", &v13, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = [MMCSEngine logStringForGetItemState:a5];
    v13 = 134218498;
    v14 = a3;
    v15 = 2114;
    v16 = v10;
    v17 = 2048;
    v18 = a1;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MMCS downloading callback for itemID: %llu state: %{public}@ progress: %.2f", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t _getFileDescriptorFromItemCallback(void *a1, uint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = v7;
  if (a3)
  {
    *a3 = [v7 _getFileDescriptorFromItem:a2];
  }

  if (a4)
  {
    *a4 = [v8 _getUTIFromItem:a2];
  }

  return 1;
}

void MSPSPCSendMetadataAsync(void *a1, uint64_t a2, const __CFDictionary *a3, CFArrayRef theArray)
{
  v35 = *MEMORY[0x277D85DE8];
  a1[6] = 0;
  a1[7] = _didFinish;
  a1[8] = _didFailAuthentication;
  a1[10] = _didReceiveRetryAfter;
  a1[9] = _didReceiveServerSideConfigurationVersion_1475;
  Count = CFArrayGetCount(theArray);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  v28 = Count;
  if (Count >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277CBF138];
    v8 = MEMORY[0x277CBF150];
    do
    {
      v9 = CFDictionaryCreateMutable(v5, 0, v7, v8);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if (CFDictionaryContainsKey(ValueAtIndex, @"fileName"))
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"fileName");
        CFDictionarySetValue(v9, @"filename", Value);
      }

      if (CFDictionaryContainsKey(ValueAtIndex, @"collId"))
      {
        v12 = CFDictionaryGetValue(ValueAtIndex, @"collId");
        CFDictionarySetValue(v9, @"assetcollid", v12);
      }

      v13 = CFDictionaryGetValue(ValueAtIndex, @"masterAsset");
      _insertMessageAsset(v9, v13);
      if (CFDictionaryContainsKey(ValueAtIndex, @"derivedAssets"))
      {
        theDict = v9;
        v14 = CFDictionaryGetValue(ValueAtIndex, @"derivedAssets");
        v15 = CFArrayGetCount(v14);
        v16 = CFArrayCreateMutable(v5, v15, MEMORY[0x277CBF128]);
        if (v15 >= 1)
        {
          for (i = 0; i != v15; ++i)
          {
            v18 = CFArrayGetValueAtIndex(v14, i);
            v19 = CFDictionaryCreateMutable(v5, 0, v7, v8);
            _insertMessageAsset(v19, v18);
            CFArrayAppendValue(v16, v19);
            CFRelease(v19);
          }
        }

        v9 = theDict;
        if (CFArrayGetCount(v16))
        {
          CFDictionaryAddValue(theDict, @"derivatives", v16);
        }

        CFRelease(v16);
      }

      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
      ++v6;
    }

    while (v6 != v28);
  }

  if (!Mutable)
  {
    __assert_rtn("MSPSPCSendMetadataAsync", "MSPublishStreamsProtocolCore.m", 44, "messageAssetCollectionsArray");
  }

  v20 = CFDictionaryCreateMutable(v5, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v20)
  {
    __assert_rtn("MSPSPCSendMetadataAsync", "MSPublishStreamsProtocolCore.m", 47, "messageDict");
  }

  v21 = v20;
  CFDictionaryAddValue(v20, @"assets", Mutable);
  CFRelease(Mutable);
  error = 0;
  v22 = CFPropertyListCreateData(v5, v21, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (v22)
  {
    v23 = v22;
    CFRelease(v21);
    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, v23, 1, 0);
    CFRelease(v23);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = error;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to serialize metadata: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v21);
    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, 0, 1, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void _insertMessageAsset(__CFDictionary *a1, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, @"fileHash"))
  {
    Value = CFDictionaryGetValue(theDict, @"fileHash");
    v5 = MSSPCCreateHexStringFromData(Value);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, @"checksum", v5);
      CFRelease(v6);
    }
  }

  if (CFDictionaryContainsKey(theDict, @"type"))
  {
    v7 = CFDictionaryGetValue(theDict, @"type");
    CFDictionarySetValue(a1, @"type", v7);
  }

  v8 = CFDictionaryContainsKey(theDict, @"protocolFileSize");
  v9 = MEMORY[0x277CBECE8];
  if (v8)
  {
    v10 = CFDictionaryGetValue(theDict, @"protocolFileSize");
    valuePtr = 0;
    CFNumberGetValue(v10, kCFNumberLongLongType, &valuePtr);
    v11 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(a1, @"size", v11);
      CFRelease(v12);
    }
  }

  if (CFDictionaryContainsKey(theDict, @"metadata"))
  {
    v13 = CFDictionaryGetValue(theDict, @"metadata");
    if (CFDictionaryContainsKey(v13, @"fileSize"))
    {
      v14 = CFDictionaryGetValue(v13, @"fileSize");
      valuePtr = 0;
      CFNumberGetValue(v14, kCFNumberLongLongType, &valuePtr);
      v15 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(a1, @"bytecount", v15);
        CFRelease(v16);
      }
    }

    if (CFDictionaryContainsKey(v13, @"pixelWidth"))
    {
      v17 = CFDictionaryGetValue(v13, @"pixelWidth");
      valuePtr = 0;
      CFNumberGetValue(v17, kCFNumberLongLongType, &valuePtr);
      v18 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(a1, @"width", v18);
        CFRelease(v19);
      }
    }

    if (CFDictionaryContainsKey(v13, @"pixelHeight"))
    {
      v20 = CFDictionaryGetValue(v13, @"pixelHeight");
      valuePtr = 0;
      CFNumberGetValue(v20, kCFNumberLongLongType, &valuePtr);
      v21 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(a1, @"height", v21);
        CFRelease(v22);
      }
    }

    if (CFDictionaryContainsKey(v13, @"SHA1"))
    {
      v23 = CFDictionaryGetValue(v13, @"SHA1");
      v24 = MSSPCCreateHexStringFromData(v23);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(a1, @"sha1", v24);
        CFRelease(v25);
      }
    }

    if (CFDictionaryContainsKey(v13, @"dateContentModified"))
    {
      v26 = CFDictionaryGetValue(v13, @"dateContentModified");
      v27 = MEMORY[0x245D7B020](v26);
      v28 = CFStringCreateWithFormat(0, 0, @"%lf", *&v27);
      CFDictionarySetValue(a1, @"dateContentModified", v28);
      CFRelease(v28);
    }

    if (CFDictionaryContainsKey(v13, @"dateContentCreated"))
    {
      v29 = CFDictionaryGetValue(v13, @"dateContentCreated");
      v30 = MEMORY[0x245D7B020](v29);
      v31 = CFStringCreateWithFormat(0, 0, @"%lf", *&v30);
      CFDictionarySetValue(a1, @"dateContentCreated", v31);
      CFRelease(v31);
    }

    if (CFDictionaryContainsKey(v13, @"sourceLibraryID"))
    {
      v32 = CFDictionaryGetValue(v13, @"sourceLibraryID");
      CFDictionarySetValue(a1, @"sourceLibraryID", v32);
    }

    if (CFDictionaryContainsKey(v13, @"sourceItemID"))
    {
      v33 = CFDictionaryGetValue(v13, @"sourceItemID");
      CFDictionarySetValue(a1, @"sourceItemID", v33);
    }

    if (CFDictionaryContainsKey(v13, @"sourceContainerType"))
    {
      v34 = CFDictionaryGetValue(v13, @"sourceContainerType");
      CFDictionarySetValue(a1, @"sourceContainerType", v34);
    }

    if (CFDictionaryContainsKey(v13, @"sourceContainerID"))
    {
      v35 = CFDictionaryGetValue(v13, @"sourceContainerID");
      CFDictionarySetValue(a1, @"sourceContainerID", v35);
    }

    if (CFDictionaryContainsKey(v13, @"sourceContainerDisplayName"))
    {
      v36 = CFDictionaryGetValue(v13, @"sourceContainerDisplayName");
      CFDictionarySetValue(a1, @"sourceContainerDisplayName", v36);
    }

    if (CFDictionaryContainsKey(v13, @"deviceDisplayName"))
    {
      v37 = CFDictionaryGetValue(v13, @"deviceDisplayName");
      CFDictionarySetValue(a1, @"deviceDisplayName", v37);
    }

    if (CFDictionaryContainsKey(v13, @"rasterToDisplayRotationAngle"))
    {
      v38 = CFDictionaryGetValue(v13, @"rasterToDisplayRotationAngle");
      valuePtr = 0;
      CFNumberGetValue(v38, kCFNumberLongLongType, &valuePtr);
      v39 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
      if (v39)
      {
        v40 = v39;
        CFDictionarySetValue(a1, @"rasterToDisplayRotationAngle", v39);
        CFRelease(v40);
      }
    }

    if (CFDictionaryContainsKey(v13, @"sourceiCloudPhotoLibraryEnabled"))
    {
      v41 = CFDictionaryGetValue(v13, @"sourceiCloudPhotoLibraryEnabled");
      valuePtr = 0;
      CFNumberGetValue(v41, kCFNumberLongLongType, &valuePtr);
      v42 = CFStringCreateWithFormat(*v9, 0, @"%llu", valuePtr);
      if (v42)
      {
        v43 = v42;
        CFDictionarySetValue(a1, @"sourceiCloudPhotoLibraryEnabled", v42);
        CFRelease(v43);
      }
    }
  }
}

uint64_t _didReceiveServerSideConfigurationVersion_1475(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didReceiveRetryAfter(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFailAuthentication(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didFinish(uint64_t a1, CFDataRef theData, __CFError *a3)
{
  if (theData && CFDataGetLength(theData))
  {
    error = 0;
    v6 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], theData, 0, 0, &error);
    if (error)
    {
      v7 = a3 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = error;
    }

    else
    {
      v8 = a3;
    }

    if (error)
    {
      if (a3)
      {
        CFRelease(error);
        v8 = a3;
      }
    }

    if (v6)
    {
      v9 = CFGetTypeID(v6);
      if (v9 == CFDictionaryGetTypeID())
      {
        (*(a1 + 128))(a1, v6, v8);
        CFRelease(v6);
        return;
      }

      CFRelease(v6);
    }

    (*(a1 + 128))(a1, 0, v8);
  }

  else
  {
    v10 = *(a1 + 128);

    v10(a1, 0, a3);
  }
}

void MSPSPCUCSendUploadCompleteAsync(void *a1, uint64_t a2, const __CFDictionary *a3, CFArrayRef theArray)
{
  v63 = *MEMORY[0x277D85DE8];
  a1[6] = 0;
  a1[7] = _didFinishUC;
  a1[8] = _didFailAuthenticationUC;
  a1[9] = _didReceiveServerSideConfigurationVersionUC;
  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    __assert_rtn("MSPSPCUCSendUploadCompleteAsync", "MSPublishStreamsProtocolCore.m", 226, "outputArray");
  }

  v9 = Mutable;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  alloc = *MEMORY[0x277CBECE8];
  v10 = theArray;
  if (Count >= 1)
  {
    v11 = Count;
    v12 = 0;
    v13 = MEMORY[0x277CBF138];
    v14 = MEMORY[0x277CBF150];
    v55 = Count;
    v56 = Mutable;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
      v16 = CFDictionaryCreateMutable(0, 0, v13, v14);
      if (v16)
      {
        v17 = v16;
        Value = CFDictionaryGetValue(ValueAtIndex, @"collId");
        CFDictionarySetValue(v17, @"assetcollid", Value);
        v19 = CFDictionaryGetValue(ValueAtIndex, @"mediaAssetType");
        if (v19)
        {
          CFDictionarySetValue(v17, @"mediaAssetType", v19);
        }

        v20 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (v20)
        {
          v21 = v20;
          theDict = v17;
          v22 = CFDictionaryGetValue(ValueAtIndex, @"masterAsset");
          if (v22)
          {
            v23 = v22;
            v24 = CFDictionaryCreateMutable(0, 0, v13, v14);
            if (v24)
            {
              v25 = v24;
              v26 = CFDictionaryGetValue(v23, @"fileHash");
              v27 = MSSPCCreateHexStringFromData(v26);
              if (v27)
              {
                v28 = v27;
                CFDictionarySetValue(v25, @"checksum", v27);
                CFRelease(v28);
              }

              v29 = CFDictionaryGetValue(v23, @"metadata");
              if (v29)
              {
                v30 = CFDictionaryGetValue(v29, @"fileSize");
                if (v30)
                {
                  v31 = CFStringCreateWithFormat(alloc, 0, @"%@", v30);
                  CFDictionarySetValue(v25, @"size", v31);
                  CFRelease(v31);
                }
              }

              v32 = CFDictionaryGetValue(v23, @"MMCSReceipt");
              if (v32)
              {
                CFDictionarySetValue(v25, @"receipt", v32);
                CFArrayAppendValue(v21, v25);
              }

              CFRelease(v25);
            }
          }

          v33 = CFDictionaryGetValue(ValueAtIndex, @"derivedAssets");
          if (v33)
          {
            v34 = v33;
            v35 = CFArrayGetCount(v33);
            if (v35 >= 1)
            {
              v36 = v35;
              for (i = 0; i != v36; ++i)
              {
                v38 = CFArrayGetValueAtIndex(v34, i);
                v39 = CFDictionaryCreateMutable(0, 0, v13, v14);
                if (v39)
                {
                  v40 = v39;
                  v41 = v13;
                  v42 = CFDictionaryGetValue(v38, @"fileHash");
                  v43 = MSSPCCreateHexStringFromData(v42);
                  if (v43)
                  {
                    v44 = v43;
                    CFDictionarySetValue(v40, @"checksum", v43);
                    CFRelease(v44);
                  }

                  v45 = CFDictionaryGetValue(v38, @"metadata");
                  if (v45)
                  {
                    v46 = CFDictionaryGetValue(v45, @"fileSize");
                    if (v46)
                    {
                      v47 = CFStringCreateWithFormat(alloc, 0, @"%@", v46);
                      CFDictionarySetValue(v40, @"size", v47);
                      CFRelease(v47);
                    }
                  }

                  v48 = CFDictionaryGetValue(v38, @"MMCSReceipt");
                  if (v48)
                  {
                    CFDictionarySetValue(v40, @"receipt", v48);
                    CFArrayAppendValue(v21, v40);
                  }

                  CFRelease(v40);
                  v13 = v41;
                }
              }
            }
          }

          v17 = theDict;
          CFDictionarySetValue(theDict, @"assets", v21);
          CFRelease(v21);
          v9 = v56;
          v10 = theArray;
          v11 = v55;
        }

        CFArrayAppendValue(v9, v17);
        CFRelease(v17);
      }

      ++v12;
    }

    while (v12 != v11);
  }

  error = 0;
  v49 = CFPropertyListCreateData(alloc, v9, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (v49)
  {
    v50 = v49;
    CFRelease(v9);
    MSSPCStartHTTPTransaction(v52, @"POST", v53, v54, v50, 1, 0);
    CFRelease(v50);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = error;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to serialize upload complete data: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v9);
    MSSPCStartHTTPTransaction(v52, @"POST", v53, v54, 0, 1, 0);
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t _didReceiveServerSideConfigurationVersionUC(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFailAuthenticationUC(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didFinishUC(uint64_t a1, CFDataRef theData, __CFError *a3)
{
  v4 = 0;
  error = a3;
  if (!theData || a3)
  {
    goto LABEL_8;
  }

  if (CFDataGetLength(theData))
  {
    v6 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], theData, 0, 0, &error);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = CFGetTypeID(v6);
    if (v7 == CFDictionaryGetTypeID())
    {
      goto LABEL_8;
    }

    CFRelease(v4);
  }

  v4 = 0;
LABEL_8:
  (*(a1 + 128))(a1, v4, error);
  if (v4)
  {
    CFRelease(v4);
  }
}

void MSSSPCGetMetadataAsync(void *a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  a1[13] = 0;
  a1[23] = 0;
  a1[24] = 0;
  _resetContext(a1);
  a1[6] = _didReceiveData;
  a1[7] = _didFinish_1517;
  a1[8] = _didFailAuthentication_1516;
  a1[10] = _didReceiveRetryAfter_1515;
  a1[9] = _didReceiveServerSideConfigurationVersion_1514;
  error = 0;
  v8 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a4, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (v8)
  {
    v9 = v8;
    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, v8, 0, 1);
    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = error;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to serialize get metadata request data: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }

    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, 0, 0, 1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _resetContext(void *a1)
{
  a1[22] = 0;
  a1[25] = 0;
  v2 = a1[23];
  if (v2)
  {
    CFRelease(v2);
    a1[23] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    CFRelease(v3);
    a1[24] = 0;
  }
}

uint64_t _didReceiveServerSideConfigurationVersion_1514(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didReceiveRetryAfter_1515(void *a1, uint64_t a2)
{
  _resetContext(a1);
  v4 = a1[20];
  if (v4)
  {

    v4(a1, a2);
  }
}

void _didFailAuthentication_1516(void *a1, uint64_t a2)
{
  _resetContext(a1);
  v4 = a1[18];
  if (v4)
  {

    v4(a1, a2);
  }
}

void _didFinish_1517(uint64_t a1, int a2, __CFError *cf)
{
  if (cf)
  {
    v4 = cf;
    CFRetain(cf);
  }

  else if (*(a1 + 200))
  {
    v4 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 4, @"ERROR_GET_CORE_CONNECTION_BLOCK_SHORT");
  }

  else
  {
    v4 = 0;
  }

  _resetContext(a1);
  (*(a1 + 128))(a1, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t _didReceiveData(uint64_t a1, CFDataRef theData, CFErrorRef *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  if (!Length)
  {
LABEL_56:
    result = 1;
    goto LABEL_57;
  }

  v8 = BytePtr;
  v9 = &BytePtr[Length];
  v10 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v11 = *(a1 + 176);
    if (v11 <= 1)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 3)
      {
LABEL_59:
        __assert_rtn("_didReceiveData", "MSSubscribeStreamProtocolCore.m", 189, "0");
      }

      Mutable = *(a1 + 192);
      v21 = *(a1 + 200);
      if (!Mutable)
      {
        Mutable = CFDataCreateMutable(v10, v21);
        *(a1 + 192) = Mutable;
        v21 = *(a1 + 200);
      }

      if (v21 >= v9 - v8)
      {
        v22 = v9 - v8;
      }

      else
      {
        v22 = v21;
      }

      CFDataAppendBytes(Mutable, v8, v22);
      v8 += v22;
      v23 = *(a1 + 200) - v22;
      *(a1 + 200) = v23;
      if (!v23)
      {
        (*(a1 + 136))(a1, *(a1 + 192));
        v24 = *(a1 + 192);
        if (v24)
        {
          CFRelease(v24);
          *(a1 + 192) = 0;
        }

        *(a1 + 176) = 0;
      }

      goto LABEL_51;
    }

    v27 = *v8;
    if (v27 == 13 || v27 == 10)
    {
      goto LABEL_42;
    }

    *(a1 + 176) = 3;
LABEL_51:
    if (v8 == v9)
    {
      goto LABEL_56;
    }
  }

  if (!v11)
  {
    v25 = *v8;
    if (v25 == 13 || v25 == 10)
    {
      goto LABEL_42;
    }

    *(a1 + 176) = 1;
    goto LABEL_51;
  }

  if (v11 != 1)
  {
    goto LABEL_59;
  }

  v12 = *(a1 + 184);
  if (!v12)
  {
    v12 = CFDataCreateMutable(v10, 10);
    *(a1 + 184) = v12;
  }

  v13 = *v8;
  if (v13 == 10 || v13 == 13)
  {
    v14 = CFDataGetBytePtr(v12);
    v15 = CFDataGetLength(v12);
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        v17 = *v14;
        v18 = v17 - 48;
        if ((v17 - 48) >= 0xA)
        {
          if ((v17 - 65) > 5)
          {
            if ((v17 - 97) > 5)
            {
              v19 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 2, @"ERROR_GET_CORE_CONNECTION_INVALID_CHUNK_SIZE");
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v33 = v19;
                _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              goto LABEL_46;
            }

            v18 = v17 - 87;
          }

          else
          {
            v18 = v17 - 55;
          }
        }

        ++v14;
        v16 = v18 | (16 * v16);
        if (!--v15)
        {
          v19 = 0;
          goto LABEL_47;
        }
      }
    }

    v19 = 0;
LABEL_46:
    v16 = 0;
LABEL_47:
    *(a1 + 200) = v16;
    v29 = *(a1 + 184);
    if (v29)
    {
      CFRelease(v29);
      *(a1 + 184) = 0;
    }

    if (v19)
    {
      goto LABEL_54;
    }

    *(a1 + 176) = 2;
    goto LABEL_51;
  }

  if (CFDataGetLength(v12) <= 9)
  {
    CFDataAppendBytes(*(a1 + 184), v8, 1);
LABEL_42:
    ++v8;
    goto LABEL_51;
  }

  v19 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 2, @"ERROR_GET_CORE_CONNECTION_INVALID_CHUNK_SIZE");
  if (!v19)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (a3)
  {
    result = 0;
    *a3 = v19;
  }

  else
  {
    CFRelease(v19);
    result = 0;
  }

LABEL_57:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

double MSSSPCChunkParsingInitialize(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

void _resetChunkContext(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }
}

uint64_t MSSSPCChunkParsingParseNextChunk(void *a1, const __CFData *a2, CFErrorRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Parsing next chunk.", buf, 2u);
  }

  error = 0;
  v6 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], a2, 0, 0, &error);
  v7 = v6;
  v8 = error;
  if (error)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    v10 = CFGetTypeID(v6);
    if (v10 == CFDictionaryGetTypeID())
    {
      _performNextStateAction(a1, v7, a3);
      goto LABEL_14;
    }
  }

  v8 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 5, @"ERROR_GET_CORE_CONNECTION_BAD_CHUNK_TYPE");
  error = v8;
  if (v7)
  {
LABEL_14:
    CFRelease(v7);
    v8 = error;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_15:
    result = 1;
    goto LABEL_17;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v8;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error encountered during chunk parsing: %{public}@", buf, 0xCu);
  }

  _resetChunkContext(a1);
  if (a3)
  {
    result = 0;
    *a3 = error;
  }

  else
  {
    CFRelease(error);
    result = 0;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void _performNextStateAction(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v6 = *(a1 + 80);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *value = 138543362;
          *&value[4] = a2;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "_parseEnd: %{public}@", value, 0xCu);
        }

        *value = 0;
        v7 = @"streamid";
        CFDictionaryGetValueIfPresent(a2, @"streamid", value);
        if (!*value)
        {
          goto LABEL_53;
        }

        v14 = CFGetTypeID(*value);
        if (v14 != CFStringGetTypeID() || !*value || !CFEqual(*value, *(a1 + 72)))
        {
          goto LABEL_53;
        }

        (*(a1 + 24))(a1, *value, *(a1 + 64));
        goto LABEL_52;
      }

      if (v6 != 5)
      {
LABEL_38:
        v13 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 6, @"ERROR_GET_CORE_CONNECTION_BAD_STATE");
        v33 = v13;
        if (!v13)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }

      _resetChunkContext(a1);
      *(a1 + 80) = 0;
      goto LABEL_26;
    }

    cf = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *value = 138543362;
      *&value[4] = a2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "_parseAssets: %{public}@", value, 0xCu);
    }

    cf1 = 0;
    CFDictionaryGetValueIfPresent(a2, @"parttype", &cf1);
    if (cf1 && (CFEqual(cf1, @"asset-metadata") || CFEqual(cf1, @"stream-metadata-end")))
    {
      if (CFEqual(cf1, @"stream-metadata-end"))
      {
        v12 = 4;
        goto LABEL_57;
      }

      *buf = 0;
      v16 = @"streamid";
      CFDictionaryGetValueIfPresent(a2, @"streamid", buf);
      if (!*buf)
      {
        goto LABEL_102;
      }

      v17 = CFGetTypeID(*buf);
      if (v17 != CFStringGetTypeID() || !*buf || !CFEqual(*buf, *(a1 + 72)))
      {
        goto LABEL_102;
      }

      v36 = 0;
      v16 = @"errorcode";
      CFDictionaryGetValueIfPresent(a2, @"errorcode", &v36);
      if (v36)
      {
        v18 = CFGetTypeID(v36);
        if (v18 != CFStringGetTypeID())
        {
          goto LABEL_102;
        }

        v19 = v36;
        if (v36)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *value = 138543618;
            *&value[4] = *buf;
            v41 = 2114;
            v42 = v19;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Stream %{public}@ is not available. Status: %{public}@", value, 0x16u);
            v19 = v36;
          }

          if (CFEqual(v19, @"404"))
          {
            (*(a1 + 32))(a1, *buf);
          }

          else
          {
            (*(a1 + 40))(a1, *buf);
          }

          goto LABEL_103;
        }
      }

      *value = 0;
      CFDictionaryGetValueIfPresent(a2, @"mmcsurl", value);
      if (*value)
      {
        v24 = CFGetTypeID(*value);
        if (v24 == CFStringGetTypeID())
        {
          v25 = *(a1 + 48);
          if (v25)
          {
            if (CFEqual(*value, v25))
            {
              goto LABEL_94;
            }

            v26 = *(a1 + 48);
            if (v26)
            {
              CFRelease(v26);
            }
          }

          *(a1 + 48) = CFRetain(*value);
          v27 = *(a1 + 56);
          if (v27)
          {
            CFRelease(v27);
          }

          *(a1 + 56) = CFURLCreateWithString(*MEMORY[0x277CBECE8], *value, 0);
LABEL_94:
          v35 = 0;
          v16 = @"mmcsheaders";
          CFDictionaryGetValueIfPresent(a2, @"mmcsheaders", &v35);
          if (v35)
          {
            v28 = CFGetTypeID(v35);
            if (v28 == CFDictionaryGetTypeID())
            {
              v34 = 0;
              v16 = @"assets";
              CFDictionaryGetValueIfPresent(a2, @"assets", &v34);
              if (v34)
              {
                v29 = CFGetTypeID(v34);
                if (v29 == CFArrayGetTypeID())
                {
                  v30 = _createAssetCollections(v34, *(a1 + 72), v35, *(a1 + 56), &cf);
                  if (!cf)
                  {
                    (*(a1 + 16))(a1, *buf, v30);
                  }

                  if (v30)
                  {
                    CFRelease(v30);
                  }

LABEL_103:
                  v15 = cf;
                  if (!cf)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

LABEL_102:
          cf = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", v16);
          goto LABEL_103;
        }
      }

      v15 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", @"mmcsurl");
    }

    else
    {
      v15 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 7, @"ERROR_GET_CORE_CONNECTION_BAD_PART_TYPE");
    }

    if (!v15)
    {
      goto LABEL_105;
    }

LABEL_104:
    v33 = v15;
    goto LABEL_105;
  }

  if (!v6)
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *value = 138543362;
      *&value[4] = a2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "_parseAny: %{public}@", value, 0xCu);
    }

    *value = 0;
    CFDictionaryGetValueIfPresent(a2, @"parttype", value);
    if (!*value)
    {
      goto LABEL_58;
    }

    if (CFEqual(*value, @"stream-metadata-begin"))
    {
      v12 = 2;
    }

    else
    {
      if (!CFEqual(*value, @"sharing-status"))
      {
LABEL_58:
        v13 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 7, @"ERROR_GET_CORE_CONNECTION_BAD_PART_TYPE");
        goto LABEL_59;
      }

      v12 = 1;
    }

LABEL_57:
    *(a1 + 80) = v12;
    _performNextStateAction(a1, a2, &v33);
    goto LABEL_105;
  }

  if (v6 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *value = 138543362;
      *&value[4] = a2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "_parseSharingStatus: %{public}@", value, 0xCu);
    }

    *value = 0;
    CFDictionaryGetValueIfPresent(a2, @"parttype", value);
    if (!*value || !CFEqual(*value, @"sharing-status"))
    {
      goto LABEL_58;
    }

LABEL_52:
    *(a1 + 80) = 0;
    goto LABEL_105;
  }

  if (v6 != 2)
  {
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *value = 138543362;
    *&value[4] = a2;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "_parseBegin: %{public}@", value, 0xCu);
  }

  *value = 0;
  CFDictionaryGetValueIfPresent(a2, @"parttype", value);
  if (!*value || !CFEqual(*value, @"stream-metadata-begin"))
  {
    goto LABEL_58;
  }

  cf = 0;
  v7 = @"ctag";
  CFDictionaryGetValueIfPresent(a2, @"ctag", &cf);
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFStringGetTypeID())
    {
      goto LABEL_53;
    }

    v9 = cf;
    if (cf)
    {
      if (*(a1 + 64))
      {
        CFRelease(*(a1 + 64));
        v9 = cf;
      }

      *(a1 + 64) = CFRetain(v9);
    }
  }

  cf1 = 0;
  v7 = @"reset";
  CFDictionaryGetValueIfPresent(a2, @"reset", &cf1);
  if (!cf1)
  {
    goto LABEL_75;
  }

  v10 = CFGetTypeID(cf1);
  if (v10 == CFStringGetTypeID())
  {
    if (cf1 && CFEqual(cf1, @"1"))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Subscription stream was reset by the server.", buf, 2u);
      }

      v11 = 1;
      goto LABEL_76;
    }

LABEL_75:
    v11 = 0;
LABEL_76:
    *buf = 0;
    CFDictionaryGetValueIfPresent(a2, @"streamid", buf);
    if (*buf)
    {
      v20 = CFGetTypeID(*buf);
      if (v20 == CFStringGetTypeID())
      {
        v21 = *(a1 + 72);
        if (v21)
        {
          CFRelease(v21);
        }

        *(a1 + 72) = CFRetain(*buf);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (CFDictionaryContainsKey(a2, @"devices"))
        {
          v23 = CFDictionaryGetValue(a2, @"devices");
          CFDictionarySetValue(Mutable, @"devices", v23);
        }

        (*(a1 + 8))(a1, *buf, v11, Mutable);
        *(a1 + 80) = 3;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

LABEL_105:
        v13 = v33;
        if (!v33)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }
    }

    v32 = @"streamid";
    goto LABEL_54;
  }

LABEL_53:
  v32 = v7;
LABEL_54:
  v13 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", v32);
LABEL_59:
  if (!v13)
  {
    goto LABEL_105;
  }

  v33 = v13;
LABEL_106:
  if (a3)
  {
    *a3 = v13;
  }

  else
  {
    CFRelease(v13);
  }

LABEL_109:
  v31 = *MEMORY[0x277D85DE8];
}

__CFArray *_createAssetCollections(const __CFArray *a1, const void *a2, const __CFDictionary *a3, const void *a4, CFTypeRef *a5)
{
  v8 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v45 = 0;
  Count = CFArrayGetCount(a1);
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (Count < 1)
  {
    goto LABEL_61;
  }

  v36 = a5;
  v10 = 0;
  v11 = @"filename";
  v37 = v8;
  v40 = a2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDictionaryGetTypeID())
    {
      v25 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", @"assets");
      v45 = v25;
      if (!v25)
      {
        goto LABEL_50;
      }

      v24 = v25;
      v14 = 0;
      goto LABEL_46;
    }

    v14 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (CFDictionaryContainsKey(ValueAtIndex, v11))
    {
      v15 = CFDictionaryGetValue(ValueAtIndex, v11);
      CFDictionarySetValue(v14, @"fileName", v15);
    }

    if (CFDictionaryContainsKey(ValueAtIndex, @"assetcollid"))
    {
      v16 = CFDictionaryGetValue(ValueAtIndex, @"assetcollid");
      CFDictionarySetValue(v14, @"collId", v16);
    }

    v17 = v11;
    if (CFDictionaryContainsKey(ValueAtIndex, @"server-uploadeddate"))
    {
      v18 = CFDictionaryGetValue(ValueAtIndex, @"server-uploadeddate");
      CFDictionarySetValue(v14, @"serverUploadedDate", v18);
    }

    if (CFDictionaryContainsKey(ValueAtIndex, @"delete"))
    {
      v19 = CFDictionaryGetValue(ValueAtIndex, @"delete");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      NumberFromString = CFNumberFormatterCreateNumberFromString(allocator, MSPCUNumberFormatterWithSystemLocale_nf, v19, 0, 0);
      if (NumberFromString)
      {
        v21 = NumberFromString;
        CFDictionarySetValue(v14, @"deleted", NumberFromString);
        CFRelease(v21);
      }
    }

    v22 = _createAsset(ValueAtIndex, a3, a4, a2, &v45);
    v23 = v22;
    v24 = v45;
    if (v45)
    {
      if (v22)
      {
        CFRelease(v22);
LABEL_18:
        v11 = v17;
        goto LABEL_45;
      }

      v11 = v17;
LABEL_46:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v24;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting asset collection because of error: %{public}@", buf, 0xCu);
        v24 = v45;
      }

      CFRelease(v24);
      v45 = 0;
      if (v14)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    CFDictionaryAddValue(v14, @"masterAsset", v22);
    value = 0;
    CFDictionaryGetValueIfPresent(v23, @"fileHash", &value);
    if (value)
    {
      CFDictionarySetValue(v23, @"masterAssetHash", value);
    }

    CFRelease(v23);
    cf = 0;
    CFDictionaryGetValueIfPresent(ValueAtIndex, @"derivatives", &cf);
    v11 = v17;
    if (cf)
    {
      v26 = CFGetTypeID(cf);
      if (v26 == CFArrayGetTypeID())
      {
        if (cf)
        {
          v27 = CFArrayGetCount(cf);
          theArray = CFArrayCreateMutable(allocator, v27, MEMORY[0x277CBF128]);
          if (v27 < 1)
          {
LABEL_54:
            if (CFArrayGetCount(theArray))
            {
              CFDictionarySetValue(v14, @"derivedAssets", theArray);
            }

            CFRelease(theArray);
            a2 = v40;
            v8 = v37;
            goto LABEL_18;
          }

          v28 = 0;
          while (1)
          {
            v29 = CFArrayGetValueAtIndex(cf, v28);
            v30 = CFGetTypeID(v29);
            if (v30 == CFDictionaryGetTypeID())
            {
              v31 = _createAsset(v29, a3, a4, v40, &v45);
              v32 = v31;
              v33 = v45;
              if (v45)
              {
                if (!v31)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                if (value)
                {
                  CFDictionarySetValue(v31, @"masterAssetHash", value);
                }

                CFArrayAppendValue(theArray, v32);
              }

              CFRelease(v32);
              v33 = v45;
              if (v45)
              {
LABEL_38:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v47 = v33;
                  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting derived asset because of error: %{public}@", buf, 0xCu);
                  v33 = v45;
                }

                CFRelease(v33);
                v45 = 0;
              }
            }

            else
            {
              v33 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", @"derivatives");
              v45 = v33;
              if (v33)
              {
                goto LABEL_38;
              }
            }

            if (v27 == ++v28)
            {
              goto LABEL_54;
            }
          }
        }
      }

      else
      {
        v45 = MSPCUCreateError(@"MSSubscribeStreamsProtocolCoreErrorDomain", 8, @"ERROR_GET_CORE_CONNECTION_BAD_FIELD_P_FIELD", @"derivatives");
      }
    }

LABEL_45:
    v24 = v45;
    if (v45)
    {
      goto LABEL_46;
    }

    if (v14)
    {
      CFArrayAppendValue(Mutable, v14);
LABEL_49:
      CFRelease(v14);
    }

LABEL_50:
    ++v10;
  }

  while (v10 != Count);
  if (v45)
  {
    CFRelease(Mutable);
    if (v36)
    {
      Mutable = 0;
      *v36 = v45;
    }

    else
    {
      CFRelease(v45);
      Mutable = 0;
    }
  }

LABEL_61:
  v34 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFDictionary *_createAsset(const __CFDictionary *a1, const __CFDictionary *a2, const void *a3, const void *a4, void *a5)
{
  v57 = 0;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = CFDictionaryCreateMutable(v9, 0, v10, v11);
  if (CFDictionaryContainsKey(a1, @"width"))
  {
    v14 = CFDictionaryGetValue(a1, @"width");
    if (MSPCUNumberFormatterWithSystemLocale_once != -1)
    {
      dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
    }

    NumberFromString = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v14, 0, 0);
    if (NumberFromString)
    {
      v16 = NumberFromString;
      CFDictionarySetValue(v13, @"pixelWidth", NumberFromString);
      CFRelease(v16);
    }
  }

  if (CFDictionaryContainsKey(a1, @"height"))
  {
    v17 = CFDictionaryGetValue(a1, @"height");
    if (MSPCUNumberFormatterWithSystemLocale_once != -1)
    {
      dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
    }

    v18 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v17, 0, 0);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v13, @"pixelHeight", v18);
      CFRelease(v19);
    }
  }

  if (CFDictionaryContainsKey(a1, @"deviceid"))
  {
    v20 = CFDictionaryGetValue(a1, @"deviceid");
    CFDictionarySetValue(v13, @"deviceID", v20);
  }

  if (CFDictionaryContainsKey(a1, @"bytecount"))
  {
    v21 = CFDictionaryGetValue(a1, @"bytecount");
    if (MSPCUNumberFormatterWithSystemLocale_once != -1)
    {
      dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
    }

    v22 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v21, 0, 0);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(v13, @"fileSize", v22);
      CFRelease(v23);
    }
  }

  if (!CFDictionaryContainsKey(a1, @"sha1"))
  {
LABEL_24:
    if (CFDictionaryContainsKey(a1, @"dateContentCreated"))
    {
      v25 = CFDictionaryGetValue(a1, @"dateContentCreated");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      v26 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v25, 0, 0);
      if (v26)
      {
        v27 = v26;
        value = 0;
        CFNumberGetValue(v26, kCFNumberDoubleType, &value);
        CFRelease(v27);
        v28 = CFDateCreate(0, *&value);
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(v13, @"dateContentCreated", v28);
          CFRelease(v29);
        }
      }
    }

    if (CFDictionaryContainsKey(a1, @"dateContentModified"))
    {
      v30 = CFDictionaryGetValue(a1, @"dateContentModified");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      v31 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v30, 0, 0);
      if (v31)
      {
        v32 = v31;
        value = 0;
        CFNumberGetValue(v31, kCFNumberDoubleType, &value);
        CFRelease(v32);
        v33 = CFDateCreate(0, *&value);
        if (v33)
        {
          v34 = v33;
          CFDictionarySetValue(v13, @"dateContentModified", v33);
          CFRelease(v34);
        }
      }
    }

    if (CFDictionaryContainsKey(a1, @"sourceLibraryID"))
    {
      v35 = CFDictionaryGetValue(a1, @"sourceLibraryID");
      CFDictionarySetValue(v13, @"sourceLibraryID", v35);
    }

    if (CFDictionaryContainsKey(a1, @"sourceItemID"))
    {
      v36 = CFDictionaryGetValue(a1, @"sourceItemID");
      CFDictionarySetValue(v13, @"sourceItemID", v36);
    }

    if (CFDictionaryContainsKey(a1, @"sourceContainerType"))
    {
      v37 = CFDictionaryGetValue(a1, @"sourceContainerType");
      CFDictionarySetValue(v13, @"sourceContainerType", v37);
    }

    if (CFDictionaryContainsKey(a1, @"sourceContainerID"))
    {
      v38 = CFDictionaryGetValue(a1, @"sourceContainerID");
      CFDictionarySetValue(v13, @"sourceContainerID", v38);
    }

    if (CFDictionaryContainsKey(a1, @"sourceContainerDisplayName"))
    {
      v39 = CFDictionaryGetValue(a1, @"sourceContainerDisplayName");
      CFDictionarySetValue(v13, @"sourceContainerDisplayName", v39);
    }

    if (CFDictionaryContainsKey(a1, @"deviceDisplayName"))
    {
      v40 = CFDictionaryGetValue(a1, @"deviceDisplayName");
      CFDictionarySetValue(v13, @"deviceDisplayName", v40);
    }

    if (CFDictionaryContainsKey(a1, @"rasterToDisplayRotationAngle"))
    {
      v41 = CFDictionaryGetValue(a1, @"rasterToDisplayRotationAngle");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      v42 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v41, 0, 0);
      if (v42)
      {
        v43 = v42;
        CFDictionarySetValue(v13, @"rasterToDisplayRotationAngle", v42);
        CFRelease(v43);
      }
    }

    if (CFDictionaryContainsKey(a1, @"sourceiCloudPhotoLibraryEnabled"))
    {
      v44 = CFDictionaryGetValue(a1, @"sourceiCloudPhotoLibraryEnabled");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      v45 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v44, 0, 0);
      if (v45)
      {
        v46 = v45;
        CFDictionarySetValue(v13, @"sourceiCloudPhotoLibraryEnabled", v45);
        CFRelease(v46);
      }
    }

    CFDictionarySetValue(v13, @"streamID", a4);
    CFDictionarySetValue(Mutable, @"metadata", v13);
    if (v13)
    {
      CFRelease(v13);
    }

    if (CFDictionaryContainsKey(a1, @"size"))
    {
      v47 = CFDictionaryGetValue(a1, @"size");
      if (MSPCUNumberFormatterWithSystemLocale_once != -1)
      {
        dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
      }

      v48 = CFNumberFormatterCreateNumberFromString(v9, MSPCUNumberFormatterWithSystemLocale_nf, v47, 0, 0);
      if (v48)
      {
        v49 = v48;
        CFDictionarySetValue(Mutable, @"protocolFileSize", v48);
        CFRelease(v49);
      }
    }

    if (CFDictionaryContainsKey(a1, @"type"))
    {
      v50 = CFDictionaryGetValue(a1, @"type");
      v51 = CFGetTypeID(v50);
      if (v51 == CFStringGetTypeID())
      {
        CFDictionarySetValue(Mutable, @"type", v50);
      }
    }

    value = 0;
    CFDictionaryGetValueIfPresent(a1, @"checksum", &value);
    if (value)
    {
      cf = 0;
      MSPCUCreateDataFromHexString(value, @"checksum", &cf, &v57, _createBadFieldError);
      if (v57)
      {
        goto LABEL_74;
      }

      CFDictionarySetValue(Mutable, @"fileHash", cf);
      CFRelease(cf);
      v54 = 0;
      CFDictionaryGetValueIfPresent(a2, value, &v54);
      if (v54)
      {
        CFDictionarySetValue(Mutable, @"MMCSAccessHeader", v54);
      }
    }

    CFDictionaryGetValueIfPresent(a1, @"sha1", 0);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"MMCSURL", a3);
    }

LABEL_74:
    if (!v57)
    {
      return Mutable;
    }

    goto LABEL_75;
  }

  v24 = CFDictionaryGetValue(a1, @"sha1");
  value = 0;
  MSPCUCreateDataFromHexString(v24, @"sha1", &value, &v57, _createBadFieldError);
  if (!v57)
  {
    if (value)
    {
      CFDictionarySetValue(v13, @"SHA1", value);
      CFRelease(value);
    }

    goto LABEL_24;
  }

  if (v13)
  {
    CFRelease(v13);
    goto LABEL_74;
  }

LABEL_75:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  if (a5)
  {
    *a5 = v57;
  }

  return Mutable;
}

CFStringRef MSCFCopyLocalizedString(CFStringRef key)
{
  v2 = __bundle_bundle;
  if (!__bundle_bundle)
  {
    __bundle_bundle = CFBundleGetBundleWithIdentifier(@"com.apple.CoreMediaStream");
    CFRetain(__bundle_bundle);
    v2 = __bundle_bundle;
  }

  return CFBundleCopyLocalizedString(v2, key, key, @"CoreMediaStream");
}

CFStringRef MSCFCreateLocalizedFormat(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MSCFCopyLocalizedString(a1);
  v10 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, v9, &a9);
  CFRelease(v9);
  return v10;
}

uint64_t MPSStateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_76:
          v41 = 24;
LABEL_77:
          *(a1 + v41) = v20;
          goto LABEL_78;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v45 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v45 & 0x7F) << v21;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_67:
        v42 = 16;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            v48 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v14;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_63:
          v41 = 28;
          goto LABEL_77;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v46 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v46 & 0x7F) << v29;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v31;
        }

LABEL_71:
        v42 = 8;
      }

      *(a1 + v42) = v27;
LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MSSPCStartHTTPTransaction(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const __CFData *a5, int a6, int a7)
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CBECE8];
  *(a1 + 40);
  Mutable = CFURLRequestCreateMutable();
  if (a3)
  {
    if (!a2)
    {
      __assert_rtn("MSSPCStartHTTPTransaction", "MSStreamsProtocolCore.m", 215, "method");
    }

    v77 = a7;
    v73 = a3;
    v79 = v14;
    v80 = a4;
    CFURLRequestSetHTTPRequestMethod();
    v16 = *(a1 + 8);
    v76 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    if (!v18)
    {
      CFURLRequestSetHTTPHeaderFieldValue();
      goto LABEL_20;
    }

    v74 = *(a1 + 8);
    v19 = a5;
    v20 = a6;
    Count = CFDictionaryGetCount(v18);
    v22 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v23 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v24 = v23;
    if (v22 && v23)
    {
      CFDictionaryGetKeysAndValues(v18, v22, v23);
      if (Count >= 1)
      {
        v25 = v22;
        v26 = v24;
        do
        {
          v27 = *v25++;
          v28 = *v26++;
          CFURLRequestSetHTTPHeaderFieldValue();
          --Count;
        }

        while (Count);
      }
    }

    else if (!v22)
    {
      goto LABEL_18;
    }

    free(v22);
LABEL_18:
    a6 = v20;
    a5 = v19;
    v16 = v74;
    if (v24)
    {
      free(v24);
    }

LABEL_20:
    v31 = v80;
    if (CFDictionaryContainsKey(v17, @"pushToken"))
    {
      Value = CFDictionaryGetValue(v17, @"pushToken");
      v33 = MSSPCCreateHexStringFromData(Value);
      if (v33)
      {
        v34 = v33;
        CFURLRequestSetHTTPHeaderFieldValue();
        CFRelease(v34);
      }
    }

    if (CFDictionaryContainsKey(v17, @"UDID"))
    {
      v35 = CFDictionaryGetValue(v17, @"UDID");
      SHA1StringOfUDID = createSHA1StringOfUDID(v35);
      if (SHA1StringOfUDID)
      {
        v37 = SHA1StringOfUDID;
        CFURLRequestSetHTTPHeaderFieldValue();
        CFRelease(v37);
      }
    }

    v38 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v39 = [v38 integerForKey:@"AKAddTestApplicationHeader"];

    if (v39 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *userInfoValues = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Setting X-APPLE-TEST-APPLICATION header to true", userInfoValues, 2u);
      }

      CFURLRequestSetHTTPHeaderFieldValue();
    }

    if (CFDictionaryContainsKey(v17, @"clientInfo"))
    {
      CFDictionaryGetValue(v17, @"clientInfo");
      CFURLRequestSetHTTPHeaderFieldValue();
    }

    if (!v76)
    {
      goto LABEL_48;
    }

    v40 = CFStringCreateWithFormat(v79, 0, @"%@:%@", v16, v76);
    if (!v40)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *userInfoValues = 0;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create authentication string.", userInfoValues, 2u);
      }

      goto LABEL_48;
    }

    v41 = v40;
    ExternalRepresentation = CFStringCreateExternalRepresentation(v79, v40, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      v43 = ExternalRepresentation;
      v44 = MSPCUCreateBase64StringFromData(ExternalRepresentation);
      CFRelease(v43);
      if (v44)
      {
        v45 = CFStringCreateWithFormat(v79, 0, @"X-MobileMe-AuthToken %@", v44);
        CFRelease(v44);
        if (v45)
        {
          CFURLRequestSetHTTPHeaderFieldValue();
          CFRelease(v45);
LABEL_47:
          CFRelease(v41);
LABEL_48:
          if (v77)
          {
            CFURLRequestAppendHTTPHeaderFieldValue();
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            if (a5)
            {
              BytePtr = CFDataGetBytePtr(a5);
              Length = CFDataGetLength(a5);
              v50 = CFStringCreateWithBytes(v79, BytePtr, Length, 0x8000100u, 0);
            }

            else
            {
              v50 = 0;
            }

            v51 = CFURLRequestCopyAllHTTPHeaderFields();
            if (v51)
            {
              v52 = v51;
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v51);
              CFRelease(v52);
              if (MutableCopy)
              {
                v54 = CFDictionaryGetCount(MutableCopy);
                v55 = malloc_type_malloc(8 * v54, 0x80040B8603338uLL);
                if (v55)
                {
                  v72 = v50;
                  v75 = a5;
                  v78 = v55;
                  CFDictionaryGetKeysAndValues(MutableCopy, v55, 0);
                  if (v54 >= 1)
                  {
                    v56 = v78;
                    do
                    {
                      v57 = *v56;
                      if (CFStringCompare(*v56, @"x-apple-mme-streams-client-token", 1uLL) == kCFCompareEqualTo || CFStringCompare(v57, @"x-apple-mme-streams-client-udid", 1uLL) == kCFCompareEqualTo || CFStringCompare(v57, @"authorization", 1uLL) == kCFCompareEqualTo)
                      {
                        CFDictionarySetValue(MutableCopy, v57, @"[present]");
                      }

                      ++v56;
                      --v54;
                    }

                    while (v54);
                  }

                  v50 = v72;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                  {
                    *userInfoValues = 138543874;
                    *&userInfoValues[4] = v73;
                    v82 = 2112;
                    v83 = MutableCopy;
                    v84 = 2112;
                    v85 = v72;
                    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "About to send to URL: %{public}@\nHeaders: %@\n%@", userInfoValues, 0x20u);
                  }

                  free(v78);
                  v31 = v80;
                  a5 = v75;
                }

                CFRelease(MutableCopy);
              }
            }

            if (v50)
            {
              CFRelease(v50);
            }
          }

          if (a5)
          {
            CFURLRequestSetHTTPRequestBody();
          }

          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          if (a6)
          {
            *(a1 + 104) = CFDataCreateMutable(v79, 0);
          }

          v58 = malloc_type_calloc(1uLL, 0x68uLL, 0x10C0040EDE68F84uLL);
          *(a1 + 88) = v58;
          *v58 = 1;
          v58[1] = a1;
          v58[10] = _didFailCallback;
          v58[9] = _didFinishLoadingCallback;
          v58[6] = _didReceiveResponseCallback;
          v58[7] = _didReceiveDataCallback;
          v59 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v59)
          {
            __assert_rtn("MSSPCStartHTTPTransaction", "MSStreamsProtocolCore.m", 285, "properties");
          }

          v60 = v59;
          CFDictionarySetValue(v59, *MEMORY[0x277CBAEE8], *MEMORY[0x277CBED28]);
          if (v31)
          {
            v61 = CFDictionaryGetCount(v31);
            if (v61 >= 1)
            {
              v62 = v61;
              v63 = 8 * v61;
              v64 = malloc_type_malloc(8 * v61, 0xC0040B8AA526DuLL);
              v65 = malloc_type_malloc(v63, 0xC0040B8AA526DuLL);
              CFDictionaryGetKeysAndValues(v31, v64, v65);
              for (i = 0; i != v62; ++i)
              {
                CFDictionarySetValue(v60, v64[i], v65[i]);
              }

              free(v64);
              free(v65);
            }
          }

          v67 = *(a1 + 88);
          *(a1 + 96) = CFURLConnectionCreateWithProperties();
          CFRelease(v60);
          CFRelease(Mutable);
          v68 = *(a1 + 96);
          CFRunLoopGetCurrent();
          v69 = *MEMORY[0x277CBF058];
          CFURLConnectionScheduleWithRunLoop();
          v70 = *(a1 + 96);
          CFURLConnectionStart();
          goto LABEL_81;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *userInfoValues = 0;
        v46 = MEMORY[0x277D86220];
        v47 = "Could not format auth string.";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *userInfoValues = 0;
        v46 = MEMORY[0x277D86220];
        v47 = "Could not base64-encode auth string.";
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *userInfoValues = 0;
      v46 = MEMORY[0x277D86220];
      v47 = "Could not create data representation of auth string.";
    }

    _os_log_error_impl(&dword_245B99000, v46, OS_LOG_TYPE_ERROR, v47, userInfoValues, 2u);
    goto LABEL_47;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *userInfoValues = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: No URL provided for HTTP transaction.", userInfoValues, 2u);
  }

  if (*(a1 + 56))
  {
    v29 = MSCFCopyLocalizedString(@"ERROR_CONNECTION_CORE_NO_URL_ERROR");
    *userInfoValues = v29;
    userInfoKeys[0] = *MEMORY[0x277CBEE58];
    v30 = CFErrorCreateWithUserInfoKeysAndValues(0, @"streamsProtocolCoreErrorDomain", 4, userInfoKeys, userInfoValues, 1);
    (*(a1 + 56))(a1, 0, v30);
    CFRelease(v29);
    CFRelease(v30);
  }

  CFRelease(Mutable);
LABEL_81:
  v71 = *MEMORY[0x277D85DE8];
}

CFStringRef MSSPCCreateHexStringFromData(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v4 = malloc_type_malloc((2 * Length) | 1, 0x100004077774924uLL);
  if (!v4)
  {
    __assert_rtn("MSSPCCreateHexStringFromData", "MSStreamsProtocolCore.m", 596, "hex");
  }

  v5 = v4;
  v6 = 2 * Length;
  v7 = v4;
  if (Length >= 1)
  {
    v8 = v4;
    do
    {
      v9 = *BytePtr++;
      *v8 = a0123456789abcd[v9 >> 4];
      v7 = v8 + 2;
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --Length;
    }

    while (Length);
  }

  *v7 = 0;
  v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v4, v6, 0x600u, 0);
  free(v5);
  return v10;
}

CFStringRef createSHA1StringOfUDID(const __CFString *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buffer = 0;
      _os_log_fault_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unable to create SHA1 string of NULL UDID", buffer, 2u);
    }

    goto LABEL_7;
  }

  memset(&v8, 0, sizeof(v8));
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, &createSHA1StringOfUDID__prepend, 3u);
  if (!CFStringGetCString(a1, buffer, 120, 0x600u) || (v2 = strlen(buffer), CC_SHA1_Update(&v8, buffer, v2), CC_SHA1_Final(md, &v8), (v3 = CFDataCreateWithBytesNoCopy(0, md, 20, *MEMORY[0x277CBED00])) == 0))
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = MSSPCCreateHexStringFromData(v3);
  CFRelease(v4);
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void _didReceiveDataCallback(int a1, CFDataRef theData, uint64_t a3, void *a4)
{
  v6 = a4[13];
  if (v6)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    CFDataAppendBytes(v6, BytePtr, Length);
  }

  v11 = 0;
  v9 = a4[6];
  if (v9)
  {
    if (!v9(a4, theData, &v11))
    {
      a4[15] = v11;
      v10 = a4[12];
      CFURLConnectionCancel();
      _scheduleTimer(a4);
    }
  }
}

void _scheduleTimer(void *a1)
{
  v6.version = 0;
  memset(&v6.retain, 0, 24);
  v6.info = a1;
  v1 = *MEMORY[0x277CBECE8];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFRunLoopTimerCreate(v1, Current, 0.0, 0, 0, __didFinish, &v6);
  if (!v3)
  {
    __assert_rtn("_scheduleTimer", "MSStreamsProtocolCore.m", 173, "timer");
  }

  v4 = v3;
  v5 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v5, v4, *MEMORY[0x277CBF048]);
  CFRelease(v4);
}

void __didFinish(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 120);
  if (v3)
  {
    CFRetain(*(a2 + 120));
  }

  v4 = *(a2 + 104);
  if (v4)
  {
    CFRetain(*(a2 + 104));
  }

  __resetContext(a2);
  if (v3 && (Domain = CFErrorGetDomain(v3), Code = CFErrorGetCode(v3), CFEqual(Domain, @"streamsProtocolCoreErrorDomain")) && Code == 2)
  {
    v7 = *(a2 + 64);
    if (v7)
    {
      v7(a2, v3);
    }
  }

  else
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      v8(a2, v4, v3);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __resetContext(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 120) = 0;
  }

  free(*(a1 + 88));
  *(a1 + 88) = 0;
}

void _didReceiveResponseCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  HTTPResponse = CFURLResponseGetHTTPResponse();
  *(a3 + 112) = HTTPResponse;
  CFRetain(HTTPResponse);
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(*(a3 + 112));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v29 = ResponseStatusCode;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Received response status: %ld", buf, 0xCu);
  }

  v6 = CFHTTPMessageCopyAllHeaderFields(*(a3 + 112));
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v29 = v7;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Headers: %@", buf, 0xCu);
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(v7, @"x-apple-mme-streams-config-version", &value))
    {
      if (value)
      {
        v8 = CFGetTypeID(value);
        if (v8 == CFStringGetTypeID())
        {
          v9 = *(a3 + 72);
          if (v9)
          {
            v9(a3, value);
          }
        }
      }
    }

    cf = 0;
    if (!CFDictionaryGetValueIfPresent(v7, @"Retry-After", &cf))
    {
      goto LABEL_33;
    }

    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == CFStringGetTypeID())
      {
        v11 = cf;
        if (!_nonNumericNonSpaceCharacterSet_charSet)
        {
          v12 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789 ");
          if (v12)
          {
            v13 = v12;
            _nonNumericNonSpaceCharacterSet_charSet = CFCharacterSetCreateInvertedSet(0, v12);
            CFRelease(v13);
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create character set for date matching.", buf, 2u);
          }
        }

        v14 = _nonNumericNonSpaceCharacterSet_charSet;
        v31.length = CFStringGetLength(cf);
        v31.location = 0;
        if (CFStringFindCharacterFromSet(v11, v14, v31, 0, 0))
        {
          if (_retryAfterDateFormatter_once != -1)
          {
            dispatch_once_f(&_retryAfterDateFormatter_once, &_retryAfterDateFormatter_df, _dateFormatter);
          }

          DateFromString = CFDateFormatterCreateDateFromString(0, _retryAfterDateFormatter_df, cf, 0);
          if (DateFromString)
          {
            v16 = DateFromString;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              *v29 = cf;
              *&v29[8] = 2114;
              *&v29[10] = v16;
              v17 = MEMORY[0x277D86220];
              v18 = "Found a retry-after header with an date string: %{public}@. Date: %{public}@";
              v19 = 22;
LABEL_36:
              _os_log_debug_impl(&dword_245B99000, v17, OS_LOG_TYPE_DEBUG, v18, buf, v19);
              goto LABEL_28;
            }

            goto LABEL_28;
          }
        }

        IntValue = CFStringGetIntValue(cf);
        if (IntValue >= 1)
        {
          v21 = IntValue;
          Current = CFAbsoluteTimeGetCurrent();
          v23 = CFDateCreate(0, Current + v21);
          if (v23)
          {
            v16 = v23;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              *v29 = v21;
              *&v29[4] = 2114;
              *&v29[6] = v16;
              v17 = MEMORY[0x277D86220];
              v18 = "Found a retry-after header with a relative interval of %d seconds. Date: %{public}@";
              v19 = 18;
              goto LABEL_36;
            }

LABEL_28:
            v24 = *(a3 + 80);
            if (v24)
            {
              v24(a3, v16);
            }

            CFRelease(v16);
LABEL_33:
            CFRelease(v7);
            goto LABEL_34;
          }
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v29 = cf;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Found a retry-after header that could not be parsed: %{public}@", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_34:
  v25 = *MEMORY[0x277D85DE8];
}

void _dateFormatter(__CFDateFormatter **a1)
{
  v2 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (v2)
  {
    v3 = v2;
    CFDateFormatterSetProperty(v2, *MEMORY[0x277CBED88], *MEMORY[0x277CBED28]);
    *a1 = v3;
  }
}

void _didFinishLoadingCallback(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(*(a2 + 112));
  valuePtr = ResponseStatusCode;
  v4 = *(a2 + 104);
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = *MEMORY[0x277CBECE8];
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(*(a2 + 104));
    v8 = CFStringCreateWithBytes(v5, BytePtr, Length, 0x8000100u, 0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Received response: %@", buf, 0xCu);
    }

    CFRelease(v8);
  }

  if (ResponseStatusCode <= 400)
  {
    if (ResponseStatusCode == 200 || ResponseStatusCode == 207)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v33 = ResponseStatusCode;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Transaction completed. Code: %ld.", buf, 0xCu);
      }

      goto LABEL_25;
    }

    if (ResponseStatusCode != 330)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  switch(ResponseStatusCode)
  {
    case 401:
LABEL_16:
      v13 = MSCFCopyLocalizedString(@"ERROR_CONNECTION_CORE_AUTH_FAILED_ERROR");
      userInfoKeys = *MEMORY[0x277CBEE58];
      userInfoValues = v13;
      v14 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x277CBECE8], @"streamsProtocolCoreErrorDomain", 2, &userInfoKeys, &userInfoValues, 1);
      CFRelease(v13);
      *(a2 + 120) = v14;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 134217984;
      v33 = ResponseStatusCode;
      v11 = MEMORY[0x277D86220];
      v12 = "Authentication failed. Code: %ld.";
      goto LABEL_24;
    case 403:
      v26 = MSCFCopyLocalizedString(@"ERROR_CONNECTION_CORE_FORBIDDEN_ERROR");
      userInfoKeys = *MEMORY[0x277CBEE58];
      userInfoValues = v26;
      v27 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x277CBECE8], @"streamsProtocolCoreErrorDomain", 3, &userInfoKeys, &userInfoValues, 1);
      CFRelease(v26);
      *(a2 + 120) = v27;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v33 = 403;
        v11 = MEMORY[0x277D86220];
        v12 = "Transaction forbidden. Code: %ld.";
        goto LABEL_24;
      }

      goto LABEL_25;
    case 500:
      v9 = MSCFCopyLocalizedString(@"ERROR_CONNECTION_CORE_FAILED_SERVER_ERROR");
      userInfoKeys = *MEMORY[0x277CBEE58];
      userInfoValues = v9;
      v10 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x277CBECE8], @"streamsProtocolCoreErrorDomain", 0, &userInfoKeys, &userInfoValues, 1);
      CFRelease(v9);
      *(a2 + 120) = v10;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 134217984;
      v33 = 500;
      v11 = MEMORY[0x277D86220];
      v12 = "Transaction failed. A server error has been reported. Code: %ld.";
LABEL_24:
      _os_log_error_impl(&dword_245B99000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
      goto LABEL_25;
  }

LABEL_20:
  v15 = *MEMORY[0x277CBECE8];
  v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
  v24 = MSCFCreateLocalizedFormat(@"ERROR_CONNECTION_CORE_FATAL_P_RESPONSE", v17, v18, v19, v20, v21, v22, v23, v16);
  CFRelease(v16);
  userInfoValues = v24;
  userInfoKeys = *MEMORY[0x277CBEE58];
  v25 = CFErrorCreateWithUserInfoKeysAndValues(v15, @"streamsProtocolCoreErrorDomain", 1, &userInfoKeys, &userInfoValues, 1);
  CFRelease(v24);
  *(a2 + 120) = v25;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = v25;
    v11 = MEMORY[0x277D86220];
    v12 = "Transaction failed. Error: %{public}@";
    goto LABEL_24;
  }

LABEL_25:
  _scheduleTimer(a2);
  v28 = *MEMORY[0x277D85DE8];
}

void _didFailCallback(uint64_t a1, const void *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection failed. Error: %{public}@", &v6, 0xCu);
  }

  a3[15] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  _scheduleTimer(a3);
  v5 = *MEMORY[0x277D85DE8];
}

void MSSPCCancelHTTPTransaction(uint64_t a1)
{
  if (*(a1 + 96))
  {
    CFRunLoopGetCurrent();
    v2 = *MEMORY[0x277CBF058];
    CFURLConnectionUnscheduleFromRunLoop();
    v3 = *(a1 + 96);
    CFURLConnectionCancel();

    __resetContext(a1);
  }
}

__CFData *MSSPCCreateDataFromHexString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSSPCCreateDataFromHexString Could not create data object.", buf, 2u);
    }

    return 0;
  }

  v3 = Mutable;
  Length = CFStringGetLength(a1);
  v5 = Length;
  if (Length)
  {
    __assert_rtn("MSSPCCreateDataFromHexString", "MSStreamsProtocolCore.m", 631, "(length & 1) == 0");
  }

  bytes = 0;
  if (Length >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v6);
      v9 = CharacterAtIndex - 48;
      if ((CharacterAtIndex - 65) <= 5)
      {
        v10 = CharacterAtIndex - 55;
      }

      else
      {
        v10 = 0;
      }

      if ((CharacterAtIndex - 97) <= 5)
      {
        v11 = CharacterAtIndex - 87;
      }

      else
      {
        v11 = v10;
      }

      if ((CharacterAtIndex - 48) > 9u)
      {
        v9 = v11;
      }

      if (v7)
      {
        bytes = 16 * v9;
      }

      else
      {
        bytes |= v9;
        CFDataAppendBytes(v3, &bytes, 1);
      }

      v7 ^= 1u;
      ++v6;
    }

    while (v5 != v6);
  }

  return v3;
}

uint64_t MSShouldLogAtLevel(uint64_t a1)
{
  v2 = MSPlatform();
  v3 = [v2 shouldLogAtLevel:a1];

  return v3;
}

void MSLog(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = MSPlatform();
  [v12 logFacility:a1 level:a2 format:v11 args:&a9];
}

void MSLogFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = MSPlatform();
  [v15 logFile:a1 func:a2 line:a3 facility:a4 level:a5 format:a6 args:&a9];
}

void sub_245BC1244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2001(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245BC15A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFErrorRef MSPCUCreateError(const __CFString *a1, CFIndex a2, CFStringRef key, ...)
{
  va_start(va, key);
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  v5 = MSCFCopyLocalizedString(key);
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, v5, va);
  CFRelease(v5);
  userInfoValues[0] = v7;
  userInfoKeys = *MEMORY[0x277CBEE58];
  v8 = CFErrorCreateWithUserInfoKeysAndValues(v6, a1, a2, &userInfoKeys, userInfoValues, 1);
  CFRelease(v7);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

CFStringRef MSPCUCreateBase64StringFromData(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  v3 = 4 * (Length / 3);
  v4 = v3 + 4 * (Length % 3 > 0);
  if (v4 < Length)
  {
    __assert_rtn("MSPCUCreateBase64StringFromData", "MSProtocolCoreUtilities.m", 43, "encodedLength >= length");
  }

  v5 = Length;
  v6 = malloc_type_malloc(v3 + 4 * (Length % 3 > 0), 0x100004077774924uLL);
  if (!v6)
  {
    __assert_rtn("MSPCUCreateBase64StringFromData", "MSProtocolCoreUtilities.m", 46, "destBuf");
  }

  v7 = v6;
  BytePtr = CFDataGetBytePtr(a1);
  if (v5 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = BytePtr - 1;
    v12 = v5;
    do
    {
      if (v10 % 3 == 2)
      {
        v14 = &v7[v9];
        *v14 = MSPCUCreateBase64StringFromData_DataEncodeTable[((v11[1] | (*v11 << 8)) >> 6) & 0x3F];
        v9 += 2;
        v14[1] = MSPCUCreateBase64StringFromData_DataEncodeTable[v11[1] & 0x3F];
      }

      else
      {
        if (v10 % 3 == 1)
        {
          v13 = ((v11[1] | (*v11 << 8)) >> 4) & 0x3F;
        }

        else
        {
          v13 = v11[1] >> 2;
        }

        v7[v9++] = MSPCUCreateBase64StringFromData_DataEncodeTable[v13];
      }

      ++v10;
      ++v11;
      --v12;
    }

    while (v12);
    if (v5 % 3uLL == 2)
    {
      v17 = &v7[v9];
      *v17 = MSPCUCreateBase64StringFromData_DataEncodeTable[4 * (*v11 & 0xF)];
      v16 = v17 + 1;
      goto LABEL_16;
    }

    if (v5 % 3uLL == 1)
    {
      v15 = &v7[v9];
      *v15 = MSPCUCreateBase64StringFromData_DataEncodeTable[16 * (*v11 & 3)];
      v15[1] = 61;
      v16 = v15 + 2;
LABEL_16:
      *v16 = 61;
    }
  }

  v18 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v4, 0x600u, 0);
  free(v7);
  return v18;
}

uint64_t MSPCUNumberFormatterWithSystemLocale()
{
  if (MSPCUNumberFormatterWithSystemLocale_once != -1)
  {
    dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
  }

  return MSPCUNumberFormatterWithSystemLocale_nf;
}

CFNumberFormatterRef __MSPCUNumberFormatterWithSystemLocale_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  System = CFLocaleGetSystem();
  result = CFNumberFormatterCreate(v0, System, kCFNumberFormatterDecimalStyle);
  MSPCUNumberFormatterWithSystemLocale_nf = result;
  return result;
}

uint64_t MSPCUCreateDataFromHexString(const __CFString *a1, uint64_t a2, __CFData **a3, void *a4, uint64_t (*a5)(uint64_t))
{
  Length = CFStringGetLength(a1);
  v9 = Length / 2;
  v10 = malloc_type_malloc(Length / 2, 0x100004077774924uLL);
  v11 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v11, Length + 1, 0x600u))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not parse file hash.", buf, 2u);
      if (a4)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

LABEL_11:
    if (a4)
    {
LABEL_12:
      v20 = 0;
      *a4 = a5(a2);
      goto LABEL_15;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  if (Length >= 2)
  {
    v12 = 0;
    v13 = v10;
    do
    {
      v14 = __tolower(v11[v12]);
      v15 = memchr("0123456789abcdef", v14, 0x11uLL);
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v15;
      v17 = __tolower(v11[v12 + 1]);
      v18 = memchr("0123456789abcdef", v17, 0x11uLL);
      if (!v18)
      {
        goto LABEL_11;
      }

      *v13++ = (v18 - "0123456789abcdef") | (16 * (v16 - "0123456789abcdef"));
      v12 += 2;
    }

    while (v12 < Length - 1);
  }

  if (a3)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v9);
    CFDataAppendBytes(Mutable, v10, v9);
    *a3 = Mutable;
  }

  v20 = 1;
LABEL_15:
  free(v10);
  free(v11);
  return v20;
}

uint64_t MPSStateRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_40;
      }

      if (v13 != 6)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_46:
      *(a1 + 8) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 32;
LABEL_40:
    v24 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id MSMMCSHashForData(void *a1)
{
  v1 = a1;
  v2 = MMCSSignatureGeneratorCreate();
  v3 = [v1 bytes];
  v4 = [v1 length];

  MEMORY[0x245D7B480](v2, v3, v4, 1);
  v5 = MMCSSignatureGeneratorFinish();
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 length:MEMORY[0x245D7B450](v5) freeWhenDone:1];

  return v6;
}

id MSMMCSHashForFD(int a1, void *a2)
{
  v3 = a2;
  v4 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  lseek(a1, 0, 0);
  for (i = MMCSSignatureGeneratorCreate(); ; MEMORY[0x245D7B480](i, v4, v6, 1))
  {
    v6 = read(a1, v4, 0x20000uLL);
    if (!v6)
    {
      break;
    }

    if (v6 == -1)
    {
      perror("Failed to read file for hashing.");
      if (v4)
      {
        free(v4);
      }

      MMCSSignatureGeneratorFinish();
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (v4)
  {
    free(v4);
  }

  v7 = MMCSSignatureGeneratorFinish();
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:MEMORY[0x245D7B450](v7) freeWhenDone:1];
LABEL_8:

  return v8;
}

id MSMMCSHashForFileAtPath(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEA90];
  v5 = a1;
  v6 = [[v4 alloc] initWithContentsOfFile:v5 options:1 error:0];

  if (v6)
  {
    v7 = MSMMCSHashForData(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void MSSSCPCQueryConfiguration(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  a1[6] = 0;
  a1[7] = _didFinish_2264;
  a1[8] = _didFailAuthentication_2263;
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
  MSSPCStartHTTPTransaction(a1, @"GET", a2, a3, v6, 1, 0);

  CFRelease(v6);
}

uint64_t _didFailAuthentication_2263(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didFinish_2264(uint64_t a1, CFDataRef theData, CFTypeRef cf)
{
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
LABEL_3:
    v4 = 0;
    goto LABEL_4;
  }

  v4 = theData;
  if (theData)
  {
    if (!CFDataGetLength(theData))
    {
      goto LABEL_3;
    }

    v5 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], v4, 0, 0, &cfa);
    v4 = v5;
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 != CFDictionaryGetTypeID())
      {
        CFRelease(v4);
        v4 = 0;
        cfa = MSPCUCreateError(@"MSServerSideConfigCoreErrorDomain", 0, @"SERVER_CONFIG_INVALID");
      }
    }
  }

LABEL_4:
  (*(a1 + 128))(a1, v4, cfa);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

void MSRSPCResetServerStateAsync(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  a1[6] = 0;
  a1[7] = _didFinish_2484;
  a1[8] = _didFailAuthentication_2483;
  a1[9] = _didReceiveServerSideConfigurationVersion_2482;
  MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, 0, 0, 0);
}

uint64_t _didReceiveServerSideConfigurationVersion_2482(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFailAuthentication_2483(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFinish_2484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can't reset server state. Error: %{public}@", &v7, 0xCu);
  }

  result = (*(a1 + 128))(a1, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void MSRPCReauthorizeAsync(void *a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  a1[6] = 0;
  a1[7] = _didFinish_2670;
  a1[8] = _didFailAuthentication_2669;
  a1[10] = _didReceiveRetryAfter_2668;
  a1[9] = _didReceiveServerSideConfigurationVersion_2667;
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    __assert_rtn("MSRPCReauthorizeAsync", "MSReauthorizeProtocolCore.m", 35, "messageDict");
  }

  v12 = Mutable;
  CFDictionaryAddValue(Mutable, a4, a5);
  error = 0;
  v13 = CFPropertyListCreateData(v10, v12, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (v13)
  {
    v14 = v13;
    CFRelease(v12);
    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, v14, 1, 0);
    CFRelease(v14);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = error;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to serialize reauthorize data: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v12);
    MSSPCStartHTTPTransaction(a1, @"POST", a2, a3, 0, 1, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t _didReceiveServerSideConfigurationVersion_2667(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didReceiveRetryAfter_2668(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFailAuthentication_2669(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didFinish_2670(uint64_t a1, CFDataRef theData, __CFError *a3)
{
  error = a3;
  if (theData && !a3 && CFDataGetLength(theData))
  {
    v6 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], theData, 0, 0, &error);
    (*(a1 + 128))(a1, v6, error);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v7 = *(a1 + 128);

    v7(a1, 0, a3);
  }
}

void _commitMasterManifest_3250()
{
  v0 = [_internalMasterManifest objectForKey:@"nextActivityDateByPersonID"];
  v1 = [v0 count];

  if (v1)
  {
    v2 = _internalMasterManifest;
    v4 = MSPathDeleteMasterManifest();
    [v2 writeToFile:? atomically:?];
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = MSPathDeleteMasterManifest();
    [v4 removeItemAtPath:v3 error:0];
  }
}

id _masterNextActivityDateByPersonID_3275()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = _internalMasterManifest;
  if (!_internalMasterManifest)
  {
    v1 = [MEMORY[0x277CCAA00] defaultManager];
    v2 = MSPathDeleteDir();
    [v1 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = MSPathDeleteMasterManifest();
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      v6 = MEMORY[0x277CCAC58];
      v7 = MEMORY[0x277CBEA90];
      v8 = MSPathDeleteMasterManifest();
      v9 = [v7 dataWithContentsOfFile:v8];
      v19 = 0;
      v10 = [v6 propertyListWithData:v9 options:1 format:0 error:&v19];
      v11 = v19;
      v12 = _internalMasterManifest;
      _internalMasterManifest = v10;

      if (!_internalMasterManifest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to deserialize delete master manifest: %{public}@", buf, 0xCu);
      }
    }

    v0 = _internalMasterManifest;
    if (!_internalMasterManifest)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = _internalMasterManifest;
      _internalMasterManifest = v13;

      v0 = _internalMasterManifest;
    }
  }

  v15 = v0;
  v16 = [v15 objectForKey:@"nextActivityDateByPersonID"];
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:v16 forKey:@"nextActivityDateByPersonID"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void MSDSPCSendDeletionRequestAsync(void *a1, uint64_t a2, const __CFDictionary *a3, const __CFArray *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  a1[7] = _didFinish_3408;
  a1[8] = _didFailAuthentication_3407;
  a1[10] = _didReceiveRetryAfter_3406;
  a1[9] = _didReceiveServerSideConfigurationVersion_3405;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    __assert_rtn("MSDSPCSendDeletionRequestAsync", "MSDeleteStreamsProtocolCore.m", 40, "messageDeleteArray");
  }

  v9 = Mutable;
  v24 = a1;
  v25 = a3;
  Count = CFArrayGetCount(a4);
  if (Count >= 1)
  {
    v11 = Count;
    v12 = 0;
    v13 = MEMORY[0x277CBF138];
    v14 = MEMORY[0x277CBF150];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, v12);
      v16 = CFDictionaryCreateMutable(0, 0, v13, v14);
      if (v16)
      {
        v17 = v16;
        value = 0;
        CFDictionaryGetValueIfPresent(ValueAtIndex, @"fileHash", &value);
        if (value)
        {
          v18 = MSSPCCreateHexStringFromData(value);
          if (v18)
          {
            v19 = v18;
            CFDictionarySetValue(v17, @"checksum", v18);
            CFRelease(v19);
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v28 = value;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot convert file hash %{public}@ to string.", buf, 0xCu);
          }
        }

        if (CFDictionaryContainsKey(ValueAtIndex, @"UUID"))
        {
          v20 = CFDictionaryGetValue(ValueAtIndex, @"UUID");
          CFDictionarySetValue(v17, @"assetcollid", v20);
        }

        CFArrayAppendValue(v9, v17);
        CFRelease(v17);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create dictionary.", buf, 2u);
      }

      ++v12;
    }

    while (v11 != v12);
  }

  value = 0;
  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v9, kCFPropertyListXMLFormat_v1_0, 0, &value);
  if (Data)
  {
    v22 = Data;
    CFRelease(v9);
    MSSPCStartHTTPTransaction(v24, @"POST", a2, v25, v22, 1, 0);
    CFRelease(v22);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = value;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to serialize delete request data: %{public}@", buf, 0xCu);
    }

    if (value)
    {
      CFRelease(value);
    }

    CFRelease(v9);
    MSSPCStartHTTPTransaction(v24, @"POST", a2, v25, 0, 1, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t _didReceiveServerSideConfigurationVersion_3405(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didReceiveRetryAfter_3406(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _didFailAuthentication_3407(uint64_t result)
{
  v1 = *(result + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _didFinish_3408(uint64_t a1, CFDataRef theData, __CFError *a3)
{
  error = a3;
  if (theData && CFDataGetLength(theData))
  {
    v4 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], theData, 0, 0, &error);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_7;
    }

    v6 = CFGetTypeID(v4);
    if (v6 == CFArrayGetTypeID())
    {
      goto LABEL_7;
    }

    CFRelease(v5);
  }

  v5 = 0;
LABEL_7:
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v8 = error == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    Count = CFArrayGetCount(v5);
    if (Count <= 0)
    {
      (*(a1 + 128))(a1, Mutable, error);
      goto LABEL_45;
    }

    v10 = Count;
    v11 = 0;
    v12 = @"checksum";
    v13 = MEMORY[0x277CBF138];
    v14 = MEMORY[0x277CBF150];
    v15 = *MEMORY[0x277CBED10];
    v32 = *MEMORY[0x277CBED10];
    v33 = *MEMORY[0x277CBED28];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v11);
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 != CFDictionaryGetTypeID())
      {
        break;
      }

      v18 = CFDictionaryCreateMutable(0, 0, v13, v14);
      if (v18)
      {
        v19 = v18;
        if (!CFDictionaryContainsKey(ValueAtIndex, v12))
        {
          goto LABEL_20;
        }

        v20 = CFDictionaryGetValue(ValueAtIndex, v12);
        value = 0;
        MSPCUCreateDataFromHexString(v20, v12, &value, &error, _createBadFieldError_3414);
        if (!error)
        {
          if (value)
          {
            CFDictionarySetValue(v19, @"fileHash", value);
            CFRelease(value);
          }

LABEL_20:
          if (CFDictionaryContainsKey(ValueAtIndex, @"assetcollid"))
          {
            v34 = CFDictionaryGetValue(ValueAtIndex, @"assetcollid");
            v21 = v5;
            v22 = v10;
            v23 = Mutable;
            v24 = v12;
            v25 = v14;
            v26 = v13;
            v27 = CFGetTypeID(v34);
            v8 = v27 == CFStringGetTypeID();
            v13 = v26;
            v14 = v25;
            v12 = v24;
            Mutable = v23;
            v10 = v22;
            v5 = v21;
            if (v8)
            {
              CFDictionarySetValue(v19, @"UUID", v34);
            }
          }

          value = 0;
          CFDictionaryGetValueIfPresent(ValueAtIndex, @"success", &value);
          if (value)
          {
            v28 = CFGetTypeID(value);
            if (v28 == CFStringGetTypeID())
            {
              if (MSPCUNumberFormatterWithSystemLocale_once != -1)
              {
                dispatch_once(&MSPCUNumberFormatterWithSystemLocale_once, &__block_literal_global_2113);
              }

              NumberFromString = CFNumberFormatterCreateNumberFromString(0, MSPCUNumberFormatterWithSystemLocale_nf, value, 0, 0);
              if (NumberFromString)
              {
                v30 = NumberFromString;
                valuePtr = 0;
                CFNumberGetValue(NumberFromString, kCFNumberIntType, &valuePtr);
                if (valuePtr)
                {
                  v31 = v33;
                }

                else
                {
                  v31 = v32;
                }

                CFDictionarySetValue(v19, @"deleteResult", v31);
                CFRelease(v30);
              }
            }
          }

          CFArrayAppendValue(Mutable, v19);
        }

        CFRelease(v19);
        if (error)
        {
          goto LABEL_40;
        }

        if (++v11 >= v10)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_39:
        if (++v11 >= v10)
        {
          goto LABEL_40;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(value) = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Response array element is not a dictionary.", &value, 2u);
    }

    goto LABEL_39;
  }

LABEL_40:
  (*(a1 + 128))(a1, Mutable);
  if (!Mutable)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_45:
  CFRelease(Mutable);
  if (!v5)
  {
    return;
  }

LABEL_42:
  CFRelease(v5);
}

id _copyAssetsIntoAssetCollection(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MSAsset assetWithAsset:*(*(&v21 + 1) + 8 * i)];
        [v13 setAssetCollectionGUID:v7];
        v14 = [v6 metadata];
        v15 = [v14 objectForKey:@"batchDateCreated"];
        [v13 setBatchCreationDate:v15];

        v16 = [v6 metadata];
        v17 = [v16 objectForKey:@"dateCreated"];
        [v13 setPhotoCreationDate:v17];

        [v8 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_245BD1B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3879(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245BD20BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD2504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD27DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD3224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD7AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD7F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BD8174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MSASInitialize(id obj)
{
  objc_storeStrong(&_thePlatform, obj);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "MSASPlatform initialized.", v1, 2u);
  }
}

id MSASPlatform()
{
  v1 = _thePlatform;
  if (!_thePlatform)
  {
    __assert_rtn("MSASPlatform", "MSASPlatform.m", 26, "_thePlatform");
  }

  return v1;
}

uint64_t MSASPlatformIsDebugLoggingEnabled()
{
  result = _thePlatform;
  if (_thePlatform)
  {
    return [_thePlatform shouldLogAtLevel:7];
  }

  return result;
}

void sub_245BDA684(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_245BDCE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_245BDDE30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_245BDE3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245BDE860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245BDF3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 160));
  _Unwind_Resume(a1);
}

void sub_245BE02B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_245BE11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245BE1D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245BE24A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_245BE2B30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_245BE39E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v11 + 64));
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

void sub_245BE4968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_245BE8278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_245BE8E18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_245BE9B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 160));
  _Unwind_Resume(a1);
}

void sub_245BEAA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_245BEB858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_245BEC4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak((v34 - 160));
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4549(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245BED360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_245BEE0CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_245BEEF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_245BF03BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_245BF16D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_245BF219C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_245BF2CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_245BF38A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_245BF456C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_245BF573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak((v34 - 112));
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_245BF6CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_245BFACD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BFB13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BFB6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_245BFB994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_245BFC6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BFC804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245BFEE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_245BFFC20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 136));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_245C00544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C0068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C00814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C00F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C014AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C017A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C018BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C026EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C02AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C03004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C035CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C036E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C03E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C04D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C04E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C05154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C06018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_245C08CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C090B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C0A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5293(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C0AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C0ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C0BDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5532(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C0E4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _requestCompletedCallback_5610(void *a1)
{
  v1 = a1;
  v2 = [v1 engine];
  [v2 _requestCompletedRequestorContext:v1];
}

void _putItemDoneCallback_5611(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = [v8 engine];
  [v9 _putItemDoneItemID:a2 requestorContext:v8 putReceipt:a4 error:a5];
}

void _putItemProgressCallback_5612(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v12 = [v11 engine];
  [v12 _putItemProgressItemID:a2 state:a5 progress:v11 requestorContext:a7 error:a3];
}

void _getItemDoneCallback_5613(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = a1;
  if (a4)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    a4 = [v8 stringWithFileSystemRepresentation:a4 length:strlen(a4)];
  }

  v9 = [v10 engine];
  [v9 _getItemDoneItemID:a2 path:a4 requestorContext:v10 error:a5];
}

void _getItemProgressCallback_5614(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = [v10 engine];
  [v11 _getItemProgressItemID:a2 state:a5 progress:v10 requestorContext:a6 error:a3];
}

uint64_t _getFileDescriptorAndContentTypeFromItemCallback(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = 0;
  v12 = 0;
  v7 = [a1 _getFileDescriptorAndContentTypeFromItemID:a2 outFD:a3 outItemType:&v12 outError:&v11];
  v8 = v12;
  v9 = v11;
  if (v7)
  {
    if (a4)
    {
      *a4 = v8;
    }

    if (a5)
    {
      *a5 = v9;
    }
  }

  return v7;
}

void sub_245C10050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C102C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C10438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C10584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C107C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKContainerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKContainerClass_softClass;
  v7 = getCKContainerClass_softClass;
  if (!getCKContainerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCKContainerClass_block_invoke;
    v3[3] = &unk_278E91B78;
    v3[4] = &v4;
    __getCKContainerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_245C1B03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKContainerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CloudKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278E91B98;
    v9 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CloudKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"MSProtocolUtilities.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CKContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKContainerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"MSProtocolUtilities.m" lineNumber:24 description:{@"Unable to find class %s", "CKContainer"}];

LABEL_10:
    __break(1u);
  }

  getCKContainerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___retryAfterDateFormatter_block_invoke()
{
  v0 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  _retryAfterDateFormatter_df_6340 = v0;
  if (v0)
  {
    v1 = *MEMORY[0x277CBED88];
    v2 = *MEMORY[0x277CBED28];

    CFDateFormatterSetProperty(v0, v1, v2);
  }
}

void ___nonNumericNonSpaceCharacterSet_block_invoke()
{
  v0 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789 ");
  if (v0)
  {
    v1 = v0;
    _nonNumericNonSpaceCharacterSet_charSet_6338 = CFCharacterSetCreateInvertedSet(0, v0);

    CFRelease(v1);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create character set for date matching.", v2, 2u);
  }
}

id _errorWithException(void *a1)
{
  v1 = MEMORY[0x277CCA9B8];
  v2 = [a1 reason];
  v3 = [v1 MSErrorWithDomain:@"MSArchiverUtilitiesErrorDomain" code:0 description:v2];

  return v3;
}

void sub_245C1E888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6801(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C237F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C239A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6923(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C23B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C23D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C23EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2B1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2BFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2C110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2C2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C2C420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C35D0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_245C363E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_245C370E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245C3A16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3A468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_245C3AC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3B0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3B978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3BDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3C248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3C46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3CB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3CD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3D3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3D5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3D91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3E1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3E3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C3E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C400C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_245C403B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MSLogSqliteError(sqlite3 *a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = a2;
    v9 = 1024;
    v10 = a3;
    v11 = 2082;
    v12 = sqlite3_errmsg(a1);
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: %d: SQL operation failed: %{public}s", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t MSSqliteBindDataOrNull(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];
    if (v7 >> 31)
    {
      __assert_rtn("MSSqliteBindDataOrNull", "MSSqliteUtilities.m", 21, "dataLength <= INT_MAX");
    }

    v8 = sqlite3_bind_blob(a1, a2, [v6 bytes], v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = sqlite3_bind_null(a1, a2);
  }

  v9 = v8;

  return v9;
}

uint64_t MSSqliteBindStringOrNull(sqlite3_stmt *a1, int a2, id a3)
{
  if (a3)
  {
    v5 = [a3 UTF8String];

    return sqlite3_bind_text(a1, a2, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

uint64_t MSSqliteBindTimeIntervalSinceReferenceDateOrNull(sqlite3_stmt *a1, int a2, void *a3)
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];

    return sqlite3_bind_double(a1, a2, v5);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

id MSSqliteStringFromStatementColumn(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  }

  return v2;
}

id MSSqliteDataFromStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);
  if (v4)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MSSqliteObjectFromStatementColumn(sqlite3_stmt *a1, int a2)
{
  v2 = MEMORY[0x277CCAAC8];
  v3 = MSSqliteDataFromStatementColumn(a1, a2);
  v4 = [v2 MSSafeUnarchiveObjectWithData:v3 outError:0];

  return v4;
}

id MSSqliteDateFromTimeIntervalStatementColumn(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_double(a1, a2) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v2;
}

uint64_t MSSqliteTrapForDBLockError(uint64_t result)
{
  if (result == 5)
  {
    v4 = v1;
    v5 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "sqlite3 operation failed with a SQLITE_BUSY. Please grab the crash report and attach to <rdar://problem/11375454>!.", v3, 2u);
    }

    __assert_rtn("MSSqliteTrapForDBLockError", "MSSqliteUtilities.m", 72, "0");
  }

  return result;
}

void sub_245C412BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_245C415AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_245C416F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C41994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_245C41C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7575(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245C4BA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_245C4DBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C50254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _setFieldsInSharingRelationship(void *a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKey:@"invitationguid"];
  v6 = 0x277CCA000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKey:@"invitationguid"];
    [v3 setGUID:v7];
  }

  else
  {
    [v3 setGUID:0];
  }

  v8 = [v4 objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 objectForKey:@"email"];

    if (!v9)
    {
      goto LABEL_8;
    }

    [v3 setEmail:v9];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v9];
    [v3 setEmails:v10];

    v8 = v9;
  }

LABEL_8:
  v11 = [v4 objectForKey:@"firstname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v4 objectForKey:@"firstname"];
    [v3 setFirstName:v12];
  }

  else
  {
    [v3 setFirstName:0];
  }

  v13 = [v4 objectForKey:@"lastname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v4 objectForKey:@"lastname"];
    [v3 setLastName:v14];
  }

  else
  {
    [v3 setLastName:0];
  }

  v15 = [v4 objectForKey:@"fullname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v4 objectForKey:@"fullname"];
    [v3 setFullName:v16];
  }

  else
  {
    [v3 setFullName:0];
  }

  v17 = [v4 objectForKey:@"personid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v4 objectForKey:@"personid"];
    [v3 setPersonID:v18];
  }

  else
  {
    [v3 setPersonID:0];
  }

  v19 = [v4 objectForKey:@"albumguid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v4 objectForKey:@"albumguid"];
    [v3 setAlbumGUID:v20];
  }

  else
  {
    [v3 setAlbumGUID:0];
  }

  v21 = [v4 objectForKey:@"requestedbyme"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v4 objectForKey:@"requestedbyme"];

    if (v22 && [v22 isEqualToString:@"1"])
    {
      [v3 setIsMine:1];
    }
  }

  else
  {

    v22 = 0;
  }

  v23 = [v4 objectForKey:@"phonenumbers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v4 objectForKey:@"phonenumbers"];

    if (v24 && [v24 count])
    {
      v50 = v22;
      v51 = v3;
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v24 = v24;
      v26 = [v24 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v53;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v53 != v28)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v52 + 1) + 8 * i);
            v31 = [v30 objectForKey:@"phonenumber"];
            v32 = [v30 objectForKey:@"invitationtoken"];
            v33 = v32;
            if (v31)
            {
              v34 = v32 == 0;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              [v25 addObject:v31];
            }
          }

          v27 = [v24 countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v27);
      }

      v3 = v51;
      if ([v25 count])
      {
        [v51 setPhones:v25];
      }

      v6 = 0x277CCA000;
      v22 = v50;
    }
  }

  else
  {

    v24 = 0;
  }

  v35 = [v4 objectForKey:@"subscriptiondate"];
  v36 = *(v6 + 3240);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [v4 objectForKey:@"subscriptiondate"];

    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v38 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    v39 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v38 setTimeZone:v39];

    v40 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    [v38 setLocale:v40];
    v41 = [v38 dateFromString:v37];
    [v3 setSubscriptionDate:v41];

    v35 = v37;
  }

LABEL_51:
  v42 = [v4 objectForKey:@"sharingtype"];
  v43 = *(v6 + 3240);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = 1;
LABEL_69:

    goto LABEL_70;
  }

  v44 = [v4 objectForKey:@"sharingtype"];

  if (v44)
  {
    if ([v44 isEqualToString:@"pending"])
    {
      v45 = 1;
      [v3 setState:1];
    }

    else
    {
      if ([v44 isEqualToString:@"declined"])
      {
        v46 = v3;
        v47 = 4;
      }

      else if ([v44 isEqualToString:@"subscribed"])
      {
        v46 = v3;
        v47 = 2;
      }

      else if ([v44 isEqualToString:@"unsubscribed"])
      {
        v46 = v3;
        v47 = 3;
      }

      else if ([v44 isEqualToString:@"owned"])
      {
        v46 = v3;
        v47 = 0;
      }

      else
      {
        if (![v44 isEqualToString:@"unshared"])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v57 = v44;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown sharing relationship: %@, skipping.", buf, 0xCu);
          }

          v45 = 0;
          goto LABEL_68;
        }

        v46 = v3;
        v47 = 5;
      }

      [v46 setState:v47];
      v45 = 1;
    }

LABEL_68:
    v42 = v44;
    goto LABEL_69;
  }

  v45 = 1;
LABEL_70:

  v48 = *MEMORY[0x277D85DE8];
  return v45;
}

void sub_245C5AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C5B308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C5B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245C5B638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}