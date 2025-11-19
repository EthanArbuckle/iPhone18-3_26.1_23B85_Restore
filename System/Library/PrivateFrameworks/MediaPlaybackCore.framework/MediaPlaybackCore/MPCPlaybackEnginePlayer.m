@interface MPCPlaybackEnginePlayer
@end

@implementation MPCPlaybackEnginePlayer

void __90___MPCPlaybackEnginePlayer_donateMetricsForTransitionWillStartFrom_to_transitionProvided___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avPlayerItem];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 mpc_setReportingValue:v3 forKey:@"msc_tstn_style"];

  v4 = [*(a1 + 32) avPlayerItem];
  [v4 mpc_setReportingValue:&unk_1F45993E8 forKey:@"msc_tstn_itemposition"];

  v5 = [*(a1 + 40) avPlayerItem];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v5 mpc_setReportingValue:v6 forKey:@"msc_tstn_style"];

  v7 = [*(a1 + 40) avPlayerItem];
  [v7 mpc_setReportingValue:&unk_1F45993D0 forKey:@"msc_tstn_itemposition"];
}

void __54___MPCPlaybackEnginePlayer_donateMetricsToPlayerItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  v47 = [v2 avPlayerItem];

  v3 = *(a1 + 40);
  v4 = [v47 mpc_reportingIdentifier];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    [v47 mpc_setReportingValue:*(a1 + 40) forKey:@"msc_ID"];
    v5 = [*(a1 + 48) musicTotalTime];
    [v47 mpc_setReportingValue:v5 forKey:@"msc_MPP"];

    v6 = [*(a1 + 48) musicWaitTime];
    [v47 mpc_setReportingValue:v6 forKey:@"msc_MWT"];

    v7 = [*(a1 + 48) mediaPlayerTime];
    [v47 mpc_setReportingValue:v7 forKey:@"msc_MPT"];

    v8 = [*(a1 + 48) setQueueCommandSendTime];
    [v47 mpc_setReportingValue:v8 forKey:@"msc_SQ"];

    v9 = [*(a1 + 48) queueLoadWaitTime];
    [v47 mpc_setReportingValue:v9 forKey:@"msc_QL"];

    v10 = [*(a1 + 48) assetLoadWaitTime];
    [v47 mpc_setReportingValue:v10 forKey:@"msc_AL"];

    v11 = [*(a1 + 48) readyToPlayStatusWaitTime];
    [v47 mpc_setReportingValue:v11 forKey:@"msc_RTP"];

    v12 = [*(a1 + 48) rateChangeWaitTime];
    [v47 mpc_setReportingValue:v12 forKey:@"msc_RC"];

    v13 = [*(a1 + 48) firstAudioFrameWaitTime];
    [v47 mpc_setReportingValue:v13 forKey:@"msc_FAF"];

    v14 = [*(a1 + 48) playCommandWaitTime];
    [v47 mpc_setReportingValue:v14 forKey:@"msc_playCmdWait"];

    v15 = MEMORY[0x1E696AD98];
    v16 = [*(a1 + 48) eventType];
    v17 = [v15 numberWithBool:{objc_msgSend(v16, "isEqualToString:", @"FirstItem"}];
    [v47 mpc_setReportingValue:v17 forKey:@"msc_firstItem"];

    v18 = [*(a1 + 48) isFirstPlay];
    [v47 mpc_setReportingValue:v18 forKey:@"msc_firstPlay"];

    v19 = [*(a1 + 48) featureName];
    [v47 mpc_setReportingValue:v19 forKey:@"msc_featureName"];

    v20 = [*(a1 + 48) queueType];
    [v47 mpc_setReportingValue:v20 forKey:@"msc_queueType"];

    v21 = [*(a1 + 48) isShuffled];
    [v47 mpc_setReportingValue:v21 forKey:@"msc_shuffled"];

    v22 = [*(a1 + 48) isAutoPlayEnabled];
    [v47 mpc_setReportingValue:v22 forKey:@"msc_autoPlay"];

    v23 = [*(a1 + 48) isSharePlay];
    [v47 mpc_setReportingValue:v23 forKey:@"msc_sharePlay"];

    v24 = [*(a1 + 48) isRemoteSetQueue];
    [v47 mpc_setReportingValue:v24 forKey:@"msc_remoteSQ"];

    v25 = [*(a1 + 48) assetType];
    [v47 mpc_setReportingValue:v25 forKey:@"msc_asstType"];

    v26 = [*(a1 + 48) assetSource];
    [v47 mpc_setReportingValue:v26 forKey:@"msc_asstSource"];

    v27 = [*(a1 + 48) assetLocation];
    [v47 mpc_setReportingValue:v27 forKey:@"msc_asstLoc"];

    v28 = [*(a1 + 48) isDelegatedPlayback];
    [v47 mpc_setReportingValue:v28 forKey:@"msc_delegatedPB"];

    v29 = [*(a1 + 48) hasOnlinePlaybackKeys];
    [v47 mpc_setReportingValue:v29 forKey:@"msc_onlinePBkeys"];

    v30 = [*(a1 + 48) hasOfflinePlaybackKeys];
    [v47 mpc_setReportingValue:v30 forKey:@"msc_offlinePBkeys"];

    v31 = [*(a1 + 48) routeInfo];
    v32 = [v31 objectForKeyedSubscript:@"type"];
    [v47 mpc_setReportingValue:v32 forKey:@"msc_routeType"];

    v33 = [*(a1 + 48) networkType];
    [v47 mpc_setReportingValue:v33 forKey:@"msc_nwType"];

    v34 = [*(a1 + 48) isActiveAccount];
    [v47 mpc_setReportingValue:v34 forKey:@"msc_acrtiveAccount"];

    v35 = [*(a1 + 48) hasAccountInfo];
    [v47 mpc_setReportingValue:v35 forKey:@"msc_accountInfo"];

    v36 = [*(a1 + 48) isReplacingPlayback];
    [v47 mpc_setReportingValue:v36 forKey:@"msc_replacingPB"];

    v37 = [*(a1 + 48) errorResolution];
    [v47 mpc_setReportingValue:v37 forKey:@"msc_errorResAppld"];

    v38 = [*(a1 + 48) errorSignature];
    [v47 mpc_setReportingValue:v38 forKey:@"msc_errorSig"];

    v39 = [*(a1 + 48) experimentID];
    [v47 mpc_setReportingValue:v39 forKey:@"msc_experimentID"];

    v40 = [*(a1 + 48) treatmentID];
    [v47 mpc_setReportingValue:v40 forKey:@"msc_treatmentID"];

    v41 = [*(a1 + 48) endpointType];
    [v47 mpc_setReportingValue:v41 forKey:@"msc_endpointType"];

    v42 = [*(a1 + 48) seekBeforePlaying];
    [v47 mpc_setReportingValue:v42 forKey:@"msc_seek"];

    v43 = [*(a1 + 48) queueCommandType];
    [v47 mpc_setReportingValue:v43 forKey:@"msc_queueComType"];

    v44 = [*(a1 + 48) networkTime];
    [v47 mpc_setReportingValue:v44 forKey:@"msc_nwTime"];

    v45 = [*(a1 + 48) assetProtectionType];
    [v47 mpc_setReportingValue:v45 forKey:@"msc_protectionType"];

    v46 = [*(a1 + 48) storefront];
    [v47 mpc_setReportingValue:v46 forKey:@"msc_storefront"];
  }
}

