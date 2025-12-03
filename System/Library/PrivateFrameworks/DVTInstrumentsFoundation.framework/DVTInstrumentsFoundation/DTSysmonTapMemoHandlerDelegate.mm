@interface DTSysmonTapMemoHandlerDelegate
- (DTSysmonTapMemoHandlerDelegate)init;
- (id)peekAtMemo:(id)memo;
- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver;
- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config;
- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config;
@end

@implementation DTSysmonTapMemoHandlerDelegate

- (DTSysmonTapMemoHandlerDelegate)init
{
  v6.receiver = self;
  v6.super_class = DTSysmonTapMemoHandlerDelegate;
  v2 = [(DTSysmonTapMemoHandlerDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordDecoder = v2->_recordDecoder;
    v2->_recordDecoder = v3;
  }

  return v2;
}

- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver
{
  memoCopy = memo;
  receiverCopy = receiver;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_247F85D54;
  v17 = sub_247F85D64;
  v7 = MEMORY[0x277CCAAB0];
  samples = [memoCopy samples];
  v18 = [v7 archivedDataWithRootObject:samples requiringSecureCoding:1 error:0];

  bytes = [v14[5] bytes];
  v10 = [v14[5] length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247F85D6C;
  v12[3] = &unk_278EF1D40;
  v12[4] = &v13;
  [receiverCopy handleBulkData:bytes size:v10 destructor:v12];
  v11 = objc_opt_new();
  [v11 setKind:1024];
  [receiverCopy sendFrameMessage:v11];

  _Block_object_dispose(&v13, 8);
}

- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  configCopy = config;
  sessionHandler = [configCopy sessionHandler];

  if (sessionHandler)
  {
    v8 = objc_opt_new();
    samples = [memoCopy samples];
    [v8 setSamples:samples];

    [v8 setRecordDecoder:self->_recordDecoder];
    sessionHandler2 = [configCopy sessionHandler];
    (sessionHandler2)[2](sessionHandler2, v8);
  }
}

- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  configCopy = config;
  sessionHandler = [configCopy sessionHandler];

  if (sessionHandler)
  {
    v8 = -[DTSysmonRecordEnumerator initWithHeartbeatTime:]([DTSysmonRecordEnumerator alloc], "initWithHeartbeatTime:", [memoCopy timestamp]);
    [(DTSysmonRecordEnumerator *)v8 setRecordDecoder:self->_recordDecoder];
    sessionHandler2 = [configCopy sessionHandler];
    (sessionHandler2)[2](sessionHandler2, v8);
  }
}

- (id)peekAtMemo:(id)memo
{
  memoCopy = memo;
  v4 = objc_opt_new();
  samples = [memoCopy samples];
  v6 = [samples count];

  if (v6)
  {
    samples2 = [memoCopy samples];
    v8 = [samples2 objectAtIndexedSubscript:0];

    v9 = [v8 objectForKeyedSubscript:@"StartMachAbsTime"];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
    [v4 setObject:v11 forKeyedSubscript:@"DTTapRecordingInfo_Timestamp"];
  }

  return v4;
}

@end