@interface MPCSharedListeningPlaybackIntentDataSource
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)_transitionToBuildState:(int64_t)state intent:(id)intent error:(id)error;
- (void)_transitionToLiveLinkState:(int64_t)state error:(id)error;
- (void)_transitionToSourceState:(int64_t)state error:(id)error;
- (void)buildSharedSessionIntentWithIntent:(id)intent identity:(id)identity completion:(id)completion;
- (void)didStartLiveLink:(id)link;
- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion;
- (void)getRepresentativeObjectFromIntent:(id)intent properties:(id)properties completion:(id)completion;
- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion;
- (void)liveLink:(id)link didEncounterError:(id)error willRetry:(BOOL)retry;
- (void)liveLink:(id)link didUpdateQueue:(id)queue;
@end

@implementation MPCSharedListeningPlaybackIntentDataSource

+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  typesCopy = types;
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (destination == 1)
  {
    v10 = 1;
  }

  else if (typesCopy < 0)
  {
    v10 = [identifiersCopy containsObject:@"com.apple.music.playbackqueue.sharedlistening"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_transitionToLiveLinkState:(int64_t)state error:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self->_buildState == 7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      initialIntent = self->_initialIntent;
      linkState = self->_linkState;
      if (linkState >= 5)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_linkState];
      }

      else
      {
        v11 = off_1E8237C38[linkState];
      }

      v17 = v11;
      if (state >= 5)
      {
        state = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state = off_1E8237C38[state];
      }

      *buf = 138543874;
      v43 = initialIntent;
      v44 = 2114;
      v45 = v17;
      v46 = 2114;
      v47 = state;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToLiveLinkState [ignoring] %{public}@ -> %{public}@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_48;
  }

  v12 = state | (self->_linkState << 16);
  if (v12 <= 65538)
  {
    if (v12 == 1)
    {
      v14 = 0;
      v16 = 0;
      v13 = 1;
      v15 = 1;
      goto LABEL_28;
    }

    if (v12 != 65538)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v12 != 65539)
  {
    if (v12 != 196610)
    {
      if (v12 == 196612)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 4;
        goto LABEL_28;
      }

LABEL_20:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = self->_linkState;
      if (v20 >= 5)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_linkState];
      }

      else
      {
        v21 = off_1E8237C38[v20];
      }

      if (state >= 5)
      {
        state2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state2 = off_1E8237C38[state];
      }

      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCSharedListeningPlaybackIntentDataSource.m" lineNumber:489 description:{@"Unexpected state transition %@ -> %@", v21, state2}];

      goto LABEL_27;
    }

LABEL_12:
    v13 = 0;
    v15 = 0;
    v14 = 1;
    v16 = 3;
    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 1;
LABEL_28:
  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v41 = errorCopy;
    v24 = v13;
    v25 = v14;
    v26 = v16;
    v27 = self->_initialIntent;
    v28 = self->_linkState;
    if (v28 >= 5)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_linkState];
    }

    else
    {
      v29 = off_1E8237C38[v28];
    }

    v30 = v29;
    if (state >= 5)
    {
      state3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
    }

    else
    {
      state3 = off_1E8237C38[state];
    }

    *buf = 138543874;
    v43 = v27;
    v44 = 2114;
    v45 = v30;
    v46 = 2114;
    v47 = state3;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToLiveLinkState %{public}@ -> %{public}@", buf, 0x20u);

    v16 = v26;
    v14 = v25;
    v13 = v24;
    errorCopy = v41;
  }

  self->_linkState = state;
  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    os_unfair_lock_lock(&self->_lock);
    v32 = [MEMORY[0x1E69E4448] linkWithIdentity:self->_identity];
    [v32 setDelegate:self];
    objc_storeStrong(&self->_liveLink, v32);
    os_unfair_lock_unlock(&self->_lock);
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v34 = os_signpost_id_make_with_pointer(v33, self->_initialIntent);

    v35 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v36 = v35;
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "link:start", "", buf, 2u);
    }

    [(ICLiveLink *)self->_liveLink start];
  }

  if ((v13 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    buildState = [(MPCSharedListeningPlaybackIntentDataSource *)self buildState];
    sourceState = [(MPCSharedListeningPlaybackIntentDataSource *)self sourceState];
    os_unfair_lock_unlock(&self->_lock);
    if (buildState == 1)
    {
      if (v14)
      {
        selfCopy2 = self;
        v40 = 3;
      }

      else
      {
        if (sourceState != 3)
        {
          goto LABEL_48;
        }

        selfCopy2 = self;
        v40 = v16;
      }

      [(MPCSharedListeningPlaybackIntentDataSource *)selfCopy2 _transitionToBuildState:v40 intent:0 error:errorCopy];
    }
  }

LABEL_48:
}

