@interface CacheDeleteVolume
+ (CacheDeleteVolume)volumeWithMountpoint:(id)mountpoint;
+ (CacheDeleteVolume)volumeWithPath:(id)path;
+ (CacheDeleteVolume)volumeWithUUID:(id)d;
+ (id)mountPointForUUID:(id)d;
+ (id)rootVolume;
+ (id)validateVolumeAtPath:(id)path;
+ (int64_t)stateForPath:(id)path;
- (BOOL)amountIsRational:(id)rational freespace:(unint64_t)freespace effective_size:(unint64_t)effective_size used:(unint64_t)used size:(unint64_t)size;
- (BOOL)containsPath:(id)path;
- (BOOL)freespaceIsStale:(unint64_t)stale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (BOOL)mayContainPurgeableAmount:(id)amount forService:(id)service;
- (BOOL)validate;
- (CacheDeleteVolume)initWithPath:(id)path;
- (CacheDeleteVolume)initWithVolume:(id)volume;
- (id)FSEventsUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)uuid;
- (int64_t)state;
- (unint64_t)amountPurged;
- (unint64_t)effective_size;
- (unint64_t)freespace;
- (unint64_t)hash;
- (unint64_t)size;
- (unint64_t)used;
@end

@implementation CacheDeleteVolume

- (id)FSEventsUUID
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = FSEventsCopyUUIDForDevice([(CacheDeleteVolume *)self dev]);
  if (!v3)
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mountPoint = [(CacheDeleteVolume *)self mountPoint];
      v14 = 136315138;
      uTF8String = [mountPoint UTF8String];
      _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "Unable to get FSEvents UUID for %s", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = v3;
  v5 = CFUUIDCreateString(0, v3);
  if (!v5)
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      uTF8String = v4;
      _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "CFUUIDCreateString failed for: %@", &v14, 0xCu);
    }

    CFRelease(v4);
    v6 = 0;
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  CFRelease(v4);
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    mountPoint2 = [(CacheDeleteVolume *)self mountPoint];
    v14 = 138412546;
    uTF8String = v6;
    v16 = 2112;
    v17 = mountPoint2;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "CacheDeleteVolume FSEventsUUID: %@ for %@", &v14, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)uuid
{
  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v3 = mapVolume(mountPoint, 0);

  v4 = VolUUID([v3 UTF8String]);

  return v4;
}

