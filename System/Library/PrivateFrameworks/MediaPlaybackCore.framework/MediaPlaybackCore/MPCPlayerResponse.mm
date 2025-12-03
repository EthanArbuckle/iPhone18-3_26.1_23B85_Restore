@interface MPCPlayerResponse
- (MPCPlayerResponse)initWithRequest:(id)request middleware:(id)middleware;
- (id)_commandRequestForMediaRemoteCommand:(unsigned int)command;
- (id)_stateDumpObject;
- (id)createSharedSessionWithIdentity:(id)identity intentHandler:(id)handler;
- (id)createSharedSessionWithIntentHandler:(id)handler;
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

- (id)_commandRequestForMediaRemoteCommand:(unsigned int)command
{
  v3 = *&command;
  builder = [(MPResponse *)self builder];
  chain = [(MPResponse *)self chain];
  v7 = [builder playerCommandEnabled:0 command:v3 chain:chain];

  if (v7)
  {
    v8 = [MPCPlayerCommandRequest alloc];
    controller = [(MPCPlayerResponse *)self controller];
    request = [(MPResponse *)self request];
    label = [request label];
    v12 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:v3 options:0 controller:controller label:label];
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
  _stateDumpObject = [(MPResponse *)&v8 _stateDumpObject];
  v4 = [_stateDumpObject mutableCopy];

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

- (id)createSharedSessionWithIdentity:(id)identity intentHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = [(MPCPlayerResponse *)self _commandRequestForMediaRemoteCommand:25020];
  mpc_jsonValue = [identityCopy mpc_jsonValue];
  [v8 setCommandOptionValue:mpc_jsonValue forKey:@"com.apple.music.live-link-identity-json"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MPCPlayerResponse_createSharedSessionWithIdentity_intentHandler___block_invoke;
  v13[3] = &unk_1E8238ED8;
  v14 = identityCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = identityCopy;
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

- (id)createSharedSessionWithIntentHandler:(id)handler
{
  v4 = MEMORY[0x1E69E4450];
  handlerCopy = handler;
  v6 = [[v4 alloc] initWithBlock:&__block_literal_global_30321];
  v7 = [(MPCPlayerResponse *)self createSharedSessionWithIdentity:v6 intentHandler:handlerCopy];

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
  request = [(MPResponse *)self request];
  disablePlaybackStateValidation = [request disablePlaybackStateValidation];

  if (disablePlaybackStateValidation)
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
  request = [(MPResponse *)self request];
  disablePlaybackStateValidation = [request disablePlaybackStateValidation];

  if (disablePlaybackStateValidation)
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
  state = [(MPCPlayerResponse *)self state];
  v5 = state;
  if (state <= 6 && ((1 << state) & 0x53) != 0)
  {
    disablePlaybackStateValidation = 1;
  }

  else
  {
    request = [(MPResponse *)self request];
    disablePlaybackStateValidation = [request disablePlaybackStateValidation];
  }

  if (v5 <= 6 && ((1 << v5) & 0x53) != 0)
  {
    if (disablePlaybackStateValidation)
    {
LABEL_7:
      v7 = [MPCPlayerCommandRequest alloc];
      controller = [(MPCPlayerResponse *)self controller];
      request2 = [(MPResponse *)self request];
      label = [request2 label];
      v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:132 options:0 controller:controller label:label];

      goto LABEL_11;
    }
  }

  else
  {

    if (disablePlaybackStateValidation)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (MPCPlayerResponse)initWithRequest:(id)request middleware:(id)middleware
{
  v26.receiver = self;
  v26.super_class = MPCPlayerResponse;
  v4 = [(MPResponse *)&v26 initWithRequest:request middleware:middleware];
  if (v4)
  {
    v5 = [[MPCPlayerResponseTracklist alloc] initWithResponse:v4];
    tracklist = v4->_tracklist;
    v4->_tracklist = v5;

    builder = [(MPResponse *)v4 builder];
    chain = [(MPResponse *)v4 chain];
    v4->_state = [builder playerState:0 chain:chain];

    builder2 = [(MPResponse *)v4 builder];
    chain2 = [(MPResponse *)v4 chain];
    v4->_sharedListeningSession = [builder2 playerIsSharedListeningSession:0 chain:chain2];

    builder3 = [(MPResponse *)v4 builder];
    chain3 = [(MPResponse *)v4 chain];
    v13 = [builder3 videoOutput:0 chain:chain3];
    videoOutput = v4->_videoOutput;
    v4->_videoOutput = v13;

    builder4 = [(MPResponse *)v4 builder];
    chain4 = [(MPResponse *)v4 chain];
    v17 = [builder4 controller:0 chain:chain4];
    controller = v4->_controller;
    v4->_controller = v17;

    resolvedPlayerPath = [(MPCMediaRemoteController *)v4->_controller resolvedPlayerPath];
    playerPath = v4->_playerPath;
    v4->_playerPath = resolvedPlayerPath;

    builder5 = [(MPResponse *)v4 builder];
    chain5 = [(MPResponse *)v4 chain];
    v23 = [builder5 requestingUserSubscriptionStatus:0 chain:chain5];
    requestingUserSubscriptionStatus = v4->_requestingUserSubscriptionStatus;
    v4->_requestingUserSubscriptionStatus = v23;
  }

  return v4;
}

@end