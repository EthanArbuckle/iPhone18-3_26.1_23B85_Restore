@interface MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest)initWithPlaylist:(id)playlist sharingMode:(int64_t)mode;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest)initWithPlaylist:(id)playlist sharingMode:(int64_t)mode
{
  playlistCopy = playlist;
  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest *)&v15 init];
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = getMPModelLibraryStartCollaborationChangeRequestClass_softClass;
    v20 = getMPModelLibraryStartCollaborationChangeRequestClass_softClass;
    if (!getMPModelLibraryStartCollaborationChangeRequestClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke;
      v16[3] = &unk_1E84C3838;
      v16[4] = &v17;
      __getMPModelLibraryStartCollaborationChangeRequestClass_block_invoke(v16);
      v8 = v18[3];
    }

    v9 = v8;
    _Block_object_dispose(&v17, 8);
    v10 = objc_alloc_init(v8);
    underlyingStartCollaborationRequest = v7->_underlyingStartCollaborationRequest;
    v7->_underlyingStartCollaborationRequest = v10;

    v12 = v7->_underlyingStartCollaborationRequest;
    _underlyingModelObject = [playlistCopy _underlyingModelObject];
    [(MPModelLibraryStartCollaborationChangeRequest *)v12 setPlaylistToConvert:_underlyingModelObject];

    -[MPModelLibraryStartCollaborationChangeRequest setCollaborationSharingMode:](v7->_underlyingStartCollaborationRequest, "setCollaborationSharingMode:", [MEMORY[0x1E6977648] _underlyingModelSharingModeForSharingMode:mode]);
  }

  return v7;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingStartCollaborationRequest = self->_underlyingStartCollaborationRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C3A08;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPModelLibraryStartCollaborationChangeRequest *)underlyingStartCollaborationRequest performWithResponseHandler:v7];
}

@end