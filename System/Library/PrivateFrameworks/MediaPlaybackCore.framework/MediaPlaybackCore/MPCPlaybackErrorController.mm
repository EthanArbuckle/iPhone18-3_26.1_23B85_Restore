@interface MPCPlaybackErrorController
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlaybackErrorController)initWithPlaybackEngine:(id)a3 translator:(id)a4;
- (MPCPlaybackErrorControllerDelegate)delegate;
- (int64_t)_resolutionForPlaybackError:(id)a3 item:(id)a4;
- (void)_notifyObserversForError:(id)a3 item:(id)a4;
- (void)_playbackFailedWithError:(id)a3 item:(id)a4 canResolve:(BOOL)a5 proposedResolution:(int64_t)a6 completion:(id)a7;
- (void)reportCriticalError:(id)a3 forItem:(id)a4;
- (void)resetWithReason:(id)a3;
- (void)resolveError:(id)a3 forItem:(id)a4 completion:(id)a5;
- (void)setItemsHavePlayed:(BOOL)a3;
@end

@implementation MPCPlaybackErrorController

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (MPCPlaybackErrorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_notifyObserversForError:(id)a3 item:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCPlaybackErrorController *)self playbackEngine];
  v9 = [v8 delegate];
  v10 = [v6 msv_errorByUnwrappingDomain:@"MPCEnginePlayerError" code:16];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];

    if (v12)
    {
      v13 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v71 = v11;
      if ([v13 preferredMusicLowBandwidthResolution] < 1)
      {
        v15 = 0;
      }

      else
      {
        v14 = [MEMORY[0x1E69704E0] sharedCloudController];
        v15 = [v14 isCellularDataRestrictedForMusic] ^ 1;
      }

      v16 = [MEMORY[0x1E69E4428] sharedMonitor];
      v17 = [v16 networkType];

      IsCellular = ICEnvironmentNetworkTypeIsCellular();
      v19 = [(MPCPlaybackErrorController *)self playbackEngine];
      v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v70 = v8;
      if ((v15 & 1) != 0 || !IsCellular)
      {
        if (v21)
        {
          v25 = [v19 engineID];
          *buf = 138544130;
          v76 = v25;
          v77 = 2048;
          v78 = self;
          v79 = 2114;
          v80 = v19;
          v81 = 2114;
          v82 = v6;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Transforming error to network unavailable instead of original: %{public}@", buf, 0x2Au);
        }

        v23 = @"Network Unavailable";
        v24 = 11;
      }

      else
      {
        if (v21)
        {
          v22 = [v19 engineID];
          *buf = 138544130;
          v76 = v22;
          v77 = 2048;
          v78 = self;
          v79 = 2114;
          v80 = v19;
          v81 = 2114;
          v82 = v6;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Transforming error to cellular restricted error instead of original: %{public}@", buf, 0x2Au);
        }

        v23 = @"Cellular Restricted";
        v24 = 10;
      }

      v73[0] = @"ICEnvironmentNetworkType";
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
      v73[1] = @"isMusicCellularStreamingAllowed";
      v74[0] = v26;
      v27 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      v74[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      v29 = [v6 msv_errorByWrappingWithDomain:@"MPCError" code:v24 userInfo:v28 debugDescription:{@"playback request failed with reason: %@", v23}];

      v6 = v29;
      v8 = v70;
      v11 = v71;
    }
  }

  if (v7)
  {
    v30 = [(MPCPlaybackErrorController *)self delegate];
    v31 = [v30 isUserSelectedItem:v7];

    v32 = objc_opt_respondsToSelector();
    if ((v32 & 1) != 0 && (v31 & 1) == 0)
    {
      if ([v6 mpc_isQueueLoadingFailure])
      {
        goto LABEL_21;
      }

      v32 = [v6 mpc_isSubscriptionRequiredError];
    }

    if (v32)
    {
LABEL_21:
      if (v31)
      {
        if (([v6 mpc_isFileDoesNotExistError] & 1) != 0 || objc_msgSend(v6, "mpc_isNoPermissionsToReadFileError"))
        {
          v72 = v11;
          v33 = [v6 userInfo];
          v34 = v7;
          v35 = [v33 mutableCopy];

          v36 = [v8 mediaRemotePublisher];
          v68 = v34;
          v37 = [v36 getQOSDialogForError:v6 withItem:v34];

          v67 = v37;
          [v35 addEntriesFromDictionary:v37];
          v38 = MEMORY[0x1E696ABC0];
          v39 = [v6 domain];
          v40 = [v6 code];
          v41 = [v6 underlyingErrors];
          v42 = [v6 description];
          v69 = v35;
          v43 = [v38 msv_errorWithDomain:v39 code:v40 underlyingErrors:v41 userInfo:v35 debugDescription:{@"%@", v42}];

          v44 = v43;
          v45 = [(MPCPlaybackErrorController *)self playbackEngine];
          v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = [v45 engineID];
            *buf = 138544130;
            v76 = v47;
            v77 = 2048;
            v78 = self;
            v79 = 2114;
            v80 = v45;
            v81 = 2114;
            v82 = v44;
            _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [File does not exist] error=%{public}@", buf, 0x2Au);
          }

          v11 = v72;
          v7 = v68;
          v48 = v69;
          v49 = v67;
          goto LABEL_51;
        }

        v48 = [(MPCPlaybackErrorController *)self playbackEngine];
        v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v65 = [v48 engineID];
          *buf = 138544130;
          v76 = v65;
          v77 = 2048;
          v78 = self;
          v79 = 2114;
          v80 = v48;
          v81 = 2114;
          v82 = v6;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Specified first item failure] error=%{public}@";
          goto LABEL_49;
        }
      }

      else
      {
        if (![v6 mpc_isQueueLoadingFailure])
        {
          if (![v6 mpc_isSubscriptionRequiredError])
          {
LABEL_52:
            v53 = v9;
            v54 = v8;
            v55 = v7;
LABEL_53:
            [v53 engine:v54 didFailToPlayFirstItem:v55 withError:v6];
            goto LABEL_54;
          }

          v48 = [(MPCPlaybackErrorController *)self playbackEngine];
          v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          v65 = [v48 engineID];
          *buf = 138544130;
          v76 = v65;
          v77 = 2048;
          v78 = self;
          v79 = 2114;
          v80 = v48;
          v81 = 2114;
          v82 = v6;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Subscription required] error=%{public}@";
          goto LABEL_49;
        }

        v48 = [(MPCPlaybackErrorController *)self playbackEngine];
        v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v65 = [v48 engineID];
          *buf = 138544130;
          v76 = v65;
          v77 = 2048;
          v78 = self;
          v79 = 2114;
          v80 = v48;
          v81 = 2114;
          v82 = v6;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Entire queue loading failure] error=%{public}@";
