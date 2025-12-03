@interface MusicKit_RemoteLibraryPlaybackQueue
- (MusicKit_RemoteLibraryPlaybackQueue)initWithContainer:(id)container startItem:(id)item replaceQueueIntent:(int64_t)intent;
- (MusicKit_RemoteLibraryPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent;
- (MusicKit_RemoteLibraryPlaybackQueue)initWithRequest:(id)request startItem:(id)item replaceQueueIntent:(int64_t)intent;
- (int64_t)_persistentIDForStartItem;
- (void)_insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler;
- (void)_resolveMediaQueryForLibraryRequest:(id)request completionHandler:(id)handler;
- (void)_setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler;
- (void)insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler;
- (void)setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler;
@end

@implementation MusicKit_RemoteLibraryPlaybackQueue

- (MusicKit_RemoteLibraryPlaybackQueue)initWithRequest:(id)request startItem:(id)item replaceQueueIntent:(int64_t)intent
{
  v96 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  itemCopy = item;
  v85.receiver = self;
  v85.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v9 = [(MusicKit_RemotePlaybackQueue *)&v85 initWithReplaceQueueIntent:intent];
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = requestCopy;
  if (([v10 filteringOptions] & 2) != 0)
  {
    v15 = v10;
    libraryRequest = v9->_libraryRequest;
    v9->_libraryRequest = v15;
    goto LABEL_48;
  }

  v11 = objc_alloc_init(getMPMediaQueryClass());
  [v11 setGroupingType:0];
  sectionKind = [v10 sectionKind];
  getMPModelAlbumKindClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    albumsQuery = [getMPMediaQueryClass() albumsQuery];
LABEL_8:
    libraryRequest = albumsQuery;

    goto LABEL_10;
  }

  sectionKind2 = [v10 sectionKind];
  getMPModelPlaylistKindClass();
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    albumsQuery = [getMPMediaQueryClass() playlistsQuery];
    goto LABEL_8;
  }

  libraryRequest = v11;
