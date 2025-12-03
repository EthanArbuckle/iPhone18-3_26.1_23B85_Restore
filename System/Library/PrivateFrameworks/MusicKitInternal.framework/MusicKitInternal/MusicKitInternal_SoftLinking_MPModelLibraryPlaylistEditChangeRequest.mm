@interface MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest
- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist parentPlaylist:(id)parentPlaylist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description playlistUserImage:(CGImage *)image publicPlaylist:(id)publicPlaylist visiblePlaylist:(id)self0 authorStoreIdentifier:(id)self1;
- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description playlistUserImage:(CGImage *)image publicPlaylist:(id)publicPlaylist visiblePlaylist:(id)visiblePlaylist authorStoreIdentifier:(id)self0;
- (void)performWithCompletionPolicy:(int64_t)policy completionHandler:(id)handler;
@end

@implementation MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest

- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description playlistUserImage:(CGImage *)image publicPlaylist:(id)publicPlaylist visiblePlaylist:(id)visiblePlaylist authorStoreIdentifier:(id)self0
{
  playlistCopy = playlist;
  entriesCopy = entries;
  nameCopy = name;
  descriptionCopy = description;
  publicPlaylistCopy = publicPlaylist;
  visiblePlaylistCopy = visiblePlaylist;
  identifierCopy = identifier;
  v38.receiver = self;
  v38.super_class = MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest;
  v23 = [(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)&v38 init];
  if (v23)
  {
    imageCopy = image;
    v36 = nameCopy;
    v24 = objc_alloc_init(getMPModelLibraryPlaylistEditChangeRequestClass());
    underlyingRequest = v23->_underlyingRequest;
    v23->_underlyingRequest = v24;

    v26 = v23->_underlyingRequest;
    [getMPMediaLibraryClass() deviceMediaLibrary];
    v28 = v27 = playlistCopy;
    [(MPModelLibraryPlaylistEditChangeRequest *)v26 setMediaLibrary:v28];

    v29 = v23->_underlyingRequest;
    v37 = v27;
    _underlyingModelObject = [v27 _underlyingModelObject];
    [(MPModelLibraryPlaylistEditChangeRequest *)v29 setPlaylist:_underlyingModelObject];

    if (entriesCopy)
    {
      v31 = [entriesCopy msv_map:&__block_literal_global_6];
      v32 = objc_alloc_init(getMPMutableSectionedCollectionClass_0());
      [v32 appendSection:&stru_1F50C75D0];
      [v32 appendItems:v31];
      [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistEntries:v32];
    }

    nameCopy = v36;
    if (imageCopy)
    {
      v33 = [objc_alloc(getUIImageClass()) initWithCGImage:imageCopy];
      [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistUserImage:v33];
    }

    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistName:v36];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistDescription:descriptionCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPublicPlaylist:publicPlaylistCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setVisiblePlaylist:visiblePlaylistCopy];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setAuthorStoreIdentifier:identifierCopy];
    playlistCopy = v37;
  }

  return v23;
}

- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)playlist parentPlaylist:(id)parentPlaylist playlistEntries:(id)entries playlistName:(id)name playlistDescription:(id)description playlistUserImage:(CGImage *)image publicPlaylist:(id)publicPlaylist visiblePlaylist:(id)self0 authorStoreIdentifier:(id)self1
{
  playlistCopy = playlist;
  parentPlaylistCopy = parentPlaylist;
  entriesCopy = entries;
  nameCopy = name;
  descriptionCopy = description;
  publicPlaylistCopy = publicPlaylist;
  visiblePlaylistCopy = visiblePlaylist;
  identifierCopy = identifier;
  v41 = playlistCopy;
  v24 = playlistCopy;
  v25 = parentPlaylistCopy;
  v26 = [(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)self initWithPlaylist:v24 playlistEntries:entriesCopy playlistName:nameCopy playlistDescription:descriptionCopy playlistUserImage:image publicPlaylist:publicPlaylistCopy visiblePlaylist:visiblePlaylistCopy authorStoreIdentifier:identifierCopy];
  v27 = v26;
  if (v26)
  {
    if (v25)
    {
      underlyingRequest = v26->_underlyingRequest;
      _underlyingModelObject = [v25 _underlyingModelObject];
      [(MPModelLibraryPlaylistEditChangeRequest *)underlyingRequest setParentPlaylist:_underlyingModelObject];
    }

    else
    {
      v43 = objc_alloc(getMPIdentifierSetClass());
      v51 = 0;
      v52 = &v51;
      v53 = 0x2050000000;
      v30 = getMPModelPlaylistKindClass_softClass_0;
      v54 = getMPModelPlaylistKindClass_softClass_0;
      if (!getMPModelPlaylistKindClass_softClass_0)
      {
        v46 = MEMORY[0x1E69E9820];
        v47 = 3221225472;
        v48 = __getMPModelPlaylistKindClass_block_invoke_0;
        v49 = &unk_1E84C3838;
        v50 = &v51;
        __getMPModelPlaylistKindClass_block_invoke_0(&v46);
        v30 = v52[3];
      }

      v39 = descriptionCopy;
      v40 = nameCopy;
      v31 = v30;
      _Block_object_dispose(&v51, 8);
      identityKind = [v30 identityKind];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __224__MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest_initWithPlaylist_parentPlaylist_playlistEntries_playlistName_playlistDescription_playlistUserImage_publicPlaylist_visiblePlaylist_authorStoreIdentifier___block_invoke;
      v44[3] = &unk_1E84C4070;
      v33 = v27;
      v45 = v33;
      v34 = [v43 initWithSource:@"MusicKit_Move_Playlist" modelKind:identityKind block:v44];

      v51 = 0;
      v52 = &v51;
      v53 = 0x2050000000;
      v35 = getMPModelPlaylistClass_softClass;
      v54 = getMPModelPlaylistClass_softClass;
      if (!getMPModelPlaylistClass_softClass)
      {
        v46 = MEMORY[0x1E69E9820];
        v47 = 3221225472;
        v48 = __getMPModelPlaylistClass_block_invoke;
        v49 = &unk_1E84C3838;
        v50 = &v51;
        __getMPModelPlaylistClass_block_invoke(&v46);
        v35 = v52[3];
      }

      v36 = v35;
      _Block_object_dispose(&v51, 8);
      v37 = [[v35 alloc] initWithIdentifiers:v34];
      [v33[1] setParentPlaylist:v37];

      descriptionCopy = v39;
      nameCopy = v40;
    }
  }

  return v27;
}

- (void)performWithCompletionPolicy:(int64_t)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  playlistEntries = [(MPModelLibraryPlaylistEditChangeRequest *)self->_underlyingRequest playlistEntries];
  allItems = [playlistEntries allItems];
  v9 = [allItems msv_compactMap:&__block_literal_global_26_0];

  if ([v9 count])
  {
    v10 = objc_alloc_init(getMPMutableSectionedCollectionClass_0());
    [v10 appendSection:&stru_1F50C75D0];
    [v10 appendItems:v9];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v11 = getMPModelLibraryImportChangeRequestClass_softClass;
    v21 = getMPModelLibraryImportChangeRequestClass_softClass;
    if (!getMPModelLibraryImportChangeRequestClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getMPModelLibraryImportChangeRequestClass_block_invoke;
      v17[3] = &unk_1E84C3838;
      v17[4] = &v18;
      __getMPModelLibraryImportChangeRequestClass_block_invoke(v17);
      v11 = v19[3];
    }

    v12 = v11;
    _Block_object_dispose(&v18, 8);
    v13 = objc_alloc_init(v11);
    [v13 setModelObjects:v10];
    [v13 setShouldLibraryAdd:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __118__MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke_2;
    v14[3] = &unk_1E84C4150;
    v14[4] = self;
    v15 = handlerCopy;
    policyCopy = policy;
    [v13 performWithResponseHandler:v14];
  }

  else
  {
    v10 = +[MusicKit_SoftLinking_MPModelLibraryTransientStateController sharedLibraryTransientStateController];
    [v10 performPlaylistEditChangeRequest:self completionPolicy:policy completionHandler:handlerCopy];
  }
}

@end