LABEL_49:
          _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_ERROR, v66, buf, 0x2Au);
        }
      }

LABEL_50:
      v44 = v6;
LABEL_51:

      v6 = v44;
      goto LABEL_52;
    }

    if (objc_opt_respondsToSelector())
    {
      v62 = [(MPCPlaybackErrorController *)self playbackEngine];
      v63 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = [v62 engineID];
        *buf = 138544130;
        v76 = v64;
        v77 = 2048;
        v78 = self;
        v79 = 2114;
        v80 = v62;
        v81 = 2114;
        v82 = v6;
        _os_log_impl(&dword_1C5C61000, v63, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Queue item failure] error=%{public}@", buf, 0x2Au);
      }

      v59 = v9;
      v60 = v8;
      v61 = v7;
LABEL_40:
      [v59 engine:v60 didFailToPlayItem:v61 withError:v6];
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 mpc_isQueueLoadingFailure])
    {
      v50 = [(MPCPlaybackErrorController *)self playbackEngine];
      v51 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = [v50 engineID];
        *buf = 138544130;
        v76 = v52;
        v77 = 2048;
        v78 = self;
        v79 = 2114;
        v80 = v50;
        v81 = 2114;
        v82 = v6;
        _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Failed to queue any items] error=%{public}@", buf, 0x2Au);
      }

      v53 = v9;
      v54 = v8;
      v55 = 0;
      goto LABEL_53;
    }

    if (objc_opt_respondsToSelector())
    {
      v56 = [(MPCPlaybackErrorController *)self playbackEngine];
      v57 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = [v56 engineID];
        *buf = 138544130;
        v76 = v58;
        v77 = 2048;
        v78 = self;
        v79 = 2114;
        v80 = v56;
        v81 = 2114;
        v82 = v6;
        _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Queue item failure - nil item] error=%{public}@", buf, 0x2Au);
      }

      v59 = v9;
      v60 = v8;
      v61 = 0;
      goto LABEL_40;
    }
  }

