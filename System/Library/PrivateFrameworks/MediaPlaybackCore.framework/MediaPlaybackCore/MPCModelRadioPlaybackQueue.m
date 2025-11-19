@interface MPCModelRadioPlaybackQueue
- (BOOL)isExplicitItemAtIndex:(int64_t)a3;
- (MPCModelRadioPlaybackQueue)initWithPlaybackContext:(id)a3;
- (id)AVItemAtIndex:(int64_t)a3;
- (id)removeExplicitItems;
- (id)trackForItemAtIndex:(int64_t)a3;
- (id)tracksByApplyingTracksResponse:(id)a3 currentIndex:(int64_t)a4;
- (void)removeAllItems;
- (void)updateWithPersonalizedResponse:(id)a3;
@end

@implementation MPCModelRadioPlaybackQueue

- (void)updateWithPersonalizedResponse:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = [v4 results];
  v5 = [v30 firstSection];
  [(MPCModelRadioPlaybackQueue *)self setRadioStation:v5];

  v6 = [v4 results];
  v7 = [v4 radioStationTracks];
  v31 = v4;
  v8 = [v4 request];
  v9 = [v8 itemProperties];
  itemProperties = self->_itemProperties;
  self->_itemProperties = v9;

  v11 = [v6 copy];
  trackModels = self->_trackModels;
  self->_trackModels = v11;

  v29 = v7;
  v13 = [v7 copy];
  tracks = self->_tracks;
  self->_tracks = v13;

  os_unfair_lock_lock(&self->_lock);
  v35 = v6;
  v15 = [v6 totalItemCount];
  if (v15 >= 1)
  {
    v16 = v15;
    v17 = 0;
    v32 = self;
    do
    {
      if (v17 >= [(NSHashTable *)self->_activeModelGenericAVItems count])
      {
        break;
      }

      v34 = v16;
      v33 = v16 - 1;
      v36 = [v35 indexPathForGlobalIndex:?];
      v18 = [v35 identifiersForItemAtIndexPath:?];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v19 = self->_activeModelGenericAVItems;
      v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v37 + 1) + 8 * i);
            v25 = [v24 genericObject];
            v26 = [v25 identifiers];
            v27 = [v26 intersectsSet:v18];

            if (v27)
            {
              v28 = [v35 itemAtIndexPath:v36];
              [v24 setGenericObject:v28];

              ++v17;
            }
          }

          v21 = [(NSHashTable *)v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v21);
      }

      v16 = v33;
      self = v32;
    }

    while (v34 > 1);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)tracksByApplyingTracksResponse:(id)a3 currentIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(MPCModelRadioPlaybackQueue *)self tracks];
  v8 = [v6 tracks];
  if (![v7 totalItemCount])
  {
    v9 = v8;
    goto LABEL_10;
  }

  v9 = objc_alloc_init(MEMORY[0x1E6970818]);
  v10 = [v8 firstSection];
  [v9 appendSection:v10];

  v11 = [v6 tracklistAction];
  if (v11 == 1)
  {
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13[5] = MEMORY[0x1E69E9820];
      v13[6] = 3221225472;
      v13[7] = __74__MPCModelRadioPlaybackQueue_tracksByApplyingTracksResponse_currentIndex___block_invoke_2;
      v13[8] = &unk_1E8235500;
      v13[9] = v9;
      v13[10] = a4;
      goto LABEL_8;
    }
  }

  else if (!v11)
  {
    v13[11] = MEMORY[0x1E69E9820];
    v13[12] = 3221225472;
    v13[13] = __74__MPCModelRadioPlaybackQueue_tracksByApplyingTracksResponse_currentIndex___block_invoke;
    v13[14] = &unk_1E82354D8;
    v13[15] = v9;
LABEL_8:
    [v7 enumerateItemsUsingBlock:?];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__MPCModelRadioPlaybackQueue_tracksByApplyingTracksResponse_currentIndex___block_invoke_3;
  v13[3] = &unk_1E82354D8;
  v13[4] = v9;
  [v8 enumerateItemsUsingBlock:v13];
LABEL_10:

  return v9;
}

void __74__MPCModelRadioPlaybackQueue_tracksByApplyingTracksResponse_currentIndex___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 appendItem:a2];
  v9 = [v8 item];

  *a4 = v9 == *(a1 + 40);
}

- (id)trackForItemAtIndex:(int64_t)a3
{
  tracks = self->_tracks;
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v5 = [(MPSectionedCollection *)tracks itemAtIndexPath:v4];

  return v5;
}