- (BOOL)validate
{
  v3 = objc_autoreleasePoolPush();
  isRoot = [(CacheDeleteVolume *)self isRoot];
  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v5 = _validateVolume();

  if ([(CacheDeleteVolume *)self dev]|| isRoot != [(CacheDeleteVolume *)self isRoot])
  {
    v7 = 0;
  }

  else
  {
    mountPoint2 = [(CacheDeleteVolume *)self mountPoint];
    v7 = [v5 isEqualToString:mountPoint2];
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (unint64_t)freespace
{
  v3 = objc_autoreleasePoolPush();
  if ([(CacheDeleteVolume *)self validate])
  {
    mountPoint = [(CacheDeleteVolume *)self mountPoint];
    v5 = volumeFreespace([mountPoint fileSystemRepresentation]);
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "CacheDeleteVolume validate failed. Returning 0 free space", v8, 2u);
    }

    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)state
{
  if (![(CacheDeleteVolume *)self validate])
  {
    return 0;
  }

  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v4 = volumeLowDiskState([mountPoint fileSystemRepresentation]);

  return v4;
}

- (unint64_t)used
{
  if (![(CacheDeleteVolume *)self validate])
  {
    return 0;
  }

  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v4 = volumeUsed([mountPoint fileSystemRepresentation]);

  return v4;
}

- (unint64_t)size
{
  if (![(CacheDeleteVolume *)self validate])
  {
    return 0;
  }

  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v4 = volumeSize([mountPoint fileSystemRepresentation]);

  return v4;
}

- (unint64_t)effective_size
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(CacheDeleteVolume *)self validate])
  {
    v3 = [(CacheDeleteVolume *)self size];
    v4 = volumeUsed("/");
    mountPoint = [(CacheDeleteVolume *)self mountPoint];
    v6 = disk();

    v7 = disk();
    if ([v6 isEqualToString:v7] && (v8 = -[CacheDeleteVolume size](self, "size"), v8 == volumeSize("/")))
    {
      if (v3 <= v4)
      {
        v15 = CDGetLogHandle("client");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = humanReadableNumber(v4);
          mountPoint = self->_mountPoint;
          v18 = humanReadableNumber(v3);
          v19 = 134218754;
          v20 = v4;
          v21 = 2112;
          v22 = v16;
          v23 = 2112;
          v24 = mountPoint;
          v25 = 2112;
          v26 = v18;
          _os_log_error_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_ERROR, "CacheDeleteVolume effective_size: systemVolume used amount is greater than this volume's size. System used amount: %llu (%@), this volume: %@ : %@", &v19, 0x2Au);
        }

        effective_size_volume_effective_size = 0;
      }

      else
      {
        effective_size_volume_effective_size = v3 - v4;
        v9 = CDGetLogHandle("client");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          mountPoint2 = [(CacheDeleteVolume *)self mountPoint];
          v11 = humanReadableNumber(v3);
          v12 = humanReadableNumber(effective_size_volume_effective_size);
          v19 = 138412802;
          v20 = mountPoint2;
          v21 = 2112;
          v22 = v11;
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "CacheDeleteVolume effective_size: %@ container size: %@, effective size: %@", &v19, 0x20u);
        }
      }
    }

    else
    {
      effective_size_volume_effective_size = v3;
    }
  }

  result = effective_size_volume_effective_size;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (CacheDeleteVolume)initWithVolume:(id)volume
{
  volumeCopy = volume;
  v19.receiver = self;
  v19.super_class = CacheDeleteVolume;
  v5 = [(CacheDeleteVolume *)&v19 init];
  if (v5)
  {
    v5->_isRoot = [volumeCopy isRoot];
    fsType = [volumeCopy fsType];
    v7 = [fsType copy];
    fsType = v5->_fsType;
    v5->_fsType = v7;

    mountPoint = [volumeCopy mountPoint];
    v10 = [mountPoint copy];
    mountPoint = v5->_mountPoint;
    v5->_mountPoint = v10;

    v5->_initialFreespace = [volumeCopy freespace];
    thresholds = [volumeCopy thresholds];
    v13 = [thresholds copy];
    thresholds = v5->_thresholds;
    v5->_thresholds = v13;

    bsdName = [volumeCopy bsdName];
    v16 = [bsdName copy];
    bsdName = v5->_bsdName;
    v5->_bsdName = v16;

    v5->_dev = [volumeCopy dev];
    v5->_block_size = [volumeCopy block_size];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CacheDeleteVolume alloc];

  return [(CacheDeleteVolume *)v4 initWithVolume:self];
}

- (unint64_t)amountPurged
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(CacheDeleteVolume *)self validate])
  {
    goto LABEL_6;
  }

  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v4 = volumeFreespace([mountPoint fileSystemRepresentation]);

  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218240;
    initialFreespace = [(CacheDeleteVolume *)self initialFreespace];
    v12 = 2048;
    v13 = v4;
    _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "begin_freespace: %llu, cur_freespace: %llu", &v10, 0x16u);
  }

  if (v4 > [(CacheDeleteVolume *)self initialFreespace])
  {
    v6 = v4 - [(CacheDeleteVolume *)self initialFreespace];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    initialFreespace = v6;
    _os_log_debug_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEBUG, "result: %llu", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)freespaceIsStale:(unint64_t)stale
{
  v21 = *MEMORY[0x1E69E9840];
  freespace = [(CacheDeleteVolume *)self freespace];
  if (freespace <= stale)
  {
    v6 = stale - freespace;
  }

  else
  {
    v6 = freespace - stale;
  }

  freespace2 = [(CacheDeleteVolume *)self freespace];
  if (freespace2 / 0x14 >= 0x40000000)
  {
    v8 = 0x40000000;
  }

  else
  {
    v8 = freespace2 / 0x14;
  }

  if (v8 <= 0x9600000)
  {
    v9 = 157286400;
  }

  else
  {
    v9 = v8;
  }

  v10 = CDGetLogHandle("client");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218496;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v6;
    _os_log_debug_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEBUG, "freespaceIsStale ceiling: %llu, freespace_diff_threshold: %llu, freespace_diff: %llu", &v15, 0x20u);
  }

  v11 = CDGetLogHandle("client");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = "NO";
    if (v6 >= v9)
    {
      v14 = "YES";
    }

    v15 = 136315138;
    v16 = v14;
    _os_log_debug_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEBUG, "freespaceIsStale: %s", &v15, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 >= v9;
}

