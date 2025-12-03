@interface MPCModelGenericAVItemAssetLoadResult
+ (id)assetLoadResultWithStoreAssetPlaybackResponse:(id)response assetLoadProperties:(id)properties source:(int64_t)source error:(id *)error;
- (BOOL)hasValidAsset;
- (id)description;
- (id)descriptionDictionary;
@end

@implementation MPCModelGenericAVItemAssetLoadResult

+ (id)assetLoadResultWithStoreAssetPlaybackResponse:(id)response assetLoadProperties:(id)properties source:(int64_t)source error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  propertiesCopy = properties;
  sourceCopy = source;
  if (![responseCopy isLiveRadioStream])
  {
    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = propertiesCopy;
  if ([propertiesCopy prefersHighQualityContent])
  {
    [v11 addObject:&unk_1F4599238];
  }

  [v11 addObject:&unk_1F4599250];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"flavor IN %@ AND streamURL != nil", v11];
  radioStreamAssetInfoList = [responseCopy radioStreamAssetInfoList];
  v15 = [radioStreamAssetInfoList filteredArrayUsingPredicate:v13];
  v16 = [v15 mutableCopy];

  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke;
  v98[3] = &unk_1E8233390;
  v99 = v11;
  v17 = v11;
  [v16 sortUsingComparator:v98];
  firstObject = [v16 firstObject];
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    radioStreamAssetInfoList2 = [responseCopy radioStreamAssetInfoList];
    firstObject2 = [radioStreamAssetInfoList2 firstObject];

    if (!firstObject2)
    {
      v21 = 0;
      goto LABEL_10;
    }
  }

  v21 = objc_alloc_init(self);
  streamURL = [firstObject2 streamURL];
  [v21 setAssetURL:streamURL];

  keyServerURL = [firstObject2 keyServerURL];
  [v21 setStreamingKeyServerURL:keyServerURL];

  keyCertificateURL = [firstObject2 keyCertificateURL];
  [v21 setStreamingKeyCertificateURL:keyCertificateURL];

  [v21 setITunesStoreStream:{objc_msgSend(firstObject2, "isiTunesStoreStream")}];
  [v21 setAllowsAssetInfoCaching:1];
  [v21 setIsCloudStreamingAsset:1];
  [v21 setIsHLSAsset:{objc_msgSend(firstObject2, "streamProtocol") == 1}];
  if ([v21 isHLSAsset])
  {
    hlsAssetInfo = [responseCopy hlsAssetInfo];
    keyServerAdamID = [hlsAssetInfo keyServerAdamID];
    [v21 setStreamingKeyAdamID:keyServerAdamID];

    keyServerProtocolType = [hlsAssetInfo keyServerProtocolType];
    [v21 setKeyServerProtocolType:keyServerProtocolType];
  }

LABEL_10:

  propertiesCopy = v12;
  source = sourceCopy;
  if (v21)
  {
LABEL_23:
    v42 = 0;
    goto LABEL_77;
  }

