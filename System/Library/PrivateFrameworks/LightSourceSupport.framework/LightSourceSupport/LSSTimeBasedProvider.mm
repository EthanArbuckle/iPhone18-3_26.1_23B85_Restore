@interface LSSTimeBasedProvider
- (LSSProviderDelegate)delegate;
- (LSSTimeBasedProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (void)_animateToNewLightDirection;
- (void)_restart;
- (void)_scheduleNextUpdate;
- (void)_tickAnimation;
- (void)invalidate;
@end

@implementation LSSTimeBasedProvider

- (LSSTimeBasedProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = LSSTimeBasedProvider;
  v9 = [(LSSTimeBasedProvider *)&v23 init];
  if (v9)
  {
    v11 = +[LSSSettings currentSettings];
    v12 = [(LSSSettings *)v11 doubleForKey:?];

    v9->_updatesPerCycle = fmax(v12, 1.0);
    v13 = +[LSSSettings currentSettings];
    v9->_cycleInterval = [(LSSSettings *)v13 doubleForKey:?];

    v9->_animationInterval = 0.0333333333;
    objc_storeStrong(&v9->_queue, queue);
    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v14;

    [(NSOperationQueue *)v9->_operationQueue setUnderlyingQueue:v9->_queue];
    objc_storeWeak(&v9->_delegate, delegateCopy);
    [(LSSTimeBasedProvider *)v9 _restart];
    objc_initWeak(&location, v9);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277CBE780];
    v18 = v9->_operationQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__LSSTimeBasedProvider_initWithQueue_delegate___block_invoke;
    v20[3] = &unk_279812A88;
    objc_copyWeak(&v21, &location);
    v19 = [defaultCenter addObserverForName:v17 object:0 queue:v18 usingBlock:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)invalidate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

void __43__LSSTimeBasedProvider__scheduleNextUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(LSSTimeBasedProvider *)WeakRetained _animateToNewLightDirection];
    [(LSSTimeBasedProvider *)v2 _scheduleNextUpdate];
    WeakRetained = v2;
  }
}

