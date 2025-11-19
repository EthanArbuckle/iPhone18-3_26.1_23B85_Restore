@interface MPCContentAgeRequirementManager
+ (MPCContentAgeRequirementManager)sharedManager;
- (BOOL)_askPlaybackAuthorizationForItem:(id)a3 reason:(int64_t)a4;
- (BOOL)_shouldAskPlaybackAuthorizationForItem:(id)a3 reason:(int64_t)a4;
- (BOOL)isItemAuthorized:(id)a3 shouldAskForAuthorization:(BOOL)a4;
- (MPCContentAgeRequirementDelegate)delegate;
- (id)_explicitContentErrorWithUnderlyingError:(id)a3 message:(id)a4;
- (id)_init;
- (id)_retrieveAgeVerificationStateForUserIdentity:(id)a3;
- (int64_t)authorizationReason;
- (void)_setupWithAgeGateForItem:(id)a3;
- (void)_setupWithAgeVerificationState:(id)a3;
- (void)_updateAuthorizationStatusWithAuthorizationState:(id)a3 forItem:(id)a4;
@end

@implementation MPCContentAgeRequirementManager

+ (MPCContentAgeRequirementManager)sharedManager
{
  if (sharedManager_onceToken_34430 != -1)
  {
    dispatch_once(&sharedManager_onceToken_34430, &__block_literal_global_34431);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __48__MPCContentAgeRequirementManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = [[MPCContentAgeRequirementManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPCContentAgeRequirementManager;
  result = [(MPCContentAgeRequirementManager *)&v3 init];
  if (result)
  {
    *(result + 2) = 3;
  }

  return result;
}

- (MPCContentAgeRequirementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_explicitContentErrorWithUnderlyingError:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v8 = v7;
  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A278]];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:41 userInfo:v8];

  return v9;
}

- (BOOL)_askPlaybackAuthorizationForItem:(id)a3 reason:(int64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__34392;
  v29 = __Block_byref_object_dispose__34393;
  v30 = 0;
  v8 = [(MPCContentAgeRequirementManager *)self delegate];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69B13F0]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__MPCContentAgeRequirementManager__askPlaybackAuthorizationForItem_reason___block_invoke;
    v24[3] = &unk_1E8239338;
    v24[4] = self;
    v24[5] = a2;
    v10 = [v9 initWithDeallocHandler:v24];
    v11 = dispatch_semaphore_create(0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__MPCContentAgeRequirementManager__askPlaybackAuthorizationForItem_reason___block_invoke_2;
    v19[3] = &unk_1E8239148;
    v12 = v10;
    v20 = v12;
    v22 = &v25;
    v23 = &v31;
    v13 = v11;
    v21 = v13;
    [v8 requestAuthorizationForExplicitItem:v7 reason:a4 completion:v19];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v32[3])
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v36 = self;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Explicit content playback authorization has been granted by client for: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPCContentAgeRequirementManager %p - Explicit content playback authorization has been denied by client for: %@", self, v7];
    v15 = [(MPCContentAgeRequirementManager *)self _explicitContentErrorWithUnderlyingError:v26[5] message:v14];
    [v7 setItemError:v15];

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v36 = self;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "MPCContentAgeRequirementManager %p - Explicit content playback authorization has been denied by client for: %{public}@", buf, 0x16u);
    }
  }

  v17 = *(v32 + 24);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v17 & 1;
}

void __75__MPCContentAgeRequirementManager__askPlaybackAuthorizationForItem_reason___block_invoke(uint64_t a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPCContentAgeRequirementManager.m" lineNumber:200 description:@"MPCGenericAVItem authorization handler was released and not called."];
  }
}

void __75__MPCContentAgeRequirementManager__askPlaybackAuthorizationForItem_reason___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) disarm];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v9 = v5;

  if (v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_shouldAskPlaybackAuthorizationForItem:(id)a3 reason:(int64_t)a4
{
  if (a4 == 1)
  {
    return 1;
  }

  result = [a3 isStartItem];
  if (a4 != 2)
  {
    return 0;
  }

  return result;
}

- (void)_setupWithAgeVerificationState:(id)a3
{
  v9 = a3;
  v5 = [v9 status];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = self;
      v7 = 0;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_14;
      }

      if ([v9 isExplicitContentAllowed])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      v6 = self;
    }
  }

  else
  {
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];

      goto LABEL_14;
    }

    if (v5 != 1)
    {
      goto LABEL_14;
    }

    v6 = self;
    v7 = 2;
  }

  [(MPCContentAgeRequirementManager *)v6 setStatus:v7];