void __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) playbackStackController];
  v5 = [v4 renderingMode];
  if ((v5 - 1) >= 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if ([v3 tier] == 4)
  {
    v7 = [*(a1 + 40) audioRoute];
    v8 = [v7 isSpatializationEnabled];

    if (((v6 == 0) & ~v8) != 0)
    {
      v6 = 1;
    }
  }

  if ([v3 renderingMode] != v6)
  {
    v9 = [v3 audioFormatWithRenderingMode:v6];

    v3 = v9;
  }

  v10 = [v3 tier];
  v11 = [*(a1 + 40) preferredFormat];
  v12 = [v11 tier];

  if (v10 == v12)
  {
    v13 = [v3 tier];
    v14 = [*(a1 + 40) preferredFormat];
    v15 = [v14 tier];

    if (v13 == v15)
    {
      v16 = 100;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v29 = 138543874;
    v30 = v18;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = v3;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - [AF] - Updating active format : %{public}@", &v29, 0x20u);
  }

  [*(a1 + 40) updateActiveFormat:v3 justification:v16];
  v20 = [*(a1 + 32) playbackStackController];
  [v20 activeFormatDidChangeFor:*(a1 + 56)];

  v21 = [*(a1 + 40) contentItemID];
  v22 = [*(a1 + 32) currentItem];
  v23 = [v22 contentItemID];
  v24 = v23;
  if (v21 == v23)
  {
  }

  else
  {
    v25 = [v21 isEqual:v23];

    if ((v25 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v26 = [*(a1 + 32) playbackEngine];
  v27 = [v26 eventObserver];
  v28 = [v3 stableVariantID];
  [v27 engine:v26 didChangeCurrentItemVariantID:v28];

LABEL_21:
}

void __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v13 = *(a1 + 56);
    v12 = v5;
    msv_dispatch_on_main_queue();

    v8 = v13;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Failed to load track audio format for stableVariantID=%{public}@ error=%{public}@", buf, 0x2Au);
    }
  }

LABEL_4:
}

void __66___MPCPlaybackEnginePlayer_itemDidBecomeCurrent_source_timeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "PodcastsBehavior");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "Failed to set rate from user defaults: %@", &v4, 0xCu);
    }
  }
}

