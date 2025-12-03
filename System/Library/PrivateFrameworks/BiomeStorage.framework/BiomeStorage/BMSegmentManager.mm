@interface BMSegmentManager
+ (id)segmentNameFromTimestamp:(double)timestamp;
+ (unint64_t)indexOfSegmentContainingEventTime:(double)time fromSegments:(id)segments;
+ (unint64_t)sizeOfNewFrameStoreInBytesFromNonPagedSize:(unint64_t)size storeLocationOptions:(int64_t)options;
- (BMSegmentManager)initWithDirectory:(id)directory fileManager:(id)manager permission:(unint64_t)permission config:(id)config;
- (BMSegmentManagerDelegate)delegate;
- (BOOL)isDataAccessible;
- (BOOL)removeSegmentNamed:(id)named reason:(unint64_t)reason direction:(unint64_t)direction;
- (NSOrderedSet)segmentNames;
- (NSString)lastSegmentName;
- (id)_segmentAfterFrameStore:(id)store orCreateSegmentWithTimestamp:(id)timestamp direction:(unint64_t)direction;
- (id)fileHandleForFile:(id)file error:(id *)error;
- (id)lastFrameStoreOrCreateWithTimestamp:(double)timestamp;
- (id)newFramestoreWithTimestamp:(double)timestamp segmentNames:(id)names segmentFileHandles:(id)handles;
- (id)nextSegmentAfterFrameStore:(id)store segmentNames:(id)names segmentFileHandles:(id)handles direction:(unint64_t)direction;
- (id)orderedSegmentsInDirectory:(id)directory error:(id *)error;
- (id)segmentAfterFrameStore:(id)store orCreateSegmentWithTimestamp:(double)timestamp;
- (id)segmentContainingTimestamp:(double)timestamp;
- (id)segmentWithFilename:(id)filename error:(id *)error;
- (id)segmentWithFilename:(id)filename segmentNames:(id)names segmentFileHandles:(id)handles error:(id *)error;
- (int64_t)cachingOptionsForFileHandleWithAttributes:(id)attributes;
- (void)_updateSegments;
- (void)cacheFileDescriptorsIfNecessary:(id)necessary;
- (void)dealloc;
- (void)enumerateSegmentsFrom:(double)from to:(double)to withBlock:(id)block;
- (void)enumerateSegmentsNamesFrom:(double)from to:(double)to withBlock:(id)block;
- (void)handleDeviceLocked;
- (void)handleDeviceLockedCX;
- (void)handleDeviceLocking;
- (void)handleDeviceLockingCX;
- (void)handleDeviceUnlock;
- (void)openFiles:(id)files saveToOpenFiles:(id)openFiles;
- (void)pruneSegmentsToMaxAge:(double)age;
- (void)pruneSegmentsToMaxSizeInBytes:(unint64_t)bytes;
- (void)reverseEnumerateSegmentsFrom:(double)from to:(double)to withBlock:(id)block;
- (void)reverseEnumerateSegmentsNamesFrom:(double)from to:(double)to withBlock:(id)block;
- (void)updateSegmentsWithGuardedDeviceLockStateData:(id)data;
@end

@implementation BMSegmentManager

uint64_t __36__BMSegmentManager_isDataAccessible__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 32) + 8) + 24) = v2 & 1;
  return result;
}

- (BOOL)isDataAccessible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  protectedState = self->_protectedState;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__BMSegmentManager_isDataAccessible__block_invoke;
  v5[3] = &unk_1E8338FF8;
  v5[4] = &v6;
  [(_PASLock *)protectedState runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  if (self->_deviceLockStateRegistration)
  {
    [MEMORY[0x1E698E998] unregister:?];
    deviceLockStateRegistration = self->_deviceLockStateRegistration;
    self->_deviceLockStateRegistration = 0;
  }

  v4.receiver = self;
  v4.super_class = BMSegmentManager;
  [(BMSegmentManager *)&v4 dealloc];
}

- (NSOrderedSet)segmentNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  protectedState = self->_protectedState;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__BMSegmentManager_segmentNames__block_invoke;
  v5[3] = &unk_1E8338FF8;
  v5[4] = &v6;
  [(_PASLock *)protectedState runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__BMSegmentManager_segmentNames__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  OUTLINED_FUNCTION_1_5([v4 copy], *(a1 + 32));
}

- (void)_updateSegments
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__BMSegmentManager__updateSegments__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

- (NSString)lastSegmentName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  protectedState = self->_protectedState;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__BMSegmentManager_lastSegmentName__block_invoke;
  v5[3] = &unk_1E8338FF8;
  v5[4] = &v6;
  [(_PASLock *)protectedState runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__BMSegmentManager_lastSegmentName__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  v4 = [v5 lastObject];
  OUTLINED_FUNCTION_1_5(v4, *(a1 + 32));
}

- (BMSegmentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleDeviceUnlock
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__BMSegmentManager_handleDeviceUnlock__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

uint64_t __38__BMSegmentManager_handleDeviceUnlock__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 1;
  }

  *(*(a1 + 32) + 64) = 0;
  return [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:a2];
}

- (BMSegmentManager)initWithDirectory:(id)directory fileManager:(id)manager permission:(unint64_t)permission config:(id)config
{
  directoryCopy = directory;
  managerCopy = manager;
  configCopy = config;
  v41.receiver = self;
  v41.super_class = BMSegmentManager;
  v13 = [(BMSegmentManager *)&v41 init];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [directoryCopy copy];
  path = v13->_path;
  v13->_path = v14;

  objc_storeStrong(&v13->_fileManager, manager);
  delegate = [(BMFileManager *)v13->_fileManager delegate];

  if (!delegate)
  {
    [(BMFileManager *)v13->_fileManager setDelegate:v13];
    if (configCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    v17 = [BMStoreConfig newStreamDefaultConfigurationForPublicStream:0];
    goto LABEL_7;
  }

  if (!configCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  v17 = configCopy;
LABEL_7:
  config = v13->_config;
  v13->_config = v17;

  v13->_permission = permission;
  v13->_lockingCXReceived = [MEMORY[0x1E698E998] isClassCXUnlocked] ^ 1;
  isDeviceUnlocked = [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  v20 = objc_alloc(MEMORY[0x1E69C5D60]);
  v21 = [[BMSegmentManagerProtectedState alloc] initWithDeviceStateIsUnlocked:isDeviceUnlocked];
  v22 = [v20 initWithGuardedData:v21];
  protectedState = v13->_protectedState;
  v13->_protectedState = v22;

  v24 = v13->_protectedState;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke;
  v39[3] = &unk_1E8338F80;
  v25 = v13;
  v40 = v25;
  [(_PASLock *)v24 runWithLockAcquired:v39];
  currentDevice = [(BMStoreConfig *)v13->_config currentDevice];
  if ([currentDevice canOpenFilesForProtectionClass:{-[BMStoreConfig protectionClass](v13->_config, "protectionClass")}])
  {
    v27 = v13->_protectedState;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_25;
    v36[3] = &unk_1E8338FA8;
    v37 = v25;
    permissionCopy = permission;
    [(_PASLock *)v27 runWithLockAcquired:v36];
  }

  objc_initWeak(&location, v25);
  v28 = MEMORY[0x1E698E998];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_27;
  v33[3] = &unk_1E8338FD0;
  objc_copyWeak(&v34, &location);
  v29 = MEMORY[0x1CCA85A30](v33);
  v30 = [v28 registerForLockStateChanges:v29];
  deviceLockStateRegistration = v25->_deviceLockStateRegistration;
  v25->_deviceLockStateRegistration = v30;

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

LABEL_10:
  return v13;
}

void __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = *(v1 + 8);
  v4 = *(v1 + 72);
  v9 = 0;
  v5 = [v3 createDirectoryAtPath:v4 error:&v9];
  v6 = v9;
  v7 = v6;
  if ((v5 & 1) == 0 && v6)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_cold_1(v2, v7, v8);
    }
  }
}

