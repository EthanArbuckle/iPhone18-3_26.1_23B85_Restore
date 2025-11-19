@interface CDRecentInfo
+ (id)fetchAllowedClassesSet;
+ (id)recentInfoForVolumes:(id)a3;
- (BOOL)hasInvalids;
- (BOOL)hasSnapshotForVolume:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isInvalidForVolume:(id)a3;
- (BOOL)isStale;
- (BOOL)isStaleForVolume:(id)a3;
- (BOOL)updateRecentState:(int64_t)a3 forVolume:(id)a4;
- (CDRecentInfo)initWithCoder:(id)a3;
- (CDRecentInfo)initWithRecentInfo:(id)a3;
- (CDRecentInfo)initWithVolumes:(id)a3;
- (id)_createNewRecentVolumeInfo;
- (id)bsdDiskForVolume:(id)a3;
- (id)copyPushingServices;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)servicesForVolume:(id)a3;
- (id)thresholdsForVolume:(id)a3;
- (int64_t)recentStateForVolume:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateForVolume:(id)a3;
- (void)log;
- (void)removeServiceInfo:(id)a3;
- (void)removeServiceInfo:(id)a3 forVolume:(id)a4;
@end

@implementation CDRecentInfo

- (id)_createNewRecentVolumeInfo
{
  v2 = [CDRecentVolumeInfo alloc];

  return v2;
}

- (id)copyPushingServices
{
  v2 = [(CDRecentInfo *)self pushingServices];
  v3 = [v2 copy];

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
  v3 = [MEMORY[0x1E695DF70] array];
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
        [v3 addObject:v9];

        v10 = MEMORY[0x1E696AEC0];
        v11 = [(CDRecentInfo *)self volumes];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = [v10 stringWithFormat:@"%@", v12];
        [v3 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = [v3 componentsJoinedByString:@"\n"];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)recentInfoForVolumes:(id)a3
{
  v3 = a3;
  v4 = [[CDRecentInfo alloc] initWithVolumes:v3];

  return v4;
}

- (CDRecentInfo)initWithVolumes:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v14 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
    }

    volumes = v5->_volumes;
    v5->_volumes = v6;

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

- (CDRecentInfo)initWithRecentInfo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v31 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    volumes = v5->_volumes;
    v5->_volumes = v6;

    v8 = [v4 volumes];

    if (v8)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [v4 volumes];
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            v15 = [(CDRecentInfo *)v5 _createNewRecentVolumeInfo];
            v16 = [v4 volumes];
            v17 = [v16 objectForKeyedSubscript:v14];
            v18 = [v15 initWithVolumeInfo:v17];
            [(NSMutableDictionary *)v5->_volumes setObject:v18 forKeyedSubscript:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v11);
      }
    }

    version = v5->_version;
    v5->_version = &unk_1F3879538;

    v20 = [MEMORY[0x1E695DFA8] set];
    pushingServices = v5->_pushingServices;
    v5->_pushingServices = v20;

    v22 = [v4 invalidVolumes];
    v23 = [v22 mutableCopy];
    invalidVolumes = v5->_invalidVolumes;
    v5->_invalidVolumes = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CDRecentInfo alloc];
  v6 = [(CDRecentInfo *)self volumes];
  v7 = [v6 copyWithZone:a3];
  v8 = [(CDRecentInfo *)v5 initWithVolumes:v7];

  return v8;
}

