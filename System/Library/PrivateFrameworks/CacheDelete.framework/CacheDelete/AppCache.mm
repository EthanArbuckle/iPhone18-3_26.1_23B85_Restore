@interface AppCache
+ (id)appCacheWithRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 cacheDeleteVolume:(id)a9 isDataseparated:(BOOL)a10 isPlaceholder:(BOOL)a11 isPlugin:(BOOL)a12 telemetry:(id)a13;
+ (id)appCacheWithRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 isDataseparated:(BOOL)a9 isPlaceholder:(BOOL)a10 isPlugin:(BOOL)a11 telemetry:(id)a12;
+ (void)enumerateGroupCachesOnVolume:(id)a3 block:(id)a4;
+ (void)enumerateWithContainerQuery:(id)a3 container_class:(unint64_t)a4 options:(int)a5 telemetry:(id)a6 block:(id)a7;
- (AppCache)initWithBundleRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 cacheDeleteVolume:(id)a9 isDataseparated:(BOOL)a10 isPlaceholder:(BOOL)a11 isPlugin:(BOOL)a12 telemetry:(id)a13;
- (BOOL)moveCacheAside:(id)a3;
- (BOOL)validate;
- (id)cachePath;
- (id)description;
- (id)tmpPath;
- (int)urgency;
- (int64_t)three_days_ago;
- (unint64_t)caches:(BOOL)a3 purge:(BOOL)a4;
- (unint64_t)clearCaches:(BOOL)a3;
- (unint64_t)tmp:(BOOL)a3 purge:(BOOL)a4 all:(BOOL)a5;
- (void)addBundleRecord:(id)a3;
- (void)addBundleRecords:(id)a3;
- (void)invalidate;
- (void)setLastUsedTime:(id)a3;
@end

@implementation AppCache

- (id)description
{
  v32 = MEMORY[0x1E696AEC0];
  v3 = [(AppCache *)self identifier];
  v29 = [(AppCache *)self urgency];
  v4 = [(AppCache *)self lastUsed];
  v5 = humanReadableNumber([(AppCache *)self caches:0 purge:0]);
  v6 = humanReadableNumber([(AppCache *)self tmp:0 purge:0 all:0]);
  v33 = [(AppCache *)self lastKnownFreespace];
  v38 = humanReadableNumber([v33 unsignedLongLongValue]);
  v31 = [(AppCache *)self bundleIdentifiers];
  v30 = [v31 allObjects];
  v37 = [v30 componentsJoinedByString:{@", "}];
  v7 = [(AppCache *)self personaUniqueString];
  v35 = v4;
  v36 = v3;
  v34 = v5;
  if (v7)
  {
    v8 = [(AppCache *)self personaUniqueString];
  }

  else
  {
    v8 = @"none";
  }

  if ([(AppCache *)self isDataseparated])
  {
    v9 = " Dataseparated ";
  }

  else
  {
    v9 = "";
  }

  if ([(AppCache *)self isPlaceholder])
  {
    v10 = " Placeholder ";
  }

  else
  {
    v10 = "";
  }

  v11 = [(AppCache *)self dataContainerURL];
  v12 = [v11 fileSystemRepresentation];
  v13 = [(AppCache *)self userManagedAssetsURL];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@", user managed assets: %s", -[NSURL fileSystemRepresentation](self->_userManagedAssetsURL, "fileSystemRepresentation")];
    v27 = v12;
    v23 = v9;
    v25 = v10;
    v21 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, v29, v35, v34, v21, v38, v37, v8, v23, v25, v27, v14];
  }

  else
  {
    v28 = v12;
    v24 = v9;
    v26 = v10;
    v22 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, v29, v35, v34, v22, v38, v37, v8, v24, v26, v28, &stru_1F3876480];
  }

  if (v7)
  {
  }

  return v19;
}

