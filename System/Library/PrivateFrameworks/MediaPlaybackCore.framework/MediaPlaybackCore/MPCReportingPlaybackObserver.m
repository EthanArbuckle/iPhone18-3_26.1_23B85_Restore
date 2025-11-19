@interface MPCReportingPlaybackObserver
+ (MPCReportingPlaybackObserver)sharedReportingPlaybackObserver;
- (id)_init;
- (id)_newReportingPlaybackActivityEventForPlayActivityEvent:(id)a3 eventSource:(id)a4;
- (id)newPlayActivityEvent;
- (void)environmentMonitorDidChangeNetworkType:(id)a3;
- (void)recordPlayActivityEvents:(id)a3 forEventSource:(id)a4;
@end

@implementation MPCReportingPlaybackObserver

- (id)_newReportingPlaybackActivityEventForPlayActivityEvent:(id)a3 eventSource:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = a4;
    v7 = objc_alloc_init(MPCReportingPlaybackActivityEvent);
    [(MPCReportingPlaybackActivityEvent *)v7 setPlayActivityEvent:v5];
    v8 = [v6 shouldReportPlayEventsToStore];

    v9 = (v8 & 1) != 0 || [v5 eventType] != 0;
    [(MPCReportingPlaybackActivityEvent *)v7 setShouldReportToStore:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)recordPlayActivityEvents:(id)a3 forEventSource:(id)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 || ![v6 count])
  {
    goto LABEL_86;
  }

  v102 = self;
  v100 = [v7 identityPropertiesLoader];
  [v7 eventDuration];
  v9 = v8;
  v10 = [v7 itemGenericObject];
  v108 = [v7 overrideItemType];
  v118 = [v7 trackInfo];
  v11 = [v7 modelPlayEvent];
  v117 = [v7 featureName];
  v116 = [v7 recommendationData];
  v12 = [v10 flattenedGenericObject];
  v13 = [v12 anyObject];
  v14 = [v13 identifiers];

  v15 = [v12 type];
  v101 = v12;
  switch(v15)
  {
    case 9:
      v20 = 0;
      v18 = 0;
      v19 = 1;
      goto LABEL_9;
    case 6:
      v19 = 0;
      v18 = 0;
      v20 = 1;
LABEL_9:
      v21 = 1;
      goto LABEL_10;
    case 1:
      v16 = [v12 song];
      v17 = [v16 hasVideo];
      v18 = [v16 isArtistUploadedContent];

      v19 = 0;
      v20 = 0;
      v21 = v17;
LABEL_10:
      v113 = v21;
      goto LABEL_12;
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v113 = 0;
LABEL_12:
  v22 = v11;
  v23 = [v22 itemType];
  v106 = v14;
  v99 = v22;
  v114 = v18;
  if (v23 <= 2)
  {
    if (v23 == 1)
    {

      v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
      v38 = [v22 album];
      v39 = [v38 identifiers];
      v40 = [v39 universalStore];
      v41 = [v40 subscriptionAdamID];
      if (v41)
      {
        [v24 setAdamID:v41];
      }

      else
      {
        v63 = [v39 universalStore];
        [v24 setAdamID:{objc_msgSend(v63, "adamID")}];

        v14 = v106;
      }

      v64 = [v14 personalizedStore];
      v65 = [v64 cloudAlbumID];
      [v24 setCloudAlbumID:v65];

      v36 = 0;
      v37 = 4;
      goto LABEL_43;
    }

    if (v23 == 2)
    {

      v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
      v25 = [v22 artist];
      v26 = [v25 identifiers];
      v27 = [v26 universalStore];
      v28 = [v27 subscriptionAdamID];
      if (v28)
      {
        [v24 setAdamID:v28];
      }

      else
      {
        v62 = [v26 universalStore];
        [v24 setAdamID:{objc_msgSend(v62, "adamID")}];
      }

      v36 = 0;
      v37 = 3;
LABEL_43:
      v112 = v37;
      goto LABEL_44;
    }

LABEL_23:

    v36 = 0;
    v112 = 0;
    v24 = 0;
    goto LABEL_44;
  }

  if (v23 == 4)
  {
    obj = v20;
    v42 = v19;
    v43 = v10;

    v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
    v44 = [v22 radioStation];
    v45 = [v44 identifiers];
    v46 = [v45 radio];
    v47 = [v46 stationStringID];

    if ([v47 length])
    {
      [v24 setStationStringID:v47];
    }

    v48 = [v45 radio];
    v49 = [v48 stationHash];

    if ([v49 length])
    {
      [v24 setStationHash:v49];
    }

    v50 = [v45 radio];
    [v24 setStationID:{objc_msgSend(v50, "stationID")}];

    v36 = 1;
    v112 = 1;
    v10 = v43;
    v19 = v42;
    v20 = obj;
  }

  else
  {
    if (v23 != 3)
    {
      goto LABEL_23;
    }

    v29 = [v22 playlist];
    v30 = [v29 type];

    v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
    v31 = [v22 playlist];
    v32 = [v31 identifiers];
    v33 = v32;
    if (v30 == 3)
    {
      v34 = [v32 personalizedStore];
      v35 = [v34 cloudID];

      if (v35)
      {
        [v24 setCloudPlaylistFolderID:v35];
      }

      v36 = 0;
      v37 = 6;
      goto LABEL_43;
    }

    obja = v19;
    v51 = v24;
    v52 = v10;
    v53 = [v32 universalStore];
    v54 = [v53 globalPlaylistID];

    if ([v54 length])
    {
      [v51 setGlobalPlaylistID:v54];
    }

    v55 = [v33 personalizedStore];
    v56 = [v55 cloudID];

    if (v56)
    {
      [v51 setCloudPlaylistID:v56];
    }

    v57 = [v33 universalStore];
    v58 = [v57 universalCloudLibraryID];

    if ([v58 length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v51 setCloudUniversalLibraryID:v58];
    }

    v59 = MEMORY[0x1E69706F8];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke;
    v128[3] = &unk_1E82392C0;
    v60 = v51;
    v129 = v60;
    v130 = v31;
    v61 = v31;
    [v59 performWithoutEnforcement:v128];

    v36 = 0;
    v112 = 2;
    v10 = v52;
    v24 = v60;
    v19 = obja;
  }

LABEL_44:
  v103 = v10;
  if (v10)
  {
    v66 = objc_alloc_init(MEMORY[0x1E69E4508]);
    if (v114)
    {
      v67 = v108;
      if (!v108)
      {
        v67 = 6;
      }

      v108 = v67;
      v68 = v106;
      v69 = [v106 universalStore];
      v70 = [v69 subscriptionAdamID];
      if (v70)
      {
        [v66 setSubscriptionAdamID:v70];
      }

      else
      {
        v82 = [v106 universalStore];
        [v66 setSubscriptionAdamID:{objc_msgSend(v82, "adamID")}];
      }

LABEL_72:

LABEL_73:
      v83 = [v7 lyricsID];
      [v66 setLyricsID:v83];

      [v66 setEquivalencySourceAdamID:{objc_msgSend(v7, "equivalencySourceAdamID")}];
      v84 = [v68 universalStore];
      v115 = v66;
      [v66 setReportingAdamID:{objc_msgSend(v84, "reportingAdamID")}];

      goto LABEL_74;
    }

    v68 = v106;
    v71 = [v106 universalStore];
    v72 = v71;
    if (v36)
    {
      v73 = [v71 adamID];
      if (!v73)
      {
        [v106 universalStore];
        v75 = v74 = v66;
        v73 = [v75 subscriptionAdamID];

        v66 = v74;
        v68 = v106;
      }

      [v66 setRadioAdamID:v73];
      v76 = v108;
      if (v108)
      {
        v77 = 1;
      }

      else
      {
        v77 = v73 == 0;
      }

      if (!v77)
      {
        v76 = 1;
      }

      v108 = v76;
      goto LABEL_73;
    }

    [v66 setSubscriptionAdamID:{objc_msgSend(v71, "subscriptionAdamID")}];

    v78 = [v106 universalStore];
    [v66 setPurchasedAdamID:{objc_msgSend(v78, "purchasedAdamID")}];

    v79 = 8;
    if (v20)
    {
      v79 = 9;
    }

    if (((v19 | v20) & 1) == 0)
    {
      if (![v66 subscriptionAdamID] && !objc_msgSend(v66, "purchasedAdamID") || v108)
      {
LABEL_68:
        v80 = [v106 personalizedStore];
        [v66 setCloudID:{objc_msgSend(v80, "cloudID")}];

        v81 = [v106 universalStore];
        v69 = [v81 universalCloudLibraryID];

        if ([v69 length] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v66 setCloudUniversalLibraryID:v69];
        }

        goto LABEL_72;
      }

      v79 = 1;
    }

    v108 = v79;
    goto LABEL_68;
  }

  v113 = 0;
  v115 = 0;
