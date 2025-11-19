@interface MPCQueueControllerBehaviorMusic
@end

@implementation MPCQueueControllerBehaviorMusic

id __85___MPCQueueControllerBehaviorMusic__updateGroupSessionParticipants_localParticipant___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = [MPCSharedSessionParticipant alloc];
    if (v3)
    {
      v12.receiver = v3;
      v12.super_class = MPCSharedSessionParticipant;
      v4 = objc_msgSendSuper2(&v12, sel_init);
      v5 = v4;
      if (v4)
      {
        *(v4 + 2) = 2;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 identifier];
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v6, v7, 48);
    }

    v8 = [v2 identity];

    v10 = [v8 identifier];
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v9, v10, 56);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __85___MPCQueueControllerBehaviorMusic__updateGroupSessionParticipants_localParticipant___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

void __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    v10 = MEMORY[0x1E696AAA8];
    v11 = a3;
    v12 = [v10 currentHandler];
    [v12 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4337 description:{@"Failed to create AutoPlay playback queue: %@", v11}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_2;
  v14[3] = &unk_1E8232C60;
  v19 = *(a1 + 80);
  v13 = *(a1 + 32);
  v6 = *(&v13 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v15 = v13;
  v16 = v9;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  [v5 getMusicPlaybackContextWithOptions:0 completion:v14];
}

void __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4339 description:{@"Failed to create AutoPlay playbackContext: %@", v6}];
  }

  v7 = v5;
  v8 = +[MPCPlaybackAccountManager sharedManager];
  v9 = [v8 musicPlaybackRequestEnvironmentForAccount:*(a1 + 40)];
  [v7 setPlaybackRequestEnvironment:v9];

  [v7 setContinueListeningMaxQueueReferences:{objc_msgSend(*(a1 + 48), "continueListeningMaxQueueSizeInRequest")}];
  [v7 setContinueListeningPrefetchThreshold:{objc_msgSend(*(a1 + 48), "continueListeningMaxUpcomingTracksSizeToMaintain")}];
  objc_initWeak(&location, *(a1 + 32));
  v11 = v7;
  objc_copyWeak(&v15, &location);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  msv_dispatch_on_main_queue();

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_4;
  v4[3] = &unk_1E8232C38;
  objc_copyWeak(&v8, (a1 + 72));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _addAutoPlayPlaybackContext:v3 atPosition:2 afterContentItemID:0 sectionIdentifier:0 actions:16 completion:v4];

  objc_destroyWeak(&v8);
}

void __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = v3;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v5 = v3;
  v6 = WeakRetained;
  msv_dispatch_on_main_queue();
}

void __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke_5(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  if (*(a1 + 40))
  {
    if ((*(*(a1 + 32) + 144) | 2) == 3)
    {
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 48) engineID];
        v7 = [*(a1 + 32) sessionID];
        v8 = *(*(a1 + 32) + 144);
        if (v8 >= 0xA)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", *(*(a1 + 32) + 144)];
        }

        else
        {
          v9 = off_1E8232D58[v8];
        }

        v17 = *(a1 + 56);
        v18 = *(a1 + 40);
        *buf = 138544386;
        v20 = v6;
        v21 = 2114;
        v22 = v7;
        v23 = 2114;
        v24 = v9;
        v25 = 2114;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | failed to enable, not updating state [already in %{public}@ state] transition=%{public}@ error=%{public}@", buf, 0x34u);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1 + 48) engineID];
        v13 = [*(a1 + 32) sessionID];
        v14 = *(a1 + 56);
        v15 = *(a1 + 40);
        *buf = 138544130;
        v20 = v12;
        v21 = 2114;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | disabling autoplay [failed to enable] transition=%{public}@ error=%{public}@", buf, 0x2Au);
      }

      v16 = *(a1 + 32);
      if (v16[18] != 2)
      {
        [v16 _transitionToAutoPlayState:2];
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (*(a1 + 64) == v10[17] && v10[18] == 6)
    {

      [v10 _transitionToAutoPlayState:7];
    }
  }
}

id __55___MPCQueueControllerBehaviorMusic__itemForComponents___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69704A0]) initWithToken:@"AutoPlayPlaceholder" dataSource:*(a1 + 32)];

  return v1;
}

void __76___MPCQueueControllerBehaviorMusic__evaluateLoadingDataSourceItemThresholds__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 shouldRequestAdditionalItemsAtTail])
  {
    v7 = [v6 prefetchThreshold];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = [*(a1 + 32) _countOfItemsWithinSection:v5 maxCount:v7];
      v10 = v8 - v9;
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 40) engineID];
        v13 = [*(a1 + 32) sessionID];
        *buf = 138544386;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v5;
        v26 = 2048;
        v27 = v8;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[CUTS:%{public}@:%{public}@] _evaluateLoadingDataSourceItemThresholds | evaluating [] sectionID=%{public}@ threshold=%ld itemCount>=%ld", buf, 0x34u);
      }

      if (v10 >= 1)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __76___MPCQueueControllerBehaviorMusic__evaluateLoadingDataSourceItemThresholds__block_invoke_676;
        v16[3] = &unk_1E8232C10;
        v14 = *(a1 + 40);
        v15 = *(a1 + 32);
        v17 = v14;
        v18 = v15;
        v19 = v5;
        [v6 loadAdditionalItemsIfNeededWithCount:v10 completion:v16];
      }
    }
  }
}

void __76___MPCQueueControllerBehaviorMusic__evaluateLoadingDataSourceItemThresholds__block_invoke_676(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) engineID];
    v4 = [*(a1 + 40) sessionID];
    v5 = *(a1 + 48);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[CUTS:%{public}@:%{public}@] _evaluateLoadingDataSourceItemThresholds | completed [] sectionID=%{public}@", &v6, 0x20u);
  }
}