LABEL_54:
}

- (int64_t)_resolutionForPlaybackError:(id)a3 item:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCPlaybackErrorController *)self playbackEngine];
  if (!v8)
  {
    v12 = 1;
    goto LABEL_25;
  }

  if (!v7)
  {
    v13 = [(MPCPlaybackErrorController *)self playbackEngine];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 engineID];
      v26 = 138544130;
      v27 = v15;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - nil item received [Queue failure] error=%{public}@", &v26, 0x2Au);
    }

    v12 = 0;
    goto LABEL_24;
  }

  if ([(MPCPlaybackErrorController *)self itemsHavePlayed])
  {
    v9 = [(MPCPlaybackErrorController *)self playbackEngine];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 engineID];
      v26 = 138543874;
      v27 = v11;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Playback has succeeded for at least one item [Ignoring queue failure]", &v26, 0x20u);
    }
  }

  else
  {
    v16 = [(MPCPlaybackErrorController *)v8 queueController];
    v17 = [v7 contentItemID];
    v9 = [v16 contentItemIDWithoutRepeatIteration:v17];

    v18 = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
    LODWORD(v17) = [v18 containsObject:v9];

    if (v17)
    {
      v10 = [(MPCPlaybackErrorController *)self playbackEngine];
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v10 engineID];
        v26 = 138543874;
        v27 = v20;
        v28 = 2048;
        v29 = self;
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Ending playback [Entire queue failure]", &v26, 0x20u);
      }

      v12 = 1;
      goto LABEL_18;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      v27 = self;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "MPCErrorControllerImplementation %p <%{public}@> - Playback has not yet succeeded [Adding to queue failure set]", &v26, 0x16u);
    }

    v10 = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
    [v10 addObject:v9];
  }

  v12 = 0;
LABEL_18:

  v22 = [(MPCPlaybackErrorController *)self delegate];
  if ([v22 isUserSelectedItem:v7])
  {

LABEL_21:
    v13 = [(MPCPlaybackErrorController *)self playbackEngine];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = [v13 engineID];
      v26 = 138544130;
      v27 = v24;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Stopping playback for a first item or unrecoverable asset loading error. error=%{public}@", &v26, 0x2Au);
    }

    v12 = 1;
LABEL_24:

    goto LABEL_25;
  }

  v23 = [v6 mpc_isQueueLoadingFailure];

  if (v23)
  {
    goto LABEL_21;
  }

LABEL_25:

  return v12;
}

- (void)_playbackFailedWithError:(id)a3 item:(id)a4 canResolve:(BOOL)a5 proposedResolution:(int64_t)a6 completion:(id)a7
{
  v9 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v13 && v9 && ([v13 hasPerformedErrorResolution] & 1) == 0)
  {
    v24 = [(MPCPlaybackErrorController *)self playbackEngine];
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 engineID];
      *buf = 138544386;
      v34 = v26;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Attempting to recover from error [using item resolution] - item:%{public}@ - error:%{public}@", buf, 0x34u);
    }

    [(MPCPlaybackErrorController *)self setLastItemUsedForErrorResolution:v13];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __101__MPCPlaybackErrorController__playbackFailedWithError_item_canResolve_proposedResolution_completion___block_invoke;
    v27[3] = &unk_1E82350D0;
    v32 = a6;
    v28 = v13;
    v29 = self;
    v30 = v12;
    v31 = v14;
    [v28 resolvePlaybackError:v30 withCompletion:v27];
  }

  else
  {
    v15 = [(MPCPlaybackErrorController *)self playbackEngine];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 engineID];
      *buf = 138544386;
      v34 = v17;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = v15;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Unable resolve error [determining final resolution] - item:%{public}@ - error:%{public}@", buf, 0x34u);
    }

    v18 = [(MPCPlaybackErrorController *)self _resolutionForPlaybackError:v12 item:v13];
    if (a6 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = [(MPCPlaybackErrorController *)self playbackEngine];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v20 engineID];
      v23 = [MFDescription forErrorResolution:v19];
      *buf = 138544642;
      v34 = v22;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = v20;
      v39 = 2114;
      v40 = v23;
      v41 = 2114;
      v42 = v13;
      v43 = 2114;
      v44 = v12;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Final error resolution reached [%{public}@] - item:%{public}@ - error:%{public}@", buf, 0x3Eu);
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && v19 == 1)
    {
      [(MPCPlaybackErrorController *)self _notifyObserversForError:v12 item:v13];
    }

    (*(v14 + 2))(v14, v19);
  }
}

