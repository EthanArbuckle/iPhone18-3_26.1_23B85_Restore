@interface _MPCPlaybackEngineSessionManager
+ (id)archivesAtURL:(id)a3;
- (MPCPlaybackEngine)playbackEngine;
- (NSString)stateRestorationSessionIdentifier;
- (_MPCPlaybackEngineSessionManager)initWithPlaybackEngine:(id)a3;
- (id)_playbackSessionsDirectory;
- (void)deleteSessionWithIdentifier:(id)a3 completion:(id)a4;
- (void)saveSessionWithCompletion:(id)a3;
- (void)setStateRestorationSessionIdentifier:(id)a3;
- (void)setStateRestorationSupported:(BOOL)a3;
@end

@implementation _MPCPlaybackEngineSessionManager

- (id)_playbackSessionsDirectory
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v4 = [v3 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v20];
  v5 = v20;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 URLsForDirectory:9 inDomains:1];
    v6 = [v7 lastObject];

    if (!v6)
    {
      v6 = [v3 temporaryDirectory];
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

      v11 = [v5 treeDescription];
      *buf = 134218754;
      v22 = self;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_FAULT, "_MPCPlaybackEngineSessionManager %p - container URL: %{public}@%{public}@ error=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &stru_1F454A698;
    *buf = 134218498;
    v22 = self;
    v23 = 2114;
    if (!v4)
    {
      v12 = @" [fallback]";
    }

    v24 = v6;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - container URL: %{public}@%{public}@", buf, 0x20u);
  }

  v13 = [v6 URLByAppendingPathComponent:@"PlaybackSessions" isDirectory:1];
  v14 = [v13 path];
  v19 = 0;
  v15 = [v3 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v19];
  v16 = v19;

  if ((v15 & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v22 = self;
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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 stringForKey:@"LastPlaybackSessionIdentifier"];

  return v3;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)setStateRestorationSessionIdentifier:(id)a3
{
  v6 = a3;
  v3 = [v6 length];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v6 forKey:@"LastPlaybackSessionIdentifier"];
  }

  else
  {
    [v4 removeObjectForKey:@"LastPlaybackSessionIdentifier"];
  }
}

- (void)deleteSessionWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_stateRestorationSupported)
  {
    v8 = [(NSMutableDictionary *)self->_sessionIdentifierArchiveMap objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v8 packageURL];
      v13 = 0;
      [v9 removeItemAtURL:v10 error:&v13];
      v11 = v13;

      if (!v11)
      {
        [(NSMutableDictionary *)self->_sessionIdentifierArchiveMap setObject:0 forKeyedSubscript:v6];
        [(NSMutableArray *)self->_sessionArchives removeObjectIdenticalTo:v8];
      }

      v7[2](v7, v11);
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:999 userInfo:0];
      v7[2](v7, v12);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:2 debugDescription:@"Playback engine doesn't support state restoration"];
    v7[2](v7, v8);
  }
}

- (void)saveSessionWithCompletion:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = [WeakRetained queueController];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEngineSessionManager.m" lineNumber:117 description:@"Session management only available with MPCQueueController"];
    }

    if (self->_stateRestorationSupported)
    {
      v8 = [MEMORY[0x1E69E45A0] sharedSecurityInfo];
      if ([v8 isContentProtectionEnabled] && (objc_msgSend(v8, "isDeviceClassCUnlocked") & 1) == 0)
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
        if ([v7 containsRestorableContent])
        {
          v9 = [WeakRetained mediaRemotePublisher];
          v10 = [v9 infoCenter];

          v11 = [v7 sessionID];
          v12 = [v10 nowPlayingContentItem];
          v13 = v12;
          if (v12)
          {
            v47 = v11;
            v14 = [v12 userInfo];
            v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69702C8]];
            v16 = [v15 BOOLValue];

            if (v16)
            {
              v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:2 debugDescription:@"Opting not to save an archive with a placeholder content item."];
              v5[2](v5, 0, v17);
            }

            else
            {
              v27 = [(_MPCPlaybackEngineSessionManager *)self _playbackSessionsDirectory];
              v28 = [v47 stringByAppendingPathExtension:@"playbackSessionArchive"];
              [v27 URLByAppendingPathComponent:v28 isDirectory:1];
              v29 = v44 = v13;

              v30 = [_MPCPlaybackSessionArchive alloc];
              v45 = v29;
              v31 = v29;
              v13 = v44;
              v32 = [(_MPCPlaybackSessionArchive *)v30 initWithURL:v31 identifier:v47];
              [(_MPCPlaybackSessionArchive *)v32 setContentItem:v44];
              group = dispatch_group_create();
              v33 = [MEMORY[0x1E69708A8] standardUserDefaults];
              v34 = [v33 archiveSessionArtwork];

              if (v34)
              {
                v35 = [v10 playbackQueueDataSource];
                if (objc_opt_respondsToSelector())
                {
                  dispatch_group_enter(group);
                  v36 = [v10 nowPlayingContentItem];
                  v57[0] = MEMORY[0x1E69E9820];
                  v57[1] = 3221225472;
                  v57[2] = __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke;
                  v57[3] = &unk_1E82373E0;
                  v57[4] = self;
                  v58 = group;
                  v59 = v32;
                  v37 = [v35 nowPlayingInfoCenter:v10 artworkForContentItem:v36 size:v57 completion:{1200.0, 1200.0}];
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
              v53 = v7;
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
              v50 = v5;
              v42 = v39;
              dispatch_group_notify(v40, v41, v48);

              _Block_object_dispose(&buf, 8);
            }

            v11 = v47;
          }

          else
          {
            v26 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:2 debugDescription:@"Can't save an archive without a now playing content item."];
            v5[2](v5, 0, v26);
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

      v10 = [v22 msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:v24 debugDescription:v23];
      v5[2](v5, 0, v10);
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

  v8 = [v18 msv_errorWithDomain:v19 code:2 debugDescription:v20];
  v5[2](v5, 0, v8);
LABEL_30:
}

- (void)setStateRestorationSupported:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_stateRestorationSupported != v3)
  {
    self->_stateRestorationSupported = v3;
    serialQueue = self->_serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___MPCPlaybackEngineSessionManager_setStateRestorationSupported___block_invoke;
    v6[3] = &unk_1E82373B8;
    v7 = v3;
    v6[4] = self;
    dispatch_async(serialQueue, v6);
  }
}

- (_MPCPlaybackEngineSessionManager)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _MPCPlaybackEngineSessionManager;
  v5 = [(_MPCPlaybackEngineSessionManager *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaPlaybackCore._MPCPlaybackEngineSessionManager/serialQueue", v6);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    sessionArchives = v5->_sessionArchives;
    v5->_sessionArchives = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    sessionIdentifierArchiveMap = v5->_sessionIdentifierArchiveMap;
    v5->_sessionIdentifierArchiveMap = v11;

    objc_storeWeak(&v5->_playbackEngine, v4);
    [v4 addEngineObserver:v5];
  }

  return v5;
}

+ (id)archivesAtURL:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *MEMORY[0x1E695DB78];
  v6 = *MEMORY[0x1E695DA98];
  v31[0] = *MEMORY[0x1E695DB78];
  v31[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v8 = v4;
  v23 = v3;
  v9 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:4 errorHandler:0];

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
          v19 = [v15 pathExtension];
          v20 = [v19 isEqualToString:@"playbackSessionArchive"];

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