void __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_25(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:v3];
  if (v3)
  {
    *(v3 + 8) = 1;
    v4 = *(a1 + 40);
    v5 = *(v3 + 2);
  }

  else
  {
    v5 = 0;
    v4 = *(a1 + 40);
  }

  if (v4 == 1)
  {
    v6 = v5;
    [v6 lastObject];
  }

  else
  {
    v6 = v5;
    [v6 firstObject];
  }
  v7 = ;

  if (v7)
  {
    v8 = *(a1 + 32);
    if (v3)
    {
      v9 = *(v3 + 2);
      v10 = *(v3 + 3);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v21 = 0;
    v11 = v10;
    v12 = [v8 segmentWithFilename:v7 segmentNames:v9 segmentFileHandles:v11 error:&v21];
    v13 = v21;
    v14 = *(a1 + 32);
    v15 = *(v14 + 80);
    *(v14 + 80) = v12;

    if (v13)
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = [MEMORY[0x1E698E9C8] privacyPathname:*(*(a1 + 32) + 72)];
        *buf = 138412802;
        v23 = v7;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&dword_1C928A000, v16, OS_LOG_TYPE_ERROR, "Unable to open framestore: %@ in %@ with error: %@", buf, 0x20u);
      }

      v17 = *(a1 + 32);
      v18 = *(v17 + 80);
      *(v17 + 80) = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_27(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained handleDeviceLockingCX];
      goto LABEL_14;
    }

    if (a2 == 4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained handleDeviceLockedCX];
      goto LABEL_14;
    }

    if (a2 != 3)
    {
      return;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained handleDeviceLocked];
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained handleDeviceLocking];
    }

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceUnlock];
LABEL_14:
}

- (void)pruneSegmentsToMaxSizeInBytes:(unint64_t)bytes
{
  v23 = *MEMORY[0x1E69E9840];
  if (bytes && bytes != -1)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke;
    v14[3] = &unk_1E8339020;
    v14[4] = self;
    v14[5] = v21;
    v14[6] = &v15;
    v14[7] = bytes;
    [(BMSegmentManager *)self reverseEnumerateSegmentsNamesFrom:v14 to:0.0 withBlock:-1.0];
    if ([v16[5] count])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v16[5];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v22 count:16];
      if (v6)
      {
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [(BMSegmentManager *)self removeSegmentNamed:*(*(&v10 + 1) + 8 * v8++), v10];
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v10 objects:v22 count:16];
        }

        while (v6);
      }

      [(BMSegmentManager *)self _updateSegments];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(v21, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (*(*(a1[5] + 8) + 24) >= a1[7])
  {
    [*(*(a1[6] + 8) + 40) addObject:v3];
  }

  else
  {
    v5 = [*(a1[4] + 72) stringByAppendingPathComponent:v3];
    v6 = *(a1[4] + 8);
    v11 = 0;
    v7 = [v6 sizeOfFileAtPath:v5 error:&v11];
    v8 = v11;
    *(*(a1[5] + 8) + 24) += v7;
    if (v8)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke_cold_1(v8, v5);
      }
    }

    else if (!v7)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke_cold_2(v5, v10);
      }

      [*(*(a1[6] + 8) + 40) addObject:v3];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)pruneSegmentsToMaxAge:(double)age
{
  v24 = *MEMORY[0x1E69E9840];
  if (age != 0.0 && age != -1.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = objc_opt_new();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__BMSegmentManager_pruneSegmentsToMaxAge___block_invoke;
    v16[3] = &unk_1E8339048;
    *&v16[5] = Current - age;
    v16[4] = &v17;
    [(BMSegmentManager *)self enumerateSegmentsFrom:v16 to:0.0 withBlock:?];
    [v18[5] removeLastObject];
    if ([v18[5] count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v18[5];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v23 count:16];
      if (v8)
      {
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [(BMSegmentManager *)self removeSegmentNamed:*(*(&v12 + 1) + 8 * i), v12];
          }

          v8 = [v7 countByEnumeratingWithState:&v12 objects:v23 count:16];
        }

        while (v8);
      }

      [(BMSegmentManager *)self _updateSegments];
    }

    _Block_object_dispose(&v17, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __42__BMSegmentManager_pruneSegmentsToMaxAge___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  [BMSegmentManager timestampFromSegmentName:?];
  if (v6 >= *(a1 + 40))
  {
    *a4 = 1;
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  }
}

+ (id)segmentNameFromTimestamp:(double)timestamp
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", vcvtmd_u64_f64(timestamp * 1000000.0)];

  return v3;
}

+ (unint64_t)indexOfSegmentContainingEventTime:(double)time fromSegments:(id)segments
{
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    if (time <= 0.0)
    {
      v16 = 0;
    }

    else
    {
      v7 = [self segmentNameFromTimestamp:time];
      v8 = [segmentsCopy count];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67__BMSegmentManager_indexOfSegmentContainingEventTime_fromSegments___block_invoke;
      v18[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
      v18[4] = self;
      v9 = [segmentsCopy indexOfObject:v7 inSortedRange:0 options:v8 usingComparator:{1024, v18}];
      if (v9 && v9 < [segmentsCopy count])
      {
        v10 = MEMORY[0x1E696AD98];
        v11 = [segmentsCopy objectAtIndexedSubscript:v9];
        [self timestampFromSegmentName:v11];
        v12 = [v10 numberWithDouble:?];

        v13 = MEMORY[0x1E696AD98];
        [self timestampFromSegmentName:v7];
        v14 = [v13 numberWithDouble:?];
        v15 = [v12 compare:v14] != 0;
      }

      else
      {
        v15 = v9 == [segmentsCopy count];
      }

      v16 = v9 - v15;
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v16;
}

uint64_t __67__BMSegmentManager_indexOfSegmentContainingEventTime_fromSegments___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 timestampFromSegmentName:a2];
  v8 = [v5 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [*(a1 + 32) timestampFromSegmentName:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 compare:v12];

  return v13;
}

- (void)cacheFileDescriptorsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(BMSegmentManager *)self shouldCacheFileDescriptors])
  {
    [(BMSegmentManager *)necessaryCopy cacheFileDescriptorsIfNecessary:?];
  }
}