void __101__MPCPlaybackErrorController__playbackFailedWithError_item_canResolve_proposedResolution_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setHasPerformedErrorResolution:1];
  if (a2 == 2)
  {
LABEL_4:
    v6 = *(a1 + 64) == 1;
    v7 = [*(a1 + 40) playbackEngine];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 engineID];
      v10 = *(a1 + 40);
      v11 = [MFDescription forErrorResolution:v6];
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v21 = 138544898;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      v25 = 2114;
      v26 = v7;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Item error resolution failed [proposed resolution: %{public}@]- item:%{public}@ - error: %{public}@ - resolutionError:%{public}@", &v21, 0x48u);
    }

    [*(a1 + 40) _playbackFailedWithError:*(a1 + 48) item:*(a1 + 32) canResolve:0 proposedResolution:v6 completion:*(a1 + 56)];
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v14 = [*(a1 + 40) playbackEngine];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 engineID];
    v17 = *(a1 + 40);
    v18 = [MFDescription forErrorResolution:2];
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = 138544898;
    v22 = v16;
    v23 = 2048;
    v24 = v17;
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v5;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Item error resolution succeeded [proposed resolution: %{public}@] - item:%{public}@ - error:%{public}@ - resolutionError:%{public}@", &v21, 0x48u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_10:
}

