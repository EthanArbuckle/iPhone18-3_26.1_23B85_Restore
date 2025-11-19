@interface CAMProtectionController
+ (BOOL)isCameraPerformingHighPriorityDiskActivity;
+ (id)pathForProtectNebulaDaemonWritesIndicator;
- (CAMProtectionController)init;
- (id)_burstProcessingProtectionPathForIdentifier:(id)a3;
- (id)_persistenceProtectionPathForType:(int64_t)a3;
- (int)_burstProcessingProtectionFileDescriptorForIdentifier:(id)a3;
- (int)_persistenceProtectionFileDescriptorForType:(int64_t)a3;
- (void)_addBurstProcessingProtectionIndicatorForIdentifier:(id)a3;
- (void)_addPersistenceProtectionIndicatorForType:(int64_t)a3 logIdentifier:(id)a4;
- (void)_allowSuspensionWhileFileLockedForPath:(id)a3;
- (void)_protectionQueueAbortProtectionForBurstProcessing;
- (void)_protectionQueueAbortProtectionForNebulaDaemonWritesForReason:(id)a3;
- (void)_protectionQueueAbortProtectionForProtectionTypes;
- (void)_protectionQueueRemoveBurstProcessingProtectionIndicatorForIdentifier:(id)a3;
- (void)_protectionQueueRemovePersistenceProtectionIndicatorForType:(int64_t)a3 unlinkFile:(BOOL)a4 logIdentifier:(id)a5;
- (void)_protectionQueueStartProtectingNebulaDaemonWritesForIdentifier:(id)a3;
- (void)_protectionQueueStartProtectingPersistenceForType:(int64_t)a3 logIdentifier:(id)a4;
- (void)_protectionQueueStopProtectingNebulaDaemonWritesForIdentifier:(id)a3 closeFile:(BOOL)a4;
- (void)_protectionQueueStopProtectingPersistenceForType:(int64_t)a3 logIdentifier:(id)a4;
- (void)abortOutstandingNebulaDaemonWriteProtectionsForReason:(id)a3;
- (void)dealloc;
- (void)startProtectingBurstProcessingForIdentifier:(id)a3;
- (void)startProtectingNebulaDaemonWritesForIdentifier:(id)a3;
- (void)startProtectingPersistenceForRequest:(id)a3;
- (void)stopProtectingBurstProcessingForIdentifier:(id)a3;
- (void)stopProtectingNebulaDaemonWritesForIdentifier:(id)a3;
- (void)stopProtectingPersistenceForRequest:(id)a3;
@end

@implementation CAMProtectionController

- (CAMProtectionController)init
{
  v12.receiver = self;
  v12.super_class = CAMProtectionController;
  v2 = [(CAMProtectionController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.crash-protection", v3);
    protectionQueue = v2->__protectionQueue;
    v2->__protectionQueue = v4;

    v6 = [(CAMProtectionController *)v2 _protectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__CAMProtectionController_init__block_invoke;
    block[3] = &unk_1E76F77B0;
    v7 = v2;
    v11 = v7;
    dispatch_sync(v6, block);

    v8 = v7;
  }

  return v2;
}

void __31__CAMProtectionController_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  *(*(a1 + 32) + 8) = -1;
}

- (void)dealloc
{
  v3 = [(CAMProtectionController *)self _protectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CAMProtectionController_dealloc__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = CAMProtectionController;
  [(CAMProtectionController *)&v4 dealloc];
}

uint64_t __34__CAMProtectionController_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _protectionQueueAbortProtectionForProtectionTypes];
  [*(a1 + 32) _protectionQueueAbortProtectionForBurstProcessing];
  v2 = *(a1 + 32);

  return [v2 _protectionQueueAbortProtectionForNebulaDaemonWritesForReason:@"ProtectionController dealloc"];
}