- (id)removeExplicitItems
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69704C8]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__MPCModelRadioPlaybackQueue_removeExplicitItems__block_invoke;
  v23[3] = &unk_1E82354B0;
  v23[4] = self;
  v5 = v3;
  v24 = v5;
  v6 = [v4 initWithBlock:v23];
  if ([v6 hasChanges])
  {
    v7 = [(MPSectionedCollection *)self->_trackModels mutableCopy];
    v8 = [(MPSectionedCollection *)self->_tracks mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [v7 removeItemAtIndexPath:v14];
          [v8 removeItemAtIndexPath:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v11);
    }

    trackModels = self->_trackModels;
    self->_trackModels = v7;
    v16 = v7;

    tracks = self->_tracks;
    self->_tracks = v8;
  }

  return v6;
}

void __49__MPCModelRadioPlaybackQueue_removeExplicitItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD50];
  v4 = a2;
  v5 = [v3 indexSet];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MPCModelRadioPlaybackQueue_removeExplicitItems__block_invoke_2;
  v10[3] = &unk_1E8235488;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v9 = v5;
  [v8 enumerateItemsUsingBlock:v10];
  [v4 setDeletedSections:v9];
}

void __49__MPCModelRadioPlaybackQueue_removeExplicitItems__block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [*(a1[4] + 6) globalIndexForIndexPath:?];
  if ([a1[4] isExplicitItemAtIndex:v4])
  {
    [a1[5] addObject:v5];
    [a1[6] addIndex:v4];
  }
}

- (void)removeAllItems
{
  v3 = objc_alloc_init(MEMORY[0x1E6970818]);
  trackModels = self->_trackModels;
  self->_trackModels = v3;

  v5 = objc_alloc_init(MEMORY[0x1E6970818]);
  tracks = self->_tracks;
  self->_tracks = v5;

  MEMORY[0x1EEE66BB8](v5, tracks);
}

- (BOOL)isExplicitItemAtIndex:(int64_t)a3
{
  v4 = [(MPSectionedCollection *)self->_trackModels indexPathForGlobalIndex:a3];
  if (v4)
  {
    v5 = [(MPSectionedCollection *)self->_trackModels itemAtIndexPath:v4];
    v6 = [v5 flattenedGenericObject];
    v7 = [v6 type];

    if (v7 == 1)
    {
      v8 = [v5 song];
      v9 = [v8 isExplicitSong];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)AVItemAtIndex:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v5 = [(MPSectionedCollection *)self->_trackModels itemAtIndexPath:v4];
  v6 = [[MPCModelGenericAVItem alloc] initWithGenericObject:v5 itemProperties:self->_itemProperties playbackRequestEnvironment:self->_playbackRequestEnvironment identityPropertySet:self->_identityPropertySet];
  v7 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
  v8 = [MPCMediaLibraryPlaybackAssetCacheProvider deviceLibraryProviderWithUserIdentity:v7];
  [(MPCModelGenericAVItem *)v6 setAssetCacheProvider:v8];

  [(MPCModelGenericAVItem *)v6 setRadioPlayback:1];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriInitiated];
  [(MPCModelGenericAVItem *)v6 setSiriInitiated:v9];

  [(MPCModelGenericAVItem *)v6 setPrioritizeStartupOverQuality:self->_prioritizeStartupOverQuality];
  v10 = [(MPSectionedCollection *)self->_tracks itemAtIndexPath:v4];
  v11 = -[MPSectionedCollection sectionAtIndex:](self->_tracks, "sectionAtIndex:", [v4 section]);
  v12 = [v10 trackType];
  [(MPCModelGenericAVItem *)v6 setRadioStreamPlayback:v12 == 4];
  -[MPCModelGenericAVItem setSubscriptionRequired:](v6, "setSubscriptionRequired:", [v11 isSubscriptionRequired]);
  v13 = [v10 serverTrackInfo];
  [(MPCModelGenericAVItem *)v6 setTrackInfo:v13];

  if (v12 == 1)
  {
    v14 = [v10 likeState];
    v15 = 3;
    if (v14 != -1)
    {
      v15 = 1;
    }

    if (v14 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    [(MPCModelGenericAVItem *)v6 setStationItemLikedState:v16];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_activeModelGenericAVItems addObject:v6];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (MPCModelRadioPlaybackQueue)initWithPlaybackContext:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MPCModelRadioPlaybackQueue;
  v5 = [(MPCModelRadioPlaybackQueue *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeModelGenericAVItems = v6->_activeModelGenericAVItems;
    v6->_activeModelGenericAVItems = v7;

    v9 = [v4 siriReferenceIdentifier];
    v6->_isSiriInitiated = v9 != 0;

    v10 = [v4 playbackRequestEnvironment];
    playbackRequestEnvironment = v6->_playbackRequestEnvironment;
    v6->_playbackRequestEnvironment = v10;

    v12 = [v4 queueDescriptor];
    v6->_prioritizeStartupOverQuality = [v12 prioritizeStartupOverQuality];

    v13 = [v4 radioStation];

    if (v13)
    {
      v14 = [v4 radioStation];
      radioStation = v6->_radioStation;
      v6->_radioStation = v14;
    }
  }

  return v6;
}

@end