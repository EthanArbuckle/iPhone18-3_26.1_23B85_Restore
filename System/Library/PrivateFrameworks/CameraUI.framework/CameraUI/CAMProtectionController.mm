@interface CAMProtectionController
+ (BOOL)isCameraPerformingHighPriorityDiskActivity;
+ (id)pathForProtectNebulaDaemonWritesIndicator;
- (CAMProtectionController)init;
- (id)_burstProcessingProtectionPathForIdentifier:(id)identifier;
- (id)_persistenceProtectionPathForType:(int64_t)type;
- (int)_burstProcessingProtectionFileDescriptorForIdentifier:(id)identifier;
- (int)_persistenceProtectionFileDescriptorForType:(int64_t)type;
- (void)_addBurstProcessingProtectionIndicatorForIdentifier:(id)identifier;
- (void)_addPersistenceProtectionIndicatorForType:(int64_t)type logIdentifier:(id)identifier;
- (void)_allowSuspensionWhileFileLockedForPath:(id)path;
- (void)_protectionQueueAbortProtectionForBurstProcessing;
- (void)_protectionQueueAbortProtectionForNebulaDaemonWritesForReason:(id)reason;
- (void)_protectionQueueAbortProtectionForProtectionTypes;
- (void)_protectionQueueRemoveBurstProcessingProtectionIndicatorForIdentifier:(id)identifier;
- (void)_protectionQueueRemovePersistenceProtectionIndicatorForType:(int64_t)type unlinkFile:(BOOL)file logIdentifier:(id)identifier;
- (void)_protectionQueueStartProtectingNebulaDaemonWritesForIdentifier:(id)identifier;
- (void)_protectionQueueStartProtectingPersistenceForType:(int64_t)type logIdentifier:(id)identifier;
- (void)_protectionQueueStopProtectingNebulaDaemonWritesForIdentifier:(id)identifier closeFile:(BOOL)file;
- (void)_protectionQueueStopProtectingPersistenceForType:(int64_t)type logIdentifier:(id)identifier;
- (void)abortOutstandingNebulaDaemonWriteProtectionsForReason:(id)reason;
- (void)dealloc;
- (void)startProtectingBurstProcessingForIdentifier:(id)identifier;
- (void)startProtectingNebulaDaemonWritesForIdentifier:(id)identifier;
- (void)startProtectingPersistenceForRequest:(id)request;
- (void)stopProtectingBurstProcessingForIdentifier:(id)identifier;
- (void)stopProtectingNebulaDaemonWritesForIdentifier:(id)identifier;
- (void)stopProtectingPersistenceForRequest:(id)request;
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

    _protectionQueue = [(CAMProtectionController *)v2 _protectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__CAMProtectionController_init__block_invoke;
    block[3] = &unk_1E76F77B0;
    v7 = v2;
    v11 = v7;
    dispatch_sync(_protectionQueue, block);

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
  _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CAMProtectionController_dealloc__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(_protectionQueue, block);

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

- (id)_persistenceProtectionPathForType:(int64_t)type
{
  if (!type)
  {
    v3 = @"takingphoto";
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = @"takingvideo";
LABEL_5:
    photoDataDirectory = [MEMORY[0x1E69BF168] photoDataDirectory];
    v5 = [photoDataDirectory stringByAppendingPathComponent:v3];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (int)_persistenceProtectionFileDescriptorForType:(int64_t)type
{
  _persistenceProtectionFileDescriptorsByType = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_persistenceProtectionFileDescriptorsByType objectForKey:v5];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (void)_addPersistenceProtectionIndicatorForType:(int64_t)type logIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [(CAMProtectionController *)self _persistenceProtectionPathForType:type];
  if ([(CAMProtectionController *)self _persistenceProtectionFileDescriptorForType:type]< 0)
  {
    v10 = open([v8 fileSystemRepresentation], 2721, 438);
    if ((v10 & 0x80000000) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v12 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = identifierCopy;
        v24 = 2048;
        v25 = *&type;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Couldn't setup protection indicator for type %ld, triggering crash recovery!", buf, 0x16u);
      }

      mEMORY[0x1E69BF198] = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
      libraryClient = [mEMORY[0x1E69BF198] libraryClient];
      [libraryClient recoverFromCrashIfNeeded];

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
            v23 = identifierCopy;
            v24 = 2048;
            v25 = *&type;
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
        v23 = identifierCopy;
        v24 = 2048;
        v25 = v19 - Current;
        _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Completed crash recovery (took %.3f seconds)", buf, 0x16u);
      }
    }

    [(CAMProtectionController *)self _allowSuspensionWhileFileLockedForPath:v8];
    _persistenceProtectionFileDescriptorsByType = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [_persistenceProtectionFileDescriptorsByType setObject:v21 forKey:v7];
  }

  else
  {
    _persistenceProtectionFileDescriptorsByType = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(_persistenceProtectionFileDescriptorsByType, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = identifierCopy;
      v24 = 2048;
      v25 = *&type;
      _os_log_impl(&dword_1A3640000, _persistenceProtectionFileDescriptorsByType, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Ignoring attempt to add persistence protection for type %ld, protection already exists.", buf, 0x16u);
    }
  }
}

- (void)_protectionQueueRemovePersistenceProtectionIndicatorForType:(int64_t)type unlinkFile:(BOOL)file logIdentifier:(id)identifier
{
  fileCopy = file;
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v10 = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorForType:type];
  if (v10 < 0)
  {
    _persistenceProtectionFileDescriptorsByType = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(_persistenceProtectionFileDescriptorsByType, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = identifierCopy;
      v16 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_1A3640000, _persistenceProtectionFileDescriptorsByType, OS_LOG_TYPE_DEFAULT, "ProtectionController %{public}@: Ignoring attempt to remove persistence protection for type %ld, protection doesn't exist.", &v14, 0x16u);
    }
  }

  else
  {
    v11 = v10;
    if (fileCopy)
    {
      v12 = [(CAMProtectionController *)self _persistenceProtectionPathForType:type];
      unlink([v12 fileSystemRepresentation]);
    }

    flock(v11, 8);
    close(v11);
    _persistenceProtectionFileDescriptorsByType = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
    [_persistenceProtectionFileDescriptorsByType removeObjectForKey:v9];
  }
}

