@interface MPCMusicPlayerControllerServer
@end

@implementation MPCMusicPlayerControllerServer

void __66___MPCMusicPlayerControllerServer__handleMPAVItemTitlesDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 playbackEngine];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  v7 = [v2 _nowPlayingWithItem:v5];

  [*(*(a1 + 32) + 56) setNowPlaying:v7];
  v6 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v6 setHasTimeMetadata:1];
  [v6 setHasNowPlaying:1];
  [v6 setNowPlaying:v7];
  [*(a1 + 32) _applyServerStateUpdateRecord:v6];
}

void __94___MPCMusicPlayerControllerServer__invokeServerCommandEvent_remoteCommandSenderID_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: _invokeServerCommandEvent:… stop dispatch [] serverEvent=%{public}@ statuses=%{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: connection invalidated: pid=%u", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke_166;
    v7[3] = &unk_1E82392C0;
    v8 = WeakRetained;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [*(a1 + 32) queueController];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(a1 + 40) removedItemIdentifiers];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v10 = [v4 music];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_2;
        v29[3] = &unk_1E8238628;
        v30 = v3;
        v31 = v2;
        [v10 removeContentItemID:v9 completion:v29];
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  v11 = [*(a1 + 40) insertedDescriptors];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_3;
  v24[3] = &unk_1E8237248;
  v12 = *(a1 + 56);
  v24[4] = *(a1 + 48);
  v25 = v12;
  v26 = v2;
  v27 = v4;
  v13 = v3;
  v28 = v13;
  v14 = v4;
  v15 = v2;
  [v11 enumerateKeysAndObjectsUsingBlock:v24];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_3_156;
  block[3] = &unk_1E8237020;
  v21 = v13;
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v22 = v16;
  v23 = v17;
  v18 = v13;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], block);
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v35 = a2;
  [a3 playbackContexts];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = v42 = 0u;
  obj = [v28 reverseObjectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v33 = *MEMORY[0x1E69B10B0];
    v34 = *v40;
    v32 = *MEMORY[0x1E69B1200];
    v30 = *MEMORY[0x1E69B1130];
    v31 = *MEMORY[0x1E69B1178];
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v9 = v35;
        v10 = [*(a1 + 32) playbackEngine];
        v11 = [v10 mediaRemotePublisher];
        v12 = [v11 commandCenter];

        v13 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:v8];
        v14 = [MEMORY[0x1E695DFB0] null];

        v15 = objc_alloc(MEMORY[0x1E6970558]);
        v16 = [v12 insertIntoPlaybackQueueCommand];
        if (v14 == v9)
        {
          v45[0] = v33;
          v23 = MSVNanoIDCreateTaggedPointer();
          v18 = [@"MPMusicPlayer-" stringByAppendingString:v23];

          v46[0] = v18;
          v46[1] = @"MPCMusicPlayerControllerServer";
          v45[1] = v32;
          v45[2] = @"kMRMediaRemoteOptionSenderID";
          v24 = *(a1 + 40);
          v45[3] = @"MPRemoteCommandQueueInsertionPosition";
          v46[2] = v24;
          v46[3] = &unk_1F4599520;
          v19 = MEMORY[0x1E695DF20];
          v20 = v46;
          v21 = v45;
          v22 = 4;
        }

        else
        {
          v43[0] = v33;
          v17 = MSVNanoIDCreateTaggedPointer();
          v18 = [@"MPMusicPlayer-" stringByAppendingString:v17];

          v44[0] = v18;
          v44[1] = @"MPCMusicPlayerControllerServer";
          v43[1] = v32;
          v43[2] = @"kMRMediaRemoteOptionSenderID";
          v44[2] = *(a1 + 40);
          v44[3] = &unk_1F4599538;
          v43[3] = v31;
          v43[4] = v30;
          v44[4] = v9;
          v19 = MEMORY[0x1E695DF20];
          v20 = v44;
          v21 = v43;
          v22 = 5;
        }

        v25 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
        v26 = [v15 initWithCommand:v16 playbackQueue:v13 options:v25];

        dispatch_group_enter(*(a1 + 48));
        v27 = [*(a1 + 56) upNextBehavior];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_153;
        v36[3] = &unk_1E8238628;
        v37 = *(a1 + 64);
        v38 = *(a1 + 48);
        [v27 performInsertCommand:v26 targetContentItemID:0 completion:v36];

        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v6);
  }
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_3_156(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E6970248];
    v4 = [*(a1 + 32) firstObject];
    v5 = [v2 msv_errorWithDomain:v3 code:3 underlyingError:v4 debugDescription:@"Failed to apply queue modifications"];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_END, v8, "performQueueModifications", "", v9, 2u);
  }
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_153(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_2_154;
  block[3] = &unk_1E82391C0;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke_2_154(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __62___MPCMusicPlayerControllerServer_setPlaybackRate_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 changePlaybackRateCommand];
  if ([v5 isSupported])
  {
    v7 = *(a1 + 32);
    LODWORD(v6) = *(a1 + 64);
    v8 = [v5 newCommandEventWithPlaybackRate:v6];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62___MPCMusicPlayerControllerServer_setPlaybackRate_completion___block_invoke_2;
    v16[3] = &unk_1E82371D0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v17 = v10;
    v18 = v11;
    [v7 _invokeServerCommandEvent:v8 remoteCommandSenderID:v9 completion:v16];

    v12 = v17;
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v20 = [v5 isEnabled];
      v21 = 1024;
      v22 = [v5 isSupported];
      v23 = 1024;
      v24 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: changePlaybackRate: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", buf, 0x14u);
    }

    (*(*(a1 + 48) + 16))();
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    v12 = v14;
    v15 = *(a1 + 56);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v15, "setPlaybackRate", "", buf, 2u);
    }
  }
}