- (void)_transitionToSourceState:(int64_t)state error:(id)error
{
  v47 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self->_buildState == 7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sourceState = self->_sourceState;
      initialIntent = self->_initialIntent;
      if (sourceState >= 4)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_sourceState];
      }

      else
      {
        v11 = off_1E8237C18[sourceState];
      }

      v16 = v11;
      if (state >= 4)
      {
        state = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state = off_1E8237C18[state];
      }

      *buf = 138543874;
      v42 = initialIntent;
      v43 = 2114;
      v44 = v16;
      v45 = 2114;
      v46 = state;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToSourceState [ignoring] %{public}@ -> %{public}@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = state | (self->_sourceState << 16);
    switch(v12)
    {
      case 1:
        v13 = 0;
        v15 = 0;
        v39 = 1;
        v14 = 1;
        break;
      case 65538:
        v39 = 0;
        v14 = 0;
        v13 = 1;
        v15 = 2;
        break;
      case 65539:
        v39 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 4;
        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = self->_sourceState;
        if (v19 >= 4)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_sourceState];
        }

        else
        {
          v20 = off_1E8237C18[v19];
        }

        if (state >= 4)
        {
          state2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
        }

        else
        {
          state2 = off_1E8237C18[state];
        }

        [currentHandler handleFailureInMethod:a2 object:self file:@"MPCSharedListeningPlaybackIntentDataSource.m" lineNumber:407 description:{@"Unexpected state transition %@ -> %@", v20, state2}];

        v13 = 0;
        v15 = 0;
        v14 = 0;
        v39 = 1;
        break;
    }

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v38 = errorCopy;
      v23 = v15;
      v24 = a2;
      v25 = v13;
      v26 = self->_sourceState;
      v27 = self->_initialIntent;
      if (v26 >= 4)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_sourceState];
      }

      else
      {
        v28 = off_1E8237C18[v26];
      }

      v29 = v28;
      if (state >= 4)
      {
        state3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state3 = off_1E8237C18[state];
      }

      *buf = 138543874;
      v42 = v27;
      v43 = 2114;
      v44 = v29;
      v45 = 2114;
      v46 = state3;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToSourceState %{public}@ -> %{public}@", buf, 0x20u);

      v13 = v25;
      a2 = v24;
      v15 = v23;
      errorCopy = v38;
    }

    self->_sourceState = state;
    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      v31 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v32 = os_signpost_id_make_with_pointer(v31, self->_initialIntent);

      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v34 = v33;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "source:getPlaybackContext", "", buf, 2u);
      }

      v35 = self->_initialIntent;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __77__MPCSharedListeningPlaybackIntentDataSource__transitionToSourceState_error___block_invoke;
      v40[3] = &unk_1E8237B80;
      v40[4] = self;
      v40[5] = a2;
      [(MPCPlaybackIntent *)v35 getSharedListeningTracklistWithCompletion:v40];
    }

    if ((v39 & 1) == 0)
    {
      os_unfair_lock_lock(&self->_lock);
      buildState = [(MPCSharedListeningPlaybackIntentDataSource *)self buildState];
      linkState = [(MPCSharedListeningPlaybackIntentDataSource *)self linkState];
      os_unfair_lock_unlock(&self->_lock);
      if (buildState == 1)
      {
        if (v13)
        {
          [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToBuildState:2 intent:0 error:errorCopy];
        }

        else if (linkState == 4)
        {
          [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToBuildState:v15];
        }
      }
    }
  }
}

void __77__MPCSharedListeningPlaybackIntentDataSource__transitionToSourceState_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerEnqueueError" code:3 underlyingError:v8 debugDescription:@"Content type is not supported in live link"];
    [*(a1 + 32) _transitionToSourceState:2 error:v9];
  }

  else
  {
    if (!v11)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPCSharedListeningPlaybackIntentDataSource.m" lineNumber:425 description:@"Missing required parameters (tracklist) [error == nil]"];
    }

    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(a1 + 32) setInitialTracklist:v11];
    [*(a1 + 32) setStartIndexPath:v7];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    [*(a1 + 32) _transitionToSourceState:3];
  }
}

