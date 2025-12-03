@interface _MPCPlaybackEngineSessionManager
+ (id)archivesAtURL:(id)l;
- (MPCPlaybackEngine)playbackEngine;
- (NSString)stateRestorationSessionIdentifier;
- (_MPCPlaybackEngineSessionManager)initWithPlaybackEngine:(id)engine;
- (id)_playbackSessionsDirectory;
- (void)deleteSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)saveSessionWithCompletion:(id)completion;
- (void)setStateRestorationSessionIdentifier:(id)identifier;
- (void)setStateRestorationSupported:(BOOL)supported;
@end

@implementation _MPCPlaybackEngineSessionManager

- (id)_playbackSessionsDirectory
{
  v29 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v4 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v20];
  v5 = v20;
  if (v4)
  {
    lastObject = v4;
  }

  else
  {
    v7 = [defaultManager URLsForDirectory:9 inDomains:1];
    lastObject = [v7 lastObject];

    if (!lastObject)
    {
      lastObject = [defaultManager temporaryDirectory];
    }
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (v4)
      {
        v10 = &stru_1F454A698;
      }

      else
      {
        v10 = @" [fallback]";
      }

      treeDescription = [v5 treeDescription];
      *buf = 134218754;
      selfCopy3 = self;
      v23 = 2114;
      v24 = lastObject;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = treeDescription;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_FAULT, "_MPCPlaybackEngineSessionManager %p - container URL: %{public}@%{public}@ error=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &stru_1F454A698;
    *buf = 134218498;
    selfCopy3 = self;
    v23 = 2114;
    if (!v4)
    {
      v12 = @" [fallback]";
    }

    v24 = lastObject;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - container URL: %{public}@%{public}@", buf, 0x20u);
  }

  v13 = [lastObject URLByAppendingPathComponent:@"PlaybackSessions" isDirectory:1];
  path = [v13 path];
  v19 = 0;
  v15 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v19];
  v16 = v19;

  if ((v15 & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_FAULT, "_MPCPlaybackEngineSessionManager %p - failed to create directory at URL: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  return v13;
}

- (NSString)stateRestorationSessionIdentifier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"LastPlaybackSessionIdentifier"];

  return v3;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)setStateRestorationSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = [identifierCopy length];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = standardUserDefaults;
  if (v3)
  {
    [standardUserDefaults setObject:identifierCopy forKey:@"LastPlaybackSessionIdentifier"];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:@"LastPlaybackSessionIdentifier"];
  }
}

- (void)deleteSessionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (self->_stateRestorationSupported)
  {
    v8 = [(NSMutableDictionary *)self->_sessionIdentifierArchiveMap objectForKeyedSubscript:identifierCopy];
    if (v8)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      packageURL = [v8 packageURL];
      v13 = 0;
      [defaultManager removeItemAtURL:packageURL error:&v13];
      v11 = v13;

      if (!v11)
      {
        [(NSMutableDictionary *)self->_sessionIdentifierArchiveMap setObject:0 forKeyedSubscript:identifierCopy];
        [(NSMutableArray *)self->_sessionArchives removeObjectIdenticalTo:v8];
      }

      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:999 userInfo:0];
      completionCopy[2](completionCopy, v12);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:2 debugDescription:@"Playback engine doesn't support state restoration"];
    completionCopy[2](completionCopy, v8);
  }
}

