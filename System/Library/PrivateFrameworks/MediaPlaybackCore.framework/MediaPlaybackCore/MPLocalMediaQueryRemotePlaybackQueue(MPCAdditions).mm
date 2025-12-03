@interface MPLocalMediaQueryRemotePlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPLocalMediaQueryRemotePlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v5 = a4;
  mediaQuery = [self mediaQuery];
  v7 = mediaQuery;
  if (mediaQuery)
  {
    mediaLibrary = [mediaQuery mediaLibrary];
    userIdentity = [mediaLibrary userIdentity];

    userIdentity2 = [self userIdentity];
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v12 = [userIdentity isEqualToIdentity:userIdentity2 inStore:defaultIdentityStore];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69706C8]);
      [v13 setLegacyMediaQuery:v7];
      v14 = MEMORY[0x1E696AEC0];
      featureName = [self featureName];
      v16 = [v14 stringWithFormat:@"RemotePlaybackQueue-%@", featureName];
      [v13 setLabel:v16];

      v17 = objc_alloc_init(MPCModelPlaybackContext);
      privateListeningOverride = [self privateListeningOverride];
      [(MPCModelPlaybackContext *)v17 setPrivateListeningOverride:privateListeningOverride];

      siriReferenceIdentifier = [self siriReferenceIdentifier];
      [(MPCModelPlaybackContext *)v17 setSiriReferenceIdentifier:siriReferenceIdentifier];

      [(MPCModelPlaybackContext *)v17 setUserIdentity:userIdentity2];
      [(MPCModelPlaybackContext *)v17 setRequest:v13];
      firstItem = [self firstItem];
      if (firstItem)
      {
        v37 = v13;
        mediaLibrary2 = [v7 mediaLibrary];
        uniqueIdentifier = [mediaLibrary2 uniqueIdentifier];

        persistentID = [firstItem persistentID];
        if ([v7 isPlaylistItemsQuery])
        {
          persistentID = [v7 _playlistItemPersistentIDForItemPersistentID:persistentID];
        }

        v23 = objc_alloc(MEMORY[0x1E6970550]);
        identityKind = [MEMORY[0x1E6970778] identityKind];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __100__MPLocalMediaQueryRemotePlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke;
        v39[3] = &unk_1E8237900;
        v40 = uniqueIdentifier;
        v41 = persistentID;
        v25 = uniqueIdentifier;
        v26 = [v23 initWithSource:@"MRQueue-MediaQuery" modelKind:identityKind block:v39];
        [(MPCModelPlaybackContext *)v17 setStartItemIdentifiers:v26];

        v13 = v37;
      }

      if ([self isRequestingImmediatePlayback])
      {
        v27 = 20;
      }

      else
      {
        v27 = 0;
      }

      [(MPCModelPlaybackContext *)v17 setActionAfterQueueLoad:v27];
      -[MPCModelPlaybackContext setShuffleType:](v17, "setShuffleType:", [self shuffleType]);
      -[MPCModelPlaybackContext setRepeatType:](v17, "setRepeatType:", [self repeatType]);
      mediaRemoteOptions = [self mediaRemoteOptions];
      v29 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

      if (v29)
      {
        -[MPCModelPlaybackContext setQueueEndAction:](v17, "setQueueEndAction:", [v29 integerValue]);
      }

      siriRecommendationIdentifier = [self siriRecommendationIdentifier];
      v31 = [siriRecommendationIdentifier dataUsingEncoding:4];
      [(MPCModelPlaybackContext *)v17 setPlayActivityRecommendationData:v31];

      siriAssetInfo = [self siriAssetInfo];
      [(MPCModelPlaybackContext *)v17 setSiriAssetInfo:siriAssetInfo];

      featureName2 = [self featureName];
      [(MPCModelPlaybackContext *)v17 setPlayActivityFeatureName:featureName2];

      queueGroupingID = [self queueGroupingID];
      [(MPCModelPlaybackContext *)v17 setPlayActivityQueueGroupingID:queueGroupingID];

      siriWHAMetricsInfo = [self siriWHAMetricsInfo];
      [(MPCModelPlaybackContext *)v17 setSiriWHAMetricsInfo:siriWHAMetricsInfo];

      v5[2](v5, v17, 0);
    }

    else
    {
      v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:68 debugDescription:{@"MPMediaQuery's userIdentity does not match MPRemotePlaybackQueue's userIdentity. queryIdentity=%@ playbackQueueIdentity=%@", userIdentity, userIdentity2}];
      (v5)[2](v5, 0, v36);
    }
  }

  else
  {
    userIdentity = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:3000 debugDescription:@"MPLocalMediaQueryRemotePlaybackQueue has nil mediaQuery"];
    (v5)[2](v5, 0, userIdentity);
  }
}

@end