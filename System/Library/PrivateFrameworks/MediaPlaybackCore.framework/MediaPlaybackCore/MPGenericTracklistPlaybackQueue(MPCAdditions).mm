@interface MPGenericTracklistPlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPGenericTracklistPlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  trackIdentifiers = [self trackIdentifiers];
  collectionIdentifierSet = [self collectionIdentifierSet];

  selfCopy = self;
  v54 = trackIdentifiers;
  if (collectionIdentifierSet)
  {
    v9 = objc_alloc_init(MEMORY[0x1E6970818]);
    collectionIdentifierSet2 = [self collectionIdentifierSet];
    universalStore = [collectionIdentifierSet2 universalStore];
    globalPlaylistID = [universalStore globalPlaylistID];

    if (globalPlaylistID)
    {
      v13 = &__block_literal_global_157;
    }

    else
    {
      v13 = &__block_literal_global_160;
    }

    v14 = 0x1E6970630;
    if (globalPlaylistID)
    {
      v14 = 0x1E6970718;
    }

    v15 = objc_alloc(*v14);
    collectionIdentifierSet3 = [self collectionIdentifierSet];
    v17 = [v15 initWithIdentifiers:collectionIdentifierSet3 block:v13];

    v52 = v17;
    [v9 appendSection:v17];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = trackIdentifiers;
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
          identityKind = [MEMORY[0x1E6970778] identityKind];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __95__MPGenericTracklistPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_3;
          v61[3] = &unk_1E82389D8;
          v61[4] = v22;
          v25 = [v23 initWithSource:@"MRQueue-GenericTracklist" modelKind:identityKind block:v61];

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
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(trackIdentifiers, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v27 = trackIdentifiers;
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
  siriReferenceIdentifier = [selfCopy siriReferenceIdentifier];
  [(MPCModelPlaybackContext *)v33 setSiriReferenceIdentifier:siriReferenceIdentifier];

  userIdentity = [selfCopy userIdentity];
  [(MPCModelPlaybackContext *)v33 setUserIdentity:userIdentity];

  privateListeningOverride = [selfCopy privateListeningOverride];
  [(MPCModelPlaybackContext *)v33 setPrivateListeningOverride:privateListeningOverride];

  [(MPCModelPlaybackContext *)v33 setRequest:v6];
  firstTrackIdentifier = [selfCopy firstTrackIdentifier];
  if ([firstTrackIdentifier length])
  {
    longLongValue = [firstTrackIdentifier longLongValue];
    if (longLongValue)
    {
      v39 = longLongValue;
      v40 = objc_alloc(MEMORY[0x1E6970550]);
      identityKind2 = [MEMORY[0x1E6970778] identityKind];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __95__MPGenericTracklistPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_6;
      v56[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
      v56[4] = v39;
      v42 = [v40 initWithSource:@"MRQueue-GenericTracklist" modelKind:identityKind2 block:v56];

      [(MPCModelPlaybackContext *)v33 setStartItemIdentifiers:v42];
    }
  }

  if ([selfCopy isRequestingImmediatePlayback])
  {
    v43 = 20;
  }

  else
  {
    v43 = 0;
  }

  [(MPCModelPlaybackContext *)v33 setActionAfterQueueLoad:v43];
  -[MPCModelPlaybackContext setShuffleType:](v33, "setShuffleType:", [selfCopy shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v33, "setRepeatType:", [selfCopy repeatType]);
  mediaRemoteOptions = [selfCopy mediaRemoteOptions];
  v45 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

  if (v45)
  {
    -[MPCModelPlaybackContext setQueueEndAction:](v33, "setQueueEndAction:", [v45 integerValue]);
  }

  siriRecommendationIdentifier = [selfCopy siriRecommendationIdentifier];
  v47 = [siriRecommendationIdentifier dataUsingEncoding:4];
  [(MPCModelPlaybackContext *)v33 setPlayActivityRecommendationData:v47];

  siriAssetInfo = [selfCopy siriAssetInfo];
  [(MPCModelPlaybackContext *)v33 setSiriAssetInfo:siriAssetInfo];

  featureName = [selfCopy featureName];
  [(MPCModelPlaybackContext *)v33 setPlayActivityFeatureName:featureName];

  queueGroupingID = [selfCopy queueGroupingID];
  [(MPCModelPlaybackContext *)v33 setPlayActivityQueueGroupingID:queueGroupingID];

  siriWHAMetricsInfo = [selfCopy siriWHAMetricsInfo];
  [(MPCModelPlaybackContext *)v33 setSiriWHAMetricsInfo:siriWHAMetricsInfo];

  v5[2](v5, v33, 0);
}

@end