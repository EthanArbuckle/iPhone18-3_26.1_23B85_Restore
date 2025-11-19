@interface ASFolderHierarchy
+ (id)_folderCacheFilenameWithId:(id)a3;
+ (void)cleanUpFilesForAccountWithId:(id)a3;
- (ASFolderHierarchy)initWithAccount:(id)a3;
- (BOOL)_setFolderByIdCacheFromCurrentCache;
- (id)_deviceIdInCache;
- (id)_folderCacheFilename;
- (id)_pathForFolder:(id)a3 usingCache:(id)a4 foldersById:(id)a5;
- (id)_savedFolderPathsThatExternalClientsCareAbout;
- (id)description;
- (id)folderCache;
- (id)folderForID:(id)a3;
- (id)folderIdsForPersistentPush;
- (id)folderIdsForPersistentPushForClientID:(id)a3;
- (id)folderIdsForPersistentPushForDataclasses:(int64_t)a3 clientID:(id)a4;
- (id)folderIdsThatExternalClientsCareAbout;
- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)a3;
- (id)folders;
- (id)foldersTag;
- (id)foldersUnderFolderWithID:(id)a3;
- (void)_blowAwayFolderCacheWithoutSavingOldFolderPaths;
- (void)_identityMatchAndSetFoldersThatExternalClientsCareAbout:(id)a3;
- (void)_pruneBadFolderIdsThatExternalClientsCareAbout;
- (void)_restoreFromSavedFoldersThatExternalClientsCareAbout;
- (void)_setFolderCache:(id)a3;
- (void)_setFolderPathsFromCurrentCache;
- (void)_setSavedFolderPathsThatExternalClientsCareAbout:(id)a3;
- (void)blowAwayFolderCache;
- (void)clearLocalCache;
- (void)setFolderCache:(id)a3;
- (void)setFolderIdsForPersistentPush:(id)a3 clientID:(id)a4;
- (void)setFolderIdsThatExternalClientsCareAbout:(id)a3;
@end

@implementation ASFolderHierarchy