LABEL_74:
  v85 = [v7 requestingBundleIdentifier];
  v86 = [v7 requestingBundleVersion];
  v107 = [v7 jingleTimedMetadata];
  v87 = [v7 isSiriInitiated];
  v104 = v7;
  v88 = [v7 isPrivateListeningEnabled];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v105 = v6;
  objb = v6;
  v89 = [objb countByEnumeratingWithState:&v124 objects:v131 count:16];
  if (v89)
  {
    v90 = v89;
    v91 = *v125;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v125 != v91)
        {
          objc_enumerationMutation(objb);
        }

        v93 = *(*(&v124 + 1) + 8 * i);
        [v93 setTrackInfo:v118];
        [v93 setRequestingBundleIdentifier:v85];
        [v93 setRequestingBundleVersion:v86];
        [v93 setMediaType:v113];
        [v93 setContainerType:v112];
        v94 = v24;
        [v93 setContainerIDs:v24];
        [v93 setFeatureName:v117];
        [v93 setRecommendationData:v116];
        [v93 setItemDuration:v9];
        [v93 setItemIDs:v115];
        [v93 setSiriInitiated:v87];
        [v93 setPrivateListeningEnabled:v88];
        [v93 setRepeatPlayMode:0];
        [v93 setShufflePlayMode:0];
        [v93 setAutoPlayMode:0];
        v95 = [v93 timedMetadata];

        if (!v95)
        {
          [v93 setTimedMetadata:v107];
        }

        if (![v93 itemType])
        {
          [v93 setItemType:v108];
        }

        v24 = v94;
      }

      v90 = [objb countByEnumeratingWithState:&v124 objects:v131 count:16];
    }

    while (v90);
  }

  v96 = objc_alloc(MEMORY[0x1E69704B8]);
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_2;
  v119[3] = &unk_1E8237370;
  v120 = v100;
  v121 = objb;
  v122 = v102;
  v7 = v104;
  v123 = v104;
  v97 = v100;
  v98 = [v96 initWithStartHandler:v119];
  [(NSOperationQueue *)v102->_recordEventOperationQueue addOperation:v98];

  v6 = v105;
