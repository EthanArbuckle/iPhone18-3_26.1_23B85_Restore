@interface MRProtocolMessage
+ (id)protocolMessageWithProtobufData:(id)a3 error:(id *)a4;
- (BOOL)replyWithMessage:(id)a3;
- (MRProtocolClientConnection)clientConnection;
- (MRProtocolMessage)init;
- (MRProtocolMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
- (NSData)protobufData;
- (NSString)description;
- (void)dealloc;
- (void)protobufData;
@end

@implementation MRProtocolMessage

- (MRProtocolMessage)init
{
  v7.receiver = self;
  v7.super_class = MRProtocolMessage;
  v2 = [(MRProtocolMessage *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uniqueIdentifier = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = v4;
  }

  return v2;
}

- (NSData)protobufData
{
  protobufData = self->_protobufData;
  if (!protobufData)
  {
    v5 = [(MRProtocolMessage *)self type];
    if (!v5)
    {
      v6 = objc_opt_class();
      if (v6 != objc_opt_class())
      {
        [(MRProtocolMessage *)a2 protobufData];
      }
    }

    v7 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v8 = objc_alloc_init(_MRMediaRemoteMessageProtobuf);
    [(_MRMediaRemoteMessageProtobuf *)v8 setType:v5];
    v9 = [(MRProtocolMessage *)self replyIdentifier];
    [(_MRMediaRemoteMessageProtobuf *)v8 setReplyIdentifier:v9];

    v10 = [(MRProtocolMessage *)self uniqueIdentifier];
    [(_MRMediaRemoteMessageProtobuf *)v8 setUniqueIdentifier:v10];

    v11 = [(MRProtocolMessage *)self timestamp];
    if (v11)
    {
      [(_MRMediaRemoteMessageProtobuf *)v8 setTimestamp:(MRTimeUtilitiesGetProcessorTimeScale() * v11)];
    }

    error = self->_error;
    if (error)
    {
      v13 = [(NSError *)error mr_protobuf];
      [(_MRMediaRemoteMessageProtobuf *)v8 setError:v13];

      [(_MRMediaRemoteMessageProtobuf *)v8 setErrorCode:[(NSError *)self->_error code]];
      v14 = [(NSError *)self->_error localizedDescription];
      [(_MRMediaRemoteMessageProtobuf *)v8 setErrorDescription:v14];
    }

    switch(v5)
    {
      case 1uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendCommandMessage:v7];
        break;
      case 2uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendCommandResultMessage:v7];
        break;
      case 3uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetStateMessage:v7];
        break;
      case 4uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetStateMessage:v7];
        break;
      case 5uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetArtworkMessage:v7];
        break;
      case 6uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterHIDDeviceMessage:v7];
        break;
      case 7uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterHIDDeviceResultMessage:v7];
        break;
      case 8uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendHIDEventMessage:v7];
        break;
      case 0xAuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendVirtualTouchEventMessage:v7];
        break;
      case 0xBuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setNotificationMessage:v7];
        break;
      case 0xFuLL:
      case 0x25uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setDeviceInfoMessage:v7];
        break;
      case 0x10uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setClientUpdatesConfigMessage:v7];
        break;
      case 0x11uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setMasterVolumeControlCapabilitiesDidChangeMessage:v7];
        break;
      case 0x12uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGameController:v7];
        break;
      case 0x13uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterGameController:v7];
        break;
      case 0x14uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterGameControllerResponse:v7];
        break;
      case 0x15uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUnregisterGameController:v7];
        break;
      case 0x16uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterForGameControllerEvents:v7];
        break;
      case 0x17uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setKeyboardMessage:v7];
        break;
      case 0x18uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetKeyboardMessage:v7];
        break;
      case 0x19uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setTextInputMessage:v7];
        break;
      case 0x1AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVoiceInputDevicesMessage:v7];
        break;
      case 0x1BuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVoiceInputDevicesResponseMessage:v7];
        break;
      case 0x1CuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterVoiceInputDeviceMessage:v7];
        break;
      case 0x1DuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRegisterVoiceInputDeviceResponseMessage:v7];
        break;
      case 0x1EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetRecordingStateMessage:v7];
        break;
      case 0x1FuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendVoiceInputMessage:v7];
        break;
      case 0x20uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackQueueRequest:v7];
        break;
      case 0x21uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setTransactionPackets:v7];
        break;
      case 0x22uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setCryptoPairingMessage:v7];
        break;
      case 0x23uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGameControllerProperties:v7];
        break;
      case 0x24uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setReadyStateMessage:v7];
        break;
      case 0x26uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setConnectionState:v7];
        break;
      case 0x27uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendButtonEventMessage:v7];
        break;
      case 0x28uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetHiliteModeMessage:v7];
        break;
      case 0x29uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setWakeDeviceMessage:v7];
        break;
      case 0x2AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGenericMessage:v7];
        break;
      case 0x2BuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendPackedVirtualTouchEventMessage:v7];
        break;
      case 0x2CuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSendLyricsEventMessage:v7];
        break;
      case 0x2EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetNowPlayingClientMessage:v7];
        break;
      case 0x2FuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetNowPlayingPlayerMessage:v7];
        break;
      case 0x30uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setModifyOutputContextRequestMessage:v7];
        break;
      case 0x31uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeMessage:v7];
        break;
      case 0x32uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeResultMessage:v7];
        break;
      case 0x33uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetVolumeMessage:v7];
        break;
      case 0x34uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setVolumeDidChangeMessage:v7];
        break;
      case 0x35uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRemoveClientMessage:v7];
        break;
      case 0x36uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRemovePlayerMessage:v7];
        break;
      case 0x37uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateClientMessage:v7];
        break;
      case 0x38uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateContentItemMessage:v7];
        break;
      case 0x39uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateContentItemArtworkMessage:v7];
        break;
      case 0x3AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdatePlayerMessage:v7];
        break;
      case 0x3BuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPromptForRouteAuthorizationMessage:v7];
        break;
      case 0x3CuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPromptForRouteAuthorizationResponseMessage:v7];
        break;
      case 0x3DuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPresentRouteAuthorizationStatusMessage:v7];
        break;
      case 0x3EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeControlCapabilitiesMessage:v7];
        break;
      case 0x3FuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeControlCapabilitiesResultMessage:v7];
        break;
      case 0x40uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setVolumeControlCapabilitiesDidChangeMessage:v7];
        break;
      case 0x41uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateOutputDevicesMessage:v7];
        break;
      case 0x42uLL:
      case 0x45uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRemoveOutputDevicesMessage:v7];
        break;
      case 0x43uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRemoteTextInputMessage:v7];
        break;
      case 0x44uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetRemoteTextInputSessionMessage:v7];
        break;
      case 0x46uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionRequestMessage:v7];
        break;
      case 0x47uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionResponseMessage:v7];
        break;
      case 0x48uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetDefaultSupportedCommandsMessage:v7];
        break;
      case 0x49uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionMigrateRequestMessage:v7];
        break;
      case 0x4AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionMigrateResponseMessage:v7];
        break;
      case 0x4BuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionMigrateBeginMessage:v7];
        break;
      case 0x4CuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionMigrateEndMessage:v7];
        break;
      case 0x4DuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateActiveSystemEndpointMessage:v7];
        break;
      case 0x4EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlaybackSessionMigratePostMessage:v7];
        break;
      case 0x65uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setDiscoveryModeMessage:v7];
        break;
      case 0x66uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setUpdateEndpointsMessage:v7];
        break;
      case 0x67uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRemoveEndpointsMessage:v7];
        break;
      case 0x68uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlayerClientPropertiesMessage:v7];
        break;
      case 0x69uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setOriginClientPropertiesMessage:v7];
        break;
      case 0x6AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setAudioFadeMessage:v7];
        break;
      case 0x6BuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setAudioFadeResponseMessage:v7];
        break;
      case 0x6CuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setDiscoveryUpdateEndpointsMessage:v7];
        break;
      case 0x6DuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setDiscoveryUpdateOutputDevicesMessage:v7];
        break;
      case 0x6EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetListeningModeMessage:v7];
        break;
      case 0x78uLL:
      case 0x85uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setConfigureConnectionMessage:v7];
        break;
      case 0x79uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setCreateHostedEndpointRequest:v7];
        break;
      case 0x7AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setCreateHostedEndpointResponse:v7];
        break;
      case 0x7DuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setAdjustVolumeMessage:v7];
        break;
      case 0x7EuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeMutedMessage:v7];
        break;
      case 0x7FuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setGetVolumeMutedResultMessage:v7];
        break;
      case 0x80uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetVolumeMutedMessage:v7];
        break;
      case 0x81uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setVolumeMutedDidChangeMessage:v7];
        break;
      case 0x82uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setSetConversationDetectionEnabledMessage:v7];
        break;
      case 0x83uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setPlayerClientParticipantsUpdateMessage:v7];
        break;
      case 0x84uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setRequestGroupSessionMessage:v7];
        break;
      case 0x86uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setCreateApplicationConnectionMessage:v7];
        break;
      case 0x87uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setApplicationConnectionProtocolMessage:v7];
        break;
      case 0x88uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setInvalidateApplicationConnectionMessage:v7];
        break;
      case 0x89uLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setMicrophoneConnectionRequestMessage:v7];
        break;
      case 0x8AuLL:
        [(_MRMediaRemoteMessageProtobuf *)v8 setMicrophoneConnectionResponseMessage:v7];
        break;
      default:
        break;
    }

    v15 = [(_MRMediaRemoteMessageProtobuf *)v8 data];
    v16 = self->_protobufData;
    self->_protobufData = v15;

    protobufData = self->_protobufData;
  }

  return protobufData;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  _os_log_fault_impl(&dword_1A2860000, v0, OS_LOG_TYPE_FAULT, "%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (MRProtocolClientConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\n<%@, ", objc_opt_class()];
  if ([(MRProtocolMessage *)self timestamp])
  {
    [v3 appendFormat:@"Timestamp=<%llu>, ", -[MRProtocolMessage timestamp](self, "timestamp")];
  }

  v4 = [(MRProtocolMessage *)self error];

  if (v4)
  {
    v5 = [(MRProtocolMessage *)self error];
    [v3 appendFormat:@"Error=<%@>, ", v5];
  }

  v6 = [(MRProtocolMessage *)self uniqueIdentifier];

  if (v6)
  {
    v7 = [(MRProtocolMessage *)self uniqueIdentifier];
    [v3 appendFormat:@"UniqueIdentifier=<%@>, ", v7];
  }

  v8 = [(MRProtocolMessage *)self replyIdentifier];

  if (v8)
  {
    v9 = [(MRProtocolMessage *)self replyIdentifier];
    [v3 appendFormat:@"ReplyIdentifier=<%@> ", v9];
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v10 = [(MRProtocolMessage *)self underlyingCodableMessage];
    [v3 appendFormat:@"\nMessage: %@\n", v10];
  }

  else
  {
    [v3 appendString:@"\nMessage: REDACTED\n"];
  }

  [v3 appendFormat:@">"];

  return v3;
}

