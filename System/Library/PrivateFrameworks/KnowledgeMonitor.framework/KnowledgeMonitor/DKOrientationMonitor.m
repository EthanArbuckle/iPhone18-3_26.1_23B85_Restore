@interface DKOrientationMonitor
@end

@implementation DKOrientationMonitor

void __30___DKOrientationMonitor_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30___DKOrientationMonitor_start__block_invoke_2;
  v11[3] = &unk_27856F0B0;
  v6 = *(a1 + 32);
  v12 = v4;
  v13 = v6;
  v7 = v11;
  v8 = v4;
  v9 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_4;
  block[3] = &unk_27856F178;
  v15 = v9;
  v16 = v7;
  v10 = v9;
  dispatch_async(v5, block);
}

void __30___DKOrientationMonitor_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceOrientation] - 1;
  if (v2 > 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = qword_22598EF18[v2];
  }

  v6 = [_DKOrientationMonitor _eventWithValue:v3];
  if ([*(a1 + 40) historicalStateHasChanged:?])
  {
    v4 = *(*(a1 + 40) + 160);
    v5 = [_DKOrientationMonitor _BMEventWithValue:v3];
    [v4 sendEvent:v5];
  }

  [*(a1 + 40) setCurrentEvent:v6 inferHistoricalState:1];
}

@end