LABEL_86:
}

void __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) cloudVersionHash];
  [v1 setPlaylistVersionHash:v2];
}

void __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_3;
  v9[3] = &unk_1E8237348;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v3;
  v8 = v3;
  [v4 loadReportingIdentityPropertiesWithCompletionHandler:v9];
}

void __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_4;
  block[3] = &unk_1E8237320;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 40) storeFrontID];
        [v8 setStoreFrontID:v9];

        [v8 setStoreAccountID:{objc_msgSend(*(a1 + 40), "storeAccountID")}];
        v10 = [*(a1 + 40) enqueuerProperties];
        [v8 setEnqueuerProperties:v10];

        [v8 setSBEnabled:{objc_msgSend(*(a1 + 40), "hasSubscriptionPlaybackCapability")}];
        v11 = [*(a1 + 40) householdID];
        [v8 setHouseholdID:v11];

        v12 = [*(a1 + 48) _newReportingPlaybackActivityEventForPlayActivityEvent:v8 eventSource:*(a1 + 56)];
        if (v12)
        {
          [v2 addObject:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v13 = [MEMORY[0x1E69E4510] shared];
    v14 = [v2 msv_map:&__block_literal_global_37_21846];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke_6;
    v15[3] = &unk_1E8238800;
    v16 = *(a1 + 64);
    [v13 recordPlayActivityEvents:v14 shouldFlush:1 withCompletionHandler:v15];
  }
}

