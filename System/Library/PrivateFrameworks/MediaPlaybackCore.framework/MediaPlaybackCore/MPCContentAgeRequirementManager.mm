@interface MPCContentAgeRequirementManager
+ (MPCContentAgeRequirementManager)sharedManager;
- (BOOL)_askPlaybackAuthorizationForItem:(id)item reason:(int64_t)reason;
- (BOOL)_shouldAskPlaybackAuthorizationForItem:(id)item reason:(int64_t)reason;
- (BOOL)isItemAuthorized:(id)authorized shouldAskForAuthorization:(BOOL)authorization;
- (MPCContentAgeRequirementDelegate)delegate;
- (id)_explicitContentErrorWithUnderlyingError:(id)error message:(id)message;
- (id)_init;
- (id)_retrieveAgeVerificationStateForUserIdentity:(id)identity;
- (int64_t)authorizationReason;
- (void)_setupWithAgeGateForItem:(id)item;
- (void)_setupWithAgeVerificationState:(id)state;
- (void)_updateAuthorizationStatusWithAuthorizationState:(id)state forItem:(id)item;
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

- (id)_explicitContentErrorWithUnderlyingError:(id)error message:(id)message
{
  errorCopy = error;
  messageCopy = message;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v8 = v7;
  if (errorCopy)
  {
    [v7 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  [v8 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E696A278]];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:41 userInfo:v8];

  return v9;
}

