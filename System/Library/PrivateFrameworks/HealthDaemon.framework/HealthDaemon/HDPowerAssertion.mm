@interface HDPowerAssertion
+ (HDPowerAssertion)powerAssertionWithIdentifier:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5;
- (HDPowerAssertion)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation HDPowerAssertion

+ (HDPowerAssertion)powerAssertionWithIdentifier:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a4 <= 0.0)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"HDPowerAssertion.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"timeout > 0.0"}];
  }

  AssertionID = 0;
  v11 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", v9, 0, 0, 0, a4 + 60.0, @"TimeoutActionTurnOff", &AssertionID);
  if (v11)
  {
    v12 = v11;
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *handler = 138412546;
      *&handler[4] = v9;
      *&handler[12] = 1024;
      *&handler[14] = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to create power assertion %@: %d", handler, 0x12u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [a1 alloc];
    v15 = v9;
    v16 = v10;
    if (v14)
    {
      *handler = v14;
      *&handler[8] = HDPowerAssertion;
      v14 = objc_msgSendSuper2(handler, sel_init);
      if (v14)
      {
        v17 = [(__CFString *)v15 copy];
        v18 = *(v14 + 5);
        *(v14 + 5) = v17;

        *(v14 + 6) = a4;
        v19 = [v16 copy];
        v20 = *(v14 + 3);
        *(v14 + 3) = v19;
      }
    }

    *(v14 + 2) = AssertionID;
    v21 = dispatch_get_global_queue(21, 0);
    v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v21);
    v23 = *(v14 + 2);
    *(v14 + 2) = v22;

    v24 = *(v14 + 2);
    v25 = dispatch_time(0, (*(v14 + 6) * 1000000000.0));
    dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, v14);
    v26 = *(v14 + 2);
    *handler = MEMORY[0x277D85DD0];
    *&handler[8] = 3221225472;
    *&handler[16] = __34__HDPowerAssertion__scheduleTimer__block_invoke;
    v33 = &unk_278616F38;
    objc_copyWeak(v34, &location);
    dispatch_source_set_event_handler(v26, handler);
    dispatch_resume(*(v14 + 2));
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HDPowerAssertion)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HDPowerAssertion.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"invalidated"}];
  }

  v6.receiver = self;
  v6.super_class = HDPowerAssertion;
  [(HDPowerAssertion *)&v6 dealloc];
}

- (void)invalidate
{
  v2 = 0;
  v16 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong(&self->_invalidated, &v2, 1u);
  if (!v2)
  {
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v5 = self->_timer;
      self->_timer = 0;
    }

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    v7 = IOPMAssertionRelease(self->_assertionID);
    if (v7)
    {
      v8 = v7;
      _HKInitializeLogging();
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        v12 = 138412546;
        v13 = identifier;
        v14 = 1024;
        v15 = v8;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to release power assertion %@: %d", &v12, 0x12u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __34__HDPowerAssertion__scheduleTimer__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    if (v5)
    {
      (*(v5 + 16))();
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = v4[5];
        v9 = v4[6];
        v10 = 138412546;
        v11 = v8;
        v12 = 2048;
        v13 = v9;
        _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Power assertion %@ timed out after %f seconds", &v10, 0x16u);
      }
    }

    [v4 invalidate];
  }

  v7 = *MEMORY[0x277D85DE8];

  objc_autoreleasePoolPop(v2);
}

@end