- (void)openFiles:(id)files saveToOpenFiles:(id)openFiles
{
  v22 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  openFilesCopy = openFiles;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = filesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [(BMSegmentManager *)self fileHandleForFile:v13 error:0, v17];
        if (v15)
        {
          [openFilesCopy setObject:v15 forKeyedSubscript:v13];
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)fileHandleForFile:(id)file error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    v7 = [(NSString *)self->_path stringByAppendingPathComponent:fileCopy];
    if (self->_permission)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0x20000000;
    }

    v9 = -[BMFileManager fileHandleForFileAtPath:flags:protection:error:](self->_fileManager, "fileHandleForFileAtPath:flags:protection:error:", v7, v8, [MEMORY[0x1E698E998] biomeProtectionClassToOSProtectionClass:{-[BMStoreConfig protectionClass](self->_config, "protectionClass")}], error);
  }

  else
  {
    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"Failed to create new framestore with nil filename";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v10 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v11];
    }

    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager fileHandleForFile:error:];
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)orderedSegmentsInDirectory:(id)directory error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  v7 = objc_opt_new();
  v8 = objc_autoreleasePoolPush();
  fileManager = self->_fileManager;
  v29 = 0;
  v10 = [(BMFileManager *)fileManager contentsOfDirectoryAtPath:directoryCopy error:&v29];
  v11 = v29;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v24 = v8;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          if ([v20 characterAtIndex:0] - 48 <= 9)
          {
            [v7 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    [v7 sortUsingComparator:&__block_literal_global_0];
    v8 = v24;
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager orderedSegmentsInDirectory:directoryCopy error:?];
    }
  }

  objc_autoreleasePoolPop(v8);
  if (error && v12)
  {
    v21 = v12;
    *error = v12;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __53__BMSegmentManager_orderedSegmentsInDirectory_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 length];
  if (v6 == [v4 length])
  {
    v7 = [v5 compare:v4];
  }

  else
  {
    v8 = [v5 length];

    if (v8 < [v4 length])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)lastFrameStoreOrCreateWithTimestamp:(double)timestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  protectedState = self->_protectedState;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__BMSegmentManager_lastFrameStoreOrCreateWithTimestamp___block_invoke;
  v6[3] = &unk_1E83390D8;
  v6[4] = self;
  v6[5] = &v7;
  *&v6[6] = timestamp;
  [(_PASLock *)protectedState runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)segmentAfterFrameStore:(id)store orCreateSegmentWithTimestamp:(double)timestamp
{
  v6 = MEMORY[0x1E696AD98];
  storeCopy = store;
  v8 = [v6 numberWithDouble:timestamp];
  v9 = [(BMSegmentManager *)self _segmentAfterFrameStore:storeCopy orCreateSegmentWithTimestamp:v8 direction:0];

  return v9;
}

- (id)_segmentAfterFrameStore:(id)store orCreateSegmentWithTimestamp:(id)timestamp direction:(unint64_t)direction
{
  storeCopy = store;
  timestampCopy = timestamp;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  protectedState = self->_protectedState;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__BMSegmentManager__segmentAfterFrameStore_orCreateSegmentWithTimestamp_direction___block_invoke;
  v15[3] = &unk_1E8339128;
  v11 = storeCopy;
  v16 = v11;
  selfCopy = self;
  v19 = &v21;
  directionCopy = direction;
  v12 = timestampCopy;
  v18 = v12;
  [(_PASLock *)protectedState runWithLockAcquired:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __83__BMSegmentManager__segmentAfterFrameStore_orCreateSegmentWithTimestamp_direction___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) segmentName];
    *buf = 138412290;
    v55 = v5;
    _os_log_impl(&dword_1C928A000, v4, OS_LOG_TYPE_INFO, "_segmentAfterFrameStore: %@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v3)
  {
    v8 = v3[2];
    v9 = v3[3];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(a1 + 64);
  v11 = v9;
  v12 = [v6 nextSegmentAfterFrameStore:v7 segmentNames:v8 segmentFileHandles:v11 direction:v10];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (!v15)
  {
    if (*(a1 + 64) || *(a1 + 48))
    {
      goto LABEL_29;
    }

    [*(a1 + 40) updateSegmentsWithGuardedDeviceLockStateData:v3];
    v39 = *(a1 + 32);
    v38 = *(a1 + 40);
    if (v3)
    {
      v40 = v3[2];
      v41 = v3[3];
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v42 = *(a1 + 64);
    v43 = v41;
    v44 = [v38 nextSegmentAfterFrameStore:v39 segmentNames:v40 segmentFileHandles:v43 direction:v42];
    v45 = *(*(a1 + 56) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;

    v15 = *(*(*(a1 + 56) + 8) + 40);
    if (!v15)
    {
LABEL_29:
      if (*(a1 + 48))
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C928A000, v16, OS_LOG_TYPE_INFO, "_segmentAfterFrameStore: Attempting to create new frame store", buf, 2u);
        }

        v17 = *(a1 + 40);
        v18 = *(v17 + 72);
        v19 = [*(v17 + 40) datastorePath];
        LOBYTE(v18) = [v18 hasPrefix:v19];

        if ((v18 & 1) == 0)
        {
          v20 = __biome_log_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            __83__BMSegmentManager__segmentAfterFrameStore_orCreateSegmentWithTimestamp_direction___block_invoke_cold_1();
          }
        }

        v21 = *(a1 + 40);
        v22 = *(v21 + 72);
        v23 = [*(v21 + 40) datastorePath];
        v24 = [v22 substringFromIndex:{objc_msgSend(v23, "length")}];

        if ([v24 hasPrefix:@"/"])
        {
          v25 = [v24 substringFromIndex:1];

          v24 = v25;
        }

        v26 = [v24 substringToIndex:{objc_msgSend(v24, "rangeOfString:", @"/"}];

        v27 = [*(*(a1 + 40) + 40) datastorePath];
        v28 = [v27 stringByAppendingPathComponent:v26];
        v29 = [MEMORY[0x1E698EA08] lock];
        v30 = [v28 stringByAppendingPathComponent:v29];

        v31 = __biome_log_for_category();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v55 = v30;
          _os_log_impl(&dword_1C928A000, v31, OS_LOG_TYPE_INFO, "_segmentAfterFrameStore: Attempting to acquire lockfile: %@", buf, 0xCu);
        }

        v32 = *(a1 + 40);
        v33 = *(v32 + 8);
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __83__BMSegmentManager__segmentAfterFrameStore_orCreateSegmentWithTimestamp_direction___block_invoke_57;
        v48[3] = &unk_1E8339100;
        v48[4] = v32;
        v34 = v3;
        v35 = *(a1 + 56);
        v49 = v34;
        v52 = v35;
        v36 = *(a1 + 32);
        v37 = *(a1 + 64);
        v50 = v36;
        v53 = v37;
        v51 = *(a1 + 48);
        [v33 acquireLockfile:v30 andRunBlock:v48];

        v15 = *(*(*(a1 + 56) + 8) + 40);
      }

      else
      {
        v15 = 0;
      }
    }
  }

  objc_storeStrong((*(a1 + 40) + 80), v15);

  v47 = *MEMORY[0x1E69E9840];
}

