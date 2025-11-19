@interface DTActivityTraceTapMemoHandlerDelegate
- (id)peekAtMemo:(id)a3;
- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4;
- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4;
- (void)sendHeartbeatMemo:(id)a3 toClientUsingConfig:(id)a4;
@end

@implementation DTActivityTraceTapMemoHandlerDelegate

- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [v5 getBufferWithLength:&v12];
  if (v12)
  {
    v8 = v7;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_247FB9C90;
    v10[4] = sub_247FB9CA0;
    v11 = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FB9CA8;
    v9[3] = &unk_278EF1D40;
    v9[4] = v10;
    [v6 handleBulkData:v8 size:v12 destructor:v9];
    _Block_object_dispose(v10, 8);
  }

  if ([v5 finalMemo])
  {
    [v6 sendHeartbeatTime:{objc_msgSend(v5, "lastMachContinuousTimeSeen")}];
  }
}

- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4
{
  v5 = a3;
  v6 = [a4 memoHandler];
  v6[2](v6, v5);
}

- (void)sendHeartbeatMemo:(id)a3 toClientUsingConfig:(id)a4
{
  v5 = a3;
  v6 = [a4 memoHandler];
  v6[2](v6, v5);
}

- (id)peekAtMemo:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

@end