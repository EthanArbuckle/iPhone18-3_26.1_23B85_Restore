@interface MPCPlaybackErrorController
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlaybackErrorController)initWithPlaybackEngine:(id)engine translator:(id)translator;
- (MPCPlaybackErrorControllerDelegate)delegate;
- (int64_t)_resolutionForPlaybackError:(id)error item:(id)item;
- (void)_notifyObserversForError:(id)error item:(id)item;
- (void)_playbackFailedWithError:(id)error item:(id)item canResolve:(BOOL)resolve proposedResolution:(int64_t)resolution completion:(id)completion;
- (void)reportCriticalError:(id)error forItem:(id)item;
- (void)resetWithReason:(id)reason;
- (void)resolveError:(id)error forItem:(id)item completion:(id)completion;
- (void)setItemsHavePlayed:(BOOL)played;
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

- (void)_notifyObserversForError:(id)error item:(id)item
{
  v83 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemCopy = item;
  playbackEngine = [(MPCPlaybackErrorController *)self playbackEngine];
  delegate = [playbackEngine delegate];
  v10 = [errorCopy msv_errorByUnwrappingDomain:@"MPCEnginePlayerError" code:16];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];

    if (v12)
    {
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      v71 = v11;
      if ([standardUserDefaults preferredMusicLowBandwidthResolution] < 1)
      {
        v15 = 0;
      }

      else
      {
        mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
        v15 = [mEMORY[0x1E69704E0] isCellularDataRestrictedForMusic] ^ 1;
      }

      mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
      networkType = [mEMORY[0x1E69E4428] networkType];

      IsCellular = ICEnvironmentNetworkTypeIsCellular();
      playbackEngine2 = [(MPCPlaybackErrorController *)self playbackEngine];
      v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v70 = playbackEngine;
      if ((v15 & 1) != 0 || !IsCellular)
      {
        if (v21)
        {
          engineID = [playbackEngine2 engineID];
          *buf = 138544130;
          v76 = engineID;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2114;
          v80 = playbackEngine2;
          v81 = 2114;
          v82 = errorCopy;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Transforming error to network unavailable instead of original: %{public}@", buf, 0x2Au);
        }

        v23 = @"Network Unavailable";
        v24 = 11;
      }

      else
      {
        if (v21)
        {
          engineID2 = [playbackEngine2 engineID];
          *buf = 138544130;
          v76 = engineID2;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2114;
          v80 = playbackEngine2;
          v81 = 2114;
          v82 = errorCopy;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Transforming error to cellular restricted error instead of original: %{public}@", buf, 0x2Au);
        }

        v23 = @"Cellular Restricted";
        v24 = 10;
      }

      v73[0] = @"ICEnvironmentNetworkType";
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:networkType];
      v73[1] = @"isMusicCellularStreamingAllowed";
      v74[0] = v26;
      v27 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      v74[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      v29 = [errorCopy msv_errorByWrappingWithDomain:@"MPCError" code:v24 userInfo:v28 debugDescription:{@"playback request failed with reason: %@", v23}];

      errorCopy = v29;
      playbackEngine = v70;
      v11 = v71;
    }
  }

  if (itemCopy)
  {
    delegate2 = [(MPCPlaybackErrorController *)self delegate];
    v31 = [delegate2 isUserSelectedItem:itemCopy];

    mpc_isSubscriptionRequiredError = objc_opt_respondsToSelector();
    if ((mpc_isSubscriptionRequiredError & 1) != 0 && (v31 & 1) == 0)
    {
      if ([errorCopy mpc_isQueueLoadingFailure])
      {
        goto LABEL_21;
      }

      mpc_isSubscriptionRequiredError = [errorCopy mpc_isSubscriptionRequiredError];
    }

    if (mpc_isSubscriptionRequiredError)
    {
LABEL_21:
      if (v31)
      {
        if (([errorCopy mpc_isFileDoesNotExistError] & 1) != 0 || objc_msgSend(errorCopy, "mpc_isNoPermissionsToReadFileError"))
        {
          v72 = v11;
          userInfo = [errorCopy userInfo];
          v34 = itemCopy;
          v35 = [userInfo mutableCopy];

          mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
          v68 = v34;
          v37 = [mediaRemotePublisher getQOSDialogForError:errorCopy withItem:v34];

          v67 = v37;
          [v35 addEntriesFromDictionary:v37];
          v38 = MEMORY[0x1E696ABC0];
          domain = [errorCopy domain];
          code = [errorCopy code];
          underlyingErrors = [errorCopy underlyingErrors];
          v42 = [errorCopy description];
          v69 = v35;
          v43 = [v38 msv_errorWithDomain:domain code:code underlyingErrors:underlyingErrors userInfo:v35 debugDescription:{@"%@", v42}];

          v44 = v43;
          playbackEngine3 = [(MPCPlaybackErrorController *)self playbackEngine];
          v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            engineID3 = [playbackEngine3 engineID];
            *buf = 138544130;
            v76 = engineID3;
            v77 = 2048;
            selfCopy9 = self;
            v79 = 2114;
            v80 = playbackEngine3;
            v81 = 2114;
            v82 = v44;
            _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [File does not exist] error=%{public}@", buf, 0x2Au);
          }

          v11 = v72;
          itemCopy = v68;
          playbackEngine4 = v69;
          v49 = v67;
          goto LABEL_51;
        }

        playbackEngine4 = [(MPCPlaybackErrorController *)self playbackEngine];
        v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          engineID4 = [playbackEngine4 engineID];
          *buf = 138544130;
          v76 = engineID4;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2114;
          v80 = playbackEngine4;
          v81 = 2114;
          v82 = errorCopy;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Specified first item failure] error=%{public}@";
          goto LABEL_49;
        }
      }

      else
      {
        if (![errorCopy mpc_isQueueLoadingFailure])
        {
          if (![errorCopy mpc_isSubscriptionRequiredError])
          {
LABEL_52:
            v53 = delegate;
            v54 = playbackEngine;
            v55 = itemCopy;
LABEL_53:
            [v53 engine:v54 didFailToPlayFirstItem:v55 withError:errorCopy];
            goto LABEL_54;
          }

          playbackEngine4 = [(MPCPlaybackErrorController *)self playbackEngine];
          v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          engineID4 = [playbackEngine4 engineID];
          *buf = 138544130;
          v76 = engineID4;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2114;
          v80 = playbackEngine4;
          v81 = 2114;
          v82 = errorCopy;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Subscription required] error=%{public}@";
          goto LABEL_49;
        }

        playbackEngine4 = [(MPCPlaybackErrorController *)self playbackEngine];
        v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          engineID4 = [playbackEngine4 engineID];
          *buf = 138544130;
          v76 = engineID4;
          v77 = 2048;
          selfCopy9 = self;
          v79 = 2114;
          v80 = playbackEngine4;
          v81 = 2114;
          v82 = errorCopy;
          v66 = "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Entire queue loading failure] error=%{public}@";
