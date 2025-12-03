@interface MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest)initWithPlaylist:(id)playlist socialProfileIDs:(id)ds;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest)initWithPlaylist:(id)playlist socialProfileIDs:(id)ds
{
  playlistCopy = playlist;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest;
  v8 = [(MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest *)&v16 init];
  if (v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v9 = getMPModelLibraryRemoveCollaboratorsChangeRequestClass_softClass;
    v21 = getMPModelLibraryRemoveCollaboratorsChangeRequestClass_softClass;
    if (!getMPModelLibraryRemoveCollaboratorsChangeRequestClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke;
      v17[3] = &unk_1E84C3838;
      v17[4] = &v18;
      __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke(v17);
      v9 = v19[3];
    }

    v10 = v9;
    _Block_object_dispose(&v18, 8);
    v11 = objc_alloc_init(v9);
    underlyingRemoveCollaboratorsChangeRequest = v8->_underlyingRemoveCollaboratorsChangeRequest;
    v8->_underlyingRemoveCollaboratorsChangeRequest = v11;

    v13 = v8->_underlyingRemoveCollaboratorsChangeRequest;
    _underlyingModelObject = [playlistCopy _underlyingModelObject];
    [(MPModelLibraryRemoveCollaboratorsChangeRequest *)v13 setCollaboration:_underlyingModelObject];

    [(MPModelLibraryRemoveCollaboratorsChangeRequest *)v8->_underlyingRemoveCollaboratorsChangeRequest setSocialProfileIDsToRemove:dsCopy];
  }

  return v8;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingRemoveCollaboratorsChangeRequest = self->_underlyingRemoveCollaboratorsChangeRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C3A08;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPModelLibraryRemoveCollaboratorsChangeRequest *)underlyingRemoveCollaboratorsChangeRequest performWithResponseHandler:v7];
}

@end