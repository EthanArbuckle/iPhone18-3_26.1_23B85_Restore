@interface IMScheduledMessageUpdatePipelineParameter
+ (id)scheduleStateWithBlastDoorMessage:(id)a3;
- (IMScheduledMessageUpdatePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMScheduledMessageUpdatePipelineParameter

- (IMScheduledMessageUpdatePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = IMScheduledMessageUpdatePipelineParameter;
  v8 = [(IMScheduledMessageUpdatePipelineParameter *)&v20 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = v11;

    v8->_isFromMe = [v7 isFromMe];
    v13 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v13;

    v15 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v15;

    v17 = [IMScheduledMessageUpdatePipelineParameter scheduleStateWithBlastDoorMessage:v6];
    scheduleState = v8->_scheduleState;
    v8->_scheduleState = v17;
  }

  return v8;
}

+ (id)scheduleStateWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if ([v3 scheduleState] == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "scheduleState")}];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMScheduledMessageUpdatePipelineParameter *)self GUID];
  v5 = [(IMScheduledMessageUpdatePipelineParameter *)self scheduleState];
  v6 = [v3 stringWithFormat:@"<IMScheduledMessageUpdatePipelineParameter %p> { guid: %@, scheduleState: %@ }", self, v4, v5];

  return v6;
}

@end