- (id)nextSegmentAfterFrameStore:(id)store segmentNames:(id)names segmentFileHandles:(id)handles direction:(unint64_t)direction
{
  v41 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  namesCopy = names;
  handlesCopy = handles;
  if (direction)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  v29 = storeCopy;
  if (storeCopy && ([storeCopy segmentName], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(namesCopy, "indexOfObject:", v12), v12, v13 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = v13 + v11;
  }

  else if (direction)
  {
    v14 = [namesCopy count] - 1;
  }

  else
  {
    v14 = 0;
  }

  if (direction == 1)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  do
  {
    v16 = [namesCopy count];
    v17 = 0;
    if ((v14 & 0x8000000000000000) != 0 || v14 >= v16)
    {
      break;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = [namesCopy objectAtIndexedSubscript:v14];
    v32 = 0;
    v17 = [(BMSegmentManager *)self segmentWithFilename:v19 segmentNames:namesCopy segmentFileHandles:handlesCopy error:&v32];
    v20 = v32;
    if (direction || ([namesCopy containsObject:v19] & 1) == 0)
    {
      v21 = v15;
      if (v20)
      {
LABEL_20:
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          segmentName = [v29 segmentName];
          v26 = MEMORY[0x1E698E9C8];
          path = [(BMSegmentManager *)self path];
          v25 = [v26 privacyPathname:path];
          *buf = 138413058;
          v34 = v19;
          v35 = 2112;
          v36 = segmentName;
          v37 = 2112;
          v38 = v25;
          v39 = 2112;
          v40 = v20;
          _os_log_error_impl(&dword_1C928A000, v22, OS_LOG_TYPE_ERROR, "Unable to getNextSegment (%@) for prevFrameStore:%@ in:%@. Error: %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v21 = 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    v14 += v21;

    objc_autoreleasePoolPop(v18);
  }

  while (!v17);

  v23 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (unint64_t)sizeOfNewFrameStoreInBytesFromNonPagedSize:(unint64_t)size storeLocationOptions:(int64_t)options
{
  v4 = 0x100000;
  if (size >= 0x100000)
  {
    sizeCopy2 = 0x100000;
  }

  else
  {
    sizeCopy2 = size;
  }

  if ((options & 2) == 0)
  {
    sizeCopy2 = size;
  }

  if (sizeCopy2 < 0x100000)
  {
    v4 = sizeCopy2;
  }

  if ((options & 4) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = sizeCopy2;
  }

  v7 = NSPageSize();
  v8 = NSPageSize();
  v9 = v6 / v8;
  if (v8 > v6)
  {
    v9 = 1;
  }

  return v9 * v7;
}

- (id)newFramestoreWithTimestamp:(double)timestamp segmentNames:(id)names segmentFileHandles:(id)handles
{
  namesCopy = names;
  handlesCopy = handles;
  v10 = [objc_opt_class() segmentNameFromTimestamp:timestamp];
  lastObject = [namesCopy lastObject];
  if (!lastObject || (v12 = [v10 longLongValue], v12 >= objc_msgSend(lastObject, "longLongValue")))
  {
    v15 = [MEMORY[0x1E698E998] biomeProtectionClassToOSProtectionClass:{-[BMStoreConfig protectionClass](self->_config, "protectionClass")}];
    fileManager = self->_fileManager;
    v35 = 0;
    v13 = [(BMFileManager *)fileManager temporaryFileHandleWithProtection:v15 error:&v35];
    v17 = v35;
    if (v13)
    {
      storeLocationOption = [(BMStoreConfig *)self->_config storeLocationOption];
      if (+[BMFrameStore writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:](BMFrameStore, "writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:", v13, [objc_opt_class() sizeOfNewFrameStoreInBytesFromNonPagedSize:-[BMStoreConfig segmentSize](self->_config storeLocationOptions:{"segmentSize"), -[BMStoreConfig storeLocationOption](self->_config, "storeLocationOption")}], -[BMStoreConfig configDatastoreVersion](self->_config, "configDatastoreVersion")))
      {
        v18 = [(NSString *)self->_path stringByAppendingPathComponent:v10];
        v19 = self->_fileManager;
        v34[1] = v17;
        v32 = v18;
        v20 = [BMFileManager replaceFileAtPath:v19 withFileHandle:"replaceFileAtPath:withFileHandle:protection:flags:error:" protection:? flags:? error:?];
        v21 = v17;

        if (v20)
        {
          [handlesCopy setObject:v20 forKeyedSubscript:v10];
          v34[0] = v21;
          v22 = [(BMSegmentManager *)self segmentWithFilename:v10 segmentNames:namesCopy segmentFileHandles:handlesCopy error:v34];
          v17 = v34[0];
        }

        else
        {
          v22 = 0;
          v17 = v21;
        }

        pruningPolicy = [(BMStoreConfig *)self->_config pruningPolicy];
        v27 = pruningPolicy;
        if ((storeLocationOption & 2) != 0)
        {
          if ([pruningPolicy maxStreamSize])
          {
            maxStreamSize = [v27 maxStreamSize];
            if (maxStreamSize >= 0x3200000)
            {
              maxStreamSize2 = 52428800;
            }

            else
            {
              maxStreamSize2 = maxStreamSize;
            }
          }

          else
          {
            maxStreamSize2 = 52428800;
          }
        }

        else
        {
          if (![pruningPolicy pruneOnAccess])
          {
            goto LABEL_31;
          }

          maxStreamSize2 = [v27 maxStreamSize];
        }

        [(BMSegmentManager *)self pruneSegmentsToMaxSizeInBytes:maxStreamSize2];
LABEL_31:
        if ([v27 pruneOnAccess])
        {
          [v27 maxAge];
          [(BMSegmentManager *)self pruneSegmentsToMaxAge:?];
        }

        if (!v20 || v17)
        {
          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [BMSegmentManager newFramestoreWithTimestamp:v32 segmentNames:? segmentFileHandles:?];
          }
        }

        else
        {
          if (v22)
          {
            v14 = v22;
LABEL_42:

            goto LABEL_43;
          }

          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [BMSegmentManager newFramestoreWithTimestamp:v32 segmentNames:? segmentFileHandles:?];
          }
        }

        v14 = 0;
        goto LABEL_42;
      }

      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [BMSegmentManager newFramestoreWithTimestamp:segmentNames:segmentFileHandles:];
      }
    }

    else
    {
      v23 = __biome_log_for_category();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (!v17)
      {
        if (v24)
        {
          [BMSegmentManager newFramestoreWithTimestamp:segmentNames:segmentFileHandles:];
        }

        v14 = 0;
        v17 = v23;
        goto LABEL_43;
      }

      if (v24)
      {
        [BMSegmentManager newFramestoreWithTimestamp:segmentNames:segmentFileHandles:];
      }
    }

    v14 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BMSegmentManager newFramestoreWithTimestamp:segmentNames:segmentFileHandles:];
  }

  v14 = 0;
LABEL_44:

  return v14;
}

- (id)segmentWithFilename:(id)filename error:(id *)error
{
  filenameCopy = filename;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  protectedState = self->_protectedState;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__BMSegmentManager_segmentWithFilename_error___block_invoke;
  v12[3] = &unk_1E8339150;
  v14 = &v16;
  v12[4] = self;
  v8 = filenameCopy;
  v13 = v8;
  v15 = &v22;
  [(_PASLock *)protectedState runWithLockAcquired:v12];
  if (error)
  {
    v9 = v23[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __46__BMSegmentManager_segmentWithFilename_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  if (a2)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = v7;
  v10 = [v3 segmentWithFilename:v4 segmentNames:v6 segmentFileHandles:v9 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)segmentWithFilename:(id)filename segmentNames:(id)names segmentFileHandles:(id)handles error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  namesCopy = names;
  handlesCopy = handles;
  v13 = handlesCopy;
  if (!filenameCopy)
  {
    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32[0] = @"Failed to create new framestore with nil filename";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *error = [v18 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v19];
    }

    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager fileHandleForFile:error:];
    }

    goto LABEL_13;
  }

  v14 = [handlesCopy objectForKeyedSubscript:filenameCopy];
  if (!v14)
  {
    v28 = 0;
    v14 = [(BMSegmentManager *)self fileHandleForFile:filenameCopy error:&v28];
    v20 = v28;
    if (!v20)
    {
      if ([(BMSegmentManager *)self shouldCacheFileDescriptors])
      {
        [v13 setObject:v14 forKeyedSubscript:filenameCopy];
      }

      goto LABEL_3;
    }

    v21 = v20;
    if (error)
    {
      v22 = v20;
      *error = v21;
    }

    [namesCopy removeObject:filenameCopy];

LABEL_13:
    v16 = 0;
    goto LABEL_20;
  }

LABEL_3:
  [namesCopy addObject:filenameCopy];
  v15 = [[BMFrameStore alloc] initWithFileHandle:v14 permission:self->_permission datastoreVersion:[(BMStoreConfig *)self->_config configDatastoreVersion]];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"Failed to instantiate framestore with path";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *error = [v23 errorWithDomain:@"com.apple.biome.BiomeStorage" code:2 userInfo:v24];
    }

    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager segmentWithFilename:v14 segmentNames:? segmentFileHandles:? error:?];
    }
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)segmentContainingTimestamp:(double)timestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  protectedState = self->_protectedState;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BMSegmentManager_segmentContainingTimestamp___block_invoke;
  v6[3] = &unk_1E8339178;
  *&v6[6] = timestamp;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)protectedState runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)removeSegmentNamed:(id)named reason:(unint64_t)reason direction:(unint64_t)direction
{
  v35 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  delegate = [(BMSegmentManager *)self delegate];

  if (delegate)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = 0;
    protectedState = self->_protectedState;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__BMSegmentManager_removeSegmentNamed_reason_direction___block_invoke;
    v27[3] = &unk_1E83391A0;
    p_buf = &buf;
    v27[4] = self;
    v11 = namedCopy;
    v28 = v11;
    [(_PASLock *)protectedState runWithLockAcquired:v27];
    if (*(*(&buf + 1) + 40))
    {
      delegate2 = [(BMSegmentManager *)self delegate];
      [delegate2 segmentManager:self willDeleteSegmentName:v11 frameStore:*(*(&buf + 1) + 40) reason:reason direction:direction];
    }

    _Block_object_dispose(&buf, 8);
  }

  v13 = [(NSString *)self->_path stringByAppendingPathComponent:namedCopy];
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E698E9C8] privacyPathname:v13];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_1C928A000, v14, OS_LOG_TYPE_DEFAULT, "Removing frame store: %{public}@", &buf, 0xCu);
  }

  v16 = self->_protectedState;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__BMSegmentManager_removeSegmentNamed_reason_direction___block_invoke_62;
  v25[3] = &unk_1E8338F80;
  v17 = namedCopy;
  v26 = v17;
  [(_PASLock *)v16 runWithLockAcquired:v25];
  fileManager = self->_fileManager;
  v24 = 0;
  v19 = [(BMFileManager *)fileManager removeFileAtPath:v13 error:&v24];
  v20 = v24;
  if (!v20)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager removeSegmentNamed:v13 reason:? direction:?];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