LABEL_49:
          _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_ERROR, v66, buf, 0x2Au);
        }
      }

LABEL_50:
      v44 = errorCopy;
LABEL_51:

      errorCopy = v44;
      goto LABEL_52;
    }

    if (objc_opt_respondsToSelector())
    {
      playbackEngine5 = [(MPCPlaybackErrorController *)self playbackEngine];
      v63 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        engineID5 = [playbackEngine5 engineID];
        *buf = 138544130;
        v76 = engineID5;
        v77 = 2048;
        selfCopy9 = self;
        v79 = 2114;
        v80 = playbackEngine5;
        v81 = 2114;
        v82 = errorCopy;
        _os_log_impl(&dword_1C5C61000, v63, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Queue item failure] error=%{public}@", buf, 0x2Au);
      }

      v59 = delegate;
      v60 = playbackEngine;
      v61 = itemCopy;
LABEL_40:
      [v59 engine:v60 didFailToPlayItem:v61 withError:errorCopy];
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [errorCopy mpc_isQueueLoadingFailure])
    {
      playbackEngine6 = [(MPCPlaybackErrorController *)self playbackEngine];
      v51 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        engineID6 = [playbackEngine6 engineID];
        *buf = 138544130;
        v76 = engineID6;
        v77 = 2048;
        selfCopy9 = self;
        v79 = 2114;
        v80 = playbackEngine6;
        v81 = 2114;
        v82 = errorCopy;
        _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Failed to queue any items] error=%{public}@", buf, 0x2Au);
      }

      v53 = delegate;
      v54 = playbackEngine;
      v55 = 0;
      goto LABEL_53;
    }

    if (objc_opt_respondsToSelector())
    {
      playbackEngine7 = [(MPCPlaybackErrorController *)self playbackEngine];
      v57 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        engineID7 = [playbackEngine7 engineID];
        *buf = 138544130;
        v76 = engineID7;
        v77 = 2048;
        selfCopy9 = self;
        v79 = 2114;
        v80 = playbackEngine7;
        v81 = 2114;
        v82 = errorCopy;
        _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Notifying delegate [Queue item failure - nil item] error=%{public}@", buf, 0x2Au);
      }

      v59 = delegate;
      v60 = playbackEngine;
      v61 = 0;
      goto LABEL_40;
    }
  }