- (AppCache)initWithBundleRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 cacheDeleteVolume:(id)a9 isDataseparated:(BOOL)a10 isPlaceholder:(BOOL)a11 isPlugin:(BOOL)a12 telemetry:(id)a13
{
  v58 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v52 = a5;
  v21 = a6;
  v51 = a7;
  v50 = a8;
  v22 = a9;
  v49 = a13;
  v53.receiver = self;
  v53.super_class = AppCache;
  v23 = [(AppCache *)&v53 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_15;
  }

  if (!v19 || !v20)
  {
    v30 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

LABEL_15:
      v34 = 0;
      goto LABEL_16;
    }

    *buf = 67109120;
    v55 = 97;
    v31 = "%d AppCache: cannot create an AppCache without an identifier and LSRecord(s)!";
    v32 = v30;
    v33 = 8;
LABEL_28:
    _os_log_error_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_14;
  }

  if (v21)
  {
    objc_storeStrong(&v23->_dataContainerURL, a6);
  }

  dataContainerURL = v24->_dataContainerURL;
  if (!dataContainerURL)
  {
    v30 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109378;
    v55 = 94;
    v56 = 2112;
    v57 = v20;
    v31 = "%d AppCache: cannot create an AppCache for %@ without dataContainerURL";
    v32 = v30;
    v33 = 18;
    goto LABEL_28;
  }

  if (v22)
  {
    if (!initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v22, "freespace")}];
      v27 = initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace;
      initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace = v26;
    }

    v28 = v22;
    cdVol = v24->_cdVol;
    v24->_cdVol = v28;
  }

  else
  {
    cdVol = [MEMORY[0x1E696AEC0] stringWithUTF8String:{-[NSURL fileSystemRepresentation](dataContainerURL, "fileSystemRepresentation")}];
    v37 = [CacheDeleteVolume volumeWithPath:cdVol];
    v38 = v24->_cdVol;
    v24->_cdVol = v37;
  }

  if (!v24->_cdVol)
  {
    goto LABEL_15;
  }

  if (!a12)
  {
    objc_storeStrong(&v24->_userManagedAssetsURL, a7);
  }

  v39 = [v19 mutableCopy];
  bundleIdentifiers = v24->_bundleIdentifiers;
  v24->_bundleIdentifiers = v39;

  v41 = v52;
  if (v52)
  {
    v41 = [v52 mutableCopy];
  }

  groupContainerIdentifiers = v24->_groupContainerIdentifiers;
  v24->_groupContainerIdentifiers = v41;

  objc_storeStrong(&v24->_identifier, a4);
  objc_storeStrong(&v24->_personaUniqueString, a8);
  v24->_isPlaceholder = a11;
  v24->_isPlugin = a12;
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AppCache tmp:purge:all:](v24, "tmp:purge:all:", 0, 0, 0)}];
  lastKnownTmpSize = v24->_lastKnownTmpSize;
  v24->_lastKnownTmpSize = v43;

  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AppCache caches:purge:](v24, "caches:purge:", 0, 0)}];
  lastKnownCacheSize = v24->_lastKnownCacheSize;
  v24->_lastKnownCacheSize = v45;

  if (initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace)
  {
    v47 = initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v24->_cdVol, "freespace")}];
  }

  lastKnownFreespace = v24->_lastKnownFreespace;
  v24->_lastKnownFreespace = v47;

  objc_storeStrong(&v24->_telemetry, a13);
  v24->_timestamp = nan("");
  v34 = v24;
LABEL_16:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (id)appCacheWithRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 isDataseparated:(BOOL)a9 isPlaceholder:(BOOL)a10 isPlugin:(BOOL)a11 telemetry:(id)a12
{
  v40 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a12;
  if (!v18)
  {
    v26 = CDGetLogHandle("client");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "AppCache: identifier is required";
LABEL_10:
      v29 = v26;
      v30 = 2;
LABEL_11:
      _os_log_error_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  if (!v20)
  {
    v26 = CDGetLogHandle("client");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "AppCache: dataContainerURL is required";
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  BYTE2(v33) = a11;
  LOWORD(v33) = __PAIR16__(a10, a9);
  v24 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v17 groupIdentifiers:v18 dataContainerURL:v19 userManagedAssetsURL:v20 personaUniqueString:v21 cacheDeleteVolume:v22 isDataseparated:0 isPlaceholder:v33 isPlugin:v23 telemetry:?];
  v25 = CDGetLogHandle("client");
  v26 = v25;
  if (!v24)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v37 = v18;
    v28 = "AppCache: unable to create AppCache for %@";
    v29 = v26;
    v30 = 12;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(AppCache *)v24 identifier];
    v35 = [(AppCache *)v24 lastKnownCacheSize];
    v34 = humanReadableNumber([v35 unsignedLongLongValue]);
    *buf = 138412546;
    v37 = v27;
    v38 = 2112;
    v39 = v34;
    _os_log_impl(&dword_1BA7F1000, v26, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);
  }