LABEL_14:
}

- (void)_setupWithAgeGateForItem:(id)a3
{
  v4 = [a3 genericObject];
  v13 = [v4 flattenedGenericObject];

  if ([v13 type] == 8 && (objc_msgSend(v13, "tvEpisode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "explicitRating"), objc_msgSend(MEMORY[0x1E6970920], "sharedRestrictionsMonitor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maximumTVShowRatingForAgeGate"), v7, v5, v6 >= v8) || objc_msgSend(v13, "type") == 9 && (objc_msgSend(v13, "movie"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "explicitRating"), objc_msgSend(MEMORY[0x1E6970920], "sharedRestrictionsMonitor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "maximumMovieRatingForAgeGate"), v11, v9, v10 >= v12))
  {
    [(MPCContentAgeRequirementManager *)self setStatus:1];
  }
}

- (void)_updateAuthorizationStatusWithAuthorizationState:(id)a3 forItem:(id)a4
{
  v6 = a4;
  [(MPCContentAgeRequirementManager *)self _setupWithAgeVerificationState:a3];
  if ([(MPCContentAgeRequirementManager *)self status]== 2)
  {
    [(MPCContentAgeRequirementManager *)self _setupWithAgeGateForItem:v6];
  }
}

- (id)_retrieveAgeVerificationStateForUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69E4398] defaultManager];
  v5 = [v4 ageVerificationStateForUserIdentity:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E69E4398] defaultManager];
    v7 = [v6 ageVerificationStateForUserIdentity:v3];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__34392;
    v19 = __Block_byref_object_dispose__34393;
    v20 = 0;
    v8 = dispatch_block_create(0, &__block_literal_global_6);
    v9 = [MEMORY[0x1E69E4398] defaultManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__MPCContentAgeRequirementManager__retrieveAgeVerificationStateForUserIdentity___block_invoke_2;
    v12[3] = &unk_1E8239120;
    v14 = &v15;
    v10 = v8;
    v13 = v10;
    [v9 getAgeVerificationStateWithCompletion:v12];

    dispatch_block_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  return v7;
}

void __80__MPCContentAgeRequirementManager__retrieveAgeVerificationStateForUserIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (int64_t)authorizationReason
{
  v2 = [(MPCContentAgeRequirementManager *)self status];
  if (v2)
  {
    return v2 == 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isItemAuthorized:(id)a3 shouldAskForAuthorization:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 mediaType] == 2048)
  {
    v7 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    v8 = [v7 allowsMusicVideos];

    if ((v8 & 1) == 0)
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Music Video playback is not allowed for item - %{public}@", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_23;
    }
  }

  if ([v6 isExplicitTrack])
  {
    v9 = [v6 playbackRequestEnvironment];
    v10 = [v9 userIdentity];

    v11 = [(MPCContentAgeRequirementManager *)self _retrieveAgeVerificationStateForUserIdentity:v10];
    [(MPCContentAgeRequirementManager *)self _updateAuthorizationStatusWithAuthorizationState:v11 forItem:v6];
    if ([(MPCContentAgeRequirementManager *)self status]== 2)
    {
      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Age Requirements satisfied for item: %{public}@", buf, 0x16u);
      }

      v13 = 1;
      goto LABEL_22;
    }

    if ([(MPCContentAgeRequirementManager *)self status]== 3)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPCContentAgeRequirementManager %p - Explicit content playback is not allowed for any item - %@", self, v6];
      v15 = [(MPCContentAgeRequirementManager *)self authorizationError];
      v16 = [(MPCContentAgeRequirementManager *)self _explicitContentErrorWithUnderlyingError:v15 message:v14];
      [v6 setItemError:v16];

      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "MPCContentAgeRequirementManager %p - Age Requirements prohibit playback for item: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v4 && [(MPCContentAgeRequirementManager *)self _shouldAskPlaybackAuthorizationForItem:v6 reason:[(MPCContentAgeRequirementManager *)self authorizationReason]])
      {
        v13 = [(MPCContentAgeRequirementManager *)self _askPlaybackAuthorizationForItem:v6 reason:[(MPCContentAgeRequirementManager *)self authorizationReason]];
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Age Requirements not satisfied and will not request authorization for item: %{public}@", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_22;
  }

  v13 = 1;
LABEL_24:

  return v13;
}

@end