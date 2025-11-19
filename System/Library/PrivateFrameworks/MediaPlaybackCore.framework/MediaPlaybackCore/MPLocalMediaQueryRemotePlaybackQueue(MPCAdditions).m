@interface MPLocalMediaQueryRemotePlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPLocalMediaQueryRemotePlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v5 = a4;
  v6 = [a1 mediaQuery];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mediaLibrary];
    v9 = [v8 userIdentity];

    v10 = [a1 userIdentity];
    v11 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v12 = [v9 isEqualToIdentity:v10 inStore:v11];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69706C8]);
      [v13 setLegacyMediaQuery:v7];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [a1 featureName];
      v16 = [v14 stringWithFormat:@"RemotePlaybackQueue-%@", v15];
      [v13 setLabel:v16];

      v17 = objc_alloc_init(MPCModelPlaybackContext);
      v18 = [a1 privateListeningOverride];
      [(MPCModelPlaybackContext *)v17 setPrivateListeningOverride:v18];

      v19 = [a1 siriReferenceIdentifier];
      [(MPCModelPlaybackContext *)v17 setSiriReferenceIdentifier:v19];

      [(MPCModelPlaybackContext *)v17 setUserIdentity:v10];
      [(MPCModelPlaybackContext *)v17 setRequest:v13];
      v38 = [a1 firstItem];
      if (v38)
      {
        v37 = v13;
        v20 = [v7 mediaLibrary];
        v21 = [v20 uniqueIdentifier];

        v22 = [v38 persistentID];
        if ([v7 isPlaylistItemsQuery])
        {
          v22 = [v7 _playlistItemPersistentIDForItemPersistentID:v22];
        }

        v23 = objc_alloc(MEMORY[0x1E6970550]);
        v24 = [MEMORY[0x1E6970778] identityKind];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __100__MPLocalMediaQueryRemotePlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke;
        v39[3] = &unk_1E8237900;
        v40 = v21;
        v41 = v22;
        v25 = v21;
        v26 = [v23 initWithSource:@"MRQueue-MediaQuery" modelKind:v24 block:v39];
        [(MPCModelPlaybackContext *)v17 setStartItemIdentifiers:v26];

        v13 = v37;
      }

      if ([a1 isRequestingImmediatePlayback])
      {
        v27 = 20;
      }

      else
      {
        v27 = 0;
      }

      [(MPCModelPlaybackContext *)v17 setActionAfterQueueLoad:v27];
      -[MPCModelPlaybackContext setShuffleType:](v17, "setShuffleType:", [a1 shuffleType]);
      -[MPCModelPlaybackContext setRepeatType:](v17, "setRepeatType:", [a1 repeatType]);
      v28 = [a1 mediaRemoteOptions];
      v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

      if (v29)
      {
        -[MPCModelPlaybackContext setQueueEndAction:](v17, "setQueueEndAction:", [v29 integerValue]);
      }

      v30 = [a1 siriRecommendationIdentifier];
      v31 = [v30 dataUsingEncoding:4];
      [(MPCModelPlaybackContext *)v17 setPlayActivityRecommendationData:v31];

      v32 = [a1 siriAssetInfo];
      [(MPCModelPlaybackContext *)v17 setSiriAssetInfo:v32];

      v33 = [a1 featureName];
      [(MPCModelPlaybackContext *)v17 setPlayActivityFeatureName:v33];

      v34 = [a1 queueGroupingID];
      [(MPCModelPlaybackContext *)v17 setPlayActivityQueueGroupingID:v34];

      v35 = [a1 siriWHAMetricsInfo];
      [(MPCModelPlaybackContext *)v17 setSiriWHAMetricsInfo:v35];

      v5[2](v5, v17, 0);
    }

    else
    {
      v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:68 debugDescription:{@"MPMediaQuery's userIdentity does not match MPRemotePlaybackQueue's userIdentity. queryIdentity=%@ playbackQueueIdentity=%@", v9, v10}];
      (v5)[2](v5, 0, v36);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:3000 debugDescription:@"MPLocalMediaQueryRemotePlaybackQueue has nil mediaQuery"];
    (v5)[2](v5, 0, v9);
  }
}

@end