LABEL_10:
  allowedSectionIdentifiers = [v10 allowedSectionIdentifiers];
  v20 = [allowedSectionIdentifiers count] == 0;

  if (v20)
  {
    scopedContainers = [v10 scopedContainers];
    v30 = [scopedContainers count] == 0;

    if (!v30)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = [v10 scopedContainers];
      v31 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
      if (v31)
      {
        v79 = *v82;
        v77 = &v88;
LABEL_16:
        v32 = 0;
        while (1)
        {
          if (*v82 != v79)
          {
            objc_enumerationMutation(obj);
          }

          identifiers = [*(*(&v81 + 1) + 8 * v32) identifiers];
          library = [identifiers library];
          persistentID = [library persistentID];

          if (!persistentID)
          {
            break;
          }

          getMPModelAlbumClass();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
            v37 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
            v38 = getMPMediaItemPropertyAlbumPersistentID();
            v39 = [MPMediaPropertyPredicateClass predicateWithValue:v37 forProperty:v38 comparisonType:0];
            [libraryRequest addFilterPredicate:v39];
          }

          else
          {
            getMPModelPlaylistClass();
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = getMPMediaPropertyPredicateClass();
              v41 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
              v42 = getMPMediaPlaylistPropertyPersistentID();
              v43 = [v40 predicateWithValue:v41 forProperty:v42 comparisonType:0];
              [libraryRequest addFilterPredicate:v43];

              [libraryRequest setShouldIncludeNonLibraryEntities:1];
            }

            else
            {
              v91 = 0;
              v92 = &v91;
              v93 = 0x2050000000;
              v44 = getMPModelArtistClass_softClass;
              v94 = getMPModelArtistClass_softClass;
              if (!getMPModelArtistClass_softClass)
              {
                v86 = MEMORY[0x1E69E9820];
                v87 = 3221225472;
                v88 = __getMPModelArtistClass_block_invoke;
                v89 = &unk_1E84C3838;
                v90 = &v91;
                __getMPModelArtistClass_block_invoke(&v86);
                v44 = v92[3];
              }

              v45 = v44;
              _Block_object_dispose(&v91, 8);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 sectionKind], v46 = objc_claimAutoreleasedReturnValue(), getMPModelAlbumKindClass(), objc_opt_class(), v47 = objc_opt_isKindOfClass(), v46, (v47))
              {
                v48 = getMPMediaPropertyPredicateClass();
                v49 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
                v91 = 0;
                v92 = &v91;
                v93 = 0x2020000000;
                v50 = getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr;
                v94 = getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr;
                if (!getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr)
                {
                  v86 = MEMORY[0x1E69E9820];
                  v87 = 3221225472;
                  v88 = __getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke;
                  v89 = &unk_1E84C3838;
                  v90 = &v91;
                  v51 = MediaPlayerLibrary_13();
                  v52 = dlsym(v51, "MPMediaItemPropertyAlbumArtistPersistentID");
                  *(v90[1] + 24) = v52;
                  getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr = *(v90[1] + 24);
                  v50 = v92[3];
                }

                _Block_object_dispose(&v91, 8);
                if (!v50)
                {
                  getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
                  __break(1u);
                }

                v53 = *v50;
                v54 = [v48 predicateWithValue:v49 forProperty:v53 comparisonType:0];
                [libraryRequest addFilterPredicate:v54];
              }

              else
              {
                v91 = 0;
                v92 = &v91;
                v93 = 0x2050000000;
                v55 = getMPModelComposerClass_softClass;
                v94 = getMPModelComposerClass_softClass;
                if (!getMPModelComposerClass_softClass)
                {
                  v86 = MEMORY[0x1E69E9820];
                  v87 = 3221225472;
                  v88 = __getMPModelComposerClass_block_invoke;
                  v89 = &unk_1E84C3838;
                  v90 = &v91;
                  __getMPModelComposerClass_block_invoke(&v86);
                  v55 = v92[3];
                }

                v56 = v55;
                _Block_object_dispose(&v91, 8);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sectionKind3 = [v10 sectionKind];
                  getMPModelAlbumKindClass();
                  objc_opt_class();
                  v58 = objc_opt_isKindOfClass();

                  if (v58)
                  {
                    goto LABEL_40;
                  }
                }

                v91 = 0;
                v92 = &v91;
                v93 = 0x2050000000;
                v59 = getMPModelGenreClass_softClass;
                v94 = getMPModelGenreClass_softClass;
                if (!getMPModelGenreClass_softClass)
                {
                  v86 = MEMORY[0x1E69E9820];
                  v87 = 3221225472;
                  v88 = __getMPModelGenreClass_block_invoke;
                  v89 = &unk_1E84C3838;
                  v90 = &v91;
                  __getMPModelGenreClass_block_invoke(&v86);
                  v59 = v92[3];
                }

                v60 = v59;
                _Block_object_dispose(&v91, 8);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sectionKind4 = [v10 sectionKind];
                  getMPModelAlbumKindClass();
                  objc_opt_class();
                  v62 = objc_opt_isKindOfClass();

                  if (v62)
                  {
LABEL_40:
                    v63 = getMPMediaPropertyPredicateClass();
                    v64 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
                    v65 = getMPMediaItemPropertyComposerPersistentID();
                    v66 = [v63 predicateWithValue:v64 forProperty:v65 comparisonType:0];
                    [libraryRequest addFilterPredicate:v66];
                  }
                }
              }
            }
          }

          if (v31 == ++v32)
          {
            v31 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
            if (v31)
            {
              goto LABEL_16;
            }

            goto LABEL_47;
          }
        }
      }

      goto LABEL_47;
    }
  }

  else
  {
    allowedSectionIdentifiers2 = [v10 allowedSectionIdentifiers];
    firstObject = [allowedSectionIdentifiers2 firstObject];
    library2 = [firstObject library];
    persistentID2 = [library2 persistentID];

    sectionKind5 = [v10 sectionKind];
    getMPModelAlbumKindClass();
    objc_opt_class();
    LOBYTE(firstObject) = objc_opt_isKindOfClass();

    if (firstObject)
    {
      v26 = getMPMediaPropertyPredicateClass();
      obj = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID2];
      v27 = getMPMediaItemPropertyAlbumPersistentID();
      v28 = [v26 predicateWithValue:obj forProperty:v27 comparisonType:0];
LABEL_46:
      v70 = v28;
      [libraryRequest addFilterPredicate:v28];

LABEL_47:
      objc_storeStrong(&v9->_mediaQuery, libraryRequest);
      goto LABEL_48;
    }

    sectionKind6 = [v10 sectionKind];
    getMPModelPlaylistKindClass();
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    if (v68)
    {
      v69 = getMPMediaPropertyPredicateClass();
      obj = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID2];
      v27 = getMPMediaPlaylistPropertyPersistentID();
      v28 = [v69 predicateWithValue:obj forProperty:v27 comparisonType:0];
      goto LABEL_46;
    }
  }