LABEL_54:
}

- (int64_t)_resolutionForPlaybackError:(id)error item:(id)item
{
  v34 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemCopy = item;
  playbackEngine = [(MPCPlaybackErrorController *)self playbackEngine];
  if (!playbackEngine)
  {
    v12 = 1;
    goto LABEL_25;
  }

  if (!itemCopy)
  {
    playbackEngine2 = [(MPCPlaybackErrorController *)self playbackEngine];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      engineID = [playbackEngine2 engineID];
      v26 = 138544130;
      selfCopy4 = engineID;
      v28 = 2048;
      selfCopy5 = self;
      v30 = 2114;
      v31 = playbackEngine2;
      v32 = 2114;
      v33 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - nil item received [Queue failure] error=%{public}@", &v26, 0x2Au);
    }

    v12 = 0;
    goto LABEL_24;
  }

  if ([(MPCPlaybackErrorController *)self itemsHavePlayed])
  {
    playbackEngine3 = [(MPCPlaybackErrorController *)self playbackEngine];
    playbackEngine4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(playbackEngine4, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [playbackEngine3 engineID];
      v26 = 138543874;
      selfCopy4 = engineID2;
      v28 = 2048;
      selfCopy5 = self;
      v30 = 2114;
      v31 = playbackEngine3;
      _os_log_impl(&dword_1C5C61000, playbackEngine4, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Playback has succeeded for at least one item [Ignoring queue failure]", &v26, 0x20u);
    }
  }

  else
  {
    queueController = [(MPCPlaybackErrorController *)playbackEngine queueController];
    contentItemID = [itemCopy contentItemID];
    playbackEngine3 = [queueController contentItemIDWithoutRepeatIteration:contentItemID];

    failedItemsIdentifiers = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
    LODWORD(contentItemID) = [failedItemsIdentifiers containsObject:playbackEngine3];

    if (contentItemID)
    {
      playbackEngine4 = [(MPCPlaybackErrorController *)self playbackEngine];
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        engineID3 = [playbackEngine4 engineID];
        v26 = 138543874;
        selfCopy4 = engineID3;
        v28 = 2048;
        selfCopy5 = self;
        v30 = 2114;
        v31 = playbackEngine4;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Ending playback [Entire queue failure]", &v26, 0x20u);
      }

      v12 = 1;
      goto LABEL_18;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      selfCopy4 = self;
      v28 = 2114;
      selfCopy5 = playbackEngine;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "MPCErrorControllerImplementation %p <%{public}@> - Playback has not yet succeeded [Adding to queue failure set]", &v26, 0x16u);
    }

    playbackEngine4 = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
    [playbackEngine4 addObject:playbackEngine3];
  }

  v12 = 0;
LABEL_18:

  delegate = [(MPCPlaybackErrorController *)self delegate];
  if ([delegate isUserSelectedItem:itemCopy])
  {

LABEL_21:
    playbackEngine2 = [(MPCPlaybackErrorController *)self playbackEngine];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      engineID4 = [playbackEngine2 engineID];
      v26 = 138544130;
      selfCopy4 = engineID4;
      v28 = 2048;
      selfCopy5 = self;
      v30 = 2114;
      v31 = playbackEngine2;
      v32 = 2114;
      v33 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Stopping playback for a first item or unrecoverable asset loading error. error=%{public}@", &v26, 0x2Au);
    }

    v12 = 1;
LABEL_24:

    goto LABEL_25;
  }

  mpc_isQueueLoadingFailure = [errorCopy mpc_isQueueLoadingFailure];

  if (mpc_isQueueLoadingFailure)
  {
    goto LABEL_21;
  }

LABEL_25:

  return v12;
}