void __131___MPCQueueControllerBehaviorMusic__addAutoPlayPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131___MPCQueueControllerBehaviorMusic__addAutoPlayPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2;
  block[3] = &unk_1E8232B28;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v10;
  v13 = v7;
  v14 = *(a1 + 64);
  v8 = *(a1 + 72);
  v17 = *(a1 + 80);
  v15 = v3;
  v16 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __131___MPCQueueControllerBehaviorMusic__addAutoPlayPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 136) identifier];
  LOBYTE(v2) = [v2 isEqualToString:v3];

  if ((v2 & 1) == 0)
  {
    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 48) engineID];
      v25 = [*(a1 + 40) sessionID];
      v26 = *(a1 + 56);
      v27 = [v26 sectionIdentifier];
      v29 = 138544130;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2048;
      v34 = v26;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | rolling back edit [autoPlayIdentifierList changed before dataSource finished loading] dataSource=%p section=%{public}@", &v29, 0x2Au);
    }

    [*(a1 + 64) rollback];
    v28 = *(a1 + 80);
    v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"autoPlayIdentifierList is nil"];
    v22 = *(v28 + 16);
    goto LABEL_20;
  }

  if (*(a1 + 88) == 1)
  {
    v4 = [*(a1 + 56) preferredStartItemIdentifier];

    if (v4)
    {
      v5 = [*(a1 + 56) sectionIdentifier];
      v6 = [*(a1 + 56) preferredStartItemIdentifier];
      v7 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v5 itemID:v6];

      v8 = [v7 contentItemID];
      [*(a1 + 64) setSuggestedContentItemIDForStart:v8];
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 48) engineID];
        v11 = [*(a1 + 40) sessionID];
        v29 = 138543874;
        v30 = v10;
        v31 = 2114;
        v32 = v11;
        v33 = 2114;
        v34 = v8;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | setting suggested start item on edit [first data source loaded] suggestedContentItemIDForStart=%{public}@", &v29, 0x20u);
      }
    }
  }

  if (*(*(a1 + 40) + 168) != 1)
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 48) engineID];
      v14 = [*(a1 + 40) sessionID];
      v29 = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | behavior state changed [first data source loaded] state=Ready", &v29, 0x16u);
    }

    *(*(a1 + 40) + 168) = 1;
  }

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 48) engineID];
    v17 = [*(a1 + 40) sessionID];
    v29 = 138543618;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | committing edit [added data source]", &v29, 0x16u);
  }

  [*(a1 + 64) commit];
  if (*(a1 + 80))
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 48) engineID];
      v20 = [*(a1 + 40) sessionID];
      v29 = 138543618;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | calling completion [added data source]", &v29, 0x16u);
    }

    v21 = [*(a1 + 72) msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"adding data source failed (autoplay SIL)"];
    v22 = *(*(a1 + 80) + 16);
LABEL_20:
    v22();
  }
}

void __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) engineID];
    v9 = [*(a1 + 40) sessionID];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | freezing section [play last] sectionID=%{public}@", &v10, 0x20u);
  }

  [v6 setFrozen:1];
}

void __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_653(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2;
  block[3] = &unk_1E8232AD8;
  v17 = *(a1 + 80);
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v10;
  v13 = v7;
  v18 = *(a1 + 96);
  v14 = *(a1 + 64);
  v8 = *(a1 + 72);
  v15 = v3;
  v16 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 88) & 2) != 0 && *(a1 + 96))
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) engineID];
      v4 = [*(a1 + 40) sessionID];
      v5 = MPShuffleTypeDescription();
      v6 = [*(a1 + 48) preferredStartItemIdentifier];
      v7 = [*(a1 + 48) sectionIdentifier];
      v32 = 138544386;
      v33 = v3;
      v34 = 2114;
      v35 = v4;
      v36 = 2114;
      v37 = v5;
      v38 = 2114;
      v39 = v6;
      v40 = 2114;
      v41 = v7;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | setting shuffle type [first data source loaded] shuffleType=%{public}@ startItem=%{public}@ startSection=%{public}@", &v32, 0x34u);
    }

    v8 = *(a1 + 96);
    *(*(a1 + 40) + 112) = v8;
    v9 = *(*(a1 + 40) + 128);
    v10 = [*(a1 + 48) preferredStartItemIdentifier];
    v11 = [*(a1 + 48) sectionIdentifier];
    [v9 setShuffleType:v8 startingItem:v10 inSection:v11];

    [*(a1 + 40) _emitEventsForPlaybackBehaviorChangeIfNeeded];
    [*(a1 + 56) behavior:*(a1 + 40) didChangeShuffleType:*(a1 + 96)];
  }

  if (*(a1 + 104) == 1)
  {
    v12 = [*(a1 + 48) preferredStartItemIdentifier];

    if (v12)
    {
      v13 = [*(a1 + 48) sectionIdentifier];
      v14 = [*(a1 + 48) preferredStartItemIdentifier];
      v15 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v13 itemID:v14];

      v16 = [v15 contentItemID];
      [*(a1 + 64) setSuggestedContentItemIDForStart:v16];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) engineID];
        v19 = [*(a1 + 40) sessionID];
        v20 = *(a1 + 64);
        v32 = 138544130;
        v33 = v18;
        v34 = 2114;
        v35 = v19;
        v36 = 2114;
        v37 = v16;
        v38 = 2114;
        v39 = v20;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | setting suggested start item on edit [first data source loaded] suggestedContentItemIDForStart=%{public}@ edit=%{public}@", &v32, 0x2Au);
      }
    }
  }

  if (*(*(a1 + 40) + 168) != 1)
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 32) engineID];
      v23 = [*(a1 + 40) sessionID];
      v32 = 138543618;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | behavior state changed [first data source loaded] state=Ready", &v32, 0x16u);
    }

    *(*(a1 + 40) + 168) = 1;
  }

  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 32) engineID];
    v26 = [*(a1 + 40) sessionID];
    v27 = *(a1 + 64);
    v32 = 138543874;
    v33 = v25;
    v34 = 2114;
    v35 = v26;
    v36 = 2114;
    v37 = v27;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | committing edit [added data source] edit=%{public}@", &v32, 0x20u);
  }

  [*(a1 + 64) commit];
  if (*(a1 + 80))
  {
    v28 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 32) engineID];
      v30 = [*(a1 + 40) sessionID];
      v32 = 138543618;
      v33 = v29;
      v34 = 2114;
      v35 = v30;
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | calling completion [added data source]", &v32, 0x16u);
    }

    v31 = [*(a1 + 72) msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"adding data source failed"];
    (*(*(a1 + 80) + 16))();
  }
}

