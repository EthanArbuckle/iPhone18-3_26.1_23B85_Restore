@interface MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest)init;
- (void)performWithAlbum:(id)album appData:(id)data completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest;
  v2 = [(MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPModelLibraryAlbumAppDataChangeRequestClass_softClass;
    v13 = getMPModelLibraryAlbumAppDataChangeRequestClass_softClass;
    if (!getMPModelLibraryAlbumAppDataChangeRequestClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingChangeRequest = v2->_underlyingChangeRequest;
    v2->_underlyingChangeRequest = v5;
  }

  return v2;
}

- (void)performWithAlbum:(id)album appData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingChangeRequest = self->_underlyingChangeRequest;
  dataCopy = data;
  _underlyingModelObject = [album _underlyingModelObject];
  [(MPModelLibraryAlbumAppDataChangeRequest *)underlyingChangeRequest setModelObject:_underlyingModelObject];

  v12 = self->_underlyingChangeRequest;
  _underlyingAlbumAppData = [dataCopy _underlyingAlbumAppData];

  [(MPModelLibraryAlbumAppDataChangeRequest *)v12 setAlbumAppData:_underlyingAlbumAppData];
  v14 = self->_underlyingChangeRequest;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest_performWithAlbum_appData_completionHandler___block_invoke;
  v18[3] = &unk_1E84C4450;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = [(MPModelLibraryAlbumAppDataChangeRequest *)v14 newOperationWithResponseHandler:v18];
  deviceLibrary = [MEMORY[0x1E69775F8] deviceLibrary];
  [deviceLibrary performOperation:v16];
}

@end