- (void)_playbackFailedWithError:(id)error item:(id)item canResolve:(BOOL)resolve proposedResolution:(int64_t)resolution completion:(id)completion
{
  resolveCopy = resolve;
  v45 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemCopy = item;
  completionCopy = completion;
  if (itemCopy && resolveCopy && ([itemCopy hasPerformedErrorResolution] & 1) == 0)
  {
    playbackEngine = [(MPCPlaybackErrorController *)self playbackEngine];
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [playbackEngine engineID];
      *buf = 138544386;
      v34 = engineID;
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2114;
      v38 = playbackEngine;
      v39 = 2114;
      v40 = itemCopy;
      v41 = 2114;
      v42 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Attempting to recover from error [using item resolution] - item:%{public}@ - error:%{public}@", buf, 0x34u);
    }

    [(MPCPlaybackErrorController *)self setLastItemUsedForErrorResolution:itemCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __101__MPCPlaybackErrorController__playbackFailedWithError_item_canResolve_proposedResolution_completion___block_invoke;
    v27[3] = &unk_1E82350D0;
    resolutionCopy = resolution;
    v28 = itemCopy;
    selfCopy2 = self;
    v30 = errorCopy;
    v31 = completionCopy;
    [v28 resolvePlaybackError:v30 withCompletion:v27];
  }

  else
  {
    playbackEngine2 = [(MPCPlaybackErrorController *)self playbackEngine];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [playbackEngine2 engineID];
      *buf = 138544386;
      v34 = engineID2;
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2114;
      v38 = playbackEngine2;
      v39 = 2114;
      v40 = itemCopy;
      v41 = 2114;
      v42 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Unable resolve error [determining final resolution] - item:%{public}@ - error:%{public}@", buf, 0x34u);
    }

    v18 = [(MPCPlaybackErrorController *)self _resolutionForPlaybackError:errorCopy item:itemCopy];
    if (resolution == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    playbackEngine3 = [(MPCPlaybackErrorController *)self playbackEngine];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      engineID3 = [playbackEngine3 engineID];
      v23 = [MFDescription forErrorResolution:v19];
      *buf = 138544642;
      v34 = engineID3;
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2114;
      v38 = playbackEngine3;
      v39 = 2114;
      v40 = v23;
      v41 = 2114;
      v42 = itemCopy;
      v43 = 2114;
      v44 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Final error resolution reached [%{public}@] - item:%{public}@ - error:%{public}@", buf, 0x3Eu);
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && v19 == 1)
    {
      [(MPCPlaybackErrorController *)self _notifyObserversForError:errorCopy item:itemCopy];
    }

    (*(completionCopy + 2))(completionCopy, v19);
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

- (void)reportCriticalError:(id)error forItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemCopy = item;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    playbackEngine = [(MPCPlaybackErrorController *)self playbackEngine];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      engineID = [playbackEngine engineID];
      v21 = 138544386;
      v22 = engineID;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = playbackEngine;
      v27 = 2114;
      v28 = itemCopy;
      v29 = 2114;
      v30 = errorCopy;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Processing fatal playback error - item:%{public}@ - error:%{public}@", &v21, 0x34u);
    }

    translator = [(MPCPlaybackErrorController *)self translator];
    v12 = [translator MPAVItemForMFPlayerItem:itemCopy];

    v13 = errorCopy;
    domain = [v13 domain];
    v15 = [domain isEqualToString:@"MPCEnginePlayerError"];

    if (!v15)
    {
      goto LABEL_10;
    }

    code = [v13 code];
    if ((code - 5) >= 3)
    {
      if (code != 9)
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

- (void)resolveError:(id)error forItem:(id)item completion:(id)completion
{
  v109 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemCopy = item;
  completionCopy = completion;
  playbackEngine = [(MPCPlaybackErrorController *)self playbackEngine];
  playbackEngine2 = [(MPCPlaybackErrorController *)self playbackEngine];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    engineID = [playbackEngine2 engineID];
    *buf = 138544386;
    v100 = engineID;
    v101 = 2048;
    selfCopy12 = self;
    v103 = 2114;
    v104 = playbackEngine2;
    v105 = 2114;
    v106 = itemCopy;
    v107 = 2114;
    *v108 = errorCopy;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Starting error resolution - item:%{public}@ - error:%{public}@", buf, 0x34u);
  }

  if ([(MPCPlaybackErrorController *)self contiguousFailSilentlyResolutionCount]< 250)
  {
    translator = [(MPCPlaybackErrorController *)self translator];
    v20 = [translator MPAVItemForMFPlayerItem:itemCopy];

    userInfo = [errorCopy userInfo];
    v22 = *MEMORY[0x1E696AA08];
    v85 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    playbackError = [v20 playbackError];
    v87 = playbackError;
    if (playbackError)
    {
      userInfo2 = [playbackError userInfo];
      v84 = [userInfo2 objectForKeyedSubscript:v22];
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
    v25 = errorCopy;
    v98 = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__MPCPlaybackErrorController_resolveError_forItem_completion___block_invoke;
    aBlock[3] = &unk_1E82350A8;
    v91 = completionCopy;
    aBlock[4] = self;
    v83 = v20;
    v89 = v83;
    v92 = &v93;
    v26 = playbackEngine;
    v90 = v26;
    v86 = _Block_copy(aBlock);
    if (([v25 mpc_isAirplayDeviceBusyError] & 1) != 0 || (objc_msgSend(v85, "mpc_isAirplayDeviceBusyError") & 1) != 0 || objc_msgSend(v84, "mpc_isAirplayDeviceBusyError"))
    {
      playbackEngine3 = [(MPCPlaybackErrorController *)self playbackEngine];
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        engineID2 = [playbackEngine3 engineID];
        v30 = [MFDescription forErrorResolution:1];
        *buf = 138544130;
        v100 = engineID2;
        v101 = 2048;
        selfCopy12 = self;
        v103 = 2114;
        v104 = playbackEngine3;
        v105 = 2114;
        v106 = v30;
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_ERROR, "[%{public}@]-❗️MPCErrorControllerImplementation %p <%{public}@> - Unrecoverable AirPlay failure [airPlayVideoEnded] - Actual resolution:%{public}@", buf, 0x2Au);
      }

      v86[2](v86, 1);
      delegate = [(MPCPlaybackErrorController *)self delegate];
      [delegate pickBestDeviceRoute];

      goto LABEL_16;
    }

    player = [v26 player];
    if ([player state] == 1)
    {
      v80 = 0;
    }

    else
    {
      player2 = [v26 player];
      v80 = [player2 state] != 6;
    }

    if (([v25 mpc_isRentalContentRequiresDownloadError] & 1) != 0 || (objc_msgSend(v85, "mpc_isRentalContentRequiresDownloadError") & 1) != 0 || objc_msgSend(v84, "mpc_isRentalContentRequiresDownloadError"))
    {
      v34 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E696F790] code:8 underlyingError:v25 debugDescription:@"Unrecoverable AirPlay failure [rental requires download]"];
      v35 = v94[5];
      v94[5] = v34;

      playbackEngine4 = [(MPCPlaybackErrorController *)self playbackEngine];
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      playbackEngine8 = playbackEngine4;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        engineID3 = [playbackEngine4 engineID];
        v39 = [MFDescription forErrorResolution:1];
        v40 = v94[5];
        *buf = 138544642;
        v100 = engineID3;
        v101 = 2048;
        selfCopy12 = self;
        v103 = 2114;
        v104 = playbackEngine4;
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
        playbackEngine5 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        playbackEngine8 = playbackEngine5;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          engineID4 = [playbackEngine5 engineID];
          v46 = [MFDescription forErrorResolution:0];
          v47 = v94[5];
          *buf = 138544642;
          v100 = engineID4;
          v101 = 2048;
          selfCopy12 = self;
          v103 = 2114;
          v104 = playbackEngine5;
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

      if ([v25 mpc_isResourceUnavailableError] && objc_msgSend(itemCopy, "isAssetLoaded") && (objc_msgSend(itemCopy, "avPlayerItem"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "errorLog"), v49 = objc_claimAutoreleasedReturnValue(), v50 = v49 == 0, v49, v48, !v50))
      {
        objc_storeStrong(v94 + 5, error);
        playbackEngine6 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        playbackEngine8 = playbackEngine6;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          engineID5 = [playbackEngine6 engineID];
          v53 = [MFDescription forErrorResolution:1];
          *buf = 138544130;
          v100 = engineID5;
          v101 = 2048;
          selfCopy12 = self;
          v103 = 2114;
          v104 = playbackEngine6;
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
            objc_storeStrong(v94 + 5, error);
            playbackEngine7 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            playbackEngine8 = playbackEngine7;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              engineID6 = [playbackEngine7 engineID];
              v62 = [MFDescription forErrorResolution:1];
              v63 = v94[5];
              *buf = 138544642;
              v100 = engineID6;
              v101 = 2048;
              selfCopy12 = self;
              v103 = 2114;
              v104 = playbackEngine7;
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
            objc_storeStrong(v94 + 5, error);
            playbackEngine8 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              engineID7 = [playbackEngine8 engineID];
              v65 = [MFDescription forErrorResolution:1];
              v66 = v94[5];
              *buf = 138544642;
              v100 = engineID7;
              v101 = 2048;
              selfCopy12 = self;
              v103 = 2114;
              v104 = playbackEngine8;
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
            mpc_isUnrecoverableAssetLoadingError = [v25 mpc_isUnrecoverableAssetLoadingError];
            objc_storeStrong(v94 + 5, error);
            if (!mpc_isUnrecoverableAssetLoadingError)
            {
              lastItemUsedForErrorResolution = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
              if (lastItemUsedForErrorResolution)
              {
                lastItemUsedForErrorResolution2 = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
                if (lastItemUsedForErrorResolution2)
                {
                  lastItemUsedForErrorResolution3 = [(MPCPlaybackErrorController *)self lastItemUsedForErrorResolution];
                  contentItemID = [lastItemUsedForErrorResolution3 contentItemID];
                  contentItemID2 = [v83 contentItemID];
                  v79 = [contentItemID isEqualToString:contentItemID2];

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

              playbackEngine8 = [(MPCPlaybackErrorController *)self playbackEngine];
              v75 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                engineID8 = [playbackEngine8 engineID];
                v77 = [MFDescription forErrorResolution:0];
                v78 = v94[5];
                *buf = 138544642;
                v100 = engineID8;
                v101 = 2048;
                selfCopy12 = self;
                v103 = 2114;
                v104 = playbackEngine8;
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

            playbackEngine8 = [(MPCPlaybackErrorController *)self playbackEngine];
            v37 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              engineID9 = [playbackEngine8 engineID];
              v69 = [MFDescription forErrorResolution:1];
              v70 = v94[5];
              *buf = 138544642;
              v100 = engineID9;
              v101 = 2048;
              selfCopy12 = self;
              v103 = 2114;
              v104 = playbackEngine8;
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
          objc_storeStrong(v94 + 5, error);
          playbackEngine8 = [(MPCPlaybackErrorController *)self playbackEngine];
          v37 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            engineID10 = [playbackEngine8 engineID];
            v55 = [MFDescription forErrorResolution:1];
            v56 = v94[5];
            *buf = 138544642;
            v100 = engineID10;
            v101 = 2048;
            selfCopy12 = self;
            v103 = 2114;
            v104 = playbackEngine8;
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
        objc_storeStrong(v94 + 5, error);
        playbackEngine9 = [(MPCPlaybackErrorController *)self playbackEngine];
        v37 = _MPCLogCategoryPlayback();
        playbackEngine8 = playbackEngine9;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          engineID11 = [playbackEngine9 engineID];
          v59 = [MFDescription forErrorResolution:1];
          *buf = 138544130;
          v100 = engineID11;
          v101 = 2048;
          selfCopy12 = self;
          v103 = 2114;
          v104 = playbackEngine9;
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
  playbackEngine10 = [(MPCPlaybackErrorController *)self playbackEngine];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    engineID12 = [playbackEngine10 engineID];
    *buf = 138544386;
    v100 = engineID12;
    v101 = 2048;
    selfCopy12 = self;
    v103 = 2114;
    v104 = playbackEngine10;
    v105 = 2114;
    v106 = itemCopy;
    v107 = 2114;
    *v108 = errorCopy;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCErrorControllerImplementation %p <%{public}@> - Contiguous playback failures exceeded the limit - item:%{public}@ - error:%{public}@", buf, 0x34u);
  }

  (*(completionCopy + 2))(completionCopy, 1);
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

- (void)resetWithReason:(id)reason
{
  [(MPCPlaybackErrorController *)self setItemsHavePlayed:0];
  [(MPCPlaybackErrorController *)self setLastItemUsedForErrorResolution:0];
  failedItemsIdentifiers = [(MPCPlaybackErrorController *)self failedItemsIdentifiers];
  [failedItemsIdentifiers removeAllObjects];

  [(MPCPlaybackErrorController *)self setContiguousFailSilentlyResolutionCount:0];
}

- (void)setItemsHavePlayed:(BOOL)played
{
  self->_itemsHavePlayed = played;
  if (played)
  {
    [(MPCPlaybackErrorController *)self setContiguousFailSilentlyResolutionCount:0];
  }
}

- (MPCPlaybackErrorController)initWithPlaybackEngine:(id)engine translator:(id)translator
{
  engineCopy = engine;
  translatorCopy = translator;
  v13.receiver = self;
  v13.super_class = MPCPlaybackErrorController;
  v8 = [(MPCPlaybackErrorController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, engineCopy);
    objc_storeStrong(&v9->_translator, translator);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    failedItemsIdentifiers = v9->_failedItemsIdentifiers;
    v9->_failedItemsIdentifiers = v10;
  }

  return v9;
}

@end