void __62___MPCMusicPlayerControllerServer_setPlaybackRate_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "setPlaybackRate", "", v5, 2u);
  }
}

void __61___MPCMusicPlayerControllerServer_setElapsedTime_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 changePlaybackPositionCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 32);
    v7 = [v5 newCommandEventWithPositionTime:*(a1 + 56)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61___MPCMusicPlayerControllerServer_setElapsedTime_completion___block_invoke_2;
    v15[3] = &unk_1E82371D0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v16 = v9;
    v17 = v10;
    [v6 _invokeServerCommandEvent:v7 remoteCommandSenderID:v8 completion:v15];

    v11 = v16;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v19 = [v5 isEnabled];
      v20 = 1024;
      v21 = [v5 isSupported];
      v22 = 1024;
      v23 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: changePlaybackPosition: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", buf, 0x14u);
    }

    (*(*(a1 + 48) + 16))();
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    v11 = v13;
    v14 = *(a1 + 64);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v14, "setElapsedTime", "", buf, 2u);
    }
  }
}

void __61___MPCMusicPlayerControllerServer_setElapsedTime_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "setElapsedTime", "", v5, 2u);
  }
}

void __59___MPCMusicPlayerControllerServer_getShuffleModeWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v5 = [v3 commandCenter];

  v4 = [v5 changeShuffleModeCommand];
  [v4 currentShuffleType];
  MPMusicShuffleModeForMPShuffleType();
  (*(*(a1 + 40) + 16))();
}

void __50___MPCMusicPlayerControllerServer_setShuffleMode___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 changeShuffleModeCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 48);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:1];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_131;
        goto LABEL_14;
      }

      if (v6 == 3)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:0];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_133_21079;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:1000];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_127;
        goto LABEL_14;
      }

      if (v6 == 1)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:0];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_129;
LABEL_14:
        [v7 _invokeServerCommandEvent:v8 remoteCommandSenderID:v9 completion:v10];
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109632;
      v12[1] = [v5 isEnabled];
      v13 = 1024;
      v14 = [v5 isSupported];
      v15 = 1024;
      v16 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: changeShuffleMode: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v12, 0x14u);
    }
  }
}

void __58___MPCMusicPlayerControllerServer_getRepeatModeWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v5 = [v3 commandCenter];

  v4 = [v5 changeRepeatModeCommand];
  [v4 currentRepeatType];
  MPMusicRepeatModeForMPRepeatType();
  (*(*(a1 + 40) + 16))();
}

void __49___MPCMusicPlayerControllerServer_setRepeatMode___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 changeRepeatModeCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 48);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:1];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_123;
        goto LABEL_14;
      }

      if (v6 == 3)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:2];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_125;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:3];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_119;
        goto LABEL_14;
      }

      if (v6 == 1)
      {
        v7 = *(a1 + 32);
        v8 = [v5 newCommandEventWithType:0];
        v9 = *(a1 + 40);
        v10 = &__block_literal_global_121;
LABEL_14:
        [v7 _invokeServerCommandEvent:v8 remoteCommandSenderID:v9 completion:v10];
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109632;
      v12[1] = [v5 isEnabled];
      v13 = 1024;
      v14 = [v5 isSupported];
      v15 = 1024;
      v16 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: changeRepeatMode: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v12, 0x14u);
    }
  }
}

void __42___MPCMusicPlayerControllerServer_endSeek__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 seekForwardCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 32);
    v7 = [v5 newSeekCommandEventWithType:1];
    [v6 _invokeServerCommandEvent:v7 remoteCommandSenderID:*(a1 + 40) completion:&__block_literal_global_117];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = [v5 isEnabled];
      v10 = 1024;
      v11 = [v5 isSupported];
      v12 = 1024;
      v13 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: seekForward: endSeeking: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v9, 0x14u);
    }
  }
}