+ (id)protocolMessageWithProtobufData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[_MRMediaRemoteMessageProtobuf alloc] initWithData:v5];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    switch([(_MRMediaRemoteMessageProtobuf *)v6 type])
    {
      case 0:
      case 3:
      case 9:
      case 0x8B:
        v7 = objc_opt_class();
        v8 = 0;
        break;
      case 1:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendCommandMessage];
        goto LABEL_103;
      case 2:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendCommandResultMessage];
        goto LABEL_103;
      case 4:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setStateMessage];
        goto LABEL_103;
      case 5:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setArtworkMessage];
        goto LABEL_103;
      case 6:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerHIDDeviceMessage];
        goto LABEL_103;
      case 7:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerHIDDeviceResultMessage];
        goto LABEL_103;
      case 8:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendHIDEventMessage];
        goto LABEL_103;
      case 0xA:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendVirtualTouchEventMessage];
        goto LABEL_103;
      case 0xB:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 notificationMessage];
        goto LABEL_103;
      case 0xC:
      case 0xD:
      case 0xE:
      case 0x2D:
      case 0x4F:
      case 0x50:
      case 0x51:
      case 0x52:
      case 0x53:
      case 0x54:
      case 0x55:
      case 0x56:
      case 0x57:
      case 0x58:
      case 0x59:
      case 0x5A:
      case 0x5B:
      case 0x5C:
      case 0x5D:
      case 0x5E:
      case 0x5F:
      case 0x60:
      case 0x61:
      case 0x62:
      case 0x63:
      case 0x64:
      case 0x6F:
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
      case 0x74:
      case 0x75:
      case 0x76:
      case 0x77:
      case 0x7B:
      case 0x7C:
        break;
      case 0xF:
      case 0x25:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 deviceInfoMessage];
        goto LABEL_103;
      case 0x10:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 clientUpdatesConfigMessage];
        goto LABEL_103;
      case 0x11:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 masterVolumeControlCapabilitiesDidChangeMessage];
        goto LABEL_103;
      case 0x12:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 gameController];
        goto LABEL_103;
      case 0x13:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerGameController];
        goto LABEL_103;
      case 0x14:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerGameControllerResponse];
        goto LABEL_103;
      case 0x15:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 unregisterGameController];
        goto LABEL_103;
      case 0x16:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerForGameControllerEvents];
        goto LABEL_103;
      case 0x17:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 keyboardMessage];
        goto LABEL_103;
      case 0x18:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getKeyboardMessage];
        goto LABEL_103;
      case 0x19:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 textInputMessage];
        goto LABEL_103;
      case 0x1A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVoiceInputDevicesMessage];
        goto LABEL_103;
      case 0x1B:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVoiceInputDevicesResponseMessage];
        goto LABEL_103;
      case 0x1C:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerVoiceInputDeviceMessage];
        goto LABEL_103;
      case 0x1D:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 registerVoiceInputDeviceResponseMessage];
        goto LABEL_103;
      case 0x1E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setRecordingStateMessage];
        goto LABEL_103;
      case 0x1F:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendVoiceInputMessage];
        goto LABEL_103;
      case 0x20:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackQueueRequest];
        goto LABEL_103;
      case 0x21:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 transactionPackets];
        goto LABEL_103;
      case 0x22:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 cryptoPairingMessage];
        goto LABEL_103;
      case 0x23:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 gameControllerProperties];
        goto LABEL_103;
      case 0x24:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 readyStateMessage];
        goto LABEL_103;
      case 0x26:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 connectionState];
        goto LABEL_103;
      case 0x27:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendButtonEventMessage];
        goto LABEL_103;
      case 0x28:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setHiliteModeMessage];
        goto LABEL_103;
      case 0x29:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 wakeDeviceMessage];
        goto LABEL_103;
      case 0x2A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 genericMessage];
        goto LABEL_103;
      case 0x2B:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendPackedVirtualTouchEventMessage];
        goto LABEL_103;
      case 0x2C:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 sendLyricsEventMessage];
        goto LABEL_103;
      case 0x2E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setNowPlayingClientMessage];
        goto LABEL_103;
      case 0x2F:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setNowPlayingPlayerMessage];
        goto LABEL_103;
      case 0x30:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 modifyOutputContextRequestMessage];
        goto LABEL_103;
      case 0x31:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeMessage];
        goto LABEL_103;
      case 0x32:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeResultMessage];
        goto LABEL_103;
      case 0x33:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setVolumeMessage];
        goto LABEL_103;
      case 0x34:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 volumeDidChangeMessage];
        goto LABEL_103;
      case 0x35:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 removeClientMessage];
        goto LABEL_103;
      case 0x36:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 removePlayerMessage];
        goto LABEL_103;
      case 0x37:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateClientMessage];
        goto LABEL_103;
      case 0x38:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateContentItemMessage];
        goto LABEL_103;
      case 0x39:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateContentItemArtworkMessage];
        goto LABEL_103;
      case 0x3A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updatePlayerMessage];
        goto LABEL_103;
      case 0x3B:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 promptForRouteAuthorizationMessage];
        goto LABEL_103;
      case 0x3C:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 promptForRouteAuthorizationResponseMessage];
        goto LABEL_103;
      case 0x3D:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 presentRouteAuthorizationStatusMessage];
        goto LABEL_103;
      case 0x3E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeControlCapabilitiesMessage];
        goto LABEL_103;
      case 0x3F:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeControlCapabilitiesResultMessage];
        goto LABEL_103;
      case 0x40:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 volumeControlCapabilitiesDidChangeMessage];
        goto LABEL_103;
      case 0x41:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateOutputDevicesMessage];
        goto LABEL_103;
      case 0x42:
      case 0x45:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 removeOutputDevicesMessage];
        goto LABEL_103;
      case 0x43:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 remoteTextInputMessage];
        goto LABEL_103;
      case 0x44:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getRemoteTextInputSessionMessage];
        goto LABEL_103;
      case 0x46:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionRequestMessage];
        goto LABEL_103;
      case 0x47:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionResponseMessage];
        goto LABEL_103;
      case 0x48:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setDefaultSupportedCommandsMessage];
        goto LABEL_103;
      case 0x49:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionMigrateRequestMessage];
        goto LABEL_103;
      case 0x4A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionMigrateResponseMessage];
        goto LABEL_103;
      case 0x4B:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionMigrateBeginMessage];
        goto LABEL_103;
      case 0x4C:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionMigrateEndMessage];
        goto LABEL_103;
      case 0x4D:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateActiveSystemEndpointMessage];
        goto LABEL_103;
      case 0x4E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playbackSessionMigratePostMessage];
        goto LABEL_103;
      case 0x65:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 discoveryModeMessage];
        goto LABEL_103;
      case 0x66:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 updateEndpointsMessage];
        goto LABEL_103;
      case 0x67:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 removeEndpointsMessage];
        goto LABEL_103;
      case 0x68:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playerClientPropertiesMessage];
        goto LABEL_103;
      case 0x69:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 originClientPropertiesMessage];
        goto LABEL_103;
      case 0x6A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 audioFadeMessage];
        goto LABEL_103;
      case 0x6B:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 audioFadeResponseMessage];
        goto LABEL_103;
      case 0x6C:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 discoveryUpdateEndpointsMessage];
        goto LABEL_103;
      case 0x6D:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 discoveryUpdateOutputDevicesMessage];
        goto LABEL_103;
      case 0x6E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setListeningModeMessage];
        goto LABEL_103;
      case 0x78:
      case 0x85:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 configureConnectionMessage];
        goto LABEL_103;
      case 0x79:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 createHostedEndpointRequest];
        goto LABEL_103;
      case 0x7A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 createHostedEndpointResponse];
        goto LABEL_103;
      case 0x7D:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 adjustVolumeMessage];
        goto LABEL_103;
      case 0x7E:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeMutedMessage];
        goto LABEL_103;
      case 0x7F:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 getVolumeMutedResultMessage];
        goto LABEL_103;
      case 0x80:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setVolumeMutedMessage];
        goto LABEL_103;
      case 0x81:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 volumeMutedDidChangeMessage];
        goto LABEL_103;
      case 0x82:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 setConversationDetectionEnabledMessage];
        goto LABEL_103;
      case 0x83:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 playerClientParticipantsUpdateMessage];
        goto LABEL_103;
      case 0x84:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 requestGroupSessionMessage];
        goto LABEL_103;
      case 0x86:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 createApplicationConnectionMessage];
        goto LABEL_103;
      case 0x87:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 applicationConnectionProtocolMessage];
        goto LABEL_103;
      case 0x88:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 invalidateApplicationConnectionMessage];
        goto LABEL_103;
      case 0x89:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 microphoneConnectionRequestMessage];
        goto LABEL_103;
      case 0x8A:
        v7 = objc_opt_class();
        v10 = [(_MRMediaRemoteMessageProtobuf *)v6 microphoneConnectionResponseMessage];
