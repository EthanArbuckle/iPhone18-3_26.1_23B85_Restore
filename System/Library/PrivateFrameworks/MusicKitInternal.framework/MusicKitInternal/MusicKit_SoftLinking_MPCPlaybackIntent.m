@interface MusicKit_SoftLinking_MPCPlaybackIntent
+ (MusicKit_SoftLinking_MPCPlaybackIntent)emptyPlaybackIntent;
- (MusicKit_SoftLinking_MPCPlaybackIntent)init;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyLibraryRequest:(id)a3 allowedIdentifiers:(id)a4 startIdentifierSet:(id)a5 onlyLibraryContent:(BOOL)a6;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyModelStationSeeding:(id)a3;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationID:(id)a3;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationSeedingIdentifierSet:(id)a3;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreIDs:(id)a3 startIdentifierSet:(id)a4;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreSectionedCollection:(id)a3 startIdentifierSet:(id)a4;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithUnderlyingPlaybackIntent:(id)a3;
- (int64_t)repeatMode;
- (int64_t)shuffleMode;
- (void)setRepeatMode:(int64_t)a3;
- (void)setShuffleMode:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPCPlaybackIntent

- (MusicKit_SoftLinking_MPCPlaybackIntent)init
{
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v2 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(getMPCPlaybackIntentClass());
    [v3 setTracklistSource:3];
    underlyingPlaybackIntent = v2->_underlyingPlaybackIntent;
    v2->_underlyingPlaybackIntent = v3;
  }

  return v2;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreIDs:(id)a3 startIdentifierSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v8 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(getMPCModelStorePlaybackItemsRequestClass());
    [v9 setStoreIDs:v6];
    v10 = objc_alloc_init(getMPCModelPlaybackIntentTracklistTokenClass());
    [v10 setRequest:v9];
    if (v7)
    {
      [v10 setStartItemIdentifiers:v7];
    }

    v11 = objc_alloc_init(getMPCPlaybackIntentClass());
    underlyingPlaybackIntent = v8->_underlyingPlaybackIntent;
    v8->_underlyingPlaybackIntent = v11;

    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistToken:v10];
    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistSource:3];
  }

  return v8;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreSectionedCollection:(id)a3 startIdentifierSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v8 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(getMPCModelStorePlaybackItemsRequestClass());
    v10 = [v6 _underlyingSectionedCollection];
    [v9 setIdentifiers:v10];

    [v9 setLabel:@"MusicKit_StoreSectionedCollection"];
    v11 = objc_alloc_init(getMPCModelPlaybackIntentTracklistTokenClass());
    [v11 setRequest:v9];
    if (v7)
    {
      [v11 setStartItemIdentifiers:v7];
    }

    v12 = objc_alloc_init(getMPCPlaybackIntentClass());
    underlyingPlaybackIntent = v8->_underlyingPlaybackIntent;
    v8->_underlyingPlaybackIntent = v12;

    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistToken:v11];
    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistSource:3];
  }

  return v8;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyLibraryRequest:(id)a3 allowedIdentifiers:(id)a4 startIdentifierSet:(id)a5 onlyLibraryContent:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23.receiver = self;
  v23.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v13 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v23 init];
  if (v13)
  {
    v14 = v10;
    if ([v11 count])
    {
      v15 = [v14 allowedItemIdentifiers];
      v16 = [v15 count];

      if (!v16)
      {
        v17 = [v11 msv_map:&__block_literal_global_12];
        [v14 setAllowedItemIdentifiers:v17];
      }
    }

    v18 = [v14 allowedItemIdentifiers];
    if ([v18 count] <= 1)
    {
    }

    else
    {
      v19 = [v14 sectionKind];

      if (!v19)
      {
        [v14 setItemSortDescriptors:0];
        [v14 setSortUsingAllowedItemIdentifiers:1];
      }
    }

    if (!a6)
    {
      [v14 setFilteringOptions:4];
    }

    v20 = [v14 playbackIntentWithStartItemIdentifiers:v12];
    underlyingPlaybackIntent = v13->_underlyingPlaybackIntent;
    v13->_underlyingPlaybackIntent = v20;
  }

  return v13;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyModelStationSeeding:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v11 init];
  if (v5)
  {
    v6 = [v4 _underlyingModelObject];
    getMPModelAlbumClass_0();
    if (objc_opt_isKindOfClass())
    {
      v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromAlbum:v6];
    }

    else
    {
      getMPModelArtistClass();
      if (objc_opt_isKindOfClass())
      {
        v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromArtist:v6];
      }

      else
      {
        getMPModelSongClass_0();
        if (objc_opt_isKindOfClass())
        {
          v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromSong:v6];
        }

        else
        {
          getMPModelRadioStationClass();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_11:

            goto LABEL_12;
          }

          v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentWithStation:v6];
        }
      }
    }

    v8 = v7;

    underlyingPlaybackIntent = v5->_underlyingPlaybackIntent;
    v5->_underlyingPlaybackIntent = v8;

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationSeedingIdentifierSet:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v36 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 modelKind];
    v8 = [v7 identityKind];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v9 = getMPModelAlbumKindClass_softClass_0;
    v45 = getMPModelAlbumKindClass_softClass_0;
    if (!getMPModelAlbumKindClass_softClass_0)
    {
      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __getMPModelAlbumKindClass_block_invoke_0;
      v40 = &unk_1E84C3838;
      v41 = &v42;
      __getMPModelAlbumKindClass_block_invoke_0(&v37);
      v9 = v43[3];
    }

    v10 = v9;
    _Block_object_dispose(&v42, 8);
    v11 = [v9 identityKind];
    v12 = [v8 isEqual:v11];

    if (v12)
    {
      v13 = [objc_alloc(getMPModelAlbumClass_0()) initWithIdentifiers:v6 block:&__block_literal_global_13_0];
      v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromAlbum:v13];
    }

    else
    {
      v15 = [v6 modelKind];
      v16 = [v15 identityKind];
      v42 = 0;
      v43 = &v42;
      v44 = 0x2050000000;
      v17 = getMPModelArtistKindClass_softClass;
      v45 = getMPModelArtistKindClass_softClass;
      if (!getMPModelArtistKindClass_softClass)
      {
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __getMPModelArtistKindClass_block_invoke;
        v40 = &unk_1E84C3838;
        v41 = &v42;
        __getMPModelArtistKindClass_block_invoke(&v37);
        v17 = v43[3];
      }

      v18 = v17;
      _Block_object_dispose(&v42, 8);
      v19 = [v17 identityKind];
      v20 = [v16 isEqual:v19];

      if (v20)
      {
        v13 = [objc_alloc(getMPModelArtistClass()) initWithIdentifiers:v6 block:&__block_literal_global_15];
        v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromArtist:v13];
      }

      else
      {
        v21 = [v6 modelKind];
        v22 = [v21 identityKind];
        v42 = 0;
        v43 = &v42;
        v44 = 0x2050000000;
        v23 = getMPModelSongKindClass_softClass;
        v45 = getMPModelSongKindClass_softClass;
        if (!getMPModelSongKindClass_softClass)
        {
          v37 = MEMORY[0x1E69E9820];
          v38 = 3221225472;
          v39 = __getMPModelSongKindClass_block_invoke;
          v40 = &unk_1E84C3838;
          v41 = &v42;
          __getMPModelSongKindClass_block_invoke(&v37);
          v23 = v43[3];
        }

        v24 = v23;
        _Block_object_dispose(&v42, 8);
        v25 = [v23 identityKind];
        v26 = [v22 isEqual:v25];

        if (v26)
        {
          v13 = [objc_alloc(getMPModelSongClass_0()) initWithIdentifiers:v6 block:&__block_literal_global_17];
          v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromSong:v13];
        }

        else
        {
          v27 = [v6 modelKind];
          v28 = [v27 identityKind];
          v42 = 0;
          v43 = &v42;
          v44 = 0x2050000000;
          v29 = getMPModelRadioStationKindClass_softClass;
          v45 = getMPModelRadioStationKindClass_softClass;
          if (!getMPModelRadioStationKindClass_softClass)
          {
            v37 = MEMORY[0x1E69E9820];
            v38 = 3221225472;
            v39 = __getMPModelRadioStationKindClass_block_invoke;
            v40 = &unk_1E84C3838;
            v41 = &v42;
            __getMPModelRadioStationKindClass_block_invoke(&v37);
            v29 = v43[3];
          }

          v30 = v29;
          _Block_object_dispose(&v42, 8);
          v31 = [v29 identityKind];
          v32 = [v28 isEqual:v31];

          if (!v32)
          {

            v34 = 0;
            goto LABEL_20;
          }

          v13 = [objc_alloc(getMPModelRadioStationClass()) initWithIdentifiers:v6 block:&__block_literal_global_19_1];
          v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentWithStation:v13];
        }
      }
    }

    underlyingPlaybackIntent = v5->_underlyingPlaybackIntent;
    v5->_underlyingPlaybackIntent = v14;
  }

  v34 = v5;
