@interface MRSetListeningModeMessage
- (MRSetListeningModeMessage)initWithListeningMode:(id)mode outputDeviceUID:(id)d;
- (MRSetListeningModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetListeningModeMessage

- (MRSetListeningModeMessage)initWithListeningMode:(id)mode outputDeviceUID:(id)d
{
  dCopy = d;
  modeCopy = mode;
  v8 = objc_alloc_init(_MRSetListeningModeMessageProtobuf);
  [(_MRSetListeningModeMessageProtobuf *)v8 setListeningMode:modeCopy];

  [(_MRSetListeningModeMessageProtobuf *)v8 setOutputDeviceUID:dCopy];
  v9 = [(MRSetListeningModeMessage *)self initWithUnderlyingCodableMessage:v8 error:0];

  return v9;
}

- (MRSetListeningModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MRSetListeningModeMessage;
  v7 = [(MRProtocolMessage *)&v13 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    listeningMode = [messageCopy listeningMode];
    listeningMode = v7->_listeningMode;
    v7->_listeningMode = listeningMode;

    outputDeviceUID = [messageCopy outputDeviceUID];
    outputDeviceUID = v7->_outputDeviceUID;
    v7->_outputDeviceUID = outputDeviceUID;
  }

  return v7;
}

@end