- (id)_persistenceProtectionPathForType:(int64_t)a3
{
  if (!a3)
  {
    v3 = @"takingphoto";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = @"takingvideo";
LABEL_5:
    v4 = [MEMORY[0x1E69BF168] photoDataDirectory];
    v5 = [v4 stringByAppendingPathComponent:v3];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (int)_persistenceProtectionFileDescriptorForType:(int64_t)a3
{
  v4 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_addPersistenceProtectionIndicatorForType:(int64_t)a3 logIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [(CAMProtectionController *)self _persistenceProtectionPathForType:a3];
  if ([(CAMProtectionController *)self _persistenceProtectionFileDescriptorForType:a3]< 0)
  {
    v10 = open([v8 fileSystemRepresentation], 2721, 438);
    if ((v10 & 0x80000000) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v12 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = v6;
        v24 = 2048;
        v25 = *&a3;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Couldn't setup protection indicator for type %ld, triggering crash recovery!", buf, 0x16u);
      }

      v13 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
      v14 = [v13 libraryClient];
      [v14 recoverFromCrashIfNeeded];

      sleep(1u);
      v15 = open([v8 fileSystemRepresentation], 2721, 438);
      if ((v15 & 0x80000000) != 0)
      {
        do
        {
          v16 = CFAbsoluteTimeGetCurrent();
          v17 = os_log_create("com.apple.camera", "ProtectionController");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v23 = v6;
            v24 = 2048;
            v25 = *&a3;
            v26 = 2048;
            v27 = v16 - Current;
            _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Couldn't setup protection indicator for type %ld, waiting for crash recovery (elapsed time %.1f seconds)!", buf, 0x20u);
          }

          sleep(1u);
          v18 = open([v8 fileSystemRepresentation], 2721, 438);
        }

        while ((v18 & 0x80000000) != 0);
        v10 = v18;
      }

      else
      {
        v10 = v15;
      }

      v19 = CFAbsoluteTimeGetCurrent();
      v20 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = v6;
        v24 = 2048;
        v25 = v19 - Current;
        _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Completed crash recovery (took %.3f seconds)", buf, 0x16u);
      }
    }

    [(CAMProtectionController *)self _allowSuspensionWhileFileLockedForPath:v8];
    v9 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [v9 setObject:v21 forKey:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = v6;
      v24 = 2048;
      v25 = *&a3;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Ignoring attempt to add persistence protection for type %ld, protection already exists.", buf, 0x16u);
    }
  }
}

- (void)_protectionQueueRemovePersistenceProtectionIndicatorForType:(int64_t)a3 unlinkFile:(BOOL)a4 logIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorForType:a3];
  if (v10 < 0)
  {
    v13 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v8;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Ignoring attempt to remove persistence protection for type %ld, protection doesn't exist.", &v14, 0x16u);
    }
  }

  else
  {
    v11 = v10;
    if (v5)
    {
      v12 = [(CAMProtectionController *)self _persistenceProtectionPathForType:a3];
      unlink([v12 fileSystemRepresentation]);
    }

    flock(v11, 8);
    close(v11);
    v13 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
    [v13 removeObjectForKey:v9];
  }
}

- (void)_protectionQueueStartProtectingPersistenceForType:(int64_t)a3 logIdentifier:(id)a4
{
  v9 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(CAMProtectionController *)self _persistenceProtectionInflightRequestsByType];
  v8 = [v7 countForObject:v6];
  [v7 addObject:v6];
  if (!v8)
  {
    [(CAMProtectionController *)self _addPersistenceProtectionIndicatorForType:a3 logIdentifier:v9];
  }
}

- (void)_protectionQueueStopProtectingPersistenceForType:(int64_t)a3 logIdentifier:(id)a4
{
  v8 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(CAMProtectionController *)self _persistenceProtectionInflightRequestsByType];
  [v7 removeObject:v6];
  if (![v7 countForObject:v6])
  {
    [(CAMProtectionController *)self _protectionQueueRemovePersistenceProtectionIndicatorForType:a3 unlinkFile:1 logIdentifier:v8];
  }
}

- (void)_protectionQueueAbortProtectionForProtectionTypes
{
  v3 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
  v4 = [v3 allKeys];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CAMProtectionController__protectionQueueAbortProtectionForProtectionTypes__block_invoke;
  v5[3] = &unk_1E76FBB58;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __76__CAMProtectionController__protectionQueueAbortProtectionForProtectionTypes__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 integerValue];
  v4 = [*(a1 + 32) _persistenceProtectionPathForType:v3];
  v5 = os_log_create("com.apple.camera", "ProtectionController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ProtectionController: Aborting protection indicator for type %ld and leaving file on disk so crash recovery will be executed later: %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) _protectionQueueRemovePersistenceProtectionIndicatorForType:v3 unlinkFile:0 logIdentifier:@"(aborting)"];
}

