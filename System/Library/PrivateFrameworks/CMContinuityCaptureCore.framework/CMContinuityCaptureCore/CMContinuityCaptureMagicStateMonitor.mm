@interface CMContinuityCaptureMagicStateMonitor
- (BOOL)magic;
- (CMContinuityCaptureMagicStateMonitor)initWithDevice:(id)device;
- (id)description;
- (void)holdMagicStateAssertion:(int64_t)assertion;
- (void)holdNonMagicStateAssertion:(int64_t)assertion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseMagicStateAssertion:(int64_t)assertion stateTransitionCoolDownTime:(unsigned int)time;
- (void)releaseNonMagicStateAssertion:(int64_t)assertion stateTransitionCoolDownTime:(unsigned int)time;
- (void)updateState;
@end

@implementation CMContinuityCaptureMagicStateMonitor

- (BOOL)magic
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  magic = selfCopy->_magic;
  objc_sync_exit(selfCopy);

  return magic;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if (([pathCopy isEqualToString:@"wired"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"nearby") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"usable"))
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__CMContinuityCaptureMagicStateMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v13[3] = &unk_278D5C080;
    objc_copyWeak(&v14, &location);
    dispatch_async(queue, v13);
    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __87__CMContinuityCaptureMagicStateMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateState];
    WeakRetained = v2;
  }
}

- (void)holdMagicStateAssertion:(int64_t)assertion
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CMContinuityCaptureMagicStateMonitor_holdMagicStateAssertion___block_invoke;
  v6[3] = &unk_278D5C7A0;
  v6[4] = self;
  v6[5] = assertion;
  dispatch_async_and_wait(queue, v6);
}

uint64_t __64__CMContinuityCaptureMagicStateMonitor_holdMagicStateAssertion___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Hold magic assertion of type:%d", &v12, 0x12u);
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v5 addObject:v6];

  v7 = *(*(a1 + 32) + 40);
  if (v7)
  {
    dispatch_block_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  result = [CMContinuityCaptureMagicStateMonitor shouldForceMagicForAssertionType:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) willChangeValueForKey:@"magic"];
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    *(*(a1 + 32) + 8) = 1;
    objc_sync_exit(v11);

    return [*(a1 + 32) didChangeValueForKey:@"magic"];
  }

  return result;
}

- (void)holdNonMagicStateAssertion:(int64_t)assertion
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CMContinuityCaptureMagicStateMonitor_holdNonMagicStateAssertion___block_invoke;
  v6[3] = &unk_278D5C7A0;
  v6[4] = self;
  v6[5] = assertion;
  dispatch_async_and_wait(queue, v6);
}

uint64_t __67__CMContinuityCaptureMagicStateMonitor_holdNonMagicStateAssertion___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Hold non-magic assertion of type:%d", &v12, 0x12u);
  }

  v5 = *(*(a1 + 32) + 24);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v5 addObject:v6];

  v7 = *(*(a1 + 32) + 32);
  if (v7)
  {
    dispatch_block_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
  }

  result = [CMContinuityCaptureMagicStateMonitor shouldForceNonMagicForAssertionType:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) willChangeValueForKey:@"magic"];
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    *(*(a1 + 32) + 8) = 0;
    objc_sync_exit(v11);

    return [*(a1 + 32) didChangeValueForKey:@"magic"];
  }

  return result;
}

- (void)releaseMagicStateAssertion:(int64_t)assertion stateTransitionCoolDownTime:(unsigned int)time
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__CMContinuityCaptureMagicStateMonitor_releaseMagicStateAssertion_stateTransitionCoolDownTime___block_invoke;
  block[3] = &unk_278D5C7C8;
  objc_copyWeak(v9, &location);
  v9[1] = assertion;
  block[4] = self;
  timeCopy = time;
  dispatch_async(queue, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __95__CMContinuityCaptureMagicStateMonitor_releaseMagicStateAssertion_stateTransitionCoolDownTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 48);
        *buf = 138543618;
        v18 = v7;
        v19 = 1024;
        v20 = v8;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Release magic assertion of type:%d", buf, 0x12u);
      }

      v9 = *(v3 + 2);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      [v9 removeObject:v10];

      if (![*(v3 + 2) count])
      {
        v11 = *(v3 + 5);
        if (v11)
        {
          dispatch_block_cancel(v11);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __95__CMContinuityCaptureMagicStateMonitor_releaseMagicStateAssertion_stateTransitionCoolDownTime___block_invoke_5;
        block[3] = &unk_278D5C080;
        objc_copyWeak(&v16, (a1 + 40));
        v12 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
        v13 = *(v3 + 5);
        *(v3 + 5) = v12;

        v14 = dispatch_time(0, 1000000000 * *(a1 + 56));
        dispatch_after(v14, *(v3 + 6), *(v3 + 5));
        objc_destroyWeak(&v16);
      }
    }
  }
}