LABEL_103:
        v8 = v10;
        break;
      default:
        v8 = 0;
        break;
    }

    if (-[_MRMediaRemoteMessageProtobuf hasError](v6, "hasError") && (-[_MRMediaRemoteMessageProtobuf error](v6, "error"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 code], v11, v12))
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = [(_MRMediaRemoteMessageProtobuf *)v6 error];
      v15 = [v13 mr_initWithProtobuf:v14];
    }

    else
    {
      if (![(_MRMediaRemoteMessageProtobuf *)v6 errorCode])
      {
        v15 = 0;
        goto LABEL_111;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = [(_MRMediaRemoteMessageProtobuf *)v6 errorCode];
      v13 = [(_MRMediaRemoteMessageProtobuf *)v6 errorDescription];
      v15 = [v16 initWithMRError:v17 description:v13];
    }

LABEL_111:
    if ([v15 isInformational])
    {

      v15 = 0;
    }

    v9 = [[v7 alloc] initWithUnderlyingCodableMessage:v8 error:v15];
    [v9 setTimestamp:{-[_MRMediaRemoteMessageProtobuf timestamp](v6, "timestamp")}];
    v18 = [(_MRMediaRemoteMessageProtobuf *)v6 replyIdentifier];
    [v9 setReplyIdentifier:v18];

    v19 = [(_MRMediaRemoteMessageProtobuf *)v6 uniqueIdentifier];
    [v9 setUniqueIdentifier:v19];

    goto LABEL_114;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 format:@"Message is corrupted."];
  }