void __58___MPCMusicPlayerControllerServer_beginSeekWithDirection___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = *(a1 + 48);
  if (v5 == -1)
  {
    v6 = [v4 seekBackwardCommand];
    if ([v6 isSupportedAndEnabled])
    {
      v7 = *(a1 + 32);
      v8 = [v6 newCommandEvent];
      v9 = *(a1 + 40);
      v10 = &__block_literal_global_115;
      goto LABEL_7;
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109632;
      v14 = [v6 isEnabled];
      v15 = 1024;
      v16 = [v6 isSupported];
      v17 = 1024;
      v18 = [v4 commandHandlersRegistered];
      v12 = "MPCMusicPlayerControllerServer: seekBackward: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v6 = [v4 seekForwardCommand];
    if ([v6 isSupportedAndEnabled])
    {
      v7 = *(a1 + 32);
      v8 = [v6 newCommandEvent];
      v9 = *(a1 + 40);
      v10 = &__block_literal_global_112;
LABEL_7:
      [v7 _invokeServerCommandEvent:v8 remoteCommandSenderID:v9 completion:v10];

LABEL_14:
      goto LABEL_15;
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109632;
      v14 = [v6 isEnabled];
      v15 = 1024;
      v16 = [v6 isSupported];
      v17 = 1024;
      v18 = [v4 commandHandlersRegistered];
      v12 = "MPCMusicPlayerControllerServer: seekForward: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u";
LABEL_12:
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, v12, &v13, 0x14u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_15:
}

void __44___MPCMusicPlayerControllerServer_reshuffle__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 reshuffleCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 32);
    v7 = [v5 newCommandEvent];
    [v6 _invokeServerCommandEvent:v7 remoteCommandSenderID:*(a1 + 40) completion:&__block_literal_global_110_21106];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = [v5 isEnabled];
      v10 = 1024;
      v11 = [v5 isSupported];
      v12 = 1024;
      v13 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: reshuffle: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v9, 0x14u);
    }
  }
}

void __52___MPCMusicPlayerControllerServer_skipWithBehavior___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = *(a1 + 48);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = [v4 changePlaybackPositionCommand];
      if ([v6 isSupportedAndEnabled])
      {
        v12 = *(a1 + 32);
        v13 = [v6 newCommandEventWithPositionTime:0.0];
        [v12 _invokeServerCommandEvent:v13 remoteCommandSenderID:*(a1 + 40) completion:&__block_literal_global_102];
      }

      else
      {
        v15 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v21 = [v6 isEnabled];
          v22 = 1024;
          v23 = [v6 isSupported];
          v24 = 1024;
          v25 = [v4 commandHandlersRegistered];
          _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: changePlaybackPosition: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", buf, 0x14u);
        }
      }

      goto LABEL_23;
    }

    if (v5 != 3)
    {
      goto LABEL_24;
    }

    v6 = [v4 previousTrackCommand];
    if ([v6 isSupportedAndEnabled])
    {
      v7 = *(a1 + 32);
      v18 = @"MPCRemoteCommandEventOptionSkipImmediatelyKey";
      v19 = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v9 = [v6 newCommandEventWithCommandType:5 options:v8];
      v10 = *(a1 + 40);
      v11 = &__block_literal_global_105;
      goto LABEL_12;
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

LABEL_20:
    *buf = 67109632;
    v21 = [v6 isEnabled];
    v22 = 1024;
    v23 = [v6 isSupported];
    v24 = 1024;
    v25 = [v4 commandHandlersRegistered];
    v14 = "MPCMusicPlayerControllerServer: previousTrack: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u";
    goto LABEL_21;
  }

  if (!v5)
  {
    v6 = [v4 previousTrackCommand];
    if ([v6 isSupportedAndEnabled])
    {
      v7 = *(a1 + 32);
      v16[0] = *MEMORY[0x1E69B1210];
      v16[1] = @"MPCRemoteCommandEventOptionSkipImmediatelyKey";
      v17[0] = MEMORY[0x1E695E118];
      v17[1] = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v9 = [v6 newCommandEventWithCommandType:5 options:v8];
      v10 = *(a1 + 40);
      v11 = &__block_literal_global_108;
      goto LABEL_12;
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v5 == 1)
  {
    v6 = [v4 nextTrackCommand];
    if ([v6 isSupportedAndEnabled])
    {
      v7 = *(a1 + 32);
      v26 = @"MPCRemoteCommandEventOptionSkipImmediatelyKey";
      v27[0] = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v9 = [v6 newCommandEventWithCommandType:4 options:v8];
      v10 = *(a1 + 40);
      v11 = &__block_literal_global_99;
LABEL_12:
      [v7 _invokeServerCommandEvent:v9 remoteCommandSenderID:v10 completion:v11];

LABEL_22:
LABEL_23:

      goto LABEL_24;
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 67109632;
    v21 = [v6 isEnabled];
    v22 = 1024;
    v23 = [v6 isSupported];
    v24 = 1024;
    v25 = [v4 commandHandlersRegistered];
    v14 = "MPCMusicPlayerControllerServer: nextTrack: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u";
LABEL_21:
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, v14, buf, 0x14u);
    goto LABEL_22;
  }

LABEL_24:
}

void __57___MPCMusicPlayerControllerServer_pauseWithFadeDuration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 pauseCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 32);
    v7 = [v5 newCommandEvent];
    [v6 _invokeServerCommandEvent:v7 remoteCommandSenderID:*(a1 + 40) completion:&__block_literal_global_97];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = [v5 isEnabled];
      v10 = 1024;
      v11 = [v5 isSupported];
      v12 = 1024;
      v13 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: pause: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v9, 0x14u);
    }
  }
}

