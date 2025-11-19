@interface IMPowerLog
+ (id)sharedInstance;
- (void)logEvent:(id)a3 data:(id)a4;
- (void)logMessageDelivered:(id)a3 deliveryDuration:(id)a4 messageProtocol:(id)a5;
- (void)logMessageRead:(id)a3 messageProtocol:(id)a4;
- (void)logMessageReceivedWithGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5 conversationType:(unint64_t)a6 messageType:(unint64_t)a7 messageProtocol:(id)a8;
- (void)logMessageSendFailureWithError:(id)a3;
- (void)logMessageSentWithGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5 conversationType:(unint64_t)a6 messageType:(unint64_t)a7 sendDuration:(id)a8 errorCode:(id)a9 messageProtocol:(id)a10;
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

- (void)logEvent:(id)a3 data:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (qword_1ED8CA478 != -1)
  {
    sub_1A88C0104();
  }

  if (off_1ED8CA470)
  {
    off_1ED8CA470(7, v6, v5, 0);
  }
}

- (void)logMessageSentWithGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5 conversationType:(unint64_t)a6 messageType:(unint64_t)a7 sendDuration:(id)a8 errorCode:(id)a9 messageProtocol:(id)a10
{
  v36[8] = *MEMORY[0x1E69E9840];
  v16 = @"nil";
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = @"nil";
  }

  v35[0] = @"MessageGUID";
  v35[1] = @"Source";
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = @"nil";
  }

  v36[0] = v17;
  v36[1] = v18;
  if (a5)
  {
    v16 = a5;
  }

  v36[2] = v16;
  v35[2] = @"Target";
  v35[3] = @"ConversationType";
  v19 = MEMORY[0x1E696AD98];
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [v19 numberWithUnsignedInteger:a6];
  v36[3] = v26;
  v35[4] = @"MessageType";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v28 = v27;
  if (v22)
  {
    v29 = v22;
  }

  else
  {
    v29 = &unk_1F1BFA3E8;
  }

  v36[4] = v27;
  v36[5] = v29;
  v35[5] = @"SendDuration";
  v35[6] = @"Error";
  if (v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = &unk_1F1BFA3E8;
  }

  v35[7] = @"Protocol";
  v31 = @"Unknown";
  if (v20)
  {
    v31 = v20;
  }

  v36[6] = v30;
  v36[7] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:{8, self}];

  [v34 logEvent:@"iMessageSent" data:v32];
}

- (void)logMessageReceivedWithGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5 conversationType:(unint64_t)a6 messageType:(unint64_t)a7 messageProtocol:(id)a8
{
  v28[6] = *MEMORY[0x1E69E9840];
  v14 = @"nil";
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = @"nil";
  }

  v27[0] = @"MessageGUID";
  v27[1] = @"Source";
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = @"nil";
  }

  v28[0] = v15;
  v28[1] = v16;
  if (a5)
  {
    v14 = a5;
  }

  v28[2] = v14;
  v27[2] = @"Target";
  v27[3] = @"ConversationType";
  v17 = MEMORY[0x1E696AD98];
  v18 = a8;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v17 numberWithUnsignedInteger:a6];
  v28[3] = v22;
  v27[4] = @"MessageType";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v24 = v23;
  v27[5] = @"Protocol";
  v25 = @"Unknown";
  if (v18)
  {
    v25 = v18;
  }

  v28[4] = v23;
  v28[5] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];

  [(IMPowerLog *)self logEvent:@"iMessageReceived" data:v26];
}

- (void)logMessageDelivered:(id)a3 deliveryDuration:(id)a4 messageProtocol:(id)a5
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"DeliveryDuration";
  v13[1] = @"MessageGUID";
  v14[0] = a4;
  v14[1] = a3;
  v13[2] = @"Protocol";
  v14[2] = a5;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(IMPowerLog *)self logEvent:@"iMessageDelivered Late Ack" data:v12];
}

- (void)logMessageRead:(id)a3 messageProtocol:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"MessageGUID";
  v10[1] = @"Protocol";
  v11[0] = a3;
  v11[1] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(IMPowerLog *)self logEvent:@"iMessageDelivered Late Ack" data:v9];
}

- (void)logMessageSendFailureWithError:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = @"nil";
  }

  v8 = @"Error";
  v9[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(IMPowerLog *)self logEvent:@"iMessageSent" data:v7];
}

@end