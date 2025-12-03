@interface CDRecentInfo
+ (id)fetchAllowedClassesSet;
+ (id)recentInfoForVolumes:(id)volumes;
- (BOOL)hasInvalids;
- (BOOL)hasSnapshotForVolume:(id)volume;
- (BOOL)isEmpty;
- (BOOL)isInvalidForVolume:(id)volume;
- (BOOL)isStale;
- (BOOL)isStaleForVolume:(id)volume;
- (BOOL)updateRecentState:(int64_t)state forVolume:(id)volume;
- (CDRecentInfo)initWithCoder:(id)coder;
- (CDRecentInfo)initWithRecentInfo:(id)info;
- (CDRecentInfo)initWithVolumes:(id)volumes;
- (id)_createNewRecentVolumeInfo;
- (id)bsdDiskForVolume:(id)volume;
- (id)copyPushingServices;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)servicesForVolume:(id)volume;
- (id)thresholdsForVolume:(id)volume;
- (int64_t)recentStateForVolume:(id)volume;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateForVolume:(id)volume;
- (void)log;
- (void)removeServiceInfo:(id)info;
- (void)removeServiceInfo:(id)info forVolume:(id)volume;
@end

@implementation CDRecentInfo

- (id)_createNewRecentVolumeInfo
{
  v2 = [CDRecentVolumeInfo alloc];

  return v2;
}

- (id)copyPushingServices
{
  pushingServices = [(CDRecentInfo *)self pushingServices];
  v3 = [pushingServices copy];

  return v3;
}

+ (id)fetchAllowedClassesSet
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CDRecentInfo *)self volumes];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume: %@", v8];
        [array addObject:v9];

        v10 = MEMORY[0x1E696AEC0];
        volumes = [(CDRecentInfo *)self volumes];
        v12 = [volumes objectForKeyedSubscript:v8];
        v13 = [v10 stringWithFormat:@"%@", v12];
        [array addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = [array componentsJoinedByString:@"\n"];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)recentInfoForVolumes:(id)volumes
{
  volumesCopy = volumes;
  v4 = [[CDRecentInfo alloc] initWithVolumes:volumesCopy];

  return v4;
}

- (CDRecentInfo)initWithVolumes:(id)volumes
{
  volumesCopy = volumes;
  v14.receiver = self;
  v14.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v14 init];
  if (v5)
  {
    if (volumesCopy)
    {
      dictionary = [volumesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    volumes = v5->_volumes;
    v5->_volumes = dictionary;

    version = v5->_version;
    v5->_version = &unk_1F3879538;

    v9 = [MEMORY[0x1E695DFA8] set];
    pushingServices = v5->_pushingServices;
    v5->_pushingServices = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    invalidVolumes = v5->_invalidVolumes;
    v5->_invalidVolumes = v11;
  }

  return v5;
}

- (CDRecentInfo)initWithRecentInfo:(id)info
{
  v33 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v31 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    volumes = v5->_volumes;
    v5->_volumes = dictionary;

    volumes = [infoCopy volumes];

    if (volumes)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      volumes2 = [infoCopy volumes];
      v10 = [volumes2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          v13 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(volumes2);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            _createNewRecentVolumeInfo = [(CDRecentInfo *)v5 _createNewRecentVolumeInfo];
            volumes3 = [infoCopy volumes];
            v17 = [volumes3 objectForKeyedSubscript:v14];
            v18 = [_createNewRecentVolumeInfo initWithVolumeInfo:v17];
            [(NSMutableDictionary *)v5->_volumes setObject:v18 forKeyedSubscript:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [volumes2 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v11);
      }
    }

    version = v5->_version;
    v5->_version = &unk_1F3879538;

    v20 = [MEMORY[0x1E695DFA8] set];
    pushingServices = v5->_pushingServices;
    v5->_pushingServices = v20;

    invalidVolumes = [infoCopy invalidVolumes];
    v23 = [invalidVolumes mutableCopy];
    invalidVolumes = v5->_invalidVolumes;
    v5->_invalidVolumes = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CDRecentInfo alloc];
  volumes = [(CDRecentInfo *)self volumes];
  v7 = [volumes copyWithZone:zone];
  v8 = [(CDRecentInfo *)v5 initWithVolumes:v7];

  return v8;
}