- (CDRecentInfo)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CDRecentInfo;
  v5 = [(CDRecentInfo *)&v35 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_CACHED_RESULTS_VERSION"];
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

      v11 = [objc_opt_class() fetchAllowedClassesSet];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"CACHE_DELETE_RECENT_PURGEABLE_STATS"];
      v13 = [v12 mutableCopy];
      volumes = v5->_volumes;
      v5->_volumes = v13;

      v15 = [objc_opt_class() fetchAllowedClassesSet];
      v16 = [v4 decodeObjectOfClasses:v15 forKey:@"CACHE_DELETE_CACHED_PUSHING_SERVICES"];
      v17 = [v16 mutableCopy];
      pushingServices = v5->_pushingServices;
      v5->_pushingServices = v17;

      v19 = [objc_opt_class() fetchAllowedClassesSet];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"CACHE_DELETE_CACHED_INVALID_VOLUMES"];
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
      v24 = v23;
    }

    else
    {
      v24 = [MEMORY[0x1E695DF90] dictionary];
    }

    v25 = v5->_volumes;
    v5->_volumes = v24;

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self version];
  [v4 encodeObject:v5 forKey:@"CACHE_DELETE_CACHED_RESULTS_VERSION"];

  v6 = [(CDRecentInfo *)self volumes];
  [v4 encodeObject:v6 forKey:@"CACHE_DELETE_RECENT_PURGEABLE_STATS"];

  v7 = [(CDRecentInfo *)self pushingServices];
  [v4 encodeObject:v7 forKey:@"CACHE_DELETE_CACHED_PUSHING_SERVICES"];

  v8 = [(CDRecentInfo *)self invalidVolumes];
  [v4 encodeObject:v8 forKey:@"CACHE_DELETE_CACHED_INVALID_VOLUMES"];
}

- (int64_t)recentStateForVolume:(id)a3
{
  v4 = a3;
  if (v4 && (-[CDRecentInfo volumes](self, "volumes"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [v6 volumeState];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)updateRecentState:(int64_t)a3 forVolume:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CDRecentInfo *)self volumes];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [(CDRecentInfo *)self volumes];

  if (v9)
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

  v14 = [MEMORY[0x1E695DF90] dictionary];
  [(CDRecentInfo *)self setVolumes:v14];

  if (!v8)
  {
LABEL_9:
    v8 = [(CDRecentInfo *)self _createNewRecentVolumeInfoWithName:v6];
    v15 = [(CDRecentInfo *)self volumes];
    [v15 setObject:v8 forKeyedSubscript:v6];
  }

LABEL_3:
  v10 = [v8 volumeState];
  if (v10 != a3)
  {
    [v8 setVolumeState:a3];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10 != a3;
}

- (void)removeServiceInfo:(id)a3 forVolume:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CDRecentInfo *)self volumes];
  v9 = [v8 objectForKeyedSubscript:v6];

  [v9 removeServiceInfo:v7];
}

- (void)removeServiceInfo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(CDRecentInfo *)self removeServiceInfo:v4 forVolume:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)bsdDiskForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 bsdDisk];

  return v7;
}

- (id)thresholdsForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 thresholds];

  return v7;
}

- (id)servicesForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 volumeServices];

  return v7;
}

- (BOOL)hasSnapshotForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 hasSnapshot];
  return v5;
}

- (BOOL)isStaleForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 isStale];
  return v5;
}

- (BOOL)isInvalidForVolume:(id)a3
{
  v4 = [CacheDeleteVolume volumeWithMountpoint:a3];
  v5 = v4;
  if (v4 && [v4 validate])
  {
    v6 = [(CDRecentInfo *)self invalidVolumes];
    v7 = [v5 mountPoint];
    v8 = [v6 containsObject:v7];
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
    v4 = [(CDRecentInfo *)self volumes];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [(CDRecentInfo *)self volumes];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 isStale];

          if (v12)
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(CDRecentInfo *)self volumes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__CDRecentInfo_isEmpty__block_invoke;
  v4[3] = &unk_1E7F02F70;
  v4[4] = &v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CDRecentInfo *)self volumes];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CDRecentInfo_hasInvalids__block_invoke;
  v5[3] = &unk_1E7F02F98;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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
  v3 = [(CDRecentInfo *)self volumes];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(CDRecentInfo *)self volumes];
        v11 = [v10 objectForKeyedSubscript:v9];

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
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentInfo *)self volumes];
  [v5 removeObjectForKey:v4];
}

@end