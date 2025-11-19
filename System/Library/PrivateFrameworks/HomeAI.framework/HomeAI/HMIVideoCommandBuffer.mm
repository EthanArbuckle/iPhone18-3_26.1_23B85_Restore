@interface HMIVideoCommandBuffer
- (HMIVideoCommandBuffer)initWithMaxCapacity:(unint64_t)a3;
- (HMIVideoCommandBufferDelegate)delegate;
- (double)delay;
- (void)flush;
- (void)flushAsync;
- (void)handleBlock:(id)a3;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation HMIVideoCommandBuffer

- (HMIVideoCommandBuffer)initWithMaxCapacity:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = HMIVideoCommandBuffer;
  v4 = [(HMIVideoCommandBuffer *)&v11 init];
  if (v4)
  {
    v5 = [[HMITimeIntervalAverage alloc] initWithMaxCapacity:32];
    v6 = *(v4 + 9);
    *(v4 + 9) = v5;

    v7 = MEMORY[0x277CC08F0];
    *(v4 + 24) = *MEMORY[0x277CC08F0];
    *(v4 + 5) = *(v7 + 16);
    *(v4 + 7) = a3;
    v8 = objc_alloc_init(MEMORY[0x277CCA928]);
    v9 = *(v4 + 8);
    *(v4 + 8) = v8;
  }

  return v4;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_delegate, a3);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v6;
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(a3);
  v6 = [(HMIVideoCommandBuffer *)self condition];
  [v6 lock];

  if ([(HMIVideoCommandBuffer *)self isFull])
  {
    do
    {
      v7 = [(HMIVideoCommandBuffer *)self condition];
      [v7 wait];
    }

    while ([(HMIVideoCommandBuffer *)self isFull]);
  }

  [(HMIVideoCommandBuffer *)self setSize:[(HMIVideoCommandBuffer *)self size]+ TotalSampleSize];
  CFRetain(a3);
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(HMIVideoCommandBuffer *)self delegateQueue];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__HMIVideoCommandBuffer_handleSampleBuffer___block_invoke;
  v15 = &unk_278755A00;
  v16 = self;
  v17 = v8;
  v18 = a3;
  v19 = TotalSampleSize;
  v10 = v8;
  dispatch_async(v9, &v12);

  v11 = [(HMIVideoCommandBuffer *)self condition:v12];
  [v11 unlock];
}

void __44__HMIVideoCommandBuffer_handleSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sampleBufferDelay];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  [v2 addValue:?];

  v4 = [*(a1 + 32) delegate];
  [v4 buffer:*(a1 + 32) willHandleSampleBuffer:*(a1 + 48)];

  CFRelease(*(a1 + 48));
  v5 = [*(a1 + 32) condition];
  [v5 lock];

  [*(a1 + 32) setSize:{objc_msgSend(*(a1 + 32), "size") - *(a1 + 56)}];
  if (([*(a1 + 32) isFull] & 1) == 0)
  {
    v6 = [*(a1 + 32) condition];
    [v6 signal];
  }

  v7 = [*(a1 + 32) condition];
  [v7 unlock];
}

- (void)flushAsync
{
  v3 = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMIVideoCommandBuffer_flushAsync__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__HMIVideoCommandBuffer_flushAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 bufferWillFlush:*(a1 + 32)];
}

- (void)flush
{
  v3 = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMIVideoCommandBuffer_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __30__HMIVideoCommandBuffer_flush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 bufferWillFlush:*(a1 + 32)];
}

- (void)handleBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMIVideoCommandBuffer_handleBlock___block_invoke;
  block[3] = &unk_278754068;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (double)delay
{
  v2 = [(HMIVideoCommandBuffer *)self sampleBufferDelay];
  [v2 value];
  v4 = v3;

  return v4;
}

- (HMIVideoCommandBufferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end