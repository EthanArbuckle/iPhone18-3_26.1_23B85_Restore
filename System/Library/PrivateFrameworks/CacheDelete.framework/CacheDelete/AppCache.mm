@interface AppCache
+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3;
+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string isDataseparated:(BOOL)dataseparated isPlaceholder:(BOOL)self0 isPlugin:(BOOL)self1 telemetry:(id)self2;
+ (void)enumerateGroupCachesOnVolume:(id)volume block:(id)block;
+ (void)enumerateWithContainerQuery:(id)query container_class:(unint64_t)container_class options:(int)options telemetry:(id)telemetry block:(id)block;
- (AppCache)initWithBundleRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3;
- (BOOL)moveCacheAside:(id)aside;
- (BOOL)validate;
- (id)cachePath;
- (id)description;
- (id)tmpPath;
- (int)urgency;
- (int64_t)three_days_ago;
- (unint64_t)caches:(BOOL)caches purge:(BOOL)purge;
- (unint64_t)clearCaches:(BOOL)caches;
- (unint64_t)tmp:(BOOL)tmp purge:(BOOL)purge all:(BOOL)all;
- (void)addBundleRecord:(id)record;
- (void)addBundleRecords:(id)records;
- (void)invalidate;
- (void)setLastUsedTime:(id)time;
@end

@implementation AppCache

- (id)description
{
  v32 = MEMORY[0x1E696AEC0];
  identifier = [(AppCache *)self identifier];
  urgency = [(AppCache *)self urgency];
  lastUsed = [(AppCache *)self lastUsed];
  v5 = humanReadableNumber([(AppCache *)self caches:0 purge:0]);
  v6 = humanReadableNumber([(AppCache *)self tmp:0 purge:0 all:0]);
  lastKnownFreespace = [(AppCache *)self lastKnownFreespace];
  v38 = humanReadableNumber([lastKnownFreespace unsignedLongLongValue]);
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  allObjects = [bundleIdentifiers allObjects];
  v37 = [allObjects componentsJoinedByString:{@", "}];
  personaUniqueString = [(AppCache *)self personaUniqueString];
  v35 = lastUsed;
  v36 = identifier;
  v34 = v5;
  if (personaUniqueString)
  {
    personaUniqueString2 = [(AppCache *)self personaUniqueString];
  }

  else
  {
    personaUniqueString2 = @"none";
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

  dataContainerURL = [(AppCache *)self dataContainerURL];
  fileSystemRepresentation = [dataContainerURL fileSystemRepresentation];
  userManagedAssetsURL = [(AppCache *)self userManagedAssetsURL];
  if (userManagedAssetsURL)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@", user managed assets: %s", -[NSURL fileSystemRepresentation](self->_userManagedAssetsURL, "fileSystemRepresentation")];
    v27 = fileSystemRepresentation;
    v23 = v9;
    v25 = v10;
    v21 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, urgency, v35, v34, v21, v38, v37, personaUniqueString2, v23, v25, v27, v14];
  }

  else
  {
    v28 = fileSystemRepresentation;
    v24 = v9;
    v26 = v10;
    v22 = v6;
    v15 = v6;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = [v32 stringWithFormat:@"identifier: %@, urgency: %d, lastUsed: %@, cacheSize: %@, tmpSize: %@, freespace: %@ bundleRecords: [ %@ ], persona: %@%s%s, data container: %s%@", v36, urgency, v35, v34, v22, v38, v37, personaUniqueString2, v24, v26, v28, &stru_1F3876480];
  }

  if (personaUniqueString)
  {
  }

  return v19;
}

