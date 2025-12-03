@interface CacheDeleteDaemonVolume
+ (CacheDeleteDaemonVolume)volumeWithMountpoint:(id)mountpoint;
+ (CacheDeleteDaemonVolume)volumeWithPath:(id)path;
+ (id)createVolume:(id)volume isPrimary:(BOOL)primary;
+ (void)invalidateVolumesCache:(id)cache;
- (BOOL)containerTotalSize:(unint64_t *)size andFreespace:(unint64_t *)freespace;
- (BOOL)hasSnapshotsExcludingRegularExpression:(id)expression;
- (BOOL)hasSnapshotsExcludingTimeMachine;
- (BOOL)hasSnapshotsMatchingRegularExpression:(id)expression;
- (BOOL)isSpecialVolume;
- (BOOL)validate;
- (CacheDeleteDaemonVolume)initWithPath:(id)path isPrimary:(BOOL)primary;
- (CacheDeleteDaemonVolume)initWithVolume:(id)volume;
- (NSArray)siblings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)snapshots;
- (id)snapshotsExcludingRegularExpression:(id)expression;
- (id)snapshotsExcludingTimeMachine;
- (id)snapshotsMatchingRegularExpression:(id)expression;
@end

@implementation CacheDeleteDaemonVolume

- (BOOL)validate
{
  if (self->_validated)
  {
    return self->_isValid;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CacheDeleteDaemonVolume;
    if ([(CacheDeleteDaemonVolume *)&v5 validate])
    {
      v3 = ![(CacheDeleteDaemonVolume *)self isSpecialVolume];
    }

    else
    {
      v3 = 0;
    }

    self->_isValid = v3;
    self->_validated = 1;
  }

  return v3;
}

- (BOOL)isSpecialVolume
{
  role = [(CacheDeleteDaemonVolume *)self role];

  return _isSpecialAPFSVolume(role);
}

- (NSArray)siblings
{
  v3 = +[NSMutableArray array];
  selfCopy = self;
  bsdName = [(CacheDeleteDaemonVolume *)self bsdName];
  v5 = IOBSDNameMatching(kIOMainPortDefault, 0, [bsdName UTF8String] + 5);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);

  if (MatchingService)
  {
    v7 = IORegistryEntryCreateCFProperty(MatchingService, @"BSD Unit", kCFAllocatorDefault, 0);
  }

  else
  {
    v7 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = getLocalVolumes();
  v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v30;
    *&v9 = 138412802;
    v24 = v9;
    v25 = v7;
    v26 = v3;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [CacheDeleteVolume volumeWithMountpoint:v13, v24];
        v15 = v14;
        if (v14)
        {
          bsdName2 = [v14 bsdName];
          v17 = IOBSDNameMatching(kIOMainPortDefault, 0, [bsdName2 UTF8String] + 5);
          v18 = IOServiceGetMatchingService(kIOMainPortDefault, v17);

          if (v18)
          {
            v19 = IORegistryEntryCreateCFProperty(v18, @"BSD Unit", kCFAllocatorDefault, 0);
            if ([v7 isEqual:v19])
            {
              v20 = CDGetLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                bsdName3 = [v15 bsdName];
                bsdName4 = [(CacheDeleteDaemonVolume *)selfCopy bsdName];
                *buf = v24;
                v34 = v13;
                v35 = 2112;
                v36 = bsdName3;
                v37 = 2112;
                v38 = bsdName4;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "adding %@ %@ %@", buf, 0x20u);

                v3 = v26;
                v7 = v25;
              }

              [v3 addObject:v15];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v10);
  }

  return v3;
}

- (BOOL)hasSnapshotsExcludingTimeMachine
{
  selfCopy = self;
  timeMachineSnapshotRegex = [(CacheDeleteDaemonVolume *)self timeMachineSnapshotRegex];
  LOBYTE(selfCopy) = [(CacheDeleteDaemonVolume *)selfCopy hasSnapshotsExcludingRegularExpression:timeMachineSnapshotRegex];

  return selfCopy;
}

- (id)snapshots
{
  v3 = objc_opt_new();
  mountPoint = [(CacheDeleteDaemonVolume *)self mountPoint];
  [mountPoint fileSystemRepresentation];
  v5 = v3;
  v6 = enumerate_snapshots();

  if (v6)
  {
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mountPoint2 = [(CacheDeleteDaemonVolume *)self mountPoint];
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412546;
      v13 = mountPoint2;
      v14 = 2080;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to enumerate snapshots for volume %@: %s", buf, 0x16u);
    }
  }

  return v5;
}