void __85___MPCQueueControllerBehaviorMusic_didDequeueShuffledItemsInSectionedIdentifierList___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = v2;
  if (*(*(a1 + 32) + 168))
  {
    v4 = [v2 beginEditWithReason:@"BehaviorMusic-didDequeueShuffledItems"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 engineID];
      v7 = [*(a1 + 32) sessionID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] didDequeueShuffledItemsInSectionedIdentifierList: | committing edit [ShuffleSIL dequeued items]", &v10, 0x16u);
    }

    [v4 commit];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 engineID];
      v9 = [*(a1 + 32) sessionID];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] didDequeueShuffledItemsInSectionedIdentifierList: | ignoring SIL change [state: Loading]", &v10, 0x16u);
    }
  }
}

void __87___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateSection___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:*(a1 + 40)];
  [v3 updatePlaybackContext];
  v2 = [*(a1 + 32) host];
  [v2 behaviorDidChange];
}

void __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  [v1 upNextBehaviorDidChange];
}

void __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateItems_inSection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = v2;
  if (*(*(a1 + 32) + 168))
  {
    v4 = [v2 beginEditWithReason:@"BehaviorMusic-dataSourceDidUpdateItems"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 engineID];
      v7 = [*(a1 + 32) sessionID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:dataSourceDidUpdateItems:inSection: | committing edit [data source updated items]", &v10, 0x16u);
    }

    [v4 commit];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 engineID];
      v9 = [*(a1 + 32) sessionID];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:dataSourceDidUpdateItems:inSection: | ignoring SIL change [state: Loading]", &v10, 0x16u);
    }
  }
}

void __92___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidAddItems_toSection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = *(*(a1 + 32) + 168);
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v2 engineID];
      v7 = [*(a1 + 32) sessionID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v12 = 138544130;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:%p dataSourceDidAddItems:inSection:%{public}@ | editing [data source added items]", &v12, 0x2Au);
    }

    [*(a1 + 32) _evaluateAutoPlayStateAfterItemsChanged];
  }

  else
  {
    if (v5)
    {
      v10 = [v2 engineID];
      v11 = [*(a1 + 32) sessionID];
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:dataSourceDidAddItems:inSection: | ignoring SIL change [state: Loading]", &v12, 0x16u);
    }
  }
}

void __97___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidRemoveItems_fromSection___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = *(*(a1 + 32) + 168);
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v2 engineID];
      v7 = [*(a1 + 32) sessionID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 138544130;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:%p dataSourceDidRemoveItems:inSection:%{public}@ | editing [data source removed items]", &v11, 0x2Au);

LABEL_6:
    }
  }

  else if (v5)
  {
    v6 = [v2 engineID];
    v10 = [*(a1 + 32) sessionID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:dataSourceDidRemoveItems:inSection: | ignoring SIL change [state: Loading]", &v11, 0x16u);

    goto LABEL_6;
  }
}

void __93___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidMoveItems_inSection___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = *(*(a1 + 32) + 168);
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v2 engineID];
      v7 = [*(a1 + 32) sessionID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 138544130;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:%p dataSourceDidMoveItems:inSection:%{public}@ | editing [data source moved items]", &v11, 0x2Au);

LABEL_6:
    }
  }

  else if (v5)
  {
    v6 = [v2 engineID];
    v10 = [*(a1 + 32) sessionID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:dataSourceDidMoveItems:inSection: | ignoring SIL change [state: Loading]", &v11, 0x16u);

    goto LABEL_6;
  }
}

void __98___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidEndTransactionForSection___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = v2;
  if (*(*(a1 + 32) + 168))
  {
    v4 = [v2 beginEditWithReason:@"BehaviorMusic-dataSourceDidEndTransaction"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 engineID];
      v7 = [*(a1 + 32) sessionID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v14 = 138544130;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:%p dataSourceDidEndTransactionForSection:%{public}@ | committing edit [data source ended transaction]", &v14, 0x2Au);
    }

    [v4 commit];
    [*(a1 + 32) _evaluateLoadingDataSourceItemThresholds];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 engineID];
      v11 = [*(a1 + 32) sessionID];
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] sectionedIdentifierList:%p dataSourceDidEndTransactionForSection:%{public}@ | ignoring SIL change [state: Loading]", &v14, 0x2Au);
    }
  }
}

void __90___MPCQueueControllerBehaviorMusic_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = *(a1 + 32);
  if (*(v3 + 144) == 9)
  {
    *(v3 + 82) = 1;
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 engineID];
      v6 = [*(a1 + 32) sessionID];
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] loadRepresentationForArtworkCatalog:completionHandler: | evaluating autoPlayIsTriggered [loading artwork for autoPlayPlaceholder] triggered=YES", buf, 0x16u);
    }

    [*(a1 + 32) _transitionToAutoPlayState:9];
    v7 = @"AutoPlayArtwork - AutoPlay triggered";
  }

  else
  {
    v7 = @"AutoPlayArtwork - Trigger is not needed";
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A278];
  v13 = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [v9 errorWithDomain:@"MPCMusicBehaviorError" code:7 userInfo:v10];
  (*(v8 + 16))(v8, 0, v11);
}

void __66___MPCQueueControllerBehaviorMusic_clearUpNextAfterContentItemID___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  [v1 upNextBehaviorDidChange];
}

void __67___MPCQueueControllerBehaviorMusic_removeContentItemID_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  [v1 upNextBehaviorDidChange];
}

void __85___MPCQueueControllerBehaviorMusic_moveContentItemID_beforeContentItemID_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  [v1 upNextBehaviorDidChange];
}

void __84___MPCQueueControllerBehaviorMusic_moveContentItemID_afterContentItemID_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  [v1 upNextBehaviorDidChange];
}