- (AppCache)initWithBundleRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3
{
  v58 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  volumeCopy = volume;
  telemetryCopy = telemetry;
  v53.receiver = self;
  v53.super_class = AppCache;
  v23 = [(AppCache *)&v53 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_15;
  }

  if (!recordsCopy || !identifierCopy)
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

  if (lCopy)
  {
    objc_storeStrong(&v23->_dataContainerURL, l);
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
    v57 = identifierCopy;
    v31 = "%d AppCache: cannot create an AppCache for %@ without dataContainerURL";
    v32 = v30;
    v33 = 18;
    goto LABEL_28;
  }

  if (volumeCopy)
  {
    if (!initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(volumeCopy, "freespace")}];
      v27 = initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace;
      initWithBundleRecords_identifier_groupIdentifiers_dataContainerURL_userManagedAssetsURL_personaUniqueString_cacheDeleteVolume_isDataseparated_isPlaceholder_isPlugin_telemetry__cdVolFreespace = v26;
    }

    v28 = volumeCopy;
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

  if (!plugin)
  {
    objc_storeStrong(&v24->_userManagedAssetsURL, rL);
  }

  v39 = [recordsCopy mutableCopy];
  bundleIdentifiers = v24->_bundleIdentifiers;
  v24->_bundleIdentifiers = v39;

  v41 = identifiersCopy;
  if (identifiersCopy)
  {
    v41 = [identifiersCopy mutableCopy];
  }

  groupContainerIdentifiers = v24->_groupContainerIdentifiers;
  v24->_groupContainerIdentifiers = v41;

  objc_storeStrong(&v24->_identifier, identifier);
  objc_storeStrong(&v24->_personaUniqueString, string);
  v24->_isPlaceholder = placeholder;
  v24->_isPlugin = plugin;
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

  objc_storeStrong(&v24->_telemetry, telemetry);
  v24->_timestamp = nan("");
  v34 = v24;
LABEL_16:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string isDataseparated:(BOOL)dataseparated isPlaceholder:(BOOL)self0 isPlugin:(BOOL)self1 telemetry:(id)self2
{
  v40 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  telemetryCopy = telemetry;
  if (!identifierCopy)
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

  if (!lCopy)
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

  BYTE2(v33) = plugin;
  LOWORD(v33) = __PAIR16__(placeholder, dataseparated);
  v24 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:recordsCopy groupIdentifiers:identifierCopy dataContainerURL:identifiersCopy userManagedAssetsURL:lCopy personaUniqueString:rLCopy cacheDeleteVolume:stringCopy isDataseparated:0 isPlaceholder:v33 isPlugin:telemetryCopy telemetry:?];
  v25 = CDGetLogHandle("client");
  v26 = v25;
  if (!v24)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v37 = identifierCopy;
    v28 = "AppCache: unable to create AppCache for %@";
    v29 = v26;
    v30 = 12;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(AppCache *)v24 identifier];
    lastKnownCacheSize = [(AppCache *)v24 lastKnownCacheSize];
    v34 = humanReadableNumber([lastKnownCacheSize unsignedLongLongValue]);
    *buf = 138412546;
    v37 = identifier;
    v38 = 2112;
    v39 = v34;
    _os_log_impl(&dword_1BA7F1000, v26, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);
  }

LABEL_14:

  v31 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)appCacheWithRecords:(id)records identifier:(id)identifier groupIdentifiers:(id)identifiers dataContainerURL:(id)l userManagedAssetsURL:(id)rL personaUniqueString:(id)string cacheDeleteVolume:(id)volume isDataseparated:(BOOL)self0 isPlaceholder:(BOOL)self1 isPlugin:(BOOL)self2 telemetry:(id)self3
{
  v42 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  stringCopy = string;
  volumeCopy = volume;
  telemetryCopy = telemetry;
  if (!identifierCopy)
  {
    v28 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v26 = 0;
      v25 = recordsCopy;
      goto LABEL_10;
    }

    *buf = 0;
    v30 = "AppCache: identifier is required";
LABEL_17:
    _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_9;
  }

  if (!lCopy)
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

  BYTE2(v33) = plugin;
  LOWORD(v33) = __PAIR16__(placeholder, dataseparated);
  v25 = recordsCopy;
  v26 = [AppCache initWithBundleRecords:"initWithBundleRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:cacheDeleteVolume:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:recordsCopy groupIdentifiers:identifierCopy dataContainerURL:identifiersCopy userManagedAssetsURL:lCopy personaUniqueString:rLCopy cacheDeleteVolume:stringCopy isDataseparated:volumeCopy isPlaceholder:v33 isPlugin:telemetryCopy telemetry:?];
  v27 = CDGetLogHandle("client");
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [(AppCache *)v26 identifier];
      v29 = v36 = identifiersCopy;
      lastKnownCacheSize = [(AppCache *)v26 lastKnownCacheSize];
      v34 = humanReadableNumber([lastKnownCacheSize unsignedLongLongValue]);
      *buf = 138412546;
      v39 = v29;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_DEFAULT, "AppCache: created an app cache - identifier: %@, cacheSize: %@", buf, 0x16u);

      identifiersCopy = v36;
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = identifierCopy;
      _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, "AppCache: unable to create AppCache for %@", buf, 0xCu);
    }

    v26 = 0;
  }

