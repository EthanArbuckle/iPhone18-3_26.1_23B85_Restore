@interface MPIdentifierSet(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPIdentifierSet(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v101 = *MEMORY[0x1E69E9840];
  emptyIdentifierSet = [objc_opt_class() emptyIdentifierSet];

  if (emptyIdentifierSet == self)
  {
    dictionary = &unk_1F4599A10;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    modelKind = [self modelKind];
    mpc_jsonValue = [modelKind mpc_jsonValue];
    [dictionary setObject:mpc_jsonValue forKeyedSubscript:@"kind"];

    sources = [self sources];
    [dictionary setObject:sources forKeyedSubscript:@"sources"];

    library = [self library];
    if (library)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      databaseID = [library databaseID];
      [v8 setObject:databaseID forKeyedSubscript:@"db-id"];

      quot = [library persistentID];
      if (quot)
      {
        v11 = quot;
        v12 = &v101 + 1;
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

          *(v12 - 2) = v14 + 48;
          v15 = (v12 - 2);
          --v12;
        }

        while (v13.quot);
        if (v11 < 0)
        {
          *(v12 - 2) = 45;
          v15 = (v12 - 2);
        }

        v16 = CFStringCreateWithBytes(0, v15, &v101 - v15, 0x8000100u, 0);
      }

      else
      {
        v16 = @"0";
      }

      [v8 setObject:v16 forKeyedSubscript:@"pid"];

      if ([library containedPersistentID])
      {
        containedPersistentID = [library containedPersistentID];
        if (containedPersistentID)
        {
          v18 = containedPersistentID;
          v19 = &v101 + 1;
          do
          {
            v20 = lldiv(containedPersistentID, 10);
            containedPersistentID = v20.quot;
            if (v20.rem >= 0)
            {
              LOBYTE(v21) = v20.rem;
            }

            else
            {
              v21 = -v20.rem;
            }

            *(v19 - 2) = v21 + 48;
            v22 = (v19 - 2);
            --v19;
          }

          while (v20.quot);
          if (v18 < 0)
          {
            *(v19 - 2) = 45;
            v22 = (v19 - 2);
          }

          v23 = CFStringCreateWithBytes(0, v22, &v101 - v22, 0x8000100u, 0);
        }

        else
        {
          v23 = @"0";
        }

        [v8 setObject:v23 forKeyedSubscript:@"contained-pid"];
      }

      else
      {
        [v8 setObject:0 forKeyedSubscript:@"contained-pid"];
      }

      if ([library syncID])
      {
        syncID = [library syncID];
        if (syncID)
        {
          v25 = syncID;
          v26 = &v101 + 1;
          do
          {
            v27 = lldiv(syncID, 10);
            syncID = v27.quot;
            if (v27.rem >= 0)
            {
              LOBYTE(v28) = v27.rem;
            }

            else
            {
              v28 = -v27.rem;
            }

            *(v26 - 2) = v28 + 48;
            v29 = (v26 - 2);
            --v26;
          }

          while (v27.quot);
          if (v25 < 0)
          {
            *(v26 - 2) = 45;
            v29 = (v26 - 2);
          }

          v30 = CFStringCreateWithBytes(0, v29, &v101 - v29, 0x8000100u, 0);
        }

        else
        {
          v30 = @"0";
        }

        [v8 setObject:v30 forKeyedSubscript:@"sync"];
      }

      else
      {
        [v8 setObject:0 forKeyedSubscript:@"sync"];
      }

      [dictionary setObject:v8 forKeyedSubscript:@"library"];
    }

    personalizedStore = [self personalizedStore];
    if (personalizedStore)
    {
      v32 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      personID = [personalizedStore personID];
      [v32 setObject:personID forKeyedSubscript:@"person-id"];

      if ([personalizedStore cloudID])
      {
        cloudID = [personalizedStore cloudID];
        if (cloudID)
        {
          v35 = cloudID;
          v36 = &v101 + 1;
          do
          {
            v37 = lldiv(cloudID, 10);
            cloudID = v37.quot;
            if (v37.rem >= 0)
            {
              LOBYTE(v38) = v37.rem;
            }

            else
            {
              v38 = -v37.rem;
            }

            *(v36 - 2) = v38 + 48;
            v39 = (v36 - 2);
            --v36;
          }

          while (v37.quot);
          if (v35 < 0)
          {
            *(v36 - 2) = 45;
            v39 = (v36 - 2);
          }

          v40 = CFStringCreateWithBytes(0, v39, &v101 - v39, 0x8000100u, 0);
        }

        else
        {
          v40 = @"0";
        }

        [v32 setObject:v40 forKeyedSubscript:@"cloud"];
      }

      else
      {
        [v32 setObject:0 forKeyedSubscript:@"cloud"];
      }

      cloudAlbumID = [personalizedStore cloudAlbumID];
      [v32 setObject:cloudAlbumID forKeyedSubscript:@"cloud-album"];

      recommendationID = [personalizedStore recommendationID];
      [v32 setObject:recommendationID forKeyedSubscript:@"reco-id"];

      [dictionary setObject:v32 forKeyedSubscript:@"personal"];
    }

    universalStore = [self universalStore];
    if (universalStore)
    {
      v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
      globalPlaylistID = [universalStore globalPlaylistID];
      [v44 setObject:globalPlaylistID forKeyedSubscript:@"global-playlist"];

      if ([universalStore adamID])
      {
        adamID = [universalStore adamID];
        if (adamID)
        {
          v47 = adamID;
          v48 = &v101 + 1;
          do
          {
            v49 = lldiv(adamID, 10);
            adamID = v49.quot;
            if (v49.rem >= 0)
            {
              LOBYTE(v50) = v49.rem;
            }

            else
            {
              v50 = -v49.rem;
            }

            *(v48 - 2) = v50 + 48;
            v51 = (v48 - 2);
            --v48;
          }

          while (v49.quot);
          if (v47 < 0)
          {
            *(v48 - 2) = 45;
            v51 = (v48 - 2);
          }

          v52 = CFStringCreateWithBytes(0, v51, &v101 - v51, 0x8000100u, 0);
        }

        else
        {
          v52 = @"0";
        }

        [v44 setObject:v52 forKeyedSubscript:@"adam"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"adam"];
      }

      formerAdamIDs = [universalStore formerAdamIDs];
      if ([formerAdamIDs count])
      {
        formerAdamIDs2 = [universalStore formerAdamIDs];
        v55 = [formerAdamIDs2 msv_map:&__block_literal_global_217];
        [v44 setObject:v55 forKeyedSubscript:@"former-ids"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"former-ids"];
      }

      universalCloudLibraryID = [universalStore universalCloudLibraryID];
      [v44 setObject:universalCloudLibraryID forKeyedSubscript:@"ulid"];

      if ([universalStore purchasedAdamID])
      {
        purchasedAdamID = [universalStore purchasedAdamID];
        if (purchasedAdamID)
        {
          v58 = purchasedAdamID;
          v59 = &v101 + 1;
          do
          {
            v60 = lldiv(purchasedAdamID, 10);
            purchasedAdamID = v60.quot;
            if (v60.rem >= 0)
            {
              LOBYTE(v61) = v60.rem;
            }

            else
            {
              v61 = -v60.rem;
            }

            *(v59 - 2) = v61 + 48;
            v62 = (v59 - 2);
            --v59;
          }

          while (v60.quot);
          if (v58 < 0)
          {
            *(v59 - 2) = 45;
            v62 = (v59 - 2);
          }

          v63 = CFStringCreateWithBytes(0, v62, &v101 - v62, 0x8000100u, 0);
        }

        else
        {
          v63 = @"0";
        }

        [v44 setObject:v63 forKeyedSubscript:@"purchased"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"purchased"];
      }

      if ([universalStore subscriptionAdamID])
      {
        subscriptionAdamID = [universalStore subscriptionAdamID];
        if (subscriptionAdamID)
        {
          v65 = subscriptionAdamID;
          v66 = &v101 + 1;
          do
          {
            v67 = lldiv(subscriptionAdamID, 10);
            subscriptionAdamID = v67.quot;
            if (v67.rem >= 0)
            {
              LOBYTE(v68) = v67.rem;
            }

            else
            {
              v68 = -v67.rem;
            }

            *(v66 - 2) = v68 + 48;
            v69 = (v66 - 2);
            --v66;
          }

          while (v67.quot);
          if (v65 < 0)
          {
            *(v66 - 2) = 45;
            v69 = (v66 - 2);
          }

          v70 = CFStringCreateWithBytes(0, v69, &v101 - v69, 0x8000100u, 0);
        }

        else
        {
          v70 = @"0";
        }

        [v44 setObject:v70 forKeyedSubscript:@"subscription"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"subscription"];
      }

      socialProfileID = [universalStore socialProfileID];
      [v44 setObject:socialProfileID forKeyedSubscript:@"social-profile"];

      informalMediaClipID = [universalStore informalMediaClipID];
      [v44 setObject:informalMediaClipID forKeyedSubscript:@"media-clip"];

      informalStaticAssetID = [universalStore informalStaticAssetID];
      [v44 setObject:informalStaticAssetID forKeyedSubscript:@"static-asset"];

      if ([universalStore reportingAdamID])
      {
        reportingAdamID = [universalStore reportingAdamID];
        if (reportingAdamID)
        {
          v75 = reportingAdamID;
          v76 = &v101 + 1;
          do
          {
            v77 = lldiv(reportingAdamID, 10);
            reportingAdamID = v77.quot;
            if (v77.rem >= 0)
            {
              LOBYTE(v78) = v77.rem;
            }

            else
            {
              v78 = -v77.rem;
            }

            *(v76 - 2) = v78 + 48;
            v79 = (v76 - 2);
            --v76;
          }

          while (v77.quot);
          if (v75 < 0)
          {
            *(v76 - 2) = 45;
            v79 = (v76 - 2);
          }

          v80 = CFStringCreateWithBytes(0, v79, &v101 - v79, 0x8000100u, 0);
        }

        else
        {
          v80 = @"0";
        }

        [v44 setObject:v80 forKeyedSubscript:@"reporting-adam-id"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"reporting-adam-id"];
      }

      if ([universalStore assetAdamID])
      {
        assetAdamID = [universalStore assetAdamID];
        if (assetAdamID)
        {
          v82 = assetAdamID;
          v83 = &v101 + 1;
          do
          {
            v84 = lldiv(assetAdamID, 10);
            assetAdamID = v84.quot;
            if (v84.rem >= 0)
            {
              LOBYTE(v85) = v84.rem;
            }

            else
            {
              v85 = -v84.rem;
            }

            *(v83 - 2) = v85 + 48;
            v86 = (v83 - 2);
            --v83;
          }

          while (v84.quot);
          if (v82 < 0)
          {
            *(v83 - 2) = 45;
            v86 = (v83 - 2);
          }

          v87 = CFStringCreateWithBytes(0, v86, &v101 - v86, 0x8000100u, 0);
        }

        else
        {
          v87 = @"0";
        }

        [v44 setObject:v87 forKeyedSubscript:@"asset-adam-id"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"asset-adam-id"];
      }

      [dictionary setObject:v44 forKeyedSubscript:@"universal"];
    }

    radio = [self radio];
    if (radio)
    {
      v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      stationStringID = [radio stationStringID];
      [v89 setObject:stationStringID forKeyedSubscript:@"station-string"];

      stationHash = [radio stationHash];
      [v89 setObject:stationHash forKeyedSubscript:@"station-hash"];

      if ([radio stationID])
      {
        v92 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(radio, "stationID")}];
        [v89 setObject:v92 forKeyedSubscript:@"station-id"];
      }

      else
      {
        [v89 setObject:0 forKeyedSubscript:@"station-id"];
      }

      [dictionary setObject:v89 forKeyedSubscript:@"radio"];
    }

    containerUniqueID = [self containerUniqueID];
    [dictionary setObject:containerUniqueID forKeyedSubscript:@"containerUniqueID"];

    handoffCorrelationID = [self handoffCorrelationID];
    [dictionary setObject:handoffCorrelationID forKeyedSubscript:@"handoffCorrelationID"];

    contentItemID = [self contentItemID];
    [dictionary setObject:contentItemID forKeyedSubscript:@"contentItemID"];

    lyricsID = [self lyricsID];
    [dictionary setObject:lyricsID forKeyedSubscript:@"lyricsID"];

    vendorID = [self vendorID];
    [dictionary setObject:vendorID forKeyedSubscript:@"vendorID"];

    opaqueID = [self opaqueID];
    [dictionary setObject:opaqueID forKeyedSubscript:@"opaqueID"];

    versionHash = [self versionHash];
    [dictionary setObject:versionHash forKeyedSubscript:@"versionHash"];
  }

  return dictionary;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_empty"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    emptyIdentifierSet = [self emptyIdentifierSet];
  }

  else
  {
    v8 = MEMORY[0x1E69706A0];
    v9 = [v4 objectForKeyedSubscript:@"kind"];
    v10 = [v8 payloadValueFromJSONValue:v9];

    v11 = [v4 objectForKeyedSubscript:@"sources"];
    v12 = [self alloc];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &unk_1F4599838;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke;
    v15[3] = &unk_1E82389D8;
    v16 = v4;
    emptyIdentifierSet = [v12 _initWithSources:v13 modelKind:v10 block:v15];
  }

  return emptyIdentifierSet;
}

@end