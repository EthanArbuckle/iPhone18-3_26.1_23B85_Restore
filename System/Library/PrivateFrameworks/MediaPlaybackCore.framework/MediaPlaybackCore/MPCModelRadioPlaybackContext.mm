@interface MPCModelRadioPlaybackContext
- (MPCContinueListeningRadioQueueProviding)continueListeningQueueProvider;
- (MPCModelRadioPlaybackContext)init;
- (MPCModelRadioPlaybackContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionComponents;
- (id)getSharedListeningTracklistWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getRemotePlaybackQueueRepresentationWithCompletion:(id)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPCModelRadioPlaybackContext

- (MPCContinueListeningRadioQueueProviding)continueListeningQueueProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_continueListeningQueueProvider);

  return WeakRetained;
}

- (void)setUserIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
  }

  v7 = v4;
  v5 = [MPCPlaybackRequestEnvironment requestEnvironmentWithUserIdentity:v4];
  playbackRequestEnvironment = self->_playbackRequestEnvironment;
  self->_playbackRequestEnvironment = v5;
}

- (id)descriptionComponents
{
  v14.receiver = self;
  v14.super_class = MPCModelRadioPlaybackContext;
  v3 = [(MPCModelRadioPlaybackContext *)&v14 descriptionComponents];
  v4 = [v3 mutableCopy];

  v5 = [(MPCModelRadioPlaybackContext *)self playbackRequestEnvironment];
  [v4 setObject:v5 forKeyedSubscript:@"playbackRequestEnvironment"];

  [v4 removeObjectForKey:@"repeat/shuffle"];
  [v4 removeObjectForKey:@"queueEndAction"];
  if (self->_continueListeningStation)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"continueListening"];
  }

  else
  {
    v6 = MEMORY[0x1E69706F8];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __53__MPCModelRadioPlaybackContext_descriptionComponents__block_invoke;
    v11 = &unk_1E82392C0;
    v12 = v4;
    v13 = self;
    [v6 performWithoutEnforcement:&v8];
  }

  [v4 setObject:self->_delegateTokenB forKeyedSubscript:{@"delegateTokenB", v8, v9, v10, v11}];

  return v4;
}

