@interface MPCPlayerResponse
- (MPCPlayerResponse)initWithRequest:(id)a3 middleware:(id)a4;
- (id)_commandRequestForMediaRemoteCommand:(unsigned int)a3;
- (id)_stateDumpObject;
- (id)createSharedSessionWithIdentity:(id)a3 intentHandler:(id)a4;
- (id)createSharedSessionWithIntentHandler:(id)a3;
- (id)description;
- (id)pause;
- (id)play;
- (id)prepare;
- (id)stop;
@end

@implementation MPCPlayerResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = MPCPlayerResponse;
  v3 = [(MPResponse *)&v7 description];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" playerPath=%@", self->_playerPath];
  v5 = [v3 stringByReplacingCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 0, v4}];

  return v5;
}

- (id)_commandRequestForMediaRemoteCommand:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(MPResponse *)self builder];
  v6 = [(MPResponse *)self chain];
  v7 = [v5 playerCommandEnabled:0 command:v3 chain:v6];

  if (v7)
  {
    v8 = [MPCPlayerCommandRequest alloc];
    v9 = [(MPCPlayerResponse *)self controller];
    v10 = [(MPResponse *)self request];
    v11 = [v10 label];
    v12 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:v3 options:0 controller:v9 label:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_stateDumpObject
{
  v8.receiver = self;
  v8.super_class = MPCPlayerResponse;
  v3 = [(MPResponse *)&v8 _stateDumpObject];
  v4 = [v3 mutableCopy];

  v5 = self->_state - 1;
  if (v5 > 5)
  {
    v6 = @"MPCPlayerStateUnknown";
  }

  else
  {
    v6 = off_1E8238EF8[v5];
  }

  [v4 setObject:v6 forKeyedSubscript:@"state"];
  [v4 setObject:self->_tracklist forKeyedSubscript:@"tracklist"];
  [v4 setObject:self->_playerPath forKeyedSubscript:@"playerPath"];

  return v4;
}

- (id)createSharedSessionWithIdentity:(id)a3 intentHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:25020];
  v9 = [v6 mpc_jsonValue];
  [v8 setCommandOptionValue:v9 forKey:@"com.apple.music.live-link-identity-json"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MPCPlayerResponse_createSharedSessionWithIdentity_intentHandler___block_invoke;
  v13[3] = &unk_1E8238ED8;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [v8 setStatusTransformer:v13];

  return v8;
}

id __67__MPCPlayerResponse_createSharedSessionWithIdentity_intentHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 customDataType];
  if (v4 == @"com.apple.music.shared-session-url-components" || (v5 = v4, v6 = [(__CFString *)v4 isEqual:@"com.apple.music.shared-session-url-components"], v5, v5, v6))
  {
    v7 = MEMORY[0x1E696AF20];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v3 customData];
    v10 = [v8 initWithData:v9 encoding:4];
    v11 = [v7 componentsWithString:v10];

    v12 = [v11 queryItems];
    v13 = [v12 msv_firstWhere:&__block_literal_global_280];
    v14 = [v13 value];

    v15 = [v11 queryItems];
    v16 = [v15 msv_firstWhere:&__block_literal_global_285];
    v17 = [v16 value];

    v18 = [MPCPlaybackSharedListeningProperties propertiesWithSessionIdentifier:v14 sessionKey:v17];
    v19 = [MPCPlaybackIntent sharedSessionIntentWithProperties:v18 identity:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    v20 = [MEMORY[0x1E69708F8] successStatus];
  }

  else
  {
    v20 = v3;
  }

  return v20;
}

uint64_t __67__MPCPlayerResponse_createSharedSessionWithIdentity_intentHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"key")
  {
    v4 = 1;
  }

  else
  {
    v4 = [(__CFString *)v2 isEqual:@"key"];
  }

  return v4;
}

uint64_t __67__MPCPlayerResponse_createSharedSessionWithIdentity_intentHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"id")
  {
    v4 = 1;
  }

  else
  {
    v4 = [(__CFString *)v2 isEqual:@"id"];
  }

  return v4;
}

