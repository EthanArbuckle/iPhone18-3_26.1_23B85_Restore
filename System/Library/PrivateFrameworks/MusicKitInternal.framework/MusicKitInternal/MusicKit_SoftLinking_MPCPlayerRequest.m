@interface MusicKit_SoftLinking_MPCPlayerRequest
- (MusicKit_SoftLinking_MPCPlayerRequest)initWithPath:(id)a3;
- (MusicKit_SoftLinking_MPCPlayerRequest)initWithUnderlyingPlayerRequest:(id)a3;
- (id)_errorFromUnderlyingError:(id)a3;
- (void)performWithCompletion:(id)a3;
- (void)setForwardCount:(int64_t)a3;
- (void)setHistoryCount:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPCPlayerRequest

- (MusicKit_SoftLinking_MPCPlayerRequest)initWithPath:(id)a3
{
  v4 = a3;
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
    v11 = [v4 _musicKit_self_playerPath];
    [(MPCPlayerRequest *)v10 setPlayerPath:v11];

    v12 = v5->_underlyingPlayerRequest;
    v13 = [MEMORY[0x1E6977678] _playbackItemSupportedProperties];
    [(MPCPlayerRequest *)v12 setPlayingItemProperties:v13];

    v14 = v5->_underlyingPlayerRequest;
    v15 = [MEMORY[0x1E6977678] _playbackItemSupportedProperties];
    [(MPCPlayerRequest *)v14 setQueueItemProperties:v15];

    v16 = v5->_underlyingPlayerRequest;
    v17 = [MEMORY[0x1E6977678] _playbackSectionSupportedProperties];
    [(MPCPlayerRequest *)v16 setQueueSectionProperties:v17];

    [(MPCPlayerRequest *)v5->_underlyingPlayerRequest setQualityOfService:25];
  }

  return v5;
}

- (MusicKit_SoftLinking_MPCPlayerRequest)initWithUnderlyingPlayerRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPCPlayerRequest;
  v6 = [(MusicKit_SoftLinking_MPCPlayerRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlayerRequest, a3);
  }

  return v7;
}

- (void)setForwardCount:(int64_t)a3
{
  v5 = [(MusicKit_SoftLinking_MPCPlayerRequest *)self historyCount];
  underlyingPlayerRequest = self->_underlyingPlayerRequest;

  [(MPCPlayerRequest *)underlyingPlayerRequest setTracklistRange:v5, a3];
}

- (void)setHistoryCount:(int64_t)a3
{
  v5 = [(MusicKit_SoftLinking_MPCPlayerRequest *)self forwardCount];
  underlyingPlayerRequest = self->_underlyingPlayerRequest;

  [(MPCPlayerRequest *)underlyingPlayerRequest setTracklistRange:a3, v5];
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  underlyingPlayerRequest = self->_underlyingPlayerRequest;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MusicKit_SoftLinking_MPCPlayerRequest_performWithCompletion___block_invoke;
  v8[3] = &unk_1E84C3A68;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = [(MPCPlayerRequest *)underlyingPlayerRequest performWithCompletion:v8];
}

- (id)_errorFromUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
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

  v7 = [v4 isEqual:*v5];

  v8 = v3;
  if (v7)
  {
    v9 = [v3 code];
    if ((v9 - 1) > 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1D5619BD0[v9 - 1];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MusicKit_SoftLinking_MPCPlayerEnqueueErrorDomain" code:v10 userInfo:0];
  }

  return v8;
}

@end