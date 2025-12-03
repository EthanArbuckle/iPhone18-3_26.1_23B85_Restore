@interface MPCReportingPlaybackObserver
+ (MPCReportingPlaybackObserver)sharedReportingPlaybackObserver;
- (id)_init;
- (id)_newReportingPlaybackActivityEventForPlayActivityEvent:(id)event eventSource:(id)source;
- (id)newPlayActivityEvent;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)recordPlayActivityEvents:(id)events forEventSource:(id)source;
@end

@implementation MPCReportingPlaybackObserver

- (id)_newReportingPlaybackActivityEventForPlayActivityEvent:(id)event eventSource:(id)source
{
  eventCopy = event;
  if (eventCopy)
  {
    sourceCopy = source;
    v7 = objc_alloc_init(MPCReportingPlaybackActivityEvent);
    [(MPCReportingPlaybackActivityEvent *)v7 setPlayActivityEvent:eventCopy];
    shouldReportPlayEventsToStore = [sourceCopy shouldReportPlayEventsToStore];

    v9 = (shouldReportPlayEventsToStore & 1) != 0 || [eventCopy eventType] != 0;
    [(MPCReportingPlaybackActivityEvent *)v7 setShouldReportToStore:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)recordPlayActivityEvents:(id)events forEventSource:(id)source
{
  v132 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  sourceCopy = source;
  if (!sourceCopy || ![eventsCopy count])
  {
    goto LABEL_86;
  }

  selfCopy = self;
  identityPropertiesLoader = [sourceCopy identityPropertiesLoader];
  [sourceCopy eventDuration];
  v9 = v8;
  itemGenericObject = [sourceCopy itemGenericObject];
  overrideItemType = [sourceCopy overrideItemType];
  trackInfo = [sourceCopy trackInfo];
  modelPlayEvent = [sourceCopy modelPlayEvent];
  featureName = [sourceCopy featureName];
  recommendationData = [sourceCopy recommendationData];
  flattenedGenericObject = [itemGenericObject flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];
  identifiers = [anyObject identifiers];

  type = [flattenedGenericObject type];
  v101 = flattenedGenericObject;
  switch(type)
  {
    case 9:
      v20 = 0;
      isArtistUploadedContent = 0;
      v19 = 1;
      goto LABEL_9;
    case 6:
      v19 = 0;
      isArtistUploadedContent = 0;
      v20 = 1;
LABEL_9:
      v21 = 1;
      goto LABEL_10;
    case 1:
      song = [flattenedGenericObject song];
      hasVideo = [song hasVideo];
      isArtistUploadedContent = [song isArtistUploadedContent];

      v19 = 0;
      v20 = 0;
      v21 = hasVideo;
LABEL_10:
      v113 = v21;
      goto LABEL_12;
  }

  v19 = 0;
  v20 = 0;
  isArtistUploadedContent = 0;
  v113 = 0;
LABEL_12:
  v22 = modelPlayEvent;
  itemType = [v22 itemType];
  v106 = identifiers;
  v99 = v22;
  v114 = isArtistUploadedContent;
  if (itemType <= 2)
  {
    if (itemType == 1)
    {

      v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
      album = [v22 album];
      identifiers2 = [album identifiers];
      universalStore = [identifiers2 universalStore];
      subscriptionAdamID = [universalStore subscriptionAdamID];
      if (subscriptionAdamID)
      {
        [v24 setAdamID:subscriptionAdamID];
      }

      else
      {
        universalStore2 = [identifiers2 universalStore];
        [v24 setAdamID:{objc_msgSend(universalStore2, "adamID")}];

        identifiers = v106;
      }

      personalizedStore = [identifiers personalizedStore];
      cloudAlbumID = [personalizedStore cloudAlbumID];
      [v24 setCloudAlbumID:cloudAlbumID];

      v36 = 0;
      v37 = 4;
      goto LABEL_43;
    }

    if (itemType == 2)
    {

      v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
      artist = [v22 artist];
      identifiers3 = [artist identifiers];
      universalStore3 = [identifiers3 universalStore];
      subscriptionAdamID2 = [universalStore3 subscriptionAdamID];
      if (subscriptionAdamID2)
      {
        [v24 setAdamID:subscriptionAdamID2];
      }

      else
      {
        universalStore4 = [identifiers3 universalStore];
        [v24 setAdamID:{objc_msgSend(universalStore4, "adamID")}];
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

  if (itemType == 4)
  {
    obj = v20;
    v42 = v19;
    v43 = itemGenericObject;

    v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
    radioStation = [v22 radioStation];
    identifiers4 = [radioStation identifiers];
    radio = [identifiers4 radio];
    stationStringID = [radio stationStringID];

    if ([stationStringID length])
    {
      [v24 setStationStringID:stationStringID];
    }

    radio2 = [identifiers4 radio];
    stationHash = [radio2 stationHash];

    if ([stationHash length])
    {
      [v24 setStationHash:stationHash];
    }

    radio3 = [identifiers4 radio];
    [v24 setStationID:{objc_msgSend(radio3, "stationID")}];

    v36 = 1;
    v112 = 1;
    itemGenericObject = v43;
    v19 = v42;
    v20 = obj;
  }

  else
  {
    if (itemType != 3)
    {
      goto LABEL_23;
    }

    playlist = [v22 playlist];
    type2 = [playlist type];

    v24 = objc_alloc_init(MEMORY[0x1E69E4500]);
    playlist2 = [v22 playlist];
    identifiers5 = [playlist2 identifiers];
    v33 = identifiers5;
    if (type2 == 3)
    {
      personalizedStore2 = [identifiers5 personalizedStore];
      cloudID = [personalizedStore2 cloudID];

      if (cloudID)
      {
        [v24 setCloudPlaylistFolderID:cloudID];
      }

      v36 = 0;
      v37 = 6;
      goto LABEL_43;
    }

    obja = v19;
    v51 = v24;
    v52 = itemGenericObject;
    universalStore5 = [identifiers5 universalStore];
    globalPlaylistID = [universalStore5 globalPlaylistID];

    if ([globalPlaylistID length])
    {
      [v51 setGlobalPlaylistID:globalPlaylistID];
    }

    personalizedStore3 = [v33 personalizedStore];
    cloudID2 = [personalizedStore3 cloudID];

    if (cloudID2)
    {
      [v51 setCloudPlaylistID:cloudID2];
    }

    universalStore6 = [v33 universalStore];
    universalCloudLibraryID = [universalStore6 universalCloudLibraryID];

    if ([universalCloudLibraryID length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v51 setCloudUniversalLibraryID:universalCloudLibraryID];
    }

    v59 = MEMORY[0x1E69706F8];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __72__MPCReportingPlaybackObserver_recordPlayActivityEvents_forEventSource___block_invoke;
    v128[3] = &unk_1E82392C0;
    v60 = v51;
    v129 = v60;
    v130 = playlist2;
    v61 = playlist2;
    [v59 performWithoutEnforcement:v128];

    v36 = 0;
    v112 = 2;
    itemGenericObject = v52;
    v24 = v60;
    v19 = obja;
  }

LABEL_44:
  v103 = itemGenericObject;
  if (itemGenericObject)
  {
    v66 = objc_alloc_init(MEMORY[0x1E69E4508]);
    if (v114)
    {
      v67 = overrideItemType;
      if (!overrideItemType)
      {
        v67 = 6;
      }

      overrideItemType = v67;
      v68 = v106;
      universalStore7 = [v106 universalStore];
      subscriptionAdamID3 = [universalStore7 subscriptionAdamID];
      if (subscriptionAdamID3)
      {
        [v66 setSubscriptionAdamID:subscriptionAdamID3];
      }

      else
      {
        universalStore8 = [v106 universalStore];
        [v66 setSubscriptionAdamID:{objc_msgSend(universalStore8, "adamID")}];
      }

LABEL_72:

LABEL_73:
      lyricsID = [sourceCopy lyricsID];
      [v66 setLyricsID:lyricsID];

      [v66 setEquivalencySourceAdamID:{objc_msgSend(sourceCopy, "equivalencySourceAdamID")}];
      universalStore9 = [v68 universalStore];
      v115 = v66;
      [v66 setReportingAdamID:{objc_msgSend(universalStore9, "reportingAdamID")}];

      goto LABEL_74;
    }

    v68 = v106;
    universalStore10 = [v106 universalStore];
    v72 = universalStore10;
    if (v36)
    {
      adamID = [universalStore10 adamID];
      if (!adamID)
      {
        [v106 universalStore];
        v75 = v74 = v66;
        adamID = [v75 subscriptionAdamID];

        v66 = v74;
        v68 = v106;
      }

      [v66 setRadioAdamID:adamID];
      v76 = overrideItemType;
      if (overrideItemType)
      {
        v77 = 1;
      }

      else
      {
        v77 = adamID == 0;
      }

      if (!v77)
      {
        v76 = 1;
      }

      overrideItemType = v76;
      goto LABEL_73;
    }

    [v66 setSubscriptionAdamID:{objc_msgSend(universalStore10, "subscriptionAdamID")}];

    universalStore11 = [v106 universalStore];
    [v66 setPurchasedAdamID:{objc_msgSend(universalStore11, "purchasedAdamID")}];

    v79 = 8;
    if (v20)
    {
      v79 = 9;
    }

    if (((v19 | v20) & 1) == 0)
    {
      if (![v66 subscriptionAdamID] && !objc_msgSend(v66, "purchasedAdamID") || overrideItemType)
      {
LABEL_68:
        personalizedStore4 = [v106 personalizedStore];
        [v66 setCloudID:{objc_msgSend(personalizedStore4, "cloudID")}];

        universalStore12 = [v106 universalStore];
        universalStore7 = [universalStore12 universalCloudLibraryID];

        if ([universalStore7 length] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v66 setCloudUniversalLibraryID:universalStore7];
        }

        goto LABEL_72;
      }

      v79 = 1;
    }

    overrideItemType = v79;
    goto LABEL_68;
  }

  v113 = 0;
  v115 = 0;
LABEL_74:
  requestingBundleIdentifier = [sourceCopy requestingBundleIdentifier];
  requestingBundleVersion = [sourceCopy requestingBundleVersion];
  jingleTimedMetadata = [sourceCopy jingleTimedMetadata];
  isSiriInitiated = [sourceCopy isSiriInitiated];
  v104 = sourceCopy;
  isPrivateListeningEnabled = [sourceCopy isPrivateListeningEnabled];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v105 = eventsCopy;
  objb = eventsCopy;
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
        [v93 setTrackInfo:trackInfo];
        [v93 setRequestingBundleIdentifier:requestingBundleIdentifier];
        [v93 setRequestingBundleVersion:requestingBundleVersion];
        [v93 setMediaType:v113];
        [v93 setContainerType:v112];
        v94 = v24;
        [v93 setContainerIDs:v24];
        [v93 setFeatureName:featureName];
        [v93 setRecommendationData:recommendationData];
        [v93 setItemDuration:v9];
        [v93 setItemIDs:v115];
        [v93 setSiriInitiated:isSiriInitiated];
        [v93 setPrivateListeningEnabled:isPrivateListeningEnabled];
        [v93 setRepeatPlayMode:0];
        [v93 setShufflePlayMode:0];
        [v93 setAutoPlayMode:0];
        timedMetadata = [v93 timedMetadata];

        if (!timedMetadata)
        {
          [v93 setTimedMetadata:jingleTimedMetadata];
        }

        if (![v93 itemType])
        {
          [v93 setItemType:overrideItemType];
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
  v120 = identityPropertiesLoader;
  v121 = objb;
  v122 = selfCopy;
  sourceCopy = v104;
  v123 = v104;
  v97 = identityPropertiesLoader;
  v98 = [v96 initWithStartHandler:v119];
  [(NSOperationQueue *)selfCopy->_recordEventOperationQueue addOperation:v98];

  eventsCopy = v105;
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

  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  deviceName = [currentDeviceInfo deviceName];
  [v3 setDeviceName:deviceName];

  [v3 setSystemReleaseType:newPlayActivityEvent_systemReleaseType];
  date = [MEMORY[0x1E695DF00] date];
  [v3 setEventDate:date];

  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v3 setEventTimeZone:systemTimeZone];

  v8 = objc_alloc(MEMORY[0x1E69E4618]);
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v10 = [v8 initWithIdentity:activeAccount];

  userAgent = [v10 userAgent];
  [v3 setBuildVersion:userAgent];

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

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  typeCopy = type;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MPCReportingPlaybackObserver_environmentMonitorDidChangeNetworkType___block_invoke;
  v6[3] = &unk_1E82392C0;
  v6[4] = self;
  v7 = typeCopy;
  v5 = typeCopy;
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
    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    [mEMORY[0x1E69E4428] registerObserver:v2];
    v2->_offline = [mEMORY[0x1E69E4428] networkType] == 0;
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