@interface MRDeviceInfoMessage
- (MRDeviceInfo)deviceInfo;
- (MRDeviceInfoMessage)initWithDeviceInfo:(id)a3;
- (MRSupportedProtocolMessages)supportedProtocolMessages;
- (uint64_t)_lastSupportedMessageType;
- (void)supportedProtocolMessages;
@end

@implementation MRDeviceInfoMessage

- (MRDeviceInfoMessage)initWithDeviceInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRDeviceInfoMessage;
  v5 = [(MRProtocolMessage *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    [v4 setBundleIdentifier:v7];

    v8 = [v6 infoDictionary];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    [v4 setBundleVersion:v9];

    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 processName];

    if ([v11 isEqualToString:@"tvremoted"])
    {
      [v4 setBundleIdentifier:@"com.apple.tvremotecore.xpc"];
    }

    v12 = [v4 protobuf];
    [v12 setLastSupportedMessageType:139];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v12];
  }

  return v5;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = [MRDeviceInfo alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [(MRDeviceInfo *)v3 initWithProtobuf:v4];

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
  v1 = a1;
  if (a1)
  {
    v2 = [a1 underlyingCodableMessage];
    if ([v2 hasLastSupportedMessageType])
    {
      v3 = [v1 underlyingCodableMessage];
      v1 = [v3 lastSupportedMessageType];
    }

    else
    {
      v1 = 36;
    }
  }

  return v1;
}

- (void)supportedProtocolMessages
{
  v5 = [[MRSupportedProtocolMessages alloc] initWithLastSupportedMessageType:[(MRDeviceInfoMessage *)a1 _lastSupportedMessageType]];
  v6 = *a2;
  *a2 = v5;

  *a3 = *a2;
}

@end