void __53__MPCModelRadioPlaybackContext_descriptionComponents__block_invoke(uint64_t a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16[0] = @"nowPlaying";
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = *(v2 + 184);
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v2 = *(a1 + 40);
  }

  v14 = v4;
  v17[0] = v4;
  v16[1] = @"seed";
  v5 = *(v2 + 192);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    v2 = *(a1 + 40);
  }

  v17[1] = v6;
  v16[2] = @"stationID";
  v7 = [*(v2 + 200) identifiers];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v8;
  v16[3] = @"stationName";
  v9 = [*(*(a1 + 40) + 200) name];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v10;
  v16[4] = @"stationURL";
  v11 = *(*(a1 + 40) + 208);
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  [v15 addEntriesFromDictionary:v13];

  if (v11)
  {
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  if (!v7)
  {
  }

  if (v5)
  {
    if (v3)
    {
      return;
    }

LABEL_22:

    return;
  }

  if (!v3)
  {
    goto LABEL_22;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = MPCModelRadioPlaybackContext;
  v4 = [(MPCModelRadioPlaybackContext *)&v13 copyWithZone:a3];
  v5 = [(MPCModelRadioPlaybackContext *)self playbackRequestEnvironment];
  [v4 setPlaybackRequestEnvironment:v5];

  v6 = [(MPCModelRadioPlaybackContext *)self nowPlayingContentReference];
  [v4 setNowPlayingContentReference:v6];

  v7 = [(MPCModelRadioPlaybackContext *)self seedContentReference];
  [v4 setSeedContentReference:v7];

  v8 = [(MPCModelRadioPlaybackContext *)self radioStation];
  [v4 setRadioStation:v8];

  v9 = [(MPCModelRadioPlaybackContext *)self stationURL];
  [v4 setStationURL:v9];

  [v4 setContinueListeningStation:{-[MPCModelRadioPlaybackContext continueListeningStation](self, "continueListeningStation")}];
  [v4 setContinueListeningMaxQueueReferences:{-[MPCModelRadioPlaybackContext continueListeningMaxQueueReferences](self, "continueListeningMaxQueueReferences")}];
  [v4 setContinueListeningPrefetchThreshold:{-[MPCModelRadioPlaybackContext continueListeningPrefetchThreshold](self, "continueListeningPrefetchThreshold")}];
  v10 = [(MPCModelRadioPlaybackContext *)self continueListeningQueueProvider];
  [v4 setContinueListeningQueueProvider:v10];

  v11 = [(MPCModelRadioPlaybackContext *)self delegateTokenB];
  [v4 setDelegateTokenB:v11];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPCModelRadioPlaybackContext;
  v4 = a3;
  [(MPCModelRadioPlaybackContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_radioStation forKey:{@"Station", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_continueListeningStation forKey:@"ContinueListening"];
  [v4 encodeObject:self->_stationURL forKey:@"StationURL"];
  [v4 encodeObject:self->_nowPlayingContentReference forKey:@"NowPlayingContentReference"];
  [v4 encodeObject:self->_seedContentReference forKey:@"SeedContentReference"];
  [v4 encodeObject:self->_playbackRequestEnvironment forKey:@"PlaybackRequestEnvironment"];
}

- (MPCModelRadioPlaybackContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MPCModelRadioPlaybackContext;
  v5 = [(MPCModelRadioPlaybackContext *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Station"];
    radioStation = v5->_radioStation;
    v5->_radioStation = v6;

    v5->_continueListeningStation = [v4 decodeBoolForKey:@"ContinueListening"];
    v5->_continueListeningMaxQueueReferences = [v4 decodeIntegerForKey:@"CL_MaxQueueReferences"];
    v5->_continueListeningPrefetchThreshold = [v4 decodeIntegerForKey:@"CL_PrefetchThreshold"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StationURL"];
    stationURL = v5->_stationURL;
    v5->_stationURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NowPlayingContentReference"];
    nowPlayingContentReference = v5->_nowPlayingContentReference;
    v5->_nowPlayingContentReference = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SeedContentReference"];
    seedContentReference = v5->_seedContentReference;
    v5->_seedContentReference = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PlaybackRequestEnvironment"];
    playbackRequestEnvironment = v5->_playbackRequestEnvironment;
    v5->_playbackRequestEnvironment = v14;
  }

  return v5;
}

- (MPCModelRadioPlaybackContext)init
{
  v6.receiver = self;
  v6.super_class = MPCModelRadioPlaybackContext;
  v2 = [(MPCModelRadioPlaybackContext *)&v6 init];
  if (v2)
  {
    v3 = +[MPCPlaybackRequestEnvironment activeAccountRequestEnvironment];
    playbackRequestEnvironment = v2->_playbackRequestEnvironment;
    v2->_playbackRequestEnvironment = v3;
  }

  return v2;
}

- (id)getSharedListeningTracklistWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPCModelRadioPlaybackContext *)self seedContentReference];
  v6 = [v5 referenceModelObjectIdentifiers];
  v7 = [v6 universalStore];

  quot = [v7 purchasedAdamID];
  if (quot || (quot = [v7 subscriptionAdamID]) != 0 || (quot = objc_msgSend(v7, "adamID")) != 0)
  {
    v9 = quot;
    v10 = MEMORY[0x1E69E45B0];
    v11 = &v30 + 1;
    do
    {
      v12 = lldiv(quot, 10);
      quot = v12.quot;
      if (v12.rem >= 0)
      {
        LOBYTE(v13) = v12.rem;
      }

      else
      {
        v13 = -v12.rem;
      }

      *(v11 - 2) = v13 + 48;
      v14 = (v11 - 2);
      --v11;
    }

    while (v12.quot);
    if (v9 < 0)
    {
      *(v11 - 2) = 45;
      v14 = (v11 - 2);
    }

    v15 = CFStringCreateWithBytes(0, v14, &v30 - v14, 0x8000100u, 0);
    v16 = [v10 itemWithMediaIdentifier:v15];

    v17 = MEMORY[0x1E69E45A8];
    v18 = [(MPCModelRadioPlaybackContext *)self playActivityFeatureName];
    v19 = [v17 radioContainerWithSeedItem:v16 featureName:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(MPCModelRadioPlaybackContext *)self radioStation];
  v21 = [v20 identifiers];
  v22 = [v21 radio];
  v23 = [v22 stationStringID];

  if (v23)
  {
    v24 = MEMORY[0x1E69E45A8];
    v25 = [(MPCModelRadioPlaybackContext *)self playActivityFeatureName];
    v26 = [v24 radioContainerWithMediaIdentifier:v23 featureName:v25];

    v19 = v26;
  }

  v27 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if (v19)
  {
    v28 = objc_alloc_init(MEMORY[0x1E69B1458]);
    [v28 appendSection:v19];
    (*(v4 + 2))(v4, v28, 0, 0);
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:9 debugDescription:{@"Unsupported content [Radio] %@", self}];
    (*(v4 + 2))(v4, 0, 0, v28);
  }

  [v27 setCompletedUnitCount:1];

  return v27;
}

- (void)getRemotePlaybackQueueRepresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_MPCProtoRadioCreationProperties);
  v6 = [(MPCModelRadioPlaybackContext *)self playActivityFeatureName];
  if (v6 && v5)
  {
    objc_storeStrong(&v5->_playActivityFeatureName, v6);
  }

  v7 = [(MPCModelRadioPlaybackContext *)self playActivityQueueGroupingID];
  if (v7 && v5)
  {
    objc_storeStrong(&v5->_playActivityQueueGroupingID, v7);
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__19399;
  v65[4] = __Block_byref_object_dispose__19400;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 1;
  v8 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelRadioPlaybackContext.MPCPlaybackQueue.serialQueue", 0);
  v9 = dispatch_group_create();
  v10 = [(MPCModelRadioPlaybackContext *)self playbackRequestEnvironment];
  v11 = [v10 userIdentity];
  v12 = v11;
  v38 = v7;
  v39 = v6;
  v37 = v4;
  if (v11)
  {
    v41 = v11;
  }

  else
  {
    v41 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  }

  v13 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v62 = 0;
  v14 = [v13 getPropertiesForUserIdentity:v41 error:&v62];
  v40 = v62;
  v36 = v14;
  v15 = [v14 DSID];
  v16 = [v15 unsignedLongLongValue];

  if (v16)
  {
    v17 = MEMORY[0x1E69E4680];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
    v19 = [v17 specificAccountWithDSID:v18];
    v20 = [v19 identityAllowingDelegation:1];

    dispatch_group_enter(v9);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke;
    v52[3] = &unk_1E82360E8;
    v53 = v13;
    v21 = v20;
    v54 = v21;
    v61 = v16;
    v55 = v9;
    v59 = v65;
    v60 = v63;
    v56 = v8;
    v57 = self;
    v58 = v5;
    [v53 getDelegationUUIDsForUserIdentity:v21 completionHandler:v52];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_4;
    block[3] = &unk_1E8236110;
    v50 = v65;
    v49 = v40;
    v51 = v63;
    dispatch_group_async(v9, v8, block);
    v21 = v49;
  }

  v22 = [(MPCModelRadioPlaybackContext *)self seedContentReference];
  v23 = [v22 ICRadioContentReference];

  if (!v23)
  {
    v30 = [(MPCModelRadioPlaybackContext *)self radioStation];
    v31 = [v30 identifiers];
    v32 = [v31 radio];
    v26 = [v32 stationStringID];

    if ([v26 length] && v5)
    {
      objc_storeStrong(&v5->_radioStationID, v26);
    }

    v33 = [(MPCModelRadioPlaybackContext *)self stationURL];
    v28 = v33;
    if (!v33)
    {
      goto LABEL_27;
    }

    nowPlayingContentReference = [(_MPCProtoRadioContentReference *)v33 absoluteString];
    if (nowPlayingContentReference && v5)
    {
      objc_storeStrong(&v5->_radioStationURLString, nowPlayingContentReference);
    }

    goto LABEL_26;
  }

  v24 = _MPCProtoRadioContentReferenceFromICRadioContentReference(v23);
  if (v5)
  {
    objc_storeStrong(&v5->_seedContentReference, v24);
  }

  v25 = [(MPCModelRadioPlaybackContext *)self nowPlayingContentReference];
  v26 = [v25 ICRadioContentReference];

  if (v26)
  {
    v27 = _MPCProtoRadioContentReferenceFromICRadioContentReference(v26);
    v28 = v27;
    if (!v5)
    {
LABEL_27:

      goto LABEL_28;
    }

    v28 = v27;
    nowPlayingContentReference = v5->_nowPlayingContentReference;
    v5->_nowPlayingContentReference = v28;
LABEL_26:

    goto LABEL_27;
  }

LABEL_28:

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_5;
  v42[3] = &unk_1E8236138;
  v43 = v5;
  v44 = self;
  v45 = v37;
  v46 = v63;
  v47 = v65;
  v34 = v37;
  v35 = v5;
  dispatch_group_notify(v9, v8, v42);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
}

void __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 firstObject];
  if (![v3 count])
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];

    v7 = *(a1 + 32);
    v34 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v7 addDelegationUUIDs:v8 forUserIdentity:*(a1 + 40) completionHandler:0];

    v4 = v6;
  }

  v9 = +[MPCPlaybackAccountManager sharedManager];
  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = &v35 + 1;
    quot = *(a1 + 96);
    do
    {
      v13 = lldiv(quot, 10);
      quot = v13.quot;
      if (v13.rem >= 0)
      {
        LOBYTE(v14) = v13.rem;
      }

      else
      {
        v14 = -v13.rem;
      }

      *(v11 - 2) = v14 + 48;
      v15 = (v11 - 2);
      --v11;
    }

    while (v13.quot);
    if (v10 < 0)
    {
      *(v11 - 2) = 45;
      v15 = (v11 - 2);
    }

    v16 = CFStringCreateWithBytes(0, v15, &v35 - v15, 0x8000100u, 0);
  }

  else
  {
    v16 = @"0";
  }

  v17 = [v9 accountForDSID:v16];

  v18 = [v17 hasCatalogPlaybackCapability];
  v19 = [v17 hasDelegationCapability];
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2;
  v24[3] = &unk_1E82360C0;
  v31 = *(a1 + 96);
  v32 = v18;
  v33 = v19;
  v25 = v4;
  v26 = v17;
  v30 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v20;
  v29 = *(a1 + 72);
  v22 = v17;
  v23 = v4;
  dispatch_group_async(v28, v21, v24);
  dispatch_group_leave(*(a1 + 48));
}