void __56__BMSegmentManager_removeSegmentNamed_reason_direction___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  if (a2)
  {
    v11 = *(a2 + 16);
    v6 = *(a2 + 24);
  }

  else
  {
    v11 = 0;
    v6 = 0;
  }

  v7 = v6;
  v8 = [v3 segmentWithFilename:v4 segmentNames:v11 segmentFileHandles:v7 error:0];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)enumerateSegmentsFrom:(double)from to:(double)to withBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__BMSegmentManager_enumerateSegmentsFrom_to_withBlock___block_invoke;
  v10[3] = &unk_1E83391C8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(BMSegmentManager *)self enumerateSegmentsNamesFrom:v10 to:from withBlock:to];
}

void __55__BMSegmentManager_enumerateSegmentsFrom_to_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 segmentWithFilename:v3 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E698E9C8];
      v10 = [*(*(a1 + 32) + 72) stringByAppendingPathComponent:v3];
      v11 = [v9 privacyPathname:v10];
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_1C928A000, v7, OS_LOG_TYPE_ERROR, "Failed to open frame store %{public}@ during enumeration, error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSegmentsNamesFrom:(double)from to:(double)to withBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (from > to && to != -1.0)
  {
    segmentNames = __biome_log_for_category();
    if (os_log_type_enabled(segmentNames, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager enumerateSegmentsNamesFrom:to:withBlock:];
    }

    goto LABEL_26;
  }

  segmentNames = [(BMSegmentManager *)self segmentNames];
  if (![segmentNames count])
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x1E698E9C8];
      path = [(BMSegmentManager *)self path];
      v16 = [v14 privacyPathname:path];
      *v20 = 138412290;
      *&v20[4] = v16;
      _os_log_impl(&dword_1C928A000, v13, OS_LOG_TYPE_INFO, "No segments to enumerate: %@", v20, 0xCu);
    }

    goto LABEL_25;
  }

  if (from == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_opt_class() indexOfSegmentContainingEventTime:segmentNames fromSegments:from];
  }

  if (to == -1.0)
  {
    v17 = [segmentNames count]- 1;
  }

  else
  {
    v17 = [objc_opt_class() indexOfSegmentContainingEventTime:segmentNames fromSegments:to];
  }

  if (v10 >= [segmentNames count]|| v17 >= [segmentNames count])
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager enumerateSegmentsNamesFrom:to:withBlock:];
    }

