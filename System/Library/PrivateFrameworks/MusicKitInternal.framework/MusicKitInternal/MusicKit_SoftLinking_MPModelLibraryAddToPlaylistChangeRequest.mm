@interface MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)playlist itemToAdd:(id)add representativeObject:(id)object referralObject:(id)referralObject;
- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)playlist songIdentifiers:(id)identifiers representativeObject:(id)object referralObject:(id)referralObject;
- (id)_initWithPlaylist:(id)playlist itemsToAdd:(id)add representativeObject:(id)object referralObject:(id)referralObject;
- (void)setStoreImportAllowedHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)playlist songIdentifiers:(id)identifiers representativeObject:(id)object referralObject:(id)referralObject
{
  referralObjectCopy = referralObject;
  objectCopy = object;
  playlistCopy = playlist;
  v13 = [identifiers msv_map:&__block_literal_global_0];
  _underlyingModelObject = [playlistCopy _underlyingModelObject];

  _underlyingModelObject2 = [objectCopy _underlyingModelObject];

  _underlyingModelObject3 = [referralObjectCopy _underlyingModelObject];

  v17 = [(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest *)self _initWithPlaylist:_underlyingModelObject itemsToAdd:v13 representativeObject:_underlyingModelObject2 referralObject:_underlyingModelObject3];
  return v17;
}

- (MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest)initWithPlaylist:(id)playlist itemToAdd:(id)add representativeObject:(id)object referralObject:(id)referralObject
{
  v21[1] = *MEMORY[0x1E69E9840];
  referralObjectCopy = referralObject;
  objectCopy = object;
  playlistCopy = playlist;
  _underlyingModelObject = [add _underlyingModelObject];
  _underlyingModelObject2 = [playlistCopy _underlyingModelObject];

  v21[0] = _underlyingModelObject;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  _underlyingModelObject3 = [objectCopy _underlyingModelObject];

  _underlyingModelObject4 = [referralObjectCopy _underlyingModelObject];

  v18 = [(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest *)self _initWithPlaylist:_underlyingModelObject2 itemsToAdd:v15 representativeObject:_underlyingModelObject3 referralObject:_underlyingModelObject4];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_initWithPlaylist:(id)playlist itemsToAdd:(id)add representativeObject:(id)object referralObject:(id)referralObject
{
  playlistCopy = playlist;
  addCopy = add;
  objectCopy = object;
  referralObjectCopy = referralObject;
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

    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setPlaylist:playlistCopy];
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
    [v21 appendItems:addCopy];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setSongResults:v21];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setRepresentativeModelObject:objectCopy];
    [(MPModelLibraryAddToPlaylistChangeRequest *)v14->_underlyingAddToPlaylistChangeRequest setReferralObject:referralObjectCopy];
  }

  return v14;
}

- (void)setStoreImportAllowedHandler:(id)handler
{
  v4 = [handler copy];
  storeImportAllowedHandler = self->_storeImportAllowedHandler;
  self->_storeImportAllowedHandler = v4;

  underlyingAddToPlaylistChangeRequest = self->_underlyingAddToPlaylistChangeRequest;
  v7 = self->_storeImportAllowedHandler;

  [(MPModelLibraryAddToPlaylistChangeRequest *)underlyingAddToPlaylistChangeRequest setStoreImportAllowedHandler:v7];
}

@end