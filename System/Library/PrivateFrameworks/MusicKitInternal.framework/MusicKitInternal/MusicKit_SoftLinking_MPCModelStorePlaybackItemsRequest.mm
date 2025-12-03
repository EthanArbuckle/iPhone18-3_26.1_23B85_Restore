@interface MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest
- (MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest)initWithStoreIDs:(id)ds;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest

- (MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest)initWithStoreIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest;
  v5 = [(MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getMPCModelStorePlaybackItemsRequestClass_softClass;
    v16 = getMPCModelStorePlaybackItemsRequestClass_softClass;
    if (!getMPCModelStorePlaybackItemsRequestClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getMPCModelStorePlaybackItemsRequestClass_block_invoke;
      v12[3] = &unk_1E84C3838;
      v12[4] = &v13;
      __getMPCModelStorePlaybackItemsRequestClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = objc_alloc_init(v6);
    [v8 setLabel:@"MusicKit_Prewarm"];
    [v8 setStoreIDs:dsCopy];
    underlyingRequest = v5->_underlyingRequest;
    v5->_underlyingRequest = v8;
  }

  return v5;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingRequest = self->_underlyingRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C38C8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPCModelStorePlaybackItemsRequest *)underlyingRequest performWithResponseHandler:v7];
}

@end