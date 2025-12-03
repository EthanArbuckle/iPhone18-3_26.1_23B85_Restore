@interface DTActivityTraceTapMemoHandlerDelegate
- (id)peekAtMemo:(id)memo;
- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver;
- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config;
- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config;
@end

@implementation DTActivityTraceTapMemoHandlerDelegate

- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver
{
  memoCopy = memo;
  receiverCopy = receiver;
  v12 = 0;
  v7 = [memoCopy getBufferWithLength:&v12];
  if (v12)
  {
    v8 = v7;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_247FB9C90;
    v10[4] = sub_247FB9CA0;
    v11 = memoCopy;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FB9CA8;
    v9[3] = &unk_278EF1D40;
    v9[4] = v10;
    [receiverCopy handleBulkData:v8 size:v12 destructor:v9];
    _Block_object_dispose(v10, 8);
  }

  if ([memoCopy finalMemo])
  {
    [receiverCopy sendHeartbeatTime:{objc_msgSend(memoCopy, "lastMachContinuousTimeSeen")}];
  }
}

- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  memoHandler = [config memoHandler];
  memoHandler[2](memoHandler, memoCopy);
}

- (void)sendHeartbeatMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  memoHandler = [config memoHandler];
  memoHandler[2](memoHandler, memoCopy);
}

- (id)peekAtMemo:(id)memo
{
  v3 = objc_opt_new();

  return v3;
}

@end