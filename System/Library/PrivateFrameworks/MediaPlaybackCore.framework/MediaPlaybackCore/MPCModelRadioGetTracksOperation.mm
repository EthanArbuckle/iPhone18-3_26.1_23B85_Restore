@interface MPCModelRadioGetTracksOperation
- (MPCModelRadioGetTracksOperation)initWithGetTracksRequest:(id)request siriAssetInfo:(id)info radioQueueFeeder:(id)feeder;
- (id)_cacheTracksForStep:(id)step;
- (void)_runStep:(id)step withFinishHandler:(id)handler;
- (void)execute;
@end

@implementation MPCModelRadioGetTracksOperation

- (void)_runStep:(id)step withFinishHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  stepCopy = step;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    radioQueueFeederPointerForLogging = self->_radioQueueFeederPointerForLogging;
    *buf = 134218498;
    v16 = radioQueueFeederPointerForLogging;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = stepCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "RQF %p [GTO %p]: _runStep: [performWithCompletionHandler] step=%{public}@", buf, 0x20u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MPCModelRadioGetTracksOperation__runStep_withFinishHandler___block_invoke;
  v12[3] = &unk_1E82351F0;
  v12[4] = self;
  v13 = stepCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = stepCopy;
  [v11 performWithCompletionHandler:v12];
}

void __62__MPCModelRadioGetTracksOperation__runStep_withFinishHandler___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 288);
    *buf = 134219010;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v37 = v6;
    LOWORD(v38) = 2114;
    *(&v38 + 2) = v3;
    WORD5(v38) = 1024;
    HIDWORD(v38) = [v3 isFinished];
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "RQF %p [GTO %p]: _runStep: [completed] step=%{public}@ nextStep=%{public}@ nextStepIsFinished=%{BOOL}u", buf, 0x30u);
  }

  if ([v3 isFinished])
  {
    v8 = [v3 error];
    v9 = [v3 response];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 tracklistActionType] != 1;
      v12 = [*(a1 + 32) _cacheTracksForStep:v3];
      v35 = objc_alloc_init(MEMORY[0x1E6970818]);
      v13 = *(*(a1 + 32) + 272);
      v14 = [v10 stationMetadata];
      v34 = v13;
      if (v14)
      {
        v15 = MEMORY[0x1E69708B0];
        v16 = *MEMORY[0x1E696FEA8];
        *buf = *MEMORY[0x1E696FE68];
        *&buf[8] = v16;
        v17 = *MEMORY[0x1E696FE78];
        *&buf[16] = *MEMORY[0x1E696FE70];
        v37 = v17;
        v18 = *MEMORY[0x1E696FED0];
        *&v38 = *MEMORY[0x1E696FED8];
        *(&v38 + 1) = v18;
        v19 = *MEMORY[0x1E696FEB8];
        v39 = *MEMORY[0x1E696FEC8];
        v40 = v19;
        v41 = *MEMORY[0x1E696FEB0];
        [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:9];
        v20 = v33 = v14;
        v21 = [v15 propertySetWithProperties:v20];

        v22 = [[MPCModelRadioStationBuilder alloc] initWithRequestedProperties:v21];
        [v13 requestContext];
        v32 = v10;
        v23 = v11;
        v24 = v12;
        v26 = v25 = v8;
        v27 = [v26 identity];
        v28 = [(MPCModelRadioStationBuilder *)v22 modelRadioStationForMetadata:v33 userIdentity:v27];

        v8 = v25;
        v12 = v24;
        v11 = v23;
        v10 = v32;

        v14 = v33;
      }

      else
      {
        v31 = objc_alloc(MEMORY[0x1E6970750]);
        v21 = [MEMORY[0x1E6970550] emptyIdentifierSet];
        v28 = [v31 initWithIdentifiers:v21 block:&__block_literal_global_16205];
      }

      [v35 appendSection:v28];
      if (v12)
      {
        [v35 appendItems:v12];
      }

      v29 = [v10 performanceMetrics];
      v30 = [[MPCModelRadioGetTracksResponse alloc] initWithTracks:v35 tracklistAction:v11];
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _runStep:v3 withFinishHandler:*(a1 + 48)];
  }
}

