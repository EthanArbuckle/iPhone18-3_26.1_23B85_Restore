@interface MNArrivalRegionTimer
- (MNArrivalRegionTimer)init;
- (MNArrivalRegionTimer)initWithArrivalRegion:(id)a3;
- (MNArrivalRegionTimerDelegate)delegate;
- (void)dealloc;
- (void)updateForLocation:(id)a3;
@end

@implementation MNArrivalRegionTimer

- (MNArrivalRegionTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateForLocation:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  v8 = v7;
  v9 = self->_timer == 0;
  v10 = [(GEOArrivalRegion *)self->_arrivalRegion arrivalRegion];
  v11 = v10;
  if (!v9)
  {
    [v4 horizontalAccuracy];
    v13 = [v11 containsCoordinate:v6 radius:{v8, v12}];

    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v18 = [v10 containsCoordinate:{v6, v8}];

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (![(GEOArrivalRegion *)self->_arrivalRegion endNavigationTimeoutThreshold])
  {
LABEL_3:
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "Leaving arrival region that location was previously inside", &buf, 2u);
    }

    timer = self->_timer;
    p_timer = &self->_timer;
    [(MNDispatchTimer *)timer cancel];
    v17 = *p_timer;
    *p_timer = 0;

    goto LABEL_11;
  }

  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(GEOArrivalRegion *)self->_arrivalRegion endNavigationTimeoutThreshold];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v20;
    _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "Arrival timeout region entered. Setting timer for %u seconds", &buf, 8u);
  }

  v21 = [(GEOArrivalRegion *)self->_arrivalRegion endNavigationTimeoutThreshold];
  objc_initWeak(&buf, self);
  v22 = [MNDispatchTimer alloc];
  v23 = MNNavigationQueue();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42__MNArrivalRegionTimer_updateForLocation___block_invoke;
  v28[3] = &unk_1E8430EA0;
  objc_copyWeak(&v29, &buf);
  v24 = [(MNDispatchTimer *)v22 initWithTime:v23 queue:v28 handler:v21];
  v26 = self->_timer;
  v25 = &self->_timer;
  *v25 = v24;

  [*v25 activate];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&buf);
LABEL_11:

  v27 = *MEMORY[0x1E69E9840];
}

void __42__MNArrivalRegionTimer_updateForLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 3);
    [v2 arrivalRegionTimerDidFire:v4];

    v3 = v4[2];
    v4[2] = 0;

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_timer cancel];
  v3.receiver = self;
  v3.super_class = MNArrivalRegionTimer;
  [(MNArrivalRegionTimer *)&v3 dealloc];
}

- (MNArrivalRegionTimer)initWithArrivalRegion:(id)a3
{
  v5 = a3;
  if ([v5 arrivalRegionAction] == 4 && objc_msgSend(v5, "endNavigationTimeoutThreshold") && (v9.receiver = self, v9.super_class = MNArrivalRegionTimer, v6 = -[MNArrivalRegionTimer init](&v9, sel_init), (self = v6) != 0))
  {
    objc_storeStrong(&v6->_arrivalRegion, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MNArrivalRegionTimer)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end