LABEL_14:

  v31 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)appCacheWithRecords:(id)a3 identifier:(id)a4 groupIdentifiers:(id)a5 dataContainerURL:(id)a6 userManagedAssetsURL:(id)a7 personaUniqueString:(id)a8 cacheDeleteVolume:(id)a9 isDataseparated:(BOOL)a10 isPlaceholder:(BOOL)a11 isPlugin:(BOOL)a12 telemetry:(id)a13
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a13;
  if (!v18)
  {
    v28 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v26 = 0;
      v25 = v37;
      goto LABEL_10;
    }

    *buf = 0;
    v30 = "AppCache: identifier is required";
LABEL_17:
    _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_9;
  }

  if (!v20)
  {
    v28 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v30 = "AppCache: dataContainerURL is required";
    goto LABEL_17;
  }

  BYTE2(v33) = a12;
  LOWORD(v33) = __PAIR16__(a11, a10);
  v25 = v37;
  v26 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v37 groupIdentifiers:v18 dataContainerURL:v19 userManagedAssetsURL:v20 personaUniqueString:v21 cacheDeleteVolume:v22 isDataseparated:v23 isPlaceholder:v33 isPlugin:v24 telemetry:?];
  v27 = CDGetLogHandle("client");
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [(AppCache *)v26 identifier];
      v29 = v36 = v19;
      v35 = [(AppCache *)v26 lastKnownCacheSize];
      v34 = humanReadableNumber([v35 unsignedLongLongValue]);
      *buf = 138412546;
      v39 = v29;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);

      v19 = v36;
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v18;
      _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, "AppCache: unable to create AppCache for %@", buf, 0xCu);
    }

    v26 = 0;
  }

LABEL_10:

  v31 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)addBundleRecord:(id)a3
{
  v12 = a3;
  v4 = [(AppCache *)self bundleIdentifiers];
  v5 = [v12 bundleIdentifier];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(AppCache *)self dataContainerURL];
    v8 = [v12 dataContainerURL];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(AppCache *)self bundleIdentifiers];
      v11 = [v12 bundleIdentifier];
      [v10 addObject:v11];
    }
  }
}

- (void)addBundleRecords:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AppCache *)self addBundleRecord:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int)urgency
{
  v2 = [(AppCache *)self lastUsed];
  v3 = urgencyForDate(v2);

  return v3;
}

- (id)cachePath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(v3, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"Library/Caches"];

  return v5;
}

- (id)tmpPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(v3, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];

  return v5;
}

- (void)setLastUsedTime:(id)a3
{
  v6 = a3;
  v4 = [(AppCache *)self lastUsed];
  v5 = v4;
  if (!v4 || [v4 compare:v6] == -1)
  {
    [(AppCache *)self setLastUsed:v6];
  }
}

- (void)invalidate
{
  v3 = nan("");

  [(AppCache *)self setTimestamp:v3];
}

- (BOOL)validate
{
  v3 = [(AppCache *)self cachePath];
  v4 = access([v3 UTF8String], 0);

  if (v4)
  {
    return 0;
  }

  [(AppCache *)self timestamp];
  v5 = MEMORY[0x1E695DF00];
  [(AppCache *)self timestamp];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = validateTimestamp(v6, 3600.0);

  if (!v7)
  {
    return 0;
  }

  cdVol = self->_cdVol;
  v9 = [(AppCache *)self lastKnownFreespace];
  LOBYTE(cdVol) = -[CacheDeleteVolume freespaceIsStale:](cdVol, "freespaceIsStale:", [v9 unsignedLongLongValue]);

  return cdVol ^ 1;
}

- (int64_t)three_days_ago
{
  v10 = *MEMORY[0x1E69E9840];
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  if (gettimeofday(&v7, 0))
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v9 = v6;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "gettimeofday failed: %s", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v7.tv_sec - 259200;
}

