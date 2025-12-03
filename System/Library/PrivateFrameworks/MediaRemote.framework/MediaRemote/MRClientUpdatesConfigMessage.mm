@interface MRClientUpdatesConfigMessage
- (BOOL)artworkUpdates;
- (BOOL)keyboardUpdates;
- (BOOL)nowPlayingUpdates;
- (BOOL)outputDeviceUpdates;
- (BOOL)systemEndpointUpdates;
- (BOOL)volumeUpdates;
- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRClientUpdatesConfigMessage

- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v20.receiver = self;
  v20.super_class = MRClientUpdatesConfigMessage;
  v7 = [(MRProtocolMessage *)&v20 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    subscribedPlayerPaths = [messageCopy subscribedPlayerPaths];
    v9 = [subscribedPlayerPaths count];

    if (v9)
    {
      subscribedPlayerPaths2 = [messageCopy subscribedPlayerPaths];
      v11 = [subscribedPlayerPaths2 mr_map:&__block_literal_global_0];
      subscribedPlayerPaths = v7->_subscribedPlayerPaths;
      v7->_subscribedPlayerPaths = v11;
    }

    else
    {
      v13 = [MRPlayerPath alloc];
      subscribedPlayerPaths2 = +[MROrigin localOrigin];
      subscribedPlayerPaths = +[MRClient anyClient];
      v14 = +[MRPlayer anyPlayer];
      v15 = [(MRPlayerPath *)v13 initWithOrigin:subscribedPlayerPaths2 client:subscribedPlayerPaths player:v14];
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
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  nowPlayingUpdates = [underlyingCodableMessage nowPlayingUpdates];

  return nowPlayingUpdates;
}

- (BOOL)artworkUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  artworkUpdates = [underlyingCodableMessage artworkUpdates];

  return artworkUpdates;
}

- (BOOL)volumeUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  volumeUpdates = [underlyingCodableMessage volumeUpdates];

  return volumeUpdates;
}

- (BOOL)keyboardUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  keyboardUpdates = [underlyingCodableMessage keyboardUpdates];

  return keyboardUpdates;
}

- (BOOL)outputDeviceUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUpdates = [underlyingCodableMessage outputDeviceUpdates];

  return outputDeviceUpdates;
}

- (BOOL)systemEndpointUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  systemEndpointUpdates = [underlyingCodableMessage systemEndpointUpdates];

  return systemEndpointUpdates;
}

@end