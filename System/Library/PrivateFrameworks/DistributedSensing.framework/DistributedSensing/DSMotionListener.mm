@interface DSMotionListener
- (DSMotionListener)initWithDelegate:(id)delegate queue:(id)queue;
- (DSMotionListenerDelegate)delegate;
- (void)failedToStartListenerWithError:(id)error;
- (void)receivedData:(id)data fromProvider:(id)provider;
- (void)requestMotionData;
- (void)startMotionDataListenerWithOptions:(id)options;
- (void)startedListener;
- (void)stopMotionDataListener;
- (void)stoppedListener;
- (void)updateProviders:(id)providers;
@end

@implementation DSMotionListener

- (DSMotionListener)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = DSMotionListener;
  v8 = [(DSMotionListener *)&v19 init];
  if (v8)
  {
    if (queueCopy)
    {
      v9 = queueCopy;
      clientQueue = v8->_clientQueue;
      v8->_clientQueue = v9;
    }

    else
    {
      uTF8String = [@"com.apple.distributedsensing.clientQueue" UTF8String];
      clientQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create(uTF8String, clientQueue);
      v13 = v8->_clientQueue;
      v8->_clientQueue = v12;
    }

    v8->_isSubscribed = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v14 = objc_alloc_init(DSClientMotionDataOptions);
    motionDataOptions = v8->_motionDataOptions;
    v8->_motionDataOptions = v14;

    v8->_isTestMode = 0;
    v16 = +[DSMotionStateListenerProxy sharedInstance];
    sharedListener = v8->_sharedListener;
    v8->_sharedListener = v16;
  }

  return v8;
}

- (void)startMotionDataListenerWithOptions:(id)options
{
  v23[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Unsupported feature";
    v9 = MEMORY[0x277CBEAC0];
    v10 = v23;
    v11 = &v22;
LABEL_14:
    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    v13 = v8;
    v14 = 5;
LABEL_15:
    v15 = [v13 errorWithDomain:@"DSErrorDomain" code:v14 userInfo:v12];

    [(DSMotionListener *)self failedToStartListenerWithError:v15];
    goto LABEL_16;
  }

  deviceType = [optionsCopy deviceType];
  dataSubType = [optionsCopy dataSubType];
  if ((deviceType & 2) != 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Unrelated devices not supported";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v21;
    v11 = &v20;
    goto LABEL_14;
  }

  v7 = dataSubType;
  if (deviceType)
  {
    [(DSClientMotionDataOptions *)self->_motionDataOptions setDeviceType:[(DSClientMotionDataOptions *)self->_motionDataOptions deviceType]| 1];
  }

  if (v7)
  {
    [(DSClientMotionDataOptions *)self->_motionDataOptions setDataSubType:[(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]| 1];
  }

  if (![(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]|| ![(DSClientMotionDataOptions *)self->_motionDataOptions deviceType])
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Invalid options";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = v17;
    v14 = 2;
    goto LABEL_15;
  }

  if (self->_isTestMode)
  {
    [(DSListener *)self->_sharedListener setIsTestMode:1];
  }

  [(DSMotionStateListenerProxy *)self->_sharedListener startMotionStateListenerWithObserver:self];
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopMotionDataListener
{
  if ([(DSMotionListener *)self isSubscribed])
  {
    sharedListener = [(DSMotionListener *)self sharedListener];
    [sharedListener stopMotionStateListenerWithObserver:self];
  }
}

- (void)requestMotionData
{
  if (![(DSMotionListener *)self isSubscribed])
  {
    v3 = +[DSLogging sharedInstance];
    dsLogger = [v3 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSMotionListener] can't request motion data before listener is started\n", v5, 2u);
    }
  }

  [(DSMotionStateListenerProxy *)self->_sharedListener requestMotionState];
}

- (void)failedToStartListenerWithError:(id)error
{
  errorCopy = error;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DSMotionListener_failedToStartListenerWithError___block_invoke;
  v7[3] = &unk_278F85DF8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(clientQueue, v7);
}

void __51__DSMotionListener_failedToStartListenerWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dsmotion:*(a1 + 32) didFailToStartListenerWithError:*(a1 + 40)];
  }
}

- (void)startedListener
{
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DSMotionListener_startedListener__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __35__DSMotionListener_startedListener__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsSubscribed:1];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dsmotionDidStartListener:*(a1 + 32)];
  }
}

- (void)receivedData:(id)data fromProvider:(id)provider
{
  dataCopy = data;
  providerCopy = provider;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DSMotionListener_receivedData_fromProvider___block_invoke;
  block[3] = &unk_278F85C28;
  block[4] = self;
  v12 = dataCopy;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = dataCopy;
  dispatch_async(clientQueue, block);
}

void __46__DSMotionListener_receivedData_fromProvider___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSubscribed])
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 dsmotion:*(a1 + 32) didReceiveMotionData:*(a1 + 40) fromProvider:*(a1 + 48)];
    }
  }

  else
  {
    v4 = +[DSLogging sharedInstance];
    v5 = [v4 dsLogger];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "[DSMotionListner] recieved data when not subscribed\n", buf, 2u);
    }
  }
}

- (void)updateProviders:(id)providers
{
  providersCopy = providers;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__DSMotionListener_updateProviders___block_invoke;
  v7[3] = &unk_278F85DF8;
  v7[4] = self;
  v8 = providersCopy;
  v6 = providersCopy;
  dispatch_async(clientQueue, v7);
}

void __36__DSMotionListener_updateProviders___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSubscribed])
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 dsmotion:*(a1 + 32) didUpdateProviders:*(a1 + 40)];
    }
  }

  else
  {
    v4 = +[DSLogging sharedInstance];
    v5 = [v4 dsLogger];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "[DSMotionListner] recieved updated provider list when not subscribed\n", buf, 2u);
    }
  }
}

- (void)stoppedListener
{
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DSMotionListener_stoppedListener__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __35__DSMotionListener_stoppedListener__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsSubscribed:0];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dsmotionDidStopListener:*(a1 + 32)];
  }
}

- (DSMotionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end