LABEL_114:

  return v9;
}

- (MRProtocolMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MRProtocolMessage *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_underlyingCodableMessage, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (BOOL)replyWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRProtocolMessage *)self clientConnection];
  if (!v5)
  {
    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MRProtocolMessage replyWithMessage:];
    }

    goto LABEL_10;
  }

  replyIdentifier = self->_replyIdentifier;
  if (!replyIdentifier)
  {
    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MRProtocolMessage replyWithMessage:];
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  if (!v4)
  {
    v7 = [MRProtocolMessage alloc];
    Error = MRMediaRemoteCreateError(1);
    v4 = [(MRProtocolMessage *)v7 initWithUnderlyingCodableMessage:0 error:Error];

    replyIdentifier = self->_replyIdentifier;
  }

  [(MRProtocolMessage *)v4 setReplyIdentifier:replyIdentifier];
  v9 = 1;
  [(MRProtocolMessage *)v4 setIsOutgoingReply:1];
  [v5 sendMessage:v4];
  self->_replied = 1;
LABEL_11:

  return v9;
}

- (void)replyWithMessage:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "Could not send reply because the message was not expecting a reply: %{public}@ ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)replyWithMessage:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "Could not send reply message because there is no client %{public}@ ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)protobufData
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRProtocolMessage.m" lineNumber:654 description:@"Message does not have a valid type. Did you forget to implement the type method?"];
}

@end