- (BOOL)amountIsRational:(id)rational freespace:(unint64_t)freespace effective_size:(unint64_t)effective_size used:(unint64_t)used size:(unint64_t)size
{
  v52 = *MEMORY[0x1E69E9840];
  rationalCopy = rational;
  if ([rationalCopy unsignedLongLongValue] + freespace >= effective_size || objc_msgSend(rationalCopy, "unsignedLongLongValue") >= used)
  {
    v14 = CDGetLogHandle("client");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mountPoint = [(CacheDeleteVolume *)self mountPoint];
      unsignedLongLongValue = [rationalCopy unsignedLongLongValue];
      v18 = humanReadableNumber([rationalCopy unsignedLongLongValue]);
      v24 = humanReadableNumber(freespace);
      v23 = [rationalCopy unsignedLongLongValue] + freespace;
      v19 = humanReadableNumber([rationalCopy unsignedLongLongValue] + freespace);
      v22 = humanReadableNumber(effective_size);
      v21 = humanReadableNumber(size);
      v20 = humanReadableNumber(used);
      *buf = 138415362;
      v27 = mountPoint;
      v28 = 2048;
      v29 = unsignedLongLongValue;
      v30 = 2112;
      v31 = v18;
      v32 = 2048;
      freespaceCopy = freespace;
      v34 = 2112;
      v35 = v24;
      v36 = 2048;
      v37 = v23;
      v38 = 2112;
      v39 = v19;
      v40 = 2048;
      effective_sizeCopy = effective_size;
      v42 = 2112;
      v43 = v22;
      v44 = 2048;
      sizeCopy = size;
      v46 = 2112;
      v47 = v21;
      v48 = 2048;
      usedCopy = used;
      v50 = 2112;
      v51 = v20;
      _os_log_error_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_ERROR, "Volume: %@ : Irrational amount: %llu (%@), plus freespace %llu (%@) = %llu (%@) > self.effective_size: %llu (%@), real size: %llu, (%@), amount used: %llu (%@)", buf, 0x84u);
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (CacheDeleteVolume)initWithPath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = CacheDeleteVolume;
  v23 = 0;
  v5 = [(CacheDeleteVolume *)&v22 init];
  if (!v5)
  {
LABEL_17:
    v5 = v5;
    v17 = v5;
    goto LABEL_18;
  }

  if (pathCopy)
  {
    memset(v25, 0, sizeof(v25));
    v6 = mapVolume(pathCopy, 0);
    v7 = _validateVolume();
    mountPoint = v5->_mountPoint;
    v5->_mountPoint = v7;

    if (v5->_mountPoint)
    {
      if (v23)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        fsType = v5->_fsType;
        v5->_fsType = v9;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
      bsdName = v5->_bsdName;
      v5->_bsdName = v11;

      uTF8String = [(NSString *)v5->_mountPoint UTF8String];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__3;
      v29 = __Block_byref_object_dispose__3;
      v30 = 0;
      if (qword_1ED76A0A8 != -1)
      {
        v21 = uTF8String;
        dispatch_once(&qword_1ED76A0A8, &__block_literal_global_5);
        uTF8String = v21;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cdVolumeThresholdsForMountPoint_block_invoke_2;
      block[3] = &unk_1E7F02E58;
      block[4] = &buf;
      block[5] = uTF8String;
      dispatch_sync(qword_1ED76A0A0, block);
      v14 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&buf, 8);

      thresholds = v5->_thresholds;
      v5->_thresholds = v14;

      v5->_initialFreespace = volumeFreespace([(NSString *)v5->_mountPoint fileSystemRepresentation]);
    }

    else
    {
      v18 = CDGetLogHandle("client");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = pathCopy;
        _os_log_debug_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_DEBUG, "unable to validate volume: %@", &buf, 0xCu);
      }

      v5 = 0;
    }

    if (v23)
    {
      free(v23);
    }

    goto LABEL_17;
  }

  v16 = CDGetLogHandle("client");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "path is NIL", &buf, 2u);
  }

  v17 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (CacheDeleteVolume)volumeWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

+ (CacheDeleteVolume)volumeWithMountpoint:(id)mountpoint
{
  mountpointCopy = mountpoint;
  v5 = [[self alloc] initWithPath:mountpointCopy];
  mountPoint = [v5 mountPoint];
  stringByStandardizingPath = [mountPoint stringByStandardizingPath];
  stringByStandardizingPath2 = [mountpointCopy stringByStandardizingPath];

  LODWORD(mountpointCopy) = [stringByStandardizingPath isEqualToString:stringByStandardizingPath2];
  if (mountpointCopy)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (CacheDeleteVolume)volumeWithUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = getLocalVolumes();
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [CacheDeleteVolume volumeWithMountpoint:*(*(&v16 + 1) + 8 * v8), v16];
        v10 = v9;
        if (v9)
        {
          uuid = [v9 uuid];
          uUIDString = [uuid UUIDString];
          v13 = [uUIDString isEqualToString:dCopy];

          if (v13)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)mountPointForUUID:(id)d
{
  v3 = [CacheDeleteVolume volumeWithUUID:d];
  mountPoint = [v3 mountPoint];

  return mountPoint;
}

+ (id)rootVolume
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CacheDeleteVolume_rootVolume__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED76A098 != -1)
  {
    dispatch_once(&qword_1ED76A098, block);
  }

  v2 = _MergedGlobals_5;

  return v2;
}

