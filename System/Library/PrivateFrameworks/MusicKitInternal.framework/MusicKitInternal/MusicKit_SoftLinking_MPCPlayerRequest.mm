@interface MusicKit_SoftLinking_MPCPlayerRequest
- (MusicKit_SoftLinking_MPCPlayerRequest)initWithPath:(id)path;
- (MusicKit_SoftLinking_MPCPlayerRequest)initWithUnderlyingPlayerRequest:(id)request;
- (id)_errorFromUnderlyingError:(id)error;
- (void)performWithCompletion:(id)completion;
- (void)setForwardCount:(int64_t)count;
- (void)setHistoryCount:(int64_t)count;
@end

@implementation MusicKit_SoftLinking_MPCPlayerRequest

- (MusicKit_SoftLinking_MPCPlayerRequest)initWithPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = MusicKit_SoftLinking_MPCPlayerRequest;
  v5 = [(MusicKit_SoftLinking_MPCPlayerRequest *)&v19 init];
  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getMPCPlayerRequestClass_softClass;
    v24 = getMPCPlayerRequestClass_softClass;
    if (!getMPCPlayerRequestClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getMPCPlayerRequestClass_block_invoke;
      v20[3] = &unk_1E84C3838;
      v20[4] = &v21;
      __getMPCPlayerRequestClass_block_invoke(v20);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = objc_alloc_init(v6);
    underlyingPlayerRequest = v5->_underlyingPlayerRequest;
    v5->_underlyingPlayerRequest = v8;

    v10 = v5->_underlyingPlayerRequest;
    _musicKit_self_playerPath = [pathCopy _musicKit_self_playerPath];
    [(MPCPlayerRequest *)v10 setPlayerPath:_musicKit_self_playerPath];

    v12 = v5->_underlyingPlayerRequest;
    _playbackItemSupportedProperties = [MEMORY[0x1E6977678] _playbackItemSupportedProperties];
    [(MPCPlayerRequest *)v12 setPlayingItemProperties:_playbackItemSupportedProperties];

    v14 = v5->_underlyingPlayerRequest;
    _playbackItemSupportedProperties2 = [MEMORY[0x1E6977678] _playbackItemSupportedProperties];
    [(MPCPlayerRequest *)v14 setQueueItemProperties:_playbackItemSupportedProperties2];

    v16 = v5->_underlyingPlayerRequest;
    _playbackSectionSupportedProperties = [MEMORY[0x1E6977678] _playbackSectionSupportedProperties];
    [(MPCPlayerRequest *)v16 setQueueSectionProperties:_playbackSectionSupportedProperties];

    [(MPCPlayerRequest *)v5->_underlyingPlayerRequest setQualityOfService:25];
  }

  return v5;
}

- (MusicKit_SoftLinking_MPCPlayerRequest)initWithUnderlyingPlayerRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlayerRequest;
  v6 = [(MusicKit_SoftLinking_MPCPlayerRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlayerRequest, request);
  }

  return v7;
}

- (void)setForwardCount:(int64_t)count
{
  historyCount = [(MusicKit_SoftLinking_MPCPlayerRequest *)self historyCount];
  underlyingPlayerRequest = self->_underlyingPlayerRequest;

  [(MPCPlayerRequest *)underlyingPlayerRequest setTracklistRange:historyCount, count];
}

- (void)setHistoryCount:(int64_t)count
{
  forwardCount = [(MusicKit_SoftLinking_MPCPlayerRequest *)self forwardCount];
  underlyingPlayerRequest = self->_underlyingPlayerRequest;

  [(MPCPlayerRequest *)underlyingPlayerRequest setTracklistRange:count, forwardCount];
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingPlayerRequest = self->_underlyingPlayerRequest;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MusicKit_SoftLinking_MPCPlayerRequest_performWithCompletion___block_invoke;
  v8[3] = &unk_1E84C3A68;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(MPCPlayerRequest *)underlyingPlayerRequest performWithCompletion:v8];
}

- (id)_errorFromUnderlyingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr;
  v16 = getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr;
  if (!getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr)
  {
    v6 = MediaPlaybackCoreLibrary_0();
    v14[3] = dlsym(v6, "MPCPlayerEnqueueErrorDomain");
    getMPCPlayerEnqueueErrorDomainSymbolLoc_ptr = v14[3];
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    v12 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v7 = [domain isEqual:*v5];

  v8 = errorCopy;
  if (v7)
  {
    code = [errorCopy code];
    if ((code - 1) > 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1D5619BD0[code - 1];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MusicKit_SoftLinking_MPCPlayerEnqueueErrorDomain" code:v10 userInfo:0];
  }

  return v8;
}

@end