- (void)_transitionToBuildState:(int64_t)state intent:(id)intent error:(id)error
{
  v59 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  buildState = self->_buildState;
  v12 = state | (buildState << 16);
  v51 = intentCopy;
  if (v12 > 65539)
  {
    if ((v12 - 262149) >= 2)
    {
      if (v12 == 65540)
      {
        v13 = errorCopy;
        v14 = 0;
        v16 = 0;
        v15 = 1;
        goto LABEL_7;
      }

      goto LABEL_32;
    }

LABEL_6:
    v13 = errorCopy;
    v15 = 0;
    v16 = 0;
    v14 = 1;
    goto LABEL_7;
  }

  if ((v12 - 65538) < 2)
  {
    goto LABEL_6;
  }

  if (v12 == 1)
  {
    v13 = errorCopy;
    v14 = 0;
    v15 = 0;
    v16 = 1;
LABEL_7:
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      initialIntent = self->_initialIntent;
      v19 = self->_buildState;
      if (v19 >= 8)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_buildState];
      }

      else
      {
        v20 = off_1E8237BD8[v19];
      }

      v21 = v20;
      if (state >= 8)
      {
        state = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state = off_1E8237BD8[state];
      }

      *buf = 138543874;
      v54 = initialIntent;
      v55 = 2114;
      v56 = v21;
      v57 = 2114;
      v58 = state;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToBuildState %{public}@ -> %{public}@", buf, 0x20u);
    }

    self->_buildState = state;
    os_unfair_lock_unlock(&self->_lock);
    if (v16)
    {
      [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToSourceState:1];
      [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToLiveLinkState:1];
    }

    if (v15)
    {
      os_unfair_lock_lock(&self->_lock);
      queue = [(ICLiveLink *)self->_liveLink queue];
      initialTracklist = [(MPCSharedListeningPlaybackIntentDataSource *)self initialTracklist];
      startIndexPath = [(MPCSharedListeningPlaybackIntentDataSource *)self startIndexPath];
      os_unfair_lock_unlock(&self->_lock);
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v27 = os_signpost_id_make_with_pointer(v26, self->_initialIntent);

      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v29 = v28;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "build:replace", "", buf, 2u);
      }

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __83__MPCSharedListeningPlaybackIntentDataSource__transitionToBuildState_intent_error___block_invoke;
      v52[3] = &unk_1E8237B58;
      v52[4] = self;
      v52[5] = v27;
      [queue replaceTracklist:initialTracklist preferredStartIndexPath:startIndexPath completion:v52];
    }

    errorCopy = v13;
    intentCopy = v51;
    if (v14)
    {
      guard = [(MPCSharedListeningPlaybackIntentDataSource *)self guard];
      [guard disarm];

      v31 = [MPCPlayerCommandStatus alloc];
      mpc_remoteCommandStatus = [errorCopy mpc_remoteCommandStatus];
      v33 = [(MPCPlayerCommandStatus *)v31 initWithMPStatus:mpc_remoteCommandStatus request:0];

      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_initialIntent;
        *buf = 138543874;
        v54 = v35;
        v55 = 2114;
        v56 = v51;
        v57 = 2114;
        v58 = v33;
        _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: calling completion intent=%{public}@ status=%{public}@", buf, 0x20u);
      }

      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v37 = os_signpost_id_make_with_pointer(v36, self->_initialIntent);

      v38 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
      v39 = v38;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 138543618;
        v54 = v51;
        v55 = 2114;
        v56 = v33;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v39, OS_SIGNPOST_INTERVAL_END, v37, "build", "intent=%{public}@ status=%{public}@", buf, 0x16u);
      }

      completion = [(MPCSharedListeningPlaybackIntentDataSource *)self completion];
      (completion)[2](completion, v51, v33);

      [(MPCSharedListeningPlaybackIntentDataSource *)self setCompletion:0];
      [(MPCSharedListeningPlaybackIntentDataSource *)self setStrongSelf:0];
    }

    goto LABEL_29;
  }

