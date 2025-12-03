@interface IMPowerLog
+ (id)sharedInstance;
- (void)logEvent:(id)event data:(id)data;
- (void)logMessageDelivered:(id)delivered deliveryDuration:(id)duration messageProtocol:(id)protocol;
- (void)logMessageRead:(id)read messageProtocol:(id)protocol;
- (void)logMessageReceivedWithGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier conversationType:(unint64_t)type messageType:(unint64_t)messageType messageProtocol:(id)protocol;
- (void)logMessageSendFailureWithError:(id)error;
- (void)logMessageSentWithGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier conversationType:(unint64_t)type messageType:(unint64_t)messageType sendDuration:(id)duration errorCode:(id)code messageProtocol:(id)self0;
@end

@implementation IMPowerLog

+ (id)sharedInstance
{
  if (qword_1ED8CA3E8 != -1)
  {
    sub_1A88C00F0();
  }

  v3 = qword_1ED8CA348;

  return v3;
}

- (void)logEvent:(id)event data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  if (qword_1ED8CA478 != -1)
  {
    sub_1A88C0104();
  }

  if (off_1ED8CA470)
  {
    off_1ED8CA470(7, eventCopy, dataCopy, 0);
  }
}

- (void)logMessageSentWithGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier conversationType:(unint64_t)type messageType:(unint64_t)messageType sendDuration:(id)duration errorCode:(id)code messageProtocol:(id)self0
{
  v36[8] = *MEMORY[0x1E69E9840];
  toIdentifierCopy = @"nil";
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"nil";
  }

  v35[0] = @"MessageGUID";
  v35[1] = @"Source";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = @"nil";
  }

  v36[0] = dCopy;
  v36[1] = identifierCopy;
  if (toIdentifier)
  {
    toIdentifierCopy = toIdentifier;
  }

  v36[2] = toIdentifierCopy;
  v35[2] = @"Target";
  v35[3] = @"ConversationType";
  v19 = MEMORY[0x1E696AD98];
  protocolCopy = protocol;
  codeCopy = code;
  durationCopy = duration;
  toIdentifierCopy2 = toIdentifier;
  identifierCopy2 = identifier;
  dCopy2 = d;
  v26 = [v19 numberWithUnsignedInteger:type];
  v36[3] = v26;
  v35[4] = @"MessageType";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:messageType];
  v28 = v27;
  if (durationCopy)
  {
    v29 = durationCopy;
  }

  else
  {
    v29 = &unk_1F1BFA3E8;
  }

  v36[4] = v27;
  v36[5] = v29;
  v35[5] = @"SendDuration";
  v35[6] = @"Error";
  if (codeCopy)
  {
    v30 = codeCopy;
  }

  else
  {
    v30 = &unk_1F1BFA3E8;
  }

  v35[7] = @"Protocol";
  v31 = @"Unknown";
  if (protocolCopy)
  {
    v31 = protocolCopy;
  }

  v36[6] = v30;
  v36[7] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:{8, self}];

  [v34 logEvent:@"iMessageSent" data:v32];
}

- (void)logMessageReceivedWithGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier conversationType:(unint64_t)type messageType:(unint64_t)messageType messageProtocol:(id)protocol
{
  v28[6] = *MEMORY[0x1E69E9840];
  toIdentifierCopy = @"nil";
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"nil";
  }

  v27[0] = @"MessageGUID";
  v27[1] = @"Source";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = @"nil";
  }

  v28[0] = dCopy;
  v28[1] = identifierCopy;
  if (toIdentifier)
  {
    toIdentifierCopy = toIdentifier;
  }

  v28[2] = toIdentifierCopy;
  v27[2] = @"Target";
  v27[3] = @"ConversationType";
  v17 = MEMORY[0x1E696AD98];
  protocolCopy = protocol;
  toIdentifierCopy2 = toIdentifier;
  identifierCopy2 = identifier;
  dCopy2 = d;
  v22 = [v17 numberWithUnsignedInteger:type];
  v28[3] = v22;
  v27[4] = @"MessageType";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:messageType];
  v24 = v23;
  v27[5] = @"Protocol";
  v25 = @"Unknown";
  if (protocolCopy)
  {
    v25 = protocolCopy;
  }

  v28[4] = v23;
  v28[5] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];

  [(IMPowerLog *)self logEvent:@"iMessageReceived" data:v26];
}

- (void)logMessageDelivered:(id)delivered deliveryDuration:(id)duration messageProtocol:(id)protocol
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"DeliveryDuration";
  v13[1] = @"MessageGUID";
  v14[0] = duration;
  v14[1] = delivered;
  v13[2] = @"Protocol";
  v14[2] = protocol;
  v8 = MEMORY[0x1E695DF20];
  protocolCopy = protocol;
  durationCopy = duration;
  deliveredCopy = delivered;
  v12 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(IMPowerLog *)self logEvent:@"iMessageDelivered Late Ack" data:v12];
}

- (void)logMessageRead:(id)read messageProtocol:(id)protocol
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"MessageGUID";
  v10[1] = @"Protocol";
  v11[0] = read;
  v11[1] = protocol;
  v6 = MEMORY[0x1E695DF20];
  protocolCopy = protocol;
  readCopy = read;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(IMPowerLog *)self logEvent:@"iMessageDelivered Late Ack" data:v9];
}

- (void)logMessageSendFailureWithError:(id)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = @"nil";
  }

  v8 = @"Error";
  v9[0] = errorCopy;
  v5 = MEMORY[0x1E695DF20];
  errorCopy2 = error;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(IMPowerLog *)self logEvent:@"iMessageSent" data:v7];
}

@end