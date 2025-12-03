@interface MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest)initWithPlaylist:(id)playlist;
- (void)performWithCompletionPolicy:(int64_t)policy completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest)initWithPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v16.receiver = self;
  v16.super_class = MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest;
  v5 = [(MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest *)&v16 init];
  if (v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v6 = getMPModelLibraryDuplicatePlaylistChangeRequestClass_softClass;
    v25 = getMPModelLibraryDuplicatePlaylistChangeRequestClass_softClass;
    if (!getMPModelLibraryDuplicatePlaylistChangeRequestClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke;
      v20 = &unk_1E84C3838;
      v21 = &v22;
      __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke(&v17);
      v6 = v23[3];
    }

    v7 = v6;
    _Block_object_dispose(&v22, 8);
    v8 = [v6 alloc];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v9 = getMPMediaLibraryClass_softClass_1;
    v25 = getMPMediaLibraryClass_softClass_1;
    if (!getMPMediaLibraryClass_softClass_1)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getMPMediaLibraryClass_block_invoke_1;
      v20 = &unk_1E84C3838;
      v21 = &v22;
      __getMPMediaLibraryClass_block_invoke_1(&v17);
      v9 = v23[3];
    }

    v10 = v9;
    _Block_object_dispose(&v22, 8);
    deviceMediaLibrary = [v9 deviceMediaLibrary];
    _underlyingModelObject = [playlistCopy _underlyingModelObject];
    v13 = [v8 initWithLibrary:deviceMediaLibrary playlist:_underlyingModelObject];
    underlyingChangeRequest = v5->_underlyingChangeRequest;
    v5->_underlyingChangeRequest = v13;
  }

  return v5;
}

- (void)performWithCompletionPolicy:(int64_t)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingChangeRequest = self->_underlyingChangeRequest;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115__MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke;
  v8[3] = &unk_1E84C3F68;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(MPModelLibraryDuplicatePlaylistChangeRequest *)underlyingChangeRequest performWithResponseHandler:v8];
}

@end