LABEL_48:

  if (!v9->_mediaQuery)
  {
    songsQuery = [getMPMediaQueryClass() songsQuery];
    mediaQuery = v9->_mediaQuery;
    v9->_mediaQuery = songsQuery;
  }

  _underlyingModelObject = [itemCopy _underlyingModelObject];
  underlyingStartObject = v9->_underlyingStartObject;
  v9->_underlyingStartObject = _underlyingModelObject;

LABEL_51:
  v75 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MusicKit_RemoteLibraryPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v7 = [(MusicKit_RemotePlaybackQueue *)&v13 initWithReplaceQueueIntent:intent];
  if (v7)
  {
    songsQuery = [getMPMediaQueryClass() songsQuery];
    mediaQuery = v7->_mediaQuery;
    v7->_mediaQuery = songsQuery;

    _underlyingModelObject = [itemCopy _underlyingModelObject];
    underlyingStartObject = v7->_underlyingStartObject;
    v7->_underlyingStartObject = _underlyingModelObject;
  }

  return v7;
}

- (MusicKit_RemoteLibraryPlaybackQueue)initWithContainer:(id)container startItem:(id)item replaceQueueIntent:(int64_t)intent
{
  containerCopy = container;
  itemCopy = item;
  v28.receiver = self;
  v28.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v10 = [(MusicKit_RemotePlaybackQueue *)&v28 initWithReplaceQueueIntent:intent];
  if (v10)
  {
    _underlyingModelObject = [containerCopy _underlyingModelObject];
    v12 = objc_alloc_init(getMPMediaQueryClass());
    [v12 setGroupingType:0];
    getMPModelAlbumClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
      v14 = MEMORY[0x1E696AD98];
      identifiers = [_underlyingModelObject identifiers];
      library = [identifiers library];
      v17 = [v14 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
      v18 = getMPMediaItemPropertyAlbumPersistentID();
    }

    else
    {
      getMPModelPlaylistClass();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        songsQuery = [getMPMediaQueryClass() songsQuery];
        mediaQuery = v10->_mediaQuery;
        v10->_mediaQuery = songsQuery;
        goto LABEL_8;
      }

      MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
      v19 = MEMORY[0x1E696AD98];
      identifiers = [_underlyingModelObject identifiers];
      library = [identifiers library];
      v17 = [v19 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
      v18 = getMPMediaPlaylistPropertyPersistentID();
    }

    v20 = v18;
    v21 = [MPMediaPropertyPredicateClass predicateWithValue:v17 forProperty:v18 comparisonType:0];
    [v12 addFilterPredicate:v21];

    v22 = v12;
    mediaQuery = v10->_mediaQuery;
    v10->_mediaQuery = v22;
LABEL_8:

    _underlyingModelObject2 = [itemCopy _underlyingModelObject];
    underlyingStartObject = v10->_underlyingStartObject;
    v10->_underlyingStartObject = _underlyingModelObject2;
  }

  return v10;
}

