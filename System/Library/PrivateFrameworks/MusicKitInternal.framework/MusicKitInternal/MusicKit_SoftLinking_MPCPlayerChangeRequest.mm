@interface MusicKit_SoftLinking_MPCPlayerChangeRequest
- (MusicKit_SoftLinking_MPCPlayerChangeRequest)initWithCommandRequests:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPCPlayerChangeRequest

- (MusicKit_SoftLinking_MPCPlayerChangeRequest)initWithCommandRequests:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPCPlayerChangeRequest;
  v5 = [(MusicKit_SoftLinking_MPCPlayerChangeRequest *)&v12 init];
  if (v5)
  {
    v6 = v4;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getMPCPlayerChangeRequestClass_softClass;
    v17 = getMPCPlayerChangeRequestClass_softClass;
    if (!getMPCPlayerChangeRequestClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getMPCPlayerChangeRequestClass_block_invoke;
      v13[3] = &unk_1E84C3838;
      v13[4] = &v14;
      __getMPCPlayerChangeRequestClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [[v7 alloc] initWithCommandRequests:v6];
    underlyingChangeRequest = v5->_underlyingChangeRequest;
    v5->_underlyingChangeRequest = v9;

    [(MPCPlayerChangeRequest *)v5->_underlyingChangeRequest setOptions:0x10000];
  }

  return v5;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  underlyingChangeRequest = self->_underlyingChangeRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MusicKit_SoftLinking_MPCPlayerChangeRequest_performWithCompletion___block_invoke;
  v7[3] = &unk_1E84C4370;
  v8 = v4;
  v6 = v4;
  [(MPCPlayerChangeRequest *)underlyingChangeRequest performWithExtendedStatusCompletion:v7];
}

@end