void __31__CacheDeleteVolume_rootVolume__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = getRootVolume();
  v2 = [v1 volumeWithMountpoint:v4];
  v3 = _MergedGlobals_5;
  _MergedGlobals_5 = v2;
}

+ (id)validateVolumeAtPath:(id)path
{
  if (path)
  {
    v3 = mapVolume(path, 0);
    v4 = _validateVolume();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)stateForPath:(id)path
{
  v3 = [CacheDeleteVolume validateVolumeAtPath:path];
  v4 = v3;
  if (v3)
  {
    v5 = volumeLowDiskState([v3 fileSystemRepresentation]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = volRootFromPath([pathCopy UTF8String], v19);
  if (v5)
  {
    v6 = v5;
    mountPoint = [(CacheDeleteVolume *)self mountPoint];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v9 = [mountPoint isEqualToString:v8];
  }

  else
  {
    mountPoint = CDGetLogHandle("client");
    if (os_log_type_enabled(mountPoint, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [pathCopy UTF8String];
      v13 = __error();
      v14 = strerror(*v13);
      v15 = 136315394;
      v16 = uTF8String;
      v17 = 2080;
      v18 = v14;
      _os_log_error_impl(&dword_1BA7F1000, mountPoint, OS_LOG_TYPE_ERROR, "Unable to get mount point for %s : %s", &v15, 0x16u);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)mayContainPurgeableAmount:(id)amount forService:(id)service
{
  v25 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  serviceCopy = service;
  v8 = [(CacheDeleteVolume *)self size];
  if ([amountCopy longLongValue] < 0 || v8 && objc_msgSend(amountCopy, "unsignedLongLongValue") > v8)
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110146;
      v16 = 0;
      v17 = 2112;
      v18 = amountCopy;
      v19 = 2048;
      v20 = v8;
      v21 = 2112;
      v22 = serviceCopy;
      v23 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "Received implausible purgeable amount. Returning: (%d) passed: (%@), volume max: (%llu), service ID: (%@), volume: (%@)", buf, 0x30u);
    }

    isRoot = [(CacheDeleteVolume *)self isRoot];
    v11 = 0;
    if (serviceCopy && isRoot)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service (%@) has reported (%@) purgeable for a root volume (%@) with max size (%llu)", serviceCopy, amountCopy, self, v8];
      CDSimulateCrash(195890387, v12);

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  bsdName = [(CacheDeleteVolume *)self bsdName];
  fsType = [(CacheDeleteVolume *)self fsType];
  validate = [(CacheDeleteVolume *)self validate];
  v7 = ", INVALID ";
  if (validate)
  {
    v7 = "";
  }

  v18 = v7;
  freespace = [(CacheDeleteVolume *)self freespace];
  v9 = humanReadableNumber([(CacheDeleteVolume *)self freespace]);
  initialFreespace = [(CacheDeleteVolume *)self initialFreespace];
  v11 = humanReadableNumber([(CacheDeleteVolume *)self initialFreespace]);
  used = [(CacheDeleteVolume *)self used];
  v13 = humanReadableNumber([(CacheDeleteVolume *)self used]);
  v14 = [(CacheDeleteVolume *)self size];
  v15 = humanReadableNumber([(CacheDeleteVolume *)self size]);
  v16 = [v21 stringWithFormat:@"<%@> at: %@ [%@ : %@] %sfreespace: %llu (%@), initialFreespace: %llu (%@), used: %llu (%@), total size: %llu (%@)", v20, mountPoint, bsdName, fsType, v18, freespace, v9, initialFreespace, v11, used, v13, v14, v15];

  return v16;
}

- (unint64_t)hash
{
  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  v3 = [mountPoint hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CacheDeleteVolume *)self isEqualTo:equalCopy];

  return v5;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  mountPoint = [(CacheDeleteVolume *)self mountPoint];
  mountPoint2 = [toCopy mountPoint];

  LOBYTE(toCopy) = [mountPoint isEqualToString:mountPoint2];
  return toCopy;
}

@end