void __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    objc_storeStrong(v3, *(a1 + 32));
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = objc_alloc(MEMORY[0x1E6970510]);
    v3 = [*(a1 + 32) data];
    if (v3)
    {
      v12 = [v2 initWithIdentifier:@"com.apple.music.playbackqueue.radio" data:v3];
    }

    else
    {
      v7 = [MEMORY[0x1E695DEF0] data];
      v12 = [v2 initWithIdentifier:@"com.apple.music.playbackqueue.radio" data:v7];
    }

    [v12 setRequestingImmediatePlayback:1];
    v8 = [*(a1 + 40) playActivityRecommendationData];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    }

    else
    {
      v9 = 0;
    }

    [v12 setSiriRecommendationIdentifier:v9];
    (*(*(a1 + 48) + 16))();

    v10 = v12;
    goto LABEL_14;
  }

  v4 = *(a1 + 48);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:0 userInfo:0];
    (*(v4 + 16))(v4, 0, v11);
    v10 = v11;
LABEL_14:

    return;
  }

  v5 = *(v4 + 16);
  v6 = *(a1 + 48);

  v5(v6, 0);
}

void __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = +[_MPCProtoDelegateInfo currentDeviceDelegateInfo];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 88);
    *(v2 + 124) |= 1u;
    *(v2 + 32) = v4;
    [(_MPCProtoDelegateInfo *)v2 setUuid:?];
    if (*(a1 + 96) != 1)
    {
      PBRepeatedInt32Add();
      goto LABEL_16;
    }

    PBRepeatedInt32Add();
    if ((*(a1 + 97) & 1) == 0)
    {
      goto LABEL_16;
    }

    PBRepeatedInt32Add();
  }

  else
  {
    [(_MPCProtoDelegateInfo *)0 setUuid:?];
    if ((*(a1 + 96) & 1) == 0 || (*(a1 + 97) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 40);
  v20 = 0;
  v6 = [v5 delegateTokenAWithError:&v20];
  v7 = v20;
  v8 = v20;
  if (v6)
  {
    if (v3)
    {
      PBRepeatedInt32Add();
    }

    [(_MPCProtoDelegateInfo *)v3 setTokenA:v6];
  }

  else
  {
    v9 = *(*(a1 + 72) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, v7);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v12 = [*(a1 + 48) delegateTokenB];
  if (v12)
  {
    v13 = [[_MPCProtoDelegateInfoTokenB alloc] initWithData:v12];
    dispatch_group_enter(*(a1 + 56));
    v14 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3;
    v16[3] = &unk_1E8236098;
    v17 = v3;
    v19 = *(a1 + 72);
    v18 = *(a1 + 56);
    [v14 getDelegateTokenEWithTokenB:v13 completion:v16];
  }

LABEL_16:
  v15 = *(a1 + 64);
  if (v15)
  {
    objc_storeStrong((v15 + 8), v3);
  }
}

void __101__MPCModelRadioPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    [(_MPCProtoDelegateInfo *)*(a1 + 32) setTokenE:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

@end