void __137___MPCQueueControllerBehaviorMusic__qfa_performInsertPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_526(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137___MPCQueueControllerBehaviorMusic__qfa_performInsertPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2_527;
  block[3] = &unk_1E8232A88;
  v18 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = *(&v10 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v12 = v7;
  v13 = v10;
  v14 = *(a1 + 64);
  v19 = *(a1 + 96);
  v15 = *(a1 + 72);
  v8 = *(a1 + 80);
  v16 = v3;
  v17 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __137___MPCQueueControllerBehaviorMusic__qfa_performInsertPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_2_527(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 96) & 2) != 0)
  {
    v2 = [*(a1 + 32) shuffleType];
    if (v2)
    {
      v3 = v2;
      v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) engineID];
        v6 = [*(a1 + 48) sessionID];
        v7 = MPShuffleTypeDescription();
        v8 = [*(a1 + 56) preferredStartItemIdentifier];
        v9 = [*(a1 + 56) sectionIdentifier];
        v35 = 138544386;
        v36 = v5;
        v37 = 2114;
        v38 = v6;
        v39 = 2114;
        v40 = v7;
        v41 = 2114;
        v42 = v8;
        v43 = 2114;
        v44 = v9;
        _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | setting shuffle type [first data source loaded] shuffleType=%{public}@ startItem=%{public}@ startSection=%{public}@", &v35, 0x34u);
      }

      *(*(a1 + 48) + 112) = v3;
      v10 = *(*(a1 + 48) + 128);
      v11 = [*(a1 + 56) preferredStartItemIdentifier];
      v12 = [*(a1 + 56) sectionIdentifier];
      [v10 setShuffleType:v3 startingItem:v11 inSection:v12];

      [*(a1 + 48) _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [*(a1 + 64) behavior:*(a1 + 48) didChangeShuffleType:v3];
    }
  }

  if (*(a1 + 104) == 1)
  {
    v13 = [*(a1 + 56) preferredStartItemIdentifier];

    if (v13)
    {
      v14 = [*(a1 + 56) sectionIdentifier];
      v15 = [*(a1 + 56) preferredStartItemIdentifier];
      v16 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v14 itemID:v15];

      v17 = [v16 contentItemID];
      [*(a1 + 72) setSuggestedContentItemIDForStart:v17];
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 40) engineID];
        v20 = [*(a1 + 48) sessionID];
        v21 = *(a1 + 72);
        v35 = 138544130;
        v36 = v19;
        v37 = 2114;
        v38 = v20;
        v39 = 2114;
        v40 = v17;
        v41 = 2114;
        v42 = v21;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | setting suggested start item on edit [first data source loaded] suggestedContentItemIDForStart=%{public}@ edit=%{public}@", &v35, 0x2Au);
      }
    }
  }

  if (*(*(a1 + 48) + 168) != 1)
  {
    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 40) engineID];
      v24 = [*(a1 + 48) sessionID];
      v35 = 138543618;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | behavior state changed [first data source loaded] state=Ready", &v35, 0x16u);
    }

    *(*(a1 + 48) + 168) = 1;
  }

  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [*(a1 + 40) engineID];
    v27 = [*(a1 + 48) sessionID];
    v28 = *(a1 + 72);
    v35 = 138543874;
    v36 = v26;
    v37 = 2114;
    v38 = v27;
    v39 = 2114;
    v40 = v28;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | committing edit [added data source] edit=%{public}@", &v35, 0x20u);
  }

  [*(a1 + 72) commit];
  if (*(a1 + 88))
  {
    v29 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 40) engineID];
      v31 = [*(a1 + 48) sessionID];
      v35 = 138543618;
      v36 = v30;
      v37 = 2114;
      v38 = v31;
      _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | calling completion [added data source]", &v35, 0x16u);
    }

    v32 = [*(a1 + 80) msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"adding data source failed"];
    v33 = *(a1 + 88);
    v34 = [*(a1 + 56) preferredStartContentItemID];
    (*(v33 + 16))(v33, v34, v32);
  }
}

void __88___MPCQueueControllerBehaviorMusic_performInsertCommand_targetContentItemID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v17 = *(a1 + 64);
    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:v6 debugDescription:{@"Failed to build playback context from queue: %@", *(a1 + 32)}];
    (*(v17 + 16))(v17, v18);
  }

  else
  {
    v8 = [*(a1 + 40) associatedParticipantIdentifier];
    [v5 setAssociatedParticipantIdentifier:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 40) contentItemID];
      if (v9)
      {
        v10 = [*(a1 + 48) _itemForContentItemID:v9 allowReuse:1];
        if (([v10 isPlaceholder] & 1) == 0)
        {
          v11 = [v10 modelGenericObject];
          if (v11)
          {
            v12 = v5;
            v13 = [MPCModelRadioContentReference referenceWithMPModelObject:v11];
            [v12 setNowPlayingContentReference:v13];
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v5;
      if ([v14 allowsJumpToIt])
      {
        v15 = [v14 startItemIdentifiers];
        v16 = v15 != 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = [*(a1 + 40) mediaRemoteOptions];
    v20 = [v19 objectForKeyedSubscript:@"_MPCOverrideAllowsInsertionPositionLast"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = v16;
    }

    else
    {
      v22 = v16 | 0x40;
    }

    v23 = *(*(a1 + 48) + 24);
    v24 = [*(a1 + 40) insertionPosition];
    if (v24 == 2 && (v23 & 1) != 0 && (v21 & 1) == 0)
    {
      v25 = *(a1 + 64);
      v26 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:6 debugDescription:@"Cannot insert at Last position in AutoPlay."];
      (*(v25 + 16))(v25, v26);
    }

    else
    {
      v27 = [*(a1 + 40) insertAfterContentItemID];
      v28 = v27;
      if (!v27)
      {
        v28 = *(a1 + 56);
      }

      v29 = v28;

      v30 = *(a1 + 48);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __88___MPCQueueControllerBehaviorMusic_performInsertCommand_targetContentItemID_completion___block_invoke_2;
      v31[3] = &unk_1E8232EC8;
      v32 = v5;
      v33 = *(a1 + 64);
      [v30 _qfa_performInsertPlaybackContext:v32 atPosition:v24 afterContentItemID:v29 sectionIdentifier:0 actions:v22 completion:v31];
    }
  }
}

void __88___MPCQueueControllerBehaviorMusic_performInsertCommand_targetContentItemID_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:6 debugDescription:{@"Failed to insert playback context: %@", *(a1 + 32)}];
  (*(*(a1 + 40) + 16))();
}