LABEL_32:
  if (buildState != 7)
  {
    if (state != 7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = self->_buildState;
      if (v46 >= 8)
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_buildState];
      }

      else
      {
        v47 = off_1E8237BD8[v46];
      }

      v13 = errorCopy;
      if (state >= 7)
      {
        state2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
      }

      else
      {
        state2 = off_1E8237BA0[state];
      }

      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCSharedListeningPlaybackIntentDataSource.m" lineNumber:325 description:{@"Unexpected state transition %@ -> %@", v47, state2}];

      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = self->_initialIntent;
    v43 = self->_buildState;
    if (v43 >= 8)
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", self->_buildState];
    }

    else
    {
      v44 = off_1E8237BD8[v43];
    }

    v48 = v44;
    if (state >= 8)
    {
      state3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/state=%ld", state];
    }

    else
    {
      state3 = off_1E8237BD8[state];
    }

    *buf = 138543874;
    v54 = v42;
    v55 = 2114;
    v56 = v48;
    v57 = 2114;
    v58 = state3;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ _transitionToBuildState [ignoring] %{public}@ -> %{public}@", buf, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_29:
}

void __83__MPCSharedListeningPlaybackIntentDataSource__transitionToBuildState_intent_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13 = 138543362;
    v14 = v3;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v5, OS_SIGNPOST_INTERVAL_END, v6, "build:replace", "error=%{public}@", &v13, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v3)
  {
    [(os_unfair_lock_s *)v7 _transitionToBuildState:5 intent:0 error:v3];
  }

  else
  {
    os_unfair_lock_lock(v7 + 2);
    v8 = [*(*(a1 + 32) + 96) identifier];
    v9 = [*(*(a1 + 32) + 96) sessionKey];
    v10 = [MPCPlaybackSharedListeningProperties propertiesWithSessionIdentifier:v8 sessionKey:v9];

    [v10 setLiveLink:*(*(a1 + 32) + 96)];
    v11 = [*(*(a1 + 32) + 96) identity];
    v12 = [MPCPlaybackIntent sharedSessionIntentWithProperties:v10 identity:v11];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    [*(a1 + 32) _transitionToBuildState:6 intent:v12 error:0];
  }
}

- (void)liveLink:(id)link didUpdateQueue:(id)queue
{
  v15 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  linkState = [(MPCSharedListeningPlaybackIntentDataSource *)self linkState];
  os_unfair_lock_unlock(&self->_lock);
  if (linkState == 3)
  {
    items = [queueCopy items];
    v8 = [items count];

    if (v8)
    {
      v9 = MEMORY[0x1E696ABC0];
      items2 = [queueCopy items];
      v11 = [v9 msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"Canceling intent loading because live link already had content %@", items2}];

      [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToLiveLinkState:2 error:v11];
    }

    else
    {
      [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToLiveLinkState:4];
    }
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_INFO, "%{public}@ didUpdateQueue:", buf, 0xCu);
  }
}

- (void)liveLink:(id)link didEncounterError:(id)error willRetry:(BOOL)retry
{
  if (!retry)
  {
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 underlyingError:error debugDescription:@"Live link connection failed"];
    [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToLiveLinkState:2 error:v7];
  }
}

- (void)didStartLiveLink:(id)link
{
  linkCopy = link;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v6 = os_signpost_id_make_with_pointer(v5, self->_initialIntent);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_END, v6, "link:start", "", v11, 2u);
  }

  [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToLiveLinkState:3];
  v9 = +[MPCSharedListeningLiveLinkReusePool sharedReusePool];
  identifier = [linkCopy identifier];
  [v9 storeLiveLink:linkCopy forSessionID:identifier];
}

- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 msv_errorWithDomain:@"MPCError" code:58 debugDescription:@"Cannot create a shared tracklist from shared listening intent"];
  (*(completion + 2))(completionCopy, 0, 0, v7);
}

- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion
{
  v19[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  completionCopy = completion;
  if ((destination - 2) < 2)
  {
    goto LABEL_4;
  }

  if (destination == 1)
  {
    tracklistToken = [intentCopy tracklistToken];
    v10 = [intentCopy actionAfterQueueLoad] == 20;
    v11 = objc_alloc(MEMORY[0x1E6970510]);
    data = [MEMORY[0x1E695DEF0] data];
    v19[0] = tracklistToken;
    v13 = *MEMORY[0x1E69B10E8];
    v18[0] = @"sharedListeningToken";
    v18[1] = v13;
    sharedListeningProperties = [tracklistToken sharedListeningProperties];
    sessionIdentifier = [sharedListeningProperties sessionIdentifier];
    v19[1] = sessionIdentifier;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v17 = [v11 initWithIdentifier:@"InProcess-com.apple.music.playbackqueue.sharedlistening" data:data options:v16];

    [v17 setRequestingImmediatePlayback:v10];
    completionCopy[2](completionCopy, v17, 0);

    goto LABEL_6;
  }

  if (!destination)
  {
LABEL_4:
    tracklistToken = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:58 debugDescription:{@"Cannot create a remote queue for destination: %ld", destination}];
    (completionCopy)[2](completionCopy, 0, tracklistToken);
LABEL_6:
  }
}

