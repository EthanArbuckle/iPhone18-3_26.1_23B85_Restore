@interface MPIdentifierSet
@end

@implementation MPIdentifierSet

__CFString *__63__MPIdentifierSet_MPCPlaybackEngineEventPayload__mpc_jsonValue__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  quot = [a2 longLongValue];
  if (quot)
  {
    v3 = quot;
    v4 = &v10 + 1;
    do
    {
      v5 = lldiv(quot, 10);
      quot = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *(v4 - 2) = v6 + 48;
      v7 = (v4 - 2);
      --v4;
    }

    while (v5.quot);
    if (v3 < 0)
    {
      *(v4 - 2) = 45;
      v7 = (v4 - 2);
    }

    v8 = CFStringCreateWithBytes(0, v7, &v10 - v7, 0x8000100u, 0);
  }

  else
  {
    v8 = @"0";
  }

  return v8;
}

void __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"containerUniqueID"];
  [v3 setContainerUniqueID:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"handoffCorrelationID"];
  [v3 setHandoffCorrelationID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"contentItemID"];
  [v3 setContentItemID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"lyricsID"];
  [v3 setLyricsID:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"vendorID"];
  [v3 setVendorID:v8];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"opaqueID"];
  [v3 setOpaqueID:v9];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"versionHash"];
  [v3 setVersionHash:v10];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"library"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"db-id"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_2;
    v27[3] = &unk_1E8232408;
    v28 = v12;
    [v3 setLibraryIdentifiersWithDatabaseID:v13 block:v27];
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"personal"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:@"person-id"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_3;
    v25[3] = &unk_1E82389B0;
    v26 = v15;
    [v3 setPersonalStoreIdentifiersWithPersonID:v16 block:v25];
  }

  v17 = [*(a1 + 32) objectForKeyedSubscript:@"universal"];
  v18 = v17;
  if (v17)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_4;
    v23[3] = &unk_1E8238988;
    v24 = v17;
    [v3 setUniversalStoreIdentifiersWithBlock:v23];
  }

  v19 = [*(a1 + 32) objectForKeyedSubscript:@"radio"];
  v20 = v19;
  if (v19)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_6;
    v21[3] = &unk_1E8237EE8;
    v22 = v19;
    [v3 setRadioIdentifiersWithBlock:v21];
  }
}

void __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"pid"];
  [v4 setPersistentID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"contained-pid"];
  [v4 setContainedPersistentID:{objc_msgSend(v6, "longLongValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"sync"];
  [v4 setSyncID:{objc_msgSend(v7, "longLongValue")}];
}

void __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"cloud"];
  [v4 setCloudID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"cloud-album"];
  [v4 setCloudAlbumID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"reco-id"];
  [v4 setRecommendationID:v7];
}

void __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"global-playlist"];
  [v4 setGlobalPlaylistID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"adam"];
  [v4 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"former-ids"];
  v8 = [v7 msv_map:&__block_literal_global_173];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [v4 setFormerAdamIDs:v10];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"ulid"];
  [v4 setUniversalCloudLibraryID:v11];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"purchased"];
  [v4 setPurchasedAdamID:{objc_msgSend(v12, "longLongValue")}];

  v13 = [*(a1 + 32) objectForKeyedSubscript:@"subscription"];
  [v4 setSubscriptionAdamID:{objc_msgSend(v13, "longLongValue")}];

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"social-profile"];
  [v4 setSocialProfileID:v14];

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"media-clip"];
  [v4 setInformalMediaClipID:v15];

  v16 = [*(a1 + 32) objectForKeyedSubscript:@"static-asset"];
  [v4 setInformalStaticAssetID:v16];

  v17 = [*(a1 + 32) objectForKeyedSubscript:@"reporting-adam-id"];
  [v4 setReportingAdamID:{objc_msgSend(v17, "longLongValue")}];

  v18 = [*(a1 + 32) objectForKeyedSubscript:@"asset-adam-id"];
  [v4 setAssetAdamID:{objc_msgSend(v18, "longLongValue")}];
}

void __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"station-string"];
  [v4 setStationStringID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"station-hash"];
  [v4 setStationHash:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"station-id"];
  [v4 setStationID:{objc_msgSend(v7, "longLongValue")}];
}

uint64_t __76__MPIdentifierSet_MPCPlaybackEngineEventPayload__payloadValueFromJSONValue___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 longLongValue];

  return [v2 numberWithLongLong:v3];
}

@end