- (unint64_t)tmp:(BOOL)a3 purge:(BOOL)a4 all:(BOOL)a5
{
  v30 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v5 = a4;
    if (!a3)
    {
      [(AppCache *)self validate];
    }

    v7 = MEMORY[0x1E696AD98];
    v8 = [(AppCache *)self tmpPath];
    v9 = [v7 numberWithUnsignedLongLong:{size_dir(objc_msgSend(v8, "UTF8String"))}];
    [(AppCache *)self setLastKnownTmpSize:v9];

    if (!v5)
    {
      v21 = [(AppCache *)self lastKnownTmpSize];
      v22 = [v21 unsignedLongLongValue];

      v23 = *MEMORY[0x1E69E9840];
      return v22;
    }

    v10 = [(AppCache *)self tmpPath];
    v11 = [(AppCache *)self moveCacheAside:v10];

    if (!v11)
    {
      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(AppCache *)self identifier];
        v27[0] = 67109378;
        v27[1] = 291;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside tmp, clearing in place", v27, 0x12u);
      }

      v14 = [(AppCache *)self tmpPath];
      nuke_dir([v14 UTF8String], 1);
    }

    v15 = [(AppCache *)self tmpPath];
    v16 = size_dir([v15 UTF8String]);

    v17 = [(AppCache *)self lastKnownTmpSize];
    v18 = [v17 unsignedLongLongValue];

    if (v18 <= v16)
    {
      v20 = 0;
    }

    else
    {
      v19 = [(AppCache *)self lastKnownTmpSize];
      v20 = [v19 unsignedLongLongValue] - v16;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
    [(AppCache *)self setLastKnownTmpSize:v25];
  }

  else
  {
    v20 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)moveCacheAside:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AppCache *)self cdVol];
  v6 = discardedCachesPathForVolume(v5);

  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 67109378;
    *v36 = 311;
    *&v36[4] = 2112;
    *&v36[6] = v6;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "%d parent discardedCachesPath: %@", &v35, 0x12u);
  }

  if (v6)
  {
    if (!mkdir([v6 UTF8String], 0x1C0u) || *__error() == 17)
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v8 UUIDString];
      v10 = [v6 stringByAppendingPathComponent:v9];

      v11 = CDGetLogHandle("client");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 67109378;
        *v36 = 328;
        *&v36[4] = 2112;
        *&v36[6] = v10;
        _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d child discardedCachesPath: %@", &v35, 0x12u);
      }

      if (mkdir([v10 UTF8String], 0x1C0u) && *__error() != 17)
      {
        v16 = CDGetLogHandle("client");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v29 = [v10 UTF8String];
          v30 = __error();
          v31 = strerror(*v30);
          v35 = 136315394;
          *v36 = v29;
          *&v36[8] = 2080;
          *&v36[10] = v31;
          _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "mkdir failed for %s : %s", &v35, 0x16u);
        }
      }

      else
      {
        v12 = [v4 UTF8String];
        v13 = [v10 UTF8String];
        rename(v12, v13, v14);
        if (!v15)
        {
          if (!mkdir([v4 UTF8String], 0x1C0u))
          {
            v22 = 1;
            goto LABEL_24;
          }

          v16 = CDGetLogHandle("client");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v32 = [v4 UTF8String];
            v33 = __error();
            v34 = strerror(*v33);
            v35 = 136315394;
            *v36 = v32;
            *&v36[8] = 2080;
            *&v36[10] = v34;
            _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "Unable to re-create Caches directory at: %s : %s", &v35, 0x16u);
          }

          v22 = 1;
          goto LABEL_22;
        }

        v16 = CDGetLogHandle("client");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [(AppCache *)self cachePath];
          v18 = [v17 UTF8String];
          v19 = [v10 UTF8String];
          v20 = __error();
          v21 = strerror(*v20);
          v35 = 136315650;
          *v36 = v18;
          *&v36[8] = 2080;
          *&v36[10] = v19;
          v37 = 2080;
          v38 = v21;
          _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "rename failed for %s -> %s : %s", &v35, 0x20u);
        }
      }

      v22 = 0;
LABEL_22:
      v6 = v10;
      goto LABEL_23;
    }

    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = [v6 UTF8String];
      v27 = __error();
      v28 = strerror(*v27);
      v35 = 136315394;
      *v36 = v26;
      *&v36[8] = 2080;
      *&v36[10] = v28;
      _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "mkdir failed for %s : %s", &v35, 0x16u);
    }
  }

  else
  {
    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = [(CacheDeleteVolume *)self->_cdVol mountPoint];
      v35 = 138412290;
      *v36 = v25;
      _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "AppCache moveCacheAside: Unable to create destination path for mount point: %@", &v35, 0xCu);
    }

    v6 = 0;
  }

  v22 = 0;