void __61___MPCPlaybackEnginePlayer_jumpToTime_identifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[7];
    v9 = 138544130;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Set current time command %{public}@ completed - time=%f - error=%{public}@", &v9, 0x2Au);
  }

  (*(a1[6] + 16))();
}

void __58___MPCPlaybackEnginePlayer_setRate_identifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 64);
    v12 = 138544130;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Set rate command %{public}@ completed - rate=%f - error=%{public}@", &v12, 0x2Au);
  }

  v10 = [WeakRetained currentItem];
  LODWORD(v11) = *(a1 + 64);
  [v10 _setCurrentPlaybackRate:v11];

  (*(*(a1 + 48) + 16))();
}

void __65___MPCPlaybackEnginePlayer_endScanningWithIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-End seek command %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Pause command %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Play command %{public}@ completed - error=%{public}@", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (v4)
  {
    [WeakRetained endPlaybackStartCriticalSection];
  }

  else
  {
    [WeakRetained extendLifetimeUntilFirstAudioFrame:*(a1 + 48) isSiriSetQueue:0];
  }

  (*(*(a1 + 56) + 16))();
}

void __77___MPCPlaybackEnginePlayer_pauseForLeasePreventionWithIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Pause for lease prevention %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __80___MPCPlaybackEnginePlayer_pauseForSleepTimerWithFadeout_identifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Pause command %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __67___MPCPlaybackEnginePlayer_pauseWithFadeout_identifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Pause command %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __59___MPCPlaybackEnginePlayer_pauseWithIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Pause command %{public}@ completed - error=%{public}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __63___MPCPlaybackEnginePlayer_playWithRate_identifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Play command %{public}@ completed - error=%{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (v4)
  {
    [WeakRetained endPlaybackStartCriticalSection];
  }

  else
  {
    [WeakRetained extendLifetimeUntilFirstAudioFrame:*(a1 + 48) isSiriSetQueue:0];
  }
}

void __55___MPCPlaybackEnginePlayer_becomeActiveWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 40);
    v17 = 138543874;
    v18 = v11;
    v19 = 2048;
    v20 = WeakRetained;
    v21 = 2114;
    v22 = v5;
    v12 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - Set audio session active failed - error: %{public}@";
    v13 = v9;
    v14 = 32;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 40);
    v17 = 138543618;
    v18 = v15;
    v19 = 2048;
    v20 = WeakRetained;
    v12 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - Set audio session active succeeded";
    v13 = v9;
    v14 = 22;
  }

  _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
LABEL_7:

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v5, -v7);
  }
}