- (void)_protectionQueueStartProtectingPersistenceForType:(int64_t)type logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  _persistenceProtectionInflightRequestsByType = [(CAMProtectionController *)self _persistenceProtectionInflightRequestsByType];
  v8 = [_persistenceProtectionInflightRequestsByType countForObject:v6];
  [_persistenceProtectionInflightRequestsByType addObject:v6];
  if (!v8)
  {
    [(CAMProtectionController *)self _addPersistenceProtectionIndicatorForType:type logIdentifier:identifierCopy];
  }
}

- (void)_protectionQueueStopProtectingPersistenceForType:(int64_t)type logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  _persistenceProtectionInflightRequestsByType = [(CAMProtectionController *)self _persistenceProtectionInflightRequestsByType];
  [_persistenceProtectionInflightRequestsByType removeObject:v6];
  if (![_persistenceProtectionInflightRequestsByType countForObject:v6])
  {
    [(CAMProtectionController *)self _protectionQueueRemovePersistenceProtectionIndicatorForType:type unlinkFile:1 logIdentifier:identifierCopy];
  }
}

- (void)_protectionQueueAbortProtectionForProtectionTypes
{
  _persistenceProtectionFileDescriptorsByType = [(CAMProtectionController *)self _persistenceProtectionFileDescriptorsByType];
  allKeys = [_persistenceProtectionFileDescriptorsByType allKeys];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CAMProtectionController__protectionQueueAbortProtectionForProtectionTypes__block_invoke;
  v5[3] = &unk_1E76FBB58;
  v5[4] = self;
  [allKeys enumerateObjectsUsingBlock:v5];
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

- (void)_allowSuspensionWhileFileLockedForPath:(id)path
{
  pathCopy = path;
  value = -1;
  v4 = setxattr([pathCopy UTF8String], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
  if (v4 < 0)
  {
    v5 = v4;
    v6 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CAMProtectionController *)pathCopy _allowSuspensionWhileFileLockedForPath:v5, v6];
    }
  }
}

- (void)startProtectingPersistenceForRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CAMProtectionController_startProtectingPersistenceForRequest___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = requestCopy;
    dispatch_sync(_protectionQueue, v6);
  }
}