- (void)setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler
{
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  libraryRequest = self->_libraryRequest;
  if (libraryRequest)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__MusicKit_RemoteLibraryPlaybackQueue_setQueueWithPath_shuffleMode_sessionID_completionHandler___block_invoke;
    v14[3] = &unk_1E84C4230;
    v14[4] = self;
    v15 = pathCopy;
    modeCopy = mode;
    v16 = dCopy;
    v17 = handlerCopy;
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _resolveMediaQueryForLibraryRequest:libraryRequest completionHandler:v14];
  }

  else
  {
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _setQueueWithPath:pathCopy shuffleMode:mode sessionID:dCopy completionHandler:handlerCopy];
  }
}

- (void)_setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler
{
  v42[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  v13 = *MEMORY[0x1E695E480];
  v14 = MRSystemAppPlaybackQueueCreate();
  protobufferEncodableObject = [(MPMediaQuery *)self->_mediaQuery protobufferEncodableObject];
  [protobufferEncodableObject data];
  MRSystemAppPlaybackQueueSetLocalQueryData();

  _persistentIDForStartItem = [(MusicKit_RemoteLibraryPlaybackQueue *)self _persistentIDForStartItem];
  if (_persistentIDForStartItem)
  {
    v17 = _persistentIDForStartItem;
    defaultMediaLibrary = [getMPMediaLibraryClass_0() defaultMediaLibrary];
    v19 = [defaultMediaLibrary multiverseIdentifierForTrackWithPersistentID:v17];

    [v19 data];
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData();
  }

  if (mode <= 2)
  {
    v20 = dword_1D5619C60[mode];
  }

  MRSystemAppPlaybackQueueSetLocalQueryShuffleMode();
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v21 = getMPRemotePlaybackQueueClass_softClass_0;
  v40 = getMPRemotePlaybackQueueClass_softClass_0;
  if (!getMPRemotePlaybackQueueClass_softClass_0)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __getMPRemotePlaybackQueueClass_block_invoke_0;
    v36[3] = &unk_1E84C3838;
    v36[4] = &v37;
    __getMPRemotePlaybackQueueClass_block_invoke_0(v36);
    v21 = v38[3];
  }

  v22 = v21;
  _Block_object_dispose(&v37, 8);
  v23 = [v21 queueWithMediaRemotePlaybackQueue:v14];
  v24 = v23;
  [v23 _mediaRemotePlaybackQueue];
  [(MusicKit_RemotePlaybackQueue *)self mrReplaceIntentFromMusicKitReplaceQueueIntent:[(MusicKit_RemotePlaybackQueue *)self replaceQueueIntent]];
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v26 = dCopy;
  v27 = v26;
  if (!v26)
  {
    v28 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v27 = [v28 sessionIDForPlayerPath:pathCopy];
  }

  v29 = *MEMORY[0x1E69B1090];
  v41[0] = *MEMORY[0x1E69B10E8];
  v41[1] = v29;
  v42[0] = v27;
  v42[1] = MEMORY[0x1E695E118];
  v41[2] = *MEMORY[0x1E69B1268];
  v42[2] = ExternalRepresentation;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v35 = 0;
  v31 = [(MusicKit_RemotePlaybackQueue *)self mrPlayerPathFromPlaybackPath:pathCopy error:&v35];
  v32 = v35;
  if (v32)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v32);
    }
  }

  else
  {
    v34 = handlerCopy;
    MRMediaRemoteSendCommandToPlayerWithResult();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler
{
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  libraryRequest = self->_libraryRequest;
  if (libraryRequest)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__MusicKit_RemoteLibraryPlaybackQueue_insertQueueWithPath_position_sessionID_completionHandler___block_invoke;
    v14[3] = &unk_1E84C4230;
    v14[4] = self;
    v15 = pathCopy;
    positionCopy = position;
    v16 = dCopy;
    v17 = handlerCopy;
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _resolveMediaQueryForLibraryRequest:libraryRequest completionHandler:v14];
  }

  else
  {
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _insertQueueWithPath:pathCopy position:position sessionID:dCopy completionHandler:handlerCopy];
  }
}