- (ASFolderHierarchy)initWithAccount:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASFolderHierarchy;
  v5 = [(ASFolderHierarchy *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, v4);
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = +[ASFolderHierarchy _dataDirectoryPath];
    v9 = [v7 fileExistsAtPath:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = +[ASFolderHierarchy _dataDirectoryPath];
      [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Folder Cache: %@>", v5, self->_folderCache];

  return v6;
}

+ (id)_folderCacheFilenameWithId:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = +[ASFolderHierarchy _dataDirectoryPath];
  v6 = [v3 stringWithFormat:@"%@/ASFolders-%@", v5, v4];

  v7 = [v6 stringByExpandingTildeInPath];

  return v7;
}

- (id)_folderCacheFilename
{
  WeakRetained = objc_loadWeakRetained(&self->_account);
  v3 = [WeakRetained accountID];
  v4 = [ASFolderHierarchy _folderCacheFilenameWithId:v3];

  return v4;
}

- (BOOL)_setFolderByIdCacheFromCurrentCache
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_folderCache objectForKeyedSubscript:@"ASFolders"];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  folderByIdCache = self->_folderByIdCache;
  self->_folderByIdCache = v4;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 serverID];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 serverID];
          v15 = [v11 parentID];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v20 = DALoggingwithCategory();
            v21 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v20, v21))
            {
              v22 = [v11 description];
              v23 = [v11 serverID];
              v24 = [v11 parentID];
              *buf = 138412802;
              v32 = v22;
              v33 = 2112;
              v34 = v23;
              v35 = 2112;
              v36 = v24;
              _os_log_impl(&dword_24A0AC000, v20, v21, "Discarding folder in cache [%@] with the same server ID [%@] and parent ID [%@]", buf, 0x20u);
            }

            v19 = 0;
            goto LABEL_14;
          }
        }

        v17 = self->_folderByIdCache;
        v18 = [v11 serverID];
        [(NSMutableDictionary *)v17 setObject:v11 forKeyedSubscript:v18];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_deviceIdInCache
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASFolderHierarchy *)self _folderCacheFilename];
  v3 = [v2 stringByExpandingTildeInPath];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5 && (v6 = open([v3 fileSystemRepresentation], 0), (v6 & 0x80000000) == 0) && (v7 = v6, flockWithProcessAssertion(), v8 = objc_msgSend(objc_alloc(MEMORY[0x277CBEA90]), "initWithContentsOfFile:", v3), flockWithProcessAssertion(), close(v7), v8))
  {
    v16 = 0;
    v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v16];
    v10 = v16;
    if (!v9)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_24A0AC000, v11, v12, "Unable to read data to decode deviceId: %@", buf, 0xCu);
      }
    }

    v13 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"deviceId"];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)folderCache
{
  v56 = *MEMORY[0x277D85DE8];
  folderCache = self->_folderCache;
  if (!folderCache)
  {
    v4 = [(ASFolderHierarchy *)self _folderCacheFilename];
    v5 = [v4 stringByExpandingTildeInPath];

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if (!v7)
    {
      goto LABEL_38;
    }

    v8 = open([v5 fileSystemRepresentation], 0);
    if (v8 < 0)
    {
      v10 = DALoggingwithCategory();
      v28 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v28))
      {
        v29 = objc_opt_class();
        v30 = v29;
        v31 = __error();
        v32 = strerror(*v31);
        *buf = 138412802;
        v51 = v29;
        v52 = 2112;
        v53 = v5;
        v54 = 2080;
        v55 = v32;
        _os_log_impl(&dword_24A0AC000, v10, v28, "%@ couldn't open file for reading %@ %s", buf, 0x20u);
      }

      goto LABEL_37;
    }

    v9 = v8;
    flockWithProcessAssertion();
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5];
    flockWithProcessAssertion();
    close(v9);
    if (!v10)
    {
LABEL_38:

      folderCache = self->_folderCache;
      goto LABEL_39;
    }

    v49 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:&v49];
    v46 = v49;
    if (!v11)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        v51 = v46;
        _os_log_impl(&dword_24A0AC000, v12, v13, "Unable to read data to decode folder cache: %@", buf, 0xCu);
      }
    }

    v48 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"deviceId"];
    v47 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    WeakRetained = objc_loadWeakRetained(&self->_account);
    v15 = [WeakRetained taskManager];
    v16 = [v15 deviceType];

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v11 decodeObjectOfClasses:v22 forKey:@"folderCache"];
    v24 = self->_folderCache;
    self->_folderCache = v23;

    if (self->_folderCache && [(ASFolderHierarchy *)self _setFolderByIdCacheFromCurrentCache])
    {
      if (v48 && (asDeviceID(), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v48 isEqualToString:v25], v25, (v26 & 1) != 0))
      {
        v27 = 0;
      }

      else
      {
        v33 = DALoggingwithCategory();
        v34 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = asDeviceID();
          *buf = 138412546;
          v51 = v48;
          v52 = 2112;
          v53 = v35;
          _os_log_impl(&dword_24A0AC000, v33, v34, "Found an outdated deviceId %@ in folder hierarchy (compared to current device id of %@)", buf, 0x16u);
        }

        v27 = 1;
      }

      if (v47 && v16 && ([v16 isEqualToString:v47] & 1) == 0)
      {
        v36 = DALoggingwithCategory();
        v37 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v36, v37))
        {
          *buf = 138412546;
          v51 = v47;
          v52 = 2112;
          v53 = v16;
          _os_log_impl(&dword_24A0AC000, v36, v37, "Found an outdated deviceType %@ in the folder hierarchy (compared to current device type of %@)", buf, 0x16u);
        }
      }

      else if (!v27)
      {
        goto LABEL_36;
      }

      [(ASFolderHierarchy *)self _setFolderPathsFromCurrentCache];
      v38 = objc_loadWeakRetained(&self->_account);
      v39 = [v38 shouldFixOnDiskDeviceId];

      if (v39)
      {
        v40 = DALoggingwithCategory();
        v41 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v40, v41))
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v40, v41, "Blowing it hierarchy and starting fresh", buf, 2u);
        }

        [(ASFolderHierarchy *)self _blowAwayFolderCacheWithoutSavingOldFolderPaths];
      }

      else
      {
        v42 = DALoggingwithCategory();
        v43 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v42, *(MEMORY[0x277D03988] + 6)))
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v42, v43, "Ignoring hierarchy cache", buf, 2u);
        }

        [(ASFolderHierarchy *)self clearLocalCache];
      }

      goto LABEL_36;
    }

    [(ASFolderHierarchy *)self _blowAwayFolderCacheWithoutSavingOldFolderPaths];
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