LABEL_11:
  if (([propertiesCopy allowsHLSContent] & 1) != 0 || objc_msgSend(propertiesCopy, "preferredAudioAssetType") >= 2)
  {
    hlsAssetInfo2 = [responseCopy hlsAssetInfo];
    if (hlsAssetInfo2)
    {
      v29 = hlsAssetInfo2;
      v21 = objc_alloc_init(self);
      playlistURL = [v29 playlistURL];
      [v21 setAssetURL:playlistURL];

      keyServerURL2 = [v29 keyServerURL];
      [v21 setStreamingKeyServerURL:keyServerURL2];

      keyCertificateURL2 = [v29 keyCertificateURL];
      [v21 setStreamingKeyCertificateURL:keyCertificateURL2];

      keyServerProtocolType2 = [v29 keyServerProtocolType];
      [v21 setKeyServerProtocolType:keyServerProtocolType2];

      [v21 setITunesStoreStream:{objc_msgSend(v29, "isiTunesStoreStream")}];
      alternatePlaylistURL = [v29 alternatePlaylistURL];
      [v21 setAlternateHLSPlaylistURL:alternatePlaylistURL];

      alternateKeyServerURL = [v29 alternateKeyServerURL];
      [v21 setAlternateHLSKeyServerURL:alternateKeyServerURL];

      alternateKeyCertificateURL = [v29 alternateKeyCertificateURL];
      [v21 setAlternateHLSKeyCertificateURL:alternateKeyCertificateURL];

      [v21 setIsHLSAsset:1];
      [v21 setAllowsAssetInfoCaching:1];
      [v21 setIsCloudStreamingAsset:1];
      [v21 setAssetPathExtension:*MEMORY[0x1E69E41A0]];
      [v21 setAssetQualityType:2];
      keyServerAdamID2 = [v29 keyServerAdamID];
      [v21 setStreamingKeyAdamID:keyServerAdamID2];

      [v21 setAllowsAssetCaching:{objc_msgSend(propertiesCopy, "prefersVideoContent") ^ 1}];
      storeAsset = [propertiesCopy storeAsset];
      endpointType = [storeAsset endpointType];

      if ((endpointType - 1) >= 2)
      {
        v41 = endpointType == 3 ? 2 : 0;
      }

      else
      {
        keyServerProtocolType3 = [v29 keyServerProtocolType];
        v41 = [keyServerProtocolType3 isEqualToString:*MEMORY[0x1E69703F0]] ? 2 : 1;
      }

      [v21 setAssetProtectionType:v41];

      if (v21)
      {
        goto LABEL_23;
      }
    }
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  prefersHighQualityContent = [propertiesCopy prefersHighQualityContent];
  if ([propertiesCopy prefersVideoContent])
  {
    if (prefersHighQualityContent)
    {
      [v43 addObject:&unk_1F4599268];
      [v43 addObject:&unk_1F4599280];
    }

    [v43 addObject:&unk_1F4599298];
  }

  v81 = propertiesCopy;
  if (prefersHighQualityContent)
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
  v82 = responseCopy;
  fileAssetInfoList = [responseCopy fileAssetInfoList];
  v46 = [fileAssetInfoList countByEnumeratingWithState:&v94 objects:v103 count:16];
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
          objc_enumerationMutation(fileAssetInfoList);
        }

        v51 = *(*(&v94 + 1) + 8 * i);
        assetURL = [v51 assetURL];

        if (assetURL)
        {
          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v48 addObject:v51];
        }
      }

      v47 = [fileAssetInfoList countByEnumeratingWithState:&v94 objects:v103 count:16];
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
  firstObject3 = [v48 firstObject];
  if (firstObject3)
  {
    v80 = v53;
    v21 = objc_alloc_init(self);
    assetURL2 = [firstObject3 assetURL];
    [v21 setAssetURL:assetURL2];

    flavorType = [firstObject3 flavorType];
    v57 = [v48 count];
    if ((flavorType - 101) < 2 || v57 == 1 || (flavorType & 0xFFFFFFFFFFFFFFFELL) == 202)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    [v21 setAssetQualityType:v60];
    fileExtension = [firstObject3 fileExtension];
    [v21 setAssetPathExtension:fileExtension];

    [v21 setIsCloudStreamingAsset:1];
    [v21 setOnlineSubscriptionKeysRequired:{objc_msgSend(v82, "onlineSubscriptionKeysRequired")}];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    fairPlayInfoList = [firstObject3 fairPlayInfoList];
    v63 = [fairPlayInfoList countByEnumeratingWithState:&v88 objects:v102 count:16];
    if (v63)
    {
      v64 = v63;
      fileAssetInfoList2 = 0;
      v66 = *v89;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v89 != v66)
          {
            objc_enumerationMutation(fairPlayInfoList);
          }

          purchaseBundleSinfDictionary = [*(*(&v88 + 1) + 8 * j) purchaseBundleSinfDictionary];
          if ([purchaseBundleSinfDictionary count])
          {
            if (!fileAssetInfoList2)
            {
              fileAssetInfoList2 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [fileAssetInfoList2 addObject:purchaseBundleSinfDictionary];
          }
        }

        v64 = [fairPlayInfoList countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v64);
    }

    else
    {
      fileAssetInfoList2 = 0;
    }

    propertiesCopy = v81;
    if ([fileAssetInfoList2 count])
    {
      v100 = @"sinfs";
      v101 = fileAssetInfoList2;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      [v21 setPurchaseBundleDictionary:v70];
    }

    protectionType = [firstObject3 protectionType];
    if (protectionType == 3)
    {
      v72 = 2;
    }

    else
    {
      v72 = protectionType == 2;
    }

    [v21 setAssetProtectionType:v72];
    responseCopy = v82;
    suzeLeaseID = [v82 suzeLeaseID];
    [v21 setSuzeLeaseID:suzeLeaseID];
    [v21 setAllowsAssetInfoCaching:suzeLeaseID == 0];
    protectionType2 = [firstObject3 protectionType];
    if (!suzeLeaseID && protectionType2 != 4)
    {
      [v21 setAllowsAssetCaching:1];
    }

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __119__MPCModelGenericAVItemAssetLoadResult_assetLoadResultWithStoreAssetPlaybackResponse_assetLoadProperties_source_error___block_invoke_2;
    v85[3] = &unk_1E82392C0;
    v86 = firstObject3;
    v87 = v82;
    [v21 setWillBecomeActivePlayerItemHandler:v85];

    v42 = 0;
    v53 = v80;
  }

  else
  {
    v69 = MEMORY[0x1E696ABC0];
    responseCopy = v82;
    fileAssetInfoList2 = [v82 fileAssetInfoList];
    v42 = [v69 msv_errorWithDomain:@"MPCError" code:15 debugDescription:{@"Playback response has no valid file asset: %@", fileAssetInfoList2}];
    v21 = 0;
    propertiesCopy = v81;
  }

  source = sourceCopy;