void __39___MPCMusicPlayerControllerServer_play__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 mediaRemotePublisher];
  v4 = [v3 commandCenter];

  v5 = [v4 playCommand];
  if ([v5 isSupportedAndEnabled])
  {
    v6 = *(a1 + 32);
    v7 = [v5 newCommandEvent];
    [v6 _invokeServerCommandEvent:v7 remoteCommandSenderID:*(a1 + 40) completion:&__block_literal_global_95];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = [v5 isEnabled];
      v10 = 1024;
      v11 = [v5 isSupported];
      v12 = 1024;
      v13 = [v4 commandHandlersRegistered];
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPCMusicPlayerControllerServer: play: dropping command [not enabled or not ready] enabled=%{BOOL}u, supported=%{BOOL}u, commandHandlersRegistered=%{BOOL}u", v9, 0x14u);
    }
  }
}

void __92___MPCMusicPlayerControllerServer__appendPlaybackContexts_remoteCommandSenderID_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v4 statusCode];

  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E6970248];
    v8 = [v3 firstObject];
    v9 = [v8 error];
    v10 = [v6 msv_errorWithDomain:v7 code:6 underlyingError:v9 debugDescription:@"Failed to prepare queue for append"];

    (*(a1[7] + 2))();
  }

  else if ([a1[4] count] < 2)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v14 = a1[4];
    v11 = a1[6];
    v12 = a1[7];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v15 = v13;
    msv_dispatch_on_main_queue();
  }
}

void __92___MPCMusicPlayerControllerServer__appendPlaybackContexts_remoteCommandSenderID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeObjectAtIndex:0];
  [*(a1 + 40) _appendPlaybackContexts:v2 remoteCommandSenderID:*(a1 + 48) completion:*(a1 + 56)];
}

uint64_t __63___MPCMusicPlayerControllerServer_appendDescriptor_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _appendPlaybackContexts:*(a1 + 40) remoteCommandSenderID:*(a1 + 48) completion:*(a1 + 56)];
  *(*(a1 + 32) + 32) = 0;
  return result;
}

void __93___MPCMusicPlayerControllerServer__prependPlaybackContexts_remoteCommandSenderID_completion___block_invoke(id *a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 statusCode];

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:6 debugDescription:@"Failed to prepare queue for prepend"];
    (*(a1[7] + 2))();
  }

  else if ([a1[4] count] < 2)
  {
    v8 = *(a1[7] + 2);

    v8();
  }

  else
  {
    v10 = a1[4];
    v5 = a1[6];
    v6 = a1[7];
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v11 = v7;
    msv_dispatch_on_main_queue();
  }
}

void __93___MPCMusicPlayerControllerServer__prependPlaybackContexts_remoteCommandSenderID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeLastObject];
  [*(a1 + 40) _prependPlaybackContexts:v2 remoteCommandSenderID:*(a1 + 48) completion:*(a1 + 56)];
}

uint64_t __64___MPCMusicPlayerControllerServer_prependDescriptor_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _prependPlaybackContexts:*(a1 + 40) remoteCommandSenderID:*(a1 + 48) completion:*(a1 + 56)];
  *(*(a1 + 32) + 32) = 0;
  return result;
}

void __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = MEMORY[0x1E6970248];
  if (v3)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:2 debugDescription:@"Queue was interrupted by another queue"];
    (*(v3 + 16))(v3, v5);

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 16), *(a1 + 40));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_2;
  aBlock[3] = &unk_1E8237458;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v40 = v8;
  v41 = v9;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  v13 = dispatch_time(0, 9000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_54;
  block[3] = &unk_1E82392C0;
  v14 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v38 = v14;
  dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  v15 = [MEMORY[0x1E696AFB0] UUID];
  if ([*(a1 + 48) count] <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  objc_storeStrong((*(a1 + 32) + 40), v16);
  *(*(a1 + 32) + 32) = [*(a1 + 48) count] > 1;
  v17 = [*(a1 + 32) playbackEngine];
  v18 = [v17 mediaRemotePublisher];
  v19 = [v18 commandCenter];

  v20 = [v19 setPlaybackQueueCommand];
  if ([v20 isSupportedAndEnabled])
  {
    if ([*(a1 + 56) hasSuffix:@"iapd"])
    {
      v21 = 0;
    }

    else
    {
      v21 = 10;
    }

    [*(a1 + 64) setActionAfterQueueLoad:v21];
    v22 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:*(a1 + 64)];
    [(MPCPlaybackContextRemotePlaybackQueue *)v22 setReplaceIntent:1];
    v23 = [objc_alloc(MEMORY[0x1E6970970]) initWithCommand:v20 playbackQueue:v22];
    v24 = *(a1 + 32);
    v25 = *(a1 + 72);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_2_64;
    v31[3] = &unk_1E8237110;
    v31[4] = v24;
    v32 = v15;
    v33 = *(a1 + 48);
    v34 = *(a1 + 72);
    v35 = *(a1 + 40);
    v36 = *(a1 + 80);
    [v24 _invokeServerCommandEvent:v23 remoteCommandSenderID:v25 completion:v31];
  }

  else
  {
    v26 = *(*(a1 + 32) + 24);
    v27 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*v4 code:7 debugDescription:@"SetPlaybackQueue is currently not enabled or the playback engine is not ready"];
    (*(v26 + 16))(v26, v27);

    v28 = *(a1 + 32);
    v29 = *(v28 + 24);
    *(v28 + 24) = 0;

    v30 = *(a1 + 32);
    v22 = *(v30 + 16);
    *(v30 + 16) = 0;
  }
}

