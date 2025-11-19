@interface MPGenericTracklistPlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPGenericTracklistPlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v7 = [a1 trackIdentifiers];
  v8 = [a1 collectionIdentifierSet];

  v53 = a1;
  v54 = v7;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E6970818]);
    v10 = [a1 collectionIdentifierSet];
    v11 = [v10 universalStore];
    v12 = [v11 globalPlaylistID];

    if (v12)
    {
      v13 = &__block_literal_global_157;
    }

    else
    {
      v13 = &__block_literal_global_160;
    }

    v14 = 0x1E6970630;
    if (v12)
    {
      v14 = 0x1E6970718;
    }

    v15 = objc_alloc(*v14);
    v16 = [a1 collectionIdentifierSet];
    v17 = [v15 initWithIdentifiers:v16 block:v13];

    v52 = v17;
    [v9 appendSection:v17];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v7;
    v18 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v63;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v62 + 1) + 8 * i);
          v23 = objc_alloc(MEMORY[0x1E6970550]);
          v24 = [MEMORY[0x1E6970778] identityKind];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __95__MPGenericTracklistPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_3;
          v61[3] = &unk_1E82389D8;
          v61[4] = v22;
          v25 = [v23 initWithSource:@"MRQueue-GenericTracklist" modelKind:v24 block:v61];

          v26 = [objc_alloc(MEMORY[0x1E6970770]) initWithIdentifiers:v25 block:&__block_literal_global_168];
          [v9 appendItem:v26];
        }

        v19 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v19);
    }

    [(MPCModelStorePlaybackItemsRequest *)v6 setSectionedModelObjects:v9];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(&v57 + 1) + 8 * j)];
          [v9 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v29);
    }

    [(MPCModelStorePlaybackItemsRequest *)v6 setStoreIDs:v9];
  }

  v33 = objc_alloc_init(MPCModelPlaybackContext);
  v34 = [v53 siriReferenceIdentifier];
  [(MPCModelPlaybackContext *)v33 setSiriReferenceIdentifier:v34];

  v35 = [v53 userIdentity];
  [(MPCModelPlaybackContext *)v33 setUserIdentity:v35];

  v36 = [v53 privateListeningOverride];
  [(MPCModelPlaybackContext *)v33 setPrivateListeningOverride:v36];

  [(MPCModelPlaybackContext *)v33 setRequest:v6];
  v37 = [v53 firstTrackIdentifier];
  if ([v37 length])
  {
    v38 = [v37 longLongValue];
    if (v38)
    {
      v39 = v38;
      v40 = objc_alloc(MEMORY[0x1E6970550]);
      v41 = [MEMORY[0x1E6970778] identityKind];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __95__MPGenericTracklistPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_6;
      v56[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
      v56[4] = v39;
      v42 = [v40 initWithSource:@"MRQueue-GenericTracklist" modelKind:v41 block:v56];

      [(MPCModelPlaybackContext *)v33 setStartItemIdentifiers:v42];
    }
  }

  if ([v53 isRequestingImmediatePlayback])
  {
    v43 = 20;
  }

  else
  {
    v43 = 0;
  }

  [(MPCModelPlaybackContext *)v33 setActionAfterQueueLoad:v43];
  -[MPCModelPlaybackContext setShuffleType:](v33, "setShuffleType:", [v53 shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v33, "setRepeatType:", [v53 repeatType]);
  v44 = [v53 mediaRemoteOptions];
  v45 = [v44 objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

  if (v45)
  {
    -[MPCModelPlaybackContext setQueueEndAction:](v33, "setQueueEndAction:", [v45 integerValue]);
  }

  v46 = [v53 siriRecommendationIdentifier];
  v47 = [v46 dataUsingEncoding:4];
  [(MPCModelPlaybackContext *)v33 setPlayActivityRecommendationData:v47];

  v48 = [v53 siriAssetInfo];
  [(MPCModelPlaybackContext *)v33 setSiriAssetInfo:v48];

  v49 = [v53 featureName];
  [(MPCModelPlaybackContext *)v33 setPlayActivityFeatureName:v49];

  v50 = [v53 queueGroupingID];
  [(MPCModelPlaybackContext *)v33 setPlayActivityQueueGroupingID:v50];

  v51 = [v53 siriWHAMetricsInfo];
  [(MPCModelPlaybackContext *)v33 setSiriWHAMetricsInfo:v51];

  v5[2](v5, v33, 0);
}

@end