- (BOOL)_askPlaybackAuthorizationForItem:(id)item reason:(int64_t)reason
{
  v39 = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
  delegate = [(MPCContentAgeRequirementManager *)self delegate];
  if (delegate)
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
    [delegate requestAuthorizationForExplicitItem:itemCopy reason:reason completion:v19];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v32[3])
  {
    itemCopy = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(itemCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v37 = 2114;
      v38 = itemCopy;
      _os_log_impl(&dword_1C5C61000, itemCopy, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Explicit content playback authorization has been granted by client for: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPCContentAgeRequirementManager %p - Explicit content playback authorization has been denied by client for: %@", self, itemCopy];
    v15 = [(MPCContentAgeRequirementManager *)self _explicitContentErrorWithUnderlyingError:v26[5] message:itemCopy];
    [itemCopy setItemError:v15];

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v37 = 2114;
      v38 = itemCopy;
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

- (BOOL)_shouldAskPlaybackAuthorizationForItem:(id)item reason:(int64_t)reason
{
  if (reason == 1)
  {
    return 1;
  }

  result = [item isStartItem];
  if (reason != 2)
  {
    return 0;
  }

  return result;
}

- (void)_setupWithAgeVerificationState:(id)state
{
  stateCopy = state;
  status = [stateCopy status];
  if (status > 1)
  {
    if (status == 2)
    {
      selfCopy3 = self;
      v7 = 0;
    }

    else
    {
      if (status != 3)
      {
        goto LABEL_14;
      }

      if ([stateCopy isExplicitContentAllowed])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      selfCopy3 = self;
    }
  }

  else
  {
    if (!status)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

      goto LABEL_14;
    }

    if (status != 1)
    {
      goto LABEL_14;
    }

    selfCopy3 = self;
    v7 = 2;
  }

  [(MPCContentAgeRequirementManager *)selfCopy3 setStatus:v7];
LABEL_14:
}

- (void)_setupWithAgeGateForItem:(id)item
{
  genericObject = [item genericObject];
  flattenedGenericObject = [genericObject flattenedGenericObject];

  if ([flattenedGenericObject type] == 8 && (objc_msgSend(flattenedGenericObject, "tvEpisode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "explicitRating"), objc_msgSend(MEMORY[0x1E6970920], "sharedRestrictionsMonitor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maximumTVShowRatingForAgeGate"), v7, v5, v6 >= v8) || objc_msgSend(flattenedGenericObject, "type") == 9 && (objc_msgSend(flattenedGenericObject, "movie"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "explicitRating"), objc_msgSend(MEMORY[0x1E6970920], "sharedRestrictionsMonitor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "maximumMovieRatingForAgeGate"), v11, v9, v10 >= v12))
  {
    [(MPCContentAgeRequirementManager *)self setStatus:1];
  }
}

- (void)_updateAuthorizationStatusWithAuthorizationState:(id)state forItem:(id)item
{
  itemCopy = item;
  [(MPCContentAgeRequirementManager *)self _setupWithAgeVerificationState:state];
  if ([(MPCContentAgeRequirementManager *)self status]== 2)
  {
    [(MPCContentAgeRequirementManager *)self _setupWithAgeGateForItem:itemCopy];
  }
}

- (id)_retrieveAgeVerificationStateForUserIdentity:(id)identity
{
  identityCopy = identity;
  defaultManager = [MEMORY[0x1E69E4398] defaultManager];
  v5 = [defaultManager ageVerificationStateForUserIdentity:identityCopy];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E69E4398] defaultManager];
    v7 = [defaultManager2 ageVerificationStateForUserIdentity:identityCopy];
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
    defaultManager3 = [MEMORY[0x1E69E4398] defaultManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__MPCContentAgeRequirementManager__retrieveAgeVerificationStateForUserIdentity___block_invoke_2;
    v12[3] = &unk_1E8239120;
    v14 = &v15;
    v10 = v8;
    v13 = v10;
    [defaultManager3 getAgeVerificationStateWithCompletion:v12];

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
  status = [(MPCContentAgeRequirementManager *)self status];
  if (status)
  {
    return status == 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isItemAuthorized:(id)authorized shouldAskForAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v23 = *MEMORY[0x1E69E9840];
  authorizedCopy = authorized;
  if ([authorizedCopy mediaType] == 2048)
  {
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    allowsMusicVideos = [mEMORY[0x1E6970920] allowsMusicVideos];

    if ((allowsMusicVideos & 1) == 0)
    {
      userIdentity = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(userIdentity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v21 = 2114;
        v22 = authorizedCopy;
        _os_log_impl(&dword_1C5C61000, userIdentity, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Music Video playback is not allowed for item - %{public}@", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_23;
    }
  }

  if ([authorizedCopy isExplicitTrack])
  {
    playbackRequestEnvironment = [authorizedCopy playbackRequestEnvironment];
    userIdentity = [playbackRequestEnvironment userIdentity];

    v11 = [(MPCContentAgeRequirementManager *)self _retrieveAgeVerificationStateForUserIdentity:userIdentity];
    [(MPCContentAgeRequirementManager *)self _updateAuthorizationStatusWithAuthorizationState:v11 forItem:authorizedCopy];
    if ([(MPCContentAgeRequirementManager *)self status]== 2)
    {
      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v21 = 2114;
        v22 = authorizedCopy;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Age Requirements satisfied for item: %{public}@", buf, 0x16u);
      }

      v13 = 1;
      goto LABEL_22;
    }

    if ([(MPCContentAgeRequirementManager *)self status]== 3)
    {
      authorizedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPCContentAgeRequirementManager %p - Explicit content playback is not allowed for any item - %@", self, authorizedCopy];
      authorizationError = [(MPCContentAgeRequirementManager *)self authorizationError];
      v16 = [(MPCContentAgeRequirementManager *)self _explicitContentErrorWithUnderlyingError:authorizationError message:authorizedCopy];
      [authorizedCopy setItemError:v16];

      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v21 = 2114;
        v22 = authorizedCopy;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "MPCContentAgeRequirementManager %p - Age Requirements prohibit playback for item: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (authorizationCopy && [(MPCContentAgeRequirementManager *)self _shouldAskPlaybackAuthorizationForItem:authorizedCopy reason:[(MPCContentAgeRequirementManager *)self authorizationReason]])
      {
        v13 = [(MPCContentAgeRequirementManager *)self _askPlaybackAuthorizationForItem:authorizedCopy reason:[(MPCContentAgeRequirementManager *)self authorizationReason]];
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      authorizedCopy = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(authorizedCopy, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v21 = 2114;
        v22 = authorizedCopy;
        _os_log_impl(&dword_1C5C61000, authorizedCopy, OS_LOG_TYPE_DEFAULT, "MPCContentAgeRequirementManager %p - Age Requirements not satisfied and will not request authorization for item: %{public}@", buf, 0x16u);
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