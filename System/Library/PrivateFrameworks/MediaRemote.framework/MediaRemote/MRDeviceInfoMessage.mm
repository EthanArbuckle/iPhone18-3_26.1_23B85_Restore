@interface MRDeviceInfoMessage
- (MRDeviceInfo)deviceInfo;
- (MRDeviceInfoMessage)initWithDeviceInfo:(id)info;
- (MRSupportedProtocolMessages)supportedProtocolMessages;
- (uint64_t)_lastSupportedMessageType;
- (void)supportedProtocolMessages;
@end

@implementation MRDeviceInfoMessage

- (MRDeviceInfoMessage)initWithDeviceInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = MRDeviceInfoMessage;
  v5 = [(MRProtocolMessage *)&v14 init];
  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [infoCopy setBundleIdentifier:bundleIdentifier];

    infoDictionary = [mainBundle infoDictionary];
    v9 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    [infoCopy setBundleVersion:v9];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if ([processName isEqualToString:@"tvremoted"])
    {
      [infoCopy setBundleIdentifier:@"com.apple.tvremotecore.xpc"];
    }

    protobuf = [infoCopy protobuf];
    [protobuf setLastSupportedMessageType:139];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:protobuf];
  }

  return v5;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = [MRDeviceInfo alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [(MRDeviceInfo *)v3 initWithProtobuf:underlyingCodableMessage];

  [(MRDeviceInfo *)v5 setLastSupportedProtocolMessageType:[(MRDeviceInfoMessage *)self _lastSupportedMessageType]];

  return v5;
}

- (MRSupportedProtocolMessages)supportedProtocolMessages
{
  supportedProtocolMessages = self->_supportedProtocolMessages;
  if (!supportedProtocolMessages)
  {
    v6[1] = v2;
    v7 = v3;
    [(MRDeviceInfoMessage *)self supportedProtocolMessages];
    supportedProtocolMessages = v6[0];
    v3 = v7;
  }

  return supportedProtocolMessages;
}

- (uint64_t)_lastSupportedMessageType
{
  selfCopy = self;
  if (self)
  {
    underlyingCodableMessage = [self underlyingCodableMessage];
    if ([underlyingCodableMessage hasLastSupportedMessageType])
    {
      underlyingCodableMessage2 = [selfCopy underlyingCodableMessage];
      selfCopy = [underlyingCodableMessage2 lastSupportedMessageType];
    }

    else
    {
      selfCopy = 36;
    }
  }

  return selfCopy;
}

- (void)supportedProtocolMessages
{
  v5 = [[MRSupportedProtocolMessages alloc] initWithLastSupportedMessageType:[(MRDeviceInfoMessage *)self _lastSupportedMessageType]];
  v6 = *a2;
  *a2 = v5;

  *a3 = *a2;
}

@end