- (id)newPlayActivityEvent
{
  v3 = objc_alloc_init(MEMORY[0x1E69E44F8]);
  if (newPlayActivityEvent_sOnceToken != -1)
  {
    dispatch_once(&newPlayActivityEvent_sOnceToken, &__block_literal_global_9_21851);
  }

  v4 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v5 = [v4 deviceName];
  [v3 setDeviceName:v5];

  [v3 setSystemReleaseType:newPlayActivityEvent_systemReleaseType];
  v6 = [MEMORY[0x1E695DF00] date];
  [v3 setEventDate:v6];

  v7 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v3 setEventTimeZone:v7];

  v8 = objc_alloc(MEMORY[0x1E69E4618]);
  v9 = [MEMORY[0x1E69E4680] activeAccount];
  v10 = [v8 initWithIdentity:v9];

  v11 = [v10 userAgent];
  [v3 setBuildVersion:v11];

  [v3 setSourceType:0];
  [v3 setOffline:self->_offline];

  return v3;
}

uint64_t __52__MPCReportingPlaybackObserver_newPlayActivityEvent__block_invoke()
{
  v4 = MGCopyAnswer();
  v0 = [v4 isEqualToString:@"Beta"];
  if (v0)
  {
    v1 = 3;
LABEL_5:
    v2 = v4;
LABEL_6:
    newPlayActivityEvent_systemReleaseType = v1;
    goto LABEL_7;
  }

  v0 = [v4 isEqualToString:@"Internal"];
  if (v0)
  {
    v1 = 4;
    goto LABEL_5;
  }

  v0 = [v4 isEqualToString:@"Carrier"];
  v2 = v4;
  if (v0)
  {
    v1 = 2;
    goto LABEL_6;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v0, v2);
}

- (void)environmentMonitorDidChangeNetworkType:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MPCReportingPlaybackObserver_environmentMonitorDidChangeNetworkType___block_invoke;
  v6[3] = &unk_1E82392C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __71__MPCReportingPlaybackObserver_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) networkType];
  *(*(a1 + 32) + 16) = result == 0;
  return result;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = MPCReportingPlaybackObserver;
  v2 = [(MPCReportingPlaybackObserver *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    recordEventOperationQueue = v2->_recordEventOperationQueue;
    v2->_recordEventOperationQueue = v3;

    [(NSOperationQueue *)v2->_recordEventOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_recordEventOperationQueue setName:@"com.apple.MediaPlaybackCore.MPCReportingPlaybackObserver.recordEventOperationQueue"];
    v5 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v5 registerObserver:v2];
    v2->_offline = [v5 networkType] == 0;
    [(NSOperationQueue *)v2->_recordEventOperationQueue setQualityOfService:17];
  }

  return v2;
}

+ (MPCReportingPlaybackObserver)sharedReportingPlaybackObserver
{
  if (sharedReportingPlaybackObserver_sSharedReportingPlaybackObserverOnceToken != -1)
  {
    dispatch_once(&sharedReportingPlaybackObserver_sSharedReportingPlaybackObserverOnceToken, &__block_literal_global_21882);
  }

  v3 = sharedReportingPlaybackObserver_sSharedReportingPlaybackObserver;

  return v3;
}

uint64_t __63__MPCReportingPlaybackObserver_sharedReportingPlaybackObserver__block_invoke()
{
  v0 = [[MPCReportingPlaybackObserver alloc] _init];
  v1 = sharedReportingPlaybackObserver_sSharedReportingPlaybackObserver;
  sharedReportingPlaybackObserver_sSharedReportingPlaybackObserver = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end