void __63___MPCPlaybackEnginePlayer_finalizeStateRestoreWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v10 = 138543874;
        v11 = v6;
        v12 = 2048;
        v13 = WeakRetained;
        v14 = 2114;
        v15 = v3;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlaybackEngineImplementation: %p - loadSessionWithQueueController - Load session failed - error: %{public}@", &v10, 0x20u);
      }

      v7 = *(*(a1 + 40) + 16);
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:@"Playback engine implementation no longer exist"];
    (*(v8 + 16))(v8, v9);
  }
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:0 debugDescription:@"PlaybackEngine finalizeSetQueue does not call completion"];
  (*(v2 + 16))(v2, v3);

  v4 = MEMORY[0x1E69B13D8];
  v5 = *MEMORY[0x1E69B1340];
  v6 = [*(a1 + 32) description];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 snapshotWithDomain:v5 type:@"Bug" subType:@"finalizeSetQueue" context:@"completion not called" triggerThresholdValues:0 events:v7 completion:0];
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = MEMORY[0x1E69B13D8];
    v5 = *MEMORY[0x1E69B1340];
    v6 = [*(a1 + 40) description];
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v4 snapshotWithDomain:v5 type:@"Bug" subType:@"finalizeSetQueue" context:@"completion called multiple times" triggerThresholdValues:0 events:v7 completion:0];
  }
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543874;
      v14 = v7;
      v15 = 2048;
      v16 = WeakRetained;
      v17 = 2114;
      v18 = v3;
      v8 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - async performSetQueue failed - error: %{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v12;
    v15 = 2048;
    v16 = WeakRetained;
    v8 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - async performSetQueue completed";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 22;
    goto LABEL_6;
  }
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_30(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    v7 = [v3 playbackStackController];
    v8 = [v7 modeDescription];
    *buf = 138544386;
    v25 = v4;
    v26 = 2048;
    v27 = v3;
    v28 = 2114;
    v29 = v5;
    v30 = 1024;
    v31 = v6;
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - calling setQueueWithInitialItem on playback stack - item: %{public}@ - play: %{BOOL}u - mode: %{public}@", buf, 0x30u);
  }

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v10 = os_signpost_id_generate(v9);

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v12 = v11;
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(a1 + 72);
    *buf = 67109120;
    LODWORD(v25) = v13;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "InitialItem", "shouldPlay=%{BOOL}u", buf, 8u);
  }

  objc_initWeak(buf, *(a1 + 40));
  v14 = [*(a1 + 40) playbackStackController];
  v15 = *(a1 + 72);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_31;
  v18[3] = &unk_1E8234BF0;
  v21[1] = v10;
  objc_copyWeak(v21, buf);
  v20 = *(a1 + 64);
  v22 = *(a1 + 73);
  v19 = *(a1 + 32);
  v23 = *(a1 + 72);
  [v14 setQueueWithInitialItem:v16 andPlay:v15 & 1 identifier:v17 completion:v18];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
}

uint64_t __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_36(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PrepareForRate", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "PodcastsBehavior");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "Failed to set rate from user defaults: %@", &v4, 0xCu);
    }
  }
}

void __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_31(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v6, OS_SIGNPOST_INTERVAL_END, v7, "InitialItem", " enableTelemetry=YES ", &v20, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = *(a1 + 40);
  if (!WeakRetained)
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:@"Playback engine implementation no longer exist"];
    (*(v9 + 16))(v9, v10);

    goto LABEL_9;
  }

  (*(v9 + 16))(*(a1 + 40), v4);
  if ([WeakRetained isInPlaybackStartCriticalSection])
  {
    if (v4)
    {
      goto LABEL_7;
    }

    if (*(a1 + 64) == 1)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v20 = 138543618;
        v21 = v12;
        v22 = 2048;
        v23 = WeakRetained;
        v13 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - Keeping Playback Start critical section assertion alive until first audio frame for siri set queue";
LABEL_13:
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, v13, &v20, 0x16u);
      }
    }

    else
    {
      if (*(a1 + 65) != 1)
      {
        goto LABEL_7;
      }

      v14 = [WeakRetained playbackStackController];
      [v14 effectiveRate];
      if (v15 != 0.0)
      {

        goto LABEL_7;
      }

      v16 = [WeakRetained playbackStackController];
      [v16 targetRate];
      v18 = v17;

      if (v18 <= 0.0)
      {
LABEL_7:
        [WeakRetained endPlaybackStartCriticalSection];
        goto LABEL_9;
      }

      v11 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = 138543618;
        v21 = v19;
        v22 = 2048;
        v23 = WeakRetained;
        v13 = "[%{public}@]-MPCPlaybackEngineImplementation: %p - Keeping Playback Start critical section assertion alive until first audio frame for set queue with immediate play";
        goto LABEL_13;
      }
    }
  }

LABEL_9:
}

uint64_t __51___MPCPlaybackEnginePlayer_initWithPlaybackEngine___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v4, &location);
  v2 = MSVLogAddStateHandler();
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
  return v2;
}

uint64_t __51___MPCPlaybackEnginePlayer_initWithPlaybackEngine___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end