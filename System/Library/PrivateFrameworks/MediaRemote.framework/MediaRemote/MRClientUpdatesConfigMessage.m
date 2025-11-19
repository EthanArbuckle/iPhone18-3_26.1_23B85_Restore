@interface MRClientUpdatesConfigMessage
- (BOOL)artworkUpdates;
- (BOOL)keyboardUpdates;
- (BOOL)nowPlayingUpdates;
- (BOOL)outputDeviceUpdates;
- (BOOL)systemEndpointUpdates;
- (BOOL)volumeUpdates;
- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRClientUpdatesConfigMessage

- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = MRClientUpdatesConfigMessage;
  v7 = [(MRProtocolMessage *)&v20 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [v6 subscribedPlayerPaths];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v6 subscribedPlayerPaths];
      v11 = [v10 mr_map:&__block_literal_global_0];
      subscribedPlayerPaths = v7->_subscribedPlayerPaths;
      v7->_subscribedPlayerPaths = v11;
    }

    else
    {
      v13 = [MRPlayerPath alloc];
      v10 = +[MROrigin localOrigin];
      subscribedPlayerPaths = +[MRClient anyClient];
      v14 = +[MRPlayer anyPlayer];
      v15 = [(MRPlayerPath *)v13 initWithOrigin:v10 client:subscribedPlayerPaths player:v14];
      v21[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = v7->_subscribedPlayerPaths;
      v7->_subscribedPlayerPaths = v16;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

MRPlayerPath *__71__MRClientUpdatesConfigMessage_initWithUnderlyingCodableMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayerPath alloc] initWithProtobuf:v2];

  return v3;
}

- (BOOL)nowPlayingUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 nowPlayingUpdates];

  return v3;
}

- (BOOL)artworkUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 artworkUpdates];

  return v3;
}

- (BOOL)volumeUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 volumeUpdates];

  return v3;
}

- (BOOL)keyboardUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 keyboardUpdates];

  return v3;
}

- (BOOL)outputDeviceUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUpdates];

  return v3;
}

- (BOOL)systemEndpointUpdates
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 systemEndpointUpdates];

  return v3;
}

@end