- (CDRecentInfo)initWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v35 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_CACHED_RESULTS_VERSION"];
    v7 = evaluateNumberProperty(v6);

    v8 = [(NSNumber *)v7 isEqualToNumber:&unk_1F3879538];
    v9 = CDGetLogHandle("client");
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEFAULT, "got a compatible version", buf, 2u);
      }

      fetchAllowedClassesSet = [objc_opt_class() fetchAllowedClassesSet];
      v12 = [coderCopy decodeObjectOfClasses:fetchAllowedClassesSet forKey:@"CACHE_DELETE_RECENT_PURGEABLE_STATS"];
      v13 = [v12 mutableCopy];
      volumes = v5->_volumes;
      v5->_volumes = v13;

      fetchAllowedClassesSet2 = [objc_opt_class() fetchAllowedClassesSet];
      v16 = [coderCopy decodeObjectOfClasses:fetchAllowedClassesSet2 forKey:@"CACHE_DELETE_CACHED_PUSHING_SERVICES"];
      v17 = [v16 mutableCopy];
      pushingServices = v5->_pushingServices;
      v5->_pushingServices = v17;

      fetchAllowedClassesSet3 = [objc_opt_class() fetchAllowedClassesSet];
      v20 = [coderCopy decodeObjectOfClasses:fetchAllowedClassesSet3 forKey:@"CACHE_DELETE_CACHED_INVALID_VOLUMES"];
      v21 = [v20 mutableCopy];
      invalidVolumes = v5->_invalidVolumes;
      v5->_invalidVolumes = v21;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v7;
        _os_log_error_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_ERROR, "incompatible version: %@", buf, 0xCu);
      }
    }

    v23 = v5->_volumes;
    if (v23)
    {
      dictionary = v23;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v25 = v5->_volumes;
    v5->_volumes = dictionary;

    v26 = v5->_pushingServices;
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = [MEMORY[0x1E695DFA8] set];
    }

    v28 = v5->_pushingServices;
    v5->_pushingServices = v27;

    v29 = v5->_invalidVolumes;
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = [MEMORY[0x1E695DFA8] set];
    }

    v31 = v5->_invalidVolumes;
    v5->_invalidVolumes = v30;

    version = v5->_version;
    v5->_version = v7;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(CDRecentInfo *)self version];
  [coderCopy encodeObject:version forKey:@"CACHE_DELETE_CACHED_RESULTS_VERSION"];

  volumes = [(CDRecentInfo *)self volumes];
  [coderCopy encodeObject:volumes forKey:@"CACHE_DELETE_RECENT_PURGEABLE_STATS"];

  pushingServices = [(CDRecentInfo *)self pushingServices];
  [coderCopy encodeObject:pushingServices forKey:@"CACHE_DELETE_CACHED_PUSHING_SERVICES"];

  invalidVolumes = [(CDRecentInfo *)self invalidVolumes];
  [coderCopy encodeObject:invalidVolumes forKey:@"CACHE_DELETE_CACHED_INVALID_VOLUMES"];
}