- (id)createSharedSessionWithIntentHandler:(id)a3
{
  v4 = MEMORY[0x1E69E4450];
  v5 = a3;
  v6 = [[v4 alloc] initWithBlock:&__block_literal_global_30321];
  v7 = [(MPCPlayerResponse *)self createSharedSessionWithIdentity:v6 intentHandler:v5];

  return v7;
}

- (id)stop
{
  if (-[MPCPlayerResponse state](self, "state") == 2 || (-[MPResponse request](self, "request"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 disablePlaybackStateValidation], v3, v4))
  {
    v5 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)play
{
  v3 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:0];
  v4 = [(MPResponse *)self request];
  v5 = [v4 disablePlaybackStateValidation];

  if (v5)
  {
    goto LABEL_5;
  }

  if ([(MPCPlayerResponse *)self state]== 2)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (v3)
  {
LABEL_5:
    v7 = v3;
  }

  else
  {
    v7 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:2];
  }

  v6 = v7;
LABEL_7:

  return v6;
}

- (id)pause
{
  v3 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:1];
  v4 = [(MPResponse *)self request];
  v5 = [v4 disablePlaybackStateValidation];

  if (v5)
  {
    goto LABEL_4;
  }

  if ([(MPCPlayerResponse *)self state]== 2)
  {
    if (!v3)
    {
      v6 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:2];
      goto LABEL_5;
    }

LABEL_4:
    v6 = v3;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)prepare
{
  v4 = [(MPCPlayerResponse *)self state];
  v5 = v4;
  if (v4 <= 6 && ((1 << v4) & 0x53) != 0)
  {
    v6 = 1;
  }

  else
  {
    v2 = [(MPResponse *)self request];
    v6 = [v2 disablePlaybackStateValidation];
  }

  if (v5 <= 6 && ((1 << v5) & 0x53) != 0)
  {
    if (v6)
    {
LABEL_7:
      v7 = [MPCPlayerCommandRequest alloc];
      v8 = [(MPCPlayerResponse *)self controller];
      v9 = [(MPResponse *)self request];
      v10 = [v9 label];
      v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:132 options:0 controller:v8 label:v10];

      goto LABEL_11;
    }
  }

  else
  {

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (MPCPlayerResponse)initWithRequest:(id)a3 middleware:(id)a4
{
  v26.receiver = self;
  v26.super_class = MPCPlayerResponse;
  v4 = [(MPResponse *)&v26 initWithRequest:a3 middleware:a4];
  if (v4)
  {
    v5 = [[MPCPlayerResponseTracklist alloc] initWithResponse:v4];
    tracklist = v4->_tracklist;
    v4->_tracklist = v5;

    v7 = [(MPResponse *)v4 builder];
    v8 = [(MPResponse *)v4 chain];
    v4->_state = [v7 playerState:0 chain:v8];

    v9 = [(MPResponse *)v4 builder];
    v10 = [(MPResponse *)v4 chain];
    v4->_sharedListeningSession = [v9 playerIsSharedListeningSession:0 chain:v10];

    v11 = [(MPResponse *)v4 builder];
    v12 = [(MPResponse *)v4 chain];
    v13 = [v11 videoOutput:0 chain:v12];
    videoOutput = v4->_videoOutput;
    v4->_videoOutput = v13;

    v15 = [(MPResponse *)v4 builder];
    v16 = [(MPResponse *)v4 chain];
    v17 = [v15 controller:0 chain:v16];
    controller = v4->_controller;
    v4->_controller = v17;

    v19 = [(MPCMediaRemoteController *)v4->_controller resolvedPlayerPath];
    playerPath = v4->_playerPath;
    v4->_playerPath = v19;

    v21 = [(MPResponse *)v4 builder];
    v22 = [(MPResponse *)v4 chain];
    v23 = [v21 requestingUserSubscriptionStatus:0 chain:v22];
    requestingUserSubscriptionStatus = v4->_requestingUserSubscriptionStatus;
    v4->_requestingUserSubscriptionStatus = v23;
  }

  return v4;
}

@end