void __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v6, OS_SIGNPOST_INTERVAL_END, v7, "setDescriptor", "", v8, 2u);
  }
}

void __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16) == *(a1 + 40))
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:9 debugDescription:@"Preparing queue timed out"];
      (*(v2 + 16))(v2, v4);

      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;

      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      *(v7 + 16) = 0;
    }
  }
}

void __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_2_64(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = [v3 statusCode];

  if ([*(*(a1 + 32) + 40) isEqual:*(a1 + 40)])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    msv_dispatch_on_main_queue();
  }

  v6 = *(a1 + 32);
  if (*(v6 + 16) == *(a1 + 64))
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      if (v4)
      {
        v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:6 debugDescription:@"Failed to prepare to play"];
        (*(v7 + 16))(v7, v8);
      }

      else
      {
        (*(v7 + 16))(v7, 0);
        if (![*(a1 + 64) disableQueueModifications])
        {
LABEL_16:
          v14 = *(a1 + 32);
          v15 = *(v14 + 24);
          *(v14 + 24) = 0;

          v16 = *(a1 + 32);
          v17 = *(v16 + 16);
          *(v16 + 16) = 0;

          return;
        }

        v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 72) engineID];
          v11 = *(a1 + 64);
          *buf = 138543618;
          v22 = v10;
          v23 = 2114;
          v24 = v11;
          _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[MPCS:%{public}@] setDescriptor:completion: | disabling queue modification [client] descriptor=%{public}@", buf, 0x16u);
        }

        v12 = [*(a1 + 72) queueController];
        v13 = [v12 music];
        [v13 setAllowsQueueModifications:0];

        v8 = [*(a1 + 72) mediaRemotePublisher];
        [v8 publishIfNeeded];
      }

      goto LABEL_16;
    }
  }
}

void __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeObjectAtIndex:0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_4;
  v5[3] = &unk_1E8238628;
  v5[4] = v3;
  v6 = *(a1 + 56);
  [v3 _appendPlaybackContexts:v2 remoteCommandSenderID:v4 completion:v5];
}

uint64_t __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 16) == *(a1 + 40))
  {
    v3 = *(v5 + 24);
    if (v3)
    {
      v13 = v4;
      v3[2]();
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      *(v8 + 16) = 0;

      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;

      v4 = v13;
      *(*(a1 + 32) + 32) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __60___MPCMusicPlayerControllerServer_getTimeSnapshotWithReply___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 40);
  LODWORD(a3) = 2143289344;
  v4 = [*(a1 + 32) _timeSnapshotWithElapsedTime:NAN rate:a3];
  (*(v3 + 16))(v3, v4);
}

void __92___MPCMusicPlayerControllerServer_getImageForArtworkIdentifier_itemIdentifier_atSize_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 queueController];

  v4 = [v3 itemForContentItemID:*(a1 + 40)];
  v5 = [v4 modelGenericObject];
  v6 = [v5 flattenedGenericObject];
  v7 = [v6 anyObject];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 artworkCatalog];
    [v8 setFittingSize:{*(a1 + 64), *(a1 + 72)}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92___MPCMusicPlayerControllerServer_getImageForArtworkIdentifier_itemIdentifier_atSize_reply___block_invoke_2;
    v11[3] = &unk_1E82370C0;
    v14 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v8 requestImageWithCompletion:v11];
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:7 debugDescription:{@"%@:%@ does not support artwork.", *(a1 + 40), *(a1 + 48)}];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void __92___MPCMusicPlayerControllerServer_getImageForArtworkIdentifier_itemIdentifier_atSize_reply___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1C6954970](a2);
    v5 = *(a1[6] + 16);
    v8 = v4;
  }

  else
  {
    v6 = a1[6];
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:8 underlyingError:a3 debugDescription:{@"%@:%@ did not provide image data.", a1[4], a1[5]}];
    v5 = *(v6 + 16);
    v8 = v7;
  }

  v5();
}