- (void)getRepresentativeObjectFromIntent:(id)intent properties:(id)properties completion:(id)completion
{
  intentCopy = intent;
  propertiesCopy = properties;
  completionCopy = completion;
  v10 = [[_MPCQueueControllerBehaviorMusicSharePlay alloc] initWithSessionID:0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke;
  v15[3] = &unk_1E8237B30;
  v16 = intentCopy;
  v17 = v10;
  v18 = propertiesCopy;
  v19 = completionCopy;
  v11 = propertiesCopy;
  v12 = v10;
  v13 = intentCopy;
  v14 = completionCopy;
  [v13 getRemotePlaybackQueueWithDestination:1 completion:v15];
}

void __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v9 = *(a1 + 56);
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:a3 debugDescription:{@"Failed to build playback queue from intent %@", *(a1 + 32)}];
    (*(v9 + 16))(v9, 0, 0, v6);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E6970970]) initWithCommand:0 playbackQueue:v5];
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_2;
    v10[3] = &unk_1E8237B08;
    v14 = *(a1 + 56);
    v11 = 0;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v8 = [v7 performLoadCommand:v6 completion:v10];
  }
}

void __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:*(a1 + 32) debugDescription:@"Failed to perform load queue command"];
    (*(v3 + 16))(v3, 0, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_3;
    v6[3] = &unk_1E8237AE0;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v4 getExpectedCurrentItemModelObjectWithCompletion:v6];
  }
}

void __102__MPCSharedListeningPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 flattenedGenericObject];
  v7 = [v6 copyWithPropertySet:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)buildSharedSessionIntentWithIntent:(id)intent identity:(id)identity completion:(id)completion
{
  intentCopy = intent;
  identityCopy = identity;
  completionCopy = completion;
  [(MPCSharedListeningPlaybackIntentDataSource *)self setStrongSelf:self];
  [(MPCSharedListeningPlaybackIntentDataSource *)self setInitialIntent:intentCopy];
  -[MPCSharedListeningPlaybackIntentDataSource setShuffleMode:](self, "setShuffleMode:", [intentCopy shuffleMode]);
  [(MPCSharedListeningPlaybackIntentDataSource *)self setIdentity:identityCopy];
  [(MPCSharedListeningPlaybackIntentDataSource *)self setCompletion:completionCopy];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v13 = os_signpost_id_make_with_pointer(v12, intentCopy);

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "build", "", buf, 2u);
  }

  [(MPCSharedListeningPlaybackIntentDataSource *)self setLock:0];
  objc_initWeak(buf, self);
  v16 = objc_alloc(MEMORY[0x1E69B13F0]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__MPCSharedListeningPlaybackIntentDataSource_buildSharedSessionIntentWithIntent_identity_completion___block_invoke;
  v18[3] = &unk_1E8237AB0;
  v19[1] = a2;
  v18[4] = self;
  objc_copyWeak(v19, buf);
  v17 = [v16 initWithTimeout:v18 interruptionHandler:25.0];
  [(MPCSharedListeningPlaybackIntentDataSource *)self setGuard:v17];

  [(MPCSharedListeningPlaybackIntentDataSource *)self _transitionToBuildState:1];
  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
}

void __101__MPCSharedListeningPlaybackIntentDataSource_buildSharedSessionIntentWithIntent_identity_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPCSharedListeningPlaybackIntentDataSource.m" lineNumber:174 description:@"Deallocated without calling live link completion"];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (!a2 && WeakRetained)
    {
      v8 = WeakRetained;
      v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Build shared intent timeout"];
      [(os_unfair_lock_s *)v8 _transitionToBuildState:7 intent:0 error:v5];

      os_unfair_lock_lock(v8 + 2);
      v6 = [(os_unfair_lock_s *)v8 liveLink];
      os_unfair_lock_unlock(v8 + 2);
      [v6 stop];

      WeakRetained = v8;
    }
  }
}

@end