- (void)reportCriticalError:(id)a3 forItem:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = [(MPCPlaybackErrorController *)self playbackEngine];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 engineID];
      v21 = 138544386;
      v22 = v10;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = v8;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Processing fatal playback error - item:%{public}@ - error:%{public}@", &v21, 0x34u);
    }

    v11 = [(MPCPlaybackErrorController *)self translator];
    v12 = [v11 MPAVItemForMFPlayerItem:v7];

    v13 = v6;
    v14 = [v13 domain];
    v15 = [v14 isEqualToString:@"MPCEnginePlayerError"];

    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = [v13 code];
    if ((v16 - 5) >= 3)
    {
      if (v16 != 9)
      {
LABEL_10:
        [(MPCPlaybackErrorController *)self _notifyObserversForError:v13 item:v12];

        goto LABEL_11;
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = @"Shared listening playback failure";
      v19 = 2200;
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = @"SetQueue failed to load any assets";
      v19 = 62;
    }

    v20 = [v17 msv_errorWithDomain:@"MPCError" code:v19 underlyingError:v13 debugDescription:v18];

    v13 = v20;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)resolveError:(id)a3 forItem:(id)a4 completion:(id)a5
{
  v109 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MPCPlaybackErrorController *)self playbackEngine];
  v13 = [(MPCPlaybackErrorController *)self playbackEngine];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [v13 engineID];
    *buf = 138544386;
    v100 = v15;
    v101 = 2048;
    v102 = self;
    v103 = 2114;
    v104 = v13;
    v105 = 2114;
    v106 = v10;
    v107 = 2114;
    *v108 = v9;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Starting error resolution - item:%{public}@ - error:%{public}@", buf, 0x34u);
  }

  if ([(MPCPlaybackErrorController *)self contiguousFailSilentlyResolutionCount]< 250)
  {
    v19 = [(MPCPlaybackErrorController *)self translator];
    v20 = [v19 MPAVItemForMFPlayerItem:v10];

    v21 = [v9 userInfo];
    v22 = *MEMORY[0x1E696AA08];
    v85 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v23 = [v20 playbackError];
    v87 = v23;
    if (v23)
    {
      v24 = [v23 userInfo];
      v84 = [v24 objectForKeyedSubscript:v22];
    }

    else
    {
      v84 = 0;
    }

    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__15746;
    v97 = __Block_byref_object_dispose__15747;
    v25 = v9;
    v98 = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__MPCPlaybackErrorController_resolveError_forItem_completion___block_invoke;
    aBlock[3] = &unk_1E82350A8;
    v91 = v11;
    aBlock[4] = self;
    v83 = v20;
    v89 = v83;
    v92 = &v93;
    v26 = v12;
    v90 = v26;
    v86 = _Block_copy(aBlock);
    if (([v25 mpc_isAirplayDeviceBusyError] & 1) != 0 || (objc_msgSend(v85, "mpc_isAirplayDeviceBusyError") & 1) != 0 || objc_msgSend(v84, "mpc_isAirplayDeviceBusyError"))
    {
      v27 = [(MPCPlaybackErrorController *)self playbackEngine];
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v27 engineID];
        v30 = [MFDescription forErrorResolution:1];
        *buf = 138544130;
        v100 = v29;
        v101 = 2048;
        v102 = self;
        v103 = 2114;
        v104 = v27;
        v105 = 2114;
        v106 = v30;
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable AirPlay failure [airPlayVideoEnded] - Actual resolution:%{public}@", buf, 0x2Au);
      }

      v86[2](v86, 1);
      v31 = [(MPCPlaybackErrorController *)self delegate];
      [v31 pickBestDeviceRoute];

      goto LABEL_16;
    }

    v32 = [v26 player];
    if ([v32 state] == 1)
    {
      v80 = 0;
    }

    else
    {
      v33 = [v26 player];
      v80 = [v33 state] != 6;
    }

    if (([v25 mpc_isRentalContentRequiresDownloadError] & 1) != 0 || (objc_msgSend(v85, "mpc_isRentalContentRequiresDownloadError") & 1) != 0 || objc_msgSend(v84, "mpc_isRentalContentRequiresDownloadError"))
    {
      v34 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E696F790] code:8 underlyingError:v25 debugDescription:@"Unrecoverable AirPlay failure [rental requires download]"];
      v35 = v94[5];
      v94[5] = v34;

      v36 = [(MPCPlaybackErrorController *)self playbackEngine];
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v81 = v36;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [v36 engineID];
        v39 = [MFDescription forErrorResolution:1];
        v40 = v94[5];
        *buf = 138544642;
        v100 = v38;
        v101 = 2048;
        v102 = self;
        v103 = 2114;
        v104 = v36;
        v105 = 2114;
        v106 = v39;
        v107 = 1024;
        *v108 = 0;
        *&v108[4] = 2114;
        *&v108[6] = v40;
        _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable AirPlay failure [rental requires download] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
      }
    }

    else
    {
      if (([v25 mpc_isAirplayStreamingNotSupportedError] & 1) != 0 || (objc_msgSend(v85, "mpc_isAirplayStreamingNotSupportedError") & 1) != 0 || objc_msgSend(v84, "mpc_isAirplayStreamingNotSupportedError"))
      {
        if (v25)
        {
          v43 = v25;
        }

        else
        {
          v43 = v87;
        }

        objc_storeStrong(v94 + 5, v43);
        v44 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        v81 = v44;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v44 engineID];
          v46 = [MFDescription forErrorResolution:0];
          v47 = v94[5];
          *buf = 138544642;
          v100 = v45;
          v101 = 2048;
          v102 = self;
          v103 = 2114;
          v104 = v44;
          v105 = 2114;
          v106 = v46;
          v107 = 1024;
          *v108 = 1;
          *&v108[4] = 2114;
          *&v108[6] = v47;
          _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Potentialy recoverable AirPlay failure [streaming not supported on device] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
        }

        v42 = 0;
        v41 = 1;
        goto LABEL_27;
      }

      if ([v25 mpc_isResourceUnavailableError] && objc_msgSend(v10, "isAssetLoaded") && (objc_msgSend(v10, "avPlayerItem"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "errorLog"), v49 = objc_claimAutoreleasedReturnValue(), v50 = v49 == 0, v49, v48, !v50))
      {
        objc_storeStrong(v94 + 5, a3);
        v51 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        v81 = v51;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v52 = [v51 engineID];
          v53 = [MFDescription forErrorResolution:1];
          *buf = 138544130;
          v100 = v52;
          v101 = 2048;
          v102 = self;
          v103 = 2114;
          v104 = v51;
          v105 = 2114;
          v106 = v53;
          _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable playback failure [resource unavailable] - Actual resolution:%{public}@", buf, 0x2Au);
        }
      }

      else if (v80 | (([v25 mpc_isLeaseTakenError] & 1) == 0))
      {
        if (-[MPCPlaybackErrorController itemsHavePlayed](self, "itemsHavePlayed") || ![v25 mpc_isSubscriptionRequiredError])
        {
          if ([v25 mpc_isKeyServerNoOfflineSlotError])
          {
            objc_storeStrong(v94 + 5, a3);
            v60 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            v81 = v60;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v61 = [v60 engineID];
              v62 = [MFDescription forErrorResolution:1];
              v63 = v94[5];
              *buf = 138544642;
              v100 = v61;
              v101 = 2048;
              v102 = self;
              v103 = 2114;
              v104 = v60;
              v105 = 2114;
              v106 = v62;
              v107 = 1024;
              *v108 = 0;
              *&v108[4] = 2114;
              *&v108[6] = v63;
              _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable failure [no offline slot] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
            }
          }

          else if ([v25 mpc_isStreamingSlotError])
          {
            objc_storeStrong(v94 + 5, a3);
            v81 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v64 = [v81 engineID];
              v65 = [MFDescription forErrorResolution:1];
              v66 = v94[5];
              *buf = 138544642;
              v100 = v64;
              v101 = 2048;
              v102 = self;
              v103 = 2114;
              v104 = v81;
              v105 = 2114;
              v106 = v65;
              v107 = 1024;
              *v108 = 0;
              *&v108[4] = 2114;
              *&v108[6] = v66;
              _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable failure [streaming slot error] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
            }
          }

          else
          {
            v67 = [v25 mpc_isUnrecoverableAssetLoadingError];
            objc_storeStrong(v94 + 5, a3);
            if (!v67)
            {
              v71 = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
              if (v71)
              {
                v82 = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
                if (v82)
                {
                  v72 = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
                  v73 = [v72 contentItemID];
                  v74 = [v83 contentItemID];
                  v79 = [v73 isEqualToString:v74];

                  v41 = v79 ^ 1u;
                }

                else
                {
                  v41 = 0;
                }
              }

              else
              {
                v41 = 1;
              }

              v81 = [(MPCPlaybackErrorController *)self playbackEngine];
              v75 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = [v81 engineID];
                v77 = [MFDescription forErrorResolution:0];
                v78 = v94[5];
                *buf = 138544642;
                v100 = v76;
                v101 = 2048;
                v102 = self;
                v103 = 2114;
                v104 = v81;
                v105 = 2114;
                v106 = v77;
                v107 = 1024;
                *v108 = v41;
                *&v108[4] = 2114;
                *&v108[6] = v78;
                _os_log_impl(&dword_1C5C61000, v75, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Potentialy recoverable failure [general error] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
              }

              v42 = 0;
              v37 = v75;
              goto LABEL_27;
            }

            v81 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v68 = [v81 engineID];
              v69 = [MFDescription forErrorResolution:1];
              v70 = v94[5];
              *buf = 138544642;
              v100 = v68;
              v101 = 2048;
              v102 = self;
              v103 = 2114;
              v104 = v81;
              v105 = 2114;
              v106 = v69;
              v107 = 1024;
              *v108 = 0;
              *&v108[4] = 2114;
              *&v108[6] = v70;
              _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable failure [asset loading error] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
            }
          }
        }

        else
        {
          objc_storeStrong(v94 + 5, a3);
          v81 = [(MPCPlaybackErrorController *)self playbackEngine];
          v37 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v54 = [v81 engineID];
            v55 = [MFDescription forErrorResolution:1];
            v56 = v94[5];
            *buf = 138544642;
            v100 = v54;
            v101 = 2048;
            v102 = self;
            v103 = 2114;
            v104 = v81;
            v105 = 2114;
            v106 = v55;
            v107 = 1024;
            *v108 = 0;
            *&v108[4] = 2114;
            *&v108[6] = v56;
            _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable failure [subscription required for playback] - Proposed resolution:%{public}@ - canResolve:%{BOOL}u - errorForResolution:%{public}@", buf, 0x3Au);
          }
        }
      }

      else
      {
        objc_storeStrong(v94 + 5, a3);
        v57 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        v81 = v57;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v58 = [v57 engineID];
          v59 = [MFDescription forErrorResolution:1];
          *buf = 138544130;
          v100 = v58;
          v101 = 2048;
          v102 = self;
          v103 = 2114;
          v104 = v57;
          v105 = 2114;
          v106 = v59;
          _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable playback failure [lease error while paused or interrupted] - Actual resolution:%{public}@", buf, 0x2Au);
        }
      }
    }

    v41 = 0;
    v42 = 1;