void __61___MPCQueueControllerBehaviorMusic_canReuseQueue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isReusableForPlaybackContext:*(a1 + 32)])
    {
      v8 = [v7 startItemIdentifiers];
      if (v8)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __61___MPCQueueControllerBehaviorMusic_canReuseQueue_completion___block_invoke_2;
        v10[3] = &unk_1E8232A38;
        v9 = *(a1 + 40);
        v11 = *(a1 + 48);
        [v9 findFirstContentItemIDForItemIntersectingIdentifierSet:v8 completion:v10];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __78___MPCQueueControllerBehaviorMusic_prepareForCreateStationAfterContentItemID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) engineID];
    v9 = [*(a1 + 40) sessionID];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] prepareForCreateStationAfterContentItemID: | freezing section [create station] sectionID=%{public}@", &v10, 0x20u);
  }

  [v6 setFrozen:1];
}

void __102___MPCQueueControllerBehaviorMusic_findFirstContentItemIDForItemIntersectingIdentifierSet_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v6 = [v12 firstItemIntersectingIdentifierSet:*(a1 + 32)];
  if (v6)
  {
    v7 = [v12 sectionIdentifier];
    v8 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v7 itemID:v6];

    v9 = [v8 contentItemID];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void __80___MPCQueueControllerBehaviorMusic_reshuffleWithTargetContentItemID_completion___block_invoke_356(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) rollback];
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) engineID];
      v6 = [*(a1 + 48) sessionID];
      *buf = 138543874;
      v32 = v5;
      v33 = 2114;
      v34 = v6;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [data source replacement failed] error=%{public}@", buf, 0x20u);
    }

    v7 = *(a1 + 64);
    v8 = [v3 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:12 debugDescription:@"Failed to replace data source during reshuffle"];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) engineID];
      v11 = [*(a1 + 48) sessionID];
      *buf = 138543618;
      v32 = v10;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | data source replacement succeeded, re-enumerating []", buf, 0x16u);
    }

    v8 = [*(a1 + 48) contentItemIDEnumeratorStartingAfterContentItemID:*(a1 + 56) mode:2 options:0];
    v12 = [v8 nextObject];
    v13 = [*(a1 + 48) _componentsForContentItemID:v12];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) engineID];
      v16 = [*(a1 + 48) sessionID];
      v17 = [v13 type];
      *buf = 138544130;
      v32 = v15;
      v33 = 2114;
      v34 = v16;
      v35 = 2114;
      v36 = v12;
      v37 = 1024;
      v38 = v17;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | verified resolved item [] resolvedStartingContentItemID=%{public}@ type=%d", buf, 0x26u);
    }

    v18 = [v13 type];
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = [*(a1 + 40) engineID];
        v22 = [*(a1 + 48) sessionID];
        *buf = 138543874;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = v12;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [item still placeholder after replacement] resolvedStartingContentItemID=%{public}@", buf, 0x20u);
      }

      [*(a1 + 32) rollback];
      v23 = *(a1 + 64);
      v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:12 debugDescription:{@"Item still placeholder after data source replacement: %@", v12}];
      (*(v23 + 16))(v23, v24);
    }

    else
    {
      if (v20)
      {
        v25 = [*(a1 + 40) engineID];
        v26 = [*(a1 + 48) sessionID];
        *buf = 138543874;
        v32 = v25;
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v12;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | committing edit [data source replacement completed] resolvedStartingContentItemID=%{public}@", buf, 0x20u);
      }

      [*(a1 + 32) setSuggestedContentItemIDForStart:v12];
      [*(a1 + 32) commit];
      if ((*(a1 + 72) & 1) == 0)
      {
        [*(a1 + 48) _emitEventsForPlaybackBehaviorChangeIfNeeded];
        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 96));
        [WeakRetained behavior:*(a1 + 48) didChangeShuffleType:1];
      }

      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 40) engineID];
        v30 = [*(a1 + 48) sessionID];
        *buf = 138543618;
        v32 = v29;
        v33 = 2114;
        v34 = v30;
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | reshuffle completed successfully []", buf, 0x16u);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

id __80___MPCQueueControllerBehaviorMusic_reshuffleWithTargetContentItemID_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