- (void)_allowSuspensionWhileFileLockedForPath:(id)a3
{
  v3 = a3;
  value = -1;
  v4 = setxattr([v3 UTF8String], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
  if (v4 < 0)
  {
    v5 = v4;
    v6 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CAMProtectionController *)v3 _allowSuspensionWhileFileLockedForPath:v5, v6];
    }
  }
}

- (void)startProtectingPersistenceForRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CAMProtectionController_startProtectingPersistenceForRequest___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __64__CAMProtectionController_startProtectingPersistenceForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _persistenceProtectionTypeForRequest:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) persistenceUUID];
  [v3 _protectionQueueStartProtectingPersistenceForType:v2 logIdentifier:v4];
}

- (void)stopProtectingPersistenceForRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__CAMProtectionController_stopProtectingPersistenceForRequest___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __63__CAMProtectionController_stopProtectingPersistenceForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _persistenceProtectionTypeForRequest:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) persistenceUUID];
  [v3 _protectionQueueStopProtectingPersistenceForType:v2 logIdentifier:v4];
}

- (id)_burstProcessingProtectionPathForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E69BF178];
    v4 = a3;
    v5 = [v3 incomingDirectoryPath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    v7 = [v6 stringByAppendingPathExtension:*MEMORY[0x1E69C00B0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_burstProcessingProtectionFileDescriptorForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_addBurstProcessingProtectionIndicatorForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(CAMProtectionController *)self _burstProcessingProtectionPathForIdentifier:v5];
    v7 = open([v6 fileSystemRepresentation], 2689, 438);
    if ((v7 & 0x80000000) != 0)
    {
      v9 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v5;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ProtectionController: Couldn't setup protection indicator for burst identifier %{public}@!", buf, 0xCu);
      }
    }

    else
    {
      v8 = v7;
      v9 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      [v9 setObject:v10 forKey:v5];
    }
  }
}

- (void)_protectionQueueRemoveBurstProcessingProtectionIndicatorForIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(CAMProtectionController *)self _burstProcessingProtectionPathForIdentifier:v5];
    v7 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorForIdentifier:v5];
    if (v7 < 0)
    {
      v9 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ProtectionController: Ignoring attempt to remove burst processing protection for identifier %{public}@, protection doesn't exist.", &v10, 0xCu);
      }
    }

    else
    {
      v8 = v7;
      flock(v7, 8);
      close(v8);
      v9 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
      [v9 removeObjectForKey:v5];
    }

    unlink([v6 fileSystemRepresentation]);
  }
}

- (void)_protectionQueueAbortProtectionForBurstProcessing
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
  v4 = [v3 allKeys];
  if ([v4 count])
  {
    v5 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ProtectionController: Aborting protection of in-flight burst identifiers because the protection controller is going away: %{public}@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__CAMProtectionController__protectionQueueAbortProtectionForBurstProcessing__block_invoke;
    v6[3] = &unk_1E76F8AF0;
    v6[4] = self;
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

- (void)startProtectingBurstProcessingForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CAMProtectionController_startProtectingBurstProcessingForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __71__CAMProtectionController_startProtectingBurstProcessingForIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addBurstProcessingProtectionIndicatorForIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _protectionQueueStartProtectingPersistenceForType:0 logIdentifier:v3];
}

- (void)stopProtectingBurstProcessingForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CAMProtectionController_stopProtectingBurstProcessingForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __70__CAMProtectionController_stopProtectingBurstProcessingForIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _protectionQueueRemoveBurstProcessingProtectionIndicatorForIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _protectionQueueStopProtectingPersistenceForType:0 logIdentifier:v3];
}

+ (id)pathForProtectNebulaDaemonWritesIndicator
{
  v2 = [MEMORY[0x1E69BF168] photoDataDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"suspendnebulad"];

  return v3;
}

+ (BOOL)isCameraPerformingHighPriorityDiskActivity
{
  v2 = +[CAMProtectionController pathForProtectNebulaDaemonWritesIndicator];
  v3 = open([v2 fileSystemRepresentation], 128, 438);
  if (v3 < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = flock(v3, 6) != 0;
    flock(v4, 8);
    close(v4);
  }

  return v5;
}

- (void)startProtectingNebulaDaemonWritesForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMProtectionController *)self _protectionQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__CAMProtectionController_startProtectingNebulaDaemonWritesForIdentifier___block_invoke;
    v7[3] = &unk_1E76F7960;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(v5, v7);
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "ProtectionController: cannot protect nebulad writes for nil identifier", buf, 2u);
    }
  }
}

- (void)stopProtectingNebulaDaemonWritesForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__CAMProtectionController_stopProtectingNebulaDaemonWritesForIdentifier___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

- (void)abortOutstandingNebulaDaemonWriteProtectionsForReason:(id)a3
{
  v4 = a3;
  v5 = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__CAMProtectionController_abortOutstandingNebulaDaemonWriteProtectionsForReason___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_protectionQueueStartProtectingNebulaDaemonWritesForIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  nebulaDaemonWriteProtectionInflightIdentifiers = self->__nebulaDaemonWriteProtectionInflightIdentifiers;
  v5 = a3;
  v6 = [(NSMutableSet *)nebulaDaemonWriteProtectionInflightIdentifiers count];
  [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers addObject:v5];

  if (!v6)
  {
    v7 = [objc_opt_class() pathForProtectNebulaDaemonWritesIndicator];
    nebulaDaemonWriteProtectionFileDescriptor = self->__nebulaDaemonWriteProtectionFileDescriptor;
    if ((nebulaDaemonWriteProtectionFileDescriptor & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v9 = open([v7 fileSystemRepresentation], 673, 438);
    self->__nebulaDaemonWriteProtectionFileDescriptor = v9;
    if (v9 < 0)
    {
      v10 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ProtectionController: Failed to open indicator at path %{public}@", buf, 0xCu);
      }
    }

    else
    {
      [(CAMProtectionController *)self _allowSuspensionWhileFileLockedForPath:v7];
    }

    nebulaDaemonWriteProtectionFileDescriptor = self->__nebulaDaemonWriteProtectionFileDescriptor;
    if ((nebulaDaemonWriteProtectionFileDescriptor & 0x80000000) == 0)
    {
LABEL_18:
      if (flock(nebulaDaemonWriteProtectionFileDescriptor, 2))
      {
        v11 = os_log_create("com.apple.camera", "ProtectionController");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v14 = v7;
          _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "ProtectionController: Failed to set exclusive lock on indicator at path %{public}@", buf, 0xCu);
        }
      }
    }

    v12 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ProtectionController: nebulad suspend", buf, 2u);
    }

    notify_post("com.apple.camera.nebulad.io.suspend");
  }
}

- (void)_protectionQueueStopProtectingNebulaDaemonWritesForIdentifier:(id)a3 closeFile:(BOOL)a4
{
  v4 = a4;
  nebulaDaemonWriteProtectionInflightIdentifiers = self->__nebulaDaemonWriteProtectionInflightIdentifiers;
  v7 = a3;
  v8 = [(NSMutableSet *)nebulaDaemonWriteProtectionInflightIdentifiers count];
  [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers removeObject:v7];

  v9 = [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers count];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    nebulaDaemonWriteProtectionFileDescriptor = self->__nebulaDaemonWriteProtectionFileDescriptor;
    if ((nebulaDaemonWriteProtectionFileDescriptor & 0x80000000) == 0)
    {
      flock(nebulaDaemonWriteProtectionFileDescriptor, 8);
      if (v4)
      {
        close(self->__nebulaDaemonWriteProtectionFileDescriptor);
        self->__nebulaDaemonWriteProtectionFileDescriptor = -1;
      }
    }

    v12 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ProtectionController: nebulad resume", v13, 2u);
    }

    notify_post("com.apple.camera.nebulad.io.resume");
  }
}

- (void)_protectionQueueAbortProtectionForNebulaDaemonWritesForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers allObjects];
  if ([v5 count])
  {
    v6 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "ProtectionController: Aborting protection of nebulad activity for reason %{public}@. In-flight identifiers: %{public}@", buf, 0x16u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__CAMProtectionController__protectionQueueAbortProtectionForNebulaDaemonWritesForReason___block_invoke;
    v7[3] = &unk_1E76F8AF0;
    v7[4] = self;
    [v5 enumerateObjectsUsingBlock:v7];
  }
}

- (void)_allowSuspensionWhileFileLockedForPath:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 lastPathComponent];
  v6 = 138543618;
  v7 = v5;
  v8 = 2080;
  v9 = strerror(a2);
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Failed to set extended attributes on path: %{public}@ with error: %s", &v6, 0x16u);
}

@end