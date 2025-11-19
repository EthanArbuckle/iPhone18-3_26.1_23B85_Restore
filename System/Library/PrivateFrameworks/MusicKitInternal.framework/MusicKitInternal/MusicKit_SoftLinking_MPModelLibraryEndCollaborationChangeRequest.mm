@interface MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest)initWithPlaylist:(id)a3;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest)initWithPlaylist:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest;
  v5 = [(MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest *)&v13 init];
  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getMPModelLibraryEndCollaborationChangeRequestClass_softClass;
    v18 = getMPModelLibraryEndCollaborationChangeRequestClass_softClass;
    if (!getMPModelLibraryEndCollaborationChangeRequestClass_softClass)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke;
      v14[3] = &unk_1E84C3838;
      v14[4] = &v15;
      __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = objc_alloc_init(v6);
    underlyingEndCollaborationRequest = v5->_underlyingEndCollaborationRequest;
    v5->_underlyingEndCollaborationRequest = v8;

    v10 = v5->_underlyingEndCollaborationRequest;
    v11 = [v4 _underlyingModelObject];
    [(MPModelLibraryEndCollaborationChangeRequest *)v10 setCollaborationToEnd:v11];
  }

  return v5;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  underlyingEndCollaborationRequest = self->_underlyingEndCollaborationRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__MusicKit_SoftLinking_MPModelLibraryEndCollaborationChangeRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C3A08;
  v8 = v4;
  v6 = v4;
  [(MPModelLibraryEndCollaborationChangeRequest *)underlyingEndCollaborationRequest performWithResponseHandler:v7];
}

@end