void __86___MPCQueueControllerBehaviorMusic_isOneShotExportableSessionForContentItemID_reason___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 dataSource];
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v8 = [v6 containsTransportableContentWithReason:&obj];
  objc_storeStrong((v7 + 40), obj);

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __94___MPCQueueControllerBehaviorMusic_isExportableSessionType_forContentItemID_extension_reason___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 dataSource];
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v8 = [v6 containsTransportableContentWithReason:&obj];
  objc_storeStrong((v7 + 40), obj);

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v120 = *MEMORY[0x1E69E9840];
  v90 = a2;
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior_Oversize");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) engineID];
    v8 = [*(a1 + 40) sessionID];
    *buf = 138543874;
    v113 = v7;
    v114 = 2114;
    v115 = v8;
    v116 = 2114;
    v117 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | processing dataSourceState=%{public}@", buf, 0x20u);
  }

  if ([*(*(a1 + 40) + 128) hasSection:v90] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 136), "hasSection:", v90))
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineID];
      v11 = [*(a1 + 40) sessionID];
      *buf = 138544130;
      v113 = v10;
      v114 = 2114;
      v115 = v11;
      v116 = 2048;
      v117 = v5;
      v118 = 2114;
      v119 = v90;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | restored [success] dataSourceState=%p sectionID=%{public}@", buf, 0x2Au);
    }

    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
    spid = os_signpost_id_make_with_pointer(v12, v5);

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v14 = v13;
    v88 = (spid - 1);
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 138543362;
      v113 = v90;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "QC-FinalizeDataSource", "section=%{public}@", buf, 0xCu);
    }

    v15 = [*(a1 + 32) eventStream];
    [v5 setEventStream:v15];

    v16 = [*(a1 + 32) playerID];
    [v5 setPlayerID:v16];

    v17 = [v5 playbackContext];
    [v17 clearStartItem];

    v18 = [v5 playbackContext];
    [v18 setShuffleType:0];

    v19 = [v5 playbackContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = [v5 playbackContext];
      v22 = *(a1 + 48);
      if (v22)
      {
        v23 = [v22 sectionID];
        v24 = [*(a1 + 48) itemID];
        if ([v90 isEqualToString:v23])
        {
          v25 = [*(a1 + 40) _identifierListForSection:v23];
          if ([v25 hasItem:v24 inSection:v23] && (objc_msgSend(v25, "isDeletedItem:inSection:", v24, v23) & 1) == 0)
          {
            v32 = [v5 dataSource];
            v110[0] = MEMORY[0x1E69E9820];
            v110[1] = 3221225472;
            v110[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_220;
            v110[3] = &unk_1E82355C8;
            v111 = *(a1 + 48);
            v33 = [v32 identifierRegistryWithExclusiveAccessReturningObject:v110];
            [v21 setStartItemIdentifiers:v33];

            v26 = v111;
          }

          else
          {
            v26 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [*(a1 + 32) engineID];
              v28 = [*(a1 + 40) sessionID];
              *buf = 138544130;
              v113 = v27;
              v114 = 2114;
              v115 = v28;
              v116 = 2114;
              v117 = v23;
              v118 = 2114;
              v119 = v24;
              _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | ignoring start item [no longer in SIL/AutoPlay-SIL] startingSectionID=%{public}@ startingItemID=%{public}@", buf, 0x2Au);
            }
          }
        }
      }
    }

    v34 = [v5 playbackContext];
    v35 = [v34 conformsToProtocol:&unk_1F45B4200];

    if (v35)
    {
      v36 = [v5 playbackContext];
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v38 = v37;
      if (v88 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v38, OS_SIGNPOST_INTERVAL_BEGIN, spid, "QC-FinalizeDataSource-Rectify", "", buf, 2u);
      }

      v39 = [v36 playbackRequestEnvironment];
      v109 = 0;
      v40 = [v39 rectifiedPlaybackRequestEnvironmentWithReasons:&v109];
      v41 = v109;

      if (v40)
      {
        v42 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [*(a1 + 32) engineID];
          v44 = [*(a1 + 40) sessionID];
          v45 = [v41 componentsJoinedByString:{@", "}];
          *buf = 138544130;
          v113 = v43;
          v114 = 2114;
          v115 = v44;
          v116 = 2114;
          v117 = v45;
          v118 = 2114;
          v119 = v90;
          _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | account rectification [%{public}@] sectionID=%{public}@", buf, 0x2Au);
        }

        [v36 setPlaybackRequestEnvironment:v40];
      }

      v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v47 = v46;
      if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        v48 = [v41 componentsJoinedByString:{@", "}];
        *buf = 138543362;
        v113 = v48;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v47, OS_SIGNPOST_INTERVAL_END, spid, "QC-FinalizeDataSource-Rectify", "reasons=%{public}@", buf, 0xCu);
      }
    }

    v49 = *(a1 + 40);
    v50 = [v5 playbackContext];
    v51 = [v5 sectionIdentifier];
    [v49 _emitEventsForAddingPlaybackContext:v50 sectionIdentifier:v51];

    v52 = dispatch_group_create();
    dispatch_group_enter(v52);
    v53 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v54 = v53;
    if (v88 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v54, OS_SIGNPOST_INTERVAL_BEGIN, spid, "QC-FinalizeDataSource-Replace", "", buf, 2u);
    }

    v87 = [*(a1 + 40) _identifierListForSection:v90];
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_273;
    v101[3] = &unk_1E8232920;
    v55 = *(a1 + 32);
    v56 = *(a1 + 40);
    v102 = v55;
    v103 = v56;
    v57 = v5;
    v104 = v57;
    v58 = v90;
    v105 = v58;
    v106 = *(a1 + 56);
    v108 = spid;
    v29 = v52;
    v107 = v29;
    [v87 replaceDataSource:v57 forSection:v58 completion:v101];
    if (![v57 shouldAddOriginalPlaybackContextAfterReplacement] || (objc_msgSend(v57, "originalPlaybackContext"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v59 == 0, v59, v60))
    {
LABEL_61:
      v82 = [*(a1 + 48) sectionID];
      v83 = v82;
      if (v82 == v58)
      {

        LOBYTE(v84) = 1;
      }

      else
      {
        v84 = [v82 isEqual:v58];

        if (!v84)
        {
          goto LABEL_66;
        }
      }

      dispatch_group_enter(*(a1 + 64));
LABEL_66:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_287;
      block[3] = &unk_1E8235A38;
      v93 = spid;
      v94 = v84;
      v92 = *(a1 + 64);
      dispatch_group_notify(v29, MEMORY[0x1E69E96A0], block);

      goto LABEL_67;
    }

    v61 = [v57 originalPlaybackContext];
    if (objc_opt_respondsToSelector())
    {
      v62 = [v57 originalPlaybackContext];
      v63 = objc_opt_respondsToSelector();

      if ((v63 & 1) == 0)
      {
        goto LABEL_54;
      }

      v61 = [v57 originalPlaybackContext];
      v64 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v65 = v64;
      if (v88 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v65, OS_SIGNPOST_INTERVAL_BEGIN, spid, "QC-FinalizeDataSource-Original-Rectify", "", buf, 2u);
      }

      v66 = [v61 playbackRequestEnvironment];
      v100 = 0;
      v67 = [v66 rectifiedPlaybackRequestEnvironmentWithReasons:&v100];
      v68 = v100;

      if (v67)
      {
        v69 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v86 = [*(a1 + 32) engineID];
          v70 = [*(a1 + 40) sessionID];
          v85 = [v68 componentsJoinedByString:{@", "}];
          *buf = 138544130;
          v113 = v86;
          v114 = 2114;
          v115 = v70;
          v116 = 2114;
          v117 = v85;
          v118 = 2114;
          v119 = v58;
          _os_log_impl(&dword_1C5C61000, v69, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | account rectification for originalPlaybackContext [%{public}@] sectionID=%{public}@", buf, 0x2Au);
        }

        [v61 setPlaybackRequestEnvironment:v67];
      }

      v71 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v72 = v71;
      if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        v73 = [v68 componentsJoinedByString:{@", "}];
        *buf = 138543362;
        v113 = v73;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v72, OS_SIGNPOST_INTERVAL_END, spid, "QC-FinalizeDataSource-Original-Rectify", "reasons=%{public}@", buf, 0xCu);
      }
    }

