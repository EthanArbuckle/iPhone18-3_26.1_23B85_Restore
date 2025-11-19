@interface IRCMPDRFenceBridge
+ (BOOL)isAvailable;
- (IRCMPDRFenceBridge)initWithFenceIdentifier:(id)a3;
- (void)_handleFenceCompletionWithError:(id)a3;
- (void)_startSession;
- (void)clearFence;
- (void)dealloc;
- (void)endSession;
- (void)setFence:(float)a3 withCompletion:(id)a4;
- (void)startSession;
@end

@implementation IRCMPDRFenceBridge

- (IRCMPDRFenceBridge)initWithFenceIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IRCMPDRFenceBridge;
  v5 = [(IRCMPDRFenceBridge *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(IRCMPDRFenceBridge *)v5 setLock:0];
    v7 = [@"com.apple.intelligentrouting.fence." stringByAppendingString:v4];
    [(IRCMPDRFenceBridge *)v6 setFenceIdentifier:v7];

    v8 = objc_alloc_init(MEMORY[0x277CC1D10]);
    [(IRCMPDRFenceBridge *)v6 setFenceManager:v8];
  }

  return v6;
}

- (void)dealloc
{
  if ([(IRCMPDRFenceBridge *)self isFenceActive])
  {
    v3 = [(IRCMPDRFenceBridge *)self fenceManager];
    v4 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
    [v3 clearFence:v4];
  }

  if ([(IRCMPDRFenceBridge *)self isSessionStarted])
  {
    v5 = [(IRCMPDRFenceBridge *)self fenceManager];
    [v5 endSession];
  }

  v6.receiver = self;
  v6.super_class = IRCMPDRFenceBridge;
  [(IRCMPDRFenceBridge *)&v6 dealloc];
}

- (void)startSession
{
  os_unfair_lock_lock(&self->_lock);
  [(IRCMPDRFenceBridge *)self _startSession];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endSession
{
  os_unfair_lock_lock(&self->_lock);
  if (+[IRCMPDRFenceBridge isAvailable]&& [(IRCMPDRFenceBridge *)self isSessionStarted])
  {
    v3 = [(IRCMPDRFenceBridge *)self fenceManager];
    [v3 endSession];

    [(IRCMPDRFenceBridge *)self setIsSessionStarted:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFence:(float)a3 withCompletion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (+[IRCMPDRFenceBridge isAvailable]&& [(IRCMPDRFenceBridge *)self isSessionStarted])
  {
    if ([(IRCMPDRFenceBridge *)self isFenceActive])
    {
      v7 = [(IRCMPDRFenceBridge *)self fenceManager];
      v8 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
      [v7 clearFence:v8];
    }

    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
      *&v11 = a3;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_INFO, "#pdr-fence-bridge, Setting PDR fence (%@) with radius %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13 = [(IRCMPDRFenceBridge *)self fenceManager];
    v14 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__IRCMPDRFenceBridge_setFence_withCompletion___block_invoke;
    v20[3] = &unk_2797E0FC0;
    objc_copyWeak(&v21, buf);
    *&v15 = a3;
    [v13 setFence:v14 withRadius:v20 withCompletion:v15];

    [(IRCMPDRFenceBridge *)self setIsFenceActive:1];
    [(IRCMPDRFenceBridge *)self setCompletionHandler:v6];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithBool:{+[IRCMPDRFenceBridge isAvailable](IRCMPDRFenceBridge, "isAvailable")}];
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRCMPDRFenceBridge isSessionStarted](self, "isSessionStarted")}];
      *buf = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_error_impl(&dword_25543D000, v16, OS_LOG_TYPE_ERROR, "#pdr-fence-bridge, [ErrorId - Pedestrian fence set fail] Failed to set pedestrian fence, isAvailable:%@, isSessionStarted:%@", buf, 0x16u);
    }

    v6[2](v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  v17 = *MEMORY[0x277D85DE8];
}

void __46__IRCMPDRFenceBridge_setFence_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleFenceCompletionWithError:v6];
  }
}

- (void)clearFence
{
  os_unfair_lock_lock(&self->_lock);
  if ([(IRCMPDRFenceBridge *)self isFenceActive])
  {
    v3 = [(IRCMPDRFenceBridge *)self fenceManager];
    v4 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
    [v3 clearFence:v4];

    [(IRCMPDRFenceBridge *)self setIsFenceActive:0];
    [(IRCMPDRFenceBridge *)self setCompletionHandler:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_startSession
{
  if (+[IRCMPDRFenceBridge isAvailable])
  {
    if (![(IRCMPDRFenceBridge *)self isSessionStarted])
    {
      objc_initWeak(&location, self);
      v3 = [(IRCMPDRFenceBridge *)self fenceManager];
      v4 = MEMORY[0x277D85DD0];
      v5 = 3221225472;
      v6 = __35__IRCMPDRFenceBridge__startSession__block_invoke;
      v7 = &unk_2797E0FE8;
      objc_copyWeak(&v8, &location);
      [v3 startSessionWithStatusHandler:&v4];

      [(IRCMPDRFenceBridge *)self setIsSessionStarted:1, v4, v5, v6, v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __35__IRCMPDRFenceBridge__startSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "#pdr-fence-bridge, startSessionWithStatusHandler: %@", &v10, 0xCu);
    }

    if (v6)
    {
      [WeakRetained _handleFenceCompletionWithError:v6];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleFenceCompletionWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = *MEMORY[0x277D21260];
  if (v4)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 localizedDescription];
      v8 = [(IRCMPDRFenceBridge *)self fenceIdentifier];
      [(IRCMPDRFenceBridge *)v7 _handleFenceCompletionWithError:v8, v12, v6];
    }

    [(IRCMPDRFenceBridge *)self setIsSessionStarted:0];
    [(IRCMPDRFenceBridge *)self _startSession];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#pdr-fence-bridge, PDR fence completed sucessfully", v12, 2u);
  }

  v9 = [(IRCMPDRFenceBridge *)self completionHandler];

  if (v9)
  {
    v10 = [(IRCMPDRFenceBridge *)self completionHandler];
    v10[2]();

    [(IRCMPDRFenceBridge *)self setCompletionHandler:0];
  }

  [(IRCMPDRFenceBridge *)self setIsFenceActive:0];
  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isAvailable
{
  LODWORD(v2) = [MEMORY[0x277CC1D10] isAvailable];
  if (v2)
  {
    return ([MEMORY[0x277CC1D10] availableFenceTypes] >> 1) & 1;
  }

  return v2;
}

- (void)_handleFenceCompletionWithError:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_25543D000, log, OS_LOG_TYPE_ERROR, "#pdr-fence-bridge, [ErrorId - PDR fence completion error] PDR fence completed with error: %@ and identifier %@", buf, 0x16u);
}

@end