LABEL_23:

  v10 = v6;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (unint64_t)caches:(BOOL)a3 purge:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  if (a3)
  {
LABEL_16:
    v26 = MEMORY[0x1E696AD98];
    v27 = [(AppCache *)self cachePath];
    v28 = [v26 numberWithUnsignedLongLong:{size_dir(objc_msgSend(v27, "UTF8String"))}];
    [(AppCache *)self setLastKnownCacheSize:v28];

    v29 = [MEMORY[0x1E695DF00] date];
    [v29 timeIntervalSinceReferenceDate];
    [(AppCache *)self setTimestamp:?];

    if (v4)
    {
      goto LABEL_5;
    }

LABEL_17:
    v25 = [(AppCache *)self lastKnownCacheSize];
    v23 = [v25 unsignedLongLongValue];
    goto LABEL_18;
  }

  v6 = [(AppCache *)self lastKnownCacheSize];
  if (![v6 unsignedLongLongValue])
  {

    goto LABEL_16;
  }

  v7 = [(AppCache *)self validate];

  if (!v7)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_5:
  v8 = CDGetLogHandle("client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AppCache *)self identifier];
    v10 = [(AppCache *)self lastKnownCacheSize];
    v11 = MEMORY[0x1E695DF00];
    [(AppCache *)self timestamp];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v36 = 67109890;
    v37 = 365;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEFAULT, "%d %@ purging cache, self.lastKnownCacheSize: %@ at %@", &v36, 0x26u);
  }

  v13 = [(AppCache *)self cachePath];
  v14 = [(AppCache *)self moveCacheAside:v13];

  if (!v14)
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(AppCache *)self identifier];
      v36 = 67109378;
      v37 = 367;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside cache, clearing in place", &v36, 0x12u);
    }

    v17 = [(AppCache *)self cachePath];
    nuke_dir([v17 UTF8String], 1);
  }

  v18 = [(AppCache *)self cachePath];
  v19 = size_dir([v18 UTF8String]);

  v20 = [(AppCache *)self lastKnownCacheSize];
  v21 = [v20 unsignedLongLongValue];

  if (v21 <= v19)
  {
    v23 = 0;
  }

  else
  {
    v22 = [(AppCache *)self lastKnownCacheSize];
    v23 = [v22 unsignedLongLongValue] - v19;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
  [(AppCache *)self setLastKnownCacheSize:v24];

  v25 = [MEMORY[0x1E695DF00] date];
  [v25 timeIntervalSinceReferenceDate];
  [(AppCache *)self setTimestamp:?];
LABEL_18:

  v30 = [(AppCache *)self telemetry];

  if (v30)
  {
    v31 = CDGetLogHandle("client");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v32 = " purge";
      }

      else
      {
        v32 = "";
      }

      v33 = [(AppCache *)self cachePath];
      v36 = 67109890;
      v37 = 382;
      v38 = 2080;
      v39 = v32;
      v40 = 2048;
      v41 = v23;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_DEFAULT, "%d%s caches result: %llu on %@", &v36, 0x26u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v23;
}