LABEL_54:
    objc_initWeak(buf, *(a1 + 40));
    v74 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v75 = v74;
    if (v88 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v74))
    {
      *v99 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v75, OS_SIGNPOST_INTERVAL_BEGIN, spid, "QC-FinalizeDataSource-Add", "", v99, 2u);
    }

    v76 = *(a1 + 40);
    if (v87 == v76[16])
    {
      v77 = [v57 originalPlaybackContext];
      v78 = v97;
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_279;
      v97[3] = &unk_1E8232948;
      v79 = v98;
      objc_copyWeak(v98, buf);
      v97[4] = *(a1 + 32);
      v97[5] = v57;
      v81 = v58;
      v97[6] = v81;
      v97[7] = *(a1 + 56);
      v98[1] = spid;
      [v76 _addPlaybackContext:v77 atPosition:100 afterContentItemID:0 sectionIdentifier:v81 actions:16 completion:v97];
    }

    else
    {
      v77 = [v57 originalPlaybackContext];
      v78 = v95;
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_283;
      v95[3] = &unk_1E8232948;
      v79 = v96;
      objc_copyWeak(v96, buf);
      v95[4] = *(a1 + 32);
      v95[5] = v57;
      v80 = v58;
      v95[6] = v80;
      v95[7] = *(a1 + 56);
      v96[1] = spid;
      [v76 _addAutoPlayPlaybackContext:v77 atPosition:100 afterContentItemID:0 sectionIdentifier:v80 actions:16 completion:v95];
    }

    objc_destroyWeak(v79);
    objc_destroyWeak(buf);
    goto LABEL_61;
  }

  [*(*(a1 + 40) + 160) setObject:0 forKeyedSubscript:v90];
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    v30 = [*(a1 + 32) engineID];
    v31 = [*(a1 + 40) sessionID];
    *buf = 138543874;
    v113 = v30;
    v114 = 2114;
    v115 = v31;
    v116 = 2114;
    v117 = v90;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_FAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | skipping section [sectionID not in SIL/AutoPlay-SIL] sectionID=%{public}@", buf, 0x20u);
  }

LABEL_67:
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_289(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) allSectionIdentifiers];
  v3 = [*(*(a1 + 32) + 136) allSectionIdentifiers];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_2;
  v8[3] = &unk_1E8232998;
  v8[4] = *(a1 + 32);
  v5 = [v4 msv_filter:v8];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:2 debugDescription:{@"Missing data sources for sectionIDs: %@", v5}];
    [*(a1 + 40) addObject:v6];
  }

  if ([*(a1 + 40) count])
  {
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:2 underlyingErrors:*(a1 + 40) debugDescription:&stru_1F454A698];
  }

  else
  {
    v7 = 0;
  }

  *(*(a1 + 32) + 168) = 1;
  (*(*(a1 + 48) + 16))();
}

BOOL __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

id __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_220(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemID];
  v5 = [v3 identifierSetForItem:v4];

  return v5;
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_273(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) engineID];
      v7 = [*(a1 + 40) sessionID];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v14 = 138544386;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | restoration failed [replacing SIL data source failed] dataSourceState=%p sectionID=%{public}@ error=%{public}@", &v14, 0x34u);
    }

    v10 = [v4 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:2 debugDescription:@"replacing SIL data source failed"];

    [*(a1 + 64) addObject:v10];
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = v11;
  v13 = *(a1 + 80);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v13, "QC-FinalizeDataSource-Replace", "", &v14, 2u);
  }

  dispatch_group_leave(*(a1 + 72));
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_279(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) engineID];
      v8 = [WeakRetained sessionID];
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v15 = 138544386;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | restoration failed [adding playback context failed] dataSourceState=%p sectionID=%{public}@ error=%{public}@", &v15, 0x34u);
    }

    v11 = [v4 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:2 debugDescription:@"failed to add original playback context (dataSource requested shouldAddOriginalPlaybackContextAfterReplacement)"];

    [*(a1 + 56) addObject:v11];
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v13 = v12;
  v14 = *(a1 + 72);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v14, "QC-FinalizeDataSource-Add", "", &v15, 2u);
  }
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_283(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) engineID];
      v8 = [WeakRetained sessionID];
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v15 = 138544386;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@:%{public}@] finalizeStateRestorationWithTargetContentItemID:completion: | restoration failed [adding playback context failed (autoplay SIL)] dataSourceState=%p sectionID=%{public}@ error=%{public}@", &v15, 0x34u);
    }

    v11 = [v4 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:2 debugDescription:@"failed to add original playback context to autoplay SIL (dataSource requested shouldAddOriginalPlaybackContextAfterReplacement)"];

    [*(a1 + 56) addObject:v11];
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v13 = v12;
  v14 = *(a1 + 72);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v14, "QC-FinalizeDataSource-Add", "", &v15, 2u);
  }
}