LABEL_39:
  v44 = *MEMORY[0x277D85DE8];

  return folderCache;
}

- (id)folderForID:(id)a3
{
  v4 = a3;
  v5 = [(ASFolderHierarchy *)self folderCache];
  v6 = [(NSMutableDictionary *)self->_folderByIdCache objectForKeyedSubscript:v4];

  return v6;
}

- (id)folders
{
  v2 = [(ASFolderHierarchy *)self folderCache];
  v3 = [v2 objectForKeyedSubscript:@"ASFolders"];

  return v3;
}

- (id)foldersTag
{
  v2 = [(ASFolderHierarchy *)self folderCache];
  v3 = [v2 objectForKeyedSubscript:@"ASFoldersSyncKey"];

  return v3;
}

- (void)clearLocalCache
{
  folderCache = self->_folderCache;
  self->_folderCache = 0;

  folderByIdCache = self->_folderByIdCache;
  self->_folderByIdCache = 0;
}

- (id)_savedFolderPathsThatExternalClientsCareAbout
{
  WeakRetained = objc_loadWeakRetained(&self->_account);
  v3 = [WeakRetained savedFolderPathsThatClientsCareAbout];

  return v3;
}

- (void)_setSavedFolderPathsThatExternalClientsCareAbout:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_account);
  [WeakRetained setSavedFolderPathsThatClientsCareAbout:v4];
}

