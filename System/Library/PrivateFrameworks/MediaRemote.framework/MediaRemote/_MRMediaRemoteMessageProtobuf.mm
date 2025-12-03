@interface _MRMediaRemoteMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SendCommand"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SendCommandResult"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GetState"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SetState"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SetArtwork"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"RegisterHIDDevice"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"RegisterHIDDeviceResult"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SendHIDEvent"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"SendHIDReport"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"SendVirtualTouchEvent"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"Notification"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"DeviceInfo"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"ClientUpdatesConfiguration"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"LegacyVolumeControlCapabilitiesDidChange"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"GameController"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"RegisterGameController"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"RegisterGameControllerResponse"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"UnregisterGameController"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"RegisterForGameControllerEvents"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"Keyboard"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"GetKeyboardSession"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"TextInput"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"GetVoiceInputDevices"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"GetVoiceInputDevicesResponse"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"RegisterVoiceInputDevice"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"RegisterVoiceInputDeviceResponse"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"SetVoiceInputRecordingState"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"SendVoiceInput"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"PlaybackQueueRequest"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"Transaction"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"CryptoPairing"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"GameControllerProperties"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"SetReadyState"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"DeviceInfoUpdate"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"SetConnectionState"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"SendButtonEvent"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"SetHiliteMode"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"WakeDevice"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"Generic"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"SendPackedVirtualTouchEvent"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"SendLyricsEventMessage"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"SetNowPlayingClient"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"SetNowPlayingPlayer"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"ModifyOutputContextRequest"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"GetVolume"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"GetVolumeResult"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"SetVolume"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"VolumeDidChange"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"RemoveClient"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"RemovePlayer"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"UpdateClient"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"UpdateContentItems"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"UpdateContentItemArtwork"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"UpdatePlayer"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"PromptForRouteAuthorization"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"PromptForRouteAuthorizationResponse"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"PresentRouteAuthorizationStatus"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"GetVolumeControlCapabilities"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"GetVolumeControlCapabilitiesResult"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"VolumeControlCapabilitiesDidChange"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"UpdateOutputDevices"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"RemoveOutputDevices"])
  {
    v4 = 66;
  }

  else if ([typeCopy isEqualToString:@"RemoteTextInput"])
  {
    v4 = 67;
  }

  else if ([typeCopy isEqualToString:@"GetRemoteTextInputSession"])
  {
    v4 = 68;
  }

  else if ([typeCopy isEqualToString:@"RemoveFromParentGroup"])
  {
    v4 = 69;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionRequest"])
  {
    v4 = 70;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionResponse"])
  {
    v4 = 71;
  }

  else if ([typeCopy isEqualToString:@"SetDefaultSupportedCommands"])
  {
    v4 = 72;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionMigrateRequest"])
  {
    v4 = 73;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionMigrateResponse"])
  {
    v4 = 74;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionMigrateBegin"])
  {
    v4 = 75;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionMigrateEnd"])
  {
    v4 = 76;
  }

  else if ([typeCopy isEqualToString:@"UpdateActiveSystemEndpoint"])
  {
    v4 = 77;
  }

  else if ([typeCopy isEqualToString:@"PlaybackSessionMigratePost"])
  {
    v4 = 78;
  }

  else if ([typeCopy isEqualToString:@"SetDiscoveryMode"])
  {
    v4 = 101;
  }

  else if ([typeCopy isEqualToString:@"UpdateEndpoints"])
  {
    v4 = 102;
  }

  else if ([typeCopy isEqualToString:@"RemoveEndpoints"])
  {
    v4 = 103;
  }

  else if ([typeCopy isEqualToString:@"SetPlayerClientProperties"])
  {
    v4 = 104;
  }

  else if ([typeCopy isEqualToString:@"SetOriginClientProperties"])
  {
    v4 = 105;
  }

  else if ([typeCopy isEqualToString:@"AudioFade"])
  {
    v4 = 106;
  }

  else if ([typeCopy isEqualToString:@"AudioFadeResponse"])
  {
    v4 = 107;
  }

  else if ([typeCopy isEqualToString:@"DiscoveryUpdateEndpoints"])
  {
    v4 = 108;
  }

  else if ([typeCopy isEqualToString:@"DiscoveryUpdateOutputDevices"])
  {
    v4 = 109;
  }

  else if ([typeCopy isEqualToString:@"SetListeningMode"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"ConfigureConnection"])
  {
    v4 = 120;
  }

  else if ([typeCopy isEqualToString:@"CreatedHostedEndpointRequest"])
  {
    v4 = 121;
  }

  else if ([typeCopy isEqualToString:@"CreatedHostedEndpointResponse"])
  {
    v4 = 122;
  }

  else if ([typeCopy isEqualToString:@"AdjustVolume"])
  {
    v4 = 125;
  }

  else if ([typeCopy isEqualToString:@"GetVolumeMuted"])
  {
    v4 = 126;
  }

  else if ([typeCopy isEqualToString:@"GetVolumeMutedResult"])
  {
    v4 = 127;
  }

  else if ([typeCopy isEqualToString:@"SetVolumeMuted"])
  {
    v4 = 128;
  }

  else if ([typeCopy isEqualToString:@"VolumeMutedDidChange"])
  {
    v4 = 129;
  }

  else if ([typeCopy isEqualToString:@"SetConversationDetectionEnabled"])
  {
    v4 = 130;
  }

  else if ([typeCopy isEqualToString:@"PlayerClientParticipantsUpdate"])
  {
    v4 = 131;
  }

  else if ([typeCopy isEqualToString:@"RequestGroupSession"])
  {
    v4 = 132;
  }

  else if ([typeCopy isEqualToString:@"ConfigureConnectionService"])
  {
    v4 = 133;
  }

  else if ([typeCopy isEqualToString:@"CreateApplicationConnection"])
  {
    v4 = 134;
  }

  else if ([typeCopy isEqualToString:@"ApplicationConnectionProtocolMessage"])
  {
    v4 = 135;
  }

  else if ([typeCopy isEqualToString:@"InvalidateApplicationConnection"])
  {
    v4 = 136;
  }

  else if ([typeCopy isEqualToString:@"MicrophoneConnectionRequest"])
  {
    v4 = 137;
  }

  else if ([typeCopy isEqualToString:@"MicrophoneConnectionResponse"])
  {
    v4 = 138;
  }

  else if ([typeCopy isEqualToString:@"LastMessageType"])
  {
    v4 = 139;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
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
  dictionaryRepresentation = [(_MRMediaRemoteMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v4 forKey:@"type"];
  }

  replyIdentifier = self->_replyIdentifier;
  if (replyIdentifier)
  {
    [dictionary setObject:replyIdentifier forKey:@"replyIdentifier"];
  }

  authenticationToken = self->_authenticationToken;
  if (authenticationToken)
  {
    [dictionary setObject:authenticationToken forKey:@"authenticationToken"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [dictionary setObject:v8 forKey:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  sendCommandMessage = self->_sendCommandMessage;
  if (sendCommandMessage)
  {
    dictionaryRepresentation = [(_MRSendCommandMessageProtobuf *)sendCommandMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sendCommandMessage"];
  }

  sendCommandResultMessage = self->_sendCommandResultMessage;
  if (sendCommandResultMessage)
  {
    dictionaryRepresentation2 = [(_MRSendCommandResultMessageProtobuf *)sendCommandResultMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sendCommandResultMessage"];
  }

  setStateMessage = self->_setStateMessage;
  if (setStateMessage)
  {
    dictionaryRepresentation3 = [(_MRSetStateMessageProtobuf *)setStateMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"setStateMessage"];
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage)
  {
    dictionaryRepresentation4 = [(_MRNotificationMessageProtobuf *)notificationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"notificationMessage"];
  }

  contentItemsChangedNotificationMessage = self->_contentItemsChangedNotificationMessage;
  if (contentItemsChangedNotificationMessage)
  {
    dictionaryRepresentation5 = [(_MRPlaybackQueueProtobuf *)contentItemsChangedNotificationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"contentItemsChangedNotificationMessage"];
  }

  deviceInfoMessage = self->_deviceInfoMessage;
  if (deviceInfoMessage)
  {
    dictionaryRepresentation6 = [(_MRDeviceInfoMessageProtobuf *)deviceInfoMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"deviceInfoMessage"];
  }

  clientUpdatesConfigMessage = self->_clientUpdatesConfigMessage;
  if (clientUpdatesConfigMessage)
  {
    dictionaryRepresentation7 = [(_MRClientUpdatesConfigurationProtobuf *)clientUpdatesConfigMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"clientUpdatesConfigMessage"];
  }

  playbackQueueRequest = self->_playbackQueueRequest;
  if (playbackQueueRequest)
  {
    dictionaryRepresentation8 = [(_MRPlaybackQueueRequestProtobuf *)playbackQueueRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"playbackQueueRequest"];
  }

  connectionState = self->_connectionState;
  if (connectionState)
  {
    dictionaryRepresentation9 = [(_MRSetConnectionStateMessageProtobuf *)connectionState dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"connectionState"];
  }

  getVolumeMessage = self->_getVolumeMessage;
  if (getVolumeMessage)
  {
    dictionaryRepresentation10 = [(_MRGetVolumeMessageProtobuf *)getVolumeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"getVolumeMessage"];
  }

  getVolumeResultMessage = self->_getVolumeResultMessage;
  if (getVolumeResultMessage)
  {
    dictionaryRepresentation11 = [(_MRGetVolumeResultMessageProtobuf *)getVolumeResultMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation11 forKey:@"getVolumeResultMessage"];
  }

  setVolumeMessage = self->_setVolumeMessage;
  if (setVolumeMessage)
  {
    dictionaryRepresentation12 = [(_MRSetVolumeMessageProtobuf *)setVolumeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation12 forKey:@"setVolumeMessage"];
  }

  volumeDidChangeMessage = self->_volumeDidChangeMessage;
  if (volumeDidChangeMessage)
  {
    dictionaryRepresentation13 = [(_MRVolumeDidChangeMessageProtobuf *)volumeDidChangeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation13 forKey:@"volumeDidChangeMessage"];
  }

  updateContentItemMessage = self->_updateContentItemMessage;
  if (updateContentItemMessage)
  {
    dictionaryRepresentation14 = [(_MRUpdateContentItemMessageProtobuf *)updateContentItemMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation14 forKey:@"updateContentItemMessage"];
  }

  setDefaultSupportedCommandsMessage = self->_setDefaultSupportedCommandsMessage;
  if (setDefaultSupportedCommandsMessage)
  {
    dictionaryRepresentation15 = [(_MRSetStateMessageProtobuf *)setDefaultSupportedCommandsMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation15 forKey:@"setDefaultSupportedCommandsMessage"];
  }

  getStateMessage = self->_getStateMessage;
  if (getStateMessage)
  {
    dictionaryRepresentation16 = [(_MRGetStateMessageProtobuf *)getStateMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation16 forKey:@"getStateMessage"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation17 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation17 forKey:@"error"];
  }

  setArtworkMessage = self->_setArtworkMessage;
  if (setArtworkMessage)
  {
    dictionaryRepresentation18 = [(_MRSetArtworkMessageProtobuf *)setArtworkMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation18 forKey:@"setArtworkMessage"];
  }

  registerHIDDeviceMessage = self->_registerHIDDeviceMessage;
  if (registerHIDDeviceMessage)
  {
    dictionaryRepresentation19 = [(_MRRegisterHIDDeviceMessageProtobuf *)registerHIDDeviceMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation19 forKey:@"registerHIDDeviceMessage"];
  }

  registerHIDDeviceResultMessage = self->_registerHIDDeviceResultMessage;
  if (registerHIDDeviceResultMessage)
  {
    dictionaryRepresentation20 = [(_MRRegisterHIDDeviceResultMessageProtobuf *)registerHIDDeviceResultMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation20 forKey:@"registerHIDDeviceResultMessage"];
  }

  sendHIDEventMessage = self->_sendHIDEventMessage;
  if (sendHIDEventMessage)
  {
    dictionaryRepresentation21 = [(_MRSendHIDEventMessageProtobuf *)sendHIDEventMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation21 forKey:@"sendHIDEventMessage"];
  }

  sendHIDReportMessage = self->_sendHIDReportMessage;
  if (sendHIDReportMessage)
  {
    dictionaryRepresentation22 = [(_MRSendHIDReportMessageProtobuf *)sendHIDReportMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation22 forKey:@"sendHIDReportMessage"];
  }

  sendVirtualTouchEventMessage = self->_sendVirtualTouchEventMessage;
  if (sendVirtualTouchEventMessage)
  {
    dictionaryRepresentation23 = [(_MRSendVirtualTouchEventMessageProtobuf *)sendVirtualTouchEventMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation23 forKey:@"sendVirtualTouchEventMessage"];
  }

  masterVolumeControlCapabilitiesDidChangeMessage = self->_masterVolumeControlCapabilitiesDidChangeMessage;
  if (masterVolumeControlCapabilitiesDidChangeMessage)
  {
    dictionaryRepresentation24 = [(_MRVolumeControlAvailabilityProtobuf *)masterVolumeControlCapabilitiesDidChangeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation24 forKey:@"masterVolumeControlCapabilitiesDidChangeMessage"];
  }

  gameController = self->_gameController;
  if (gameController)
  {
    dictionaryRepresentation25 = [(_MRGameControllerMessageProtobuf *)gameController dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation25 forKey:@"gameController"];
  }

  registerGameController = self->_registerGameController;
  if (registerGameController)
  {
    dictionaryRepresentation26 = [(_MRRegisterGameControllerMessageProtobuf *)registerGameController dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation26 forKey:@"registerGameController"];
  }

  registerGameControllerResponse = self->_registerGameControllerResponse;
  if (registerGameControllerResponse)
  {
    dictionaryRepresentation27 = [(_MRRegisterGameControllerResponseMessageProtobuf *)registerGameControllerResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation27 forKey:@"registerGameControllerResponse"];
  }

  unregisterGameController = self->_unregisterGameController;
  if (unregisterGameController)
  {
    dictionaryRepresentation28 = [(_MRUnregisterGameControllerMessageProtobuf *)unregisterGameController dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation28 forKey:@"unregisterGameController"];
  }

  registerForGameControllerEvents = self->_registerForGameControllerEvents;
  if (registerForGameControllerEvents)
  {
    dictionaryRepresentation29 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)registerForGameControllerEvents dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation29 forKey:@"registerForGameControllerEvents"];
  }

  keyboardMessage = self->_keyboardMessage;
  if (keyboardMessage)
  {
    dictionaryRepresentation30 = [(_MRKeyboardMessageProtobuf *)keyboardMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation30 forKey:@"keyboardMessage"];
  }

  getKeyboardMessage = self->_getKeyboardMessage;
  if (getKeyboardMessage)
  {
    dictionaryRepresentation31 = [(_MRGetKeyboardSessionProtobuf *)getKeyboardMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation31 forKey:@"getKeyboardMessage"];
  }

  textInputMessage = self->_textInputMessage;
  if (textInputMessage)
  {
    dictionaryRepresentation32 = [(_MRTextInputMessageProtobuf *)textInputMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation32 forKey:@"textInputMessage"];
  }

  getVoiceInputDevicesMessage = self->_getVoiceInputDevicesMessage;
  if (getVoiceInputDevicesMessage)
  {
    dictionaryRepresentation33 = [(_MRGetVoiceInputDevicesMessageProtobuf *)getVoiceInputDevicesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation33 forKey:@"getVoiceInputDevicesMessage"];
  }

  getVoiceInputDevicesResponseMessage = self->_getVoiceInputDevicesResponseMessage;
  if (getVoiceInputDevicesResponseMessage)
  {
    dictionaryRepresentation34 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)getVoiceInputDevicesResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation34 forKey:@"getVoiceInputDevicesResponseMessage"];
  }

  registerVoiceInputDeviceMessage = self->_registerVoiceInputDeviceMessage;
  if (registerVoiceInputDeviceMessage)
  {
    dictionaryRepresentation35 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)registerVoiceInputDeviceMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation35 forKey:@"registerVoiceInputDeviceMessage"];
  }

  registerVoiceInputDeviceResponseMessage = self->_registerVoiceInputDeviceResponseMessage;
  if (registerVoiceInputDeviceResponseMessage)
  {
    dictionaryRepresentation36 = [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)registerVoiceInputDeviceResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation36 forKey:@"registerVoiceInputDeviceResponseMessage"];
  }

  setRecordingStateMessage = self->_setRecordingStateMessage;
  if (setRecordingStateMessage)
  {
    dictionaryRepresentation37 = [(_MRSetRecordingStateMessageProtobuf *)setRecordingStateMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation37 forKey:@"setRecordingStateMessage"];
  }

  sendVoiceInputMessage = self->_sendVoiceInputMessage;
  if (sendVoiceInputMessage)
  {
    dictionaryRepresentation38 = [(_MRSendVoiceInputMessageProtobuf *)sendVoiceInputMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation38 forKey:@"sendVoiceInputMessage"];
  }

  transactionPackets = self->_transactionPackets;
  if (transactionPackets)
  {
    dictionaryRepresentation39 = [(_MRTransactionMessageProtobuf *)transactionPackets dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation39 forKey:@"transactionPackets"];
  }

  cryptoPairingMessage = self->_cryptoPairingMessage;
  if (cryptoPairingMessage)
  {
    dictionaryRepresentation40 = [(_MRCryptoPairingMessageProtobuf *)cryptoPairingMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation40 forKey:@"cryptoPairingMessage"];
  }

  gameControllerProperties = self->_gameControllerProperties;
  if (gameControllerProperties)
  {
    dictionaryRepresentation41 = [(_MRGameControllerPropertiesMessageProtobuf *)gameControllerProperties dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation41 forKey:@"gameControllerProperties"];
  }

  readyStateMessage = self->_readyStateMessage;
  if (readyStateMessage)
  {
    dictionaryRepresentation42 = [(_MRSetReadyStateMessageProtobuf *)readyStateMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation42 forKey:@"readyStateMessage"];
  }

  sendButtonEventMessage = self->_sendButtonEventMessage;
  if (sendButtonEventMessage)
  {
    dictionaryRepresentation43 = [(_MRSendButtonEventMessageProtobuf *)sendButtonEventMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation43 forKey:@"sendButtonEventMessage"];
  }

  setHiliteModeMessage = self->_setHiliteModeMessage;
  if (setHiliteModeMessage)
  {
    dictionaryRepresentation44 = [(_MRSetHiliteModeMessageProtobuf *)setHiliteModeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation44 forKey:@"setHiliteModeMessage"];
  }

  wakeDeviceMessage = self->_wakeDeviceMessage;
  if (wakeDeviceMessage)
  {
    dictionaryRepresentation45 = [(_MRWakeDeviceMessageProtobuf *)wakeDeviceMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation45 forKey:@"wakeDeviceMessage"];
  }

  genericMessage = self->_genericMessage;
  if (genericMessage)
  {
    dictionaryRepresentation46 = [(_MRGenericMessageProtobuf *)genericMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation46 forKey:@"genericMessage"];
  }

  sendPackedVirtualTouchEventMessage = self->_sendPackedVirtualTouchEventMessage;
  if (sendPackedVirtualTouchEventMessage)
  {
    dictionaryRepresentation47 = [(_MRSendPackedVirtualTouchEventMessageProtobuf *)sendPackedVirtualTouchEventMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation47 forKey:@"sendPackedVirtualTouchEventMessage"];
  }

  sendLyricsEventMessage = self->_sendLyricsEventMessage;
  if (sendLyricsEventMessage)
  {
    dictionaryRepresentation48 = [(_MRSendLyricsEventMessageProtobuf *)sendLyricsEventMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation48 forKey:@"sendLyricsEventMessage"];
  }

  setNowPlayingClientMessage = self->_setNowPlayingClientMessage;
  if (setNowPlayingClientMessage)
  {
    dictionaryRepresentation49 = [(_MRSetNowPlayingClientMessageProtobuf *)setNowPlayingClientMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation49 forKey:@"setNowPlayingClientMessage"];
  }

  setNowPlayingPlayerMessage = self->_setNowPlayingPlayerMessage;
  if (setNowPlayingPlayerMessage)
  {
    dictionaryRepresentation50 = [(_MRSetNowPlayingPlayerMessageProtobuf *)setNowPlayingPlayerMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation50 forKey:@"setNowPlayingPlayerMessage"];
  }

  modifyOutputContextRequestMessage = self->_modifyOutputContextRequestMessage;
  if (modifyOutputContextRequestMessage)
  {
    dictionaryRepresentation51 = [(_MRAVModifyOutputContextRequestProtobuf *)modifyOutputContextRequestMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation51 forKey:@"modifyOutputContextRequestMessage"];
  }

  removeClientMessage = self->_removeClientMessage;
  if (removeClientMessage)
  {
    dictionaryRepresentation52 = [(_MRRemoveClientMessageProtobuf *)removeClientMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation52 forKey:@"removeClientMessage"];
  }

  removePlayerMessage = self->_removePlayerMessage;
  if (removePlayerMessage)
  {
    dictionaryRepresentation53 = [(_MRRemovePlayerMessageProtobuf *)removePlayerMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation53 forKey:@"removePlayerMessage"];
  }

  updateClientMessage = self->_updateClientMessage;
  if (updateClientMessage)
  {
    dictionaryRepresentation54 = [(_MRUpdateClientMessageProtobuf *)updateClientMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation54 forKey:@"updateClientMessage"];
  }

  updateContentItemArtworkMessage = self->_updateContentItemArtworkMessage;
  if (updateContentItemArtworkMessage)
  {
    dictionaryRepresentation55 = [(_MRUpdateContentItemArtworkMessageProtobuf *)updateContentItemArtworkMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation55 forKey:@"updateContentItemArtworkMessage"];
  }

  updatePlayerMessage = self->_updatePlayerMessage;
  if (updatePlayerMessage)
  {
    dictionaryRepresentation56 = [(_MRUpdatePlayerMessageProtobuf *)updatePlayerMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation56 forKey:@"updatePlayerMessage"];
  }

  promptForRouteAuthorizationMessage = self->_promptForRouteAuthorizationMessage;
  if (promptForRouteAuthorizationMessage)
  {
    dictionaryRepresentation57 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)promptForRouteAuthorizationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation57 forKey:@"promptForRouteAuthorizationMessage"];
  }

  promptForRouteAuthorizationResponseMessage = self->_promptForRouteAuthorizationResponseMessage;
  if (promptForRouteAuthorizationResponseMessage)
  {
    dictionaryRepresentation58 = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)promptForRouteAuthorizationResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation58 forKey:@"promptForRouteAuthorizationResponseMessage"];
  }

  presentRouteAuthorizationStatusMessage = self->_presentRouteAuthorizationStatusMessage;
  if (presentRouteAuthorizationStatusMessage)
  {
    dictionaryRepresentation59 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)presentRouteAuthorizationStatusMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation59 forKey:@"presentRouteAuthorizationStatusMessage"];
  }

  getVolumeControlCapabilitiesMessage = self->_getVolumeControlCapabilitiesMessage;
  if (getVolumeControlCapabilitiesMessage)
  {
    dictionaryRepresentation60 = [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)getVolumeControlCapabilitiesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation60 forKey:@"getVolumeControlCapabilitiesMessage"];
  }

  getVolumeControlCapabilitiesResultMessage = self->_getVolumeControlCapabilitiesResultMessage;
  if (getVolumeControlCapabilitiesResultMessage)
  {
    dictionaryRepresentation61 = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)getVolumeControlCapabilitiesResultMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation61 forKey:@"getVolumeControlCapabilitiesResultMessage"];
  }

  volumeControlCapabilitiesDidChangeMessage = self->_volumeControlCapabilitiesDidChangeMessage;
  if (volumeControlCapabilitiesDidChangeMessage)
  {
    dictionaryRepresentation62 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)volumeControlCapabilitiesDidChangeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation62 forKey:@"volumeControlCapabilitiesDidChangeMessage"];
  }

  updateOutputDevicesMessage = self->_updateOutputDevicesMessage;
  if (updateOutputDevicesMessage)
  {
    dictionaryRepresentation63 = [(_MRUpdateOutputDevicesMessageProtobuf *)updateOutputDevicesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation63 forKey:@"updateOutputDevicesMessage"];
  }

  removeOutputDevicesMessage = self->_removeOutputDevicesMessage;
  if (removeOutputDevicesMessage)
  {
    dictionaryRepresentation64 = [(_MRRemoveOutputDevicesMessageProtobuf *)removeOutputDevicesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation64 forKey:@"removeOutputDevicesMessage"];
  }

  remoteTextInputMessage = self->_remoteTextInputMessage;
  if (remoteTextInputMessage)
  {
    dictionaryRepresentation65 = [(_MRRemoteTextInputMessageProtobuf *)remoteTextInputMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation65 forKey:@"remoteTextInputMessage"];
  }

  getRemoteTextInputSessionMessage = self->_getRemoteTextInputSessionMessage;
  if (getRemoteTextInputSessionMessage)
  {
    dictionaryRepresentation66 = [(_MRGetRemoteTextInputSessionProtobuf *)getRemoteTextInputSessionMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation66 forKey:@"getRemoteTextInputSessionMessage"];
  }

  playbackSessionRequestMessage = self->_playbackSessionRequestMessage;
  if (playbackSessionRequestMessage)
  {
    dictionaryRepresentation67 = [(_MRPlaybackSessionRequestMessageProtobuf *)playbackSessionRequestMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation67 forKey:@"playbackSessionRequestMessage"];
  }

  playbackSessionResponseMessage = self->_playbackSessionResponseMessage;
  if (playbackSessionResponseMessage)
  {
    dictionaryRepresentation68 = [(_MRPlaybackSessionResponseMessageProtobuf *)playbackSessionResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation68 forKey:@"playbackSessionResponseMessage"];
  }

  playbackSessionMigrateRequestMessage = self->_playbackSessionMigrateRequestMessage;
  if (playbackSessionMigrateRequestMessage)
  {
    dictionaryRepresentation69 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)playbackSessionMigrateRequestMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation69 forKey:@"playbackSessionMigrateRequestMessage"];
  }

  playbackSessionMigrateResponseMessage = self->_playbackSessionMigrateResponseMessage;
  if (playbackSessionMigrateResponseMessage)
  {
    dictionaryRepresentation70 = [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)playbackSessionMigrateResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation70 forKey:@"playbackSessionMigrateResponseMessage"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  playbackSessionMigrateBeginMessage = self->_playbackSessionMigrateBeginMessage;
  if (playbackSessionMigrateBeginMessage)
  {
    dictionaryRepresentation71 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)playbackSessionMigrateBeginMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation71 forKey:@"playbackSessionMigrateBeginMessage"];
  }

  playbackSessionMigrateEndMessage = self->_playbackSessionMigrateEndMessage;
  if (playbackSessionMigrateEndMessage)
  {
    dictionaryRepresentation72 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)playbackSessionMigrateEndMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation72 forKey:@"playbackSessionMigrateEndMessage"];
  }

  updateActiveSystemEndpointMessage = self->_updateActiveSystemEndpointMessage;
  if (updateActiveSystemEndpointMessage)
  {
    dictionaryRepresentation73 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)updateActiveSystemEndpointMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation73 forKey:@"updateActiveSystemEndpointMessage"];
  }

  discoveryModeMessage = self->_discoveryModeMessage;
  if (discoveryModeMessage)
  {
    dictionaryRepresentation74 = [(_MRSetDiscoveryModeProtobufMessage *)discoveryModeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation74 forKey:@"discoveryModeMessage"];
  }

  updateEndpointsMessage = self->_updateEndpointsMessage;
  if (updateEndpointsMessage)
  {
    dictionaryRepresentation75 = [(_MRUpdateEndpointsMessageProtobuf *)updateEndpointsMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation75 forKey:@"updateEndpointsMessage"];
  }

  removeEndpointsMessage = self->_removeEndpointsMessage;
  if (removeEndpointsMessage)
  {
    dictionaryRepresentation76 = [(_MRRemoveEndpointsMessageProtobuf *)removeEndpointsMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation76 forKey:@"removeEndpointsMessage"];
  }

  playerClientPropertiesMessage = self->_playerClientPropertiesMessage;
  if (playerClientPropertiesMessage)
  {
    dictionaryRepresentation77 = [(_MRPlayerClientPropertiesMessageProtobuf *)playerClientPropertiesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation77 forKey:@"playerClientPropertiesMessage"];
  }

  originClientPropertiesMessage = self->_originClientPropertiesMessage;
  if (originClientPropertiesMessage)
  {
    dictionaryRepresentation78 = [(_MROriginClientPropertiesMessageProtobuf *)originClientPropertiesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation78 forKey:@"originClientPropertiesMessage"];
  }

  audioFadeMessage = self->_audioFadeMessage;
  if (audioFadeMessage)
  {
    dictionaryRepresentation79 = [(_MRAudioFadeMessageProtobuf *)audioFadeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation79 forKey:@"audioFadeMessage"];
  }

  audioFadeResponseMessage = self->_audioFadeResponseMessage;
  if (audioFadeResponseMessage)
  {
    dictionaryRepresentation80 = [(_MRAudioFadeResponseMessageProtobuf *)audioFadeResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation80 forKey:@"audioFadeResponseMessage"];
  }

  discoveryUpdateEndpointsMessage = self->_discoveryUpdateEndpointsMessage;
  if (discoveryUpdateEndpointsMessage)
  {
    dictionaryRepresentation81 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)discoveryUpdateEndpointsMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation81 forKey:@"discoveryUpdateEndpointsMessage"];
  }

  discoveryUpdateOutputDevicesMessage = self->_discoveryUpdateOutputDevicesMessage;
  if (discoveryUpdateOutputDevicesMessage)
  {
    dictionaryRepresentation82 = [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)discoveryUpdateOutputDevicesMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation82 forKey:@"discoveryUpdateOutputDevicesMessage"];
  }

  setListeningModeMessage = self->_setListeningModeMessage;
  if (setListeningModeMessage)
  {
    dictionaryRepresentation83 = [(_MRSetListeningModeMessageProtobuf *)setListeningModeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation83 forKey:@"setListeningModeMessage"];
  }

  configureConnectionMessage = self->_configureConnectionMessage;
  if (configureConnectionMessage)
  {
    dictionaryRepresentation84 = [(_MRConfigureConnectionMessageProtobuf *)configureConnectionMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation84 forKey:@"configureConnectionMessage"];
  }

  createHostedEndpointRequest = self->_createHostedEndpointRequest;
  if (createHostedEndpointRequest)
  {
    dictionaryRepresentation85 = [(_MRCreateHostedEndpointRequestProtobuf *)createHostedEndpointRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation85 forKey:@"createHostedEndpointRequest"];
  }

  createHostedEndpointResponse = self->_createHostedEndpointResponse;
  if (createHostedEndpointResponse)
  {
    dictionaryRepresentation86 = [(_MRCreateHostedEndpointResponseProtobuf *)createHostedEndpointResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation86 forKey:@"createHostedEndpointResponse"];
  }

  adjustVolumeMessage = self->_adjustVolumeMessage;
  if (adjustVolumeMessage)
  {
    dictionaryRepresentation87 = [(_MRAdjustVolumeMessageProtobuf *)adjustVolumeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation87 forKey:@"adjustVolumeMessage"];
  }

  getVolumeMutedMessage = self->_getVolumeMutedMessage;
  if (getVolumeMutedMessage)
  {
    dictionaryRepresentation88 = [(_MRGetVolumeMutedMessageProtobuf *)getVolumeMutedMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation88 forKey:@"getVolumeMutedMessage"];
  }

  getVolumeMutedResultMessage = self->_getVolumeMutedResultMessage;
  if (getVolumeMutedResultMessage)
  {
    dictionaryRepresentation89 = [(_MRGetVolumeMutedResultMessageProtobuf *)getVolumeMutedResultMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation89 forKey:@"getVolumeMutedResultMessage"];
  }

  setVolumeMutedMessage = self->_setVolumeMutedMessage;
  if (setVolumeMutedMessage)
  {
    dictionaryRepresentation90 = [(_MRSetVolumeMutedMessageProtobuf *)setVolumeMutedMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation90 forKey:@"setVolumeMutedMessage"];
  }

  volumeMutedDidChangeMessage = self->_volumeMutedDidChangeMessage;
  if (volumeMutedDidChangeMessage)
  {
    dictionaryRepresentation91 = [(_MRVolumeMutedDidChangeMessageProtobuf *)volumeMutedDidChangeMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation91 forKey:@"volumeMutedDidChangeMessage"];
  }

  setConversationDetectionEnabledMessage = self->_setConversationDetectionEnabledMessage;
  if (setConversationDetectionEnabledMessage)
  {
    dictionaryRepresentation92 = [(_MRSetConversationDetectionEnabledMessageProtobuf *)setConversationDetectionEnabledMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation92 forKey:@"setConversationDetectionEnabledMessage"];
  }

  playerClientParticipantsUpdateMessage = self->_playerClientParticipantsUpdateMessage;
  if (playerClientParticipantsUpdateMessage)
  {
    dictionaryRepresentation93 = [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)playerClientParticipantsUpdateMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation93 forKey:@"playerClientParticipantsUpdateMessage"];
  }

  requestGroupSessionMessage = self->_requestGroupSessionMessage;
  if (requestGroupSessionMessage)
  {
    dictionaryRepresentation94 = [(_MRRequestGroupSessionMessageProtobuf *)requestGroupSessionMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation94 forKey:@"requestGroupSessionMessage"];
  }

  createApplicationConnectionMessage = self->_createApplicationConnectionMessage;
  if (createApplicationConnectionMessage)
  {
    dictionaryRepresentation95 = [(_MRCreateApplicationConnectionMessageProtobuf *)createApplicationConnectionMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation95 forKey:@"createApplicationConnectionMessage"];
  }

  applicationConnectionProtocolMessage = self->_applicationConnectionProtocolMessage;
  if (applicationConnectionProtocolMessage)
  {
    dictionaryRepresentation96 = [(_MRApplicationConnectionProtocolMessageProtobuf *)applicationConnectionProtocolMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation96 forKey:@"applicationConnectionProtocolMessage"];
  }

  invalidateApplicationConnectionMessage = self->_invalidateApplicationConnectionMessage;
  if (invalidateApplicationConnectionMessage)
  {
    dictionaryRepresentation97 = [(_MRApplicationConnectionContextProtobuf *)invalidateApplicationConnectionMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation97 forKey:@"InvalidateApplicationConnectionMessage"];
  }

  microphoneConnectionRequestMessage = self->_microphoneConnectionRequestMessage;
  if (microphoneConnectionRequestMessage)
  {
    dictionaryRepresentation98 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)microphoneConnectionRequestMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation98 forKey:@"microphoneConnectionRequestMessage"];
  }

  microphoneConnectionResponseMessage = self->_microphoneConnectionResponseMessage;
  if (microphoneConnectionResponseMessage)
  {
    dictionaryRepresentation99 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)microphoneConnectionResponseMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation99 forKey:@"microphoneConnectionResponseMessage"];
  }

  playbackSessionMigratePostMessage = self->_playbackSessionMigratePostMessage;
  if (playbackSessionMigratePostMessage)
  {
    dictionaryRepresentation100 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)playbackSessionMigratePostMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation100 forKey:@"playbackSessionMigratePostMessage"];
  }

  v212 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_replyIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_authenticationToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
  }

  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

  if (self->_sendCommandMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendCommandResultMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getStateMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setStateMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setArtworkMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerHIDDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerHIDDeviceResultMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendHIDEventMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendHIDReportMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendVirtualTouchEventMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_notificationMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_contentItemsChangedNotificationMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_deviceInfoMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_clientUpdatesConfigMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_masterVolumeControlCapabilitiesDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_gameController)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerGameController)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerGameControllerResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_unregisterGameController)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerForGameControllerEvents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_keyboardMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getKeyboardMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_textInputMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVoiceInputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVoiceInputDevicesResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerVoiceInputDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_registerVoiceInputDeviceResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setRecordingStateMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendVoiceInputMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackQueueRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_transactionPackets)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_cryptoPairingMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_gameControllerProperties)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_readyStateMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_connectionState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendButtonEventMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setHiliteModeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_wakeDeviceMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_genericMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendPackedVirtualTouchEventMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sendLyricsEventMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setNowPlayingClientMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setNowPlayingPlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_modifyOutputContextRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeResultMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_volumeDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_removeClientMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_removePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateClientMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateContentItemMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateContentItemArtworkMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updatePlayerMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_promptForRouteAuthorizationMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_promptForRouteAuthorizationResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_presentRouteAuthorizationStatusMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeControlCapabilitiesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeControlCapabilitiesResultMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_volumeControlCapabilitiesDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_removeOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_remoteTextInputMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getRemoteTextInputSessionMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setDefaultSupportedCommandsMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionMigrateRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionMigrateResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_playbackSessionMigrateBeginMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionMigrateEndMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateActiveSystemEndpointMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_discoveryModeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_updateEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_removeEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_playerClientPropertiesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_originClientPropertiesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_audioFadeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_audioFadeResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_discoveryUpdateEndpointsMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_discoveryUpdateOutputDevicesMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setListeningModeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_configureConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_createHostedEndpointRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_createHostedEndpointResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_adjustVolumeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeMutedMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_getVolumeMutedResultMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setVolumeMutedMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_volumeMutedDidChangeMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_setConversationDetectionEnabledMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playerClientParticipantsUpdateMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_requestGroupSessionMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_createApplicationConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_applicationConnectionProtocolMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_invalidateApplicationConnectionMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_microphoneConnectionRequestMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_microphoneConnectionResponseMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_playbackSessionMigratePostMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[188] = self->_type;
    *(toCopy + 864) |= 4u;
  }

  v6 = toCopy;
  if (self->_replyIdentifier)
  {
    [toCopy setReplyIdentifier:?];
    toCopy = v6;
  }

  if (self->_authenticationToken)
  {
    [v6 setAuthenticationToken:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[40] = self->_errorCode;
    *(toCopy + 864) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_timestamp;
    *(toCopy + 864) |= 1u;
  }

  if (self->_sendCommandMessage)
  {
    [v6 setSendCommandMessage:?];
    toCopy = v6;
  }

  if (self->_sendCommandResultMessage)
  {
    [v6 setSendCommandResultMessage:?];
    toCopy = v6;
  }

  if (self->_getStateMessage)
  {
    [v6 setGetStateMessage:?];
    toCopy = v6;
  }

  if (self->_setStateMessage)
  {
    [v6 setSetStateMessage:?];
    toCopy = v6;
  }

  if (self->_setArtworkMessage)
  {
    [v6 setSetArtworkMessage:?];
    toCopy = v6;
  }

  if (self->_registerHIDDeviceMessage)
  {
    [v6 setRegisterHIDDeviceMessage:?];
    toCopy = v6;
  }

  if (self->_registerHIDDeviceResultMessage)
  {
    [v6 setRegisterHIDDeviceResultMessage:?];
    toCopy = v6;
  }

  if (self->_sendHIDEventMessage)
  {
    [v6 setSendHIDEventMessage:?];
    toCopy = v6;
  }

  if (self->_sendHIDReportMessage)
  {
    [v6 setSendHIDReportMessage:?];
    toCopy = v6;
  }

  if (self->_sendVirtualTouchEventMessage)
  {
    [v6 setSendVirtualTouchEventMessage:?];
    toCopy = v6;
  }

  if (self->_notificationMessage)
  {
    [v6 setNotificationMessage:?];
    toCopy = v6;
  }

  if (self->_contentItemsChangedNotificationMessage)
  {
    [v6 setContentItemsChangedNotificationMessage:?];
    toCopy = v6;
  }

  if (self->_deviceInfoMessage)
  {
    [v6 setDeviceInfoMessage:?];
    toCopy = v6;
  }

  if (self->_clientUpdatesConfigMessage)
  {
    [v6 setClientUpdatesConfigMessage:?];
    toCopy = v6;
  }

  if (self->_masterVolumeControlCapabilitiesDidChangeMessage)
  {
    [v6 setMasterVolumeControlCapabilitiesDidChangeMessage:?];
    toCopy = v6;
  }

  if (self->_gameController)
  {
    [v6 setGameController:?];
    toCopy = v6;
  }

  if (self->_registerGameController)
  {
    [v6 setRegisterGameController:?];
    toCopy = v6;
  }

  if (self->_registerGameControllerResponse)
  {
    [v6 setRegisterGameControllerResponse:?];
    toCopy = v6;
  }

  if (self->_unregisterGameController)
  {
    [v6 setUnregisterGameController:?];
    toCopy = v6;
  }

  if (self->_registerForGameControllerEvents)
  {
    [v6 setRegisterForGameControllerEvents:?];
    toCopy = v6;
  }

  if (self->_keyboardMessage)
  {
    [v6 setKeyboardMessage:?];
    toCopy = v6;
  }

  if (self->_getKeyboardMessage)
  {
    [v6 setGetKeyboardMessage:?];
    toCopy = v6;
  }

  if (self->_textInputMessage)
  {
    [v6 setTextInputMessage:?];
    toCopy = v6;
  }

  if (self->_getVoiceInputDevicesMessage)
  {
    [v6 setGetVoiceInputDevicesMessage:?];
    toCopy = v6;
  }

  if (self->_getVoiceInputDevicesResponseMessage)
  {
    [v6 setGetVoiceInputDevicesResponseMessage:?];
    toCopy = v6;
  }

  if (self->_registerVoiceInputDeviceMessage)
  {
    [v6 setRegisterVoiceInputDeviceMessage:?];
    toCopy = v6;
  }

  if (self->_registerVoiceInputDeviceResponseMessage)
  {
    [v6 setRegisterVoiceInputDeviceResponseMessage:?];
    toCopy = v6;
  }

  if (self->_setRecordingStateMessage)
  {
    [v6 setSetRecordingStateMessage:?];
    toCopy = v6;
  }

  if (self->_sendVoiceInputMessage)
  {
    [v6 setSendVoiceInputMessage:?];
    toCopy = v6;
  }

  if (self->_playbackQueueRequest)
  {
    [v6 setPlaybackQueueRequest:?];
    toCopy = v6;
  }

  if (self->_transactionPackets)
  {
    [v6 setTransactionPackets:?];
    toCopy = v6;
  }

  if (self->_cryptoPairingMessage)
  {
    [v6 setCryptoPairingMessage:?];
    toCopy = v6;
  }

  if (self->_gameControllerProperties)
  {
    [v6 setGameControllerProperties:?];
    toCopy = v6;
  }

  if (self->_readyStateMessage)
  {
    [v6 setReadyStateMessage:?];
    toCopy = v6;
  }

  if (self->_connectionState)
  {
    [v6 setConnectionState:?];
    toCopy = v6;
  }

  if (self->_sendButtonEventMessage)
  {
    [v6 setSendButtonEventMessage:?];
    toCopy = v6;
  }

  if (self->_setHiliteModeMessage)
  {
    [v6 setSetHiliteModeMessage:?];
    toCopy = v6;
  }

  if (self->_wakeDeviceMessage)
  {
    [v6 setWakeDeviceMessage:?];
    toCopy = v6;
  }

  if (self->_genericMessage)
  {
    [v6 setGenericMessage:?];
    toCopy = v6;
  }

  if (self->_sendPackedVirtualTouchEventMessage)
  {
    [v6 setSendPackedVirtualTouchEventMessage:?];
    toCopy = v6;
  }

  if (self->_sendLyricsEventMessage)
  {
    [v6 setSendLyricsEventMessage:?];
    toCopy = v6;
  }

  if (self->_setNowPlayingClientMessage)
  {
    [v6 setSetNowPlayingClientMessage:?];
    toCopy = v6;
  }

  if (self->_setNowPlayingPlayerMessage)
  {
    [v6 setSetNowPlayingPlayerMessage:?];
    toCopy = v6;
  }

  if (self->_modifyOutputContextRequestMessage)
  {
    [v6 setModifyOutputContextRequestMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeMessage)
  {
    [v6 setGetVolumeMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeResultMessage)
  {
    [v6 setGetVolumeResultMessage:?];
    toCopy = v6;
  }

  if (self->_setVolumeMessage)
  {
    [v6 setSetVolumeMessage:?];
    toCopy = v6;
  }

  if (self->_volumeDidChangeMessage)
  {
    [v6 setVolumeDidChangeMessage:?];
    toCopy = v6;
  }

  if (self->_removeClientMessage)
  {
    [v6 setRemoveClientMessage:?];
    toCopy = v6;
  }

  if (self->_removePlayerMessage)
  {
    [v6 setRemovePlayerMessage:?];
    toCopy = v6;
  }

  if (self->_updateClientMessage)
  {
    [v6 setUpdateClientMessage:?];
    toCopy = v6;
  }

  if (self->_updateContentItemMessage)
  {
    [v6 setUpdateContentItemMessage:?];
    toCopy = v6;
  }

  if (self->_updateContentItemArtworkMessage)
  {
    [v6 setUpdateContentItemArtworkMessage:?];
    toCopy = v6;
  }

  if (self->_updatePlayerMessage)
  {
    [v6 setUpdatePlayerMessage:?];
    toCopy = v6;
  }

  if (self->_promptForRouteAuthorizationMessage)
  {
    [v6 setPromptForRouteAuthorizationMessage:?];
    toCopy = v6;
  }

  if (self->_promptForRouteAuthorizationResponseMessage)
  {
    [v6 setPromptForRouteAuthorizationResponseMessage:?];
    toCopy = v6;
  }

  if (self->_presentRouteAuthorizationStatusMessage)
  {
    [v6 setPresentRouteAuthorizationStatusMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeControlCapabilitiesMessage)
  {
    [v6 setGetVolumeControlCapabilitiesMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeControlCapabilitiesResultMessage)
  {
    [v6 setGetVolumeControlCapabilitiesResultMessage:?];
    toCopy = v6;
  }

  if (self->_volumeControlCapabilitiesDidChangeMessage)
  {
    [v6 setVolumeControlCapabilitiesDidChangeMessage:?];
    toCopy = v6;
  }

  if (self->_updateOutputDevicesMessage)
  {
    [v6 setUpdateOutputDevicesMessage:?];
    toCopy = v6;
  }

  if (self->_removeOutputDevicesMessage)
  {
    [v6 setRemoveOutputDevicesMessage:?];
    toCopy = v6;
  }

  if (self->_remoteTextInputMessage)
  {
    [v6 setRemoteTextInputMessage:?];
    toCopy = v6;
  }

  if (self->_getRemoteTextInputSessionMessage)
  {
    [v6 setGetRemoteTextInputSessionMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionRequestMessage)
  {
    [v6 setPlaybackSessionRequestMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionResponseMessage)
  {
    [v6 setPlaybackSessionResponseMessage:?];
    toCopy = v6;
  }

  if (self->_setDefaultSupportedCommandsMessage)
  {
    [v6 setSetDefaultSupportedCommandsMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionMigrateRequestMessage)
  {
    [v6 setPlaybackSessionMigrateRequestMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionMigrateResponseMessage)
  {
    [v6 setPlaybackSessionMigrateResponseMessage:?];
    toCopy = v6;
  }

  if (self->_errorDescription)
  {
    [v6 setErrorDescription:?];
    toCopy = v6;
  }

  if (self->_playbackSessionMigrateBeginMessage)
  {
    [v6 setPlaybackSessionMigrateBeginMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionMigrateEndMessage)
  {
    [v6 setPlaybackSessionMigrateEndMessage:?];
    toCopy = v6;
  }

  if (self->_updateActiveSystemEndpointMessage)
  {
    [v6 setUpdateActiveSystemEndpointMessage:?];
    toCopy = v6;
  }

  if (self->_discoveryModeMessage)
  {
    [v6 setDiscoveryModeMessage:?];
    toCopy = v6;
  }

  if (self->_updateEndpointsMessage)
  {
    [v6 setUpdateEndpointsMessage:?];
    toCopy = v6;
  }

  if (self->_removeEndpointsMessage)
  {
    [v6 setRemoveEndpointsMessage:?];
    toCopy = v6;
  }

  if (self->_uniqueIdentifier)
  {
    [v6 setUniqueIdentifier:?];
    toCopy = v6;
  }

  if (self->_playerClientPropertiesMessage)
  {
    [v6 setPlayerClientPropertiesMessage:?];
    toCopy = v6;
  }

  if (self->_originClientPropertiesMessage)
  {
    [v6 setOriginClientPropertiesMessage:?];
    toCopy = v6;
  }

  if (self->_audioFadeMessage)
  {
    [v6 setAudioFadeMessage:?];
    toCopy = v6;
  }

  if (self->_audioFadeResponseMessage)
  {
    [v6 setAudioFadeResponseMessage:?];
    toCopy = v6;
  }

  if (self->_discoveryUpdateEndpointsMessage)
  {
    [v6 setDiscoveryUpdateEndpointsMessage:?];
    toCopy = v6;
  }

  if (self->_discoveryUpdateOutputDevicesMessage)
  {
    [v6 setDiscoveryUpdateOutputDevicesMessage:?];
    toCopy = v6;
  }

  if (self->_setListeningModeMessage)
  {
    [v6 setSetListeningModeMessage:?];
    toCopy = v6;
  }

  if (self->_error)
  {
    [v6 setError:?];
    toCopy = v6;
  }

  if (self->_configureConnectionMessage)
  {
    [v6 setConfigureConnectionMessage:?];
    toCopy = v6;
  }

  if (self->_createHostedEndpointRequest)
  {
    [v6 setCreateHostedEndpointRequest:?];
    toCopy = v6;
  }

  if (self->_createHostedEndpointResponse)
  {
    [v6 setCreateHostedEndpointResponse:?];
    toCopy = v6;
  }

  if (self->_adjustVolumeMessage)
  {
    [v6 setAdjustVolumeMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeMutedMessage)
  {
    [v6 setGetVolumeMutedMessage:?];
    toCopy = v6;
  }

  if (self->_getVolumeMutedResultMessage)
  {
    [v6 setGetVolumeMutedResultMessage:?];
    toCopy = v6;
  }

  if (self->_setVolumeMutedMessage)
  {
    [v6 setSetVolumeMutedMessage:?];
    toCopy = v6;
  }

  if (self->_volumeMutedDidChangeMessage)
  {
    [v6 setVolumeMutedDidChangeMessage:?];
    toCopy = v6;
  }

  if (self->_setConversationDetectionEnabledMessage)
  {
    [v6 setSetConversationDetectionEnabledMessage:?];
    toCopy = v6;
  }

  if (self->_playerClientParticipantsUpdateMessage)
  {
    [v6 setPlayerClientParticipantsUpdateMessage:?];
    toCopy = v6;
  }

  if (self->_requestGroupSessionMessage)
  {
    [v6 setRequestGroupSessionMessage:?];
    toCopy = v6;
  }

  if (self->_createApplicationConnectionMessage)
  {
    [v6 setCreateApplicationConnectionMessage:?];
    toCopy = v6;
  }

  if (self->_applicationConnectionProtocolMessage)
  {
    [v6 setApplicationConnectionProtocolMessage:?];
    toCopy = v6;
  }

  if (self->_invalidateApplicationConnectionMessage)
  {
    [v6 setInvalidateApplicationConnectionMessage:?];
    toCopy = v6;
  }

  if (self->_microphoneConnectionRequestMessage)
  {
    [v6 setMicrophoneConnectionRequestMessage:?];
    toCopy = v6;
  }

  if (self->_microphoneConnectionResponseMessage)
  {
    [v6 setMicrophoneConnectionResponseMessage:?];
    toCopy = v6;
  }

  if (self->_playbackSessionMigratePostMessage)
  {
    [v6 setPlaybackSessionMigratePostMessage:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 752) = self->_type;
    *(v5 + 864) |= 4u;
  }

  v7 = [(NSString *)self->_replyIdentifier copyWithZone:zone];
  v8 = *(v6 + 560);
  *(v6 + 560) = v7;

  v9 = [(NSString *)self->_authenticationToken copyWithZone:zone];
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

  v12 = [(_MRSendCommandMessageProtobuf *)self->_sendCommandMessage copyWithZone:zone];
  v13 = *(v6 + 584);
  *(v6 + 584) = v12;

  v14 = [(_MRSendCommandResultMessageProtobuf *)self->_sendCommandResultMessage copyWithZone:zone];
  v15 = *(v6 + 592);
  *(v6 + 592) = v14;

  v16 = [(_MRGetStateMessageProtobuf *)self->_getStateMessage copyWithZone:zone];
  v17 = *(v6 + 216);
  *(v6 + 216) = v16;

  v18 = [(_MRSetStateMessageProtobuf *)self->_setStateMessage copyWithZone:zone];
  v19 = *(v6 + 712);
  *(v6 + 712) = v18;

  v20 = [(_MRSetArtworkMessageProtobuf *)self->_setArtworkMessage copyWithZone:zone];
  v21 = *(v6 + 648);
  *(v6 + 648) = v20;

  v22 = [(_MRRegisterHIDDeviceMessageProtobuf *)self->_registerHIDDeviceMessage copyWithZone:zone];
  v23 = *(v6 + 488);
  *(v6 + 488) = v22;

  v24 = [(_MRRegisterHIDDeviceResultMessageProtobuf *)self->_registerHIDDeviceResultMessage copyWithZone:zone];
  v25 = *(v6 + 496);
  *(v6 + 496) = v24;

  v26 = [(_MRSendHIDEventMessageProtobuf *)self->_sendHIDEventMessage copyWithZone:zone];
  v27 = *(v6 + 600);
  *(v6 + 600) = v26;

  v28 = [(_MRSendHIDReportMessageProtobuf *)self->_sendHIDReportMessage copyWithZone:zone];
  v29 = *(v6 + 608);
  *(v6 + 608) = v28;

  v30 = [(_MRSendVirtualTouchEventMessageProtobuf *)self->_sendVirtualTouchEventMessage copyWithZone:zone];
  v31 = *(v6 + 632);
  *(v6 + 632) = v30;

  v32 = [(_MRNotificationMessageProtobuf *)self->_notificationMessage copyWithZone:zone];
  v33 = *(v6 + 336);
  *(v6 + 336) = v32;

  v34 = [(_MRPlaybackQueueProtobuf *)self->_contentItemsChangedNotificationMessage copyWithZone:zone];
  v35 = *(v6 + 80);
  *(v6 + 80) = v34;

  v36 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoMessage copyWithZone:zone];
  v37 = *(v6 + 120);
  *(v6 + 120) = v36;

  v38 = [(_MRClientUpdatesConfigurationProtobuf *)self->_clientUpdatesConfigMessage copyWithZone:zone];
  v39 = *(v6 + 56);
  *(v6 + 56) = v38;

  v40 = [(_MRVolumeControlAvailabilityProtobuf *)self->_masterVolumeControlCapabilitiesDidChangeMessage copyWithZone:zone];
  v41 = *(v6 + 304);
  *(v6 + 304) = v40;

  v42 = [(_MRGameControllerMessageProtobuf *)self->_gameController copyWithZone:zone];
  v43 = *(v6 + 176);
  *(v6 + 176) = v42;

  v44 = [(_MRRegisterGameControllerMessageProtobuf *)self->_registerGameController copyWithZone:zone];
  v45 = *(v6 + 472);
  *(v6 + 472) = v44;

  v46 = [(_MRRegisterGameControllerResponseMessageProtobuf *)self->_registerGameControllerResponse copyWithZone:zone];
  v47 = *(v6 + 480);
  *(v6 + 480) = v46;

  v48 = [(_MRUnregisterGameControllerMessageProtobuf *)self->_unregisterGameController copyWithZone:zone];
  v49 = *(v6 + 768);
  *(v6 + 768) = v48;

  v50 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)self->_registerForGameControllerEvents copyWithZone:zone];
  v51 = *(v6 + 464);
  *(v6 + 464) = v50;

  v52 = [(_MRKeyboardMessageProtobuf *)self->_keyboardMessage copyWithZone:zone];
  v53 = *(v6 + 296);
  *(v6 + 296) = v52;

  v54 = [(_MRGetKeyboardSessionProtobuf *)self->_getKeyboardMessage copyWithZone:zone];
  v55 = *(v6 + 200);
  *(v6 + 200) = v54;

  v56 = [(_MRTextInputMessageProtobuf *)self->_textInputMessage copyWithZone:zone];
  v57 = *(v6 + 736);
  *(v6 + 736) = v56;

  v58 = [(_MRGetVoiceInputDevicesMessageProtobuf *)self->_getVoiceInputDevicesMessage copyWithZone:zone];
  v59 = *(v6 + 224);
  *(v6 + 224) = v58;

  v60 = [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)self->_getVoiceInputDevicesResponseMessage copyWithZone:zone];
  v61 = *(v6 + 232);
  *(v6 + 232) = v60;

  v62 = [(_MRRegisterVoiceInputDeviceMessageProtobuf *)self->_registerVoiceInputDeviceMessage copyWithZone:zone];
  v63 = *(v6 + 504);
  *(v6 + 504) = v62;

  v64 = [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)self->_registerVoiceInputDeviceResponseMessage copyWithZone:zone];
  v65 = *(v6 + 512);
  *(v6 + 512) = v64;

  v66 = [(_MRSetRecordingStateMessageProtobuf *)self->_setRecordingStateMessage copyWithZone:zone];
  v67 = *(v6 + 704);
  *(v6 + 704) = v66;

  v68 = [(_MRSendVoiceInputMessageProtobuf *)self->_sendVoiceInputMessage copyWithZone:zone];
  v69 = *(v6 + 640);
  *(v6 + 640) = v68;

  v70 = [(_MRPlaybackQueueRequestProtobuf *)self->_playbackQueueRequest copyWithZone:zone];
  v71 = *(v6 + 352);
  *(v6 + 352) = v70;

  v72 = [(_MRTransactionMessageProtobuf *)self->_transactionPackets copyWithZone:zone];
  v73 = *(v6 + 744);
  *(v6 + 744) = v72;

  v74 = [(_MRCryptoPairingMessageProtobuf *)self->_cryptoPairingMessage copyWithZone:zone];
  v75 = *(v6 + 112);
  *(v6 + 112) = v74;

  v76 = [(_MRGameControllerPropertiesMessageProtobuf *)self->_gameControllerProperties copyWithZone:zone];
  v77 = *(v6 + 184);
  *(v6 + 184) = v76;

  v78 = [(_MRSetReadyStateMessageProtobuf *)self->_readyStateMessage copyWithZone:zone];
  v79 = *(v6 + 456);
  *(v6 + 456) = v78;

  v80 = [(_MRSetConnectionStateMessageProtobuf *)self->_connectionState copyWithZone:zone];
  v81 = *(v6 + 72);
  *(v6 + 72) = v80;

  v82 = [(_MRSendButtonEventMessageProtobuf *)self->_sendButtonEventMessage copyWithZone:zone];
  v83 = *(v6 + 576);
  *(v6 + 576) = v82;

  v84 = [(_MRSetHiliteModeMessageProtobuf *)self->_setHiliteModeMessage copyWithZone:zone];
  v85 = *(v6 + 672);
  *(v6 + 672) = v84;

  v86 = [(_MRWakeDeviceMessageProtobuf *)self->_wakeDeviceMessage copyWithZone:zone];
  v87 = *(v6 + 856);
  *(v6 + 856) = v86;

  v88 = [(_MRGenericMessageProtobuf *)self->_genericMessage copyWithZone:zone];
  v89 = *(v6 + 192);
  *(v6 + 192) = v88;

  v90 = [(_MRSendPackedVirtualTouchEventMessageProtobuf *)self->_sendPackedVirtualTouchEventMessage copyWithZone:zone];
  v91 = *(v6 + 624);
  *(v6 + 624) = v90;

  v92 = [(_MRSendLyricsEventMessageProtobuf *)self->_sendLyricsEventMessage copyWithZone:zone];
  v93 = *(v6 + 616);
  *(v6 + 616) = v92;

  v94 = [(_MRSetNowPlayingClientMessageProtobuf *)self->_setNowPlayingClientMessage copyWithZone:zone];
  v95 = *(v6 + 688);
  *(v6 + 688) = v94;

  v96 = [(_MRSetNowPlayingPlayerMessageProtobuf *)self->_setNowPlayingPlayerMessage copyWithZone:zone];
  v97 = *(v6 + 696);
  *(v6 + 696) = v96;

  v98 = [(_MRAVModifyOutputContextRequestProtobuf *)self->_modifyOutputContextRequestMessage copyWithZone:zone];
  v99 = *(v6 + 328);
  *(v6 + 328) = v98;

  v100 = [(_MRGetVolumeMessageProtobuf *)self->_getVolumeMessage copyWithZone:zone];
  v101 = *(v6 + 256);
  *(v6 + 256) = v100;

  v102 = [(_MRGetVolumeResultMessageProtobuf *)self->_getVolumeResultMessage copyWithZone:zone];
  v103 = *(v6 + 280);
  *(v6 + 280) = v102;

  v104 = [(_MRSetVolumeMessageProtobuf *)self->_setVolumeMessage copyWithZone:zone];
  v105 = *(v6 + 720);
  *(v6 + 720) = v104;

  v106 = [(_MRVolumeDidChangeMessageProtobuf *)self->_volumeDidChangeMessage copyWithZone:zone];
  v107 = *(v6 + 840);
  *(v6 + 840) = v106;

  v108 = [(_MRRemoveClientMessageProtobuf *)self->_removeClientMessage copyWithZone:zone];
  v109 = *(v6 + 528);
  *(v6 + 528) = v108;

  v110 = [(_MRRemovePlayerMessageProtobuf *)self->_removePlayerMessage copyWithZone:zone];
  v111 = *(v6 + 552);
  *(v6 + 552) = v110;

  v112 = [(_MRUpdateClientMessageProtobuf *)self->_updateClientMessage copyWithZone:zone];
  v113 = *(v6 + 784);
  *(v6 + 784) = v112;

  v114 = [(_MRUpdateContentItemMessageProtobuf *)self->_updateContentItemMessage copyWithZone:zone];
  v115 = *(v6 + 800);
  *(v6 + 800) = v114;

  v116 = [(_MRUpdateContentItemArtworkMessageProtobuf *)self->_updateContentItemArtworkMessage copyWithZone:zone];
  v117 = *(v6 + 792);
  *(v6 + 792) = v116;

  v118 = [(_MRUpdatePlayerMessageProtobuf *)self->_updatePlayerMessage copyWithZone:zone];
  v119 = *(v6 + 824);
  *(v6 + 824) = v118;

  v120 = [(_MRPromptForRouteAuthorizationMessageProtobuf *)self->_promptForRouteAuthorizationMessage copyWithZone:zone];
  v121 = *(v6 + 440);
  *(v6 + 440) = v120;

  v122 = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)self->_promptForRouteAuthorizationResponseMessage copyWithZone:zone];
  v123 = *(v6 + 448);
  *(v6 + 448) = v122;

  v124 = [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)self->_presentRouteAuthorizationStatusMessage copyWithZone:zone];
  v125 = *(v6 + 432);
  *(v6 + 432) = v124;

  v126 = [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)self->_getVolumeControlCapabilitiesMessage copyWithZone:zone];
  v127 = *(v6 + 240);
  *(v6 + 240) = v126;

  v128 = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)self->_getVolumeControlCapabilitiesResultMessage copyWithZone:zone];
  v129 = *(v6 + 248);
  *(v6 + 248) = v128;

  v130 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self->_volumeControlCapabilitiesDidChangeMessage copyWithZone:zone];
  v131 = *(v6 + 832);
  *(v6 + 832) = v130;

  v132 = [(_MRUpdateOutputDevicesMessageProtobuf *)self->_updateOutputDevicesMessage copyWithZone:zone];
  v133 = *(v6 + 816);
  *(v6 + 816) = v132;

  v134 = [(_MRRemoveOutputDevicesMessageProtobuf *)self->_removeOutputDevicesMessage copyWithZone:zone];
  v135 = *(v6 + 544);
  *(v6 + 544) = v134;

  v136 = [(_MRRemoteTextInputMessageProtobuf *)self->_remoteTextInputMessage copyWithZone:zone];
  v137 = *(v6 + 520);
  *(v6 + 520) = v136;

  v138 = [(_MRGetRemoteTextInputSessionProtobuf *)self->_getRemoteTextInputSessionMessage copyWithZone:zone];
  v139 = *(v6 + 208);
  *(v6 + 208) = v138;

  v140 = [(_MRPlaybackSessionRequestMessageProtobuf *)self->_playbackSessionRequestMessage copyWithZone:zone];
  v141 = *(v6 + 400);
  *(v6 + 400) = v140;

  v142 = [(_MRPlaybackSessionResponseMessageProtobuf *)self->_playbackSessionResponseMessage copyWithZone:zone];
  v143 = *(v6 + 408);
  *(v6 + 408) = v142;

  v144 = [(_MRSetStateMessageProtobuf *)self->_setDefaultSupportedCommandsMessage copyWithZone:zone];
  v145 = *(v6 + 664);
  *(v6 + 664) = v144;

  v146 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self->_playbackSessionMigrateRequestMessage copyWithZone:zone];
  v147 = *(v6 + 384);
  *(v6 + 384) = v146;

  v148 = [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)self->_playbackSessionMigrateResponseMessage copyWithZone:zone];
  v149 = *(v6 + 392);
  *(v6 + 392) = v148;

  v150 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v151 = *(v6 + 168);
  *(v6 + 168) = v150;

  v152 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self->_playbackSessionMigrateBeginMessage copyWithZone:zone];
  v153 = *(v6 + 360);
  *(v6 + 360) = v152;

  v154 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self->_playbackSessionMigrateEndMessage copyWithZone:zone];
  v155 = *(v6 + 368);
  *(v6 + 368) = v154;

  v156 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self->_updateActiveSystemEndpointMessage copyWithZone:zone];
  v157 = *(v6 + 776);
  *(v6 + 776) = v156;

  v158 = [(_MRSetDiscoveryModeProtobufMessage *)self->_discoveryModeMessage copyWithZone:zone];
  v159 = *(v6 + 128);
  *(v6 + 128) = v158;

  v160 = [(_MRUpdateEndpointsMessageProtobuf *)self->_updateEndpointsMessage copyWithZone:zone];
  v161 = *(v6 + 808);
  *(v6 + 808) = v160;

  v162 = [(_MRRemoveEndpointsMessageProtobuf *)self->_removeEndpointsMessage copyWithZone:zone];
  v163 = *(v6 + 536);
  *(v6 + 536) = v162;

  v164 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v165 = *(v6 + 760);
  *(v6 + 760) = v164;

  v166 = [(_MRPlayerClientPropertiesMessageProtobuf *)self->_playerClientPropertiesMessage copyWithZone:zone];
  v167 = *(v6 + 424);
  *(v6 + 424) = v166;

  v168 = [(_MROriginClientPropertiesMessageProtobuf *)self->_originClientPropertiesMessage copyWithZone:zone];
  v169 = *(v6 + 344);
  *(v6 + 344) = v168;

  v170 = [(_MRAudioFadeMessageProtobuf *)self->_audioFadeMessage copyWithZone:zone];
  v171 = *(v6 + 32);
  *(v6 + 32) = v170;

  v172 = [(_MRAudioFadeResponseMessageProtobuf *)self->_audioFadeResponseMessage copyWithZone:zone];
  v173 = *(v6 + 40);
  *(v6 + 40) = v172;

  v174 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self->_discoveryUpdateEndpointsMessage copyWithZone:zone];
  v175 = *(v6 + 136);
  *(v6 + 136) = v174;

  v176 = [(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)self->_discoveryUpdateOutputDevicesMessage copyWithZone:zone];
  v177 = *(v6 + 144);
  *(v6 + 144) = v176;

  v178 = [(_MRSetListeningModeMessageProtobuf *)self->_setListeningModeMessage copyWithZone:zone];
  v179 = *(v6 + 680);
  *(v6 + 680) = v178;

  v180 = [(_MRErrorProtobuf *)self->_error copyWithZone:zone];
  v181 = *(v6 + 152);
  *(v6 + 152) = v180;

  v182 = [(_MRConfigureConnectionMessageProtobuf *)self->_configureConnectionMessage copyWithZone:zone];
  v183 = *(v6 + 64);
  *(v6 + 64) = v182;

  v184 = [(_MRCreateHostedEndpointRequestProtobuf *)self->_createHostedEndpointRequest copyWithZone:zone];
  v185 = *(v6 + 96);
  *(v6 + 96) = v184;

  v186 = [(_MRCreateHostedEndpointResponseProtobuf *)self->_createHostedEndpointResponse copyWithZone:zone];
  v187 = *(v6 + 104);
  *(v6 + 104) = v186;

  v188 = [(_MRAdjustVolumeMessageProtobuf *)self->_adjustVolumeMessage copyWithZone:zone];
  v189 = *(v6 + 16);
  *(v6 + 16) = v188;

  v190 = [(_MRGetVolumeMutedMessageProtobuf *)self->_getVolumeMutedMessage copyWithZone:zone];
  v191 = *(v6 + 264);
  *(v6 + 264) = v190;

  v192 = [(_MRGetVolumeMutedResultMessageProtobuf *)self->_getVolumeMutedResultMessage copyWithZone:zone];
  v193 = *(v6 + 272);
  *(v6 + 272) = v192;

  v194 = [(_MRSetVolumeMutedMessageProtobuf *)self->_setVolumeMutedMessage copyWithZone:zone];
  v195 = *(v6 + 728);
  *(v6 + 728) = v194;

  v196 = [(_MRVolumeMutedDidChangeMessageProtobuf *)self->_volumeMutedDidChangeMessage copyWithZone:zone];
  v197 = *(v6 + 848);
  *(v6 + 848) = v196;

  v198 = [(_MRSetConversationDetectionEnabledMessageProtobuf *)self->_setConversationDetectionEnabledMessage copyWithZone:zone];
  v199 = *(v6 + 656);
  *(v6 + 656) = v198;

  v200 = [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)self->_playerClientParticipantsUpdateMessage copyWithZone:zone];
  v201 = *(v6 + 416);
  *(v6 + 416) = v200;

  v202 = [(_MRRequestGroupSessionMessageProtobuf *)self->_requestGroupSessionMessage copyWithZone:zone];
  v203 = *(v6 + 568);
  *(v6 + 568) = v202;

  v204 = [(_MRCreateApplicationConnectionMessageProtobuf *)self->_createApplicationConnectionMessage copyWithZone:zone];
  v205 = *(v6 + 88);
  *(v6 + 88) = v204;

  v206 = [(_MRApplicationConnectionProtocolMessageProtobuf *)self->_applicationConnectionProtocolMessage copyWithZone:zone];
  v207 = *(v6 + 24);
  *(v6 + 24) = v206;

  v208 = [(_MRApplicationConnectionContextProtobuf *)self->_invalidateApplicationConnectionMessage copyWithZone:zone];
  v209 = *(v6 + 288);
  *(v6 + 288) = v208;

  v210 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)self->_microphoneConnectionRequestMessage copyWithZone:zone];
  v211 = *(v6 + 312);
  *(v6 + 312) = v210;

  v212 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)self->_microphoneConnectionResponseMessage copyWithZone:zone];
  v213 = *(v6 + 320);
  *(v6 + 320) = v212;

  v214 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)self->_playbackSessionMigratePostMessage copyWithZone:zone];
  v215 = *(v6 + 376);
  *(v6 + 376) = v214;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_225;
  }

  v5 = *(equalCopy + 864);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 864) & 4) == 0 || self->_type != *(equalCopy + 188))
    {
      goto LABEL_225;
    }
  }

  else if ((*(equalCopy + 864) & 4) != 0)
  {
LABEL_225:
    v111 = 0;
    goto LABEL_226;
  }

  replyIdentifier = self->_replyIdentifier;
  if (replyIdentifier | *(equalCopy + 70) && ![(NSString *)replyIdentifier isEqual:?])
  {
    goto LABEL_225;
  }

  authenticationToken = self->_authenticationToken;
  if (authenticationToken | *(equalCopy + 6))
  {
    if (![(NSString *)authenticationToken isEqual:?])
    {
      goto LABEL_225;
    }
  }

  v8 = *(equalCopy + 864);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 864) & 2) == 0 || self->_errorCode != *(equalCopy + 40))
    {
      goto LABEL_225;
    }
  }

  else if ((*(equalCopy + 864) & 2) != 0)
  {
    goto LABEL_225;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 864) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_225;
    }
  }

  else if (*(equalCopy + 864))
  {
    goto LABEL_225;
  }

  sendCommandMessage = self->_sendCommandMessage;
  if (sendCommandMessage | *(equalCopy + 73) && ![(_MRSendCommandMessageProtobuf *)sendCommandMessage isEqual:?])
  {
    goto LABEL_225;
  }

  sendCommandResultMessage = self->_sendCommandResultMessage;
  if (sendCommandResultMessage | *(equalCopy + 74))
  {
    if (![(_MRSendCommandResultMessageProtobuf *)sendCommandResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getStateMessage = self->_getStateMessage;
  if (getStateMessage | *(equalCopy + 27))
  {
    if (![(_MRGetStateMessageProtobuf *)getStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setStateMessage = self->_setStateMessage;
  if (setStateMessage | *(equalCopy + 89))
  {
    if (![(_MRSetStateMessageProtobuf *)setStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setArtworkMessage = self->_setArtworkMessage;
  if (setArtworkMessage | *(equalCopy + 81))
  {
    if (![(_MRSetArtworkMessageProtobuf *)setArtworkMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerHIDDeviceMessage = self->_registerHIDDeviceMessage;
  if (registerHIDDeviceMessage | *(equalCopy + 61))
  {
    if (![(_MRRegisterHIDDeviceMessageProtobuf *)registerHIDDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerHIDDeviceResultMessage = self->_registerHIDDeviceResultMessage;
  if (registerHIDDeviceResultMessage | *(equalCopy + 62))
  {
    if (![(_MRRegisterHIDDeviceResultMessageProtobuf *)registerHIDDeviceResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendHIDEventMessage = self->_sendHIDEventMessage;
  if (sendHIDEventMessage | *(equalCopy + 75))
  {
    if (![(_MRSendHIDEventMessageProtobuf *)sendHIDEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendHIDReportMessage = self->_sendHIDReportMessage;
  if (sendHIDReportMessage | *(equalCopy + 76))
  {
    if (![(_MRSendHIDReportMessageProtobuf *)sendHIDReportMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendVirtualTouchEventMessage = self->_sendVirtualTouchEventMessage;
  if (sendVirtualTouchEventMessage | *(equalCopy + 79))
  {
    if (![(_MRSendVirtualTouchEventMessageProtobuf *)sendVirtualTouchEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage | *(equalCopy + 42))
  {
    if (![(_MRNotificationMessageProtobuf *)notificationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  contentItemsChangedNotificationMessage = self->_contentItemsChangedNotificationMessage;
  if (contentItemsChangedNotificationMessage | *(equalCopy + 10))
  {
    if (![(_MRPlaybackQueueProtobuf *)contentItemsChangedNotificationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  deviceInfoMessage = self->_deviceInfoMessage;
  if (deviceInfoMessage | *(equalCopy + 15))
  {
    if (![(_MRDeviceInfoMessageProtobuf *)deviceInfoMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  clientUpdatesConfigMessage = self->_clientUpdatesConfigMessage;
  if (clientUpdatesConfigMessage | *(equalCopy + 7))
  {
    if (![(_MRClientUpdatesConfigurationProtobuf *)clientUpdatesConfigMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  masterVolumeControlCapabilitiesDidChangeMessage = self->_masterVolumeControlCapabilitiesDidChangeMessage;
  if (masterVolumeControlCapabilitiesDidChangeMessage | *(equalCopy + 38))
  {
    if (![(_MRVolumeControlAvailabilityProtobuf *)masterVolumeControlCapabilitiesDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  gameController = self->_gameController;
  if (gameController | *(equalCopy + 22))
  {
    if (![(_MRGameControllerMessageProtobuf *)gameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerGameController = self->_registerGameController;
  if (registerGameController | *(equalCopy + 59))
  {
    if (![(_MRRegisterGameControllerMessageProtobuf *)registerGameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerGameControllerResponse = self->_registerGameControllerResponse;
  if (registerGameControllerResponse | *(equalCopy + 60))
  {
    if (![(_MRRegisterGameControllerResponseMessageProtobuf *)registerGameControllerResponse isEqual:?])
    {
      goto LABEL_225;
    }
  }

  unregisterGameController = self->_unregisterGameController;
  if (unregisterGameController | *(equalCopy + 96))
  {
    if (![(_MRUnregisterGameControllerMessageProtobuf *)unregisterGameController isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerForGameControllerEvents = self->_registerForGameControllerEvents;
  if (registerForGameControllerEvents | *(equalCopy + 58))
  {
    if (![(_MRRegisterForGameControllerEventsMessageProtobuf *)registerForGameControllerEvents isEqual:?])
    {
      goto LABEL_225;
    }
  }

  keyboardMessage = self->_keyboardMessage;
  if (keyboardMessage | *(equalCopy + 37))
  {
    if (![(_MRKeyboardMessageProtobuf *)keyboardMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getKeyboardMessage = self->_getKeyboardMessage;
  if (getKeyboardMessage | *(equalCopy + 25))
  {
    if (![(_MRGetKeyboardSessionProtobuf *)getKeyboardMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  textInputMessage = self->_textInputMessage;
  if (textInputMessage | *(equalCopy + 92))
  {
    if (![(_MRTextInputMessageProtobuf *)textInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVoiceInputDevicesMessage = self->_getVoiceInputDevicesMessage;
  if (getVoiceInputDevicesMessage | *(equalCopy + 28))
  {
    if (![(_MRGetVoiceInputDevicesMessageProtobuf *)getVoiceInputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVoiceInputDevicesResponseMessage = self->_getVoiceInputDevicesResponseMessage;
  if (getVoiceInputDevicesResponseMessage | *(equalCopy + 29))
  {
    if (![(_MRGetVoiceInputDevicesResponseMessageProtobuf *)getVoiceInputDevicesResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerVoiceInputDeviceMessage = self->_registerVoiceInputDeviceMessage;
  if (registerVoiceInputDeviceMessage | *(equalCopy + 63))
  {
    if (![(_MRRegisterVoiceInputDeviceMessageProtobuf *)registerVoiceInputDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  registerVoiceInputDeviceResponseMessage = self->_registerVoiceInputDeviceResponseMessage;
  if (registerVoiceInputDeviceResponseMessage | *(equalCopy + 64))
  {
    if (![(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)registerVoiceInputDeviceResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setRecordingStateMessage = self->_setRecordingStateMessage;
  if (setRecordingStateMessage | *(equalCopy + 88))
  {
    if (![(_MRSetRecordingStateMessageProtobuf *)setRecordingStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendVoiceInputMessage = self->_sendVoiceInputMessage;
  if (sendVoiceInputMessage | *(equalCopy + 80))
  {
    if (![(_MRSendVoiceInputMessageProtobuf *)sendVoiceInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackQueueRequest = self->_playbackQueueRequest;
  if (playbackQueueRequest | *(equalCopy + 44))
  {
    if (![(_MRPlaybackQueueRequestProtobuf *)playbackQueueRequest isEqual:?])
    {
      goto LABEL_225;
    }
  }

  transactionPackets = self->_transactionPackets;
  if (transactionPackets | *(equalCopy + 93))
  {
    if (![(_MRTransactionMessageProtobuf *)transactionPackets isEqual:?])
    {
      goto LABEL_225;
    }
  }

  cryptoPairingMessage = self->_cryptoPairingMessage;
  if (cryptoPairingMessage | *(equalCopy + 14))
  {
    if (![(_MRCryptoPairingMessageProtobuf *)cryptoPairingMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  gameControllerProperties = self->_gameControllerProperties;
  if (gameControllerProperties | *(equalCopy + 23))
  {
    if (![(_MRGameControllerPropertiesMessageProtobuf *)gameControllerProperties isEqual:?])
    {
      goto LABEL_225;
    }
  }

  readyStateMessage = self->_readyStateMessage;
  if (readyStateMessage | *(equalCopy + 57))
  {
    if (![(_MRSetReadyStateMessageProtobuf *)readyStateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  connectionState = self->_connectionState;
  if (connectionState | *(equalCopy + 9))
  {
    if (![(_MRSetConnectionStateMessageProtobuf *)connectionState isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendButtonEventMessage = self->_sendButtonEventMessage;
  if (sendButtonEventMessage | *(equalCopy + 72))
  {
    if (![(_MRSendButtonEventMessageProtobuf *)sendButtonEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setHiliteModeMessage = self->_setHiliteModeMessage;
  if (setHiliteModeMessage | *(equalCopy + 84))
  {
    if (![(_MRSetHiliteModeMessageProtobuf *)setHiliteModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  wakeDeviceMessage = self->_wakeDeviceMessage;
  if (wakeDeviceMessage | *(equalCopy + 107))
  {
    if (![(_MRWakeDeviceMessageProtobuf *)wakeDeviceMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  genericMessage = self->_genericMessage;
  if (genericMessage | *(equalCopy + 24))
  {
    if (![(_MRGenericMessageProtobuf *)genericMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendPackedVirtualTouchEventMessage = self->_sendPackedVirtualTouchEventMessage;
  if (sendPackedVirtualTouchEventMessage | *(equalCopy + 78))
  {
    if (![(_MRSendPackedVirtualTouchEventMessageProtobuf *)sendPackedVirtualTouchEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  sendLyricsEventMessage = self->_sendLyricsEventMessage;
  if (sendLyricsEventMessage | *(equalCopy + 77))
  {
    if (![(_MRSendLyricsEventMessageProtobuf *)sendLyricsEventMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setNowPlayingClientMessage = self->_setNowPlayingClientMessage;
  if (setNowPlayingClientMessage | *(equalCopy + 86))
  {
    if (![(_MRSetNowPlayingClientMessageProtobuf *)setNowPlayingClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setNowPlayingPlayerMessage = self->_setNowPlayingPlayerMessage;
  if (setNowPlayingPlayerMessage | *(equalCopy + 87))
  {
    if (![(_MRSetNowPlayingPlayerMessageProtobuf *)setNowPlayingPlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  modifyOutputContextRequestMessage = self->_modifyOutputContextRequestMessage;
  if (modifyOutputContextRequestMessage | *(equalCopy + 41))
  {
    if (![(_MRAVModifyOutputContextRequestProtobuf *)modifyOutputContextRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMessage = self->_getVolumeMessage;
  if (getVolumeMessage | *(equalCopy + 32))
  {
    if (![(_MRGetVolumeMessageProtobuf *)getVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeResultMessage = self->_getVolumeResultMessage;
  if (getVolumeResultMessage | *(equalCopy + 35))
  {
    if (![(_MRGetVolumeResultMessageProtobuf *)getVolumeResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setVolumeMessage = self->_setVolumeMessage;
  if (setVolumeMessage | *(equalCopy + 90))
  {
    if (![(_MRSetVolumeMessageProtobuf *)setVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeDidChangeMessage = self->_volumeDidChangeMessage;
  if (volumeDidChangeMessage | *(equalCopy + 105))
  {
    if (![(_MRVolumeDidChangeMessageProtobuf *)volumeDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeClientMessage = self->_removeClientMessage;
  if (removeClientMessage | *(equalCopy + 66))
  {
    if (![(_MRRemoveClientMessageProtobuf *)removeClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removePlayerMessage = self->_removePlayerMessage;
  if (removePlayerMessage | *(equalCopy + 69))
  {
    if (![(_MRRemovePlayerMessageProtobuf *)removePlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateClientMessage = self->_updateClientMessage;
  if (updateClientMessage | *(equalCopy + 98))
  {
    if (![(_MRUpdateClientMessageProtobuf *)updateClientMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateContentItemMessage = self->_updateContentItemMessage;
  if (updateContentItemMessage | *(equalCopy + 100))
  {
    if (![(_MRUpdateContentItemMessageProtobuf *)updateContentItemMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateContentItemArtworkMessage = self->_updateContentItemArtworkMessage;
  if (updateContentItemArtworkMessage | *(equalCopy + 99))
  {
    if (![(_MRUpdateContentItemArtworkMessageProtobuf *)updateContentItemArtworkMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updatePlayerMessage = self->_updatePlayerMessage;
  if (updatePlayerMessage | *(equalCopy + 103))
  {
    if (![(_MRUpdatePlayerMessageProtobuf *)updatePlayerMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  promptForRouteAuthorizationMessage = self->_promptForRouteAuthorizationMessage;
  if (promptForRouteAuthorizationMessage | *(equalCopy + 55))
  {
    if (![(_MRPromptForRouteAuthorizationMessageProtobuf *)promptForRouteAuthorizationMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  promptForRouteAuthorizationResponseMessage = self->_promptForRouteAuthorizationResponseMessage;
  if (promptForRouteAuthorizationResponseMessage | *(equalCopy + 56))
  {
    if (![(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)promptForRouteAuthorizationResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  presentRouteAuthorizationStatusMessage = self->_presentRouteAuthorizationStatusMessage;
  if (presentRouteAuthorizationStatusMessage | *(equalCopy + 54))
  {
    if (![(_MRPresentRouteAuthorizationStatusMessageProtobuf *)presentRouteAuthorizationStatusMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeControlCapabilitiesMessage = self->_getVolumeControlCapabilitiesMessage;
  if (getVolumeControlCapabilitiesMessage | *(equalCopy + 30))
  {
    if (![(_MRGetVolumeControlCapabilitiesMessageProtobuf *)getVolumeControlCapabilitiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeControlCapabilitiesResultMessage = self->_getVolumeControlCapabilitiesResultMessage;
  if (getVolumeControlCapabilitiesResultMessage | *(equalCopy + 31))
  {
    if (![(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)getVolumeControlCapabilitiesResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeControlCapabilitiesDidChangeMessage = self->_volumeControlCapabilitiesDidChangeMessage;
  if (volumeControlCapabilitiesDidChangeMessage | *(equalCopy + 104))
  {
    if (![(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)volumeControlCapabilitiesDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateOutputDevicesMessage = self->_updateOutputDevicesMessage;
  if (updateOutputDevicesMessage | *(equalCopy + 102))
  {
    if (![(_MRUpdateOutputDevicesMessageProtobuf *)updateOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeOutputDevicesMessage = self->_removeOutputDevicesMessage;
  if (removeOutputDevicesMessage | *(equalCopy + 68))
  {
    if (![(_MRRemoveOutputDevicesMessageProtobuf *)removeOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  remoteTextInputMessage = self->_remoteTextInputMessage;
  if (remoteTextInputMessage | *(equalCopy + 65))
  {
    if (![(_MRRemoteTextInputMessageProtobuf *)remoteTextInputMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getRemoteTextInputSessionMessage = self->_getRemoteTextInputSessionMessage;
  if (getRemoteTextInputSessionMessage | *(equalCopy + 26))
  {
    if (![(_MRGetRemoteTextInputSessionProtobuf *)getRemoteTextInputSessionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionRequestMessage = self->_playbackSessionRequestMessage;
  if (playbackSessionRequestMessage | *(equalCopy + 50))
  {
    if (![(_MRPlaybackSessionRequestMessageProtobuf *)playbackSessionRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionResponseMessage = self->_playbackSessionResponseMessage;
  if (playbackSessionResponseMessage | *(equalCopy + 51))
  {
    if (![(_MRPlaybackSessionResponseMessageProtobuf *)playbackSessionResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setDefaultSupportedCommandsMessage = self->_setDefaultSupportedCommandsMessage;
  if (setDefaultSupportedCommandsMessage | *(equalCopy + 83))
  {
    if (![(_MRSetStateMessageProtobuf *)setDefaultSupportedCommandsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateRequestMessage = self->_playbackSessionMigrateRequestMessage;
  if (playbackSessionMigrateRequestMessage | *(equalCopy + 48))
  {
    if (![(_MRPlaybackSessionMigrateRequestMessageProtobuf *)playbackSessionMigrateRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateResponseMessage = self->_playbackSessionMigrateResponseMessage;
  if (playbackSessionMigrateResponseMessage | *(equalCopy + 49))
  {
    if (![(_MRPlaybackSessionMigrateResponseMessageProtobuf *)playbackSessionMigrateResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 21))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateBeginMessage = self->_playbackSessionMigrateBeginMessage;
  if (playbackSessionMigrateBeginMessage | *(equalCopy + 45))
  {
    if (![(_MRPlaybackSessionMigrateBeginMessageProtobuf *)playbackSessionMigrateBeginMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigrateEndMessage = self->_playbackSessionMigrateEndMessage;
  if (playbackSessionMigrateEndMessage | *(equalCopy + 46))
  {
    if (![(_MRPlaybackSessionMigrateEndMessageProtobuf *)playbackSessionMigrateEndMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateActiveSystemEndpointMessage = self->_updateActiveSystemEndpointMessage;
  if (updateActiveSystemEndpointMessage | *(equalCopy + 97))
  {
    if (![(_MRUpdateActiveSystemEndpointMessageProtobuf *)updateActiveSystemEndpointMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryModeMessage = self->_discoveryModeMessage;
  if (discoveryModeMessage | *(equalCopy + 16))
  {
    if (![(_MRSetDiscoveryModeProtobufMessage *)discoveryModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  updateEndpointsMessage = self->_updateEndpointsMessage;
  if (updateEndpointsMessage | *(equalCopy + 101))
  {
    if (![(_MRUpdateEndpointsMessageProtobuf *)updateEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  removeEndpointsMessage = self->_removeEndpointsMessage;
  if (removeEndpointsMessage | *(equalCopy + 67))
  {
    if (![(_MRRemoveEndpointsMessageProtobuf *)removeEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 95))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playerClientPropertiesMessage = self->_playerClientPropertiesMessage;
  if (playerClientPropertiesMessage | *(equalCopy + 53))
  {
    if (![(_MRPlayerClientPropertiesMessageProtobuf *)playerClientPropertiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  originClientPropertiesMessage = self->_originClientPropertiesMessage;
  if (originClientPropertiesMessage | *(equalCopy + 43))
  {
    if (![(_MROriginClientPropertiesMessageProtobuf *)originClientPropertiesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  audioFadeMessage = self->_audioFadeMessage;
  if (audioFadeMessage | *(equalCopy + 4))
  {
    if (![(_MRAudioFadeMessageProtobuf *)audioFadeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  audioFadeResponseMessage = self->_audioFadeResponseMessage;
  if (audioFadeResponseMessage | *(equalCopy + 5))
  {
    if (![(_MRAudioFadeResponseMessageProtobuf *)audioFadeResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryUpdateEndpointsMessage = self->_discoveryUpdateEndpointsMessage;
  if (discoveryUpdateEndpointsMessage | *(equalCopy + 17))
  {
    if (![(_MRDiscoveryUpdateEndpointsProtobufMessage *)discoveryUpdateEndpointsMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  discoveryUpdateOutputDevicesMessage = self->_discoveryUpdateOutputDevicesMessage;
  if (discoveryUpdateOutputDevicesMessage | *(equalCopy + 18))
  {
    if (![(_MRDiscoveryUpdateOutputDevicesProtobufMessage *)discoveryUpdateOutputDevicesMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setListeningModeMessage = self->_setListeningModeMessage;
  if (setListeningModeMessage | *(equalCopy + 85))
  {
    if (![(_MRSetListeningModeMessageProtobuf *)setListeningModeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  error = self->_error;
  if (error | *(equalCopy + 19))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_225;
    }
  }

  configureConnectionMessage = self->_configureConnectionMessage;
  if (configureConnectionMessage | *(equalCopy + 8))
  {
    if (![(_MRConfigureConnectionMessageProtobuf *)configureConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createHostedEndpointRequest = self->_createHostedEndpointRequest;
  if (createHostedEndpointRequest | *(equalCopy + 12))
  {
    if (![(_MRCreateHostedEndpointRequestProtobuf *)createHostedEndpointRequest isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createHostedEndpointResponse = self->_createHostedEndpointResponse;
  if (createHostedEndpointResponse | *(equalCopy + 13))
  {
    if (![(_MRCreateHostedEndpointResponseProtobuf *)createHostedEndpointResponse isEqual:?])
    {
      goto LABEL_225;
    }
  }

  adjustVolumeMessage = self->_adjustVolumeMessage;
  if (adjustVolumeMessage | *(equalCopy + 2))
  {
    if (![(_MRAdjustVolumeMessageProtobuf *)adjustVolumeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMutedMessage = self->_getVolumeMutedMessage;
  if (getVolumeMutedMessage | *(equalCopy + 33))
  {
    if (![(_MRGetVolumeMutedMessageProtobuf *)getVolumeMutedMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  getVolumeMutedResultMessage = self->_getVolumeMutedResultMessage;
  if (getVolumeMutedResultMessage | *(equalCopy + 34))
  {
    if (![(_MRGetVolumeMutedResultMessageProtobuf *)getVolumeMutedResultMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setVolumeMutedMessage = self->_setVolumeMutedMessage;
  if (setVolumeMutedMessage | *(equalCopy + 91))
  {
    if (![(_MRSetVolumeMutedMessageProtobuf *)setVolumeMutedMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  volumeMutedDidChangeMessage = self->_volumeMutedDidChangeMessage;
  if (volumeMutedDidChangeMessage | *(equalCopy + 106))
  {
    if (![(_MRVolumeMutedDidChangeMessageProtobuf *)volumeMutedDidChangeMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  setConversationDetectionEnabledMessage = self->_setConversationDetectionEnabledMessage;
  if (setConversationDetectionEnabledMessage | *(equalCopy + 82))
  {
    if (![(_MRSetConversationDetectionEnabledMessageProtobuf *)setConversationDetectionEnabledMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playerClientParticipantsUpdateMessage = self->_playerClientParticipantsUpdateMessage;
  if (playerClientParticipantsUpdateMessage | *(equalCopy + 52))
  {
    if (![(_MRPlayerClientParticipantsUpdateMessageProtobuf *)playerClientParticipantsUpdateMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  requestGroupSessionMessage = self->_requestGroupSessionMessage;
  if (requestGroupSessionMessage | *(equalCopy + 71))
  {
    if (![(_MRRequestGroupSessionMessageProtobuf *)requestGroupSessionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  createApplicationConnectionMessage = self->_createApplicationConnectionMessage;
  if (createApplicationConnectionMessage | *(equalCopy + 11))
  {
    if (![(_MRCreateApplicationConnectionMessageProtobuf *)createApplicationConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  applicationConnectionProtocolMessage = self->_applicationConnectionProtocolMessage;
  if (applicationConnectionProtocolMessage | *(equalCopy + 3))
  {
    if (![(_MRApplicationConnectionProtocolMessageProtobuf *)applicationConnectionProtocolMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  invalidateApplicationConnectionMessage = self->_invalidateApplicationConnectionMessage;
  if (invalidateApplicationConnectionMessage | *(equalCopy + 36))
  {
    if (![(_MRApplicationConnectionContextProtobuf *)invalidateApplicationConnectionMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  microphoneConnectionRequestMessage = self->_microphoneConnectionRequestMessage;
  if (microphoneConnectionRequestMessage | *(equalCopy + 39))
  {
    if (![(_MRMicrophoneConnectionRequestMessageProtobuf *)microphoneConnectionRequestMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  microphoneConnectionResponseMessage = self->_microphoneConnectionResponseMessage;
  if (microphoneConnectionResponseMessage | *(equalCopy + 40))
  {
    if (![(_MRMicrophoneConnectionResponseMessageProtobuf *)microphoneConnectionResponseMessage isEqual:?])
    {
      goto LABEL_225;
    }
  }

  playbackSessionMigratePostMessage = self->_playbackSessionMigratePostMessage;
  if (playbackSessionMigratePostMessage | *(equalCopy + 47))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[216] & 4) != 0)
  {
    self->_type = fromCopy[188];
    *&self->_has |= 4u;
  }

  v207 = fromCopy;
  if (*(fromCopy + 70))
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