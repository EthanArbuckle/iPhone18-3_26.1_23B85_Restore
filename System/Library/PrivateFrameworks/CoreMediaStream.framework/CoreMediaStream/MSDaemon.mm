@interface MSDaemon
- (BOOL)isBusy;
- (MSDaemon)init;
- (void)_didChangeIdleBusyState:(BOOL)state;
- (void)_hysteresisTimerDidFire:(id)fire;
- (void)releaseBusy;
- (void)releaseUIBusy;
- (void)retainBusy;
- (void)retainUIBusy;
@end

@implementation MSDaemon

- (void)_hysteresisTimerDidFire:(id)fire
{
  v8 = *MEMORY[0x277D85DE8];
  hysteresisTimer = [(MSDaemon *)self hysteresisTimer];
  [hysteresisTimer invalidate];

  [(MSDaemon *)self setHysteresisTimer:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Hysteresis-stabilized idled.", &v6, 0xCu);
  }

  [(MSDaemon *)self setStabilizedIsBusy:0];
  [(MSDaemon *)self stabilizedDidIdle];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didChangeIdleBusyState:(BOOL)state
{
  stateCopy = state;
  v14 = *MEMORY[0x277D85DE8];
  hysteresisTimer = [(MSDaemon *)self hysteresisTimer];
  v6 = hysteresisTimer;
  if (stateCopy)
  {
    [hysteresisTimer invalidate];

    [(MSDaemon *)self setHysteresisTimer:0];
    if (![(MSDaemon *)self stabilizedIsBusy])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Hysteresis-stabilized unidled.", buf, 0xCu);
      }

      [(MSDaemon *)self setStabilizedIsBusy:1];
      [(MSDaemon *)self stabilizedDidUnidle];
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {

    if (v6)
    {
      hysteresisTimer2 = [(MSDaemon *)self hysteresisTimer];
      hysteresisTimer3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [hysteresisTimer2 setFireDate:hysteresisTimer3];
    }

    else
    {
      v9 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__hysteresisTimerDidFire_ selector:0 userInfo:0 repeats:1.0];
      [(MSDaemon *)self setHysteresisTimer:v9];

      hysteresisTimer2 = [MEMORY[0x277CBEB88] currentRunLoop];
      hysteresisTimer3 = [(MSDaemon *)self hysteresisTimer];
      [hysteresisTimer2 addTimer:hysteresisTimer3 forMode:*MEMORY[0x277CBE738]];
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)releaseUIBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MSDaemon_releaseUIBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __25__MSDaemon_releaseUIBusy__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __25__MSDaemon_releaseUIBusy__block_invoke_2;
  v12[3] = &unk_278E92180;
  v12[4] = *(a1 + 32);
  v12[5] = &v17;
  v12[6] = v15;
  v12[7] = v13;
  dispatch_sync(v2, v12);

  if (*(v18 + 6))
  {
    v3 = *(a1 + 32);
    if (!v3[4] && !v3[3])
    {
      [v3 didIdle];
    }
  }

  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v10 = *(v9 + 12);
    LODWORD(v9) = *(v9 + 16);
    *buf = 138543874;
    v22 = v8;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v9;
    v11 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Releasing UI busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  v6 = *MEMORY[0x277D85DE8];
}

void *__25__MSDaemon_releaseUIBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 16))--;
  *(*(result[6] + 8) + 24) = *(result[4] + 16);
  *(*(result[7] + 8) + 24) = *(result[4] + 12);
  return result;
}

- (void)retainUIBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MSDaemon_retainUIBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __24__MSDaemon_retainUIBusy__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__MSDaemon_retainUIBusy__block_invoke_2;
  v11[3] = &unk_278E92180;
  v11[4] = *(a1 + 32);
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  dispatch_sync(v2, v11);

  if (!*(v21 + 6) && *(v17 + 6) && !*(v13 + 6))
  {
    [*(a1 + 32) didUnidle];
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = *(v8 + 12);
    LODWORD(v8) = *(v8 + 16);
    *buf = 138543874;
    v25 = v7;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    v10 = v7;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Retaining UI busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v5 = *MEMORY[0x277D85DE8];
}

void *__24__MSDaemon_retainUIBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 16))++;
  *(*(result[6] + 8) + 24) = *(result[4] + 16);
  *(*(result[7] + 8) + 24) = *(result[4] + 12);
  return result;
}

- (BOOL)isBusy
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  idleCountQueue = [(MSDaemon *)self idleCountQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__MSDaemon_isBusy__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(idleCountQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)releaseBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__MSDaemon_releaseBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __23__MSDaemon_releaseBusy__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __23__MSDaemon_releaseBusy__block_invoke_2;
  v11[3] = &unk_278E92180;
  v11[4] = *(a1 + 32);
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  dispatch_sync(v2, v11);

  if (*(v21 + 6))
  {
    if (!*(v17 + 6))
    {
      [*(a1 + 32) releasePowerAssertion];
      if (!*(v13 + 6))
      {
        [*(a1 + 32) didIdle];
      }
    }
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = *(v8 + 12);
    LODWORD(v8) = *(v8 + 16);
    *buf = 138543874;
    v25 = v7;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    v10 = v7;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Releasing busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v5 = *MEMORY[0x277D85DE8];
}

void *__23__MSDaemon_releaseBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 12))--;
  *(*(result[6] + 8) + 24) = *(result[4] + 12);
  *(*(result[7] + 8) + 24) = *(result[4] + 16);
  return result;
}

- (void)retainBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__MSDaemon_retainBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __22__MSDaemon_retainBusy__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __22__MSDaemon_retainBusy__block_invoke_2;
  v11[3] = &unk_278E92180;
  v11[4] = *(a1 + 32);
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  dispatch_sync(v2, v11);

  if (!*(v21 + 6))
  {
    if (*(v17 + 6))
    {
      [*(a1 + 32) retainPowerAssertion];
      if (!*(v13 + 6))
      {
        [*(a1 + 32) didUnidle];
      }
    }
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = *(v8 + 12);
    LODWORD(v8) = *(v8 + 16);
    *buf = 138543874;
    v25 = v7;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    v10 = v7;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Retaining busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v5 = *MEMORY[0x277D85DE8];
}

void *__22__MSDaemon_retainBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 12))++;
  *(*(result[6] + 8) + 24) = *(result[4] + 12);
  *(*(result[7] + 8) + 24) = *(result[4] + 16);
  return result;
}

- (MSDaemon)init
{
  v6.receiver = self;
  v6.super_class = MSDaemon;
  v2 = [(MSDaemon *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MSDaemon idle count queue", 0);
    idleCountQueue = v2->_idleCountQueue;
    v2->_idleCountQueue = v3;
  }

  return v2;
}

@end