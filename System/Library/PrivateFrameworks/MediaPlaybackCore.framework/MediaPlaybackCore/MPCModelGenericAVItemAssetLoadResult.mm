@interface MPCModelGenericAVItemAssetLoadResult
+ (id)assetLoadResultWithStoreAssetPlaybackResponse:(id)a3 assetLoadProperties:(id)a4 source:(int64_t)a5 error:(id *)a6;
- (BOOL)hasValidAsset;
- (id)description;
- (id)descriptionDictionary;
@end

@implementation MPCModelGenericAVItemAssetLoadResult

+ (id)assetLoadResultWithStoreAssetPlaybackResponse:(id)a3 assetLoadProperties:(id)a4 source:(int64_t)a5 error:(id *)a6
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v83 = a5;
  if (![v9 isLiveRadioStream])
  {
    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v10;
  if ([v10 prefersHighQualityContent])
  {
    [v11 addObject:&unk_1F4599238];
  }

  [v11 addObject:&unk_1F4599250];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"flavor IN %@ AND streamURL != nil", v11];
  v14 = [v9 radioStreamAssetInfoList];
  v15 = [v14 filteredArrayUsingPredicate:v13];
  v16 = [v15 mutableCopy];

  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke;
  v98[3] = &unk_1E8233390;
  v99 = v11;
  v17 = v11;
  [v16 sortUsingComparator:v98];
  v18 = [v16 firstObject];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = [v9 radioStreamAssetInfoList];
    v19 = [v20 firstObject];

    if (!v19)
    {
      v21 = 0;
      goto LABEL_10;
    }
  }

  v21 = objc_alloc_init(a1);
  v22 = [v19 streamURL];
  [v21 setAssetURL:v22];

  v23 = [v19 keyServerURL];
  [v21 setStreamingKeyServerURL:v23];

  v24 = [v19 keyCertificateURL];
  [v21 setStreamingKeyCertificateURL:v24];

  [v21 setITunesStoreStream:{objc_msgSend(v19, "isiTunesStoreStream")}];
  [v21 setAllowsAssetInfoCaching:1];
  [v21 setIsCloudStreamingAsset:1];
  [v21 setIsHLSAsset:{objc_msgSend(v19, "streamProtocol") == 1}];
  if ([v21 isHLSAsset])
  {
    v25 = [v9 hlsAssetInfo];
    v26 = [v25 keyServerAdamID];
    [v21 setStreamingKeyAdamID:v26];

    v27 = [v25 keyServerProtocolType];
    [v21 setKeyServerProtocolType:v27];
  }

LABEL_10:

  v10 = v12;
  a5 = v83;
  if (v21)
  {
LABEL_23:
    v42 = 0;
    goto LABEL_77;
  }

