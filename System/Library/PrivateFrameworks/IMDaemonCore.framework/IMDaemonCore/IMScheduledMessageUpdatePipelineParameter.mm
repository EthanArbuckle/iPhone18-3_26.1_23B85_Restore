@interface IMScheduledMessageUpdatePipelineParameter
+ (id)scheduleStateWithBlastDoorMessage:(id)message;
- (IMScheduledMessageUpdatePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMScheduledMessageUpdatePipelineParameter

- (IMScheduledMessageUpdatePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = IMScheduledMessageUpdatePipelineParameter;
  v8 = [(IMScheduledMessageUpdatePipelineParameter *)&v20 init];
  if (v8)
  {
    metadata = [messageCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = uUIDString;

    v8->_isFromMe = [dataCopy isFromMe];
    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = toIdentifier;

    v17 = [IMScheduledMessageUpdatePipelineParameter scheduleStateWithBlastDoorMessage:messageCopy];
    scheduleState = v8->_scheduleState;
    v8->_scheduleState = v17;
  }

  return v8;
}

+ (id)scheduleStateWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy scheduleState] == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "scheduleState")}];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMScheduledMessageUpdatePipelineParameter *)self GUID];
  scheduleState = [(IMScheduledMessageUpdatePipelineParameter *)self scheduleState];
  v6 = [v3 stringWithFormat:@"<IMScheduledMessageUpdatePipelineParameter %p> { guid: %@, scheduleState: %@ }", self, gUID, scheduleState];

  return v6;
}

@end