void __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_287(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "QC-FinalizeDataSource", "", v5, 2u);
  }

  if (*(a1 + 48) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 sectionIdentifier];
  v9 = [v7 _identifierListForSection:v8];

  if (([*(a1 + 32) autoPlayEnabled] & 1) != 0 || v9 != *(*(a1 + 32) + 136))
  {
    if ([v6 shouldRequestAdditionalItemsAtTail])
    {
      dispatch_group_enter(*(a1 + 40));
      v10 = *(a1 + 64);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke_2;
      v13[3] = &unk_1E82328D0;
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v14 = v11;
      v15 = v12;
      v16 = v5;
      v17 = *(a1 + 40);
      [v6 loadAdditionalItemsIfNeededWithCount:v10 completion:v13];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) engineID];
    v6 = [*(a1 + 40) sessionID];
    v7 = *(a1 + 48);
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] loadAdditionalUpcomingItems:completion: | load additional completed [] loaded=%{BOOL}u sectionID=%{public}@", &v8, 0x26u);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __62___MPCQueueControllerBehaviorMusic_preferredUpcomingItemCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v12 = v4;
  v6 = [v4 sectionIdentifier];
  v7 = [v5 _identifierListForSection:v6];

  v8 = *(a1 + 32);
  if ((v7 != v8[17] || [v8 autoPlayEnabled] && !*(*(a1 + 32) + 104)) && objc_msgSend(v12, "shouldRequestAdditionalItemsAtTail"))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = [v12 prefetchThreshold];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    *(*(*(a1 + 40) + 8) + 24) = v11;
  }
}

void __66___MPCQueueControllerBehaviorMusic_performLoadCommand_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = [v6 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:1 debugDescription:@"Failed to convert playback queue to playback context"];

    (*(*(v8 + 48) + 16))();
  }

  else
  {
    v42 = a1;
    v10 = [*(a1 + 32) associatedParticipantIdentifier];
    [v5 setAssociatedParticipantIdentifier:v10];

    v11 = (a1 + 40);
    v38 = [*(a1 + 40) host];
    v12 = +[MPCPlaybackAccountManager sharedManager];
    v13 = [v5 userIdentity];
    v37 = [v12 accountForUserIdentity:v13];

    v40 = [v37 hashedDSID];
    v36 = [v38 eventStream];
    v51[0] = @"session-id";
    v39 = [*v11 sessionID];
    v14 = v39;
    if (!v39)
    {
      v14 = [MEMORY[0x1E695DFB0] null];
    }

    v35 = v14;
    v52[0] = v14;
    v52[1] = &unk_1F45991F0;
    v51[1] = @"behavior-type";
    v51[2] = @"account-id";
    v15 = v40;
    if (!v40)
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v34 = v15;
    v52[2] = v15;
    v51[3] = @"queue-reporting-metadata";
    v49[0] = @"queue-grouping-id";
    v16 = [v5 playActivityQueueGroupingID];
    v41 = v16;
    if (!v16)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
    }

    v33 = v16;
    v50[0] = v16;
    v49[1] = @"feature-name";
    v17 = [v5 playActivityFeatureName];
    v18 = v17;
    if (!v17)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    v32 = v17;
    v50[1] = v17;
    v49[2] = @"reco-data";
    v19 = [v5 playActivityRecommendationData];
    v20 = v19;
    if (!v19)
    {
      v19 = [MEMORY[0x1E695DFB0] null];
    }

    v31 = v19;
    v50[2] = v19;
    v49[3] = @"siri-ref-id";
    v21 = [v5 siriReferenceIdentifier];
    v22 = v21;
    if (!v21)
    {
      v22 = [MEMORY[0x1E695DFB0] null];
    }

    v50[3] = v22;
    v49[4] = @"siri-wha-metrics";
    v23 = [v5 siriWHAMetricsInfo];
    v24 = v23;
    if (!v23)
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    v50[4] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:5];
    v52[3] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
    [v36 emitEventType:@"session-will-begin" payload:v26];

    if (!v23)
    {
    }

    if (!v21)
    {
    }

    if (!v20)
    {
    }

    if (!v18)
    {
    }

    if (!v41)
    {
    }

    if (!v40)
    {
    }

    v27 = v39;
    if (!v39)
    {

      v27 = 0;
    }

    [*(v42 + 40) _emitEventsForPlaybackBehaviorChangeIfNeeded];
    v28 = [*(v42 + 40) sessionID];
    objc_initWeak(&location, *(v42 + 40));
    v29 = *(v42 + 40);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __66___MPCQueueControllerBehaviorMusic_performLoadCommand_completion___block_invoke_118;
    v43[3] = &unk_1E8232880;
    v9 = v38;
    v44 = v9;
    v30 = v28;
    v45 = v30;
    objc_copyWeak(&v47, &location);
    v46 = *(v42 + 48);
    [v29 _addPlaybackContext:v5 atPosition:2 afterContentItemID:0 sectionIdentifier:0 actions:55 completion:v43];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }
}

void __66___MPCQueueControllerBehaviorMusic_performLoadCommand_completion___block_invoke_118(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) engineID];
      v7 = *(a1 + 40);
      v8 = [v3 treeDescription];
      v17 = 138543874;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] loadWithPlaybackContext:completionHandler: | completed [first data source] error=%{public}@", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) engineID];
    v10 = *(a1 + 40);
    v17 = 138543618;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] loadWithPlaybackContext:completionHandler: | completed [first data source]", &v17, 0x16u);
  }

  v11 = [v3 msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4208] code:140];

  if (v11)
  {
    v12 = @"addPlaybackContext failed [radio server error]";
    v13 = v3;
    v14 = 9;
  }

  else
  {
    v12 = @"addPlaybackContext failed";
    v13 = v3;
    v14 = 1;
  }

  v15 = [v13 msv_errorByWrappingWithDomain:@"MPCMusicBehaviorError" code:v14 debugDescription:v12];

  if (!v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _evaluateAutoPlayStateAfterItemsChanged];
  }

  (*(*(a1 + 48) + 16))();
}

void __53___MPCQueueControllerBehaviorMusic_didConnectToHost___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 state] != 1)
  {
    v6 = *(a1 + 32);
    v7 = [v5 playbackContext];
    [v6 _emitEventsForAddingPlaybackContext:v7 sectionIdentifier:v8];
  }
}

BOOL __56___MPCQueueControllerBehaviorMusic_canLoadQueue_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:a2];
  v3 = [v2 scheme];
  v4 = v3 != 0;

  return v4;
}

@end