LABEL_11:
  if (([v10 allowsHLSContent] & 1) != 0 || objc_msgSend(v10, "preferredAudioAssetType") >= 2)
  {
    v28 = [v9 hlsAssetInfo];
    if (v28)
    {
      v29 = v28;
      v21 = objc_alloc_init(a1);
      v30 = [v29 playlistURL];
      [v21 setAssetURL:v30];

      v31 = [v29 keyServerURL];
      [v21 setStreamingKeyServerURL:v31];

      v32 = [v29 keyCertificateURL];
      [v21 setStreamingKeyCertificateURL:v32];

      v33 = [v29 keyServerProtocolType];
      [v21 setKeyServerProtocolType:v33];

      [v21 setITunesStoreStream:{objc_msgSend(v29, "isiTunesStoreStream")}];
      v34 = [v29 alternatePlaylistURL];
      [v21 setAlternateHLSPlaylistURL:v34];

      v35 = [v29 alternateKeyServerURL];
      [v21 setAlternateHLSKeyServerURL:v35];

      v36 = [v29 alternateKeyCertificateURL];
      [v21 setAlternateHLSKeyCertificateURL:v36];

      [v21 setIsHLSAsset:1];
      [v21 setAllowsAssetInfoCaching:1];
      [v21 setIsCloudStreamingAsset:1];
      [v21 setAssetPathExtension:*MEMORY[0x1E69E41A0]];
      [v21 setAssetQualityType:2];
      v37 = [v29 keyServerAdamID];
      [v21 setStreamingKeyAdamID:v37];

      [v21 setAllowsAssetCaching:{objc_msgSend(v10, "prefersVideoContent") ^ 1}];
      v38 = [v10 storeAsset];
      v39 = [v38 endpointType];

      if ((v39 - 1) >= 2)
      {
        v41 = v39 == 3 ? 2 : 0;
      }

      else
      {
        v40 = [v29 keyServerProtocolType];
        v41 = [v40 isEqualToString:*MEMORY[0x1E69703F0]] ? 2 : 1;
      }

      [v21 setAssetProtectionType:v41];

      if (v21)
      {
        goto LABEL_23;
      }
    }
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = [v10 prefersHighQualityContent];
  if ([v10 prefersVideoContent])
  {
    if (v44)
    {
      [v43 addObject:&unk_1F4599268];
      [v43 addObject:&unk_1F4599280];
    }

    [v43 addObject:&unk_1F4599298];
  }

  v81 = v10;
  if (v44)
  {
    [v43 addObject:&unk_1F45992B0];
    [v43 addObject:&unk_1F45992C8];
  }

  [v43 addObject:&unk_1F45992E0];
  [v43 addObject:&unk_1F45992F8];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v82 = v9;
  v45 = [v9 fileAssetInfoList];
  v46 = [v45 countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v95;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v95 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v94 + 1) + 8 * i);
        v52 = [v51 assetURL];

        if (v52)
        {
          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v48 addObject:v51];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v94 objects:v103 count:16];
    }

    while (v47);
  }

  else
  {
    v48 = 0;
  }

  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke_21;
  v92[3] = &unk_1E82333B8;
  v53 = v43;
  v93 = v53;
  [v48 sortUsingComparator:v92];
  v54 = [v48 firstObject];
  if (v54)
  {
    v80 = v53;
    v21 = objc_alloc_init(a1);
    v55 = [v54 assetURL];
    [v21 setAssetURL:v55];

    v56 = [v54 flavorType];
    v57 = [v48 count];
    if ((v56 - 101) < 2 || v57 == 1 || (v56 & 0xFFFFFFFFFFFFFFFELL) == 202)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    [v21 setAssetQualityType:v60];
    v61 = [v54 fileExtension];
    [v21 setAssetPathExtension:v61];

    [v21 setIsCloudStreamingAsset:1];
    [v21 setOnlineSubscriptionKeysRequired:{objc_msgSend(v82, "onlineSubscriptionKeysRequired")}];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v62 = [v54 fairPlayInfoList];
    v63 = [v62 countByEnumeratingWithState:&v88 objects:v102 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = 0;
      v66 = *v89;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v89 != v66)
          {
            objc_enumerationMutation(v62);
          }

          v68 = [*(*(&v88 + 1) + 8 * j) purchaseBundleSinfDictionary];
          if ([v68 count])
          {
            if (!v65)
            {
              v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v65 addObject:v68];
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v64);
    }

    else
    {
      v65 = 0;
    }

    v10 = v81;
    if ([v65 count])
    {
      v100 = @"sinfs";
      v101 = v65;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      [v21 setPurchaseBundleDictionary:v70];
    }

    v71 = [v54 protectionType];
    if (v71 == 3)
    {
      v72 = 2;
    }

    else
    {
      v72 = v71 == 2;
    }

    [v21 setAssetProtectionType:v72];
    v9 = v82;
    v73 = [v82 suzeLeaseID];
    [v21 setSuzeLeaseID:v73];
    [v21 setAllowsAssetInfoCaching:v73 == 0];
    v74 = [v54 protectionType];
    if (!v73 && v74 != 4)
    {
      [v21 setAllowsAssetCaching:1];
    }

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke_2;
    v85[3] = &unk_1E82392C0;
    v86 = v54;
    v87 = v82;
    [v21 setWillBecomeActivePlayerItemHandler:v85];

    v42 = 0;
    v53 = v80;
  }

  else
  {
    v69 = MEMORY[0x1E696ABC0];
    v9 = v82;
    v65 = [v82 fileAssetInfoList];
    v42 = [v69 msv_errorWithDomain:@"MPCError" code:15 debugDescription:{@"Playback response has no valid file asset: %@", v65}];
    v21 = 0;
    v10 = v81;
  }

  a5 = v83;
LABEL_77:
  v75 = [v21 isHLSAsset];
  v76 = [v10 preferredAudioAssetType];
  if (v75)
  {
    if (v76 < 2)
    {
      v77 = 2;
    }

    else
    {
      v77 = [v10 preferredAudioAssetType];
    }
  }

  else
  {
    v77 = v76 != 0;
  }

  [v21 setAudioAssetType:v77];
  [v21 setSource:a5];
  if (a6)
  {
    v78 = v42;
    *a6 = v42;
  }

  return v21;
}

uint64_t __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:{objc_msgSend(a2, "flavor")}];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E696AD98];
  v12 = [v7 flavor];

  v13 = [v11 numberWithInteger:v12];
  v14 = [v10 indexOfObject:v13];

  v15 = -1;
  if (v9 >= v14)
  {
    v15 = 1;
  }

  if (v9 == v14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:{objc_msgSend(a2, "flavorType")}];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E696AD98];
  v12 = [v7 flavorType];

  v13 = [v11 numberWithInteger:v12];
  v14 = [v10 indexOfObject:v13];

  v15 = -1;
  if (v9 >= v14)
  {
    v15 = 1;
  }

  if (v9 == v14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

void __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6970990] sharedCache];
  [v2 updateForPlaybackOfFileAsset:*(a1 + 32) fromResponse:*(a1 + 40)];
}