- (void)_setFolderPathsFromCurrentCache
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ASFolderHierarchy *)self folderCache];
  v4 = [(NSMutableDictionary *)self->_folderCache objectForKeyedSubscript:@"FoldersExternalClientsCareAboutKey"];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_folderByIdCache objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v12), v16];
        v14 = [(ASFolderHierarchy *)self _pathForFolder:v13 usingCache:v7 foldersById:self->_folderByIdCache];

        if (v14)
        {
          [v5 addObject:v14];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v6);
  [(ASFolderHierarchy *)self _setSavedFolderPathsThatExternalClientsCareAbout:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)foldersUnderFolderWithID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v5 = [(ASFolderHierarchy *)self folders];
  v6 = [(ASFolderHierarchy *)self folderForID:v4];
  if (v6)
  {
    v20 = v4;
    [v21 addObject:v6];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (v12)
          {
            v13 = v12;
            v14 = v12;
            while (1)
            {
              if ([v14 isEqual:v6])
              {
                [v21 addObject:v13];
                v15 = v14;
                goto LABEL_15;
              }

              v15 = [v14 parentID];
              if (!v15)
              {
                break;
              }

              v16 = [(ASFolderHierarchy *)self folderForID:v15];

              v14 = v16;
              if (!v16)
              {
                goto LABEL_16;
              }
            }

LABEL_15:
          }

LABEL_16:
          ;
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = v19;
    v4 = v20;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_pathForFolder:(id)a3 usingCache:(id)a4 foldersById:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 serverID];
  v39 = v8;
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [v7 displayName];
    if (v13)
    {
      v14 = [v7 parentID];
      v15 = [v39 objectForKeyedSubscript:v14];
      v16 = objc_opt_new();
      v38 = v7;
      if (v14)
      {
        while (([v14 isEqualToString:@"0"] & 1) == 0 && !v15)
        {
          [v16 addObject:v14];
          v17 = [v9 objectForKeyedSubscript:v14];
          v18 = [v17 parentID];

          v15 = [v39 objectForKeyedSubscript:v18];
          v14 = v18;
          if (!v18)
          {
            goto LABEL_8;
          }
        }

        v36 = v14;
      }

      else
      {
LABEL_8:
        v36 = 0;
      }

      v37 = v13;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v35 = v16;
      v19 = [v16 reverseObjectEnumerator];
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v40 + 1) + 8 * i);
            v25 = [v9 objectForKeyedSubscript:v24];
            v26 = v25;
            if (v25)
            {
              v27 = [v25 displayName];
              v28 = v27;
              if (v15)
              {
                v29 = [v15 stringByAppendingFormat:@"/%@", v27];

                v15 = v29;
              }

              else
              {
                v15 = [v27 copy];
              }

              [v39 setObject:v15 forKeyedSubscript:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v21);
      }

      v13 = v37;
      if (v15)
      {
        v30 = [v15 stringByAppendingFormat:@"/%@", v37];
      }

      else
      {
        v30 = v37;
      }

      v31 = v30;
      v7 = v38;
      v32 = [v38 serverID];
      [v39 setObject:v31 forKeyedSubscript:v32];

      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_identityMatchAndSetFoldersThatExternalClientsCareAbout:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Identity matching folders that external clients care about", buf, 2u);
  }

  if ([v4 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    context = objc_autoreleasePoolPush();
    v8 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [(ASFolderHierarchy *)self folders];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [(ASFolderHierarchy *)self _pathForFolder:v14 usingCache:v8 foldersById:self->_folderByIdCache];
          if (v15)
          {
            [v7 setObject:v14 forKeyedSubscript:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(context);
    v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v4;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v7 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * j)];
          v23 = [v22 serverID];

          if (v23)
          {
            [v16 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v19);
    }

    [(ASFolderHierarchy *)self setFolderIdsThatExternalClientsCareAbout:v16];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_blowAwayFolderCacheWithoutSavingOldFolderPaths
{
  WeakRetained = objc_loadWeakRetained(&self->_account);
  v4 = [WeakRetained accountID];
  [ASFolderHierarchy cleanUpFilesForAccountWithId:v4];

  [(ASFolderHierarchy *)self clearLocalCache];
}

- (void)blowAwayFolderCache
{
  [(ASFolderHierarchy *)self _setFolderPathsFromCurrentCache];

  [(ASFolderHierarchy *)self _blowAwayFolderCacheWithoutSavingOldFolderPaths];
}

- (void)_pruneBadFolderIdsThatExternalClientsCareAbout
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_folderCache objectForKeyedSubscript:@"FoldersExternalClientsCareAboutKey"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_folderByIdCache objectForKeyedSubscript:v11, v14];

          if (!v12)
          {
            [v5 removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_folderCache setObject:v5 forKeyedSubscript:@"FoldersExternalClientsCareAboutKey"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setFolderCache:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_folderCache != v4)
  {
    [(ASFolderHierarchy *)self clearLocalCache];
    v5 = [(NSMutableDictionary *)v4 mutableCopy];
    folderCache = self->_folderCache;
    self->_folderCache = v5;

    [(ASFolderHierarchy *)self _setFolderByIdCacheFromCurrentCache];
    if (self->_folderCache)
    {
      [(ASFolderHierarchy *)self _pruneBadFolderIdsThatExternalClientsCareAbout];
      v7 = objc_opt_new();
      v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initForWritingWithMutableData:v7];
      [v8 encodeObject:self->_folderCache forKey:@"folderCache"];
      v9 = asDeviceID();
      [v8 encodeObject:v9 forKey:@"deviceId"];

      WeakRetained = objc_loadWeakRetained(&self->_account);
      v11 = [WeakRetained taskManager];
      v12 = [v11 deviceType];

      if (v12)
      {
        [v8 encodeObject:v12 forKey:@"deviceType"];
      }

      [v8 finishEncoding];
      v13 = [(ASFolderHierarchy *)self _folderCacheFilename];
      v14 = open([v13 fileSystemRepresentation], 514, 384);
      if (v14 < 0)
      {
        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = objc_opt_class();
          v19 = v18;
          v20 = __error();
          v21 = strerror(*v20);
          *buf = 138412802;
          v24 = v18;
          v25 = 2112;
          v26 = v13;
          v27 = 2080;
          v28 = v21;
          _os_log_impl(&dword_24A0AC000, v16, v17, "%@ couldn't open file for writing to %@ %s", buf, 0x20u);
        }
      }

      else
      {
        v15 = v14;
        flockWithProcessAssertion();
        [v7 writeToFile:v13 atomically:1];
        flockWithProcessAssertion();
        close(v15);
      }
    }

    else
    {
      [(ASFolderHierarchy *)self _blowAwayFolderCacheWithoutSavingOldFolderPaths];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setFolderCache:(id)a3
{
  [(ASFolderHierarchy *)self _setFolderCache:a3];
  v4 = [(ASFolderHierarchy *)self folderCache];

  if (v4)
  {

    [(ASFolderHierarchy *)self _restoreFromSavedFoldersThatExternalClientsCareAbout];
  }
}

+ (void)cleanUpFilesForAccountWithId:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _folderCacheFilenameWithId:v4];
  v6 = v5;
  if (v5)
  {
    v7 = open([v5 fileSystemRepresentation], 0);
    if (v7 < 0)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = __error();
        v15 = strerror(*v14);
        v17 = 138412802;
        v18 = v12;
        v19 = 2112;
        v20 = v6;
        v21 = 2080;
        v22 = v15;
        _os_log_impl(&dword_24A0AC000, v10, v11, "%@ couldn't open file for deletion %@ %s", &v17, 0x20u);
      }
    }

    else
    {
      v8 = v7;
      flockWithProcessAssertion();
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      [v9 removeItemAtPath:v6 error:0];

      flockWithProcessAssertion();
      close(v8);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)folderIdsThatExternalClientsCareAbout
{
  v2 = [(ASFolderHierarchy *)self folderCache];
  v3 = [v2 objectForKeyedSubscript:@"FoldersExternalClientsCareAboutKey"];

  return v3;
}

- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(ASFolderHierarchy *)self folderIdsThatExternalClientsCareAbout];
  v6 = v5;
  if (a3 == 127 || !v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(ASFolderHierarchy *)self folderForID:v13, v18];
          v15 = v14;
          if (v14 && ([v14 dataclass] & a3) != 0)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setFolderIdsThatExternalClientsCareAbout:(id)a3
{
  v7 = a3;
  v4 = [(ASFolderHierarchy *)self folderCache];
  v5 = [v4 mutableCopy];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"FoldersExternalClientsCareAboutKey"];
  }

  else
  {
    [v5 removeObjectForKey:@"FoldersExternalClientsCareAboutKey"];
  }

  [(ASFolderHierarchy *)self _setFolderCache:v5];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ASAccountFoldersThatExternalClientsCareAboutExternallyChangedNotification", 0, 0, 1u);
}

- (void)_restoreFromSavedFoldersThatExternalClientsCareAbout
{
  v3 = [(ASFolderHierarchy *)self _savedFolderPathsThatExternalClientsCareAbout];
  if ([v3 count])
  {
    [(ASFolderHierarchy *)self _identityMatchAndSetFoldersThatExternalClientsCareAbout:v3];
    [(ASFolderHierarchy *)self _setSavedFolderPathsThatExternalClientsCareAbout:0];
  }
}

- (id)folderIdsForPersistentPush
{
  v2 = [(ASFolderHierarchy *)self folderCache];
  v3 = [v2 objectForKeyedSubscript:@"FoldersForPersistentPushKey"];

  return v3;
}

- (id)folderIdsForPersistentPushForClientID:(id)a3
{
  v4 = a3;
  v5 = [(ASFolderHierarchy *)self folderCache];
  v6 = [v5 objectForKeyedSubscript:@"FoldersForPersistentPushKey"];

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (id)folderIdsForPersistentPushForDataclasses:(int64_t)a3 clientID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(ASFolderHierarchy *)self folderIdsForPersistentPushForClientID:a4];
  v7 = v6;
  if (a3 == 127 || !v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [(ASFolderHierarchy *)self folderForID:v14, v19];
          v16 = v15;
          if (v15 && ([v15 dataclass] & a3) != 0)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setFolderIdsForPersistentPush:(id)a3 clientID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(ASFolderHierarchy *)self folderCache];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"FoldersForPersistentPushKey"];
  if (v9)
  {
    v10 = v9;
    if (!v11)
    {
      [v9 removeObjectForKey:v6];
      goto LABEL_8;
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v10 = objc_opt_new();
    [v10 setObject:v11 forKeyedSubscript:v6];
    v9 = v8;
  }

  [v9 setObject:? forKeyedSubscript:?];
LABEL_8:

LABEL_9:
  [(ASFolderHierarchy *)self _setFolderCache:v8];
}

@end