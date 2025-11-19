@interface HDDevicePowerMonitor
- (BOOL)primarySourceIsCharging;
- (HDDevicePowerMonitor)init;
- (void)_queue_updatePrimaryPowerSourceState:(uint64_t)a1;
- (void)addDevicePowerObserver:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation HDDevicePowerMonitor

- (HDDevicePowerMonitor)init
{
  v21.receiver = self;
  v21.super_class = HDDevicePowerMonitor;
  v2 = [(HDDevicePowerMonitor *)&v21 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;

    _HKInitializeLogging();
    v5 = objc_alloc(MEMORY[0x277CCD738]);
    v6 = [v5 initWithName:@"device-power-observers" loggingCategory:*MEMORY[0x277CCC2B0]];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = objc_alloc_init(MEMORY[0x277D028F8]);
    monitor = v2->_monitor;
    v2->_monitor = v8;

    [(CUPowerSourceMonitor *)v2->_monitor setDispatchQueue:v2->_queue];
    [(CUPowerSourceMonitor *)v2->_monitor setChangeFlags:4];
    objc_initWeak(&location, v2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__HDDevicePowerMonitor_init__block_invoke;
    v18[3] = &unk_278629EB8;
    objc_copyWeak(&v19, &location);
    [(CUPowerSourceMonitor *)v2->_monitor setPowerSourceFoundHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __28__HDDevicePowerMonitor_init__block_invoke_2;
    v16[3] = &unk_278629EB8;
    objc_copyWeak(&v17, &location);
    [(CUPowerSourceMonitor *)v2->_monitor setPowerSourceLostHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__HDDevicePowerMonitor_init__block_invoke_3;
    v14[3] = &unk_278629EE0;
    objc_copyWeak(&v15, &location);
    [(CUPowerSourceMonitor *)v2->_monitor setPowerSourceChangedHandler:v14];
    v10 = v2->_monitor;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__HDDevicePowerMonitor_init__block_invoke_4;
    v12[3] = &unk_2786138D0;
    v13 = v2;
    [(CUPowerSourceMonitor *)v10 activateWithCompletion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __28__HDDevicePowerMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Discovered a power source: %{public}@.", buf, 0x16u);
    }

    v6 = [v4 type];
    v7 = [v6 isEqualToString:@"InternalBattery"];

    if (v7)
    {
      -[HDDevicePowerMonitor _queue_updatePrimaryPowerSourceState:](WeakRetained, [v4 powerState]);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __28__HDDevicePowerMonitor_init__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v9 = WeakRetained;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Lost a power source: %{public}@.", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __28__HDDevicePowerMonitor_init__block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Power source updated: %{public}@.", buf, 0x16u);
    }

    v6 = [v4 type];
    v7 = [v6 isEqualToString:@"InternalBattery"];

    if (v7)
    {
      -[HDDevicePowerMonitor _queue_updatePrimaryPowerSourceState:](WeakRetained, [v4 powerState]);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __28__HDDevicePowerMonitor_init__block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2B0];
  v5 = *MEMORY[0x277CCC2B0];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to activate power source monitor: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Activated power source monitoring.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CUPowerSourceMonitor *)self->_monitor invalidate];
  v3.receiver = self;
  v3.super_class = HDDevicePowerMonitor;
  [(HDDevicePowerMonitor *)&v3 dealloc];
}

- (void)addDevicePowerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  if (a4)
  {
    [(HKObserverSet *)observers registerObserver:a3 queue:?];
  }

  else
  {
    [(HKObserverSet *)observers registerObserver:a3];
  }
}

- (void)_queue_updatePrimaryPowerSourceState:(uint64_t)a1
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = (a2 < 4) & (0xCu >> (a2 & 0xF));
  if (*(a1 + 32) != v4)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HDDevicePowerMonitor__queue_updatePrimaryPowerSourceState___block_invoke;
    v6[3] = &unk_278629F08;
    v6[4] = a1;
    v7 = (a2 < 4) & (0xCu >> (a2 & 0xF));
    [v5 notifyObservers:v6];
  }
}

- (BOOL)primarySourceIsCharging
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HDDevicePowerMonitor_primarySourceIsCharging__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end