LABEL_25:

    goto LABEL_26;
  }

  for (; v10 <= v17; ++v10)
  {
    v20[0] = 0;
    v18 = [segmentNames objectAtIndexedSubscript:v10, *v20];
    blockCopy[2](blockCopy, v18, v20);

    if (v20[0])
    {
      break;
    }
  }

LABEL_26:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)reverseEnumerateSegmentsFrom:(double)from to:(double)to withBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__BMSegmentManager_reverseEnumerateSegmentsFrom_to_withBlock___block_invoke;
  v10[3] = &unk_1E83391C8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(BMSegmentManager *)self reverseEnumerateSegmentsNamesFrom:v10 to:from withBlock:to];
}

void __62__BMSegmentManager_reverseEnumerateSegmentsFrom_to_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 segmentWithFilename:v3 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E698E9C8];
      v10 = [*(*(a1 + 32) + 72) stringByAppendingPathComponent:v3];
      v11 = [v9 privacyPathname:v10];
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_1C928A000, v7, OS_LOG_TYPE_ERROR, "Failed to open frame store %{public}@ during reverse enumeration, error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reverseEnumerateSegmentsNamesFrom:(double)from to:(double)to withBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = from <= to || to == -1.0;
  if (!v9)
  {
    segmentNames = __biome_log_for_category();
    if (os_log_type_enabled(segmentNames, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager enumerateSegmentsNamesFrom:to:withBlock:];
    }

    goto LABEL_29;
  }

  segmentNames = [(BMSegmentManager *)self segmentNames];
  if (![segmentNames count])
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x1E698E9C8];
      path = [(BMSegmentManager *)self path];
      v16 = [v14 privacyPathname:path];
      *v22 = 138412290;
      *&v22[4] = v16;
      _os_log_impl(&dword_1C928A000, v13, OS_LOG_TYPE_INFO, "No segments to enumerate: %@", v22, 0xCu);
    }

    goto LABEL_28;
  }

  if (from == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_opt_class() indexOfSegmentContainingEventTime:segmentNames fromSegments:from];
  }

  if (to == -1.0)
  {
    v17 = [segmentNames count]- 1;
  }

  else
  {
    v17 = [objc_opt_class() indexOfSegmentContainingEventTime:segmentNames fromSegments:to];
  }

  if (v10 >= [segmentNames count]|| v17 >= [segmentNames count])
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMSegmentManager reverseEnumerateSegmentsNamesFrom:to:withBlock:];
    }

LABEL_28:

    goto LABEL_29;
  }

  v22[0] = 0;
  v18 = [segmentNames objectAtIndexedSubscript:v17];
  blockCopy[2](blockCopy, v18, v22);

  if ((v22[0] & 1) == 0 && v17 != v10)
  {
    v19 = v17 - 1;
    do
    {
      v22[0] = 0;
      v20 = [segmentNames objectAtIndexedSubscript:v19, *v22];
      blockCopy[2](blockCopy, v20, v22);

      if (v22[0])
      {
        break;
      }

      v9 = v10 == v19--;
    }

    while (!v9);
  }

LABEL_29:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceLockedCX
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__BMSegmentManager_handleDeviceLockedCX__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

void __40__BMSegmentManager_handleDeviceLockedCX__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v4 = v6;
  if ((*(v6 + 64) & 1) == 0)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__BMSegmentManager_handleDeviceLockedCX__block_invoke_cold_1(v5);
    }

    v4 = *v5;
  }

  *(v4 + 64) = 1;
  v8 = [*(*v5 + 40) protectionClass];
  if (v3 && v8 == 5)
  {
    v3[8] = 0;
  }
}

- (void)handleDeviceLockingCX
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__BMSegmentManager_handleDeviceLockingCX__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

uint64_t __41__BMSegmentManager_handleDeviceLockingCX__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(a1 + 32) + 64) = 1;
  v3 = [*(*(a1 + 32) + 40) protectionClass];
  if (v5 && v3 == 5)
  {
    v5[8] = 0;
  }

  return MEMORY[0x1EEE66BB8](v3);
}

- (void)handleDeviceLocking
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__BMSegmentManager_handleDeviceLocking__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

- (void)handleDeviceLocked
{
  protectedState = self->_protectedState;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__BMSegmentManager_handleDeviceLocked__block_invoke;
  v3[3] = &unk_1E8338F80;
  v3[4] = self;
  [(_PASLock *)protectedState runWithLockAcquired:v3];
}

uint64_t __38__BMSegmentManager_handleDeviceLocked__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E698E998] losesReadAccessOnLock:{objc_msgSend(*(*(a1 + 32) + 40), "protectionClass")}];
  if (v5 && v3)
  {
    v5[8] = 0;
  }

  return MEMORY[0x1EEE66BB8](v3);
}

- (int64_t)cachingOptionsForFileHandleWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  path = [attributesCopy path];
  lastPathComponent = [path lastPathComponent];

  localDevice = [MEMORY[0x1E698EA08] localDevice];
  if ([lastPathComponent isEqual:localDevice])
  {
    goto LABEL_6;
  }

  remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
  if ([lastPathComponent isEqual:remoteDevices])
  {
LABEL_5:

LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  lock = [MEMORY[0x1E698EA08] lock];
  if ([lastPathComponent isEqual:lock])
  {

    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E698EA08] tmp];
  v12 = [lastPathComponent isEqual:v11];

  if (v12)
  {
    v9 = 1;
    goto LABEL_8;
  }

  metadata = [MEMORY[0x1E698EA08] metadata];
  v14 = [lastPathComponent isEqual:metadata];

  if (v14)
  {
    v9 = 0;
    goto LABEL_8;
  }

  path2 = [attributesCopy path];
  localDevice = [path2 componentsSeparatedByString:@"/"];

  if ([localDevice count] < 2)
  {
    v9 = 2;
  }

  else
  {
    v16 = [localDevice objectAtIndexedSubscript:{objc_msgSend(localDevice, "count") - 2}];
    remoteDevices2 = [MEMORY[0x1E698EA08] remoteDevices];
    v18 = [v16 isEqual:remoteDevices2];

    if (v18)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_7:

LABEL_8:
  return v9;
}

- (void)updateSegmentsWithGuardedDeviceLockStateData:(id)data
{
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  path = self->_path;
  v9 = 0;
  v7 = [(BMSegmentManager *)self orderedSegmentsInDirectory:path error:&v9];
  v8 = v9;
  [(BMSegmentManagerProtectedState *)dataCopy setSegmentNames:v7];

  [(BMSegmentManagerProtectedState *)dataCopy setError:v8];
  [(BMSegmentManager *)self cacheFileDescriptorsIfNecessary:dataCopy];
  objc_autoreleasePoolPop(v5);
}

void __56__BMSegmentManager_lastFrameStoreOrCreateWithTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v4 = v4[2];
  }

  if ([v4 count])
  {
    if (v5)
    {
      v6 = v5[2];
      v7 = v5[2];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7;
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];

    v10 = *(a1 + 32);
    if (v5)
    {
      ShouldTryAgainLater = v5[2];
      v11 = v5[3];
    }

    else
    {
      ShouldTryAgainLater = 0;
      v11 = 0;
    }

    v12 = v11;
    v13 = [v10 segmentWithFilename:v9 segmentNames:ShouldTryAgainLater segmentFileHandles:v12 error:0];
    OUTLINED_FUNCTION_1_5(v13, *(a1 + 40));
  }

  else if (v5)
  {
    v35 = v5[4];
    if (v35)
    {
      v36 = v35;
      v37 = v5[4];
      ShouldTryAgainLater = BMStorageErrorShouldTryAgainLater();

      if (ShouldTryAgainLater)
      {
        [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:v5];
        if (v5[4])
        {
          goto LABEL_22;
        }
      }
    }
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (!v14)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C928A000, v15, OS_LOG_TYPE_INFO, "lastFrameStoreOrCreateWithTimestamp: Attempting to create new frame store", buf, 2u);
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 72);
    [*(v16 + 40) datastorePath];
    objc_claimAutoreleasedReturnValue();
    LOBYTE(v17) = [OUTLINED_FUNCTION_8_0() hasPrefix:ShouldTryAgainLater];

    if ((v17 & 1) == 0)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C928A000, v18, OS_LOG_TYPE_FAULT, "lastFrameStoreOrCreateWithTimestamp: Assertion Failed: [_path hasPrefix:_config.datastorePath]", buf, 2u);
      }
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 72);
    v21 = [*(v19 + 40) datastorePath];
    v22 = [v20 substringFromIndex:{objc_msgSend(v21, "length")}];

    if ([v22 hasPrefix:@"/"])
    {
      v23 = [v22 substringFromIndex:1];

      v22 = v23;
    }

    v24 = [v22 substringToIndex:{objc_msgSend(v22, "rangeOfString:", @"/"}];

    v25 = [*(*(a1 + 32) + 40) datastorePath];
    v26 = [v25 stringByAppendingPathComponent:v24];
    v27 = [MEMORY[0x1E698EA08] lock];
    v28 = [v26 stringByAppendingPathComponent:v27];

    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v28;
      _os_log_impl(&dword_1C928A000, v29, OS_LOG_TYPE_INFO, "lastFrameStoreOrCreateWithTimestamp: Attempting to acquire lockfile: %@", buf, 0xCu);
    }

    v30 = *(a1 + 32);
    v31 = *(v30 + 8);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __56__BMSegmentManager_lastFrameStoreOrCreateWithTimestamp___block_invoke_55;
    v38[3] = &unk_1E83390B0;
    v38[4] = v30;
    v32 = v5;
    v33 = *(a1 + 40);
    v39 = v32;
    v40 = v33;
    v41 = *(a1 + 48);
    [v31 acquireLockfile:v28 andRunBlock:v38];

    v14 = *(*(*(a1 + 40) + 8) + 40);
  }

  objc_storeStrong((*(a1 + 32) + 80), v14);
LABEL_22:

  v34 = *MEMORY[0x1E69E9840];
}