void __63___MPCMusicPlayerControllerServer_setNowPlayingUID_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56) & 0xFFFFFFFFFFFFFF00;
  v3 = *(a1 + 56);
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    *buf = 134218496;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    *&buf[22] = 2048;
    v31 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: setNowPlayingUID:%llu contentItemHash=%llu repeatIteration=%llu", buf, 0x20u);
  }

  v6 = [*(a1 + 32) playbackEngine];
  v7 = [v6 queueController];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__21191;
  v32 = __Block_byref_object_dispose__21192;
  v33 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63___MPCMusicPlayerControllerServer_setNowPlayingUID_completion___block_invoke_30;
  v21[3] = &unk_1E8237098;
  v8 = v7;
  v24 = -256;
  v25 = v2;
  v22 = v8;
  v23 = buf;
  [v8 enumerateContentItemIDsInMode:1 block:v21];
  if (*(*&buf[8] + 40))
  {
    if (v3)
    {
      v9 = [v8 music];
      v10 = v9 == 0;

      if (!v10)
      {
        v11 = [v8 music];
        v12 = [v11 copyContentItemID:*(*&buf[8] + 40) repeatIteration:v3];
        v13 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v12;
      }
    }

    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 56);
      v16 = *(*&buf[8] + 40);
      *v26 = 134218242;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: setNowPlayingUID:%llu jumping to item [found match] matchingContentItemID=%{public}@", v26, 0x16u);
    }

    [*(a1 + 32) _onQueue_setNowPlayingItem:0 itemIdentifier:*(*&buf[8] + 40) remoteCommandSenderID:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 56);
      *v26 = 134217984;
      v27 = v18;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "MPMusicPlayerControllerServer: setNowPlayingUID:%llu dropping command [failed to find match]", v26, 0xCu);
    }

    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:5 debugDescription:{@"Cannot find item for UID: %llu", *(a1 + 56)}];
    (*(v19 + 16))(v19, v20);
  }

  _Block_object_dispose(buf, 8);
}

void __63___MPCMusicPlayerControllerServer_setNowPlayingUID_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) music];

  v5 = v3;
  if (v4)
  {
    v6 = [*(a1 + 32) music];
    v5 = [v6 contentItemIDWithoutRepeatIteration:v3];
  }

  v104 = v3;
  v105 = a1;
  v7 = *MEMORY[0x1E69B1360];
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v8 = v7 + 0x60EA27EEADC0B5D6;
  v9 = v7 - 0x3D4D51C2D82B14B1;
  v10 = v7 + 0x61C8864E7A143579;
  v106 = xmmword_1C6045200;
  v107.i64[0] = v7 + 0x60EA27EEADC0B5D6;
  v107.i64[1] = v7 - 0x3D4D51C2D82B14B1;
  v108 = v7;
  v109 = v7 + 0x61C8864E7A143579;
  v11 = v110;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  v12 = v5;
  v13 = [v12 UTF8String];
  v14 = [v12 length];
  if (v13)
  {
    v15 = v14;
    *(&v106 + 1) = v14;
    if (v14 <= 0x1F)
    {
      memcpy(v110, v13, v14);
      v16 = v111 + v15;
LABEL_11:
      LODWORD(v111) = v16;
      goto LABEL_12;
    }

    v17 = &v13[v14];
    if (v14 >= 32)
    {
      do
      {
        v8 = 0x9E3779B185EBCA87 * __ROR8__(v8 - 0x3D4D51C2D82B14B1 * *v13, 33);
        v9 = 0x9E3779B185EBCA87 * __ROR8__(v9 - 0x3D4D51C2D82B14B1 * *(v13 + 1), 33);
        v7 = 0x9E3779B185EBCA87 * __ROR8__(v7 - 0x3D4D51C2D82B14B1 * *(v13 + 2), 33);
        v10 = 0x9E3779B185EBCA87 * __ROR8__(v10 - 0x3D4D51C2D82B14B1 * *(v13 + 3), 33);
        v13 += 32;
      }

      while (v13 <= v17 - 32);
      v107.i64[0] = v8;
      v107.i64[1] = v9;
      v108 = v7;
      v109 = v10;
    }

    if (v13 < v17)
    {
      v16 = v17 - v13;
      __memcpy_chk();
      goto LABEL_11;
    }
  }