void __47__CacheDeleteDaemonVolume_Snapshots__snapshots__block_invoke(uint64_t a1, void *a2)
{
  v6 = [NSString stringWithUTF8String:a2 + 2];
  v4 = *(a1 + 32);
  v5 = [[CacheDeleteSnapshotInfo alloc] initWithName:v6 uid:*a2];
  [v4 addObject:v5];
}

- (BOOL)hasSnapshotsMatchingRegularExpression:(id)expression
{
  expressionCopy = expression;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  mountPoint = [(CacheDeleteDaemonVolume *)self mountPoint];
  v6 = mountPoint;
  [mountPoint fileSystemRepresentation];
  v7 = expressionCopy;
  v15 = v7;
  v8 = enumerate_snapshots();

  if (v8)
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [(CacheDeleteDaemonVolume *)self mountPoint:_NSConcreteStackBlock];
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 138412546;
      v21 = v12;
      v22 = 2080;
      v23 = v14;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate shapshots for volume %@: %s", buf, 0x16u);
    }
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

void __76__CacheDeleteDaemonVolume_Snapshots__hasSnapshotsMatchingRegularExpression___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [NSString stringWithUTF8String:a2 + 16];
  if ([*(a1 + 32) numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)snapshotsMatchingRegularExpression:(id)expression
{
  expressionCopy = expression;
  v5 = objc_opt_new();
  mountPoint = [(CacheDeleteDaemonVolume *)self mountPoint];
  [mountPoint fileSystemRepresentation];
  v16 = expressionCopy;
  v7 = v5;
  v8 = expressionCopy;
  v9 = enumerate_snapshots();

  if (v9)
  {
    v10 = CDGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CacheDeleteDaemonVolume *)self mountPoint:_NSConcreteStackBlock];
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 138412546;
      v18 = v13;
      v19 = 2080;
      v20 = v15;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to enumerate snapshots for volume %@: %s", buf, 0x16u);
    }
  }

  v11 = v7;

  return v7;
}

void __73__CacheDeleteDaemonVolume_Snapshots__snapshotsMatchingRegularExpression___block_invoke(uint64_t a1, void *a2)
{
  v6 = [NSString stringWithUTF8String:a2 + 2];
  if ([*(a1 + 32) numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}])
  {
    v4 = *(a1 + 40);
    v5 = [[CacheDeleteSnapshotInfo alloc] initWithName:v6 uid:*a2];
    [v4 addObject:v5];
  }
}

- (BOOL)hasSnapshotsExcludingRegularExpression:(id)expression
{
  expressionCopy = expression;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mountPoint = [(CacheDeleteDaemonVolume *)self mountPoint];
  v6 = mountPoint;
  [mountPoint fileSystemRepresentation];
  v7 = expressionCopy;
  v8 = enumerate_snapshots();

  if (v8)
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mountPoint2 = [(CacheDeleteDaemonVolume *)self mountPoint];
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 138412546;
      v20 = mountPoint2;
      v21 = 2080;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate snapshots for volume %@: %s", buf, 0x16u);
    }
  }

  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10 & 1;
}

void __77__CacheDeleteDaemonVolume_Snapshots__hasSnapshotsExcludingRegularExpression___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [NSString stringWithUTF8String:a2 + 16];
  if (![*(a1 + 32) numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}])
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) mountPoint];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "hasSnapshotsExcludingRegularExpression %@: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)snapshotsExcludingRegularExpression:(id)expression
{
  expressionCopy = expression;
  v5 = objc_opt_new();
  mountPoint = [(CacheDeleteDaemonVolume *)self mountPoint];
  [mountPoint fileSystemRepresentation];
  v16 = expressionCopy;
  v7 = v5;
  v8 = expressionCopy;
  v9 = enumerate_snapshots();

  if (v9)
  {
    v10 = CDGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CacheDeleteDaemonVolume *)self mountPoint:_NSConcreteStackBlock];
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 138412546;
      v18 = v13;
      v19 = 2080;
      v20 = v15;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to enumerate snapshots for volume %@: %s", buf, 0x16u);
    }
  }

  v11 = v7;

  return v7;
}