void __64__CAMProtectionController_startProtectingPersistenceForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _persistenceProtectionTypeForRequest:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) persistenceUUID];
  [v3 _protectionQueueStartProtectingPersistenceForType:v2 logIdentifier:v4];
}

- (void)stopProtectingPersistenceForRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__CAMProtectionController_stopProtectingPersistenceForRequest___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = requestCopy;
    dispatch_sync(_protectionQueue, v6);
  }
}

void __63__CAMProtectionController_stopProtectingPersistenceForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _persistenceProtectionTypeForRequest:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) persistenceUUID];
  [v3 _protectionQueueStopProtectingPersistenceForType:v2 logIdentifier:v4];
}

- (id)_burstProcessingProtectionPathForIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = MEMORY[0x1E69BF178];
    identifierCopy = identifier;
    incomingDirectoryPath = [v3 incomingDirectoryPath];
    v6 = [incomingDirectoryPath stringByAppendingPathComponent:identifierCopy];

    v7 = [v6 stringByAppendingPathExtension:*MEMORY[0x1E69C00B0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_burstProcessingProtectionFileDescriptorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _burstProcessingProtectionFileDescriptorsByIdentifier = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
  v6 = [_burstProcessingProtectionFileDescriptorsByIdentifier objectForKey:identifierCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (void)_addBurstProcessingProtectionIndicatorForIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    v6 = [(CAMProtectionController *)self _burstProcessingProtectionPathForIdentifier:v5];
    v7 = open([v6 fileSystemRepresentation], 2689, 438);
    if ((v7 & 0x80000000) != 0)
    {
      _burstProcessingProtectionFileDescriptorsByIdentifier = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(_burstProcessingProtectionFileDescriptorsByIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v5;
        _os_log_impl(&dword_1A3640000, _burstProcessingProtectionFileDescriptorsByIdentifier, OS_LOG_TYPE_DEFAULT, "ProtectionController: Couldn't setup protection indicator for burst identifier %{public}@!", buf, 0xCu);
      }
    }

    else
    {
      v8 = v7;
      _burstProcessingProtectionFileDescriptorsByIdentifier = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      [_burstProcessingProtectionFileDescriptorsByIdentifier setObject:v10 forKey:v5];
    }
  }
}

- (void)_protectionQueueRemoveBurstProcessingProtectionIndicatorForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    v6 = [(CAMProtectionController *)self _burstProcessingProtectionPathForIdentifier:v5];
    v7 = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorForIdentifier:v5];
    if (v7 < 0)
    {
      _burstProcessingProtectionFileDescriptorsByIdentifier = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(_burstProcessingProtectionFileDescriptorsByIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_1A3640000, _burstProcessingProtectionFileDescriptorsByIdentifier, OS_LOG_TYPE_DEFAULT, "ProtectionController: Ignoring attempt to remove burst processing protection for identifier %{public}@, protection doesn't exist.", &v10, 0xCu);
      }
    }

    else
    {
      v8 = v7;
      flock(v7, 8);
      close(v8);
      _burstProcessingProtectionFileDescriptorsByIdentifier = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
      [_burstProcessingProtectionFileDescriptorsByIdentifier removeObjectForKey:v5];
    }

    unlink([v6 fileSystemRepresentation]);
  }
}

- (void)_protectionQueueAbortProtectionForBurstProcessing
{
  v9 = *MEMORY[0x1E69E9840];
  _burstProcessingProtectionFileDescriptorsByIdentifier = [(CAMProtectionController *)self _burstProcessingProtectionFileDescriptorsByIdentifier];
  allKeys = [_burstProcessingProtectionFileDescriptorsByIdentifier allKeys];
  if ([allKeys count])
  {
    v5 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = allKeys;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ProtectionController: Aborting protection of in-flight burst identifiers because the protection controller is going away: %{public}@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__CAMProtectionController__protectionQueueAbortProtectionForBurstProcessing__block_invoke;
    v6[3] = &unk_1E76F8AF0;
    v6[4] = self;
    [allKeys enumerateObjectsUsingBlock:v6];
  }
}

- (void)startProtectingBurstProcessingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CAMProtectionController_startProtectingBurstProcessingForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(_protectionQueue, v7);
}

