@interface MRSetConversationDetectionEnabledMessage
- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetConversationDetectionEnabledMessage

- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MRSetConversationDetectionEnabledMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    outputDeviceUID = [messageCopy outputDeviceUID];
    outputDeviceUID = v7->_outputDeviceUID;
    v7->_outputDeviceUID = outputDeviceUID;

    v7->_enabled = [messageCopy enabled];
  }

  return v7;
}

@end