- (void)_insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler
{
  v45[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E695E480];
  MRSystemAppPlaybackQueueCreate();
  _persistentIDForStartItem = [(MusicKit_RemoteLibraryPlaybackQueue *)self _persistentIDForStartItem];
  v13 = &off_1D5619000;
  if (_persistentIDForStartItem)
  {
    v14 = _persistentIDForStartItem;
    mediaQuery = self->_mediaQuery;
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
    v17 = handlerCopy;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v18 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    v43 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyPersistentIDSymbolLoc_ptr)
    {
      v19 = MediaPlayerLibrary_13();
      v41[3] = dlsym(v19, "MPMediaItemPropertyPersistentID");
      getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = v41[3];
      v18 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (!v18)
    {
      getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
      __break(1u);
    }

    v20 = *v18;
    [MPMediaPropertyPredicateClass predicateWithValue:v16 forProperty:v20 comparisonType:0];
    handlerCopy = v17;
    v21 = v13 = &off_1D5619000;
    [(MPMediaQuery *)mediaQuery addFilterPredicate:v21];
  }

  protobufferEncodableObject = [(MPMediaQuery *)self->_mediaQuery protobufferEncodableObject];
  [protobufferEncodableObject data];
  MRSystemAppPlaybackQueueSetLocalQueryData();

  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v24 = dCopy;
  v25 = v24;
  if (!v24)
  {
    v26 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v25 = [v26 sessionIDForPlayerPath:pathCopy];
  }

  if (position == 2)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2 * (position == 1);
  }

  v28 = *MEMORY[0x1E69B10E8];
  v45[0] = v25;
  v29 = *MEMORY[0x1E69B1178];
  v44[0] = v28;
  v44[1] = v29;
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v27];
  v45[1] = v30;
  v44[2] = *MEMORY[0x1E69B1268];
  v45[2] = ExternalRepresentation;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

  mrPlayerPath = [pathCopy mrPlayerPath];
  v38 = *(v13 + 375);
  v39 = handlerCopy;
  v33 = handlerCopy;
  MRMediaRemoteSendCommandToPlayerWithResult();

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_resolveMediaQueryForLibraryRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__MusicKit_RemoteLibraryPlaybackQueue__resolveMediaQueryForLibraryRequest_completionHandler___block_invoke;
  v7[3] = &unk_1E84C3B38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [request performWithResponseHandler:v7];
}

- (int64_t)_persistentIDForStartItem
{
  underlyingStartObject = self->_underlyingStartObject;
  if (!underlyingStartObject)
  {
    return 0;
  }

  identifiers = [(MPModelObject *)underlyingStartObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  v7 = self->_underlyingStartObject;
  getMPModelPlaylistEntryClass_0();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_underlyingStartObject;
    song = [(MPModelObject *)v8 song];

    if (song)
    {
      song2 = [(MPModelObject *)v8 song];
    }

    else
    {
      tvEpisode = [(MPModelObject *)v8 tvEpisode];

      if (tvEpisode)
      {
        song2 = [(MPModelObject *)v8 tvEpisode];
      }

      else
      {
        movie = [(MPModelObject *)v8 movie];

        if (!movie)
        {
LABEL_11:

          return persistentID;
        }

        song2 = [(MPModelObject *)v8 movie];
      }
    }

    v13 = song2;
    identifiers2 = [song2 identifiers];
    library2 = [identifiers2 library];
    persistentID = [library2 persistentID];

    goto LABEL_11;
  }

  return persistentID;
}

@end