- (unint64_t)clearCaches:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [(AppCache *)self bundleIdentifiers];
  v6 = [v5 allObjects];

  v7 = 0;
  v8 = -3;
  *&v9 = 138412290;
  v17 = v9;
  do
  {
    v10 = [(AppCache *)self telemetry];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __24__AppCache_clearCaches___block_invoke;
    v18[3] = &unk_1E7F02FC0;
    v18[4] = self;
    v18[5] = &v20;
    v19 = a3;
    v11 = assert_group_cache_deletion(v10, v6, v18, &__block_literal_global_9);

    v12 = CDGetLogHandle("client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v17;
      v25 = v11;
      _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "clearCaches assert_group_cache_deletion retryIDs: %@", buf, 0xCu);
    }

    if (__CFADD__(v8++, 1))
    {
      break;
    }

    v7 = v11;
  }

  while ([v11 count]);
  v14 = v21[3];

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __24__AppCache_clearCaches___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) caches:0 purge:1];
  *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) tmp:0 purge:1 all:*(a1 + 48)];
  v2 = CDGetLogHandle("client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = [*(a1 + 32) identifier];
    v5 = [*(a1 + 32) cachePath];
    v7[0] = 67109890;
    v7[1] = 398;
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_DEFAULT, "%d clearCaches result: %llu for %@ on %@", v7, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __24__AppCache_clearCaches___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDGetLogHandle("client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "AppCache clearCaches: Unable to clear caches for %@ : %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateWithContainerQuery:(id)a3 container_class:(unint64_t)a4 options:(int)a5 telemetry:(id)a6 block:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = a7;
  v12 = objc_autoreleasePoolPush();
  if (container_query_create())
  {
    v13 = [MEMORY[0x1E69DF068] sharedManager];
    v14 = [v13 listAllPersonaWithAttributes];
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v21 = v14;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v15 = v14;
    iterate_results_sync = container_query_iterate_results_sync();
    container_query_get_last_error();
    v17 = container_error_copy_unlocalized_description();
    v18 = CDGetLogHandle("client");
    v19 = v18;
    if (iterate_results_sync)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v26 = v17;
        _os_log_debug_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_DEBUG, "container_query_iterate_results_sync succeeded; %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = v17;
      _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "container_query_iterate_results_sync failed; %s", buf, 0xCu);
    }

    free(v17);
    container_query_free();
  }

  else
  {
    v13 = CDGetLogHandle("client");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEFAULT, "container_query_create failed", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v12);
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __80__AppCache_enumerateWithContainerQuery_container_class_options_telemetry_block___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  path = container_get_path();
  v4 = CDGetLogHandle("client");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (path)
  {
    if (v5)
    {
      *buf = 136315138;
      v67 = path;
      _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "path: %s\n", buf, 0xCu);
    }

    v50 = path;

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_identifier()];
    persona_unique_string = container_get_persona_unique_string();
    v53 = a1;
    if (persona_unique_string)
    {
      v54 = v4;
      v51 = v2;
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v62;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v62 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v61 + 1) + 8 * i);
            v15 = [v14 userPersonaUniqueString];
            v16 = [v15 isEqualToString:v7];

            if (v16)
            {
              v11 = [v14 isDataSeparatedPersona];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      v2 = v51;
      v4 = v54;
    }

    else
    {
      v7 = 0;
      v11 = 0;
    }

    v60 = 0;
    v17 = [MEMORY[0x1E6963628] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:1 error:&v60];
    v18 = v60;
    v19 = v18;
    if (!v17 || v18)
    {
      v31 = CDGetLogHandle("client");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v67 = v4;
        v68 = 2112;
        v69 = v19;
        _os_log_error_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_ERROR, "Unable to create an LSBundleRecord for %@ : %@", buf, 0x16u);
      }
    }

    else
    {
      v20 = [v17 UIBackgroundModes];
      if (([v20 containsObject:@"continuous"]& 1) != 0)
      {
LABEL_51:

        goto LABEL_52;
      }

      v49 = v20;
      v55 = v4;
      v21 = [v17 bundleIdentifier];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || *(v53 + 72) == 3)
      {
        v22 = [v17 containingBundleRecord];
        v23 = [v22 bundleIdentifier];

        v24 = [v17 infoDictionary];
        v25 = [v24 objectForKey:@"NSExtension" ofClass:objc_opt_class()];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 objectForKeyedSubscript:@"CacheDeleteInfo"];

          if (v27)
          {
            v28 = CDGetLogHandle("client");
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_48;
            }

            *buf = 138412290;
            v67 = v23;
            v29 = "skipping CacheDelete extension: %@";
            v30 = v28;
LABEL_47:
            _os_log_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
LABEL_48:

LABEL_49:
            v4 = v55;
            goto LABEL_50;
          }
        }

        v48 = 1;
      }

      else
      {
        v48 = 0;
        v23 = v21;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v24 = *(v53 + 40);
      v32 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v57;
LABEL_36:
        v35 = 0;
        while (1)
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(v24);
          }

          if ([v23 containsString:*(*(&v56 + 1) + 8 * v35)])
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v33)
            {
              goto LABEL_36;
            }

            goto LABEL_42;
          }
        }

        v26 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v28 = [v17 bundleIdentifier];
        *buf = 138412290;
        v67 = v28;
        v29 = "skipping excluded App %@";
        v30 = v26;
        goto LABEL_47;
      }

