@interface _MRMediaRemoteMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMediaRemoteMessageProtobuf

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SendCommand"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SendCommandResult"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GetState"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SetState"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SetArtwork"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RegisterHIDDevice"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RegisterHIDDeviceResult"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SendHIDEvent"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SendHIDReport"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SendVirtualTouchEvent"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Notification"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DeviceInfo"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ClientUpdatesConfiguration"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"LegacyVolumeControlCapabilitiesDidChange"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"GameController"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"RegisterGameController"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"RegisterGameControllerResponse"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"UnregisterGameController"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"RegisterForGameControllerEvents"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"Keyboard"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"GetKeyboardSession"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"TextInput"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"GetVoiceInputDevices"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"GetVoiceInputDevicesResponse"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"RegisterVoiceInputDevice"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RegisterVoiceInputDeviceResponse"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SetVoiceInputRecordingState"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SendVoiceInput"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"PlaybackQueueRequest"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"Transaction"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"CryptoPairing"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"GameControllerProperties"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"SetReadyState"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"DeviceInfoUpdate"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"SetConnectionState"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"SendButtonEvent"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"SetHiliteMode"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"WakeDevice"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"SendPackedVirtualTouchEvent"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"SendLyricsEventMessage"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"SetNowPlayingClient"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SetNowPlayingPlayer"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"ModifyOutputContextRequest"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"GetVolume"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"GetVolumeResult"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"SetVolume"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"VolumeDidChange"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"RemoveClient"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"RemovePlayer"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"UpdateClient"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"UpdateContentItems"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"UpdateContentItemArtwork"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"UpdatePlayer"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"PromptForRouteAuthorization"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"PromptForRouteAuthorizationResponse"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"PresentRouteAuthorizationStatus"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"GetVolumeControlCapabilities"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"GetVolumeControlCapabilitiesResult"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"VolumeControlCapabilitiesDidChange"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"UpdateOutputDevices"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"RemoveOutputDevices"])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:@"RemoteTextInput"])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:@"GetRemoteTextInputSession"])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:@"RemoveFromParentGroup"])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionRequest"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionResponse"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"SetDefaultSupportedCommands"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionMigrateRequest"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionMigrateResponse"])
  {
    v4 = 74;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionMigrateBegin"])
  {
    v4 = 75;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionMigrateEnd"])
  {
    v4 = 76;
  }

  else if ([v3 isEqualToString:@"UpdateActiveSystemEndpoint"])
  {
    v4 = 77;
  }

  else if ([v3 isEqualToString:@"PlaybackSessionMigratePost"])
  {
    v4 = 78;
  }

  else if ([v3 isEqualToString:@"SetDiscoveryMode"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"UpdateEndpoints"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"RemoveEndpoints"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"SetPlayerClientProperties"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"SetOriginClientProperties"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"AudioFade"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"AudioFadeResponse"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"DiscoveryUpdateEndpoints"])
  {
    v4 = 108;
  }

  else if ([v3 isEqualToString:@"DiscoveryUpdateOutputDevices"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"SetListeningMode"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"ConfigureConnection"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"CreatedHostedEndpointRequest"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"CreatedHostedEndpointResponse"])
  {
    v4 = 122;
  }

  else if ([v3 isEqualToString:@"AdjustVolume"])
  {
    v4 = 125;
  }

  else if ([v3 isEqualToString:@"GetVolumeMuted"])
  {
    v4 = 126;
  }

  else if ([v3 isEqualToString:@"GetVolumeMutedResult"])
  {
    v4 = 127;
  }

  else if ([v3 isEqualToString:@"SetVolumeMuted"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"VolumeMutedDidChange"])
  {
    v4 = 129;
  }

  else if ([v3 isEqualToString:@"SetConversationDetectionEnabled"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"PlayerClientParticipantsUpdate"])
  {
    v4 = 131;
  }

  else if ([v3 isEqualToString:@"RequestGroupSession"])
  {
    v4 = 132;
  }

  else if ([v3 isEqualToString:@"ConfigureConnectionService"])
  {
    v4 = 133;
  }

  else if ([v3 isEqualToString:@"CreateApplicationConnection"])
  {
    v4 = 134;
  }

  else if ([v3 isEqualToString:@"ApplicationConnectionProtocolMessage"])
  {
    v4 = 135;
  }

  else if ([v3 isEqualToString:@"InvalidateApplicationConnection"])
  {
    v4 = 136;
  }

  else if ([v3 isEqualToString:@"MicrophoneConnectionRequest"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"MicrophoneConnectionResponse"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"LastMessageType"])
  {
    v4 = 139;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMediaRemoteMessageProtobuf;
  v4 = [(_MRMediaRemoteMessageProtobuf *)&v8 description];
  v5 = [(_MRMediaRemoteMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = @"Unknown";
    switch(self->_type)
    {
      case 0:
        break;
      case 1:
        v4 = @"SendCommand";
        break;
      case 2:
        v4 = @"SendCommandResult";
        break;
      case 3:
        v4 = @"GetState";
        break;
      case 4:
        v4 = @"SetState";
        break;
      case 5:
        v4 = @"SetArtwork";
        break;
      case 6:
        v4 = @"RegisterHIDDevice";
        break;
      case 7:
        v4 = @"RegisterHIDDeviceResult";
        break;
      case 8:
        v4 = @"SendHIDEvent";
        break;
      case 9:
        v4 = @"SendHIDReport";
        break;
      case 0xA:
        v4 = @"SendVirtualTouchEvent";
        break;
      case 0xB:
        v4 = @"Notification";
        break;
      case 0xF:
        v4 = @"DeviceInfo";
        break;
      case 0x10:
        v4 = @"ClientUpdatesConfiguration";
        break;
      case 0x11:
        v4 = @"LegacyVolumeControlCapabilitiesDidChange";
        break;
      case 0x12:
        v4 = @"GameController";
        break;
      case 0x13:
        v4 = @"RegisterGameController";
        break;
      case 0x14:
        v4 = @"RegisterGameControllerResponse";
        break;
      case 0x15:
        v4 = @"UnregisterGameController";
        break;
      case 0x16:
        v4 = @"RegisterForGameControllerEvents";
        break;
      case 0x17:
        v4 = @"Keyboard";
        break;
      case 0x18:
        v4 = @"GetKeyboardSession";
        break;
      case 0x19:
        v4 = @"TextInput";
        break;
      case 0x1A:
        v4 = @"GetVoiceInputDevices";
        break;
      case 0x1B:
        v4 = @"GetVoiceInputDevicesResponse";
        break;
      case 0x1C:
        v4 = @"RegisterVoiceInputDevice";
        break;
      case 0x1D:
        v4 = @"RegisterVoiceInputDeviceResponse";
        break;
      case 0x1E:
        v4 = @"SetVoiceInputRecordingState";
        break;
      case 0x1F:
        v4 = @"SendVoiceInput";
        break;
      case 0x20:
        v4 = @"PlaybackQueueRequest";
        break;
      case 0x21:
        v4 = @"Transaction";
        break;
      case 0x22:
        v4 = @"CryptoPairing";
        break;
      case 0x23:
        v4 = @"GameControllerProperties";
        break;
      case 0x24:
        v4 = @"SetReadyState";
        break;
      case 0x25:
        v4 = @"DeviceInfoUpdate";
        break;
      case 0x26:
        v4 = @"SetConnectionState";
        break;
      case 0x27:
        v4 = @"SendButtonEvent";
        break;
      case 0x28:
        v4 = @"SetHiliteMode";
        break;
      case 0x29:
        v4 = @"WakeDevice";
        break;
      case 0x2A:
        v4 = @"Generic";
        break;
      case 0x2B:
        v4 = @"SendPackedVirtualTouchEvent";
        break;
      case 0x2C:
        v4 = @"SendLyricsEventMessage";
        break;
      case 0x2E:
        v4 = @"SetNowPlayingClient";
        break;
      case 0x2F:
        v4 = @"SetNowPlayingPlayer";
        break;
      case 0x30:
        v4 = @"ModifyOutputContextRequest";
        break;
      case 0x31:
        v4 = @"GetVolume";
        break;
      case 0x32:
        v4 = @"GetVolumeResult";
        break;
      case 0x33:
        v4 = @"SetVolume";
        break;
      case 0x34:
        v4 = @"VolumeDidChange";
        break;
      case 0x35:
        v4 = @"RemoveClient";
        break;
      case 0x36:
        v4 = @"RemovePlayer";
        break;
      case 0x37:
        v4 = @"UpdateClient";
        break;
      case 0x38:
        v4 = @"UpdateContentItems";
        break;
      case 0x39:
        v4 = @"UpdateContentItemArtwork";
        break;
      case 0x3A:
        v4 = @"UpdatePlayer";
        break;
      case 0x3B:
        v4 = @"PromptForRouteAuthorization";
        break;
      case 0x3C:
        v4 = @"PromptForRouteAuthorizationResponse";
        break;
      case 0x3D:
        v4 = @"PresentRouteAuthorizationStatus";
        break;
      case 0x3E:
        v4 = @"GetVolumeControlCapabilities";
        break;
      case 0x3F:
        v4 = @"GetVolumeControlCapabilitiesResult";
        break;
      case 0x40:
        v4 = @"VolumeControlCapabilitiesDidChange";
        break;
      case 0x41:
        v4 = @"UpdateOutputDevices";
        break;
      case 0x42:
        v4 = @"RemoveOutputDevices";
        break;
      case 0x43:
        v4 = @"RemoteTextInput";
        break;
      case 0x44:
        v4 = @"GetRemoteTextInputSession";
        break;
      case 0x45:
        v4 = @"RemoveFromParentGroup";
        break;
      case 0x46:
        v4 = @"PlaybackSessionRequest";
        break;
      case 0x47:
        v4 = @"PlaybackSessionResponse";
        break;
      case 0x48:
        v4 = @"SetDefaultSupportedCommands";
        break;
      case 0x49:
        v4 = @"PlaybackSessionMigrateRequest";
        break;
      case 0x4A:
        v4 = @"PlaybackSessionMigrateResponse";
        break;
      case 0x4B:
        v4 = @"PlaybackSessionMigrateBegin";
        break;
      case 0x4C:
        v4 = @"PlaybackSessionMigrateEnd";
        break;
      case 0x4D:
        v4 = @"UpdateActiveSystemEndpoint";
        break;
      case 0x4E:
        v4 = @"PlaybackSessionMigratePost";
        break;
      case 0x65:
        v4 = @"SetDiscoveryMode";
        break;
      case 0x66:
        v4 = @"UpdateEndpoints";
        break;
      case 0x67:
        v4 = @"RemoveEndpoints";
        break;
      case 0x68:
        v4 = @"SetPlayerClientProperties";
        break;
      case 0x69:
        v4 = @"SetOriginClientProperties";
        break;
      case 0x6A:
        v4 = @"AudioFade";
        break;
      case 0x6B:
        v4 = @"AudioFadeResponse";
        break;
      case 0x6C:
        v4 = @"DiscoveryUpdateEndpoints";
        break;
      case 0x6D:
        v4 = @"DiscoveryUpdateOutputDevices";
        break;
      case 0x6E:
        v4 = @"SetListeningMode";
        break;
      case 0x78:
        v4 = @"ConfigureConnection";
        break;
      case 0x79:
        v4 = @"CreatedHostedEndpointRequest";
        break;
      case 0x7A:
        v4 = @"CreatedHostedEndpointResponse";
        break;
      case 0x7D:
        v4 = @"AdjustVolume";
        break;
      case 0x7E:
        v4 = @"GetVolumeMuted";
        break;
      case 0x7F:
        v4 = @"GetVolumeMutedResult";
        break;
      case 0x80:
        v4 = @"SetVolumeMuted";
        break;
      case 0x81:
        v4 = @"VolumeMutedDidChange";
        break;
      case 0x82:
        v4 = @"SetConversationDetectionEnabled";
        break;
      case 0x83:
        v4 = @"PlayerClientParticipantsUpdate";
        break;
      case 0x84:
        v4 = @"RequestGroupSession";
        break;
      case 0x85:
        v4 = @"ConfigureConnectionService";
        break;
      case 0x86:
        v4 = @"CreateApplicationConnection";
        break;
      case 0x87:
        v4 = @"ApplicationConnectionProtocolMessage";
        break;
      case 0x88:
        v4 = @"InvalidateApplicationConnection";
        break;
      case 0x89:
        v4 = @"MicrophoneConnectionRequest";
        break;
      case 0x8A:
        v4 = @"MicrophoneConnectionResponse";
        break;
      case 0x8B:
        v4 = @"LastMessageType";
        break;
      default:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
        break;
    }

    [v3 setObject:v4 forKey:@"type"];
  }

  replyIdentifier = self->_replyIdentifier;
  if (replyIdentifier)
  {
    [v3 setObject:replyIdentifier forKey:@"replyIdentifier"];
  }

  authenticationToken = self->_authenticationToken;
  if (authenticationToken)
  {
    [v3 setObject:authenticationToken forKey:@"authenticationToken"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v8 forKey:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  sendCommandMessage = self->_sendCommandMessage;
  if (sendCommandMessage)
  {
    v12 = [(_MRSendCommandMessageProtobuf *)sendCommandMessage dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"sendCommandMessage"];
  }

  sendCommandResultMessage = self->_sendCommandResultMessage;
  if (sendCommandResultMessage)
  {
    v14 = [(_MRSendCommandResultMessageProtobuf *)sendCommandResultMessage dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"sendCommandResultMessage"];
  }

  setStateMessage = self->_setStateMessage;
  if (setStateMessage)
  {
    v16 = [(_MRSetStateMessageProtobuf *)setStateMessage dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"setStateMessage"];
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage)
  {
    v18 = [(_MRNotificationMessageProtobuf *)notificationMessage dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"notificationMessage"];
  }

  contentItemsChangedNotificationMessage = self->_contentItemsChangedNotificationMessage;
  if (contentItemsChangedNotificationMessage)
  {
    v20 = [(_MRPlaybackQueueProtobuf *)contentItemsChangedNotificationMessage dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"contentItemsChangedNotificationMessage"];
  }

  deviceInfoMessage = self->_deviceInfoMessage;
  if (deviceInfoMessage)
  {
    v22 = [(_MRDeviceInfoMessageProtobuf *)deviceInfoMessage dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"deviceInfoMessage"];
  }

  clientUpdatesConfigMessage = self->_clientUpdatesConfigMessage;
  if (clientUpdatesConfigMessage)
  {
    v24 = [(_MRClientUpdatesConfigurationProtobuf *)clientUpdatesConfigMessage dictionaryRepresentation];
    [v3 setObject:v24 forKey:@"clientUpdatesConfigMessage"];
  }

  playbackQueueRequest = self->_playbackQueueRequest;
  if (playbackQueueRequest)
  {
    v26 = [(_MRPlaybackQueueRequestProtobuf *)playbackQueueRequest dictionaryRepresentation];
    [v3 setObject:v26 forKey:@"playbackQueueRequest"];
  }

  connectionState = self->_connectionState;
  if (connectionState)
  {
    v28 = [(_MRSetConnectionStateMessageProtobuf *)connectionState dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"connectionState"];
  }

  getVolumeMessage = self->_getVolumeMessage;
  if (getVolumeMessage)
  {
    v30 = [(_MRGetVolumeMessageProtobuf *)getVolumeMessage dictionaryRepresentation];
    [v3 setObject:v30 forKey:@"getVolumeMessage"];
  }

  getVolumeResultMessage = self->_getVolumeResultMessage;
  if (getVolumeResultMessage)
  {
    v32 = [(_MRGetVolumeResultMessageProtobuf *)getVolumeResultMessage dictionaryRepresentation];
    [v3 setObject:v32 forKey:@"getVolumeResultMessage"];
  }

  setVolumeMessage = self->_setVolumeMessage;
  if (setVolumeMessage)
  {
    v34 = [(_MRSetVolumeMessageProtobuf *)setVolumeMessage dictionaryRepresentation];
    [v3 setObject:v34 forKey:@"setVolumeMessage"];
  }

  volumeDidChangeMessage = self->_volumeDidChangeMessage;
  if (volumeDidChangeMessage)
  {
    v36 = [(_MRVolumeDidChangeMessageProtobuf *)volumeDidChangeMessage dictionaryRepresentation];
    [v3 setObject:v36 forKey:@"volumeDidChangeMessage"];
  }

  updateContentItemMessage = self->_updateContentItemMessage;
  if (updateContentItemMessage)
  {
    v38 = [(_MRUpdateContentItemMessageProtobuf *)updateContentItemMessage dictionaryRepresentation];
    [v3 setObject:v38 forKey:@"updateContentItemMessage"];
  }

  setDefaultSupportedCommandsMessage = self->_setDefaultSupportedCommandsMessage;
  if (setDefaultSupportedCommandsMessage)
  {
    v40 = [(_MRSetStateMessageProtobuf *)setDefaultSupportedCommandsMessage dictionaryRepresentation];
    [v3 setObject:v40 forKey:@"setDefaultSupportedCommandsMessage"];
  }

  getStateMessage = self->_getStateMessage;
  if (getStateMessage)
  {
    v42 = [(_MRGetStateMessageProtobuf *)getStateMessage dictionaryRepresentation];
    [v3 setObject:v42 forKey:@"getStateMessage"];
  }

  error = self->_error;
  if (error)
  {
    v44 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [v3 setObject:v44 forKey:@"error"];
  }

  setArtworkMessage = self->_setArtworkMessage;
  if (setArtworkMessage)
  {
    v46 = [(_MRSetArtworkMessageProtobuf *)setArtworkMessage dictionaryRepresentation];
    [v3 setObject:v46 forKey:@"setArtworkMessage"];
  }

  registerHIDDeviceMessage = self->_registerHIDDeviceMessage;
  if (registerHIDDeviceMessage)
  {
    v48 = [(_MRRegisterHIDDeviceMessageProtobuf *)registerHIDDeviceMessage dictionaryRepresentation];
    [v3 setObject:v48 forKey:@"registerHIDDeviceMessage"];
  }

  registerHIDDeviceResultMessage = self->_registerHIDDeviceResultMessage;
  if (registerHIDDeviceResultMessage)
  {
    v50 = [(_MRRegisterHIDDeviceResultMessageProtobuf *)registerHIDDeviceResultMessage dictionaryRepresentation];
    [v3 setObject:v50 forKey:@"registerHIDDeviceResultMessage"];
  }

  sendHIDEventMessage = self->_sendHIDEventMessage;
  if (sendHIDEventMessage)
  {
    v52 = [(_MRSendHIDEventMessageProtobuf *)sendHIDEventMessage dictionaryRepresentation];
    [v3 setObject:v52 forKey:@"sendHIDEventMessage"];
  }

  sendHIDReportMessage = self->_sendHIDReportMessage;
  if (sendHIDReportMessage)
  {
    v54 = [(_MRSendHIDReportMessageProtobuf *)sendHIDReportMessage dictionaryRepresentation];
    [v3 setObject:v54 forKey:@"sendHIDReportMessage"];
  }

  sendVirtualTouchEventMessage = self->_sendVirtualTouchEventMessage;
  if (sendVirtualTouchEventMessage)
  {
    v56 = [(_MRSendVirtualTouchEventMessageProtobuf *)sendVirtualTouchEventMessage dictionaryRepresentation];
    [v3 setObject:v56 forKey:@"sendVirtualTouchEventMessage"];
  }

  masterVolumeControlCapabilitiesDidChangeMessage = self->_masterVolumeControlCapabilitiesDidChangeMessage;
  if (masterVolumeControlCapabilitiesDidChangeMessage)
  {
    v58 = [(_MRVolumeControlAvailabilityProtobuf *)masterVolumeControlCapabilitiesDidChangeMessage dictionaryRepresentation];
    [v3 setObject:v58 forKey:@"masterVolumeControlCapabilitiesDidChangeMessage"];
  }

  gameController = self->_gameController;
  if (gameController)
  {
    v60 = [(_MRGameControllerMessageProtobuf *)gameController dictionaryRepresentation];
    [v3 setObject:v60 forKey:@"gameController"];
  }

  registerGameController = self->_registerGameController;
  if (registerGameController)
  {
    v62 = [(_MRRegisterGameControllerMessageProtobuf *)registerGameController dictionaryRepresentation];
    [v3 setObject:v62 forKey:@"registerGameController"];
  }

  registerGameControllerResponse = self->_registerGameControllerResponse;
  if (registerGameControllerResponse)
  {
    v64 = [(_MRRegisterGameControllerResponseMessageProtobuf *)registerGameControllerResponse dictionaryRepresentation];
    [v3 setObject:v64 forKey:@"registerGameControllerResponse"];
  }

  unregisterGameController = self->_unregisterGameController;
  if (unregisterGameController)
  {
    v66 = [(_MRUnregisterGameControllerMessageProtobuf *)unregisterGameController dictionaryRepresentation];
    [v3 setObject:v66 forKey:@"unregisterGameController"];
  }

  registerForGameControllerEvents = self->_registerForGameControllerEvents;
  if (registerForGameControllerEvents)
  {
    v68 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)registerForGameControllerEvents dictionaryRepresentation];
    [v3 setObject:v68 forKey:@"registerForGameControllerEvents"];
  }

  keyboardMessage = self->_keyboardMessage;
  if (keyboardMessage)
  {
    v70 = [(_MRKeyboardMessageProtobuf *)keyboardMessage dictionaryRepresentation];
    [v3 setObject:v70 forKey:@"keyboardMessage"];
  }

  getKeyboardMessage = self->_getKeyboardMessage;
  if (getKeyboardMessage)
  {
    v72 = [(_MRGetKeyboardSessionProtobuf *)getKeyboardMessage dictionaryRepresentation];
    [v3 setObject:v72 forKey:@"getKeyboardMessage"];
  }

  textInputMessage = self->_textInputMessage;
  if (textInputMessage)
  {
    v74 = [(_MRTextInputMessageProtobuf *)textInputMessage dictionaryRepresentation];
    [v3 setObject:v74 forKey:@"textInputMessage"];
  }

  getVoiceInputDevicesMessage = self->_getVoiceInputDevicesMessage;
  if (getVoiceInputDevicesMessage)
  {
    v76 = [(_MRGetVoiceInputDevicesMessageProtobuf *)getVoiceInputDevicesMessage dictionaryRepresentation];
    [v3 setObject:v76 forKey:@"getVoiceInputDevicesMessage"];
  }

  getVoiceInputDevicesResponseMessage = self->_getVoiceInputDevicesResponseMessage;
  if (getVoiceInputDevicesResponseMessage)
  {
    v78 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)getVoiceInputDevicesResponseMessage dictionaryRepresentation];
    [v3 setObject:v78 forKey:@"getVoiceInputDevicesResponseMessage"];
  }

  registerVoiceInputDeviceMessage = self->_registerVoiceInputDeviceMessage;
  if (registerVoiceInputDeviceMessage)
  {
    v80 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)registerVoiceInputDeviceMessage dictionaryRepresentation];
    [v3 setObject:v80 forKey:@"registerVoiceInputDeviceMessage"];
  }

  registerVoiceInputDeviceResponseMessage = self->_registerVoiceInputDeviceResponseMessage;
  if (registerVoiceInputDeviceResponseMessage)
  {
    v82 = [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)registerVoiceInputDeviceResponseMessage dictionaryRepresentation];
    [v3 setObject:v82 forKey:@"registerVoiceInputDeviceResponseMessage"];
  }

  setRecordingStateMessage = self->_setRecordingStateMessage;
  if (setRecordingStateMessage)
  {
    v84 = [(_MRSetRecordingStateMessageProtobuf *)setRecordingStateMessage dictionaryRepresentation];
    [v3 setObject:v84 forKey:@"setRecordingStateMessage"];
  }

  sendVoiceInputMessage = self->_sendVoiceInputMessage;
  if (sendVoiceInputMessage)
  {
    v86 = [(_MRSendVoiceInputMessageProtobuf *)sendVoiceInputMessage dictionaryRepresentation];
    [v3 setObject:v86 forKey:@"sendVoiceInputMessage"];
  }

  transactionPackets = self->_transactionPackets;
  if (transactionPackets)
  {
    v88 = [(_MRTransactionMessageProtobuf *)transactionPackets dictionaryRepresentation];
    [v3 setObject:v88 forKey:@"transactionPackets"];
  }

  cryptoPairingMessage = self->_cryptoPairingMessage;
  if (cryptoPairingMessage)
  {
    v90 = [(_MRCryptoPairingMessageProtobuf *)cryptoPairingMessage dictionaryRepresentation];
    [v3 setObject:v90 forKey:@"cryptoPairingMessage"];
  }

  gameControllerProperties = self->_gameControllerProperties;
  if (gameControllerProperties)
  {
    v92 = [(_MRGameControllerPropertiesMessageProtobuf *)gameControllerProperties dictionaryRepresentation];
    [v3 setObject:v92 forKey:@"gameControllerProperties"];
  }

  readyStateMessage = self->_readyStateMessage;
  if (readyStateMessage)
  {
    v94 = [(_MRSetReadyStateMessageProtobuf *)readyStateMessage dictionaryRepresentation];
    [v3 setObject:v94 forKey:@"readyStateMessage"];
  }

  sendButtonEventMessage = self->_sendButtonEventMessage;
  if (sendButtonEventMessage)
  {
    v96 = [(_MRSendButtonEventMessageProtobuf *)sendButtonEventMessage dictionaryRepresentation];
    [v3 setObject:v96 forKey:@"sendButtonEventMessage"];
  }

  setHiliteModeMessage = self->_setHiliteModeMessage;
  if (setHiliteModeMessage)
  {
    v98 = [(_MRSetHiliteModeMessageProtobuf *)setHiliteModeMessage dictionaryRepresentation];
    [v3 setObject:v98 forKey:@"setHiliteModeMessage"];
  }

  wakeDeviceMessage = self->_wakeDeviceMessage;
  if (wakeDeviceMessage)
  {
    v100 = [(_MRWakeDeviceMessageProtobuf *)wakeDeviceMessage dictionaryRepresentation];
    [v3 setObject:v100 forKey:@"wakeDeviceMessage"];
  }

  genericMessage = self->_genericMessage;
  if (genericMessage)
  {
    v102 = [(_MRGenericMessageProtobuf *)genericMessage dictionaryRepresentation];
    [v3 setObject:v102 forKey:@"genericMessage"];
  }

  sendPackedVirtualTouchEventMessage = self->_sendPackedVirtualTouchEventMessage;
  if (sendPackedVirtualTouchEventMessage)
  {
    v104 = [(_MRSendPackedVirtualTouchEventMessageProtobuf *)sendPackedVirtualTouchEventMessage dictionaryRepresentation];
    [v3 setObject:v104 forKey:@"sendPackedVirtualTouchEventMessage"];
  }

  sendLyricsEventMessage = self->_sendLyricsEventMessage;
  if (sendLyricsEventMessage)
  {
    v106 = [(_MRSendLyricsEventMessageProtobuf *)sendLyricsEventMessage dictionaryRepresentation];
    [v3 setObject:v106 forKey:@"sendLyricsEventMessage"];
  }

  setNowPlayingClientMessage = self->_setNowPlayingClientMessage;
  if (setNowPlayingClientMessage)
  {
    v108 = [(_MRSetNowPlayingClientMessageProtobuf *)setNowPlayingClientMessage dictionaryRepresentation];
    [v3 setObject:v108 forKey:@"setNowPlayingClientMessage"];
  }

  setNowPlayingPlayerMessage = self->_setNowPlayingPlayerMessage;
  if (setNowPlayingPlayerMessage)
  {
    v110 = [(_MRSetNowPlayingPlayerMessageProtobuf *)setNowPlayingPlayerMessage dictionaryRepresentation];
    [v3 setObject:v110 forKey:@"setNowPlayingPlayerMessage"];
  }

  modifyOutputContextRequestMessage = self->_modifyOutputContextRequestMessage;
  if (modifyOutputContextRequestMessage)
  {
    v112 = [(_MRAVModifyOutputContextRequestProtobuf *)modifyOutputContextRequestMessage dictionaryRepresentation];
    [v3 setObject:v112 forKey:@"modifyOutputContextRequestMessage"];
  }

  removeClientMessage = self->_removeClientMessage;
  if (removeClientMessage)
  {
    v114 = [(_MRRemoveClientMessageProtobuf *)removeClientMessage dictionaryRepresentation];
    [v3 setObject:v114 forKey:@"removeClientMessage"];
  }

  removePlayerMessage = self->_removePlayerMessage;
  if (removePlayerMessage)
  {
    v116 = [(_MRRemovePlayerMessageProtobuf *)removePlayerMessage dictionaryRepresentation];
    [v3 setObject:v116 forKey:@"removePlayerMessage"];
  }

  updateClientMessage = self->_updateClientMessage;
  if (updateClientMessage)
  {
    v118 = [(_MRUpdateClientMessageProtobuf *)updateClientMessage dictionaryRepresentation];
    [v3 setObject:v118 forKey:@"updateClientMessage"];
  }

  updateContentItemArtworkMessage = self->_updateContentItemArtworkMessage;
  if (updateContentItemArtworkMessage)
  {
    v120 = [(_MRUpdateContentItemArtworkMessageProtobuf *)updateContentItemArtworkMessage dictionaryRepresentation];
    [v3 setObject:v120 forKey:@"updateContentItemArtworkMessage"];
  }

  updatePlayerMessage = self->_updatePlayerMessage;
  if (updatePlayerMessage)
  {
    v122 = [(_MRUpdatePlayerMessageProtobuf *)updatePlayerMessage dictionaryRepresentation];
    [v3 setObject:v122 forKey:@"updatePlayerMessage"];
  }

  promptForRouteAuthorizationMessage = self->_promptForRouteAuthorizationMessage;
  if (promptForRouteAuthorizationMessage)
  {
    v124 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)promptForRouteAuthorizationMessage dictionaryRepresentation];
    [v3 setObject:v124 forKey:@"promptForRouteAuthorizationMessage"];
  }

  promptForRouteAuthorizationResponseMessage = self->_promptForRouteAuthorizationResponseMessage;
  if (promptForRouteAuthorizationResponseMessage)
  {
    v126 = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)promptForRouteAuthorizationResponseMessage dictionaryRepresentation];
    [v3 setObject:v126 forKey:@"promptForRouteAuthorizationResponseMessage"];
  }

  presentRouteAuthorizationStatusMessage = self->_presentRouteAuthorizationStatusMessage;
  if (presentRouteAuthorizationStatusMessage)
  {
    v128 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)presentRouteAuthorizationStatusMessage dictionaryRepresentation];
    [v3 setObject:v128 forKey:@"presentRouteAuthorizationStatusMessage"];
  }

  getVolumeControlCapabilitiesMessage = self->_getVolumeControlCapabilitiesMessage;
  if (getVolumeControlCapabilitiesMessage)
  {
    v130 = [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)getVolumeControlCapabilitiesMessage dictionaryRepresentation];
    [v3 setObject:v130 forKey:@"getVolumeControlCapabilitiesMessage"];
  }

  getVolumeControlCapabilitiesResultMessage = self->_getVolumeControlCapabilitiesResultMessage;
  if (getVolumeControlCapabilitiesResultMessage)
  {
    v132 = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)getVolumeControlCapabilitiesResultMessage dictionaryRepresentation];
    [v3 setObject:v132 forKey:@"getVolumeControlCapabilitiesResultMessage"];
  }

  volumeControlCapabilitiesDidChangeMessage = self->_volumeControlCapabilitiesDidChangeMessage;
  if (volumeControlCapabilitiesDidChangeMessage)
  {
    v134 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)volumeControlCapabilitiesDidChangeMessage dictionaryRepresentation];
    [v3 setObject:v134 forKey:@"volumeControlCapabilitiesDidChangeMessage"];
  }

  updateOutputDevicesMessage = self->_updateOutputDevicesMessage;
  if (updateOutputDevicesMessage)
  {
    v136 = [(_MRUpdateOutputDevicesMessageProtobuf *)updateOutputDevicesMessage dictionaryRepresentation];
    [v3 setObject:v136 forKey:@"updateOutputDevicesMessage"];
  }

  removeOutputDevicesMessage = self->_removeOutputDevicesMessage;
  if (removeOutputDevicesMessage)
  {
    v138 = [(_MRRemoveOutputDevicesMessageProtobuf *)removeOutputDevicesMessage dictionaryRepresentation];
    [v3 setObject:v138 forKey:@"removeOutputDevicesMessage"];
  }

  remoteTextInputMessage = self->_remoteTextInputMessage;
  if (remoteTextInputMessage)
  {
    v140 = [(_MRRemoteTextInputMessageProtobuf *)remoteTextInputMessage dictionaryRepresentation];
    [v3 setObject:v140 forKey:@"remoteTextInputMessage"];
  }

  getRemoteTextInputSessionMessage = self->_getRemoteTextInputSessionMessage;
  if (getRemoteTextInputSessionMessage)
  {
    v142 = [(_MRGetRemoteTextInputSessionProtobuf *)getRemoteTextInputSessionMessage dictionaryRepresentation];
    [v3 setObject:v142 forKey:@"getRemoteTextInputSessionMessage"];
  }

  playbackSessionRequestMessage = self->_playbackSessionRequestMessage;
  if (playbackSessionRequestMessage)
  {
    v144 = [(_MRPlaybackSessionRequestMessageProtobuf *)playbackSessionRequestMessage dictionaryRepresentation];
    [v3 setObject:v144 forKey:@"playbackSessionRequestMessage"];
  }

  playbackSessionResponseMessage = self->_playbackSessionResponseMessage;
  if (playbackSessionResponseMessage)
  {
    v146 = [(_MRPlaybackSessionResponseMessageProtobuf *)playbackSessionResponseMessage dictionaryRepresentation];
    [v3 setObject:v146 forKey:@"playbackSessionResponseMessage"];
  }

  playbackSessionMigrateRequestMessage = self->_playbackSessionMigrateRequestMessage;
  if (playbackSessionMigrateRequestMessage)
  {
    v148 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)playbackSessionMigrateRequestMessage dictionaryRepresentation];
    [v3 setObject:v148 forKey:@"playbackSessionMigrateRequestMessage"];
  }

  playbackSessionMigrateResponseMessage = self->_playbackSessionMigrateResponseMessage;
  if (playbackSessionMigrateResponseMessage)
  {
    v150 = [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)playbackSessionMigrateResponseMessage dictionaryRepresentation];
    [v3 setObject:v150 forKey:@"playbackSessionMigrateResponseMessage"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  playbackSessionMigrateBeginMessage = self->_playbackSessionMigrateBeginMessage;
  if (playbackSessionMigrateBeginMessage)
  {
    v153 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)playbackSessionMigrateBeginMessage dictionaryRepresentation];
    [v3 setObject:v153 forKey:@"playbackSessionMigrateBeginMessage"];
  }

  playbackSessionMigrateEndMessage = self->_playbackSessionMigrateEndMessage;
  if (playbackSessionMigrateEndMessage)
  {
    v155 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)playbackSessionMigrateEndMessage dictionaryRepresentation];
    [v3 setObject:v155 forKey:@"playbackSessionMigrateEndMessage"];
  }

  updateActiveSystemEndpointMessage = self->_updateActiveSystemEndpointMessage;
  if (updateActiveSystemEndpointMessage)
  {
    v157 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)updateActiveSystemEndpointMessage dictionaryRepresentation];
    [v3 setObject:v157 forKey:@"updateActiveSystemEndpointMessage"];
  }

  discoveryModeMessage = self->_discoveryModeMessage;
  if (discoveryModeMessage)
  {
    v159 = [(_MRSetDiscoveryModeProtobufMessage *)discoveryModeMessage dictionaryRepresentation];
    [v3 setObject:v159 forKey:@"discoveryModeMessage"];
  }

  updateEndpointsMessage = self->_updateEndpointsMessage;
  if (updateEndpointsMessage)
  {
    v161 = [(_MRUpdateEndpointsMessageProtobuf *)updateEndpointsMessage dictionaryRepresentation];
    [v3 setObject:v161 forKey:@"updateEndpointsMessage"];
  }

  removeEndpointsMessage = self->_removeEndpointsMessage;
  if (removeEndpointsMessage)
  {
    v163 = [(_MRRemoveEndpointsMessageProtobuf *)removeEndpointsMessage dictionaryRepresentation];
    [v3 setObject:v163 forKey:@"removeEndpointsMessage"];
  }

  playerClientPropertiesMessage = self->_playerClientPropertiesMessage;
  if (playerClientPropertiesMessage)
  {
    v165 = [(_MRPlayerClientPropertiesMessageProtobuf *)playerClientPropertiesMessage dictionaryRepresentation];
    [v3 setObject:v165 forKey:@"playerClientPropertiesMessage"];
  }

  originClientPropertiesMessage = self->_originClientPropertiesMessage;
  if (originClientPropertiesMessage)
  {
    v167 = [(_MROriginClientPropertiesMessageProtobuf *)originClientPropertiesMessage dictionaryRepresentation];
    [v3 setObject:v167 forKey:@"originClientPropertiesMessage"];
  }

  audioFadeMessage = self->_audioFadeMessage;
  if (audioFadeMessage)
  {
    v169 = [(_MRAudioFadeMessageProtobuf *)audioFadeMessage dictionaryRepresentation];
    [v3 setObject:v169 forKey:@"audioFadeMessage"];
  }

  audioFadeResponseMessage = self->_audioFadeResponseMessage;
  if (audioFadeResponseMessage)
  {
    v171 = [(_MRAudioFadeResponseMessageProtobuf *)audioFadeResponseMessage dictionaryRepresentation];
    [v3 setObject:v171 forKey:@"audioFadeResponseMessage"];
  }

  discoveryUpdateEndpointsMessage = self->_discoveryUpdateEndpointsMessage;
  if (discoveryUpdateEndpointsMessage)
  {
    v173 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)discoveryUpdateEndpointsMessage dictionaryRepresentation];
    [v3 setObject:v173 forKey:@"discoveryUpdateEndpointsMessage"];
  }

  discoveryUpdateOutputDevicesMessage = self->_discoveryUpdateOutputDevicesMessage;
  if (discoveryUpdateOutputDevicesMessage)
  {
    v175 = [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)discoveryUpdateOutputDevicesMessage dictionaryRepresentation];
    [v3 setObject:v175 forKey:@"discoveryUpdateOutputDevicesMessage"];
  }

  setListeningModeMessage = self->_setListeningModeMessage;
  if (setListeningModeMessage)
  {
    v177 = [(_MRSetListeningModeMessageProtobuf *)setListeningModeMessage dictionaryRepresentation];
    [v3 setObject:v177 forKey:@"setListeningModeMessage"];
  }

  configureConnectionMessage = self->_configureConnectionMessage;
  if (configureConnectionMessage)
  {
    v179 = [(_MRConfigureConnectionMessageProtobuf *)configureConnectionMessage dictionaryRepresentation];
    [v3 setObject:v179 forKey:@"configureConnectionMessage"];
  }

  createHostedEndpointRequest = self->_createHostedEndpointRequest;
  if (createHostedEndpointRequest)
  {
    v181 = [(_MRCreateHostedEndpointRequestProtobuf *)createHostedEndpointRequest dictionaryRepresentation];
    [v3 setObject:v181 forKey:@"createHostedEndpointRequest"];
  }

  createHostedEndpointResponse = self->_createHostedEndpointResponse;
  if (createHostedEndpointResponse)
  {
    v183 = [(_MRCreateHostedEndpointResponseProtobuf *)createHostedEndpointResponse dictionaryRepresentation];
    [v3 setObject:v183 forKey:@"createHostedEndpointResponse"];
  }

  adjustVolumeMessage = self->_adjustVolumeMessage;
  if (adjustVolumeMessage)
  {
    v185 = [(_MRAdjustVolumeMessageProtobuf *)adjustVolumeMessage dictionaryRepresentation];
    [v3 setObject:v185 forKey:@"adjustVolumeMessage"];
  }

  getVolumeMutedMessage = self->_getVolumeMutedMessage;
  if (getVolumeMutedMessage)
  {
    v187 = [(_MRGetVolumeMutedMessageProtobuf *)getVolumeMutedMessage dictionaryRepresentation];
    [v3 setObject:v187 forKey:@"getVolumeMutedMessage"];
  }

  getVolumeMutedResultMessage = self->_getVolumeMutedResultMessage;
  if (getVolumeMutedResultMessage)
  {
    v189 = [(_MRGetVolumeMutedResultMessageProtobuf *)getVolumeMutedResultMessage dictionaryRepresentation];
    [v3 setObject:v189 forKey:@"getVolumeMutedResultMessage"];
  }

  setVolumeMutedMessage = self->_setVolumeMutedMessage;
  if (setVolumeMutedMessage)
  {
    v191 = [(_MRSetVolumeMutedMessageProtobuf *)setVolumeMutedMessage dictionaryRepresentation];
    [v3 setObject:v191 forKey:@"setVolumeMutedMessage"];
  }

  volumeMutedDidChangeMessage = self->_volumeMutedDidChangeMessage;
  if (volumeMutedDidChangeMessage)
  {
    v193 = [(_MRVolumeMutedDidChangeMessageProtobuf *)volumeMutedDidChangeMessage dictionaryRepresentation];
    [v3 setObject:v193 forKey:@"volumeMutedDidChangeMessage"];
  }

  setConversationDetectionEnabledMessage = self->_setConversationDetectionEnabledMessage;
  if (setConversationDetectionEnabledMessage)
  {
    v195 = [(_MRSetConversationDetectionEnabledMessageProtobuf *)setConversationDetectionEnabledMessage dictionaryRepresentation];
    [v3 setObject:v195 forKey:@"setConversationDetectionEnabledMessage"];
  }

  playerClientParticipantsUpdateMessage = self->_playerClientParticipantsUpdateMessage;
  if (playerClientParticipantsUpdateMessage)
  {
    v197 = [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)playerClientParticipantsUpdateMessage dictionaryRepresentation];
    [v3 setObject:v197 forKey:@"playerClientParticipantsUpdateMessage"];
  }

  requestGroupSessionMessage = self->_requestGroupSessionMessage;
  if (requestGroupSessionMessage)
  {
    v199 = [(_MRRequestGroupSessionMessageProtobuf *)requestGroupSessionMessage dictionaryRepresentation];
    [v3 setObject:v199 forKey:@"requestGroupSessionMessage"];
  }

  createApplicationConnectionMessage = self->_createApplicationConnectionMessage;
  if (createApplicationConnectionMessage)
  {
    v201 = [(_MRCreateApplicationConnectionMessageProtobuf *)createApplicationConnectionMessage dictionaryRepresentation];
    [v3 setObject:v201 forKey:@"createApplicationConnectionMessage"];
  }

  applicationConnectionProtocolMessage = self->_applicationConnectionProtocolMessage;
  if (applicationConnectionProtocolMessage)
  {
    v203 = [(_MRApplicationConnectionProtocolMessageProtobuf *)applicationConnectionProtocolMessage dictionaryRepresentation];
    [v3 setObject:v203 forKey:@"applicationConnectionProtocolMessage"];
  }

  invalidateApplicationConnectionMessage = self->_invalidateApplicationConnectionMessage;
  if (invalidateApplicationConnectionMessage)
  {
    v205 = [(_MRApplicationConnectionContextProtobuf *)invalidateApplicationConnectionMessage dictionaryRepresentation];
    [v3 setObject:v205 forKey:@"InvalidateApplicationConnectionMessage"];
  }

  microphoneConnectionRequestMessage = self->_microphoneConnectionRequestMessage;
  if (microphoneConnectionRequestMessage)
  {
    v207 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)microphoneConnectionRequestMessage dictionaryRepresentation];
    [v3 setObject:v207 forKey:@"microphoneConnectionRequestMessage"];
  }

  microphoneConnectionResponseMessage = self->_microphoneConnectionResponseMessage;
  if (microphoneConnectionResponseMessage)
  {
    v209 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)microphoneConnectionResponseMessage dictionaryRepresentation];
    [v3 setObject:v209 forKey:@"microphoneConnectionResponseMessage"];
  }

  playbackSessionMigratePostMessage = self->_playbackSessionMigratePostMessage;
  if (playbackSessionMigratePostMessage)
  {
    v211 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)playbackSessionMigratePostMessage dictionaryRepresentation];
    [v3 setObject:v211 forKey:@"playbackSessionMigratePostMessage"];
  }

  v212 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_replyIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_authenticationToken)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
  }

  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

  if (self->_sendCommandMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendCommandResultMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getStateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setStateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setArtworkMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerHIDDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerHIDDeviceResultMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendHIDEventMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendHIDReportMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendVirtualTouchEventMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_notificationMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_contentItemsChangedNotificationMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_deviceInfoMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_clientUpdatesConfigMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_masterVolumeControlCapabilitiesDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_gameController)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerGameController)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerGameControllerResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_unregisterGameController)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerForGameControllerEvents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_keyboardMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getKeyboardMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_textInputMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVoiceInputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVoiceInputDevicesResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerVoiceInputDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_registerVoiceInputDeviceResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setRecordingStateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendVoiceInputMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackQueueRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_transactionPackets)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_cryptoPairingMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_gameControllerProperties)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_readyStateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_connectionState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendButtonEventMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setHiliteModeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_wakeDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_genericMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendPackedVirtualTouchEventMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sendLyricsEventMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setNowPlayingClientMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setNowPlayingPlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_modifyOutputContextRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeResultMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_volumeDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_removeClientMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_removePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateClientMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateContentItemMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateContentItemArtworkMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updatePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_promptForRouteAuthorizationMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_promptForRouteAuthorizationResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_presentRouteAuthorizationStatusMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeControlCapabilitiesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeControlCapabilitiesResultMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_volumeControlCapabilitiesDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_removeOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_remoteTextInputMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getRemoteTextInputSessionMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setDefaultSupportedCommandsMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionMigrateRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionMigrateResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_playbackSessionMigrateBeginMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionMigrateEndMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateActiveSystemEndpointMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_discoveryModeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_updateEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_removeEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_playerClientPropertiesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_originClientPropertiesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_audioFadeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_audioFadeResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_discoveryUpdateEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_discoveryUpdateOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setListeningModeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_configureConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_createHostedEndpointRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_createHostedEndpointResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_adjustVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeMutedMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_getVolumeMutedResultMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setVolumeMutedMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_volumeMutedDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setConversationDetectionEnabledMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playerClientParticipantsUpdateMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_requestGroupSessionMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_createApplicationConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_applicationConnectionProtocolMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_invalidateApplicationConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_microphoneConnectionRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_microphoneConnectionResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_playbackSessionMigratePostMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[188] = self->_type;
    *(v4 + 864) |= 4u;
  }

  v6 = v4;
  if (self->_replyIdentifier)
  {
    [v4 setReplyIdentifier:?];
    v4 = v6;
  }

  if (self->_authenticationToken)
  {
    [v6 setAuthenticationToken:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[40] = self->_errorCode;
    *(v4 + 864) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_timestamp;
    *(v4 + 864) |= 1u;
  }

  if (self->_sendCommandMessage)
  {
    [v6 setSendCommandMessage:?];
    v4 = v6;
  }

  if (self->_sendCommandResultMessage)
  {
    [v6 setSendCommandResultMessage:?];
    v4 = v6;
  }

  if (self->_getStateMessage)
  {
    [v6 setGetStateMessage:?];
    v4 = v6;
  }

  if (self->_setStateMessage)
  {
    [v6 setSetStateMessage:?];
    v4 = v6;
  }

  if (self->_setArtworkMessage)
  {
    [v6 setSetArtworkMessage:?];
    v4 = v6;
  }

  if (self->_registerHIDDeviceMessage)
  {
    [v6 setRegisterHIDDeviceMessage:?];
    v4 = v6;
  }

  if (self->_registerHIDDeviceResultMessage)
  {
    [v6 setRegisterHIDDeviceResultMessage:?];
    v4 = v6;
  }

  if (self->_sendHIDEventMessage)
  {
    [v6 setSendHIDEventMessage:?];
    v4 = v6;
  }

  if (self->_sendHIDReportMessage)
  {
    [v6 setSendHIDReportMessage:?];
    v4 = v6;
  }

  if (self->_sendVirtualTouchEventMessage)
  {
    [v6 setSendVirtualTouchEventMessage:?];
    v4 = v6;
  }

  if (self->_notificationMessage)
  {
    [v6 setNotificationMessage:?];
    v4 = v6;
  }

  if (self->_contentItemsChangedNotificationMessage)
  {
    [v6 setContentItemsChangedNotificationMessage:?];
    v4 = v6;
  }

  if (self->_deviceInfoMessage)
  {
    [v6 setDeviceInfoMessage:?];
    v4 = v6;
  }

  if (self->_clientUpdatesConfigMessage)
  {
    [v6 setClientUpdatesConfigMessage:?];
    v4 = v6;
  }

  if (self->_masterVolumeControlCapabilitiesDidChangeMessage)
  {
    [v6 setMasterVolumeControlCapabilitiesDidChangeMessage:?];
    v4 = v6;
  }

  if (self->_gameController)
  {
    [v6 setGameController:?];
    v4 = v6;
  }

  if (self->_registerGameController)
  {
    [v6 setRegisterGameController:?];
    v4 = v6;
  }

  if (self->_registerGameControllerResponse)
  {
    [v6 setRegisterGameControllerResponse:?];
    v4 = v6;
  }

  if (self->_unregisterGameController)
  {
    [v6 setUnregisterGameController:?];
    v4 = v6;
  }

  if (self->_registerForGameControllerEvents)
  {
    [v6 setRegisterForGameControllerEvents:?];
    v4 = v6;
  }

  if (self->_keyboardMessage)
  {
    [v6 setKeyboardMessage:?];
    v4 = v6;
  }

  if (self->_getKeyboardMessage)
  {
    [v6 setGetKeyboardMessage:?];
    v4 = v6;
  }

  if (self->_textInputMessage)
  {
    [v6 setTextInputMessage:?];
    v4 = v6;
  }

  if (self->_getVoiceInputDevicesMessage)
  {
    [v6 setGetVoiceInputDevicesMessage:?];
    v4 = v6;
  }

  if (self->_getVoiceInputDevicesResponseMessage)
  {
    [v6 setGetVoiceInputDevicesResponseMessage:?];
    v4 = v6;
  }

  if (self->_registerVoiceInputDeviceMessage)
  {
    [v6 setRegisterVoiceInputDeviceMessage:?];
    v4 = v6;
  }

  if (self->_registerVoiceInputDeviceResponseMessage)
  {
    [v6 setRegisterVoiceInputDeviceResponseMessage:?];
    v4 = v6;
  }

  if (self->_setRecordingStateMessage)
  {
    [v6 setSetRecordingStateMessage:?];
    v4 = v6;
  }

  if (self->_sendVoiceInputMessage)
  {
    [v6 setSendVoiceInputMessage:?];
    v4 = v6;
  }

  if (self->_playbackQueueRequest)
  {
    [v6 setPlaybackQueueRequest:?];
    v4 = v6;
  }

  if (self->_transactionPackets)
  {
    [v6 setTransactionPackets:?];
    v4 = v6;
  }

  if (self->_cryptoPairingMessage)
  {
    [v6 setCryptoPairingMessage:?];
    v4 = v6;
  }

  if (self->_gameControllerProperties)
  {
    [v6 setGameControllerProperties:?];
    v4 = v6;
  }

  if (self->_readyStateMessage)
  {
    [v6 setReadyStateMessage:?];
    v4 = v6;
  }

  if (self->_connectionState)
  {
    [v6 setConnectionState:?];
    v4 = v6;
  }

  if (self->_sendButtonEventMessage)
  {
    [v6 setSendButtonEventMessage:?];
    v4 = v6;
  }

  if (self->_setHiliteModeMessage)
  {
    [v6 setSetHiliteModeMessage:?];
    v4 = v6;
  }

  if (self->_wakeDeviceMessage)
  {
    [v6 setWakeDeviceMessage:?];
    v4 = v6;
  }

  if (self->_genericMessage)
  {
    [v6 setGenericMessage:?];
    v4 = v6;
  }

  if (self->_sendPackedVirtualTouchEventMessage)
  {
    [v6 setSendPackedVirtualTouchEventMessage:?];
    v4 = v6;
  }

  if (self->_sendLyricsEventMessage)
  {
    [v6 setSendLyricsEventMessage:?];
    v4 = v6;
  }

  if (self->_setNowPlayingClientMessage)
  {
    [v6 setSetNowPlayingClientMessage:?];
    v4 = v6;
  }

  if (self->_setNowPlayingPlayerMessage)
  {
    [v6 setSetNowPlayingPlayerMessage:?];
    v4 = v6;
  }

  if (self->_modifyOutputContextRequestMessage)
  {
    [v6 setModifyOutputContextRequestMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeMessage)
  {
    [v6 setGetVolumeMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeResultMessage)
  {
    [v6 setGetVolumeResultMessage:?];
    v4 = v6;
  }

  if (self->_setVolumeMessage)
  {
    [v6 setSetVolumeMessage:?];
    v4 = v6;
  }

  if (self->_volumeDidChangeMessage)
  {
    [v6 setVolumeDidChangeMessage:?];
    v4 = v6;
  }

  if (self->_removeClientMessage)
  {
    [v6 setRemoveClientMessage:?];
    v4 = v6;
  }

  if (self->_removePlayerMessage)
  {
    [v6 setRemovePlayerMessage:?];
    v4 = v6;
  }

  if (self->_updateClientMessage)
  {
    [v6 setUpdateClientMessage:?];
    v4 = v6;
  }

  if (self->_updateContentItemMessage)
  {
    [v6 setUpdateContentItemMessage:?];
    v4 = v6;
  }

  if (self->_updateContentItemArtworkMessage)
  {
    [v6 setUpdateContentItemArtworkMessage:?];
    v4 = v6;
  }

  if (self->_updatePlayerMessage)
  {
    [v6 setUpdatePlayerMessage:?];
    v4 = v6;
  }

  if (self->_promptForRouteAuthorizationMessage)
  {
    [v6 setPromptForRouteAuthorizationMessage:?];
    v4 = v6;
  }

  if (self->_promptForRouteAuthorizationResponseMessage)
  {
    [v6 setPromptForRouteAuthorizationResponseMessage:?];
    v4 = v6;
  }

  if (self->_presentRouteAuthorizationStatusMessage)
  {
    [v6 setPresentRouteAuthorizationStatusMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeControlCapabilitiesMessage)
  {
    [v6 setGetVolumeControlCapabilitiesMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeControlCapabilitiesResultMessage)
  {
    [v6 setGetVolumeControlCapabilitiesResultMessage:?];
    v4 = v6;
  }

  if (self->_volumeControlCapabilitiesDidChangeMessage)
  {
    [v6 setVolumeControlCapabilitiesDidChangeMessage:?];
    v4 = v6;
  }

  if (self->_updateOutputDevicesMessage)
  {
    [v6 setUpdateOutputDevicesMessage:?];
    v4 = v6;
  }

  if (self->_removeOutputDevicesMessage)
  {
    [v6 setRemoveOutputDevicesMessage:?];
    v4 = v6;
  }

  if (self->_remoteTextInputMessage)
  {
    [v6 setRemoteTextInputMessage:?];
    v4 = v6;
  }

  if (self->_getRemoteTextInputSessionMessage)
  {
    [v6 setGetRemoteTextInputSessionMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionRequestMessage)
  {
    [v6 setPlaybackSessionRequestMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionResponseMessage)
  {
    [v6 setPlaybackSessionResponseMessage:?];
    v4 = v6;
  }

  if (self->_setDefaultSupportedCommandsMessage)
  {
    [v6 setSetDefaultSupportedCommandsMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionMigrateRequestMessage)
  {
    [v6 setPlaybackSessionMigrateRequestMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionMigrateResponseMessage)
  {
    [v6 setPlaybackSessionMigrateResponseMessage:?];
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    [v6 setErrorDescription:?];
    v4 = v6;
  }

  if (self->_playbackSessionMigrateBeginMessage)
  {
    [v6 setPlaybackSessionMigrateBeginMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionMigrateEndMessage)
  {
    [v6 setPlaybackSessionMigrateEndMessage:?];
    v4 = v6;
  }

  if (self->_updateActiveSystemEndpointMessage)
  {
    [v6 setUpdateActiveSystemEndpointMessage:?];
    v4 = v6;
  }

  if (self->_discoveryModeMessage)
  {
    [v6 setDiscoveryModeMessage:?];
    v4 = v6;
  }

  if (self->_updateEndpointsMessage)
  {
    [v6 setUpdateEndpointsMessage:?];
    v4 = v6;
  }

  if (self->_removeEndpointsMessage)
  {
    [v6 setRemoveEndpointsMessage:?];
    v4 = v6;
  }

  if (self->_uniqueIdentifier)
  {
    [v6 setUniqueIdentifier:?];
    v4 = v6;
  }

  if (self->_playerClientPropertiesMessage)
  {
    [v6 setPlayerClientPropertiesMessage:?];
    v4 = v6;
  }

  if (self->_originClientPropertiesMessage)
  {
    [v6 setOriginClientPropertiesMessage:?];
    v4 = v6;
  }

  if (self->_audioFadeMessage)
  {
    [v6 setAudioFadeMessage:?];
    v4 = v6;
  }

  if (self->_audioFadeResponseMessage)
  {
    [v6 setAudioFadeResponseMessage:?];
    v4 = v6;
  }

  if (self->_discoveryUpdateEndpointsMessage)
  {
    [v6 setDiscoveryUpdateEndpointsMessage:?];
    v4 = v6;
  }

  if (self->_discoveryUpdateOutputDevicesMessage)
  {
    [v6 setDiscoveryUpdateOutputDevicesMessage:?];
    v4 = v6;
  }

  if (self->_setListeningModeMessage)
  {
    [v6 setSetListeningModeMessage:?];
    v4 = v6;
  }

  if (self->_error)
  {
    [v6 setError:?];
    v4 = v6;
  }

  if (self->_configureConnectionMessage)
  {
    [v6 setConfigureConnectionMessage:?];
    v4 = v6;
  }

  if (self->_createHostedEndpointRequest)
  {
    [v6 setCreateHostedEndpointRequest:?];
    v4 = v6;
  }

  if (self->_createHostedEndpointResponse)
  {
    [v6 setCreateHostedEndpointResponse:?];
    v4 = v6;
  }

  if (self->_adjustVolumeMessage)
  {
    [v6 setAdjustVolumeMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeMutedMessage)
  {
    [v6 setGetVolumeMutedMessage:?];
    v4 = v6;
  }

  if (self->_getVolumeMutedResultMessage)
  {
    [v6 setGetVolumeMutedResultMessage:?];
    v4 = v6;
  }

  if (self->_setVolumeMutedMessage)
  {
    [v6 setSetVolumeMutedMessage:?];
    v4 = v6;
  }

  if (self->_volumeMutedDidChangeMessage)
  {
    [v6 setVolumeMutedDidChangeMessage:?];
    v4 = v6;
  }

  if (self->_setConversationDetectionEnabledMessage)
  {
    [v6 setSetConversationDetectionEnabledMessage:?];
    v4 = v6;
  }

  if (self->_playerClientParticipantsUpdateMessage)
  {
    [v6 setPlayerClientParticipantsUpdateMessage:?];
    v4 = v6;
  }

  if (self->_requestGroupSessionMessage)
  {
    [v6 setRequestGroupSessionMessage:?];
    v4 = v6;
  }

  if (self->_createApplicationConnectionMessage)
  {
    [v6 setCreateApplicationConnectionMessage:?];
    v4 = v6;
  }

  if (self->_applicationConnectionProtocolMessage)
  {
    [v6 setApplicationConnectionProtocolMessage:?];
    v4 = v6;
  }

  if (self->_invalidateApplicationConnectionMessage)
  {
    [v6 setInvalidateApplicationConnectionMessage:?];
    v4 = v6;
  }

  if (self->_microphoneConnectionRequestMessage)
  {
    [v6 setMicrophoneConnectionRequestMessage:?];
    v4 = v6;
  }

  if (self->_microphoneConnectionResponseMessage)
  {
    [v6 setMicrophoneConnectionResponseMessage:?];
    v4 = v6;
  }

  if (self->_playbackSessionMigratePostMessage)
  {
    [v6 setPlaybackSessionMigratePostMessage:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 752) = self->_type;
    *(v5 + 864) |= 4u;
  }

  v7 = [(NSString *)self->_replyIdentifier copyWithZone:a3];
  v8 = *(v6 + 560);
  *(v6 + 560) = v7;

  v9 = [(NSString *)self->_authenticationToken copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 160) = self->_errorCode;
    *(v6 + 864) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_timestamp;
    *(v6 + 864) |= 1u;
  }

  v12 = [(_MRSendCommandMessageProtobuf *)self->_sendCommandMessage copyWithZone:a3];
  v13 = *(v6 + 584);
  *(v6 + 584) = v12;

  v14 = [(_MRSendCommandResultMessageProtobuf *)self->_sendCommandResultMessage copyWithZone:a3];
  v15 = *(v6 + 592);
  *(v6 + 592) = v14;

  v16 = [(_MRGetStateMessageProtobuf *)self->_getStateMessage copyWithZone:a3];
  v17 = *(v6 + 216);
  *(v6 + 216) = v16;

  v18 = [(_MRSetStateMessageProtobuf *)self->_setStateMessage copyWithZone:a3];
  v19 = *(v6 + 712);
  *(v6 + 712) = v18;

  v20 = [(_MRSetArtworkMessageProtobuf *)self->_setArtworkMessage copyWithZone:a3];
  v21 = *(v6 + 648);
  *(v6 + 648) = v20;

  v22 = [(_MRRegisterHIDDeviceMessageProtobuf *)self->_registerHIDDeviceMessage copyWithZone:a3];
  v23 = *(v6 + 488);
  *(v6 + 488) = v22;

  v24 = [(_MRRegisterHIDDeviceResultMessageProtobuf *)self->_registerHIDDeviceResultMessage copyWithZone:a3];
  v25 = *(v6 + 496);
  *(v6 + 496) = v24;

  v26 = [(_MRSendHIDEventMessageProtobuf *)self->_sendHIDEventMessage copyWithZone:a3];
  v27 = *(v6 + 600);
  *(v6 + 600) = v26;

  v28 = [(_MRSendHIDReportMessageProtobuf *)self->_sendHIDReportMessage copyWithZone:a3];
  v29 = *(v6 + 608);
  *(v6 + 608) = v28;

  v30 = [(_MRSendVirtualTouchEventMessageProtobuf *)self->_sendVirtualTouchEventMessage copyWithZone:a3];
  v31 = *(v6 + 632);
  *(v6 + 632) = v30;

  v32 = [(_MRNotificationMessageProtobuf *)self->_notificationMessage copyWithZone:a3];
  v33 = *(v6 + 336);
  *(v6 + 336) = v32;

  v34 = [(_MRPlaybackQueueProtobuf *)self->_contentItemsChangedNotificationMessage copyWithZone:a3];
  v35 = *(v6 + 80);
  *(v6 + 80) = v34;

  v36 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoMessage copyWithZone:a3];
  v37 = *(v6 + 120);
  *(v6 + 120) = v36;

  v38 = [(_MRClientUpdatesConfigurationProtobuf *)self->_clientUpdatesConfigMessage copyWithZone:a3];
  v39 = *(v6 + 56);
  *(v6 + 56) = v38;

  v40 = [(_MRVolumeControlAvailabilityProtobuf *)self->_masterVolumeControlCapabilitiesDidChangeMessage copyWithZone:a3];
  v41 = *(v6 + 304);
  *(v6 + 304) = v40;

  v42 = [(_MRGameControllerMessageProtobuf *)self->_gameController copyWithZone:a3];
  v43 = *(v6 + 176);
  *(v6 + 176) = v42;

  v44 = [(_MRRegisterGameControllerMessageProtobuf *)self->_registerGameController copyWithZone:a3];
  v45 = *(v6 + 472);
  *(v6 + 472) = v44;

  v46 = [(_MRRegisterGameControllerResponseMessageProtobuf *)self->_registerGameControllerResponse copyWithZone:a3];
  v47 = *(v6 + 480);
  *(v6 + 480) = v46;

  v48 = [(_MRUnregisterGameControllerMessageProtobuf *)self->_unregisterGameController copyWithZone:a3];
  v49 = *(v6 + 768);
  *(v6 + 768) = v48;

  v50 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)self->_registerForGameControllerEvents copyWithZone:a3];
  v51 = *(v6 + 464);
  *(v6 + 464) = v50;

  v52 = [(_MRKeyboardMessageProtobuf *)self->_keyboardMessage copyWithZone:a3];
  v53 = *(v6 + 296);
  *(v6 + 296) = v52;

  v54 = [(_MRGetKeyboardSessionProtobuf *)self->_getKeyboardMessage copyWithZone:a3];
  v55 = *(v6 + 200);
  *(v6 + 200) = v54;

  v56 = [(_MRTextInputMessageProtobuf *)self->_textInputMessage copyWithZone:a3];
  v57 = *(v6 + 736);
  *(v6 + 736) = v56;

  v58 = [(_MRGetVoiceInputDevicesMessageProtobuf *)self->_getVoiceInputDevicesMessage copyWithZone:a3];
  v59 = *(v6 + 224);
  *(v6 + 224) = v58;

  v60 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self->_getVoiceInputDevicesResponseMessage copyWithZone:a3];
  v61 = *(v6 + 232);
  *(v6 + 232) = v60;

  v62 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)self->_registerVoiceInputDeviceMessage copyWithZone:a3];
  v63 = *(v6 + 504);
  *(v6 + 504) = v62;

  v64 = [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)self->_registerVoiceInputDeviceResponseMessage copyWithZone:a3];
  v65 = *(v6 + 512);
  *(v6 + 512) = v64;

  v66 = [(_MRSetRecordingStateMessageProtobuf *)self->_setRecordingStateMessage copyWithZone:a3];
  v67 = *(v6 + 704);
  *(v6 + 704) = v66;

  v68 = [(_MRSendVoiceInputMessageProtobuf *)self->_sendVoiceInputMessage copyWithZone:a3];
  v69 = *(v6 + 640);
  *(v6 + 640) = v68;

  v70 = [(_MRPlaybackQueueRequestProtobuf *)self->_playbackQueueRequest copyWithZone:a3];
  v71 = *(v6 + 352);
  *(v6 + 352) = v70;

  v72 = [(_MRTransactionMessageProtobuf *)self->_transactionPackets copyWithZone:a3];
  v73 = *(v6 + 744);
  *(v6 + 744) = v72;

  v74 = [(_MRCryptoPairingMessageProtobuf *)self->_cryptoPairingMessage copyWithZone:a3];
  v75 = *(v6 + 112);
  *(v6 + 112) = v74;

  v76 = [(_MRGameControllerPropertiesMessageProtobuf *)self->_gameControllerProperties copyWithZone:a3];
  v77 = *(v6 + 184);
  *(v6 + 184) = v76;

  v78 = [(_MRSetReadyStateMessageProtobuf *)self->_readyStateMessage copyWithZone:a3];
  v79 = *(v6 + 456);
  *(v6 + 456) = v78;

  v80 = [(_MRSetConnectionStateMessageProtobuf *)self->_connectionState copyWithZone:a3];
  v81 = *(v6 + 72);
  *(v6 + 72) = v80;

  v82 = [(_MRSendButtonEventMessageProtobuf *)self->_sendButtonEventMessage copyWithZone:a3];
  v83 = *(v6 + 576);
  *(v6 + 576) = v82;

  v84 = [(_MRSetHiliteModeMessageProtobuf *)self->_setHiliteModeMessage copyWithZone:a3];
  v85 = *(v6 + 672);
  *(v6 + 672) = v84;

  v86 = [(_MRWakeDeviceMessageProtobuf *)self->_wakeDeviceMessage copyWithZone:a3];
  v87 = *(v6 + 856);
  *(v6 + 856) = v86;

  v88 = [(_MRGenericMessageProtobuf *)self->_genericMessage copyWithZone:a3];
  v89 = *(v6 + 192);
  *(v6 + 192) = v88;

  v90 = [(_MRSendPackedVirtualTouchEventMessageProtobuf *)self->_sendPackedVirtualTouchEventMessage copyWithZone:a3];
  v91 = *(v6 + 624);
  *(v6 + 624) = v90;

  v92 = [(_MRSendLyricsEventMessageProtobuf *)self->_sendLyricsEventMessage copyWithZone:a3];
  v93 = *(v6 + 616);
  *(v6 + 616) = v92;

  v94 = [(_MRSetNowPlayingClientMessageProtobuf *)self->_setNowPlayingClientMessage copyWithZone:a3];
  v95 = *(v6 + 688);
  *(v6 + 688) = v94;

  v96 = [(_MRSetNowPlayingPlayerMessageProtobuf *)self->_setNowPlayingPlayerMessage copyWithZone:a3];
  v97 = *(v6 + 696);
  *(v6 + 696) = v96;

  v98 = [(_MRAVModifyOutputContextRequestProtobuf *)self->_modifyOutputContextRequestMessage copyWithZone:a3];
  v99 = *(v6 + 328);
  *(v6 + 328) = v98;

  v100 = [(_MRGetVolumeMessageProtobuf *)self->_getVolumeMessage copyWithZone:a3];
  v101 = *(v6 + 256);
  *(v6 + 256) = v100;

  v102 = [(_MRGetVolumeResultMessageProtobuf *)self->_getVolumeResultMessage copyWithZone:a3];
  v103 = *(v6 + 280);
  *(v6 + 280) = v102;

  v104 = [(_MRSetVolumeMessageProtobuf *)self->_setVolumeMessage copyWithZone:a3];
  v105 = *(v6 + 720);
  *(v6 + 720) = v104;

  v106 = [(_MRVolumeDidChangeMessageProtobuf *)self->_volumeDidChangeMessage copyWithZone:a3];
  v107 = *(v6 + 840);
  *(v6 + 840) = v106;

  v108 = [(_MRRemoveClientMessageProtobuf *)self->_removeClientMessage copyWithZone:a3];
  v109 = *(v6 + 528);
  *(v6 + 528) = v108;

  v110 = [(_MRRemovePlayerMessageProtobuf *)self->_removePlayerMessage copyWithZone:a3];
  v111 = *(v6 + 552);
  *(v6 + 552) = v110;

  v112 = [(_MRUpdateClientMessageProtobuf *)self->_updateClientMessage copyWithZone:a3];
  v113 = *(v6 + 784);
  *(v6 + 784) = v112;

  v114 = [(_MRUpdateContentItemMessageProtobuf *)self->_updateContentItemMessage copyWithZone:a3];
  v115 = *(v6 + 800);
  *(v6 + 800) = v114;

  v116 = [(_MRUpdateContentItemArtworkMessageProtobuf *)self->_updateContentItemArtworkMessage copyWithZone:a3];
  v117 = *(v6 + 792);
  *(v6 + 792) = v116;

  v118 = [(_MRUpdatePlayerMessageProtobuf *)self->_updatePlayerMessage copyWithZone:a3];
  v119 = *(v6 + 824);
  *(v6 + 824) = v118;

  v120 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)self->_promptForRouteAuthorizationMessage copyWithZone:a3];
  v121 = *(v6 + 440);
  *(v6 + 440) = v120;

  v122 = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)self->_promptForRouteAuthorizationResponseMessage copyWithZone:a3];
  v123 = *(v6 + 448);
  *(v6 + 448) = v122;

  v124 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self->_presentRouteAuthorizationStatusMessage copyWithZone:a3];
  v125 = *(v6 + 432);
  *(v6 + 432) = v124;

  v126 = [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)self->_getVolumeControlCapabilitiesMessage copyWithZone:a3];
  v127 = *(v6 + 240);
  *(v6 + 240) = v126;

  v128 = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)self->_getVolumeControlCapabilitiesResultMessage copyWithZone:a3];
  v129 = *(v6 + 248);
  *(v6 + 248) = v128;

  v130 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self->_volumeControlCapabilitiesDidChangeMessage copyWithZone:a3];
  v131 = *(v6 + 832);
  *(v6 + 832) = v130;

  v132 = [(_MRUpdateOutputDevicesMessageProtobuf *)self->_updateOutputDevicesMessage copyWithZone:a3];
  v133 = *(v6 + 816);
  *(v6 + 816) = v132;

  v134 = [(_MRRemoveOutputDevicesMessageProtobuf *)self->_removeOutputDevicesMessage copyWithZone:a3];
  v135 = *(v6 + 544);
  *(v6 + 544) = v134;

  v136 = [(_MRRemoteTextInputMessageProtobuf *)self->_remoteTextInputMessage copyWithZone:a3];
  v137 = *(v6 + 520);
  *(v6 + 520) = v136;

  v138 = [(_MRGetRemoteTextInputSessionProtobuf *)self->_getRemoteTextInputSessionMessage copyWithZone:a3];
  v139 = *(v6 + 208);
  *(v6 + 208) = v138;

  v140 = [(_MRPlaybackSessionRequestMessageProtobuf *)self->_playbackSessionRequestMessage copyWithZone:a3];
  v141 = *(v6 + 400);
  *(v6 + 400) = v140;

  v142 = [(_MRPlaybackSessionResponseMessageProtobuf *)self->_playbackSessionResponseMessage copyWithZone:a3];
  v143 = *(v6 + 408);
  *(v6 + 408) = v142;

  v144 = [(_MRSetStateMessageProtobuf *)self->_setDefaultSupportedCommandsMessage copyWithZone:a3];
  v145 = *(v6 + 664);
  *(v6 + 664) = v144;

  v146 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self->_playbackSessionMigrateRequestMessage copyWithZone:a3];
  v147 = *(v6 + 384);
  *(v6 + 384) = v146;

  v148 = [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)self->_playbackSessionMigrateResponseMessage copyWithZone:a3];
  v149 = *(v6 + 392);
  *(v6 + 392) = v148;

  v150 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v151 = *(v6 + 168);
  *(v6 + 168) = v150;

  v152 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self->_playbackSessionMigrateBeginMessage copyWithZone:a3];
  v153 = *(v6 + 360);
  *(v6 + 360) = v152;

  v154 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self->_playbackSessionMigrateEndMessage copyWithZone:a3];
  v155 = *(v6 + 368);
  *(v6 + 368) = v154;

  v156 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self->_updateActiveSystemEndpointMessage copyWithZone:a3];
  v157 = *(v6 + 776);
  *(v6 + 776) = v156;

  v158 = [(_MRSetDiscoveryModeProtobufMessage *)self->_discoveryModeMessage copyWithZone:a3];
  v159 = *(v6 + 128);
  *(v6 + 128) = v158;

  v160 = [(_MRUpdateEndpointsMessageProtobuf *)self->_updateEndpointsMessage copyWithZone:a3];
  v161 = *(v6 + 808);
  *(v6 + 808) = v160;

  v162 = [(_MRRemoveEndpointsMessageProtobuf *)self->_removeEndpointsMessage copyWithZone:a3];
  v163 = *(v6 + 536);
  *(v6 + 536) = v162;

  v164 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v165 = *(v6 + 760);
  *(v6 + 760) = v164;

  v166 = [(_MRPlayerClientPropertiesMessageProtobuf *)self->_playerClientPropertiesMessage copyWithZone:a3];
  v167 = *(v6 + 424);
  *(v6 + 424) = v166;

  v168 = [(_MROriginClientPropertiesMessageProtobuf *)self->_originClientPropertiesMessage copyWithZone:a3];
  v169 = *(v6 + 344);
  *(v6 + 344) = v168;

  v170 = [(_MRAudioFadeMessageProtobuf *)self->_audioFadeMessage copyWithZone:a3];
  v171 = *(v6 + 32);
  *(v6 + 32) = v170;

  v172 = [(_MRAudioFadeResponseMessageProtobuf *)self->_audioFadeResponseMessage copyWithZone:a3];
  v173 = *(v6 + 40);
  *(v6 + 40) = v172;

  v174 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self->_discoveryUpdateEndpointsMessage copyWithZone:a3];
  v175 = *(v6 + 136);
  *(v6 + 136) = v174;

  v176 = [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)self->_discoveryUpdateOutputDevicesMessage copyWithZone:a3];
  v177 = *(v6 + 144);
  *(v6 + 144) = v176;

  v178 = [(_MRSetListeningModeMessageProtobuf *)self->_setListeningModeMessage copyWithZone:a3];
  v179 = *(v6 + 680);
  *(v6 + 680) = v178;

  v180 = [(_MRErrorProtobuf *)self->_error copyWithZone:a3];
  v181 = *(v6 + 152);
  *(v6 + 152) = v180;

  v182 = [(_MRConfigureConnectionMessageProtobuf *)self->_configureConnectionMessage copyWithZone:a3];
  v183 = *(v6 + 64);
  *(v6 + 64) = v182;

  v184 = [(_MRCreateHostedEndpointRequestProtobuf *)self->_createHostedEndpointRequest copyWithZone:a3];
  v185 = *(v6 + 96);
  *(v6 + 96) = v184;

  v186 = [(_MRCreateHostedEndpointResponseProtobuf *)self->_createHostedEndpointResponse copyWithZone:a3];
  v187 = *(v6 + 104);
  *(v6 + 104) = v186;

  v188 = [(_MRAdjustVolumeMessageProtobuf *)self->_adjustVolumeMessage copyWithZone:a3];
  v189 = *(v6 + 16);
  *(v6 + 16) = v188;

  v190 = [(_MRGetVolumeMutedMessageProtobuf *)self->_getVolumeMutedMessage copyWithZone:a3];
  v191 = *(v6 + 264);
  *(v6 + 264) = v190;

  v192 = [(_MRGetVolumeMutedResultMessageProtobuf *)self->_getVolumeMutedResultMessage copyWithZone:a3];
  v193 = *(v6 + 272);
  *(v6 + 272) = v192;

  v194 = [(_MRSetVolumeMutedMessageProtobuf *)self->_setVolumeMutedMessage copyWithZone:a3];
  v195 = *(v6 + 728);
  *(v6 + 728) = v194;

  v196 = [(_MRVolumeMutedDidChangeMessageProtobuf *)self->_volumeMutedDidChangeMessage copyWithZone:a3];
  v197 = *(v6 + 848);
  *(v6 + 848) = v196;

  v198 = [(_MRSetConversationDetectionEnabledMessageProtobuf *)self->_setConversationDetectionEnabledMessage copyWithZone:a3];
  v199 = *(v6 + 656);
  *(v6 + 656) = v198;

  v200 = [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)self->_playerClientParticipantsUpdateMessage copyWithZone:a3];
  v201 = *(v6 + 416);
  *(v6 + 416) = v200;

  v202 = [(_MRRequestGroupSessionMessageProtobuf *)self->_requestGroupSessionMessage copyWithZone:a3];
  v203 = *(v6 + 568);
  *(v6 + 568) = v202;

  v204 = [(_MRCreateApplicationConnectionMessageProtobuf *)self->_createApplicationConnectionMessage copyWithZone:a3];
  v205 = *(v6 + 88);
  *(v6 + 88) = v204;

  v206 = [(_MRApplicationConnectionProtocolMessageProtobuf *)self->_applicationConnectionProtocolMessage copyWithZone:a3];
  v207 = *(v6 + 24);
  *(v6 + 24) = v206;

  v208 = [(_MRApplicationConnectionContextProtobuf *)self->_invalidateApplicationConnectionMessage copyWithZone:a3];
  v209 = *(v6 + 288);
  *(v6 + 288) = v208;

  v210 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)self->_microphoneConnectionRequestMessage copyWithZone:a3];
  v211 = *(v6 + 312);
  *(v6 + 312) = v210;

  v212 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)self->_microphoneConnectionResponseMessage copyWithZone:a3];
  v213 = *(v6 + 320);
  *(v6 + 320) = v212;

  v214 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)self->_playbackSessionMigratePostMessage copyWithZone:a3];
  v215 = *(v6 + 376);
  *(v6 + 376) = v214;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_225;
  }

  v5 = *(v4 + 864);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 864) & 4) == 0 || self->_type != *(v4 + 188))
    {
      goto LABEL_225;
    }
  }

  else if ((*(v4 + 864) & 4) != 0)
  {
LABEL_225:
    v111 = 0;
    goto LABEL_226;
  }

  replyIdentifier = self->_replyIdentifier;
  if (replyIdentifier | *(v4 + 70) && ![(NSString *)replyIdentifier isEqual:?])
  {
    goto LABEL_225;
  }

  authenticationToken = self->_authenticationToken;
  if (authenticationToken | *(v4 + 6))
  {
    if (![(NSString *)authenticationToken isEqual:?])
    {
      goto LABEL_225;
    }
  }

  v8 = *(v4 + 864);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 864) & 2) == 0 || self->_errorCode != *(v4 + 40))
    {
      goto LABEL_225;
    }
  }

  else if ((*(v4 + 864) & 2) != 0)
  {
    goto LABEL_225;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 864) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_225;
    }
  }

  else if (*(v4 + 864))
  {
    goto LABEL_225;
  }

  sendCommandMessage = self->_sendCommandMessage;
  if (sendCommandMessage | *(v4 + 73) && ![(_MRSendCommandMessageProtobuf *)sendCommandMessage isEqual:?])
  {
    goto LABEL_225;
  }

  sendCommandResultMessage = self->_sendCommandResultMessage;
  if (sendCommandResultMessage | *(v4 + 74))
  {
    if (![(_MRSendCommandResultMessageProtobuf *)sendCommandResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getStateMessage = self->_getStateMessage;
  if (getStateMessage | *(v4 + 27))
  {
    if (![(_MRGetStateMessageProtobuf *)getStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setStateMessage = self->_setStateMessage;
  if (setStateMessage | *(v4 + 89))
  {
    if (![(_MRSetStateMessageProtobuf *)setStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setArtworkMessage = self->_setArtworkMessage;
  if (setArtworkMessage | *(v4 + 81))
  {
    if (![(_MRSetArtworkMessageProtobuf *)setArtworkMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerHIDDeviceMessage = self->_registerHIDDeviceMessage;
  if (registerHIDDeviceMessage | *(v4 + 61))
  {
    if (![(_MRRegisterHIDDeviceMessageProtobuf *)registerHIDDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerHIDDeviceResultMessage = self->_registerHIDDeviceResultMessage;
  if (registerHIDDeviceResultMessage | *(v4 + 62))
  {
    if (![(_MRRegisterHIDDeviceResultMessageProtobuf *)registerHIDDeviceResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendHIDEventMessage = self->_sendHIDEventMessage;
  if (sendHIDEventMessage | *(v4 + 75))
  {
    if (![(_MRSendHIDEventMessageProtobuf *)sendHIDEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendHIDReportMessage = self->_sendHIDReportMessage;
  if (sendHIDReportMessage | *(v4 + 76))
  {
    if (![(_MRSendHIDReportMessageProtobuf *)sendHIDReportMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendVirtualTouchEventMessage = self->_sendVirtualTouchEventMessage;
  if (sendVirtualTouchEventMessage | *(v4 + 79))
  {
    if (![(_MRSendVirtualTouchEventMessageProtobuf *)sendVirtualTouchEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage | *(v4 + 42))
  {
    if (![(_MRNotificationMessageProtobuf *)notificationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  contentItemsChangedNotificationMessage = self->_contentItemsChangedNotificationMessage;
  if (contentItemsChangedNotificationMessage | *(v4 + 10))
  {
    if (![(_MRPlaybackQueueProtobuf *)contentItemsChangedNotificationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  deviceInfoMessage = self->_deviceInfoMessage;
  if (deviceInfoMessage | *(v4 + 15))
  {
    if (![(_MRDeviceInfoMessageProtobuf *)deviceInfoMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  clientUpdatesConfigMessage = self->_clientUpdatesConfigMessage;
  if (clientUpdatesConfigMessage | *(v4 + 7))
  {
    if (![(_MRClientUpdatesConfigurationProtobuf *)clientUpdatesConfigMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  masterVolumeControlCapabilitiesDidChangeMessage = self->_masterVolumeControlCapabilitiesDidChangeMessage;
  if (masterVolumeControlCapabilitiesDidChangeMessage | *(v4 + 38))
  {
    if (![(_MRVolumeControlAvailabilityProtobuf *)masterVolumeControlCapabilitiesDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  gameController = self->_gameController;
  if (gameController | *(v4 + 22))
  {
    if (![(_MRGameControllerMessageProtobuf *)gameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerGameController = self->_registerGameController;
  if (registerGameController | *(v4 + 59))
  {
    if (![(_MRRegisterGameControllerMessageProtobuf *)registerGameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerGameControllerResponse = self->_registerGameControllerResponse;
  if (registerGameControllerResponse | *(v4 + 60))
  {
    if (![(_MRRegisterGameControllerResponseMessageProtobuf *)registerGameControllerResponse isEqual:?])
    {
      goto LABEL_225;
    }
  }

  unregisterGameController = self->_unregisterGameController;
  if (unregisterGameController | *(v4 + 96))
  {
    if (![(_MRUnregisterGameControllerMessageProtobuf *)unregisterGameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerForGameControllerEvents = self->_registerForGameControllerEvents;
  if (registerForGameControllerEvents | *(v4 + 58))
  {
    if (![(_MRRegisterForGameControllerEventsMessageProtobuf *)registerForGameControllerEvents isEqual:?])
    {
      goto LABEL_225;
    }
  }

  keyboardMessage = self->_keyboardMessage;
  if (keyboardMessage | *(v4 + 37))
  {
    if (![(_MRKeyboardMessageProtobuf *)keyboardMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getKeyboardMessage = self->_getKeyboardMessage;
  if (getKeyboardMessage | *(v4 + 25))
  {
    if (![(_MRGetKeyboardSessionProtobuf *)getKeyboardMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  textInputMessage = self->_textInputMessage;
  if (textInputMessage | *(v4 + 92))
  {
    if (![(_MRTextInputMessageProtobuf *)textInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVoiceInputDevicesMessage = self->_getVoiceInputDevicesMessage;
  if (getVoiceInputDevicesMessage | *(v4 + 28))
  {
    if (![(_MRGetVoiceInputDevicesMessageProtobuf *)getVoiceInputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVoiceInputDevicesResponseMessage = self->_getVoiceInputDevicesResponseMessage;
  if (getVoiceInputDevicesResponseMessage | *(v4 + 29))
  {
    if (![(_MRGetVoiceInputDevicesResponseMessageProtobuf *)getVoiceInputDevicesResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerVoiceInputDeviceMessage = self->_registerVoiceInputDeviceMessage;
  if (registerVoiceInputDeviceMessage | *(v4 + 63))
  {
    if (![(_MRRegisterVoiceInputDeviceMessageProtobuf *)registerVoiceInputDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerVoiceInputDeviceResponseMessage = self->_registerVoiceInputDeviceResponseMessage;
  if (registerVoiceInputDeviceResponseMessage | *(v4 + 64))
  {
    if (![(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)registerVoiceInputDeviceResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setRecordingStateMessage = self->_setRecordingStateMessage;
  if (setRecordingStateMessage | *(v4 + 88))
  {
    if (![(_MRSetRecordingStateMessageProtobuf *)setRecordingStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendVoiceInputMessage = self->_sendVoiceInputMessage;
  if (sendVoiceInputMessage | *(v4 + 80))
  {
    if (![(_MRSendVoiceInputMessageProtobuf *)sendVoiceInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackQueueRequest = self->_playbackQueueRequest;
  if (playbackQueueRequest | *(v4 + 44))
  {
    if (![(_MRPlaybackQueueRequestProtobuf *)playbackQueueRequest isEqual:?])
    {
      goto LABEL_225;
    }
  }

  transactionPackets = self->_transactionPackets;
  if (transactionPackets | *(v4 + 93))
  {
    if (![(_MRTransactionMessageProtobuf *)transactionPackets isEqual:?])
    {
      goto LABEL_225;
    }
  }

  cryptoPairingMessage = self->_cryptoPairingMessage;
  if (cryptoPairingMessage | *(v4 + 14))
  {
    if (![(_MRCryptoPairingMessageProtobuf *)cryptoPairingMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  gameControllerProperties = self->_gameControllerProperties;
  if (gameControllerProperties | *(v4 + 23))
  {
    if (![(_MRGameControllerPropertiesMessageProtobuf *)gameControllerProperties isEqual:?])
    {
      goto LABEL_225;
    }
  }

  readyStateMessage = self->_readyStateMessage;
  if (readyStateMessage | *(v4 + 57))
  {
    if (![(_MRSetReadyStateMessageProtobuf *)readyStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  connectionState = self->_connectionState;
  if (connectionState | *(v4 + 9))
  {
    if (![(_MRSetConnectionStateMessageProtobuf *)connectionState isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendButtonEventMessage = self->_sendButtonEventMessage;
  if (sendButtonEventMessage | *(v4 + 72))
  {
    if (![(_MRSendButtonEventMessageProtobuf *)sendButtonEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setHiliteModeMessage = self->_setHiliteModeMessage;
  if (setHiliteModeMessage | *(v4 + 84))
  {
    if (![(_MRSetHiliteModeMessageProtobuf *)setHiliteModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  wakeDeviceMessage = self->_wakeDeviceMessage;
  if (wakeDeviceMessage | *(v4 + 107))
  {
    if (![(_MRWakeDeviceMessageProtobuf *)wakeDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  genericMessage = self->_genericMessage;
  if (genericMessage | *(v4 + 24))
  {
    if (![(_MRGenericMessageProtobuf *)genericMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendPackedVirtualTouchEventMessage = self->_sendPackedVirtualTouchEventMessage;
  if (sendPackedVirtualTouchEventMessage | *(v4 + 78))
  {
    if (![(_MRSendPackedVirtualTouchEventMessageProtobuf *)sendPackedVirtualTouchEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendLyricsEventMessage = self->_sendLyricsEventMessage;
  if (sendLyricsEventMessage | *(v4 + 77))
  {
    if (![(_MRSendLyricsEventMessageProtobuf *)sendLyricsEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setNowPlayingClientMessage = self->_setNowPlayingClientMessage;
  if (setNowPlayingClientMessage | *(v4 + 86))
  {
    if (![(_MRSetNowPlayingClientMessageProtobuf *)setNowPlayingClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setNowPlayingPlayerMessage = self->_setNowPlayingPlayerMessage;
  if (setNowPlayingPlayerMessage | *(v4 + 87))
  {
    if (![(_MRSetNowPlayingPlayerMessageProtobuf *)setNowPlayingPlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  modifyOutputContextRequestMessage = self->_modifyOutputContextRequestMessage;
  if (modifyOutputContextRequestMessage | *(v4 + 41))
  {
    if (![(_MRAVModifyOutputContextRequestProtobuf *)modifyOutputContextRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMessage = self->_getVolumeMessage;
  if (getVolumeMessage | *(v4 + 32))
  {
    if (![(_MRGetVolumeMessageProtobuf *)getVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeResultMessage = self->_getVolumeResultMessage;
  if (getVolumeResultMessage | *(v4 + 35))
  {
    if (![(_MRGetVolumeResultMessageProtobuf *)getVolumeResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setVolumeMessage = self->_setVolumeMessage;
  if (setVolumeMessage | *(v4 + 90))
  {
    if (![(_MRSetVolumeMessageProtobuf *)setVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeDidChangeMessage = self->_volumeDidChangeMessage;
  if (volumeDidChangeMessage | *(v4 + 105))
  {
    if (![(_MRVolumeDidChangeMessageProtobuf *)volumeDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeClientMessage = self->_removeClientMessage;
  if (removeClientMessage | *(v4 + 66))
  {
    if (![(_MRRemoveClientMessageProtobuf *)removeClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removePlayerMessage = self->_removePlayerMessage;
  if (removePlayerMessage | *(v4 + 69))
  {
    if (![(_MRRemovePlayerMessageProtobuf *)removePlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateClientMessage = self->_updateClientMessage;
  if (updateClientMessage | *(v4 + 98))
  {
    if (![(_MRUpdateClientMessageProtobuf *)updateClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateContentItemMessage = self->_updateContentItemMessage;
  if (updateContentItemMessage | *(v4 + 100))
  {
    if (![(_MRUpdateContentItemMessageProtobuf *)updateContentItemMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateContentItemArtworkMessage = self->_updateContentItemArtworkMessage;
  if (updateContentItemArtworkMessage | *(v4 + 99))
  {
    if (![(_MRUpdateContentItemArtworkMessageProtobuf *)updateContentItemArtworkMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updatePlayerMessage = self->_updatePlayerMessage;
  if (updatePlayerMessage | *(v4 + 103))
  {
    if (![(_MRUpdatePlayerMessageProtobuf *)updatePlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  promptForRouteAuthorizationMessage = self->_promptForRouteAuthorizationMessage;
  if (promptForRouteAuthorizationMessage | *(v4 + 55))
  {
    if (![(_MRPromptForRouteAuthorizationMessageProtobuf *)promptForRouteAuthorizationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  promptForRouteAuthorizationResponseMessage = self->_promptForRouteAuthorizationResponseMessage;
  if (promptForRouteAuthorizationResponseMessage | *(v4 + 56))
  {
    if (![(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)promptForRouteAuthorizationResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  presentRouteAuthorizationStatusMessage = self->_presentRouteAuthorizationStatusMessage;
  if (presentRouteAuthorizationStatusMessage | *(v4 + 54))
  {
    if (![(_MRPresentRouteAuthorizationStatusMessageProtobuf *)presentRouteAuthorizationStatusMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeControlCapabilitiesMessage = self->_getVolumeControlCapabilitiesMessage;
  if (getVolumeControlCapabilitiesMessage | *(v4 + 30))
  {
    if (![(_MRGetVolumeControlCapabilitiesMessageProtobuf *)getVolumeControlCapabilitiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeControlCapabilitiesResultMessage = self->_getVolumeControlCapabilitiesResultMessage;
  if (getVolumeControlCapabilitiesResultMessage | *(v4 + 31))
  {
    if (![(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)getVolumeControlCapabilitiesResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeControlCapabilitiesDidChangeMessage = self->_volumeControlCapabilitiesDidChangeMessage;
  if (volumeControlCapabilitiesDidChangeMessage | *(v4 + 104))
  {
    if (![(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)volumeControlCapabilitiesDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateOutputDevicesMessage = self->_updateOutputDevicesMessage;
  if (updateOutputDevicesMessage | *(v4 + 102))
  {
    if (![(_MRUpdateOutputDevicesMessageProtobuf *)updateOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeOutputDevicesMessage = self->_removeOutputDevicesMessage;
  if (removeOutputDevicesMessage | *(v4 + 68))
  {
    if (![(_MRRemoveOutputDevicesMessageProtobuf *)removeOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  remoteTextInputMessage = self->_remoteTextInputMessage;
  if (remoteTextInputMessage | *(v4 + 65))
  {
    if (![(_MRRemoteTextInputMessageProtobuf *)remoteTextInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getRemoteTextInputSessionMessage = self->_getRemoteTextInputSessionMessage;
  if (getRemoteTextInputSessionMessage | *(v4 + 26))
  {
    if (![(_MRGetRemoteTextInputSessionProtobuf *)getRemoteTextInputSessionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionRequestMessage = self->_playbackSessionRequestMessage;
  if (playbackSessionRequestMessage | *(v4 + 50))
  {
    if (![(_MRPlaybackSessionRequestMessageProtobuf *)playbackSessionRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionResponseMessage = self->_playbackSessionResponseMessage;
  if (playbackSessionResponseMessage | *(v4 + 51))
  {
    if (![(_MRPlaybackSessionResponseMessageProtobuf *)playbackSessionResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setDefaultSupportedCommandsMessage = self->_setDefaultSupportedCommandsMessage;
  if (setDefaultSupportedCommandsMessage | *(v4 + 83))
  {
    if (![(_MRSetStateMessageProtobuf *)setDefaultSupportedCommandsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateRequestMessage = self->_playbackSessionMigrateRequestMessage;
  if (playbackSessionMigrateRequestMessage | *(v4 + 48))
  {
    if (![(_MRPlaybackSessionMigrateRequestMessageProtobuf *)playbackSessionMigrateRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateResponseMessage = self->_playbackSessionMigrateResponseMessage;
  if (playbackSessionMigrateResponseMessage | *(v4 + 49))
  {
    if (![(_MRPlaybackSessionMigrateResponseMessageProtobuf *)playbackSessionMigrateResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 21))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateBeginMessage = self->_playbackSessionMigrateBeginMessage;
  if (playbackSessionMigrateBeginMessage | *(v4 + 45))
  {
    if (![(_MRPlaybackSessionMigrateBeginMessageProtobuf *)playbackSessionMigrateBeginMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateEndMessage = self->_playbackSessionMigrateEndMessage;
  if (playbackSessionMigrateEndMessage | *(v4 + 46))
  {
    if (![(_MRPlaybackSessionMigrateEndMessageProtobuf *)playbackSessionMigrateEndMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateActiveSystemEndpointMessage = self->_updateActiveSystemEndpointMessage;
  if (updateActiveSystemEndpointMessage | *(v4 + 97))
  {
    if (![(_MRUpdateActiveSystemEndpointMessageProtobuf *)updateActiveSystemEndpointMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryModeMessage = self->_discoveryModeMessage;
  if (discoveryModeMessage | *(v4 + 16))
  {
    if (![(_MRSetDiscoveryModeProtobufMessage *)discoveryModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateEndpointsMessage = self->_updateEndpointsMessage;
  if (updateEndpointsMessage | *(v4 + 101))
  {
    if (![(_MRUpdateEndpointsMessageProtobuf *)updateEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeEndpointsMessage = self->_removeEndpointsMessage;
  if (removeEndpointsMessage | *(v4 + 67))
  {
    if (![(_MRRemoveEndpointsMessageProtobuf *)removeEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 95))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playerClientPropertiesMessage = self->_playerClientPropertiesMessage;
  if (playerClientPropertiesMessage | *(v4 + 53))
  {
    if (![(_MRPlayerClientPropertiesMessageProtobuf *)playerClientPropertiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  originClientPropertiesMessage = self->_originClientPropertiesMessage;
  if (originClientPropertiesMessage | *(v4 + 43))
  {
    if (![(_MROriginClientPropertiesMessageProtobuf *)originClientPropertiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  audioFadeMessage = self->_audioFadeMessage;
  if (audioFadeMessage | *(v4 + 4))
  {
    if (![(_MRAudioFadeMessageProtobuf *)audioFadeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  audioFadeResponseMessage = self->_audioFadeResponseMessage;
  if (audioFadeResponseMessage | *(v4 + 5))
  {
    if (![(_MRAudioFadeResponseMessageProtobuf *)audioFadeResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryUpdateEndpointsMessage = self->_discoveryUpdateEndpointsMessage;
  if (discoveryUpdateEndpointsMessage | *(v4 + 17))
  {
    if (![(_MRDiscoveryUpdateEndpointsProtobufMessage *)discoveryUpdateEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryUpdateOutputDevicesMessage = self->_discoveryUpdateOutputDevicesMessage;
  if (discoveryUpdateOutputDevicesMessage | *(v4 + 18))
  {
    if (![(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)discoveryUpdateOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setListeningModeMessage = self->_setListeningModeMessage;
  if (setListeningModeMessage | *(v4 + 85))
  {
    if (![(_MRSetListeningModeMessageProtobuf *)setListeningModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  error = self->_error;
  if (error | *(v4 + 19))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_225;
    }
  }

  configureConnectionMessage = self->_configureConnectionMessage;
  if (configureConnectionMessage | *(v4 + 8))
  {
    if (![(_MRConfigureConnectionMessageProtobuf *)configureConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createHostedEndpointRequest = self->_createHostedEndpointRequest;
  if (createHostedEndpointRequest | *(v4 + 12))
  {
    if (![(_MRCreateHostedEndpointRequestProtobuf *)createHostedEndpointRequest isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createHostedEndpointResponse = self->_createHostedEndpointResponse;
  if (createHostedEndpointResponse | *(v4 + 13))
  {
    if (![(_MRCreateHostedEndpointResponseProtobuf *)createHostedEndpointResponse isEqual:?])
    {
      goto LABEL_225;
    }
  }

  adjustVolumeMessage = self->_adjustVolumeMessage;
  if (adjustVolumeMessage | *(v4 + 2))
  {
    if (![(_MRAdjustVolumeMessageProtobuf *)adjustVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMutedMessage = self->_getVolumeMutedMessage;
  if (getVolumeMutedMessage | *(v4 + 33))
  {
    if (![(_MRGetVolumeMutedMessageProtobuf *)getVolumeMutedMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMutedResultMessage = self->_getVolumeMutedResultMessage;
  if (getVolumeMutedResultMessage | *(v4 + 34))
  {
    if (![(_MRGetVolumeMutedResultMessageProtobuf *)getVolumeMutedResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setVolumeMutedMessage = self->_setVolumeMutedMessage;
  if (setVolumeMutedMessage | *(v4 + 91))
  {
    if (![(_MRSetVolumeMutedMessageProtobuf *)setVolumeMutedMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeMutedDidChangeMessage = self->_volumeMutedDidChangeMessage;
  if (volumeMutedDidChangeMessage | *(v4 + 106))
  {
    if (![(_MRVolumeMutedDidChangeMessageProtobuf *)volumeMutedDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setConversationDetectionEnabledMessage = self->_setConversationDetectionEnabledMessage;
  if (setConversationDetectionEnabledMessage | *(v4 + 82))
  {
    if (![(_MRSetConversationDetectionEnabledMessageProtobuf *)setConversationDetectionEnabledMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playerClientParticipantsUpdateMessage = self->_playerClientParticipantsUpdateMessage;
  if (playerClientParticipantsUpdateMessage | *(v4 + 52))
  {
    if (![(_MRPlayerClientParticipantsUpdateMessageProtobuf *)playerClientParticipantsUpdateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  requestGroupSessionMessage = self->_requestGroupSessionMessage;
  if (requestGroupSessionMessage | *(v4 + 71))
  {
    if (![(_MRRequestGroupSessionMessageProtobuf *)requestGroupSessionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createApplicationConnectionMessage = self->_createApplicationConnectionMessage;
  if (createApplicationConnectionMessage | *(v4 + 11))
  {
    if (![(_MRCreateApplicationConnectionMessageProtobuf *)createApplicationConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  applicationConnectionProtocolMessage = self->_applicationConnectionProtocolMessage;
  if (applicationConnectionProtocolMessage | *(v4 + 3))
  {
    if (![(_MRApplicationConnectionProtocolMessageProtobuf *)applicationConnectionProtocolMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  invalidateApplicationConnectionMessage = self->_invalidateApplicationConnectionMessage;
  if (invalidateApplicationConnectionMessage | *(v4 + 36))
  {
    if (![(_MRApplicationConnectionContextProtobuf *)invalidateApplicationConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  microphoneConnectionRequestMessage = self->_microphoneConnectionRequestMessage;
  if (microphoneConnectionRequestMessage | *(v4 + 39))
  {
    if (![(_MRMicrophoneConnectionRequestMessageProtobuf *)microphoneConnectionRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  microphoneConnectionResponseMessage = self->_microphoneConnectionResponseMessage;
  if (microphoneConnectionResponseMessage | *(v4 + 40))
  {
    if (![(_MRMicrophoneConnectionResponseMessageProtobuf *)microphoneConnectionResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigratePostMessage = self->_playbackSessionMigratePostMessage;
  if (playbackSessionMigratePostMessage | *(v4 + 47))
  {
    v111 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)playbackSessionMigratePostMessage isEqual:?];
  }

  else
  {
    v111 = 1;
  }

LABEL_226:

  return v111;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_replyIdentifier hash];
  v5 = [(NSString *)self->_authenticationToken hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_errorCode;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761u * self->_timestamp;
LABEL_9:
  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(_MRSendCommandMessageProtobuf *)self->_sendCommandMessage hash];
  v10 = v8 ^ v9 ^ [(_MRSendCommandResultMessageProtobuf *)self->_sendCommandResultMessage hash];
  v11 = [(_MRGetStateMessageProtobuf *)self->_getStateMessage hash];
  v12 = v11 ^ [(_MRSetStateMessageProtobuf *)self->_setStateMessage hash];
  v13 = v12 ^ [(_MRSetArtworkMessageProtobuf *)self->_setArtworkMessage hash];
  v14 = v10 ^ v13 ^ [(_MRRegisterHIDDeviceMessageProtobuf *)self->_registerHIDDeviceMessage hash];
  v15 = [(_MRRegisterHIDDeviceResultMessageProtobuf *)self->_registerHIDDeviceResultMessage hash];
  v16 = v15 ^ [(_MRSendHIDEventMessageProtobuf *)self->_sendHIDEventMessage hash];
  v17 = v16 ^ [(_MRSendHIDReportMessageProtobuf *)self->_sendHIDReportMessage hash];
  v18 = v17 ^ [(_MRSendVirtualTouchEventMessageProtobuf *)self->_sendVirtualTouchEventMessage hash];
  v19 = v14 ^ v18 ^ [(_MRNotificationMessageProtobuf *)self->_notificationMessage hash];
  v20 = [(_MRPlaybackQueueProtobuf *)self->_contentItemsChangedNotificationMessage hash];
  v21 = v20 ^ [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoMessage hash];
  v22 = v21 ^ [(_MRClientUpdatesConfigurationProtobuf *)self->_clientUpdatesConfigMessage hash];
  v23 = v22 ^ [(_MRVolumeControlAvailabilityProtobuf *)self->_masterVolumeControlCapabilitiesDidChangeMessage hash];
  v24 = v23 ^ [(_MRGameControllerMessageProtobuf *)self->_gameController hash];
  v25 = v19 ^ v24 ^ [(_MRRegisterGameControllerMessageProtobuf *)self->_registerGameController hash];
  v26 = [(_MRRegisterGameControllerResponseMessageProtobuf *)self->_registerGameControllerResponse hash];
  v27 = v26 ^ [(_MRUnregisterGameControllerMessageProtobuf *)self->_unregisterGameController hash];
  v28 = v27 ^ [(_MRRegisterForGameControllerEventsMessageProtobuf *)self->_registerForGameControllerEvents hash];
  v29 = v28 ^ [(_MRKeyboardMessageProtobuf *)self->_keyboardMessage hash];
  v30 = v29 ^ [(_MRGetKeyboardSessionProtobuf *)self->_getKeyboardMessage hash];
  v31 = v30 ^ [(_MRTextInputMessageProtobuf *)self->_textInputMessage hash];
  v32 = v25 ^ v31 ^ [(_MRGetVoiceInputDevicesMessageProtobuf *)self->_getVoiceInputDevicesMessage hash];
  v33 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self->_getVoiceInputDevicesResponseMessage hash];
  v34 = v33 ^ [(_MRRegisterVoiceInputDeviceMessageProtobuf *)self->_registerVoiceInputDeviceMessage hash];
  v35 = v34 ^ [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)self->_registerVoiceInputDeviceResponseMessage hash];
  v36 = v35 ^ [(_MRSetRecordingStateMessageProtobuf *)self->_setRecordingStateMessage hash];
  v37 = v36 ^ [(_MRSendVoiceInputMessageProtobuf *)self->_sendVoiceInputMessage hash];
  v38 = v37 ^ [(_MRPlaybackQueueRequestProtobuf *)self->_playbackQueueRequest hash];
  v39 = v38 ^ [(_MRTransactionMessageProtobuf *)self->_transactionPackets hash];
  v40 = v32 ^ v39 ^ [(_MRCryptoPairingMessageProtobuf *)self->_cryptoPairingMessage hash];
  v41 = [(_MRGameControllerPropertiesMessageProtobuf *)self->_gameControllerProperties hash];
  v42 = v41 ^ [(_MRSetReadyStateMessageProtobuf *)self->_readyStateMessage hash];
  v43 = v42 ^ [(_MRSetConnectionStateMessageProtobuf *)self->_connectionState hash];
  v44 = v43 ^ [(_MRSendButtonEventMessageProtobuf *)self->_sendButtonEventMessage hash];
  v45 = v44 ^ [(_MRSetHiliteModeMessageProtobuf *)self->_setHiliteModeMessage hash];
  v46 = v45 ^ [(_MRWakeDeviceMessageProtobuf *)self->_wakeDeviceMessage hash];
  v47 = v46 ^ [(_MRGenericMessageProtobuf *)self->_genericMessage hash];
  v48 = v47 ^ [(_MRSendPackedVirtualTouchEventMessageProtobuf *)self->_sendPackedVirtualTouchEventMessage hash];
  v49 = v40 ^ v48 ^ [(_MRSendLyricsEventMessageProtobuf *)self->_sendLyricsEventMessage hash];
  v50 = [(_MRSetNowPlayingClientMessageProtobuf *)self->_setNowPlayingClientMessage hash];
  v51 = v50 ^ [(_MRSetNowPlayingPlayerMessageProtobuf *)self->_setNowPlayingPlayerMessage hash];
  v52 = v51 ^ [(_MRAVModifyOutputContextRequestProtobuf *)self->_modifyOutputContextRequestMessage hash];
  v53 = v52 ^ [(_MRGetVolumeMessageProtobuf *)self->_getVolumeMessage hash];
  v54 = v53 ^ [(_MRGetVolumeResultMessageProtobuf *)self->_getVolumeResultMessage hash];
  v55 = v54 ^ [(_MRSetVolumeMessageProtobuf *)self->_setVolumeMessage hash];
  v56 = v55 ^ [(_MRVolumeDidChangeMessageProtobuf *)self->_volumeDidChangeMessage hash];
  v57 = v56 ^ [(_MRRemoveClientMessageProtobuf *)self->_removeClientMessage hash];
  v58 = v57 ^ [(_MRRemovePlayerMessageProtobuf *)self->_removePlayerMessage hash];
  v59 = v49 ^ v58 ^ [(_MRUpdateClientMessageProtobuf *)self->_updateClientMessage hash];
  v60 = [(_MRUpdateContentItemMessageProtobuf *)self->_updateContentItemMessage hash];
  v61 = v60 ^ [(_MRUpdateContentItemArtworkMessageProtobuf *)self->_updateContentItemArtworkMessage hash];
  v62 = v61 ^ [(_MRUpdatePlayerMessageProtobuf *)self->_updatePlayerMessage hash];
  v63 = v62 ^ [(_MRPromptForRouteAuthorizationMessageProtobuf *)self->_promptForRouteAuthorizationMessage hash];
  v64 = v63 ^ [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)self->_promptForRouteAuthorizationResponseMessage hash];
  v65 = v64 ^ [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self->_presentRouteAuthorizationStatusMessage hash];
  v66 = v65 ^ [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)self->_getVolumeControlCapabilitiesMessage hash];
  v67 = v66 ^ [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)self->_getVolumeControlCapabilitiesResultMessage hash];
  v68 = v67 ^ [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self->_volumeControlCapabilitiesDidChangeMessage hash];
  v69 = v68 ^ [(_MRUpdateOutputDevicesMessageProtobuf *)self->_updateOutputDevicesMessage hash];
  v70 = v59 ^ v69 ^ [(_MRRemoveOutputDevicesMessageProtobuf *)self->_removeOutputDevicesMessage hash];
  v71 = [(_MRRemoteTextInputMessageProtobuf *)self->_remoteTextInputMessage hash];
  v72 = v71 ^ [(_MRGetRemoteTextInputSessionProtobuf *)self->_getRemoteTextInputSessionMessage hash];
  v73 = v72 ^ [(_MRPlaybackSessionRequestMessageProtobuf *)self->_playbackSessionRequestMessage hash];
  v74 = v73 ^ [(_MRPlaybackSessionResponseMessageProtobuf *)self->_playbackSessionResponseMessage hash];
  v75 = v74 ^ [(_MRSetStateMessageProtobuf *)self->_setDefaultSupportedCommandsMessage hash];
  v76 = v75 ^ [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self->_playbackSessionMigrateRequestMessage hash];
  v77 = v76 ^ [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)self->_playbackSessionMigrateResponseMessage hash];
  v78 = v77 ^ [(NSString *)self->_errorDescription hash];
  v79 = v78 ^ [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self->_playbackSessionMigrateBeginMessage hash];
  v80 = v79 ^ [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self->_playbackSessionMigrateEndMessage hash];
  v81 = v80 ^ [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self->_updateActiveSystemEndpointMessage hash];
  v82 = v70 ^ v81 ^ [(_MRSetDiscoveryModeProtobufMessage *)self->_discoveryModeMessage hash];
  v83 = [(_MRUpdateEndpointsMessageProtobuf *)self->_updateEndpointsMessage hash];
  v84 = v83 ^ [(_MRRemoveEndpointsMessageProtobuf *)self->_removeEndpointsMessage hash];
  v85 = v84 ^ [(NSString *)self->_uniqueIdentifier hash];
  v86 = v85 ^ [(_MRPlayerClientPropertiesMessageProtobuf *)self->_playerClientPropertiesMessage hash];
  v87 = v86 ^ [(_MROriginClientPropertiesMessageProtobuf *)self->_originClientPropertiesMessage hash];
  v88 = v87 ^ [(_MRAudioFadeMessageProtobuf *)self->_audioFadeMessage hash];
  v89 = v88 ^ [(_MRAudioFadeResponseMessageProtobuf *)self->_audioFadeResponseMessage hash];
  v90 = v89 ^ [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self->_discoveryUpdateEndpointsMessage hash];
  v91 = v90 ^ [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)self->_discoveryUpdateOutputDevicesMessage hash];
  v92 = v91 ^ [(_MRSetListeningModeMessageProtobuf *)self->_setListeningModeMessage hash];
  v93 = v92 ^ [(_MRErrorProtobuf *)self->_error hash];
  v94 = v93 ^ [(_MRConfigureConnectionMessageProtobuf *)self->_configureConnectionMessage hash];
  v95 = v82 ^ v94 ^ [(_MRCreateHostedEndpointRequestProtobuf *)self->_createHostedEndpointRequest hash];
  v96 = [(_MRCreateHostedEndpointResponseProtobuf *)self->_createHostedEndpointResponse hash];
  v97 = v96 ^ [(_MRAdjustVolumeMessageProtobuf *)self->_adjustVolumeMessage hash];
  v98 = v97 ^ [(_MRGetVolumeMutedMessageProtobuf *)self->_getVolumeMutedMessage hash];
  v99 = v98 ^ [(_MRGetVolumeMutedResultMessageProtobuf *)self->_getVolumeMutedResultMessage hash];
  v100 = v99 ^ [(_MRSetVolumeMutedMessageProtobuf *)self->_setVolumeMutedMessage hash];
  v101 = v100 ^ [(_MRVolumeMutedDidChangeMessageProtobuf *)self->_volumeMutedDidChangeMessage hash];
  v102 = v101 ^ [(_MRSetConversationDetectionEnabledMessageProtobuf *)self->_setConversationDetectionEnabledMessage hash];
  v103 = v102 ^ [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)self->_playerClientParticipantsUpdateMessage hash];
  v104 = v103 ^ [(_MRRequestGroupSessionMessageProtobuf *)self->_requestGroupSessionMessage hash];
  v105 = v104 ^ [(_MRCreateApplicationConnectionMessageProtobuf *)self->_createApplicationConnectionMessage hash];
  v106 = v105 ^ [(_MRApplicationConnectionProtocolMessageProtobuf *)self->_applicationConnectionProtocolMessage hash];
  v107 = v106 ^ [(_MRApplicationConnectionContextProtobuf *)self->_invalidateApplicationConnectionMessage hash];
  v108 = v107 ^ [(_MRMicrophoneConnectionRequestMessageProtobuf *)self->_microphoneConnectionRequestMessage hash];
  v109 = v95 ^ v108 ^ [(_MRMicrophoneConnectionResponseMessageProtobuf *)self->_microphoneConnectionResponseMessage hash];
  return v109 ^ [(_MRPlaybackSessionMigratePostMessageProtobuf *)self->_playbackSessionMigratePostMessage hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[216] & 4) != 0)
  {
    self->_type = v4[188];
    *&self->_has |= 4u;
  }

  v207 = v4;
  if (*(v4 + 70))
  {
    [(_MRMediaRemoteMessageProtobuf *)self setReplyIdentifier:?];
    v5 = v207;
  }

  if (*(v5 + 6))
  {
    [(_MRMediaRemoteMessageProtobuf *)self setAuthenticationToken:?];
    v5 = v207;
  }

  v6 = *(v5 + 864);
  if ((v6 & 2) != 0)
  {
    self->_errorCode = *(v5 + 40);
    *&self->_has |= 2u;
    v6 = *(v5 + 864);
  }

  if (v6)
  {
    self->_timestamp = *(v5 + 1);
    *&self->_has |= 1u;
  }

  sendCommandMessage = self->_sendCommandMessage;
  v8 = *(v5 + 73);
  if (sendCommandMessage)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(_MRSendCommandMessageProtobuf *)sendCommandMessage mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendCommandMessage:?];
  }

  v5 = v207;
LABEL_17:
  sendCommandResultMessage = self->_sendCommandResultMessage;
  v10 = *(v5 + 74);
  if (sendCommandResultMessage)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(_MRSendCommandResultMessageProtobuf *)sendCommandResultMessage mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendCommandResultMessage:?];
  }

  v5 = v207;
LABEL_23:
  getStateMessage = self->_getStateMessage;
  v12 = *(v5 + 27);
  if (getStateMessage)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(_MRGetStateMessageProtobuf *)getStateMessage mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetStateMessage:?];
  }

  v5 = v207;
LABEL_29:
  setStateMessage = self->_setStateMessage;
  v14 = *(v5 + 89);
  if (setStateMessage)
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    [(_MRSetStateMessageProtobuf *)setStateMessage mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetStateMessage:?];
  }

  v5 = v207;
LABEL_35:
  setArtworkMessage = self->_setArtworkMessage;
  v16 = *(v5 + 81);
  if (setArtworkMessage)
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    [(_MRSetArtworkMessageProtobuf *)setArtworkMessage mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetArtworkMessage:?];
  }

  v5 = v207;
LABEL_41:
  registerHIDDeviceMessage = self->_registerHIDDeviceMessage;
  v18 = *(v5 + 61);
  if (registerHIDDeviceMessage)
  {
    if (!v18)
    {
      goto LABEL_47;
    }

    [(_MRRegisterHIDDeviceMessageProtobuf *)registerHIDDeviceMessage mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_47;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterHIDDeviceMessage:?];
  }

  v5 = v207;
LABEL_47:
  registerHIDDeviceResultMessage = self->_registerHIDDeviceResultMessage;
  v20 = *(v5 + 62);
  if (registerHIDDeviceResultMessage)
  {
    if (!v20)
    {
      goto LABEL_53;
    }

    [(_MRRegisterHIDDeviceResultMessageProtobuf *)registerHIDDeviceResultMessage mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_53;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterHIDDeviceResultMessage:?];
  }

  v5 = v207;
LABEL_53:
  sendHIDEventMessage = self->_sendHIDEventMessage;
  v22 = *(v5 + 75);
  if (sendHIDEventMessage)
  {
    if (!v22)
    {
      goto LABEL_59;
    }

    [(_MRSendHIDEventMessageProtobuf *)sendHIDEventMessage mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_59;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendHIDEventMessage:?];
  }

  v5 = v207;
LABEL_59:
  sendHIDReportMessage = self->_sendHIDReportMessage;
  v24 = *(v5 + 76);
  if (sendHIDReportMessage)
  {
    if (!v24)
    {
      goto LABEL_65;
    }

    [(_MRSendHIDReportMessageProtobuf *)sendHIDReportMessage mergeFrom:?];
  }

  else
  {
    if (!v24)
    {
      goto LABEL_65;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendHIDReportMessage:?];
  }

  v5 = v207;
LABEL_65:
  sendVirtualTouchEventMessage = self->_sendVirtualTouchEventMessage;
  v26 = *(v5 + 79);
  if (sendVirtualTouchEventMessage)
  {
    if (!v26)
    {
      goto LABEL_71;
    }

    [(_MRSendVirtualTouchEventMessageProtobuf *)sendVirtualTouchEventMessage mergeFrom:?];
  }

  else
  {
    if (!v26)
    {
      goto LABEL_71;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendVirtualTouchEventMessage:?];
  }

  v5 = v207;
LABEL_71:
  notificationMessage = self->_notificationMessage;
  v28 = *(v5 + 42);
  if (notificationMessage)
  {
    if (!v28)
    {
      goto LABEL_77;
    }

    [(_MRNotificationMessageProtobuf *)notificationMessage mergeFrom:?];
  }

  else
  {
    if (!v28)
    {
      goto LABEL_77;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setNotificationMessage:?];
  }

  v5 = v207;
LABEL_77:
  contentItemsChangedNotificationMessage = self->_contentItemsChangedNotificationMessage;
  v30 = *(v5 + 10);
  if (contentItemsChangedNotificationMessage)
  {
    if (!v30)
    {
      goto LABEL_83;
    }

    [(_MRPlaybackQueueProtobuf *)contentItemsChangedNotificationMessage mergeFrom:?];
  }

  else
  {
    if (!v30)
    {
      goto LABEL_83;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setContentItemsChangedNotificationMessage:?];
  }

  v5 = v207;
LABEL_83:
  deviceInfoMessage = self->_deviceInfoMessage;
  v32 = *(v5 + 15);
  if (deviceInfoMessage)
  {
    if (!v32)
    {
      goto LABEL_89;
    }

    [(_MRDeviceInfoMessageProtobuf *)deviceInfoMessage mergeFrom:?];
  }

  else
  {
    if (!v32)
    {
      goto LABEL_89;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setDeviceInfoMessage:?];
  }

  v5 = v207;
LABEL_89:
  clientUpdatesConfigMessage = self->_clientUpdatesConfigMessage;
  v34 = *(v5 + 7);
  if (clientUpdatesConfigMessage)
  {
    if (!v34)
    {
      goto LABEL_95;
    }

    [(_MRClientUpdatesConfigurationProtobuf *)clientUpdatesConfigMessage mergeFrom:?];
  }

  else
  {
    if (!v34)
    {
      goto LABEL_95;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setClientUpdatesConfigMessage:?];
  }

  v5 = v207;
LABEL_95:
  masterVolumeControlCapabilitiesDidChangeMessage = self->_masterVolumeControlCapabilitiesDidChangeMessage;
  v36 = *(v5 + 38);
  if (masterVolumeControlCapabilitiesDidChangeMessage)
  {
    if (!v36)
    {
      goto LABEL_101;
    }

    [(_MRVolumeControlAvailabilityProtobuf *)masterVolumeControlCapabilitiesDidChangeMessage mergeFrom:?];
  }

  else
  {
    if (!v36)
    {
      goto LABEL_101;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setMasterVolumeControlCapabilitiesDidChangeMessage:?];
  }

  v5 = v207;
LABEL_101:
  gameController = self->_gameController;
  v38 = *(v5 + 22);
  if (gameController)
  {
    if (!v38)
    {
      goto LABEL_107;
    }

    [(_MRGameControllerMessageProtobuf *)gameController mergeFrom:?];
  }

  else
  {
    if (!v38)
    {
      goto LABEL_107;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGameController:?];
  }

  v5 = v207;
LABEL_107:
  registerGameController = self->_registerGameController;
  v40 = *(v5 + 59);
  if (registerGameController)
  {
    if (!v40)
    {
      goto LABEL_113;
    }

    [(_MRRegisterGameControllerMessageProtobuf *)registerGameController mergeFrom:?];
  }

  else
  {
    if (!v40)
    {
      goto LABEL_113;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterGameController:?];
  }

  v5 = v207;
LABEL_113:
  registerGameControllerResponse = self->_registerGameControllerResponse;
  v42 = *(v5 + 60);
  if (registerGameControllerResponse)
  {
    if (!v42)
    {
      goto LABEL_119;
    }

    [(_MRRegisterGameControllerResponseMessageProtobuf *)registerGameControllerResponse mergeFrom:?];
  }

  else
  {
    if (!v42)
    {
      goto LABEL_119;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterGameControllerResponse:?];
  }

  v5 = v207;
LABEL_119:
  unregisterGameController = self->_unregisterGameController;
  v44 = *(v5 + 96);
  if (unregisterGameController)
  {
    if (!v44)
    {
      goto LABEL_125;
    }

    [(_MRUnregisterGameControllerMessageProtobuf *)unregisterGameController mergeFrom:?];
  }

  else
  {
    if (!v44)
    {
      goto LABEL_125;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUnregisterGameController:?];
  }

  v5 = v207;
LABEL_125:
  registerForGameControllerEvents = self->_registerForGameControllerEvents;
  v46 = *(v5 + 58);
  if (registerForGameControllerEvents)
  {
    if (!v46)
    {
      goto LABEL_131;
    }

    [(_MRRegisterForGameControllerEventsMessageProtobuf *)registerForGameControllerEvents mergeFrom:?];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_131;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterForGameControllerEvents:?];
  }

  v5 = v207;
LABEL_131:
  keyboardMessage = self->_keyboardMessage;
  v48 = *(v5 + 37);
  if (keyboardMessage)
  {
    if (!v48)
    {
      goto LABEL_137;
    }

    [(_MRKeyboardMessageProtobuf *)keyboardMessage mergeFrom:?];
  }

  else
  {
    if (!v48)
    {
      goto LABEL_137;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setKeyboardMessage:?];
  }

  v5 = v207;
LABEL_137:
  getKeyboardMessage = self->_getKeyboardMessage;
  v50 = *(v5 + 25);
  if (getKeyboardMessage)
  {
    if (!v50)
    {
      goto LABEL_143;
    }

    [(_MRGetKeyboardSessionProtobuf *)getKeyboardMessage mergeFrom:?];
  }

  else
  {
    if (!v50)
    {
      goto LABEL_143;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetKeyboardMessage:?];
  }

  v5 = v207;
LABEL_143:
  textInputMessage = self->_textInputMessage;
  v52 = *(v5 + 92);
  if (textInputMessage)
  {
    if (!v52)
    {
      goto LABEL_149;
    }

    [(_MRTextInputMessageProtobuf *)textInputMessage mergeFrom:?];
  }

  else
  {
    if (!v52)
    {
      goto LABEL_149;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setTextInputMessage:?];
  }

  v5 = v207;
LABEL_149:
  getVoiceInputDevicesMessage = self->_getVoiceInputDevicesMessage;
  v54 = *(v5 + 28);
  if (getVoiceInputDevicesMessage)
  {
    if (!v54)
    {
      goto LABEL_155;
    }

    [(_MRGetVoiceInputDevicesMessageProtobuf *)getVoiceInputDevicesMessage mergeFrom:?];
  }

  else
  {
    if (!v54)
    {
      goto LABEL_155;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVoiceInputDevicesMessage:?];
  }

  v5 = v207;
LABEL_155:
  getVoiceInputDevicesResponseMessage = self->_getVoiceInputDevicesResponseMessage;
  v56 = *(v5 + 29);
  if (getVoiceInputDevicesResponseMessage)
  {
    if (!v56)
    {
      goto LABEL_161;
    }

    [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)getVoiceInputDevicesResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v56)
    {
      goto LABEL_161;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVoiceInputDevicesResponseMessage:?];
  }

  v5 = v207;
LABEL_161:
  registerVoiceInputDeviceMessage = self->_registerVoiceInputDeviceMessage;
  v58 = *(v5 + 63);
  if (registerVoiceInputDeviceMessage)
  {
    if (!v58)
    {
      goto LABEL_167;
    }

    [(_MRRegisterVoiceInputDeviceMessageProtobuf *)registerVoiceInputDeviceMessage mergeFrom:?];
  }

  else
  {
    if (!v58)
    {
      goto LABEL_167;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterVoiceInputDeviceMessage:?];
  }

  v5 = v207;
LABEL_167:
  registerVoiceInputDeviceResponseMessage = self->_registerVoiceInputDeviceResponseMessage;
  v60 = *(v5 + 64);
  if (registerVoiceInputDeviceResponseMessage)
  {
    if (!v60)
    {
      goto LABEL_173;
    }

    [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)registerVoiceInputDeviceResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v60)
    {
      goto LABEL_173;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRegisterVoiceInputDeviceResponseMessage:?];
  }

  v5 = v207;
LABEL_173:
  setRecordingStateMessage = self->_setRecordingStateMessage;
  v62 = *(v5 + 88);
  if (setRecordingStateMessage)
  {
    if (!v62)
    {
      goto LABEL_179;
    }

    [(_MRSetRecordingStateMessageProtobuf *)setRecordingStateMessage mergeFrom:?];
  }

  else
  {
    if (!v62)
    {
      goto LABEL_179;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetRecordingStateMessage:?];
  }

  v5 = v207;
LABEL_179:
  sendVoiceInputMessage = self->_sendVoiceInputMessage;
  v64 = *(v5 + 80);
  if (sendVoiceInputMessage)
  {
    if (!v64)
    {
      goto LABEL_185;
    }

    [(_MRSendVoiceInputMessageProtobuf *)sendVoiceInputMessage mergeFrom:?];
  }

  else
  {
    if (!v64)
    {
      goto LABEL_185;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendVoiceInputMessage:?];
  }

  v5 = v207;
LABEL_185:
  playbackQueueRequest = self->_playbackQueueRequest;
  v66 = *(v5 + 44);
  if (playbackQueueRequest)
  {
    if (!v66)
    {
      goto LABEL_191;
    }

    [(_MRPlaybackQueueRequestProtobuf *)playbackQueueRequest mergeFrom:?];
  }

  else
  {
    if (!v66)
    {
      goto LABEL_191;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackQueueRequest:?];
  }

  v5 = v207;
LABEL_191:
  transactionPackets = self->_transactionPackets;
  v68 = *(v5 + 93);
  if (transactionPackets)
  {
    if (!v68)
    {
      goto LABEL_197;
    }

    [(_MRTransactionMessageProtobuf *)transactionPackets mergeFrom:?];
  }

  else
  {
    if (!v68)
    {
      goto LABEL_197;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setTransactionPackets:?];
  }

  v5 = v207;
LABEL_197:
  cryptoPairingMessage = self->_cryptoPairingMessage;
  v70 = *(v5 + 14);
  if (cryptoPairingMessage)
  {
    if (!v70)
    {
      goto LABEL_203;
    }

    [(_MRCryptoPairingMessageProtobuf *)cryptoPairingMessage mergeFrom:?];
  }

  else
  {
    if (!v70)
    {
      goto LABEL_203;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setCryptoPairingMessage:?];
  }

  v5 = v207;
LABEL_203:
  gameControllerProperties = self->_gameControllerProperties;
  v72 = *(v5 + 23);
  if (gameControllerProperties)
  {
    if (!v72)
    {
      goto LABEL_209;
    }

    [(_MRGameControllerPropertiesMessageProtobuf *)gameControllerProperties mergeFrom:?];
  }

  else
  {
    if (!v72)
    {
      goto LABEL_209;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGameControllerProperties:?];
  }

  v5 = v207;
LABEL_209:
  readyStateMessage = self->_readyStateMessage;
  v74 = *(v5 + 57);
  if (readyStateMessage)
  {
    if (!v74)
    {
      goto LABEL_215;
    }

    [(_MRSetReadyStateMessageProtobuf *)readyStateMessage mergeFrom:?];
  }

  else
  {
    if (!v74)
    {
      goto LABEL_215;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setReadyStateMessage:?];
  }

  v5 = v207;
LABEL_215:
  connectionState = self->_connectionState;
  v76 = *(v5 + 9);
  if (connectionState)
  {
    if (!v76)
    {
      goto LABEL_221;
    }

    [(_MRSetConnectionStateMessageProtobuf *)connectionState mergeFrom:?];
  }

  else
  {
    if (!v76)
    {
      goto LABEL_221;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setConnectionState:?];
  }

  v5 = v207;
LABEL_221:
  sendButtonEventMessage = self->_sendButtonEventMessage;
  v78 = *(v5 + 72);
  if (sendButtonEventMessage)
  {
    if (!v78)
    {
      goto LABEL_227;
    }

    [(_MRSendButtonEventMessageProtobuf *)sendButtonEventMessage mergeFrom:?];
  }

  else
  {
    if (!v78)
    {
      goto LABEL_227;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendButtonEventMessage:?];
  }

  v5 = v207;
LABEL_227:
  setHiliteModeMessage = self->_setHiliteModeMessage;
  v80 = *(v5 + 84);
  if (setHiliteModeMessage)
  {
    if (!v80)
    {
      goto LABEL_233;
    }

    [(_MRSetHiliteModeMessageProtobuf *)setHiliteModeMessage mergeFrom:?];
  }

  else
  {
    if (!v80)
    {
      goto LABEL_233;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetHiliteModeMessage:?];
  }

  v5 = v207;
LABEL_233:
  wakeDeviceMessage = self->_wakeDeviceMessage;
  v82 = *(v5 + 107);
  if (wakeDeviceMessage)
  {
    if (!v82)
    {
      goto LABEL_239;
    }

    [(_MRWakeDeviceMessageProtobuf *)wakeDeviceMessage mergeFrom:?];
  }

  else
  {
    if (!v82)
    {
      goto LABEL_239;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setWakeDeviceMessage:?];
  }

  v5 = v207;
LABEL_239:
  genericMessage = self->_genericMessage;
  v84 = *(v5 + 24);
  if (genericMessage)
  {
    if (!v84)
    {
      goto LABEL_245;
    }

    [(_MRGenericMessageProtobuf *)genericMessage mergeFrom:?];
  }

  else
  {
    if (!v84)
    {
      goto LABEL_245;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGenericMessage:?];
  }

  v5 = v207;
LABEL_245:
  sendPackedVirtualTouchEventMessage = self->_sendPackedVirtualTouchEventMessage;
  v86 = *(v5 + 78);
  if (sendPackedVirtualTouchEventMessage)
  {
    if (!v86)
    {
      goto LABEL_251;
    }

    [(_MRSendPackedVirtualTouchEventMessageProtobuf *)sendPackedVirtualTouchEventMessage mergeFrom:?];
  }

  else
  {
    if (!v86)
    {
      goto LABEL_251;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendPackedVirtualTouchEventMessage:?];
  }

  v5 = v207;
LABEL_251:
  sendLyricsEventMessage = self->_sendLyricsEventMessage;
  v88 = *(v5 + 77);
  if (sendLyricsEventMessage)
  {
    if (!v88)
    {
      goto LABEL_257;
    }

    [(_MRSendLyricsEventMessageProtobuf *)sendLyricsEventMessage mergeFrom:?];
  }

  else
  {
    if (!v88)
    {
      goto LABEL_257;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSendLyricsEventMessage:?];
  }

  v5 = v207;
LABEL_257:
  setNowPlayingClientMessage = self->_setNowPlayingClientMessage;
  v90 = *(v5 + 86);
  if (setNowPlayingClientMessage)
  {
    if (!v90)
    {
      goto LABEL_263;
    }

    [(_MRSetNowPlayingClientMessageProtobuf *)setNowPlayingClientMessage mergeFrom:?];
  }

  else
  {
    if (!v90)
    {
      goto LABEL_263;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetNowPlayingClientMessage:?];
  }

  v5 = v207;
LABEL_263:
  setNowPlayingPlayerMessage = self->_setNowPlayingPlayerMessage;
  v92 = *(v5 + 87);
  if (setNowPlayingPlayerMessage)
  {
    if (!v92)
    {
      goto LABEL_269;
    }

    [(_MRSetNowPlayingPlayerMessageProtobuf *)setNowPlayingPlayerMessage mergeFrom:?];
  }

  else
  {
    if (!v92)
    {
      goto LABEL_269;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetNowPlayingPlayerMessage:?];
  }

  v5 = v207;
LABEL_269:
  modifyOutputContextRequestMessage = self->_modifyOutputContextRequestMessage;
  v94 = *(v5 + 41);
  if (modifyOutputContextRequestMessage)
  {
    if (!v94)
    {
      goto LABEL_275;
    }

    [(_MRAVModifyOutputContextRequestProtobuf *)modifyOutputContextRequestMessage mergeFrom:?];
  }

  else
  {
    if (!v94)
    {
      goto LABEL_275;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setModifyOutputContextRequestMessage:?];
  }

  v5 = v207;
LABEL_275:
  getVolumeMessage = self->_getVolumeMessage;
  v96 = *(v5 + 32);
  if (getVolumeMessage)
  {
    if (!v96)
    {
      goto LABEL_281;
    }

    [(_MRGetVolumeMessageProtobuf *)getVolumeMessage mergeFrom:?];
  }

  else
  {
    if (!v96)
    {
      goto LABEL_281;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeMessage:?];
  }

  v5 = v207;
LABEL_281:
  getVolumeResultMessage = self->_getVolumeResultMessage;
  v98 = *(v5 + 35);
  if (getVolumeResultMessage)
  {
    if (!v98)
    {
      goto LABEL_287;
    }

    [(_MRGetVolumeResultMessageProtobuf *)getVolumeResultMessage mergeFrom:?];
  }

  else
  {
    if (!v98)
    {
      goto LABEL_287;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeResultMessage:?];
  }

  v5 = v207;
LABEL_287:
  setVolumeMessage = self->_setVolumeMessage;
  v100 = *(v5 + 90);
  if (setVolumeMessage)
  {
    if (!v100)
    {
      goto LABEL_293;
    }

    [(_MRSetVolumeMessageProtobuf *)setVolumeMessage mergeFrom:?];
  }

  else
  {
    if (!v100)
    {
      goto LABEL_293;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetVolumeMessage:?];
  }

  v5 = v207;
LABEL_293:
  volumeDidChangeMessage = self->_volumeDidChangeMessage;
  v102 = *(v5 + 105);
  if (volumeDidChangeMessage)
  {
    if (!v102)
    {
      goto LABEL_299;
    }

    [(_MRVolumeDidChangeMessageProtobuf *)volumeDidChangeMessage mergeFrom:?];
  }

  else
  {
    if (!v102)
    {
      goto LABEL_299;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setVolumeDidChangeMessage:?];
  }

  v5 = v207;
LABEL_299:
  removeClientMessage = self->_removeClientMessage;
  v104 = *(v5 + 66);
  if (removeClientMessage)
  {
    if (!v104)
    {
      goto LABEL_305;
    }

    [(_MRRemoveClientMessageProtobuf *)removeClientMessage mergeFrom:?];
  }

  else
  {
    if (!v104)
    {
      goto LABEL_305;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRemoveClientMessage:?];
  }

  v5 = v207;
LABEL_305:
  removePlayerMessage = self->_removePlayerMessage;
  v106 = *(v5 + 69);
  if (removePlayerMessage)
  {
    if (!v106)
    {
      goto LABEL_311;
    }

    [(_MRRemovePlayerMessageProtobuf *)removePlayerMessage mergeFrom:?];
  }

  else
  {
    if (!v106)
    {
      goto LABEL_311;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRemovePlayerMessage:?];
  }

  v5 = v207;
LABEL_311:
  updateClientMessage = self->_updateClientMessage;
  v108 = *(v5 + 98);
  if (updateClientMessage)
  {
    if (!v108)
    {
      goto LABEL_317;
    }

    [(_MRUpdateClientMessageProtobuf *)updateClientMessage mergeFrom:?];
  }

  else
  {
    if (!v108)
    {
      goto LABEL_317;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateClientMessage:?];
  }

  v5 = v207;
LABEL_317:
  updateContentItemMessage = self->_updateContentItemMessage;
  v110 = *(v5 + 100);
  if (updateContentItemMessage)
  {
    if (!v110)
    {
      goto LABEL_323;
    }

    [(_MRUpdateContentItemMessageProtobuf *)updateContentItemMessage mergeFrom:?];
  }

  else
  {
    if (!v110)
    {
      goto LABEL_323;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateContentItemMessage:?];
  }

  v5 = v207;
LABEL_323:
  updateContentItemArtworkMessage = self->_updateContentItemArtworkMessage;
  v112 = *(v5 + 99);
  if (updateContentItemArtworkMessage)
  {
    if (!v112)
    {
      goto LABEL_329;
    }

    [(_MRUpdateContentItemArtworkMessageProtobuf *)updateContentItemArtworkMessage mergeFrom:?];
  }

  else
  {
    if (!v112)
    {
      goto LABEL_329;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateContentItemArtworkMessage:?];
  }

  v5 = v207;
LABEL_329:
  updatePlayerMessage = self->_updatePlayerMessage;
  v114 = *(v5 + 103);
  if (updatePlayerMessage)
  {
    if (!v114)
    {
      goto LABEL_335;
    }

    [(_MRUpdatePlayerMessageProtobuf *)updatePlayerMessage mergeFrom:?];
  }

  else
  {
    if (!v114)
    {
      goto LABEL_335;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdatePlayerMessage:?];
  }

  v5 = v207;
LABEL_335:
  promptForRouteAuthorizationMessage = self->_promptForRouteAuthorizationMessage;
  v116 = *(v5 + 55);
  if (promptForRouteAuthorizationMessage)
  {
    if (!v116)
    {
      goto LABEL_341;
    }

    [(_MRPromptForRouteAuthorizationMessageProtobuf *)promptForRouteAuthorizationMessage mergeFrom:?];
  }

  else
  {
    if (!v116)
    {
      goto LABEL_341;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPromptForRouteAuthorizationMessage:?];
  }

  v5 = v207;
LABEL_341:
  promptForRouteAuthorizationResponseMessage = self->_promptForRouteAuthorizationResponseMessage;
  v118 = *(v5 + 56);
  if (promptForRouteAuthorizationResponseMessage)
  {
    if (!v118)
    {
      goto LABEL_347;
    }

    [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)promptForRouteAuthorizationResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v118)
    {
      goto LABEL_347;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPromptForRouteAuthorizationResponseMessage:?];
  }

  v5 = v207;
LABEL_347:
  presentRouteAuthorizationStatusMessage = self->_presentRouteAuthorizationStatusMessage;
  v120 = *(v5 + 54);
  if (presentRouteAuthorizationStatusMessage)
  {
    if (!v120)
    {
      goto LABEL_353;
    }

    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)presentRouteAuthorizationStatusMessage mergeFrom:?];
  }

  else
  {
    if (!v120)
    {
      goto LABEL_353;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPresentRouteAuthorizationStatusMessage:?];
  }

  v5 = v207;
LABEL_353:
  getVolumeControlCapabilitiesMessage = self->_getVolumeControlCapabilitiesMessage;
  v122 = *(v5 + 30);
  if (getVolumeControlCapabilitiesMessage)
  {
    if (!v122)
    {
      goto LABEL_359;
    }

    [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)getVolumeControlCapabilitiesMessage mergeFrom:?];
  }

  else
  {
    if (!v122)
    {
      goto LABEL_359;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeControlCapabilitiesMessage:?];
  }

  v5 = v207;
LABEL_359:
  getVolumeControlCapabilitiesResultMessage = self->_getVolumeControlCapabilitiesResultMessage;
  v124 = *(v5 + 31);
  if (getVolumeControlCapabilitiesResultMessage)
  {
    if (!v124)
    {
      goto LABEL_365;
    }

    [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)getVolumeControlCapabilitiesResultMessage mergeFrom:?];
  }

  else
  {
    if (!v124)
    {
      goto LABEL_365;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeControlCapabilitiesResultMessage:?];
  }

  v5 = v207;
LABEL_365:
  volumeControlCapabilitiesDidChangeMessage = self->_volumeControlCapabilitiesDidChangeMessage;
  v126 = *(v5 + 104);
  if (volumeControlCapabilitiesDidChangeMessage)
  {
    if (!v126)
    {
      goto LABEL_371;
    }

    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)volumeControlCapabilitiesDidChangeMessage mergeFrom:?];
  }

  else
  {
    if (!v126)
    {
      goto LABEL_371;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setVolumeControlCapabilitiesDidChangeMessage:?];
  }

  v5 = v207;
LABEL_371:
  updateOutputDevicesMessage = self->_updateOutputDevicesMessage;
  v128 = *(v5 + 102);
  if (updateOutputDevicesMessage)
  {
    if (!v128)
    {
      goto LABEL_377;
    }

    [(_MRUpdateOutputDevicesMessageProtobuf *)updateOutputDevicesMessage mergeFrom:?];
  }

  else
  {
    if (!v128)
    {
      goto LABEL_377;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateOutputDevicesMessage:?];
  }

  v5 = v207;
LABEL_377:
  removeOutputDevicesMessage = self->_removeOutputDevicesMessage;
  v130 = *(v5 + 68);
  if (removeOutputDevicesMessage)
  {
    if (!v130)
    {
      goto LABEL_383;
    }

    [(_MRRemoveOutputDevicesMessageProtobuf *)removeOutputDevicesMessage mergeFrom:?];
  }

  else
  {
    if (!v130)
    {
      goto LABEL_383;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRemoveOutputDevicesMessage:?];
  }

  v5 = v207;
LABEL_383:
  remoteTextInputMessage = self->_remoteTextInputMessage;
  v132 = *(v5 + 65);
  if (remoteTextInputMessage)
  {
    if (!v132)
    {
      goto LABEL_389;
    }

    [(_MRRemoteTextInputMessageProtobuf *)remoteTextInputMessage mergeFrom:?];
  }

  else
  {
    if (!v132)
    {
      goto LABEL_389;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRemoteTextInputMessage:?];
  }

  v5 = v207;
LABEL_389:
  getRemoteTextInputSessionMessage = self->_getRemoteTextInputSessionMessage;
  v134 = *(v5 + 26);
  if (getRemoteTextInputSessionMessage)
  {
    if (!v134)
    {
      goto LABEL_395;
    }

    [(_MRGetRemoteTextInputSessionProtobuf *)getRemoteTextInputSessionMessage mergeFrom:?];
  }

  else
  {
    if (!v134)
    {
      goto LABEL_395;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetRemoteTextInputSessionMessage:?];
  }

  v5 = v207;
LABEL_395:
  playbackSessionRequestMessage = self->_playbackSessionRequestMessage;
  v136 = *(v5 + 50);
  if (playbackSessionRequestMessage)
  {
    if (!v136)
    {
      goto LABEL_401;
    }

    [(_MRPlaybackSessionRequestMessageProtobuf *)playbackSessionRequestMessage mergeFrom:?];
  }

  else
  {
    if (!v136)
    {
      goto LABEL_401;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionRequestMessage:?];
  }

  v5 = v207;
LABEL_401:
  playbackSessionResponseMessage = self->_playbackSessionResponseMessage;
  v138 = *(v5 + 51);
  if (playbackSessionResponseMessage)
  {
    if (!v138)
    {
      goto LABEL_407;
    }

    [(_MRPlaybackSessionResponseMessageProtobuf *)playbackSessionResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v138)
    {
      goto LABEL_407;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionResponseMessage:?];
  }

  v5 = v207;
LABEL_407:
  setDefaultSupportedCommandsMessage = self->_setDefaultSupportedCommandsMessage;
  v140 = *(v5 + 83);
  if (setDefaultSupportedCommandsMessage)
  {
    if (!v140)
    {
      goto LABEL_413;
    }

    [(_MRSetStateMessageProtobuf *)setDefaultSupportedCommandsMessage mergeFrom:?];
  }

  else
  {
    if (!v140)
    {
      goto LABEL_413;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetDefaultSupportedCommandsMessage:?];
  }

  v5 = v207;
LABEL_413:
  playbackSessionMigrateRequestMessage = self->_playbackSessionMigrateRequestMessage;
  v142 = *(v5 + 48);
  if (playbackSessionMigrateRequestMessage)
  {
    if (!v142)
    {
      goto LABEL_419;
    }

    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)playbackSessionMigrateRequestMessage mergeFrom:?];
  }

  else
  {
    if (!v142)
    {
      goto LABEL_419;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionMigrateRequestMessage:?];
  }

  v5 = v207;
LABEL_419:
  playbackSessionMigrateResponseMessage = self->_playbackSessionMigrateResponseMessage;
  v144 = *(v5 + 49);
  if (playbackSessionMigrateResponseMessage)
  {
    if (!v144)
    {
      goto LABEL_425;
    }

    [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)playbackSessionMigrateResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v144)
    {
      goto LABEL_425;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionMigrateResponseMessage:?];
  }

  v5 = v207;
LABEL_425:
  if (*(v5 + 21))
  {
    [(_MRMediaRemoteMessageProtobuf *)self setErrorDescription:?];
    v5 = v207;
  }

  playbackSessionMigrateBeginMessage = self->_playbackSessionMigrateBeginMessage;
  v146 = *(v5 + 45);
  if (playbackSessionMigrateBeginMessage)
  {
    if (!v146)
    {
      goto LABEL_433;
    }

    [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)playbackSessionMigrateBeginMessage mergeFrom:?];
  }

  else
  {
    if (!v146)
    {
      goto LABEL_433;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionMigrateBeginMessage:?];
  }

  v5 = v207;
LABEL_433:
  playbackSessionMigrateEndMessage = self->_playbackSessionMigrateEndMessage;
  v148 = *(v5 + 46);
  if (playbackSessionMigrateEndMessage)
  {
    if (!v148)
    {
      goto LABEL_439;
    }

    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)playbackSessionMigrateEndMessage mergeFrom:?];
  }

  else
  {
    if (!v148)
    {
      goto LABEL_439;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionMigrateEndMessage:?];
  }

  v5 = v207;
LABEL_439:
  updateActiveSystemEndpointMessage = self->_updateActiveSystemEndpointMessage;
  v150 = *(v5 + 97);
  if (updateActiveSystemEndpointMessage)
  {
    if (!v150)
    {
      goto LABEL_445;
    }

    [(_MRUpdateActiveSystemEndpointMessageProtobuf *)updateActiveSystemEndpointMessage mergeFrom:?];
  }

  else
  {
    if (!v150)
    {
      goto LABEL_445;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateActiveSystemEndpointMessage:?];
  }

  v5 = v207;
LABEL_445:
  discoveryModeMessage = self->_discoveryModeMessage;
  v152 = *(v5 + 16);
  if (discoveryModeMessage)
  {
    if (!v152)
    {
      goto LABEL_451;
    }

    [(_MRSetDiscoveryModeProtobufMessage *)discoveryModeMessage mergeFrom:?];
  }

  else
  {
    if (!v152)
    {
      goto LABEL_451;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setDiscoveryModeMessage:?];
  }

  v5 = v207;
LABEL_451:
  updateEndpointsMessage = self->_updateEndpointsMessage;
  v154 = *(v5 + 101);
  if (updateEndpointsMessage)
  {
    if (!v154)
    {
      goto LABEL_457;
    }

    [(_MRUpdateEndpointsMessageProtobuf *)updateEndpointsMessage mergeFrom:?];
  }

  else
  {
    if (!v154)
    {
      goto LABEL_457;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setUpdateEndpointsMessage:?];
  }

  v5 = v207;
LABEL_457:
  removeEndpointsMessage = self->_removeEndpointsMessage;
  v156 = *(v5 + 67);
  if (removeEndpointsMessage)
  {
    if (!v156)
    {
      goto LABEL_463;
    }

    [(_MRRemoveEndpointsMessageProtobuf *)removeEndpointsMessage mergeFrom:?];
  }

  else
  {
    if (!v156)
    {
      goto LABEL_463;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRemoveEndpointsMessage:?];
  }

  v5 = v207;
LABEL_463:
  if (*(v5 + 95))
  {
    [(_MRMediaRemoteMessageProtobuf *)self setUniqueIdentifier:?];
    v5 = v207;
  }

  playerClientPropertiesMessage = self->_playerClientPropertiesMessage;
  v158 = *(v5 + 53);
  if (playerClientPropertiesMessage)
  {
    if (!v158)
    {
      goto LABEL_471;
    }

    [(_MRPlayerClientPropertiesMessageProtobuf *)playerClientPropertiesMessage mergeFrom:?];
  }

  else
  {
    if (!v158)
    {
      goto LABEL_471;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlayerClientPropertiesMessage:?];
  }

  v5 = v207;
LABEL_471:
  originClientPropertiesMessage = self->_originClientPropertiesMessage;
  v160 = *(v5 + 43);
  if (originClientPropertiesMessage)
  {
    if (!v160)
    {
      goto LABEL_477;
    }

    [(_MROriginClientPropertiesMessageProtobuf *)originClientPropertiesMessage mergeFrom:?];
  }

  else
  {
    if (!v160)
    {
      goto LABEL_477;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setOriginClientPropertiesMessage:?];
  }

  v5 = v207;
LABEL_477:
  audioFadeMessage = self->_audioFadeMessage;
  v162 = *(v5 + 4);
  if (audioFadeMessage)
  {
    if (!v162)
    {
      goto LABEL_483;
    }

    [(_MRAudioFadeMessageProtobuf *)audioFadeMessage mergeFrom:?];
  }

  else
  {
    if (!v162)
    {
      goto LABEL_483;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setAudioFadeMessage:?];
  }

  v5 = v207;
LABEL_483:
  audioFadeResponseMessage = self->_audioFadeResponseMessage;
  v164 = *(v5 + 5);
  if (audioFadeResponseMessage)
  {
    if (!v164)
    {
      goto LABEL_489;
    }

    [(_MRAudioFadeResponseMessageProtobuf *)audioFadeResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v164)
    {
      goto LABEL_489;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setAudioFadeResponseMessage:?];
  }

  v5 = v207;
LABEL_489:
  discoveryUpdateEndpointsMessage = self->_discoveryUpdateEndpointsMessage;
  v166 = *(v5 + 17);
  if (discoveryUpdateEndpointsMessage)
  {
    if (!v166)
    {
      goto LABEL_495;
    }

    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)discoveryUpdateEndpointsMessage mergeFrom:?];
  }

  else
  {
    if (!v166)
    {
      goto LABEL_495;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setDiscoveryUpdateEndpointsMessage:?];
  }

  v5 = v207;
LABEL_495:
  discoveryUpdateOutputDevicesMessage = self->_discoveryUpdateOutputDevicesMessage;
  v168 = *(v5 + 18);
  if (discoveryUpdateOutputDevicesMessage)
  {
    if (!v168)
    {
      goto LABEL_501;
    }

    [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)discoveryUpdateOutputDevicesMessage mergeFrom:?];
  }

  else
  {
    if (!v168)
    {
      goto LABEL_501;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setDiscoveryUpdateOutputDevicesMessage:?];
  }

  v5 = v207;
LABEL_501:
  setListeningModeMessage = self->_setListeningModeMessage;
  v170 = *(v5 + 85);
  if (setListeningModeMessage)
  {
    if (!v170)
    {
      goto LABEL_507;
    }

    [(_MRSetListeningModeMessageProtobuf *)setListeningModeMessage mergeFrom:?];
  }

  else
  {
    if (!v170)
    {
      goto LABEL_507;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetListeningModeMessage:?];
  }

  v5 = v207;
LABEL_507:
  error = self->_error;
  v172 = *(v5 + 19);
  if (error)
  {
    if (!v172)
    {
      goto LABEL_513;
    }

    [(_MRErrorProtobuf *)error mergeFrom:?];
  }

  else
  {
    if (!v172)
    {
      goto LABEL_513;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setError:?];
  }

  v5 = v207;
LABEL_513:
  configureConnectionMessage = self->_configureConnectionMessage;
  v174 = *(v5 + 8);
  if (configureConnectionMessage)
  {
    if (!v174)
    {
      goto LABEL_519;
    }

    [(_MRConfigureConnectionMessageProtobuf *)configureConnectionMessage mergeFrom:?];
  }

  else
  {
    if (!v174)
    {
      goto LABEL_519;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setConfigureConnectionMessage:?];
  }

  v5 = v207;
LABEL_519:
  createHostedEndpointRequest = self->_createHostedEndpointRequest;
  v176 = *(v5 + 12);
  if (createHostedEndpointRequest)
  {
    if (!v176)
    {
      goto LABEL_525;
    }

    [(_MRCreateHostedEndpointRequestProtobuf *)createHostedEndpointRequest mergeFrom:?];
  }

  else
  {
    if (!v176)
    {
      goto LABEL_525;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setCreateHostedEndpointRequest:?];
  }

  v5 = v207;
LABEL_525:
  createHostedEndpointResponse = self->_createHostedEndpointResponse;
  v178 = *(v5 + 13);
  if (createHostedEndpointResponse)
  {
    if (!v178)
    {
      goto LABEL_531;
    }

    [(_MRCreateHostedEndpointResponseProtobuf *)createHostedEndpointResponse mergeFrom:?];
  }

  else
  {
    if (!v178)
    {
      goto LABEL_531;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setCreateHostedEndpointResponse:?];
  }

  v5 = v207;
LABEL_531:
  adjustVolumeMessage = self->_adjustVolumeMessage;
  v180 = *(v5 + 2);
  if (adjustVolumeMessage)
  {
    if (!v180)
    {
      goto LABEL_537;
    }

    [(_MRAdjustVolumeMessageProtobuf *)adjustVolumeMessage mergeFrom:?];
  }

  else
  {
    if (!v180)
    {
      goto LABEL_537;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setAdjustVolumeMessage:?];
  }

  v5 = v207;
LABEL_537:
  getVolumeMutedMessage = self->_getVolumeMutedMessage;
  v182 = *(v5 + 33);
  if (getVolumeMutedMessage)
  {
    if (!v182)
    {
      goto LABEL_543;
    }

    [(_MRGetVolumeMutedMessageProtobuf *)getVolumeMutedMessage mergeFrom:?];
  }

  else
  {
    if (!v182)
    {
      goto LABEL_543;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeMutedMessage:?];
  }

  v5 = v207;
LABEL_543:
  getVolumeMutedResultMessage = self->_getVolumeMutedResultMessage;
  v184 = *(v5 + 34);
  if (getVolumeMutedResultMessage)
  {
    if (!v184)
    {
      goto LABEL_549;
    }

    [(_MRGetVolumeMutedResultMessageProtobuf *)getVolumeMutedResultMessage mergeFrom:?];
  }

  else
  {
    if (!v184)
    {
      goto LABEL_549;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setGetVolumeMutedResultMessage:?];
  }

  v5 = v207;
LABEL_549:
  setVolumeMutedMessage = self->_setVolumeMutedMessage;
  v186 = *(v5 + 91);
  if (setVolumeMutedMessage)
  {
    if (!v186)
    {
      goto LABEL_555;
    }

    [(_MRSetVolumeMutedMessageProtobuf *)setVolumeMutedMessage mergeFrom:?];
  }

  else
  {
    if (!v186)
    {
      goto LABEL_555;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetVolumeMutedMessage:?];
  }

  v5 = v207;
LABEL_555:
  volumeMutedDidChangeMessage = self->_volumeMutedDidChangeMessage;
  v188 = *(v5 + 106);
  if (volumeMutedDidChangeMessage)
  {
    if (!v188)
    {
      goto LABEL_561;
    }

    [(_MRVolumeMutedDidChangeMessageProtobuf *)volumeMutedDidChangeMessage mergeFrom:?];
  }

  else
  {
    if (!v188)
    {
      goto LABEL_561;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setVolumeMutedDidChangeMessage:?];
  }

  v5 = v207;
LABEL_561:
  setConversationDetectionEnabledMessage = self->_setConversationDetectionEnabledMessage;
  v190 = *(v5 + 82);
  if (setConversationDetectionEnabledMessage)
  {
    if (!v190)
    {
      goto LABEL_567;
    }

    [(_MRSetConversationDetectionEnabledMessageProtobuf *)setConversationDetectionEnabledMessage mergeFrom:?];
  }

  else
  {
    if (!v190)
    {
      goto LABEL_567;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setSetConversationDetectionEnabledMessage:?];
  }

  v5 = v207;
LABEL_567:
  playerClientParticipantsUpdateMessage = self->_playerClientParticipantsUpdateMessage;
  v192 = *(v5 + 52);
  if (playerClientParticipantsUpdateMessage)
  {
    if (!v192)
    {
      goto LABEL_573;
    }

    [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)playerClientParticipantsUpdateMessage mergeFrom:?];
  }

  else
  {
    if (!v192)
    {
      goto LABEL_573;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlayerClientParticipantsUpdateMessage:?];
  }

  v5 = v207;
LABEL_573:
  requestGroupSessionMessage = self->_requestGroupSessionMessage;
  v194 = *(v5 + 71);
  if (requestGroupSessionMessage)
  {
    if (!v194)
    {
      goto LABEL_579;
    }

    [(_MRRequestGroupSessionMessageProtobuf *)requestGroupSessionMessage mergeFrom:?];
  }

  else
  {
    if (!v194)
    {
      goto LABEL_579;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setRequestGroupSessionMessage:?];
  }

  v5 = v207;
LABEL_579:
  createApplicationConnectionMessage = self->_createApplicationConnectionMessage;
  v196 = *(v5 + 11);
  if (createApplicationConnectionMessage)
  {
    if (!v196)
    {
      goto LABEL_585;
    }

    [(_MRCreateApplicationConnectionMessageProtobuf *)createApplicationConnectionMessage mergeFrom:?];
  }

  else
  {
    if (!v196)
    {
      goto LABEL_585;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setCreateApplicationConnectionMessage:?];
  }

  v5 = v207;
LABEL_585:
  applicationConnectionProtocolMessage = self->_applicationConnectionProtocolMessage;
  v198 = *(v5 + 3);
  if (applicationConnectionProtocolMessage)
  {
    if (!v198)
    {
      goto LABEL_591;
    }

    [(_MRApplicationConnectionProtocolMessageProtobuf *)applicationConnectionProtocolMessage mergeFrom:?];
  }

  else
  {
    if (!v198)
    {
      goto LABEL_591;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setApplicationConnectionProtocolMessage:?];
  }

  v5 = v207;
LABEL_591:
  invalidateApplicationConnectionMessage = self->_invalidateApplicationConnectionMessage;
  v200 = *(v5 + 36);
  if (invalidateApplicationConnectionMessage)
  {
    if (!v200)
    {
      goto LABEL_597;
    }

    [(_MRApplicationConnectionContextProtobuf *)invalidateApplicationConnectionMessage mergeFrom:?];
  }

  else
  {
    if (!v200)
    {
      goto LABEL_597;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setInvalidateApplicationConnectionMessage:?];
  }

  v5 = v207;
LABEL_597:
  microphoneConnectionRequestMessage = self->_microphoneConnectionRequestMessage;
  v202 = *(v5 + 39);
  if (microphoneConnectionRequestMessage)
  {
    if (!v202)
    {
      goto LABEL_603;
    }

    [(_MRMicrophoneConnectionRequestMessageProtobuf *)microphoneConnectionRequestMessage mergeFrom:?];
  }

  else
  {
    if (!v202)
    {
      goto LABEL_603;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setMicrophoneConnectionRequestMessage:?];
  }

  v5 = v207;
LABEL_603:
  microphoneConnectionResponseMessage = self->_microphoneConnectionResponseMessage;
  v204 = *(v5 + 40);
  if (microphoneConnectionResponseMessage)
  {
    if (!v204)
    {
      goto LABEL_609;
    }

    [(_MRMicrophoneConnectionResponseMessageProtobuf *)microphoneConnectionResponseMessage mergeFrom:?];
  }

  else
  {
    if (!v204)
    {
      goto LABEL_609;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setMicrophoneConnectionResponseMessage:?];
  }

  v5 = v207;
LABEL_609:
  playbackSessionMigratePostMessage = self->_playbackSessionMigratePostMessage;
  v206 = *(v5 + 47);
  if (playbackSessionMigratePostMessage)
  {
    if (!v206)
    {
      goto LABEL_615;
    }

    [(_MRPlaybackSessionMigratePostMessageProtobuf *)playbackSessionMigratePostMessage mergeFrom:?];
  }

  else
  {
    if (!v206)
    {
      goto LABEL_615;
    }

    [(_MRMediaRemoteMessageProtobuf *)self setPlaybackSessionMigratePostMessage:?];
  }

  v5 = v207;
LABEL_615:
}

@end