void __74__CacheDeleteDaemonVolume_Snapshots__snapshotsExcludingRegularExpression___block_invoke(uint64_t a1, void *a2)
{
  v6 = [NSString stringWithUTF8String:a2 + 2];
  if (![*(a1 + 32) numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}])
  {
    v4 = *(a1 + 40);
    v5 = [[CacheDeleteSnapshotInfo alloc] initWithName:v6 uid:*a2];
    [v4 addObject:v5];
  }
}

- (id)snapshotsExcludingTimeMachine
{
  timeMachineSnapshotRegex = [(CacheDeleteDaemonVolume *)self timeMachineSnapshotRegex];
  v4 = [(CacheDeleteDaemonVolume *)self snapshotsExcludingRegularExpression:timeMachineSnapshotRegex];

  return v4;
}

- (CacheDeleteDaemonVolume)initWithPath:(id)path isPrimary:(BOOL)primary
{
  v20.receiver = self;
  v20.super_class = CacheDeleteDaemonVolume;
  v5 = [(CacheDeleteDaemonVolume *)&v20 initWithPath:path];
  v6 = v5;
  if (v5)
  {
    fsType = [(CacheDeleteDaemonVolume *)v5 fsType];

    if (fsType)
    {
      fsType2 = [(CacheDeleteDaemonVolume *)v6 fsType];
      v6->_isAPFSVolume = strcmp([fsType2 UTF8String], "apfs") == 0;
    }

    else
    {
      v6->_isAPFSVolume = 1;
    }

    bsdName = [(CacheDeleteDaemonVolume *)v6 bsdName];
    if (bsdName)
    {
      v10 = bsdName;
      bsdName2 = [(CacheDeleteDaemonVolume *)v6 bsdName];
      [bsdName2 UTF8String];
      v12 = APFSVolumeRole();

      if (v12)
      {
        v6->_role = 0;
      }
    }

    mountPoint = [(CacheDeleteDaemonVolume *)v6 mountPoint];
    [mountPoint UTF8String];
    v14 = VolUUID();
    uuid = v6->_uuid;
    v6->_uuid = v14;

    v6->_primary = primary;
    mountPoint2 = [(CacheDeleteDaemonVolume *)v6 mountPoint];
    [mountPoint2 UTF8String];
    v17 = thresholdsForMountPoint();
    thresholds = v6->__thresholds;
    v6->__thresholds = v17;

    v6->_validated = 0;
  }

  return v6;
}

- (CacheDeleteDaemonVolume)initWithVolume:(id)volume
{
  volumeCopy = volume;
  v12.receiver = self;
  v12.super_class = CacheDeleteDaemonVolume;
  v5 = [(CacheDeleteDaemonVolume *)&v12 initWithVolume:volumeCopy];
  if (v5)
  {
    uuid = [volumeCopy uuid];
    uuid = v5->_uuid;
    v5->_uuid = uuid;

    v5->_primary = [volumeCopy primary];
    v5->_reserve = [volumeCopy reserve];
    v5->_quota = [volumeCopy quota];
    v5->_isAPFSVolume = [volumeCopy isAPFSVolume];
    v5->_role = [volumeCopy role];
    _thresholds = [volumeCopy _thresholds];
    v9 = [_thresholds copy];
    thresholds = v5->__thresholds;
    v5->__thresholds = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CacheDeleteDaemonVolume alloc];

  return [(CacheDeleteDaemonVolume *)v4 initWithVolume:self];
}

