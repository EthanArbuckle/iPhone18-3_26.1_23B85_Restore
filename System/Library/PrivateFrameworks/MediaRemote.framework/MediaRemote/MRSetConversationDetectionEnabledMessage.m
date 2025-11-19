@interface MRSetConversationDetectionEnabledMessage
- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRSetConversationDetectionEnabledMessage

- (MRSetConversationDetectionEnabledMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MRSetConversationDetectionEnabledMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [v6 outputDeviceUID];
    outputDeviceUID = v7->_outputDeviceUID;
    v7->_outputDeviceUID = v8;

    v7->_enabled = [v6 enabled];
  }

  return v7;
}

@end