LABEL_12:

  memset(&v120[8], 0, 64);
  *v120 = v106;
  if (v106 > 3000)
  {
    if (v106 <= 4000)
    {
      if (v106 == 3001)
      {
        if (*(&v106 + 1) < 0x20uLL)
        {
          v55 = v108 + 0x27D4EB2F165667C5;
        }

        else
        {
          v55 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v107.i64[1], 57) + __ROR8__(v107.i64[0], 63) + __ROR8__(v108, 52) + __ROR8__(v109, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v107.i64[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v107.i64[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v108, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v109, 33))) - 0x7A1435883D4D519DLL;
        }

        v56 = v55 + *(&v106 + 1);
        v57 = BYTE8(v106) & 0x1F;
        if (v57 >= 8)
        {
          do
          {
            v58 = *v11++;
            v56 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v58, 33)) ^ v56, 37);
            v57 -= 8;
          }

          while (v57 > 7);
        }

        if (v57 >= 4)
        {
          v59 = *v11;
          v11 = (v11 + 4);
          v56 = 0xC2B2AE3D27D4EB4FLL * __ROR8__((0x9E3779B185EBCA87 * v59) ^ v56, 41) + 0x165667B19E3779F9;
          v57 -= 4;
        }

        for (; v57; --v57)
        {
          v60 = *v11;
          v11 = (v11 + 1);
          v56 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v60) ^ v56, 53);
        }

        v61 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v56 ^ (v56 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v56 ^ (v56 >> 33))) >> 29));
        *&v120[8] = v61 ^ HIDWORD(v61);
        v19 = v104;
        v18 = v105;
      }

      else
      {
        v19 = v104;
        v18 = v105;
        if (v106 == 4000)
        {
          CC_MD5_Final(&v120[8], (&v106 + 8));
        }
      }
    }

    else
    {
      v19 = v104;
      v18 = v105;
      switch(v106)
      {
        case 0xFA1:
          CC_SHA1_Final(&v120[8], (&v106 + 8));
          break;
        case 0x10A0:
          CC_SHA256_Final(&v120[8], (&v106 + 8));
          break;
        case 0x11A0:
          CC_SHA512_Final(&v120[8], (&v106 + 8));
          break;
      }
    }

    goto LABEL_58;
  }

  if (v106 > 1999)
  {
    v19 = v104;
    v18 = v105;
    if (v106 != 2000)
    {
      if (v106 != 3000)
      {
        goto LABEL_58;
      }

      v50 = &v108;
      if (HIDWORD(v106))
      {
        v51 = vaddvq_s32(vorrq_s8(vshlq_u32(v107, xmmword_1C60451B0), vshlq_u32(v107, xmmword_1C60451A0)));
      }

      else
      {
        v51 = v107.i32[2] + 374761393;
      }

      v62 = DWORD2(v106) + v51;
      v63 = v110[0] & 0xF;
      if (v63 >= 4)
      {
        do
        {
          v64 = *v50;
          v50 = (v50 + 4);
          HIDWORD(v65) = v62 - 1028477379 * v64;
          LODWORD(v65) = HIDWORD(v65);
          v62 = 668265263 * (v65 >> 15);
          v63 -= 4;
        }

        while (v63 > 3);
      }

      for (; v63; --v63)
      {
        v66 = *v50;
        v50 = (v50 + 1);
        HIDWORD(v67) = v62 + 374761393 * v66;
        LODWORD(v67) = HIDWORD(v67);
        v62 = -1640531535 * (v67 >> 21);
      }

      v68 = -1028477379 * ((-2048144777 * (v62 ^ (v62 >> 15))) ^ ((-2048144777 * (v62 ^ (v62 >> 15))) >> 13));
      v69 = v68 ^ HIWORD(v68);
      goto LABEL_57;
    }

    switch(v107.u8[3])
    {
      case 1u:
        v54 = v107.u8[0];
        break;
      case 2u:
        v54 = v107.u16[0];
        break;
      case 3u:
        v54 = v107.u16[0] | (v107.u8[2] << 16);
        break;
      default:
        v70 = DWORD2(v106);
        goto LABEL_56;
    }

    v70 = (461845907 * ((380141568 * v54) | ((-862048943 * v54) >> 17))) ^ DWORD2(v106);
LABEL_56:
    v71 = -2048144789 * (v70 ^ HIDWORD(v106) ^ ((v70 ^ HIDWORD(v106)) >> 16));
    v69 = (-1028477387 * (v71 ^ (v71 >> 13))) ^ ((-1028477387 * (v71 ^ (v71 >> 13))) >> 16);
    DWORD2(v106) = v69;
LABEL_57:
    *&v120[8] = v69;
    goto LABEL_58;
  }

  v19 = v104;
  v18 = v105;
  if (v106)
  {
    if (v106 == 1000)
    {
      v20 = (*(&v106 + 1) + v107.i64[0]) ^ __ROR8__(v107.i64[0], 51);
      v21 = v107.i64[1] + (v108 ^ v109);
      v22 = __ROR8__(v108 ^ v109, 48);
      v23 = (v21 ^ v22) + __ROR8__(*(&v106 + 1) + v107.i64[0], 32);
      v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
      v25 = v21 + v20;
      v26 = v25 ^ __ROR8__(v20, 47);
      v27 = (v23 ^ v109) + v26;
      v28 = v27 ^ __ROR8__(v26, 51);
      v29 = (__ROR8__(v25, 32) ^ 0xFFLL) + v24;
      v30 = __ROR8__(v24, 48);
      v31 = __ROR8__(v27, 32) + (v29 ^ v30);
      v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
      v33 = v28 + v29;
      v34 = v33 ^ __ROR8__(v28, 47);
      v35 = v34 + v31;
      v36 = v35 ^ __ROR8__(v34, 51);
      v37 = __ROR8__(v33, 32) + v32;
      v38 = __ROR8__(v32, 48);
      v39 = __ROR8__(v35, 32) + (v37 ^ v38);
      v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
      v41 = v36 + v37;
      v42 = v41 ^ __ROR8__(v36, 47);
      v43 = v42 + v39;
      v44 = v43 ^ __ROR8__(v42, 51);
      v45 = __ROR8__(v41, 32) + v40;
      v46 = __ROR8__(v40, 48);
      v47 = __ROR8__(v43, 32) + (v45 ^ v46);
      v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
      v49 = v44 + v45;
      *(&v106 + 1) = v47;
      v107.i64[0] = v49 ^ __ROR8__(v44, 47);
      v107.i64[1] = __ROR8__(v49, 32);
      v108 = v48;
      *&v120[8] = v107.i64[0] ^ v47 ^ v107.i64[1] ^ v48;
    }
  }

  else
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v52 handleFailureInFunction:v53 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_58:
  v121[0] = *v120;
  v121[1] = *&v120[16];
  v121[2] = *&v120[32];
  v121[3] = *&v120[48];
  v122 = *&v120[64];
  if (*v120 > 3999)
  {
    if (*v120 > 4255)
    {
      if (*v120 == 4256)
      {
        v94 = v121 + 8;
        v95 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v96 = v95;
        for (i = 0; i != 64; i += 2)
        {
          v98 = *v94++;
          v99 = &v95[i];
          *v99 = MSVFastHexStringFromBytes_hexCharacters_30108[v98 >> 4];
          v99[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v98 & 0xF];
        }

        v78 = objc_alloc(MEMORY[0x1E696AEC0]);
        v79 = v96;
        v80 = 64;
      }

      else
      {
        if (*v120 != 4512)
        {
          goto LABEL_88;
        }

        v82 = v121 + 8;
        v83 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v84 = v83;
        for (j = 0; j != 128; j += 2)
        {
          v86 = *v82++;
          v87 = &v83[j];
          *v87 = MSVFastHexStringFromBytes_hexCharacters_30108[v86 >> 4];
          v87[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v86 & 0xF];
        }

        v78 = objc_alloc(MEMORY[0x1E696AEC0]);
        v79 = v84;
        v80 = 128;
      }
    }

    else if (*v120 == 4000)
    {
      v88 = v121 + 8;
      v89 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v90 = v89;
      for (k = 0; k != 32; k += 2)
      {
        v92 = *v88++;
        v93 = &v89[k];
        *v93 = MSVFastHexStringFromBytes_hexCharacters_30108[v92 >> 4];
        v93[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v92 & 0xF];
      }

      v78 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = v90;
      v80 = 32;
    }

    else
    {
      if (*v120 != 4001)
      {
        goto LABEL_88;
      }

      v72 = v121 + 8;
      v73 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v74 = v73;
      for (m = 0; m != 40; m += 2)
      {
        v76 = *v72++;
        v77 = &v73[m];
        *v77 = MSVFastHexStringFromBytes_hexCharacters_30108[v76 >> 4];
        v77[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v76 & 0xF];
      }

      v78 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = v74;
      v80 = 40;
    }

    v100 = [v78 initWithBytesNoCopy:v79 length:v80 encoding:4 freeWhenDone:1];
    v81 = [v100 hash];

    goto LABEL_85;
  }

  if (*v120 <= 2999)
  {
    if (*v120 != 1000)
    {
      if (*v120 != 2000)
      {
        goto LABEL_88;
      }

LABEL_77:
      v81 = DWORD2(v121[0]);
      goto LABEL_85;
    }

    goto LABEL_71;
  }

  if (*v120 == 3000)
  {
    goto LABEL_77;
  }

  if (*v120 == 3001)
  {
LABEL_71:
    v81 = *(&v121[0] + 1);
    goto LABEL_85;
  }