void __95__CMContinuityCaptureMagicStateMonitor_releaseMagicStateAssertion_stateTransitionCoolDownTime___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[5];
    WeakRetained[5] = 0;
    v3 = WeakRetained;

    [v3 updateState];
    WeakRetained = v3;
  }
}

- (void)releaseNonMagicStateAssertion:(int64_t)assertion stateTransitionCoolDownTime:(unsigned int)time
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__CMContinuityCaptureMagicStateMonitor_releaseNonMagicStateAssertion_stateTransitionCoolDownTime___block_invoke;
  block[3] = &unk_278D5C7C8;
  objc_copyWeak(v9, &location);
  v9[1] = assertion;
  block[4] = self;
  timeCopy = time;
  dispatch_async(queue, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __98__CMContinuityCaptureMagicStateMonitor_releaseNonMagicStateAssertion_stateTransitionCoolDownTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 48);
        *buf = 138543618;
        v18 = v7;
        v19 = 1024;
        v20 = v8;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Release non-magic assertion of type:%d", buf, 0x12u);
      }

      v9 = *(v3 + 3);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      [v9 removeObject:v10];

      if (![*(v3 + 3) count])
      {
        v11 = *(v3 + 4);
        if (v11)
        {
          dispatch_block_cancel(v11);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__CMContinuityCaptureMagicStateMonitor_releaseNonMagicStateAssertion_stateTransitionCoolDownTime___block_invoke_6;
        block[3] = &unk_278D5C080;
        objc_copyWeak(&v16, (a1 + 40));
        v12 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
        v13 = *(v3 + 4);
        *(v3 + 4) = v12;

        v14 = dispatch_time(0, 1000000000 * *(a1 + 56));
        dispatch_after(v14, *(v3 + 6), *(v3 + 4));
        objc_destroyWeak(&v16);
      }
    }
  }
}

void __98__CMContinuityCaptureMagicStateMonitor_releaseNonMagicStateAssertion_stateTransitionCoolDownTime___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
    v3 = WeakRetained;

    [v3 updateState];
    WeakRetained = v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v7 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, WeakRetained, self];

  return v7;
}

- (CMContinuityCaptureMagicStateMonitor)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureMagicStateMonitor;
  v5 = [(CMContinuityCaptureMagicStateMonitor *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.continuitycapture.magicstatemonitor", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    objc_storeWeak(&v5->_device, deviceCopy);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeMagicStateAssertions = v5->_activeMagicStateAssertions;
    v5->_activeMagicStateAssertions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeNonMagicStateAssertions = v5->_activeNonMagicStateAssertions;
    v5->_activeNonMagicStateAssertions = v11;

    v5->_skipNearByCheck = 0;
    v13 = v5;
  }

  return v5;
}

- (void)updateState
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(self->_queue);
    if ([WeakRetained usable] && ((objc_msgSend(WeakRetained, "nearby") & 1) != 0 || self->_skipNearByCheck || objc_msgSend(WeakRetained, "wired")))
    {
      if ([WeakRetained wired])
      {
        wifiP2pActive = 1;
      }

      else
      {
        wifiP2pActive = [WeakRetained wifiP2pActive];
      }
    }

    else
    {
      wifiP2pActive = 0;
    }

    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      usable = [WeakRetained usable];
      nearby = [WeakRetained nearby];
      wired = [WeakRetained wired];
      skipNearByCheck = self->_skipNearByCheck;
      magic = self->_magic;
      v14 = 138544898;
      selfCopy = self;
      v16 = 1024;
      v17 = wifiP2pActive;
      v18 = 1024;
      v19 = usable;
      v20 = 1024;
      v21 = nearby;
      v22 = 1024;
      v23 = wired;
      v24 = 1024;
      v25 = skipNearByCheck;
      v26 = 1024;
      v27 = magic;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ magic:%d (usable:%d nearby:%d wired:%d skipNearByCheck:%d) reported magic:%d", &v14, 0x30u);
    }

    if (wifiP2pActive)
    {
      if ([(NSMutableSet *)self->_activeNonMagicStateAssertions count]|| self->_magicTransitionCoolDownBlock)
      {
        goto LABEL_20;
      }
    }

    else if ([(NSMutableSet *)self->_activeMagicStateAssertions count]|| self->_nonMagicTransitionCoolDownBlock)
    {
      goto LABEL_20;
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v12 = selfCopy2->_magic;
    objc_sync_exit(selfCopy2);

    if (v12 != wifiP2pActive)
    {
      [(CMContinuityCaptureMagicStateMonitor *)selfCopy2 willChangeValueForKey:@"magic"];
      v13 = selfCopy2;
      objc_sync_enter(v13);
      selfCopy2->_magic = wifiP2pActive;
      objc_sync_exit(v13);

      [(CMContinuityCaptureMagicStateMonitor *)v13 didChangeValueForKey:@"magic"];
    }
  }

LABEL_20:
}

@end