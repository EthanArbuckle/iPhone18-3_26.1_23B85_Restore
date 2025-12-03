@interface BTLEScanner
+ (id)sharedBTLEScanner;
- (BTLEScanner)init;
- (void)_checkCanScan;
- (void)_flushQueue;
- (void)_stopScan;
- (void)_stopTimer;
- (void)didUpdateBTLEState:(int64_t)state;
- (void)setScanTimer:(uint64_t)timer;
- (void)timerDidFire:(id)fire;
@end

@implementation BTLEScanner

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    scanTimer = self->_scanTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    scanTimer = 0;
  }

  v5 = fireCopy;
  if (scanTimer == fireCopy)
  {
    [(BTLEScanner *)self _stopScan];
    [(BTLEScanner *)self _flushQueue];
    v5 = fireCopy;
  }
}

- (void)_stopScan
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    [(BTLEScanner *)self _stopTimer];
    cubleScanner = self->_cubleScanner;
    if (cubleScanner)
    {
      [(CUBLEScanner *)cubleScanner invalidate];

      objc_storeStrong(&self->_cubleScanner, 0);
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);

    [0 _stopTimer];
  }
}

- (void)_checkCanScan
{
  selfCopy = self;
  if (self)
  {
    self = self->_scanQueue;
  }

  if ([(BTLEScanner *)self countForQueue:@"ScanQueue"])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    if (selfCopy)
    {
      scanQueue = selfCopy->_scanQueue;
    }

    else
    {
      scanQueue = 0;
    }

    v4 = scanQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __28__BTLEScanner__checkCanScan__block_invoke;
    v29[3] = &unk_278675B00;
    v29[4] = &v30;
    [(HMDAccessoryQueues *)v4 enumerateQueue:@"ScanQueue" enumerateAccessory:v29];

    v5 = objc_alloc(MEMORY[0x277D0F920]);
    v6 = [v5 initWithTimeInterval:1 options:v31[3]];
    [(BTLEScanner *)selfCopy setScanTimer:v6];

    if (selfCopy)
    {
      scanTimer = selfCopy->_scanTimer;
    }

    else
    {
      scanTimer = 0;
    }

    v8 = scanTimer;
    [(HMFTimer *)v8 setDelegate:selfCopy];

    if (selfCopy)
    {
      v9 = selfCopy->_workQueue;
      v10 = selfCopy->_scanTimer;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v10;
    [(HMFTimer *)v11 setDelegateQueue:v9];

    if (selfCopy)
    {
      v12 = selfCopy->_scanTimer;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [(HMFTimer *)v13 resume];

    objc_initWeak(&location, selfCopy);
    v14 = objc_alloc_init(MEMORY[0x277D02838]);
    v15 = v14;
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_cubleScanner, v14);

      cubleScanner = selfCopy->_cubleScanner;
    }

    else
    {

      cubleScanner = 0;
    }

    v17 = cubleScanner;
    [(CUBLEScanner *)v17 setScanFlags:64];

    if (IsAppleTV())
    {
      if (selfCopy)
      {
        v18 = selfCopy->_cubleScanner;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [(CUBLEScanner *)v19 setScanFlags:[(CUBLEScanner *)v19 scanFlags]| 1];
    }

    if (selfCopy)
    {
      v20 = selfCopy->_cubleScanner;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    [(CUBLEScanner *)v21 setChangeFlags:0];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __28__BTLEScanner__checkCanScan__block_invoke_2;
    v26[3] = &unk_278675B50;
    objc_copyWeak(&v27, &location);
    if (selfCopy)
    {
      v22 = selfCopy->_cubleScanner;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [(CUBLEScanner *)v23 setDeviceFoundHandler:v26];

    if (selfCopy)
    {
      v24 = selfCopy->_cubleScanner;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    [(CUBLEScanner *)v25 activate];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v30, 8);
  }

  else
  {

    [(BTLEScanner *)selfCopy _stopScan];
  }
}

uint64_t __28__BTLEScanner__checkCanScan__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

- (void)setScanTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 16), a2);
  }
}