- (int64_t)recentStateForVolume:(id)volume
{
  volumeCopy = volume;
  if (volumeCopy && (-[CDRecentInfo volumes](self, "volumes"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:volumeCopy], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    volumeState = [v6 volumeState];
  }

  else
  {
    volumeState = 0;
  }

  return volumeState;
}

- (BOOL)updateRecentState:(int64_t)state forVolume:(id)volume
{
  v17 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v8 = [volumes objectForKeyedSubscript:volumeCopy];

  volumes2 = [(CDRecentInfo *)self volumes];

  if (volumes2)
  {
    if (v8)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16[0] = 67109120;
    v16[1] = 197;
    _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "%d Deleted cache's volume dictionary is nulled. Initializing a new, empty one.", v16, 8u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(CDRecentInfo *)self setVolumes:dictionary];

  if (!v8)
  {
LABEL_9:
    v8 = [(CDRecentInfo *)self _createNewRecentVolumeInfoWithName:volumeCopy];
    volumes3 = [(CDRecentInfo *)self volumes];
    [volumes3 setObject:v8 forKeyedSubscript:volumeCopy];
  }

LABEL_3:
  volumeState = [v8 volumeState];
  if (volumeState != state)
  {
    [v8 setVolumeState:state];
  }

  v11 = *MEMORY[0x1E69E9840];
  return volumeState != state;
}

- (void)removeServiceInfo:(id)info forVolume:(id)volume
{
  volumeCopy = volume;
  infoCopy = info;
  volumes = [(CDRecentInfo *)self volumes];
  v9 = [volumes objectForKeyedSubscript:volumeCopy];

  [v9 removeServiceInfo:infoCopy];
}

- (void)removeServiceInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(volumes);
        }

        [(CDRecentInfo *)self removeServiceInfo:infoCopy forVolume:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [volumes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)bsdDiskForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  bsdDisk = [v6 bsdDisk];

  return bsdDisk;
}

- (id)thresholdsForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  thresholds = [v6 thresholds];

  return thresholds;
}

- (id)servicesForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  volumeServices = [v6 volumeServices];

  return volumeServices;
}

- (BOOL)hasSnapshotForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  LOBYTE(volumes) = [v6 hasSnapshot];
  return volumes;
}

- (BOOL)isStaleForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  LOBYTE(volumes) = [v6 isStale];
  return volumes;
}

- (BOOL)isInvalidForVolume:(id)volume
{
  v4 = [CacheDeleteVolume volumeWithMountpoint:volume];
  v5 = v4;
  if (v4 && [v4 validate])
  {
    invalidVolumes = [(CDRecentInfo *)self invalidVolumes];
    mountPoint = [v5 mountPoint];
    v8 = [invalidVolumes containsObject:mountPoint];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isStale
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CDRecentInfo *)self isEmpty])
  {
    v3 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    volumes = [(CDRecentInfo *)self volumes];
    v5 = [volumes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(volumes);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          volumes2 = [(CDRecentInfo *)self volumes];
          v11 = [volumes2 objectForKeyedSubscript:v9];
          isStale = [v11 isStale];

          if (isStale)
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v6 = [volumes countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_13:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  volumes = [(CDRecentInfo *)self volumes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__CDRecentInfo_isEmpty__block_invoke;
  v4[3] = &unk_1E7F02F70;
  v4[4] = &v5;
  [volumes enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(volumes) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return volumes;
}

uint64_t __23__CDRecentInfo_isEmpty__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEmpty];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasInvalids
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  volumes = [(CDRecentInfo *)self volumes];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CDRecentInfo_hasInvalids__block_invoke;
  v5[3] = &unk_1E7F02F98;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [volumes enumerateKeysAndObjectsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __27__CDRecentInfo_hasInvalids__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = 1;
  while (1)
  {
    v7 = [*(a1 + 32) pushingServices];
    v8 = [v9 copyInvalidsAtUrgency:v6 currentlyPushing:v7];

    if ([v8 count])
    {
      break;
    }

    v6 = (v6 + 1);
    if (v6 == 4)
    {
      goto LABEL_6;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;

LABEL_6:
}

- (void)log
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  volumes = [(CDRecentInfo *)self volumes];
  v4 = [volumes countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(volumes);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        volumes2 = [(CDRecentInfo *)self volumes];
        v11 = [volumes2 objectForKeyedSubscript:v9];

        v12 = CDGetLogHandle("client");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = v9;
          _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, " Volume: %@", buf, 0xCu);
        }

        [v11 log];
        ++v8;
      }

      while (v6 != v8);
      v6 = [volumes countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDRecentInfo *)self volumes];
  [volumes removeObjectForKey:volumeCopy];
}

@end