void __51__LSSTimeBasedProvider__animateToNewLightDirection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(LSSTimeBasedProvider *)WeakRetained _tickAnimation];
    WeakRetained = v2;
  }
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_restart
{
  v64 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_3_1();
    if (!v3)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    v4 = _MergedGlobals_16;
    if (os_log_type_enabled(_MergedGlobals_16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_255E8B000, v4, OS_LOG_TYPE_DEFAULT, "restart", &buf, 2u);
    }

    v5 = *(self + 40);
    if (v5)
    {
      dispatch_block_cancel(v5);
      v6 = *(self + 40);
      *(self + 40) = 0;
    }

    v7 = *(self + 32);
    if (v7)
    {
      dispatch_block_cancel(v7);
      v8 = *(self + 32);
      *(self + 32) = 0;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = *(self + 48);
    *(self + 48) = currentCalendar;

    v11 = [MEMORY[0x277CBEAA8] now];
    OUTLINED_FUNCTION_3_1();
    if (!v3)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    if (OUTLINED_FUNCTION_2_2())
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      OUTLINED_FUNCTION_1_6();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }

    OUTLINED_FUNCTION_3_1();
    if (!v3)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    if (OUTLINED_FUNCTION_2_2())
    {
      v17 = *(self + 48);
      v18 = v1;
      timeZone = [v17 timeZone];
      v20 = [timeZone description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      OUTLINED_FUNCTION_1_6();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    }

    v55 = 0;
    *&buf = 0;
    v53 = 0;
    v54 = 0;
    [*(self + 48) getHour:&buf minute:&v55 second:&v54 nanosecond:&v53 fromDate:v11];
    v26 = buf;
    +[LSSTimeBasedProvider secondsInHour];
    v28 = v27;
    v29 = v55;
    +[LSSTimeBasedProvider secondsInMinute];
    v32 = __sincos_stret(6.28318531 / *(self + 88) * floor((v30 * v29 + v26 * v28 + v54 + v53 / 1000000000.0) / (*(self + 96) / *(self + 88))));
    *&v31 = v32.__cosval;
    *(&v31 + 1) = *&v32.__sinval;
    *(self + 64) = v31;
    [[LSSVector2SmoothFilter alloc] initWithVector:?];
    v33 = *(self + 80);
    *(self + 80) = v34;

    v35 = LSSMediaTime();
    v51 = *(self + 64);
    WeakRetained = objc_loadWeakRetained((self + 104));
    buf = *&v35;
    v57 = v51;
    v58 = 0u;
    v59 = 0;
    v60 = 0;
    v61 = xmmword_255E9C9F0;
    v62 = 1065353216;
    v63 = 0;
    [WeakRetained provider:self updatedLight:&buf];

    OUTLINED_FUNCTION_3_1();
    if (!v3)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    v37 = OUTLINED_FUNCTION_2_2();
    if (v37)
    {
      OUTLINED_FUNCTION_0_7(*(self + 64), v37, v38, v39, v40, v41, v42, v43, v44, v51, *(&v51 + 1), v52, v53, v54, v55, buf);
      OUTLINED_FUNCTION_1_6();
      _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    }

    [(LSSTimeBasedProvider *)self _scheduleNextUpdate];
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __47__LSSTimeBasedProvider_initWithQueue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_280D2F620 != -1)
  {
    dispatch_once(&qword_280D2F620, &__block_literal_global_16);
  }

  v4 = _MergedGlobals_16;
  if (os_log_type_enabled(_MergedGlobals_16, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_255E8B000, v4, OS_LOG_TYPE_DEFAULT, "time zone changed", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(LSSTimeBasedProvider *)WeakRetained _restart];
}

- (void)_scheduleNextUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    v26 = 0;
    *buf = 0;
    v24 = 0;
    v25 = 0;
    [*(self + 48) getHour:buf minute:&v26 second:&v25 nanosecond:&v24 fromDate:v2];
    v3 = *buf;
    +[LSSTimeBasedProvider secondsInHour];
    v5 = v4;
    v6 = v26;
    +[LSSTimeBasedProvider secondsInMinute];
    v8 = v7 * v6 + v3 * v5 + v25 + v24 / 1000000000.0;
    v10 = __sincos_stret(6.28318531 / *(self + 88) * floor(v8 / (*(self + 96) / *(self + 88))));
    *&v9 = v10.__cosval;
    *(&v9 + 1) = *&v10.__sinval;
    *(self + 64) = v9;
    v11 = *(self + 96) / *(self + 88);
    v12 = fmod(v8, v11);
    if (qword_280D2F620 != -1)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    v13 = v11 - v12;
    v14 = _MergedGlobals_16;
    if (os_log_type_enabled(_MergedGlobals_16, OS_LOG_TYPE_DEBUG))
    {
      v20 = v14;
      v21 = [v2 dateByAddingTimeInterval:v13];
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_debug_impl(&dword_255E8B000, v20, OS_LOG_TYPE_DEBUG, "target: %@", buf, 0xCu);
    }

    if (qword_280D2F620 != -1)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    v15 = _MergedGlobals_16;
    if (os_log_type_enabled(_MergedGlobals_16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_255E8B000, v15, OS_LOG_TYPE_DEFAULT, "firing in %d seconds", buf, 8u);
    }

    objc_initWeak(buf, self);
    v16 = dispatch_time(0, (v13 * 1000000000.0));
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__LSSTimeBasedProvider__scheduleNextUpdate__block_invoke;
    v22[3] = &unk_279812700;
    objc_copyWeak(&v23, buf);
    v17 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v22);
    v18 = *(self + 40);
    *(self + 40) = v17;

    dispatch_after(v16, *(self + 24), *(self + 40));
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_animateToNewLightDirection
{
  v28 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 32);
    if (v2)
    {
      dispatch_block_cancel(v2);
    }

    [(LSSVector2SmoothFilter *)*(self + 80) updateVector:1.0 alpha:?];
    v4 = __sincos_stret(6.28318531 / *(self + 88));
    v3.f64[0] = v4.__cosval;
    v5.f64[0] = -v4.__sinval;
    v5.f64[1] = v4.__cosval;
    v3.f64[1] = v4.__sinval;
    *(self + 64) = vmlaq_laneq_f64(vmulq_n_f64(v3, *(self + 64)), v5, *(self + 64), 1);
    if (qword_280D2F620 != -1)
    {
      dispatch_once(&qword_280D2F620, &__block_literal_global_16);
    }

    v6 = _MergedGlobals_16;
    v7 = os_log_type_enabled(_MergedGlobals_16, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      OUTLINED_FUNCTION_0_7(*(self + 64), v7, v8, v9, v10, v11, v12, v13, v14, v21, block, v23, v24, v25, v26, buf[0]);
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "Animating to direction: {%.4f %.4f}", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    block = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __51__LSSTimeBasedProvider__animateToNewLightDirection__block_invoke;
    v25 = &unk_279812700;
    objc_copyWeak(&v26, buf);
    v15 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, &block);
    v16 = *(self + 32);
    *(self + 32) = v15;

    v17 = (*(self + 8) * 1000000000.0);
    v18 = *(self + 32);
    v19 = dispatch_time(0, v17);
    dispatch_after(v19, *(self + 24), v18);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_tickAnimation
{
  v24 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [(LSSVector2SmoothFilter *)*(self + 80) updateVector:0.05 alpha:?];
    v13 = *(self + 64);
    v2.f64[0] = [(LSSVector2SmoothFilter *)*(self + 80) value];
    v3 = vsubq_f64(v13, v2);
    v4 = vaddvq_f64(vmulq_f64(v3, v3));
    if (v4 <= 0.0001)
    {
      [(LSSVector2SmoothFilter *)*(self + 80) updateVector:1.0 alpha:?];
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = LSSMediaTime();
    *&v7 = [(LSSVector2SmoothFilter *)*(self + 80) value];
    v14 = v7;
    WeakRetained = objc_loadWeakRetained((self + 104));
    *v15 = v6;
    v15[1] = 0;
    v16 = v14;
    v17 = 0u;
    v18 = 0;
    v19 = 0;
    v20 = xmmword_255E9C9F0;
    v21 = 1065353216;
    v22 = v5;
    v23 = 0;
    [WeakRetained provider:self updatedLight:v15];

    if (v4 > 0.0001)
    {
      v9 = (*(self + 8) * 1000000000.0);
      v10 = *(self + 32);
      v11 = dispatch_time(0, v9);
      dispatch_after(v11, *(self + 24), v10);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end