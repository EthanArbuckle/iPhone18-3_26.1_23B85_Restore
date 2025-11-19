@interface MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)a3 itemToAdd:(id)a4 representativeObject:(id)a5 referralObject:(id)a6;
- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)a3 songIdentifiers:(id)a4 representativeObject:(id)a5 referralObject:(id)a6;
- (id)_initWithPlaylist:(id)a3 itemsToAdd:(id)a4 representativeObject:(id)a5 referralObject:(id)a6;
- (void)setStoreImportAllowedHandler:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)a3 songIdentifiers:(id)a4 representativeObject:(id)a5 referralObject:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 msv_map:&__block_literal_global_0];
  v14 = [v12 _underlyingModelObject];

  v15 = [v11 _underlyingModelObject];

  v16 = [v10 _underlyingModelObject];

  v17 = [(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest *)self _initWithPlaylist:v14 itemsToAdd:v13 representativeObject:v15 referralObject:v16];
  return v17;
}

- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)a3 itemToAdd:(id)a4 representativeObject:(id)a5 referralObject:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 _underlyingModelObject];
  v14 = [v12 _underlyingModelObject];

  v21[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v16 = [v11 _underlyingModelObject];

  v17 = [v10 _underlyingModelObject];

  v18 = [(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest *)self _initWithPlaylist:v14 itemsToAdd:v15 representativeObject:v16 referralObject:v17];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_initWithPlaylist:(id)a3 itemsToAdd:(id)a4 representativeObject:(id)a5 referralObject:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest *)&v23 init];
  if (v14)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v15 = getMPModelLibraryAddToPlaylistChangeRequestClass_softClass;
    v32 = getMPModelLibraryAddToPlaylistChangeRequestClass_softClass;
    if (!getMPModelLibraryAddToPlaylistChangeRequestClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke;
      v27 = &unk_1E84C3838;
      v28 = &v29;
      __getMPModelLibraryAddToPlaylistChangeRequestClass_block_invoke(&v24);
      v15 = v30[3];
    }

    v16 = v15;
    _Block_object_dispose(&v29, 8);
    v17 = objc_alloc_init(v15);
    underlyingAddToPlaylistChangeRequest = v14->_underlyingAddToPlaylistChangeRequest;
    v14->_underlyingAddToPlaylistChangeRequest = v17;

    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setPlaylist:v10];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v19 = getMPMutableSectionedCollectionClass_softClass;
    v32 = getMPMutableSectionedCollectionClass_softClass;
    if (!getMPMutableSectionedCollectionClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMPMutableSectionedCollectionClass_block_invoke;
      v27 = &unk_1E84C3838;
      v28 = &v29;
      __getMPMutableSectionedCollectionClass_block_invoke(&v24);
      v19 = v30[3];
    }

    v20 = v19;
    _Block_object_dispose(&v29, 8);
    v21 = objc_alloc_init(v19);
    [v21 appendSection:&stru_1F50C75D0];
    [v21 appendItems:v11];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setSongResults:v21];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setRepresentativeModelObject:v12];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setReferralObject:v13];
  }

  return v14;
}

- (void)setStoreImportAllowedHandler:(id)a3
{
  v4 = [a3 copy];
  storeImportAllowedHandler = self->_storeImportAllowedHandler;
  self->_storeImportAllowedHandler = v4;

  underlyingAddToPlaylistChangeRequest = self->_underlyingAddToPlaylistChangeRequest;
  v7 = self->_storeImportAllowedHandler;

  [(MPModelLibraryAddToPlaylistChangeRequest *)underlyingAddToPlaylistChangeRequest setStoreImportAllowedHandler:v7];
}

@end