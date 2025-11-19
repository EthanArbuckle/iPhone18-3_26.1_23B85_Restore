@interface MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)a3 entriesToRemove:(id)a4;
- (void)performWithCompletionPolicy:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)a3 entriesToRemove:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest;
  v8 = [(MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest *)&v20 init];
  if (v8)
  {
    v9 = [v6 _underlyingModelObject];
    underlyingPlaylist = v8->_underlyingPlaylist;
    v8->_underlyingPlaylist = v9;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v11 = getMPMediaLibraryClass_softClass;
    v29 = getMPMediaLibraryClass_softClass;
    if (!getMPMediaLibraryClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getMPMediaLibraryClass_block_invoke;
      v24 = &unk_1E84C3838;
      v25 = &v26;
      __getMPMediaLibraryClass_block_invoke(&v21);
      v11 = v27[3];
    }

    v12 = v11;
    _Block_object_dispose(&v26, 8);
    v13 = [v11 deviceMediaLibrary];
    v14 = [v7 msv_compactMap:&__block_literal_global_3];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v15 = getMPModelLibraryRemoveFromPlaylistChangeRequestClass_softClass;
    v29 = getMPModelLibraryRemoveFromPlaylistChangeRequestClass_softClass;
    if (!getMPModelLibraryRemoveFromPlaylistChangeRequestClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke;
      v24 = &unk_1E84C3838;
      v25 = &v26;
      __getMPModelLibraryRemoveFromPlaylistChangeRequestClass_block_invoke(&v21);
      v15 = v27[3];
    }

    v16 = v15;
    _Block_object_dispose(&v26, 8);
    v17 = [[v15 alloc] initWithPlaylist:v8->_underlyingPlaylist inMediaLibrary:v13 andEntriesToRemove:v14];
    underlyingRequest = v8->_underlyingRequest;
    v8->_underlyingRequest = v17;
  }

  return v8;
}

- (void)performWithCompletionPolicy:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v12 = self->_underlyingPlaylist;
  underlyingRequest = self->_underlyingRequest;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116__MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke;
  v8[3] = &unk_1E84C3C48;
  v10 = v11;
  v7 = v5;
  v9 = v7;
  [(MPModelLibraryRemoveFromPlaylistChangeRequest *)underlyingRequest performWithResponseHandler:v8];

  _Block_object_dispose(v11, 8);
}

@end