- (id)_cacheTracksForStep:(id)step
{
  v79 = *MEMORY[0x1E69E9840];
  stepCopy = step;
  response = [stepCopy response];
  tracks = [response tracks];

  if (tracks)
  {
    v6 = [MEMORY[0x1E69E4570] flattenedTracksWithTracks:tracks];
  }

  else
  {
    v6 = 0;
  }

  delegatedIdentityProperties = [stepCopy delegatedIdentityProperties];
  v41 = stepCopy;
  identityProperties = [stepCopy identityProperties];
  dSID = [identityProperties DSID];
  unsignedLongLongValue = [dSID unsignedLongLongValue];

  dSID2 = [delegatedIdentityProperties DSID];
  unsignedLongLongValue2 = [dSID2 unsignedLongLongValue];

  mEMORY[0x1E6970990] = [MEMORY[0x1E6970990] sharedCache];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v48 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v48)
  {
    v44 = *v63;
    v10 = 0x1E695D000uLL;
    do
    {
      v11 = 0;
      do
      {
        if (*v63 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v11;
        v12 = *(*(&v62 + 1) + 8 * v11);
        v13 = objc_alloc_init(MEMORY[0x1E6970998]);
        [v13 setAccountID:unsignedLongLongValue];
        [v13 setRequestType:3];
        [v13 setStoreRadioAdamID:{objc_msgSend(v12, "storeAdamID")}];
        v50 = v13;
        [v13 setDelegatedAccountID:unsignedLongLongValue2];
        v14 = objc_alloc_init(MEMORY[0x1E6970820]);
        if ([v12 trackType] == 4)
        {
          [v14 setLiveRadioStream:1];
        }

        v53 = v14;
        fileAssets = [v12 fileAssets];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v16 = [fileAssets countByEnumeratingWithState:&v58 objects:v77 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v59;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v59 != v19)
              {
                objc_enumerationMutation(fileAssets);
              }

              v21 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:*(*(&v58 + 1) + 8 * i)];
              if (v21)
              {
                if (!v18)
                {
                  v18 = [objc_alloc(*(v10 + 3952)) initWithCapacity:{objc_msgSend(fileAssets, "count")}];
                }

                [v18 addObject:v21];
              }
            }

            v17 = [fileAssets countByEnumeratingWithState:&v58 objects:v77 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        v22 = v53;
        [v53 setFileAssetInfoList:v18];
        expirationDate = [v12 expirationDate];
        [expirationDate timeIntervalSinceNow];
        if (v24 >= 3600.0)
        {
          v25 = expirationDate;
        }

        else
        {
          v25 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];

          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            radioQueueFeederPointerForLogging = self->_radioQueueFeederPointerForLogging;
            expirationDate2 = [v12 expirationDate];
            *buf = 134219010;
            v68 = radioQueueFeederPointerForLogging;
            v69 = 2048;
            selfCopy = self;
            v22 = v53;
            v71 = 2114;
            v72 = v12;
            v73 = 2114;
            v74 = expirationDate2;
            v75 = 2114;
            v76 = v25;
            _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "RQF %p [GTO %p]: _cacheTracksForStep: override %{public}@ response expiration date from %{public}@ to %{public}@", buf, 0x34u);
          }
        }

        v52 = v25;
        hlsAsset = [v12 hlsAsset];
        if (hlsAsset)
        {
          v30 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:hlsAsset];
          [v22 setHlsAssetInfo:v30];
        }

        v49 = hlsAsset;
        v31 = objc_alloc_init(*(v10 + 3952));
        radioStreamAssets = [v12 radioStreamAssets];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v33 = [radioStreamAssets countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v55;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v55 != v35)
              {
                objc_enumerationMutation(radioStreamAssets);
              }

              v37 = [objc_alloc(MEMORY[0x1E69709F8]) initWithiTunesCloudStoreRadioStreamAssetInfo:*(*(&v54 + 1) + 8 * j)];
              if (v37)
              {
                [v31 addObject:v37];
              }
            }

            v34 = [radioStreamAssets countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v34);
        }

        v38 = v52;
        if ([v31 count])
        {
          [v53 setRadioStreamAssetInfoList:v31];
        }

        v10 = 0x1E695D000;
        if (![v18 count])
        {

          v38 = 0;
        }

        [v53 setExpirationDate:v38];
        [mEMORY[0x1E6970990] addCachedResponse:v53 forRequest:v50];

        v11 = v51 + 1;
      }

      while (v51 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v48);
  }

  return obj;
}

- (void)execute
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = MPSharedBackgroundTaskProvider();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MPCModelRadioGetTracksOperation_execute__block_invoke;
  v9[3] = &unk_1E8238488;
  v9[4] = &v10;
  v4 = [v3 beginTaskWithName:@"com.apple.MediaPlaybackCore.MPCModelRadioGetTracksOperation" expirationHandler:v9];

  v11[3] = v4;
  reasonType = [(ICRadioGetTracksRequest *)self->_request reasonType];
  v6 = off_1E822D700;
  if (reasonType != 1)
  {
    v6 = off_1E822D708;
  }

  v7 = [objc_alloc(*v6) initWithGetTracksRequest:self->_request siriAssetInfo:self->_siriAssetInfo];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MPCModelRadioGetTracksOperation_execute__block_invoke_2;
  v8[3] = &unk_1E82351C8;
  v8[4] = self;
  v8[5] = &v10;
  [(MPCModelRadioGetTracksOperation *)self _runStep:v7 withFinishHandler:v8];

  _Block_object_dispose(&v10, 8);
}

void __42__MPCModelRadioGetTracksOperation_execute__block_invoke(uint64_t a1)
{
  v2 = MPSharedBackgroundTaskProvider();
  [v2 endTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69B1358];
}

void __42__MPCModelRadioGetTracksOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = v12[37];
  if (v13)
  {
    (*(v13 + 16))(v12[37], v9, v10, v11);
    v14 = *(a1 + 32);
    v15 = *(v14 + 296);
    *(v14 + 296) = 0;

    v12 = *(a1 + 32);
  }

  [v12 finishWithError:v11];
  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x1E69B1358])
  {
    v16 = MPSharedBackgroundTaskProvider();
    [v16 endTask:*(*(*(a1 + 40) + 8) + 24)];
  }
}

- (MPCModelRadioGetTracksOperation)initWithGetTracksRequest:(id)request siriAssetInfo:(id)info radioQueueFeeder:(id)feeder
{
  requestCopy = request;
  infoCopy = info;
  feederCopy = feeder;
  v17.receiver = self;
  v17.super_class = MPCModelRadioGetTracksOperation;
  v11 = [(MPAsyncOperation *)&v17 init];
  if (v11)
  {
    v12 = [requestCopy copy];
    request = v11->_request;
    v11->_request = v12;

    v14 = [infoCopy copy];
    siriAssetInfo = v11->_siriAssetInfo;
    v11->_siriAssetInfo = v14;

    v11->_radioQueueFeederPointerForLogging = feederCopy;
  }

  return v11;
}

@end