+ (CacheDeleteDaemonVolume)volumeWithPath:(id)path
{
  pathCopy = path;
  v4 = [CacheDeleteDaemonVolume validateVolumeAtPath:pathCopy];
  if (v4)
  {
    v5 = [CacheDeleteDaemonVolume createVolume:v4 isPrimary:1];
  }

  else
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = pathCopy;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "CacheDeleteDaemonVolume volumeWithPath Unable to validate mount point for: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)createVolume:(id)volume isPrimary:(BOOL)primary
{
  volumeCopy = volume;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__7;
  v15[4] = __Block_byref_object_dispose__7;
  v16 = 0;
  if (qword_10006E2D8 != -1)
  {
    dispatch_once(&qword_10006E2D8, &__block_literal_global_7);
  }

  v6 = qword_10006E2E0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __50__CacheDeleteDaemonVolume_createVolume_isPrimary___block_invoke_2;
  v10[3] = &unk_100061FE0;
  v11 = volumeCopy;
  v12 = v15;
  v13 = &v17;
  primaryCopy = primary;
  v7 = volumeCopy;
  dispatch_sync(v6, v10);
  v8 = v18[5];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __50__CacheDeleteDaemonVolume_createVolume_isPrimary___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.cache_delete.volumes", 0);
  v2 = qword_10006E2E0;
  qword_10006E2E0 = v1;

  _MergedGlobals_1_1 = objc_opt_new();

  _objc_release_x1();
}

void __50__CacheDeleteDaemonVolume_createVolume_isPrimary___block_invoke_2(uint64_t a1)
{
  v2 = [_MergedGlobals_1_1 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v6 = [v5 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 138412290;
      v19 = v10;
      v11 = "CacheDeleteDaemonVolume createVolume: returned cached  CacheDeleteDaemonVolume from %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v18, 0xCu);
    }
  }

  else
  {
    v12 = [[CacheDeleteDaemonVolume alloc] initWithPath:*(a1 + 32) isPrimary:*(a1 + 56)];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 48) + 8) + 40);
    if (v15)
    {
      [_MergedGlobals_1_1 setObject:v15 forKeyedSubscript:*(a1 + 32)];
      v9 = CDGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v18 = 138412290;
        v19 = v16;
        v11 = "CacheDeleteDaemonVolume createVolume: created a CacheDeleteDaemonVolume from %@";
        goto LABEL_7;
      }
    }

    else
    {
      v9 = CDGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = 138412290;
        v19 = v17;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CacheDeleteDaemonVolume createVolume: Unable to create a CacheDeleteDaemonVolume from %@", &v18, 0xCu);
      }
    }
  }
}

+ (void)invalidateVolumesCache:(id)cache
{
  cacheCopy = cache;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = cacheCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaemonVolume invalidateVolumesCache  UUID %@", buf, 0xCu);
  }

  if (_MergedGlobals_1_1)
  {
    v5 = qword_10006E2E0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __50__CacheDeleteDaemonVolume_invalidateVolumesCache___block_invoke;
    block[3] = &unk_100060D58;
    v7 = cacheCopy;
    dispatch_sync(v5, block);
  }
}

void __50__CacheDeleteDaemonVolume_invalidateVolumesCache___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = [_MergedGlobals_1_1 allValues];
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = CDGetLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [v7 uuid];
            *buf = 138412290;
            v22 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaemonVolume invalidateVolumesCache %@", buf, 0xCu);
          }

          v10 = [v7 uuid];
          v11 = [v10 isEqual:*(a1 + 32)];

          if (v11)
          {
            v12 = CDGetLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v7 mountPoint];
              *buf = 138412290;
              v22 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaemonVolume invalidateVolumesCache removing %@", buf, 0xCu);
            }

            v14 = _MergedGlobals_1_1;
            v15 = [v7 mountPoint];
            [v14 removeObjectForKey:v15];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v16 = CDGetLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaemonVolume invalidateVolumesCache invalid UUID", buf, 2u);
    }

    [_MergedGlobals_1_1 removeAllObjects];
  }
}

+ (CacheDeleteDaemonVolume)volumeWithMountpoint:(id)mountpoint
{
  mountpointCopy = mountpoint;
  v4 = [CacheDeleteDaemonVolume volumeWithPath:mountpointCopy];
  mountPoint = [v4 mountPoint];
  stringByStandardizingPath = [mountPoint stringByStandardizingPath];
  stringByStandardizingPath2 = [mountpointCopy stringByStandardizingPath];

  LODWORD(mountpointCopy) = [stringByStandardizingPath isEqualToString:stringByStandardizingPath2];
  if (mountpointCopy)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containerTotalSize:(unint64_t *)size andFreespace:(unint64_t *)freespace
{
  [@"disk0s1" UTF8String];
  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CacheDeleteDaemonVolume containerTotalSize:andFreespace:]";
      v9 = 1024;
      v10 = SpaceInfo;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s : Failed to get container info - err: [%d]", &v7, 0x12u);
    }
  }

  return SpaceInfo == 0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CacheDeleteDaemonVolume;
  v2 = [(CacheDeleteDaemonVolume *)&v4 description];

  return v2;
}

@end