void __56__BMSegmentManager_lastFrameStoreOrCreateWithTimestamp___block_invoke_55(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:*(a1 + 40)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v7 = v7[2];
    }

    v8 = v7;
    v9 = v6;
    v10 = [v1 objectAtIndexedSubscript:{objc_msgSend(OUTLINED_FUNCTION_8_0(), "count") - 1}];

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v11)
    {
      v13 = *(v11 + 16);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v14 = v14[3];
    }

    v15 = v14;
    v16 = v13;
    v17 = [v12 segmentWithFilename:v10 segmentNames:v16 segmentFileHandles:v15 error:0];
    OUTLINED_FUNCTION_1_5(v17, *(a1 + 48));
  }

  OUTLINED_FUNCTION_7_1(*(a1 + 48));
  if (!v18)
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (v19)
    {
      v21 = *(v19 + 16);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 56);
    v23 = *(a1 + 40);
    if (v23)
    {
      v23 = v23[3];
    }

    v24 = v23;
    v25 = OUTLINED_FUNCTION_6_1(v21);
    OUTLINED_FUNCTION_1_5(v25, *(a1 + 48));

    OUTLINED_FUNCTION_7_1(*(a1 + 48));
    if (!v26)
    {
      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v29 = MEMORY[0x1E698E9C8];
        v30 = [*(a1 + 32) path];
        v31 = [v29 privacyPathname:v30];
        OUTLINED_FUNCTION_4();
        _os_log_fault_impl(&dword_1C928A000, v27, OS_LOG_TYPE_FAULT, "Unable to lastFrameStoreOrCreateWithTimestamp and   creation also failed for %@", v32, 0xCu);
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __83__BMSegmentManager__segmentAfterFrameStore_orCreateSegmentWithTimestamp_direction___block_invoke_57(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = *(a1 + 72);
  v8 = v6;
  v9 = v5;
  v10 = [v4 nextSegmentAfterFrameStore:v3 segmentNames:v9 segmentFileHandles:v8 direction:v7];
  OUTLINED_FUNCTION_1_5(v10, *(a1 + 64));

  OUTLINED_FUNCTION_7_1(*(a1 + 64));
  if (!v11)
  {
    v12 = *(a1 + 32);
    [*(a1 + 56) doubleValue];
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 16);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[3];
    }

    v16 = v15;
    v17 = OUTLINED_FUNCTION_6_1(v14);
    OUTLINED_FUNCTION_1_5(v17, *(a1 + 64));

    OUTLINED_FUNCTION_7_1(*(a1 + 64));
    if (!v18)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v21 = [*(a1 + 48) segmentName];
        v22 = MEMORY[0x1E698E9C8];
        v23 = [*(a1 + 32) path];
        v24 = [v22 privacyPathname:v23];
        v26 = 138412546;
        v27 = v21;
        OUTLINED_FUNCTION_9_0();
        v28 = v25;
        _os_log_fault_impl(&dword_1C928A000, v19, OS_LOG_TYPE_FAULT, "Unable to _segmentAfterFrameStore and creation also failed for prevStore:%@ in %@", &v26, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __47__BMSegmentManager_segmentContainingTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = v3[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() indexOfSegmentContainingEventTime:v6 fromSegments:*(a1 + 48)];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 48) == 0.0)
    {
      v9 = [*(a1 + 32) segmentAfterFrameStore:0 direction:0];
      OUTLINED_FUNCTION_1_5(v9, *(a1 + 40));
    }
  }

  else
  {
    v10 = v8;
    if (v8 >= [v6 count])
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_fault_impl(&dword_1C928A000, v16, OS_LOG_TYPE_FAULT, "Received an index beyond _segmentNames in newEnumeratorFromStartTime:", v17, 2u);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = [v6 objectAtIndexedSubscript:v10];
      if (v3)
      {
        v13 = v3[3];
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = [v11 segmentWithFilename:v12 segmentNames:v6 segmentFileHandles:v14 error:0];
      OUTLINED_FUNCTION_1_5(v15, *(a1 + 40));
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __56__BMSegmentManager_removeSegmentNamed_reason_direction___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v3 = v3[2];
  }

  [v3 removeObject:*(a1 + 32)];
  v4 = v5;
  if (v5)
  {
    v4 = v5[3];
  }

  [v4 setObject:0 forKeyedSubscript:*(a1 + 32)];
}

uint64_t __39__BMSegmentManager_handleDeviceLocking__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x1E698E998] losesReadAccessOnLock:{objc_msgSend(*(*(a1 + 32) + 40), "protectionClass")}];
  if (v3)
  {
    v4 = v7;
    if (!v7)
    {
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_7;
  }

  v3 = [*(a1 + 32) shouldCacheFileDescriptors];
  if (v3)
  {
    v3 = [*(a1 + 32) updateSegmentsWithGuardedDeviceLockStateData:v7];
    v4 = v7;
    if (v7)
    {
      v5 = 1;
LABEL_7:
      v4[8] = v5;
    }
  }

LABEL_8:

  return MEMORY[0x1EEE66BB8](v3);
}

void __68__BMSegmentManager_initWithDirectory_fileManager_permission_config___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(*a1 + 72);
  v6 = [*(*a1 + 40) protectionClass];
  if (v6 > 6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMDataProtectionClassUnknown(%lu)", v6];
  }

  else
  {
    v7 = off_1E83391E8[v6];
  }

  *buf = 138413058;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  v13 = 2112;
  v14 = v7;
  v15 = 1024;
  v16 = [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  _os_log_error_impl(&dword_1C928A000, a3, OS_LOG_TYPE_ERROR, "Can't create stream folder at %@ with error %@, protectionClass: %@ isUnlocked: %hhd", buf, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698E9C8] privacyPathname:a2];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__BMSegmentManager_pruneSegmentsToMaxSizeInBytes___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E9C8] privacyPathname:a1];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_1C928A000, a2, OS_LOG_TYPE_FAULT, "Segment %@ is getting removed. Invalid file size of 0 bytes", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileDescriptorsIfNecessary:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = a1;
  if (a1)
  {
    a1 = a1[2];
  }

  if ([a1 count])
  {
    if (v4)
    {
      v5 = v4[3];
    }

    else
    {
      v5 = 0;
    }

    [v5 allKeys];
    objc_claimAutoreleasedReturnValue();
    v19 = [OUTLINED_FUNCTION_8_0() orderedSetWithArray:v2];

    v6 = [v19 mutableCopy];
    v7 = v6;
    if (v4)
    {
      [v6 minusOrderedSet:v4[2]];
      v8 = v4[3];
    }

    else
    {
      [v6 minusOrderedSet:0];
      v8 = 0;
    }

    v9 = v8;
    v10 = [OUTLINED_FUNCTION_8_0() array];
    [v2 removeObjectsForKeys:v10];

    if (a2[2] == 1)
    {
      v11 = MEMORY[0x1E695DFA0];
      if (v4)
      {
        v12 = v4[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = [v12 lastObject];
      v14 = [v11 orderedSetWithObject:v13];
    }

    else
    {
      if (v4)
      {
        v16 = v4[2];
      }

      else
      {
        v16 = 0;
      }

      v14 = [v16 mutableCopy];
    }

    [v14 minusOrderedSet:v19];
    v17 = [v14 set];
    if (v4)
    {
      v18 = v4[3];
    }

    else
    {
      v18 = 0;
    }

    [a2 openFiles:v17 saveToOpenFiles:v18];
  }

  else
  {
    if (v4)
    {
      v15 = v4[3];
    }

    else
    {
      v15 = 0;
    }

    [v15 removeAllObjects];
  }
}

- (void)orderedSegmentsInDirectory:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698E9C8] privacyPathname:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)newFramestoreWithTimestamp:(uint64_t)a1 segmentNames:segmentFileHandles:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698E9C8] privacyPathname:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)newFramestoreWithTimestamp:(uint64_t)a1 segmentNames:segmentFileHandles:.cold.4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698E9C8] privacyPathname:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)newFramestoreWithTimestamp:segmentNames:segmentFileHandles:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_1C928A000, v0, OS_LOG_TYPE_ERROR, "Failed to create new file handle with error, %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)segmentWithFilename:(void *)a1 segmentNames:segmentFileHandles:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 attributes];
  v3 = [v2 path];
  v4 = [v1 privacyPathname:v3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeSegmentNamed:(uint64_t)a1 reason:direction:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E698E9C8] privacyPathname:a1];
  v8 = *__error();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSegmentsNamesFrom:to:withBlock:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_1();
  _os_log_error_impl(&dword_1C928A000, v0, OS_LOG_TYPE_ERROR, "Start date (%lf) is greater than end date (%lf)", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __40__BMSegmentManager_handleDeviceLockedCX__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(*a1 + 72) stringByDeletingLastPathComponent];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end