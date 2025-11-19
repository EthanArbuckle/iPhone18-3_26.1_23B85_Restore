@interface MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest
- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)a3 parentPlaylist:(id)a4 playlistEntries:(id)a5 playlistName:(id)a6 playlistDescription:(id)a7 playlistUserImage:(CGImage *)a8 publicPlaylist:(id)a9 visiblePlaylist:(id)a10 authorStoreIdentifier:(id)a11;
- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)a3 playlistEntries:(id)a4 playlistName:(id)a5 playlistDescription:(id)a6 playlistUserImage:(CGImage *)a7 publicPlaylist:(id)a8 visiblePlaylist:(id)a9 authorStoreIdentifier:(id)a10;
- (void)performWithCompletionPolicy:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest

- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)a3 playlistEntries:(id)a4 playlistName:(id)a5 playlistDescription:(id)a6 playlistUserImage:(CGImage *)a7 publicPlaylist:(id)a8 visiblePlaylist:(id)a9 authorStoreIdentifier:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v38.receiver = self;
  v38.super_class = MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest;
  v23 = [(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)&v38 init];
  if (v23)
  {
    v35 = a7;
    v36 = v18;
    v24 = objc_alloc_init(getMPModelLibraryPlaylistEditChangeRequestClass());
    underlyingRequest = v23->_underlyingRequest;
    v23->_underlyingRequest = v24;

    v26 = v23->_underlyingRequest;
    [getMPMediaLibraryClass() deviceMediaLibrary];
    v28 = v27 = v16;
    [(MPModelLibraryPlaylistEditChangeRequest *)v26 setMediaLibrary:v28];

    v29 = v23->_underlyingRequest;
    v37 = v27;
    v30 = [v27 _underlyingModelObject];
    [(MPModelLibraryPlaylistEditChangeRequest *)v29 setPlaylist:v30];

    if (v17)
    {
      v31 = [v17 msv_map:&__block_literal_global_6];
      v32 = objc_alloc_init(getMPMutableSectionedCollectionClass_0());
      [v32 appendSection:&stru_1F50C75D0];
      [v32 appendItems:v31];
      [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistEntries:v32];
    }

    v18 = v36;
    if (v35)
    {
      v33 = [objc_alloc(getUIImageClass()) initWithCGImage:v35];
      [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistUserImage:v33];
    }

    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistName:v36];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPlaylistDescription:v19];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setPublicPlaylist:v20];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setVisiblePlaylist:v21];
    [(MPModelLibraryPlaylistEditChangeRequest *)v23->_underlyingRequest setAuthorStoreIdentifier:v22];
    v16 = v37;
  }

  return v23;
}

- (MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest)initWithPlaylist:(id)a3 parentPlaylist:(id)a4 playlistEntries:(id)a5 playlistName:(id)a6 playlistDescription:(id)a7 playlistUserImage:(CGImage *)a8 publicPlaylist:(id)a9 visiblePlaylist:(id)a10 authorStoreIdentifier:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v41 = v16;
  v24 = v16;
  v25 = v17;
  v26 = [(MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest *)self initWithPlaylist:v24 playlistEntries:v18 playlistName:v19 playlistDescription:v20 playlistUserImage:a8 publicPlaylist:v21 visiblePlaylist:v22 authorStoreIdentifier:v23];
  v27 = v26;
  if (v26)
  {
    if (v25)
    {
      underlyingRequest = v26->_underlyingRequest;
      v29 = [v25 _underlyingModelObject];
      [(MPModelLibraryPlaylistEditChangeRequest *)underlyingRequest setParentPlaylist:v29];
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

      v39 = v20;
      v40 = v19;
      v31 = v30;
      _Block_object_dispose(&v51, 8);
      v32 = [v30 identityKind];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __224__MusicKitInternal_SoftLinking_MPModelLibraryPlaylistEditChangeRequest_initWithPlaylist_parentPlaylist_playlistEntries_playlistName_playlistDescription_playlistUserImage_publicPlaylist_visiblePlaylist_authorStoreIdentifier___block_invoke;
      v44[3] = &unk_1E84C4070;
      v33 = v27;
      v45 = v33;
      v34 = [v43 initWithSource:@"MusicKit_Move_Playlist" modelKind:v32 block:v44];

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

      v20 = v39;
      v19 = v40;
    }
  }

  return v27;
}

- (void)performWithCompletionPolicy:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(MPModelLibraryPlaylistEditChangeRequest *)self->_underlyingRequest playlistEntries];
  v8 = [v7 allItems];
  v9 = [v8 msv_compactMap:&__block_literal_global_26_0];

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
    v15 = v6;
    v16 = a3;
    [v13 performWithResponseHandler:v14];
  }

  else
  {
    v10 = +[MusicKit_SoftLinking_MPModelLibraryTransientStateController sharedLibraryTransientStateController];
    [v10 performPlaylistEditChangeRequest:self completionPolicy:a3 completionHandler:v6];
  }
}

@end