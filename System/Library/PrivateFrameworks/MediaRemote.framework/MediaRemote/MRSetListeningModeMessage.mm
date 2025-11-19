@interface MRSetListeningModeMessage
- (MRSetListeningModeMessage)initWithListeningMode:(id)a3 outputDeviceUID:(id)a4;
- (MRSetListeningModeMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRSetListeningModeMessage

- (MRSetListeningModeMessage)initWithListeningMode:(id)a3 outputDeviceUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_MRSetListeningModeMessageProtobuf);
  [(_MRSetListeningModeMessageProtobuf *)v8 setListeningMode:v7];

  [(_MRSetListeningModeMessageProtobuf *)v8 setOutputDeviceUID:v6];
  v9 = [(MRSetListeningModeMessage *)self initWithUnderlyingCodableMessage:v8 error:0];

  return v9;
}

- (MRSetListeningModeMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MRSetListeningModeMessage;
  v7 = [(MRProtocolMessage *)&v13 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [v6 listeningMode];
    listeningMode = v7->_listeningMode;
    v7->_listeningMode = v8;

    v10 = [v6 outputDeviceUID];
    outputDeviceUID = v7->_outputDeviceUID;
    v7->_outputDeviceUID = v10;
  }

  return v7;
}

@end