LABEL_27:

    [(MPCPlaybackErrorController *)self _playbackFailedWithError:v94[5] item:v83 canResolve:v41 proposedResolution:v42 completion:v86];
LABEL_16:

    _Block_object_dispose(&v93, 8);
    goto LABEL_17;
  }

  [(MPCPlaybackErrorController *)self setContiguousFailSilentlyResolutionCount:0];
  v16 = [(MPCPlaybackErrorController *)self playbackEngine];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v16 engineID];
    *buf = 138544386;
    v100 = v18;
    v101 = 2048;
    v102 = self;
    v103 = 2114;
    v104 = v16;
    v105 = 2114;
    v106 = v10;
    v107 = 2114;
    *v108 = v9;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Contiguous playback failures exceeded the limit - item:%{public}@ - error:%{public}@", buf, 0x34u);
  }

  (*(v11 + 2))(v11, 1);
LABEL_17:
}

void __62__MPCPlaybackErrorController_resolveError_forItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPCPlaybackErrorController_resolveError_forItem_completion___block_invoke_2;
  block[3] = &unk_1E8235068;
  v18 = *(a1 + 56);
  v19 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = *(a1 + 32);
  if (a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) contiguousFailSilentlyResolutionCount] + 1;
  }

  [v4 setContiguousFailSilentlyResolutionCount:v5];
  v6 = [*(a1 + 40) queueSectionID];
  v7 = [*(a1 + 40) queueItemID];
  v8 = v7;
  if (v6 && v7)
  {
    v22[0] = @"queue-section-id";
    v22[1] = @"queue-item-id";
    v23[0] = v6;
    v23[1] = v7;
    v22[2] = @"error-for-resolution";
    v23[2] = *(*(*(a1 + 64) + 8) + 40);
    v22[3] = @"resolution-type";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v23[3] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v23;
    v12 = v22;
    v13 = 4;
  }

  else
  {
    v14 = *(*(*(a1 + 64) + 8) + 40);
    v20[0] = @"error-for-resolution";
    v20[1] = @"resolution-type";
    v21[0] = v14;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v21[1] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v21;
    v12 = v20;
    v13 = 2;
  }

  v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];

  v16 = [*(a1 + 48) eventStream];
  [v16 emitEventType:@"error-resolution" payload:v15];
}

- (void)resetWithReason:(id)a3
{
  [(MPCPlaybackErrorController *)self setItemsHavePlayed:0];
  [(MPCPlaybackErrorController *)self setLastItemUsedForErrorResolution:0];
  v4 = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
  [v4 removeAllObjects];

  [(MPCPlaybackErrorController *)self setContiguousFailSilentlyResolutionCount:0];
}

- (void)setItemsHavePlayed:(BOOL)a3
{
  self->_itemsHavePlayed = a3;
  if (a3)
  {
    [(MPCPlaybackErrorController *)self setContiguousFailSilentlyResolutionCount:0];
  }
}

- (MPCPlaybackErrorController)initWithPlaybackEngine:(id)a3 translator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MPCPlaybackErrorController;
  v8 = [(MPCPlaybackErrorController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, v6);
    objc_storeStrong(&v9->_translator, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    failedItemsIdentifiers = v9->_failedItemsIdentifiers;
    v9->_failedItemsIdentifiers = v10;
  }

  return v9;
}

@end