LABEL_88:
  v101 = [MEMORY[0x1E696AAA8] currentHandler];
  v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
  [v101 handleFailureInFunction:v102 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

  v81 = 0;
LABEL_85:
  if ((v18[6] & v81) == v18[7])
  {
    objc_storeStrong((*(v18[5] + 8) + 40), a2);
  }
}

void __110___MPCMusicPlayerControllerServer__onQueue_setNowPlayingItem_itemIdentifier_remoteCommandSenderID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 statusCode];

  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:5 debugDescription:{@"Unable to play item %@", *(a1 + 32)}];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 40) + 16))();
}

void __62___MPCMusicPlayerControllerServer_getNowPlayingAtIndex_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v6 = [v2 queueController];

  v3 = [v6 contentItemIDAtIndex:*(a1 + 48)];
  if (v3)
  {
    v4 = [v6 itemForContentItemID:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) _nowPlayingWithItem:v4];
  (*(*(a1 + 40) + 16))();
}

void __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 setContentItemID:v4];
}

void __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 setContentItemID:v4];
}

void __73___MPCMusicPlayerControllerServer_getNowPlayingsForContentItemIDs_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 queueController];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __73___MPCMusicPlayerControllerServer_getNowPlayingsForContentItemIDs_reply___block_invoke_2;
  v12 = &unk_1E8236FF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = v3;
  v14 = v4;
  v6 = v3;
  v7 = [v5 msv_compactMap:&v9];
  v8 = [v7 copy];

  (*(*(a1 + 48) + 16))();
}

id __73___MPCMusicPlayerControllerServer_getNowPlayingsForContentItemIDs_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemForContentItemID:a2];
  if (v3)
  {
    v4 = [*(a1 + 40) _nowPlayingWithItem:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __58___MPCMusicPlayerControllerServer_getNowPlayingWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v5 = [v2 queueController];

  v3 = [v5 currentItem];
  v4 = [*(a1 + 32) _nowPlayingWithItem:v3];
  (*(*(a1 + 40) + 16))();
}

@end