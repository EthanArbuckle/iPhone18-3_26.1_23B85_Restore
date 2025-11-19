@interface MPIdentifierSet(MPCPlaybackEngineEventPayload)
+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload;
- (id)mpc_jsonValue;
@end

@implementation MPIdentifierSet(MPCPlaybackEngineEventPayload)

- (id)mpc_jsonValue
{
  v101 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() emptyIdentifierSet];

  if (v2 == a1)
  {
    v3 = &unk_1F4599A10;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = [a1 modelKind];
    v5 = [v4 mpc_jsonValue];
    [v3 setObject:v5 forKeyedSubscript:@"kind"];

    v6 = [a1 sources];
    [v3 setObject:v6 forKeyedSubscript:@"sources"];

    v7 = [a1 library];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      v9 = [v7 databaseID];
      [v8 setObject:v9 forKeyedSubscript:@"db-id"];

      quot = [v7 persistentID];
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

      if ([v7 containedPersistentID])
      {
        v17 = [v7 containedPersistentID];
        if (v17)
        {
          v18 = v17;
          v19 = &v101 + 1;
          do
          {
            v20 = lldiv(v17, 10);
            v17 = v20.quot;
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

      if ([v7 syncID])
      {
        v24 = [v7 syncID];
        if (v24)
        {
          v25 = v24;
          v26 = &v101 + 1;
          do
          {
            v27 = lldiv(v24, 10);
            v24 = v27.quot;
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

      [v3 setObject:v8 forKeyedSubscript:@"library"];
    }

    v31 = [a1 personalizedStore];
    if (v31)
    {
      v32 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      v33 = [v31 personID];
      [v32 setObject:v33 forKeyedSubscript:@"person-id"];

      if ([v31 cloudID])
      {
        v34 = [v31 cloudID];
        if (v34)
        {
          v35 = v34;
          v36 = &v101 + 1;
          do
          {
            v37 = lldiv(v34, 10);
            v34 = v37.quot;
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

      v41 = [v31 cloudAlbumID];
      [v32 setObject:v41 forKeyedSubscript:@"cloud-album"];

      v42 = [v31 recommendationID];
      [v32 setObject:v42 forKeyedSubscript:@"reco-id"];

      [v3 setObject:v32 forKeyedSubscript:@"personal"];
    }

    v43 = [a1 universalStore];
    if (v43)
    {
      v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
      v45 = [v43 globalPlaylistID];
      [v44 setObject:v45 forKeyedSubscript:@"global-playlist"];

      if ([v43 adamID])
      {
        v46 = [v43 adamID];
        if (v46)
        {
          v47 = v46;
          v48 = &v101 + 1;
          do
          {
            v49 = lldiv(v46, 10);
            v46 = v49.quot;
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

      v53 = [v43 formerAdamIDs];
      if ([v53 count])
      {
        v54 = [v43 formerAdamIDs];
        v55 = [v54 msv_map:&__block_literal_global_217];
        [v44 setObject:v55 forKeyedSubscript:@"former-ids"];
      }

      else
      {
        [v44 setObject:0 forKeyedSubscript:@"former-ids"];
      }

      v56 = [v43 universalCloudLibraryID];
      [v44 setObject:v56 forKeyedSubscript:@"ulid"];

      if ([v43 purchasedAdamID])
      {
        v57 = [v43 purchasedAdamID];
        if (v57)
        {
          v58 = v57;
          v59 = &v101 + 1;
          do
          {
            v60 = lldiv(v57, 10);
            v57 = v60.quot;
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

      if ([v43 subscriptionAdamID])
      {
        v64 = [v43 subscriptionAdamID];
        if (v64)
        {
          v65 = v64;
          v66 = &v101 + 1;
          do
          {
            v67 = lldiv(v64, 10);
            v64 = v67.quot;
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

      v71 = [v43 socialProfileID];
      [v44 setObject:v71 forKeyedSubscript:@"social-profile"];

      v72 = [v43 informalMediaClipID];
      [v44 setObject:v72 forKeyedSubscript:@"media-clip"];

      v73 = [v43 informalStaticAssetID];
      [v44 setObject:v73 forKeyedSubscript:@"static-asset"];

      if ([v43 reportingAdamID])
      {
        v74 = [v43 reportingAdamID];
        if (v74)
        {
          v75 = v74;
          v76 = &v101 + 1;
          do
          {
            v77 = lldiv(v74, 10);
            v74 = v77.quot;
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

      if ([v43 assetAdamID])
      {
        v81 = [v43 assetAdamID];
        if (v81)
        {
          v82 = v81;
          v83 = &v101 + 1;
          do
          {
            v84 = lldiv(v81, 10);
            v81 = v84.quot;
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

      [v3 setObject:v44 forKeyedSubscript:@"universal"];
    }

    v88 = [a1 radio];
    if (v88)
    {
      v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      v90 = [v88 stationStringID];
      [v89 setObject:v90 forKeyedSubscript:@"station-string"];

      v91 = [v88 stationHash];
      [v89 setObject:v91 forKeyedSubscript:@"station-hash"];

      if ([v88 stationID])
      {
        v92 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v88, "stationID")}];
        [v89 setObject:v92 forKeyedSubscript:@"station-id"];
      }

      else
      {
        [v89 setObject:0 forKeyedSubscript:@"station-id"];
      }

      [v3 setObject:v89 forKeyedSubscript:@"radio"];
    }

    v93 = [a1 containerUniqueID];
    [v3 setObject:v93 forKeyedSubscript:@"containerUniqueID"];

    v94 = [a1 handoffCorrelationID];
    [v3 setObject:v94 forKeyedSubscript:@"handoffCorrelationID"];

    v95 = [a1 contentItemID];
    [v3 setObject:v95 forKeyedSubscript:@"contentItemID"];

    v96 = [a1 lyricsID];
    [v3 setObject:v96 forKeyedSubscript:@"lyricsID"];

    v97 = [a1 vendorID];
    [v3 setObject:v97 forKeyedSubscript:@"vendorID"];

    v98 = [a1 opaqueID];
    [v3 setObject:v98 forKeyedSubscript:@"opaqueID"];

    v99 = [a1 versionHash];
    [v3 setObject:v99 forKeyedSubscript:@"versionHash"];
  }

  return v3;
}

+ (id)payloadValueFromJSONValue:()MPCPlaybackEngineEventPayload
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_empty"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [a1 emptyIdentifierSet];
  }

  else
  {
    v8 = MEMORY[0x1E69706A0];
    v9 = [v4 objectForKeyedSubscript:@"kind"];
    v10 = [v8 payloadValueFromJSONValue:v9];

    v11 = [v4 objectForKeyedSubscript:@"sources"];
    v12 = [a1 alloc];
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
    v7 = [v12 _initWithSources:v13 modelKind:v10 block:v15];
  }

  return v7;
}

@end