LABEL_77:
  isHLSAsset = [v21 isHLSAsset];
  preferredAudioAssetType = [propertiesCopy preferredAudioAssetType];
  if (isHLSAsset)
  {
    if (preferredAudioAssetType < 2)
    {
      preferredAudioAssetType2 = 2;
    }

    else
    {
      preferredAudioAssetType2 = [propertiesCopy preferredAudioAssetType];
    }
  }

  else
  {
    preferredAudioAssetType2 = preferredAudioAssetType != 0;
  }

  [v21 setAudioAssetType:preferredAudioAssetType2];
  [v21 setSource:source];
  if (error)
  {
    v78 = v42;
    *error = v42;
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
  assetPathExtension = [(MPCModelGenericAVItemAssetLoadResult *)self assetPathExtension];
  v15 = assetPathExtension;
  v16 = @"N/A";
  if (assetPathExtension)
  {
    v16 = assetPathExtension;
  }

  v17 = [v13 stringWithFormat:@"path extension: %@", v16];
  v55[4] = v17;
  v18 = MEMORY[0x1E696AEC0];
  audioAssetType = [(MPCModelGenericAVItemAssetLoadResult *)self audioAssetType];
  if ((audioAssetType - 1) > 4)
  {
    v20 = @"Unspecified";
  }

  else
  {
    v20 = off_1E82333D8[audioAssetType - 1];
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

  purchaseBundleDictionary = [(MPCModelGenericAVItemAssetLoadResult *)self purchaseBundleDictionary];

  if (purchaseBundleDictionary)
  {
    purchaseBundleDictionary2 = [(MPCModelGenericAVItemAssetLoadResult *)self purchaseBundleDictionary];
    [v54 setObject:purchaseBundleDictionary2 forKeyedSubscript:@"Purchase bundle dictionary"];
  }

  assetURL = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  if (assetURL || ([(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSPlaylistURL], (assetURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    protectedContentSupportStorageFileURL = [(MPCModelGenericAVItemAssetLoadResult *)self protectedContentSupportStorageFileURL];

    if (!protectedContentSupportStorageFileURL)
    {
      goto LABEL_27;
    }
  }

  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  assetURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  [v30 setObject:assetURL2 forKeyedSubscript:@"assetURL"];

  alternateHLSPlaylistURL = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSPlaylistURL];
  [v30 setObject:alternateHLSPlaylistURL forKeyedSubscript:@"alt. HLS playlist URL"];

  protectedContentSupportStorageFileURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self protectedContentSupportStorageFileURL];
  [v30 setObject:protectedContentSupportStorageFileURL2 forKeyedSubscript:@"protected content support storage URL"];

  [v54 setObject:v30 forKeyedSubscript:@"URLs"];
LABEL_27:
  streamingKeyCertificateURL = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];
  if (streamingKeyCertificateURL || ([(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL], (streamingKeyCertificateURL = objc_claimAutoreleasedReturnValue()) != 0) || ([(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL], (streamingKeyCertificateURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    alternateHLSKeyServerURL = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];

    if (!alternateHLSKeyServerURL)
    {
      goto LABEL_44;
    }
  }

  v35 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  streamingKeyCertificateURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];

  if (streamingKeyCertificateURL2)
  {
    streamingKeyCertificateURL3 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyCertificateURL];
    [v35 setObject:streamingKeyCertificateURL3 forKeyedSubscript:@"key certificate URL"];
  }

  streamingKeyServerURL = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL];

  if (streamingKeyServerURL)
  {
    streamingKeyServerURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyServerURL];
    [v35 setObject:streamingKeyServerURL2 forKeyedSubscript:@"key server URL"];
  }

  alternateHLSKeyCertificateURL = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL];

  if (alternateHLSKeyCertificateURL)
  {
    alternateHLSKeyCertificateURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyCertificateURL];
    [v35 setObject:alternateHLSKeyCertificateURL2 forKeyedSubscript:@"alt. HLS key certificate URL"];
  }

  alternateHLSKeyServerURL2 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];

  if (alternateHLSKeyServerURL2)
  {
    alternateHLSKeyServerURL3 = [(MPCModelGenericAVItemAssetLoadResult *)self alternateHLSKeyServerURL];
    [v35 setObject:alternateHLSKeyServerURL3 forKeyedSubscript:@"alt. HLS key server URL"];
  }

  keyServerProtocolType = [(MPCModelGenericAVItemAssetLoadResult *)self keyServerProtocolType];

  if (keyServerProtocolType)
  {
    keyServerProtocolType2 = [(MPCModelGenericAVItemAssetLoadResult *)self keyServerProtocolType];
    [v35 setObject:keyServerProtocolType2 forKeyedSubscript:@"key server protocol type"];
  }

  streamingKeyAdamID = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyAdamID];

  if (streamingKeyAdamID)
  {
    streamingKeyAdamID2 = [(MPCModelGenericAVItemAssetLoadResult *)self streamingKeyAdamID];
    [v35 setObject:streamingKeyAdamID2 forKeyedSubscript:@"streaming key adam ID"];
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
  descriptionDictionary = [(MPCModelGenericAVItemAssetLoadResult *)self descriptionDictionary];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, descriptionDictionary];

  return v6;
}

- (BOOL)hasValidAsset
{
  assetURL = [(MPCModelGenericAVItemAssetLoadResult *)self assetURL];
  v3 = assetURL != 0;

  return v3;
}

@end