void __28__BTLEScanner__checkCanScan__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
  }

  else
  {
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__BTLEScanner__checkCanScan__block_invoke_3;
  v8[3] = &unk_27868A750;
  v8[4] = WeakRetained;
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void __28__BTLEScanner__checkCanScan__block_invoke_3(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__79670;
  v24 = __Block_byref_object_dispose__79671;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = v2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __28__BTLEScanner__checkCanScan__block_invoke_20;
  v11 = &unk_278675B28;
  v4 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v4;
  v14 = &v16;
  v15 = &v20;
  [v3 enumerateQueue:@"ScanQueue" enumerateAccessory:&v8];

  v5 = v21;
  if (v21[5])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[5];
    }

    v7 = v6;
    [v7 removeAccessory:{v5[5], v8, v9, v10, v11, v12}];

    [v21[5] scanningCompleteWithAccessoryFound:1 suspended:*(v17 + 24)];
    [*(a1 + 32) _checkCanScan];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

uint64_t __28__BTLEScanner__checkCanScan__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v11 = v26 = v4;
    [v6 connectivityInfo];
    v12 = v25 = v7;
    v13 = [v12 woBLEInfo];
    v14 = [v13 bleIdentifier];
    v15 = [*(a1 + 40) lgBTAddress];
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Scan result -- looking for %@ found %@", buf, 0x20u);

    v7 = v25;
    v4 = v26;
  }

  objc_autoreleasePoolPop(v8);
  v16 = [v6 connectivityInfo];
  v17 = [v16 woBLEInfo];
  v18 = [v17 bleIdentifier];
  v19 = [*(a1 + 40) lgBTAddress];
  IsReversed = HMFDataIsReversed();

  if (IsReversed)
  {
    v21 = [*(a1 + 40) manufacturerData];
    v22 = [v21 bytes];

    if (*(v22 + 5) == 18)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  }

  v23 = *MEMORY[0x277D85DE8];
  return IsReversed;
}

- (void)_stopTimer
{
  if (self)
  {
    [(HMFTimer *)self->_scanTimer cancel];

    objc_storeStrong(&self->_scanTimer, 0);
  }

  else
  {

    [0 cancel];
  }
}

- (void)_flushQueue
{
  v3 = 0;
  if (!self)
  {
    goto LABEL_5;
  }

LABEL_2:
  for (i = self->_scanQueue; ; i = 0)
  {
    v5 = [(HMDAccessoryQueues *)i popAccessoryFromQueue:@"ScanQueue"];

    if (!v5)
    {
      break;
    }

    [v5 scanningCompleteWithAccessoryFound:0 suspended:0];
    v3 = v5;
    if (self)
    {
      goto LABEL_2;
    }

LABEL_5:
    ;
  }
}

- (BTLEScanner)init
{
  v13.receiver = self;
  v13.super_class = BTLEScanner;
  v2 = [(BTLEScanner *)&v13 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    getInstance = [MEMORY[0x277CFEA60] getInstance];
    centralManager = v2->_centralManager;
    v2->_centralManager = getInstance;

    v10 = objc_alloc_init(HMDAccessoryQueues);
    scanQueue = v2->_scanQueue;
    v2->_scanQueue = v10;

    [(HMDAccessoryQueues *)v2->_scanQueue createQueue:@"ScanQueue"];
    [(HAPBTLECentralManager *)v2->_centralManager registerCentralManagerDelegate:v2];
  }

  return v2;
}

- (void)didUpdateBTLEState:(int64_t)state
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__BTLEScanner_didUpdateBTLEState___block_invoke;
  v4[3] = &unk_27868A0D0;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(workQueue, v4);
}

uint64_t __34__BTLEScanner_didUpdateBTLEState___block_invoke(uint64_t result)
{
  if (*(result + 40) != 5)
  {
    v2 = result;
    [*(result + 32) _stopScan];
    v3 = *(v2 + 32);

    return [v3 _flushQueue];
  }

  return result;
}

+ (id)sharedBTLEScanner
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__BTLEScanner_sharedBTLEScanner__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (sharedBTLEScanner_onceToken != -1)
  {
    dispatch_once(&sharedBTLEScanner_onceToken, block);
  }

  v1 = sharedBTLEScanner_sharedScanner;

  return v1;
}

void __32__BTLEScanner_sharedBTLEScanner__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedBTLEScanner_sharedScanner;
  sharedBTLEScanner_sharedScanner = v1;
}

@end