LABEL_10:

  v31 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)addBundleRecord:(id)record
{
  recordCopy = record;
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  bundleIdentifier = [recordCopy bundleIdentifier];
  v6 = [bundleIdentifiers containsObject:bundleIdentifier];

  if ((v6 & 1) == 0)
  {
    dataContainerURL = [(AppCache *)self dataContainerURL];
    dataContainerURL2 = [recordCopy dataContainerURL];
    v9 = [dataContainerURL isEqual:dataContainerURL2];

    if (v9)
    {
      bundleIdentifiers2 = [(AppCache *)self bundleIdentifiers];
      bundleIdentifier2 = [recordCopy bundleIdentifier];
      [bundleIdentifiers2 addObject:bundleIdentifier2];
    }
  }
}

- (void)addBundleRecords:(id)records
{
  v15 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [recordsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(recordsCopy);
        }

        [(AppCache *)self addBundleRecord:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [recordsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int)urgency
{
  lastUsed = [(AppCache *)self lastUsed];
  v3 = urgencyForDate(lastUsed);

  return v3;
}

- (id)cachePath
{
  v2 = MEMORY[0x1E696AEC0];
  dataContainerURL = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(dataContainerURL, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"Library/Caches"];

  return v5;
}

- (id)tmpPath
{
  v2 = MEMORY[0x1E696AEC0];
  dataContainerURL = [(AppCache *)self dataContainerURL];
  v4 = [v2 stringWithUTF8String:{objc_msgSend(dataContainerURL, "fileSystemRepresentation")}];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];

  return v5;
}

- (void)setLastUsedTime:(id)time
{
  timeCopy = time;
  lastUsed = [(AppCache *)self lastUsed];
  v5 = lastUsed;
  if (!lastUsed || [lastUsed compare:timeCopy] == -1)
  {
    [(AppCache *)self setLastUsed:timeCopy];
  }
}

- (void)invalidate
{
  v3 = nan("");

  [(AppCache *)self setTimestamp:v3];
}

- (BOOL)validate
{
  cachePath = [(AppCache *)self cachePath];
  v4 = access([cachePath UTF8String], 0);

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
  lastKnownFreespace = [(AppCache *)self lastKnownFreespace];
  LOBYTE(cdVol) = -[CacheDeleteVolume freespaceIsStale:](cdVol, "freespaceIsStale:", [lastKnownFreespace unsignedLongLongValue]);

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

- (unint64_t)tmp:(BOOL)tmp purge:(BOOL)purge all:(BOOL)all
{
  v30 = *MEMORY[0x1E69E9840];
  if (all)
  {
    purgeCopy = purge;
    if (!tmp)
    {
      [(AppCache *)self validate];
    }

    v7 = MEMORY[0x1E696AD98];
    tmpPath = [(AppCache *)self tmpPath];
    v9 = [v7 numberWithUnsignedLongLong:{size_dir(objc_msgSend(tmpPath, "UTF8String"))}];
    [(AppCache *)self setLastKnownTmpSize:v9];

    if (!purgeCopy)
    {
      lastKnownTmpSize = [(AppCache *)self lastKnownTmpSize];
      unsignedLongLongValue = [lastKnownTmpSize unsignedLongLongValue];

      v23 = *MEMORY[0x1E69E9840];
      return unsignedLongLongValue;
    }

    tmpPath2 = [(AppCache *)self tmpPath];
    v11 = [(AppCache *)self moveCacheAside:tmpPath2];

    if (!v11)
    {
      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(AppCache *)self identifier];
        v27[0] = 67109378;
        v27[1] = 291;
        v28 = 2112;
        v29 = identifier;
        _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside tmp, clearing in place", v27, 0x12u);
      }

      tmpPath3 = [(AppCache *)self tmpPath];
      nuke_dir([tmpPath3 UTF8String], 1);
    }

    tmpPath4 = [(AppCache *)self tmpPath];
    v16 = size_dir([tmpPath4 UTF8String]);

    lastKnownTmpSize2 = [(AppCache *)self lastKnownTmpSize];
    unsignedLongLongValue2 = [lastKnownTmpSize2 unsignedLongLongValue];

    if (unsignedLongLongValue2 <= v16)
    {
      v20 = 0;
    }

    else
    {
      lastKnownTmpSize3 = [(AppCache *)self lastKnownTmpSize];
      v20 = [lastKnownTmpSize3 unsignedLongLongValue] - v16;
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

- (BOOL)moveCacheAside:(id)aside
{
  v39 = *MEMORY[0x1E69E9840];
  asideCopy = aside;
  cdVol = [(AppCache *)self cdVol];
  v6 = discardedCachesPathForVolume(cdVol);

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
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v10 = [v6 stringByAppendingPathComponent:uUIDString];

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
          uTF8String = [v10 UTF8String];
          v30 = __error();
          v31 = strerror(*v30);
          v35 = 136315394;
          *v36 = uTF8String;
          *&v36[8] = 2080;
          *&v36[10] = v31;
          _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "mkdir failed for %s : %s", &v35, 0x16u);
        }
      }

      else
      {
        uTF8String2 = [asideCopy UTF8String];
        uTF8String3 = [v10 UTF8String];
        rename(uTF8String2, uTF8String3, v14);
        if (!v15)
        {
          if (!mkdir([asideCopy UTF8String], 0x1C0u))
          {
            v22 = 1;
            goto LABEL_24;
          }

          v16 = CDGetLogHandle("client");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            uTF8String4 = [asideCopy UTF8String];
            v33 = __error();
            v34 = strerror(*v33);
            v35 = 136315394;
            *v36 = uTF8String4;
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
          cachePath = [(AppCache *)self cachePath];
          uTF8String5 = [cachePath UTF8String];
          uTF8String6 = [v10 UTF8String];
          v20 = __error();
          v21 = strerror(*v20);
          v35 = 136315650;
          *v36 = uTF8String5;
          *&v36[8] = 2080;
          *&v36[10] = uTF8String6;
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
      uTF8String7 = [v6 UTF8String];
      v27 = __error();
      v28 = strerror(*v27);
      v35 = 136315394;
      *v36 = uTF8String7;
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
      mountPoint = [(CacheDeleteVolume *)self->_cdVol mountPoint];
      v35 = 138412290;
      *v36 = mountPoint;
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

- (unint64_t)caches:(BOOL)caches purge:(BOOL)purge
{
  purgeCopy = purge;
  v44 = *MEMORY[0x1E69E9840];
  if (caches)
  {
LABEL_16:
    v26 = MEMORY[0x1E696AD98];
    cachePath = [(AppCache *)self cachePath];
    v28 = [v26 numberWithUnsignedLongLong:{size_dir(objc_msgSend(cachePath, "UTF8String"))}];
    [(AppCache *)self setLastKnownCacheSize:v28];

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    [(AppCache *)self setTimestamp:?];

    if (purgeCopy)
    {
      goto LABEL_5;
    }

LABEL_17:
    lastKnownCacheSize = [(AppCache *)self lastKnownCacheSize];
    unsignedLongLongValue = [lastKnownCacheSize unsignedLongLongValue];
    goto LABEL_18;
  }

  lastKnownCacheSize2 = [(AppCache *)self lastKnownCacheSize];
  if (![lastKnownCacheSize2 unsignedLongLongValue])
  {

    goto LABEL_16;
  }

  validate = [(AppCache *)self validate];

  if (!validate)
  {
    goto LABEL_16;
  }

  if (!purgeCopy)
  {
    goto LABEL_17;
  }

LABEL_5:
  v8 = CDGetLogHandle("client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(AppCache *)self identifier];
    lastKnownCacheSize3 = [(AppCache *)self lastKnownCacheSize];
    v11 = MEMORY[0x1E695DF00];
    [(AppCache *)self timestamp];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v36 = 67109890;
    v37 = 365;
    v38 = 2112;
    v39 = identifier;
    v40 = 2112;
    v41 = lastKnownCacheSize3;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEFAULT, "%d %@ purging cache, self.lastKnownCacheSize: %@ at %@", &v36, 0x26u);
  }

  cachePath2 = [(AppCache *)self cachePath];
  v14 = [(AppCache *)self moveCacheAside:cachePath2];

  if (!v14)
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(AppCache *)self identifier];
      v36 = 67109378;
      v37 = 367;
      v38 = 2112;
      v39 = identifier2;
      _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "%d %@ Unable to move aside cache, clearing in place", &v36, 0x12u);
    }

    cachePath3 = [(AppCache *)self cachePath];
    nuke_dir([cachePath3 UTF8String], 1);
  }

  cachePath4 = [(AppCache *)self cachePath];
  v19 = size_dir([cachePath4 UTF8String]);

  lastKnownCacheSize4 = [(AppCache *)self lastKnownCacheSize];
  unsignedLongLongValue2 = [lastKnownCacheSize4 unsignedLongLongValue];

  if (unsignedLongLongValue2 <= v19)
  {
    unsignedLongLongValue = 0;
  }

  else
  {
    lastKnownCacheSize5 = [(AppCache *)self lastKnownCacheSize];
    unsignedLongLongValue = [lastKnownCacheSize5 unsignedLongLongValue] - v19;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
  [(AppCache *)self setLastKnownCacheSize:v24];

  lastKnownCacheSize = [MEMORY[0x1E695DF00] date];
  [lastKnownCacheSize timeIntervalSinceReferenceDate];
  [(AppCache *)self setTimestamp:?];
LABEL_18:

  telemetry = [(AppCache *)self telemetry];

  if (telemetry)
  {
    v31 = CDGetLogHandle("client");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (purgeCopy)
      {
        v32 = " purge";
      }

      else
      {
        v32 = "";
      }

      cachePath5 = [(AppCache *)self cachePath];
      v36 = 67109890;
      v37 = 382;
      v38 = 2080;
      v39 = v32;
      v40 = 2048;
      v41 = unsignedLongLongValue;
      v42 = 2112;
      v43 = cachePath5;
      _os_log_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_DEFAULT, "%d%s caches result: %llu on %@", &v36, 0x26u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return unsignedLongLongValue;
}

- (unint64_t)clearCaches:(BOOL)caches
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  bundleIdentifiers = [(AppCache *)self bundleIdentifiers];
  allObjects = [bundleIdentifiers allObjects];

  v7 = 0;
  v8 = -3;
  *&v9 = 138412290;
  v17 = v9;
  do
  {
    telemetry = [(AppCache *)self telemetry];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __24__AppCache_clearCaches___block_invoke;
    v18[3] = &unk_1E7F02FC0;
    v18[4] = self;
    v18[5] = &v20;
    cachesCopy = caches;
    v11 = assert_group_cache_deletion(telemetry, allObjects, v18, &__block_literal_global_9);

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

+ (void)enumerateWithContainerQuery:(id)query container_class:(unint64_t)container_class options:(int)options telemetry:(id)telemetry block:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  telemetryCopy = telemetry;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  if (container_query_create())
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    listAllPersonaWithAttributes = [mEMORY[0x1E69DF068] listAllPersonaWithAttributes];
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v21 = listAllPersonaWithAttributes;
    v22 = queryCopy;
    v23 = telemetryCopy;
    v24 = blockCopy;
    v15 = listAllPersonaWithAttributes;
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
    mEMORY[0x1E69DF068] = CDGetLogHandle("client");
    if (os_log_type_enabled(mEMORY[0x1E69DF068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, mEMORY[0x1E69DF068], OS_LOG_TYPE_DEFAULT, "container_query_create failed", buf, 2u);
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

+ (void)enumerateGroupCachesOnVolume:(id)volume block:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = getRootVolume();
  if (v8)
  {
    v9 = container_query_create();
    v10 = v9;
    if (volumeCopy)
    {
      v25 = blockCopy;
      v11 = v7;
      empty = xpc_array_create_empty();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = volumeCopy;
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
      blockCopy = v25;
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
        v26 = blockCopy;
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