LABEL_42:

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v55;
        if ([v17 isPlaceholder])
        {
          v47 = 1;
        }

        else
        {
          v47 = [v17 isSystemPlaceholder];
        }
      }

      else
      {
        v47 = 0;
        v4 = v55;
      }

      v24 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v50 isDirectory:1 relativeToURL:0];
      v38 = 0;
      if ((*(v53 + 80) & 2) != 0)
      {
        user_managed_assets_relative_path = container_get_user_managed_assets_relative_path();
        if (!user_managed_assets_relative_path)
        {
          v26 = CDGetLogHandle("client");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v67 = v4;
            _os_log_debug_impl(&dword_1BA7F1000, v26, OS_LOG_TYPE_DEBUG, "%@ does not have a user managed assets path, skipping", buf, 0xCu);
          }

LABEL_50:

          v20 = v49;
          goto LABEL_51;
        }

        v38 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:user_managed_assets_relative_path isDirectory:1 relativeToURL:v24];
      }

      if (v24)
      {
        v52 = v2;
        v40 = MEMORY[0x1E695DFD8];
        v46 = [v17 bundleIdentifier];
        v41 = [v40 setWithObject:v46];
        v42 = [v17 groupContainerIdentifiers];
        BYTE2(v45) = v48;
        BYTE1(v45) = v47;
        LOBYTE(v45) = v11 & 1;
        v4 = v55;
        v43 = [AppCache appCacheWithRecords:"appCacheWithRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v41 groupIdentifiers:v55 dataContainerURL:v42 userManagedAssetsURL:v24 personaUniqueString:v38 cacheDeleteVolume:v7 isDataseparated:*(v53 + 48) isPlaceholder:v45 isPlugin:*(v53 + 56) telemetry:?];

        if (v43)
        {
          (*(*(v53 + 64) + 16))();
        }

        else
        {
          v44 = CDGetLogHandle("client");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v67 = v17;
            _os_log_error_impl(&dword_1BA7F1000, v44, OS_LOG_TYPE_ERROR, "Unable to create AppCache for %@", buf, 0xCu);
          }
        }

        v2 = v52;
      }

      v19 = 0;
      v31 = v49;
    }

LABEL_52:
    goto LABEL_53;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "data container path is not returned:", buf, 2u);
  }

LABEL_53:

  objc_autoreleasePoolPop(v2);
  v36 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (void)enumerateGroupCachesOnVolume:(id)a3 block:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = getRootVolume();
  if (v8)
  {
    v9 = container_query_create();
    v10 = v9;
    if (v5)
    {
      v25 = v6;
      v11 = v7;
      empty = xpc_array_create_empty();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = xpc_string_create([*(*(&v27 + 1) + 8 * i) UTF8String]);
            xpc_array_append_value(empty, v18);
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v15);
      }

      v7 = v11;
      v6 = v25;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      empty = 0;
      if (v9)
      {
LABEL_11:
        container_query_set_class();
        container_query_operation_set_flags();
        if (empty)
        {
          container_query_set_group_identifiers();
        }

        container_query_set_include_other_owners();
        v26 = v6;
        iterate_results_sync = container_query_iterate_results_sync();
        container_query_get_last_error();
        v20 = container_error_copy_unlocalized_description();
        v21 = CDGetLogHandle("client");
        v22 = v21;
        if (iterate_results_sync)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v32 = v20;
            _os_log_debug_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEBUG, "container_query_iterate_results_sync succeeded; %s", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v32 = v20;
          _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, "container_query_iterate_results_sync failed; %s", buf, 0xCu);
        }

        free(v20);
        container_query_free();
        v23 = v26;
LABEL_24:

        goto LABEL_25;
      }
    }

    v23 = CDGetLogHandle("client");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_DEFAULT, "container_query_create failed", buf, 2u);
    }

    goto LABEL_24;
  }

  empty = CDGetLogHandle("client");
  if (os_log_type_enabled(empty, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA7F1000, empty, OS_LOG_TYPE_ERROR, "No root volume, unable to enumerate apps!", buf, 2u);
  }

LABEL_25:

  objc_autoreleasePoolPop(v7);
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __47__AppCache_enumerateGroupCachesOnVolume_block___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  path = container_get_path();
  if (path)
  {
    v3 = path;
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = v3;
      _os_log_debug_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEBUG, "group path: %s\n", &v11, 0xCu);
    }

    v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v5, "fileSystemRepresentation")}];
    v7 = [v6 stringByAppendingPathComponent:@"Library/Caches"];

    if (size_dir([v7 UTF8String]))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_identifier()];
      (*(*(a1 + 32) + 16))();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

@end