uint64_t __71__CAMProtectionController_startProtectingBurstProcessingForIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addBurstProcessingProtectionIndicatorForIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _protectionQueueStartProtectingPersistenceForType:0 logIdentifier:v3];
}

- (void)stopProtectingBurstProcessingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CAMProtectionController_stopProtectingBurstProcessingForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(_protectionQueue, v7);
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
  photoDataDirectory = [MEMORY[0x1E69BF168] photoDataDirectory];
  v3 = [photoDataDirectory stringByAppendingPathComponent:@"suspendnebulad"];

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

- (void)startProtectingNebulaDaemonWritesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__CAMProtectionController_startProtectingNebulaDaemonWritesForIdentifier___block_invoke;
    v7[3] = &unk_1E76F7960;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_sync(_protectionQueue, v7);
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

- (void)stopProtectingNebulaDaemonWritesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__CAMProtectionController_stopProtectingNebulaDaemonWritesForIdentifier___block_invoke;
    v6[3] = &unk_1E76F7960;
    v6[4] = self;
    v7 = identifierCopy;
    dispatch_sync(_protectionQueue, v6);
  }
}

- (void)abortOutstandingNebulaDaemonWriteProtectionsForReason:(id)reason
{
  reasonCopy = reason;
  _protectionQueue = [(CAMProtectionController *)self _protectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__CAMProtectionController_abortOutstandingNebulaDaemonWriteProtectionsForReason___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_sync(_protectionQueue, v7);
}

- (void)_protectionQueueStartProtectingNebulaDaemonWritesForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  nebulaDaemonWriteProtectionInflightIdentifiers = self->__nebulaDaemonWriteProtectionInflightIdentifiers;
  identifierCopy = identifier;
  v6 = [(NSMutableSet *)nebulaDaemonWriteProtectionInflightIdentifiers count];
  [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers addObject:identifierCopy];

  if (!v6)
  {
    pathForProtectNebulaDaemonWritesIndicator = [objc_opt_class() pathForProtectNebulaDaemonWritesIndicator];
    nebulaDaemonWriteProtectionFileDescriptor = self->__nebulaDaemonWriteProtectionFileDescriptor;
    if ((nebulaDaemonWriteProtectionFileDescriptor & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v9 = open([pathForProtectNebulaDaemonWritesIndicator fileSystemRepresentation], 673, 438);
    self->__nebulaDaemonWriteProtectionFileDescriptor = v9;
    if (v9 < 0)
    {
      v10 = os_log_create("com.apple.camera", "ProtectionController");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = pathForProtectNebulaDaemonWritesIndicator;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ProtectionController: Failed to open indicator at path %{public}@", buf, 0xCu);
      }
    }

    else
    {
      [(CAMProtectionController *)self _allowSuspensionWhileFileLockedForPath:pathForProtectNebulaDaemonWritesIndicator];
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
          v14 = pathForProtectNebulaDaemonWritesIndicator;
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

- (void)_protectionQueueStopProtectingNebulaDaemonWritesForIdentifier:(id)identifier closeFile:(BOOL)file
{
  fileCopy = file;
  nebulaDaemonWriteProtectionInflightIdentifiers = self->__nebulaDaemonWriteProtectionInflightIdentifiers;
  identifierCopy = identifier;
  v8 = [(NSMutableSet *)nebulaDaemonWriteProtectionInflightIdentifiers count];
  [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers removeObject:identifierCopy];

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
      if (fileCopy)
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

- (void)_protectionQueueAbortProtectionForNebulaDaemonWritesForReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  allObjects = [(NSMutableSet *)self->__nebulaDaemonWriteProtectionInflightIdentifiers allObjects];
  if ([allObjects count])
  {
    v6 = os_log_create("com.apple.camera", "ProtectionController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v9 = reasonCopy;
      v10 = 2114;
      v11 = allObjects;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "ProtectionController: Aborting protection of nebulad activity for reason %{public}@. In-flight identifiers: %{public}@", buf, 0x16u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__CAMProtectionController__protectionQueueAbortProtectionForNebulaDaemonWritesForReason___block_invoke;
    v7[3] = &unk_1E76F8AF0;
    v7[4] = self;
    [allObjects enumerateObjectsUsingBlock:v7];
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