LABEL_20:

  return v34;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v9 init];
  if (v5)
  {
    v6 = [getMPCPlaybackIntentClass() radioPlaybackIntentWithStationStringID:v4];
    underlyingPlaybackIntent = v5->_underlyingPlaybackIntent;
    v5->_underlyingPlaybackIntent = v6;
  }

  return v5;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithUnderlyingPlaybackIntent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v6 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlaybackIntent, a3);
  }

  return v7;
}

+ (MusicKit_SoftLinking_MPCPlaybackIntent)emptyPlaybackIntent
{
  v2 = objc_alloc_init(MusicKit_SoftLinking_MPCPlaybackIntent);

  return v2;
}

- (int64_t)repeatMode
{
  v2 = [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent repeatMode];
  if (v2 > 2)
  {
    return -1;
  }

  else
  {
    return qword_1D5619C78[v2];
  }
}

- (void)setRepeatMode:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = -1;
  }

  else
  {
    v3 = qword_1D5619C78[a3];
  }

  [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent setRepeatMode:v3];
}

- (int64_t)shuffleMode
{
  result = [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent shuffleMode];
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

- (void)setShuffleMode:(int64_t)a3
{
  if (a3 >= 3)
  {
    a3 = -1;
  }

  [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent setShuffleMode:a3];
}

@end