- (void)saveSessionWithCompletion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  queueController = [WeakRetained queueController];
  if (queueController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEngineSessionManager.m" lineNumber:117 description:@"Session management only available with MPCQueueController"];
    }

    if (self->_stateRestorationSupported)
    {
      mEMORY[0x1E69E45A0] = [MEMORY[0x1E69E45A0] sharedSecurityInfo];
      if ([mEMORY[0x1E69E45A0] isContentProtectionEnabled] && (objc_msgSend(mEMORY[0x1E69E45A0], "isDeviceClassCUnlocked") & 1) == 0)
      {
        v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = self;
          _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion: [before first unlock] skipping save", &buf, 0xCu);
        }

        v22 = MEMORY[0x1E696ABC0];
        v23 = @"Can't save an archive before first unlock (cannot write to container data).";
        v24 = 1;
      }

      else
      {
        if ([queueController containsRestorableContent])
        {
          mediaRemotePublisher = [WeakRetained mediaRemotePublisher];
          infoCenter = [mediaRemotePublisher infoCenter];

          sessionID = [queueController sessionID];
          nowPlayingContentItem = [infoCenter nowPlayingContentItem];
          v13 = nowPlayingContentItem;
          if (nowPlayingContentItem)
          {
            v47 = sessionID;
            userInfo = [nowPlayingContentItem userInfo];
            v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702C8]];
            bOOLValue = [v15 BOOLValue];

            if (bOOLValue)
            {
              v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:2 debugDescription:@"Opting not to save an archive with a placeholder content item."];
              completionCopy[2](completionCopy, 0, v17);
            }

            else
            {
              _playbackSessionsDirectory = [(_MPCPlaybackEngineSessionManager *)self _playbackSessionsDirectory];
              v28 = [v47 stringByAppendingPathExtension:@"playbackSessionArchive"];
              [_playbackSessionsDirectory URLByAppendingPathComponent:v28 isDirectory:1];
              v29 = v44 = v13;

              v30 = [_MPCPlaybackSessionArchive alloc];
              v45 = v29;
              v31 = v29;
              v13 = v44;
              v32 = [(_MPCPlaybackSessionArchive *)v30 initWithURL:v31 identifier:v47];
              [(_MPCPlaybackSessionArchive *)v32 setContentItem:v44];
              group = dispatch_group_create();
              standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
              archiveSessionArtwork = [standardUserDefaults archiveSessionArtwork];

              if (archiveSessionArtwork)
              {
                playbackQueueDataSource = [infoCenter playbackQueueDataSource];
                if (objc_opt_respondsToSelector())
                {
                  dispatch_group_enter(group);
                  nowPlayingContentItem2 = [infoCenter nowPlayingContentItem];
                  v57[0] = MEMORY[0x1E69E9820];
                  v57[1] = 3221225472;
                  v57[2] = __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke;
                  v57[3] = &unk_1E82373E0;
                  v57[4] = self;
                  v58 = group;
                  v59 = v32;
                  v37 = [playbackQueueDataSource nowPlayingInfoCenter:infoCenter artworkForContentItem:nowPlayingContentItem2 size:v57 completion:{1200.0, 1200.0}];
                }
              }

              *&buf = 0;
              *(&buf + 1) = &buf;
              v61 = 0x3032000000;
              v62 = __Block_byref_object_copy__22127;
              v63 = __Block_byref_object_dispose__22128;
              v64 = 0;
              dispatch_group_enter(group);
              serialQueue = self->_serialQueue;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_45;
              block[3] = &unk_1E8238210;
              v53 = queueController;
              v39 = v32;
              v55 = group;
              p_buf = &buf;
              v54 = v39;
              v40 = group;
              dispatch_async(serialQueue, block);
              v41 = self->_serialQueue;
              v48[0] = MEMORY[0x1E69E9820];
              v48[1] = 3221225472;
              v48[2] = __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_49;
              v48[3] = &unk_1E82386F0;
              v51 = &buf;
              v48[4] = self;
              v49 = v39;
              v50 = completionCopy;
              v42 = v39;
              dispatch_group_notify(v40, v41, v48);

              _Block_object_dispose(&buf, 8);
            }

            sessionID = v47;
          }

          else
          {
            v26 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:2 debugDescription:@"Can't save an archive without a now playing content item."];
            completionCopy[2](completionCopy, 0, v26);
          }

          goto LABEL_29;
        }

        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = self;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion: [containsRestorableContent = NO] skipping save", &buf, 0xCu);
        }

        v22 = MEMORY[0x1E696ABC0];
        v23 = @"Opting not to save an archive that does not contain restorable content";
        v24 = 3;
      }

      infoCenter = [v22 msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:v24 debugDescription:v23];
      completionCopy[2](completionCopy, 0, infoCenter);
LABEL_29:

      goto LABEL_30;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = @"MPCError";
    v20 = @"Playback engine doesn't support state restoration";
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"MPCPlaybackSessionManagerError";
    v20 = @"Can't save an archive without a QueueController";
  }

  mEMORY[0x1E69E45A0] = [v18 msv_errorWithDomain:v19 code:2 debugDescription:v20];
  completionCopy[2](completionCopy, 0, mEMORY[0x1E69E45A0]);
LABEL_30:
}

- (void)setStateRestorationSupported:(BOOL)supported
{
  supportedCopy = supported;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_stateRestorationSupported != supportedCopy)
  {
    self->_stateRestorationSupported = supportedCopy;
    serialQueue = self->_serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___MPCPlaybackEngineSessionManager_setStateRestorationSupported___block_invoke;
    v6[3] = &unk_1E82373B8;
    v7 = supportedCopy;
    v6[4] = self;
    dispatch_async(serialQueue, v6);
  }
}

- (_MPCPlaybackEngineSessionManager)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v14.receiver = self;
  v14.super_class = _MPCPlaybackEngineSessionManager;
  v5 = [(_MPCPlaybackEngineSessionManager *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaPlaybackCore._MPCPlaybackEngineSessionManager/serialQueue", v6);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v7;

    array = [MEMORY[0x1E695DF70] array];
    sessionArchives = v5->_sessionArchives;
    v5->_sessionArchives = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sessionIdentifierArchiveMap = v5->_sessionIdentifierArchiveMap;
    v5->_sessionIdentifierArchiveMap = dictionary;

    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v5];
  }

  return v5;
}

+ (id)archivesAtURL:(id)l
{
  v31[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *MEMORY[0x1E695DB78];
  v6 = *MEMORY[0x1E695DA98];
  v31[0] = *MEMORY[0x1E695DB78];
  v31[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v8 = defaultManager;
  v23 = lCopy;
  v9 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:v7 options:4 errorHandler:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        v16 = [v15 getResourceValue:&v25 forKey:v5 error:0];
        v17 = v25;
        v18 = v17;
        if (v16 && [v17 BOOLValue])
        {
          pathExtension = [v15 pathExtension];
          v20 = [pathExtension isEqualToString:@"playbackSessionArchive"];

          if (v20)
          {
            v21 = [[_MPCPlaybackSessionArchive alloc] initWithURL:v15];
            if (v21)
            {
              [v24 addObject:v21];
            }

            else
            {
              [v8 removeItemAtURL:v15 error:0];
            }
          }

          else
          {
            [v8 removeItemAtURL:v15 error:0];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  [v24 sortUsingComparator:&__block_literal_global_22168];

  return v24;
}

@end