- (id)descriptionDictionary
{
  v55[7] = *MEMORY[0x1E69E9840];
  v54 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v3 = MEMORY[0x1E696AEC0];
  if ([(MPCModelGenericAVItemAssetLoadResult *)self allowsAssetCaching])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v53 = [v3 stringWithFormat:@"allows caching: %@", v4];
  v55[0] = v53;
  v5 = MEMORY[0x1E696AEC0];
  if ([(MPCModelGenericAVItemAssetLoadResult *)self isHLSAsset])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v52 = [v5 stringWithFormat:@"HLS: %@", v6];
  v55[1] = v52;
  v7 = MEMORY[0x1E696AEC0];
  if ([(MPCModelGenericAVItemAssetLoadResult *)self isCloudStreamingAsset])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v7 stringWithFormat:@"cloud streaming: %@", v8];
  v55[2] = v9;
  v10 = MEMORY[0x1E696AEC0];
  if ([(MPCModelGenericAVItemAssetLoadResult *)self onlineSubscriptionKeysRequired])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v10 stringWithFormat:@"online keys required: %@", v11];
  v55[3] = v12;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(MPCModelGenericAVItemAssetLoadResult *)self assetPathExtension];
  v15 = v14;
  v16 = @"N/A";
  if (v14)
  {
    v16 = v14;
  }

  v17 = [v13 stringWithFormat:@"path extension: %@", v16];
  v55[4] = v17;
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(MPCModelGenericAVItemAssetLoadResult *)self audioAssetType];
  if ((v19 - 1) > 4)
  {
    v20 = @"Unspecified";
  }

  else
  {
    v20 = off_1E82333D8[v19 - 1];
  }

  v21 = [v18 stringWithFormat:@"audio asset type: %@", v20];
  v55[5] = v21;
  v22 = MEMORY[0x1E696AEC0];
  if ([(MPCModelGenericAVItemAssetLoadResult *)self isDownloadedAsset])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = [v22 stringWithFormat:@"downloaded: %@", v23];
  v55[6] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:7];

  v26 = [v25 componentsJoinedByString:@" - "];
  [v54 setObject:v26 forKeyedSubscript:@"Overview"];

  v27 = [(MPCModelGenericAVItemAssetLoadResult *)self purchaseBundleDictionary];

  if (v27)
  {
    v28 = [(MPCModelGenericAVItemAssetLoadResult *)self purchaseBundleDictionary];
    [v54 setObject:v28 forKeyedSubscript:@"Purchase bundle dictionary"];
  }

  v29 = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  if (v29 || ([(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSPlaylistURL], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v50 = [(MPCModelGenericAVItemAssetLoadResult *)self protectedContentSupportStorageFileURL];

    if (!v50)
    {
      goto LABEL_27;
    }
  }

  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v31 = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  [v30 setObject:v31 forKeyedSubscript:@"assetURL"];

  v32 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSPlaylistURL];
  [v30 setObject:v32 forKeyedSubscript:@"alt. HLS playlist URL"];

  v33 = [(MPCModelGenericAVItemAssetLoadResult *)self protectedContentSupportStorageFileURL];
  [v30 setObject:v33 forKeyedSubscript:@"protected content support storage URL"];

  [v54 setObject:v30 forKeyedSubscript:@"URLs"];
LABEL_27:
  v34 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];
  if (v34 || ([(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL], (v34 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v51 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];

    if (!v51)
    {
      goto LABEL_44;
    }
  }

  v35 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  v36 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];

  if (v36)
  {
    v37 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];
    [v35 setObject:v37 forKeyedSubscript:@"key certificate URL"];
  }

  v38 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL];

  if (v38)
  {
    v39 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL];
    [v35 setObject:v39 forKeyedSubscript:@"key server URL"];
  }

  v40 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL];

  if (v40)
  {
    v41 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL];
    [v35 setObject:v41 forKeyedSubscript:@"alt. HLS key certificate URL"];
  }

  v42 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];

  if (v42)
  {
    v43 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];
    [v35 setObject:v43 forKeyedSubscript:@"alt. HLS key server URL"];
  }

  v44 = [(MPCModelGenericAVItemAssetLoadResult *)self keyServerProtocolType];

  if (v44)
  {
    v45 = [(MPCModelGenericAVItemAssetLoadResult *)self keyServerProtocolType];
    [v35 setObject:v45 forKeyedSubscript:@"key server protocol type"];
  }

  v46 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyAdamID];

  if (v46)
  {
    v47 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyAdamID];
    [v35 setObject:v47 forKeyedSubscript:@"streaming key adam ID"];
  }

  [v54 setObject:v35 forKeyedSubscript:@"SKD"];

LABEL_44:
  v48 = [v54 copy];

  return v48;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCModelGenericAVItemAssetLoadResult *)self descriptionDictionary];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (BOOL)hasValidAsset
{
  v2 = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  v3 = v2 != 0;

  return v3;
}

@end