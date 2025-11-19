@interface CSSiriQueueObserver
@end

@implementation CSSiriQueueObserver

void __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == -2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained timeoutDetected];
  }
}

void __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invokeWithSignal:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke_4;
  block[3] = &unk_2784C66A0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 48);
  dispatch_async(v2, block);
}

void __39___CSSiriQueueObserver_startWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained heartBeatFiredWithQueue:*(a1 + 32)];
}

@end