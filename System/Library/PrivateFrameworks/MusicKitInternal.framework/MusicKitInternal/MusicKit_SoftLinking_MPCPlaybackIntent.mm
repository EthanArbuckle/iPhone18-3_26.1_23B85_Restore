@interface MusicKit_SoftLinking_MPCPlaybackIntent
+ (MusicKit_SoftLinking_MPCPlaybackIntent)emptyPlaybackIntent;
- (MusicKit_SoftLinking_MPCPlaybackIntent)init;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyLibraryRequest:(id)request allowedIdentifiers:(id)identifiers startIdentifierSet:(id)set onlyLibraryContent:(BOOL)content;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyModelStationSeeding:(id)seeding;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationID:(id)d;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationSeedingIdentifierSet:(id)set;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreIDs:(id)ds startIdentifierSet:(id)set;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreSectionedCollection:(id)collection startIdentifierSet:(id)set;
- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithUnderlyingPlaybackIntent:(id)intent;
- (int64_t)repeatMode;
- (int64_t)shuffleMode;
- (void)setRepeatMode:(int64_t)mode;
- (void)setShuffleMode:(int64_t)mode;
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

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreIDs:(id)ds startIdentifierSet:(id)set
{
  dsCopy = ds;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v8 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(getMPCModelStorePlaybackItemsRequestClass());
    [v9 setStoreIDs:dsCopy];
    v10 = objc_alloc_init(getMPCModelPlaybackIntentTracklistTokenClass());
    [v10 setRequest:v9];
    if (setCopy)
    {
      [v10 setStartItemIdentifiers:setCopy];
    }

    v11 = objc_alloc_init(getMPCPlaybackIntentClass());
    underlyingPlaybackIntent = v8->_underlyingPlaybackIntent;
    v8->_underlyingPlaybackIntent = v11;

    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistToken:v10];
    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistSource:3];
  }

  return v8;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStoreSectionedCollection:(id)collection startIdentifierSet:(id)set
{
  collectionCopy = collection;
  setCopy = set;
  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v8 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(getMPCModelStorePlaybackItemsRequestClass());
    _underlyingSectionedCollection = [collectionCopy _underlyingSectionedCollection];
    [v9 setIdentifiers:_underlyingSectionedCollection];

    [v9 setLabel:@"MusicKit_StoreSectionedCollection"];
    v11 = objc_alloc_init(getMPCModelPlaybackIntentTracklistTokenClass());
    [v11 setRequest:v9];
    if (setCopy)
    {
      [v11 setStartItemIdentifiers:setCopy];
    }

    v12 = objc_alloc_init(getMPCPlaybackIntentClass());
    underlyingPlaybackIntent = v8->_underlyingPlaybackIntent;
    v8->_underlyingPlaybackIntent = v12;

    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistToken:v11];
    [(MPCPlaybackIntent *)v8->_underlyingPlaybackIntent setTracklistSource:3];
  }

  return v8;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyLibraryRequest:(id)request allowedIdentifiers:(id)identifiers startIdentifierSet:(id)set onlyLibraryContent:(BOOL)content
{
  requestCopy = request;
  identifiersCopy = identifiers;
  setCopy = set;
  v23.receiver = self;
  v23.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v13 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v23 init];
  if (v13)
  {
    v14 = requestCopy;
    if ([identifiersCopy count])
    {
      allowedItemIdentifiers = [v14 allowedItemIdentifiers];
      v16 = [allowedItemIdentifiers count];

      if (!v16)
      {
        v17 = [identifiersCopy msv_map:&__block_literal_global_12];
        [v14 setAllowedItemIdentifiers:v17];
      }
    }

    allowedItemIdentifiers2 = [v14 allowedItemIdentifiers];
    if ([allowedItemIdentifiers2 count] <= 1)
    {
    }

    else
    {
      sectionKind = [v14 sectionKind];

      if (!sectionKind)
      {
        [v14 setItemSortDescriptors:0];
        [v14 setSortUsingAllowedItemIdentifiers:1];
      }
    }

    if (!content)
    {
      [v14 setFilteringOptions:4];
    }

    v20 = [v14 playbackIntentWithStartItemIdentifiers:setCopy];
    underlyingPlaybackIntent = v13->_underlyingPlaybackIntent;
    v13->_underlyingPlaybackIntent = v20;
  }

  return v13;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithLegacyModelStationSeeding:(id)seeding
{
  seedingCopy = seeding;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v11 init];
  if (v5)
  {
    _underlyingModelObject = [seedingCopy _underlyingModelObject];
    getMPModelAlbumClass_0();
    if (objc_opt_isKindOfClass())
    {
      v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromAlbum:_underlyingModelObject];
    }

    else
    {
      getMPModelArtistClass();
      if (objc_opt_isKindOfClass())
      {
        v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromArtist:_underlyingModelObject];
      }

      else
      {
        getMPModelSongClass_0();
        if (objc_opt_isKindOfClass())
        {
          v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromSong:_underlyingModelObject];
        }

        else
        {
          getMPModelRadioStationClass();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_11:

            goto LABEL_12;
          }

          v7 = [getMPCPlaybackIntentClass() radioPlaybackIntentWithStation:_underlyingModelObject];
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

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationSeedingIdentifierSet:(id)set
{
  setCopy = set;
  v36.receiver = self;
  v36.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v36 init];
  if (v5)
  {
    v6 = setCopy;
    modelKind = [v6 modelKind];
    identityKind = [modelKind identityKind];
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
    identityKind2 = [v9 identityKind];
    v12 = [identityKind isEqual:identityKind2];

    if (v12)
    {
      v13 = [objc_alloc(getMPModelAlbumClass_0()) initWithIdentifiers:v6 block:&__block_literal_global_13_0];
      v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromAlbum:v13];
    }

    else
    {
      modelKind2 = [v6 modelKind];
      identityKind3 = [modelKind2 identityKind];
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
      identityKind4 = [v17 identityKind];
      v20 = [identityKind3 isEqual:identityKind4];

      if (v20)
      {
        v13 = [objc_alloc(getMPModelArtistClass()) initWithIdentifiers:v6 block:&__block_literal_global_15];
        v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromArtist:v13];
      }

      else
      {
        modelKind3 = [v6 modelKind];
        identityKind5 = [modelKind3 identityKind];
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
        identityKind6 = [v23 identityKind];
        v26 = [identityKind5 isEqual:identityKind6];

        if (v26)
        {
          v13 = [objc_alloc(getMPModelSongClass_0()) initWithIdentifiers:v6 block:&__block_literal_global_17];
          v14 = [getMPCPlaybackIntentClass() radioPlaybackIntentFromSong:v13];
        }

        else
        {
          modelKind4 = [v6 modelKind];
          identityKind7 = [modelKind4 identityKind];
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
          identityKind8 = [v29 identityKind];
          v32 = [identityKind7 isEqual:identityKind8];

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

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithStationID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v5 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v9 init];
  if (v5)
  {
    v6 = [getMPCPlaybackIntentClass() radioPlaybackIntentWithStationStringID:dCopy];
    underlyingPlaybackIntent = v5->_underlyingPlaybackIntent;
    v5->_underlyingPlaybackIntent = v6;
  }

  return v5;
}

- (MusicKit_SoftLinking_MPCPlaybackIntent)initWithUnderlyingPlaybackIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlaybackIntent;
  v6 = [(MusicKit_SoftLinking_MPCPlaybackIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlaybackIntent, intent);
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
  repeatMode = [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent repeatMode];
  if (repeatMode > 2)
  {
    return -1;
  }

  else
  {
    return qword_1D5619C78[repeatMode];
  }
}

- (void)setRepeatMode:(int64_t)mode
{
  if (mode > 2)
  {
    v3 = -1;
  }

  else
  {
    v3 = qword_1D5619C78[mode];
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

- (void)setShuffleMode:(int64_t)mode
{
  if (mode >= 3)
  {
    mode = -1;
  }

  [(MPCPlaybackIntent *)self->_underlyingPlaybackIntent setShuffleMode:mode];
}

@end