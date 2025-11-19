@interface MPCModelRadioStationTrackGenericObjectBuilder
- (MPCModelRadioStationTrackGenericObjectBuilder)initWithRequestedProperties:(id)a3;
- (id)genericObjectForRadioStationTrack:(id)a3 radioStationContainsVideo:(BOOL)a4 containerUniqueID:(id)a5 userIdentity:(id)a6;
@end

@implementation MPCModelRadioStationTrackGenericObjectBuilder

- (id)genericObjectForRadioStationTrack:(id)a3 radioStationContainsVideo:(BOOL)a4 containerUniqueID:(id)a5 userIdentity:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!self->_storePlatformBuilder)
  {
    v13 = objc_alloc(MEMORY[0x1E69707A0]);
    v14 = [(MPCModelRadioStationTrackGenericObjectBuilder *)self requestedProperties];
    v15 = [v13 initWithRequestedProperties:v14];
    storePlatformBuilder = self->_storePlatformBuilder;
    self->_storePlatformBuilder = v15;
  }

  if ((*&self->_requestedSongProperties & 1) == 0)
  {
    v17 = [(MPCModelRadioStationTrackGenericObjectBuilder *)self requestedProperties];
    v18 = [v17 relationships];
    v19 = [v18 objectForKey:*MEMORY[0x1E6970158]];

    v20 = [v19 properties];
    if ([v20 containsObject:*MEMORY[0x1E696FFB8]])
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFD | v21;

    v22 = [v19 properties];
    if ([v22 containsObject:*MEMORY[0x1E6970A88]])
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *&self->_requestedSongProperties = *&self->_requestedSongProperties & 0xFB | v23;

    v24 = [v19 relationships];
    v25 = [v24 objectForKey:*MEMORY[0x1E69701F8]];
    v26 = v25;
    if (v25)
    {
      *&self->_requestedSongProperties.playbackPosition |= 1u;
      v27 = [v25 properties];
      if ([v27 containsObject:*MEMORY[0x1E696FD88]])
      {
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xFD | v28;
      if ([v27 containsObject:*MEMORY[0x1E696FD98]])
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xFB | v29;
      if ([v27 containsObject:*MEMORY[0x1E696FD90]])
      {
        v30 = 8;
      }

      else
      {
        v30 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xF7 | v30;
      if ([v27 containsObject:*MEMORY[0x1E696FDA0]])
      {
        v31 = 16;
      }

      else
      {
        v31 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xEF | v31;
      if ([v27 containsObject:*MEMORY[0x1E696FDA8]])
      {
        v32 = 32;
      }

      else
      {
        v32 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xDF | v32;
      if ([v27 containsObject:*MEMORY[0x1E696FDB0]])
      {
        v33 = 64;
      }

      else
      {
        v33 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = *&self->_requestedSongProperties.playbackPosition & 0xBF | v33;
      if ([v27 containsObject:*MEMORY[0x1E696FDB8]])
      {
        v34 = 0x80;
      }

      else
      {
        v34 = 0;
      }

      *&self->_requestedSongProperties.playbackPosition = v34 & 0x80 | *&self->_requestedSongProperties.playbackPosition & 0x7F;
    }

    *&self->_requestedSongProperties |= 1u;
  }

  v35 = [v10 storePlatformMetadata];
  if (v35)
  {
    v36 = [(MPModelStorePlatformMetadataGenericObjectBuilder *)self->_storePlatformBuilder genericObjectForStorePlatformMetadata:v35 radioStationContainsVideo:v8 userIdentity:v12];
  }

  else
  {
    v36 = 0;
  }

  if ([v36 type] == 1 && (*&self->_requestedSongProperties.playbackPosition & 1) != 0)
  {
    v37 = [v36 song];
    v38 = [v37 identifiers];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke;
    v47[3] = &unk_1E8235970;
    v48 = v11;
    v39 = v10;
    v49 = v39;
    v50 = v35;
    v51 = v12;
    v40 = [v38 copyWithSource:@"RadioStationTrack" block:v47];

    v41 = [v36 song];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_4;
    v45[3] = &unk_1E82359C0;
    v45[4] = self;
    v46 = v39;
    v42 = [v41 copyWithIdentifiers:v40 block:v45];

    v43 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v42];

    v36 = v43;
  }

  return v36;
}

void __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContainerUniqueID:*(a1 + 32)];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_2;
  v9 = &unk_1E8235948;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v3 setUniversalStoreIdentifiersWithBlock:&v6];
  v4 = [*(a1 + 56) accountDSID];

  if (v4)
  {
    v5 = [*(a1 + 56) accountDSID];
    [v3 setPersonalStoreIdentifiersWithPersonID:v5 block:&__block_literal_global_17274];
  }
}

void __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 16);
  if ((v5 & 2) != 0)
  {
    [v3 setTrackNumber:0];
    v5 = *(*(a1 + 32) + 16);
  }

  if ((v5 & 4) != 0)
  {
    [v4 setTrackCount:0];
  }

  v6 = objc_alloc(MEMORY[0x1E6970710]);
  v7 = [MEMORY[0x1E6970550] emptyIdentifierSet];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_5;
  v13 = &unk_1E8235998;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = [v6 initWithIdentifiers:v7 block:&v10];

  [v4 setPlaybackPosition:{v9, v10, v11, v12, v13, v14}];
}

void __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(*(a1 + 32) + 20);
  if ((v3 & 2) != 0)
  {
    [*(a1 + 40) startTime];
    [v4 setBookmarkTime:?];
    v3 = *(*(a1 + 32) + 20);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(*(a1 + 32) + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  [v4 setHasBeenPlayed:0];
  v3 = *(*(a1 + 32) + 20);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 setShouldRememberBookmarkTime:0];
  v3 = *(*(a1 + 32) + 20);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v4 setUserPlayCount:0];
  v3 = *(*(a1 + 32) + 20);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v4 setStartTime:0.0];
  v3 = *(*(a1 + 32) + 20);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v4 setStopTime:0];
  if ((*(*(a1 + 32) + 20) & 0x40) != 0)
  {
LABEL_8:
    [v4 setStoreUbiquitousIdentifier:0];
  }

LABEL_9:
}

void __140__MPCModelRadioStationTrackGenericObjectBuilder_genericObjectForRadioStationTrack_radioStationContainsVideo_containerUniqueID_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) storeAdamID];
  [v6 setAdamID:v3];
  v4 = [*(a1 + 40) formerStoreAdamIDs];
  if ([v4 count])
  {
    [v6 setFormerAdamIDs:v4];
  }

  v5 = [*(a1 + 40) offerWithType:*MEMORY[0x1E69E42B0]];

  if (v5)
  {
    [v6 setSubscriptionAdamID:v3];
  }
}

- (MPCModelRadioStationTrackGenericObjectBuilder)initWithRequestedProperties:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCModelRadioStationTrackGenericObjectBuilder;
  v5 = [(MPCModelRadioStationTrackGenericObjectBuilder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestedProperties = v5->_requestedProperties;
    v5->_requestedProperties = v6;
  }

  return v5;
}

@end