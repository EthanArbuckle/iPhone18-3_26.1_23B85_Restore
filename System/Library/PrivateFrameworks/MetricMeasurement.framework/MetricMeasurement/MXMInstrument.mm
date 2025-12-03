@interface MXMInstrument
+ (MXMInstrument)activeInstrument;
+ (MXMInstrument)instrumentWithInstrumentals:(id)instrumentals;
- (BOOL)active;
- (BOOL)startWithError:(id *)error;
- (MXMInstrument)initWithInstrumentals:(id)instrumentals;
- (id)_defaultValueWithOption:(id)option;
- (id)_makeInstrumentalsForIteration:(id)iteration shouldCopy:(BOOL)copy;
- (id)_transitionWithState:(unint64_t)state iteration:(id *)iteration instrumentals:(id)instrumentals;
- (id)_validOptionKeys;
- (id)_valueWithOption:(id)option userOptions:(id)options;
- (id)measureAutomatically:(unint64_t)automatically options:(id)options block:(id)block;
- (id)stopWithError:(id *)error;
- (void)_makePerfDataFromMXMResults:(id)results testName:(id)name;
- (void)_prepareIteration:(id *)iteration options:(id)options instrumentals:(id)instrumentals errors:(id)errors;
- (void)_setupAndRunWithIteration:(id *)iteration spawnThread:(BOOL)thread attrs:(_opaque_pthread_attr_t *)attrs pthread:(_opaque_pthread_t *)pthread returnCode:(unint64_t *)code;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation MXMInstrument

+ (MXMInstrument)activeInstrument
{
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);

  return WeakRetained;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  obj = objc_loadWeakRetained(&_activeInstrument);
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);

  if (activeCopy)
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MXMInstrument.m" lineNumber:101 description:@"Cannot activate instrument while another is already active."];
  }

  else
  {
    if (WeakRetained == self)
    {
      self = 0;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MXMInstrument.m" lineNumber:105 description:@"Cannot deactivate the instrument if the active instrument is not self."];
    self = 0;
  }

LABEL_6:
  objc_storeWeak(&_activeInstrument, self);
  objc_sync_exit(obj);
}

- (BOOL)active
{
  WeakRetained = objc_loadWeakRetained(&_activeInstrument);
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained(&_activeInstrument);
  LOBYTE(self) = v4 == self;

  objc_sync_exit(WeakRetained);
  return self;
}

+ (MXMInstrument)instrumentWithInstrumentals:(id)instrumentals
{
  instrumentalsCopy = instrumentals;
  v5 = [[self alloc] initWithInstrumentals:instrumentalsCopy];

  return v5;
}

- (MXMInstrument)initWithInstrumentals:(id)instrumentals
{
  instrumentalsCopy = instrumentals;
  v13.receiver = self;
  v13.super_class = MXMInstrument;
  v6 = [(MXMInstrument *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentals, instrumentals);
    v8 = dispatch_queue_create("com.apple.metricmeasurement.instrument.instrumentals", MEMORY[0x277D85CD8]);
    instrumentalsQueue = v7->_instrumentalsQueue;
    v7->_instrumentalsQueue = v8;
  }

  instrumentals = [(MXMInstrument *)v7 instrumentals];
  v11 = [instrumentals count];

  if (!v11)
  {
    [MXMInstrument initWithInstrumentals:];
  }

  return v7;
}

- (void)_prepareIteration:(id *)iteration options:(id)options instrumentals:(id)instrumentals errors:(id)errors
{
  v35 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  instrumentalsCopy = instrumentals;
  val = errors;
  v9 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = instrumentalsCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = objc_initWeak(&location, v14);
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          objc_initWeak(&from, val);
          instrumentalsQueue = [(MXMInstrument *)self instrumentalsQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__MXMInstrument__prepareIteration_options_instrumentals_errors___block_invoke;
          block[3] = &unk_2798C98B0;
          objc_copyWeak(&v26, &location);
          v25 = optionsCopy;
          objc_copyWeak(&v27, &from);
          dispatch_group_async(v9, instrumentalsQueue, block);

          objc_destroyWeak(&v27);
          objc_destroyWeak(&v26);
          objc_destroyWeak(&from);
        }

        objc_destroyWeak(&location);
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v18 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v18);
  iteration->var4 = 1;

  v19 = *MEMORY[0x277D85DE8];
}

void __64__MXMInstrument__prepareIteration_options_instrumentals_errors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = 0;
  [WeakRetained prepareWithOptions:v3 error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 addObject:v4];
  }
}

- (void)_setupAndRunWithIteration:(id *)iteration spawnThread:(BOOL)thread attrs:(_opaque_pthread_attr_t *)attrs pthread:(_opaque_pthread_t *)pthread returnCode:(unint64_t *)code
{
  threadCopy = thread;
  v68 = *MEMORY[0x277D85DE8];
  if (!iteration)
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  var4 = iteration->var4;
  if (iteration->var3)
  {
    if (iteration->var4)
    {
LABEL_5:
      [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
      goto LABEL_8;
    }
  }

  else
  {
    if (!iteration->var4)
    {
      v51 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Iteration is uninitialized." userInfo:0];
      objc_exception_throw(v51);
    }

    if (iteration->var4)
    {
      goto LABEL_8;
    }
  }

  if (![MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:])
  {
    goto LABEL_5;
  }

LABEL_8:
  iteration->var4 = 1;
  iteration->var3 = 1;
  if (!threadCopy)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v13 = iteration->var14;
    if (iteration->var20 != 0.0 && iteration->var21 != 0.0)
    {
      v14 = +[MXMProxyServiceManager shared];
      var20 = iteration->var20;
      var21 = iteration->var21;
      *&v62 = MEMORY[0x277D85DD0];
      *(&v62 + 1) = 3221225472;
      v63 = __MXMQuiesceBeforeIteration_block_invoke;
      v64 = &unk_2798C9900;
      v65 = v13;
      v66 = &v58;
      [v14 _quiesceBeforeIteration:&v62 timeout:var20 response:var21];
    }

    v17 = v59[3];
    _Block_object_dispose(&v58, 8);
    if (v17 == 6)
    {
      *code = 6;
      goto LABEL_61;
    }

    v53 = iteration->var22;
    v18 = _MXMGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v62) = 138412290;
      *(&v62 + 4) = v53;
      _os_log_impl(&dword_258DAA000, v18, OS_LOG_TYPE_DEBUG, "Attempting to uncache before iteration with config: %@", &v62, 0xCu);
    }

    if (iteration->var22 && [v53 count])
    {
      v18 = +[MXMProxyServiceManager shared];
      [v18 _uncacheBeforeIteration:v53 response:&__block_literal_global_5];
    }

    v52 = iteration->var23;
    v19 = _MXMGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v62) = 138412290;
      *(&v62 + 4) = v52;
      _os_log_impl(&dword_258DAA000, v19, OS_LOG_TYPE_DEBUG, "Attempting to terminate before iteration with config: %@", &v62, 0xCu);
    }

    if (iteration->var23 && [v52 count])
    {
      v20 = +[MXMProxyServiceManager shared];
      [v20 _terminateProcessesBeforeIteration:v52 response:&__block_literal_global_275];
    }

    v21 = iteration->var19;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 1;
    if (iteration->var18)
    {
      v22 = +[MXMProxyServiceManager shared];
      *&v62 = MEMORY[0x277D85DD0];
      *(&v62 + 1) = 3221225472;
      v63 = __MXMStartPerformanceTraceCollection_block_invoke;
      v64 = &unk_2798C9948;
      v65 = &v58;
      [v22 _startPerformanceTrace:v21 response:&v62];

      if (v59[3] == 1)
      {
        if (!v21 || ([v21 objectForKeyedSubscript:@"requiredForTestContinuation"], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v23 = [v21 objectForKeyedSubscript:@"requiredForTestContinuation"];
          bOOLValue = [v23 BOOLValue];

          if (v21)
          {

            if ((bOOLValue & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else if (!bOOLValue)
          {
            goto LABEL_35;
          }
        }

        [iteration->var14 setActive:0];
        v35 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to start performance trace collection. See error logs for more detail." userInfo:0];
        objc_exception_throw(v35);
      }
    }

LABEL_35:
    v25 = v59[3];
    _Block_object_dispose(&v58, 8);

    v26 = iteration->var25;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 1;
    if (iteration->var24)
    {
      v27 = +[MXMProxyServiceManager shared];
      *&v62 = MEMORY[0x277D85DD0];
      *(&v62 + 1) = 3221225472;
      v63 = __MXMStartFunctionCoverageCollection_block_invoke;
      v64 = &unk_2798C9970;
      v65 = &v58;
      [v27 _startFunctionCoverageCollection:v26 response:&v62];

      if (v59[3] == 1)
      {
        if (v26)
        {
          v27 = [v26 objectForKeyedSubscript:@"requiredForTestContinuation"];
          if (!v27)
          {
            goto LABEL_49;
          }
        }

        v28 = [v26 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue2 = [v28 BOOLValue];

        if (v26)
        {

          if ((bOOLValue2 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_49:
          [iteration->var14 setActive:0];
          v36 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to start function coverage collection. See error logs for more detail." userInfo:0];
          objc_exception_throw(v36);
        }

        if (bOOLValue2)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_41:
    v30 = v59[3];
    _Block_object_dispose(&v58, 8);

    *code = MXMRunBlockIteration(iteration);
    if (!v25)
    {
      v31 = v21;
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0;
      v32 = iteration->var14;
      v33 = +[MXMProxyServiceManager shared];
      *&v62 = MEMORY[0x277D85DD0];
      *(&v62 + 1) = 3221225472;
      v63 = __MXMStopPerformanceTraceCollection_block_invoke;
      v64 = &unk_2798C9998;
      v34 = v32;
      v65 = v34;
      v66 = &v58;
      [v33 _stopPerformanceTrace:&v62];

      if (v59[3] == 3)
      {
        if (v31)
        {
          v18 = [v31 objectForKeyedSubscript:@"requiredForTestContinuation"];
          if (!v18)
          {
LABEL_63:
            [v34 setActive:0];
            v46 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrumentErrorDomain" reason:@"Unable to collect performance trace. See error logs for more detail." userInfo:0];
            objc_exception_throw(v46);
          }
        }

        v37 = [v31 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue3 = [v37 BOOLValue];

        if (v31)
        {

          if (bOOLValue3)
          {
            goto LABEL_63;
          }
        }

        else if (bOOLValue3)
        {
          goto LABEL_63;
        }
      }

      _Block_object_dispose(&v58, 8);
    }

    if (v30)
    {
LABEL_60:

      goto LABEL_61;
    }

    v39 = v26;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v40 = iteration->var14;
    v41 = +[MXMProxyServiceManager shared];
    *&v62 = MEMORY[0x277D85DD0];
    *(&v62 + 1) = 3221225472;
    v63 = __MXMStopFunctionCoverageCollection_block_invoke;
    v64 = &unk_2798C99C0;
    v42 = v40;
    v65 = v42;
    v66 = &v58;
    v67 = &v54;
    [v41 _stopFunctionCoverageCollection:&v62];

    if (v59[3] == 3)
    {
      if (!v39 || ([v39 objectForKeyedSubscript:@"requiredForTestContinuation"], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v43 = [v39 objectForKeyedSubscript:@"requiredForTestContinuation"];
        bOOLValue4 = [v43 BOOLValue];

        if (v39)
        {

          if ((bOOLValue4 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else if (!bOOLValue4)
        {
          goto LABEL_59;
        }
      }

      [v42 setActive:0];
      v47 = MEMORY[0x277CBEAD8];
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to stop and post process function coverage. See error logs for more detail. %d", *(v55 + 6)];
      v49 = [v47 exceptionWithName:@"MXMInstrumentErrorDomain" reason:v48 userInfo:0];
      v50 = v49;

      objc_exception_throw(v49);
    }

LABEL_59:

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);

    goto LABEL_60;
  }

  *&v62 = 0;
  if (!iteration->var16)
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  if (pthread_create(&v62, attrs, MXMRunBlockIteration, iteration))
  {
    [MXMInstrument _setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:];
  }

  else if (pthread)
  {
    *pthread = v62;
  }

LABEL_61:
  v45 = *MEMORY[0x277D85DE8];
}

- (id)_transitionWithState:(unint64_t)state iteration:(id *)iteration instrumentals:(id)instrumentals
{
  v31 = *MEMORY[0x277D85DE8];
  instrumentalsCopy = instrumentals;
  if (!state)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (!iteration->var4)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (!iteration->var3 && !iteration->var4)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  if (state == 2)
  {
    v9 = 40;
    goto LABEL_12;
  }

  if (state == 4)
  {
    v9 = 48;
LABEL_12:
    v22 = *(&iteration->var0 + v9);
    goto LABEL_14;
  }

  v22 = 0;
LABEL_14:
  if (state == 2)
  {
    v10 = 56;
  }

  else
  {
    if (state != 4)
    {
      v11 = 0;
      goto LABEL_20;
    }

    v10 = 64;
  }

  v11 = *(&iteration->var0 + v10);
LABEL_20:
  stateCopy = state;
  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 1 && !v22)
  {
    [MXMInstrument _transitionWithState:iteration:instrumentals:];
  }

  v13 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = instrumentalsCopy;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        objc_initWeak(&location, *(*(&v25 + 1) + 8 * i));
        instrumentalsQueue = [(MXMInstrument *)self instrumentalsQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke;
        block[3] = &unk_2798C98D8;
        v24[1] = stateCopy;
        objc_copyWeak(v24, &location);
        v24[3] = iteration;
        v24[4] = a2;
        v24[2] = v22;
        block[4] = self;
        v24[5] = v11;
        dispatch_group_async(v13, instrumentalsQueue, block);

        objc_destroyWeak(v24);
        objc_destroyWeak(&location);
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        return;
      }

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 willStop];
      goto LABEL_27;
    }

    if (v2 != 4)
    {
      return;
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v16 = *(*(a1 + 64) + 80);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_4();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStopAtContinuousTime:*(a1 + 80) absoluteTime:*(a1 + 56) stopDate:v16];
    }

    else
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        return;
      }

      v16 = *(*(a1 + 64) + 80);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_3();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStopAtTime:*(a1 + 56) stopDate:v16];
    }
  }

  else
  {
    if (v2 == 1)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        return;
      }

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 willStartAtEstimatedTime:*(a1 + 56)];
      goto LABEL_27;
    }

    if (v2 != 2)
    {
      return;
    }

    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v16 = *(*(a1 + 64) + 72);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_2();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStartAtContinuousTime:*(a1 + 80) absoluteTime:*(a1 + 56) startDate:v16];
    }

    else
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        return;
      }

      v16 = *(*(a1 + 64) + 72);
      if (!v16)
      {
        __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_1();
      }

      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 didStartAtTime:*(a1 + 56) startDate:v16];
    }
  }

LABEL_27:
}

- (BOOL)startWithError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  if ([(MXMInstrument *)self active]&& [(MXMInstrument *)self currentIteration]&& [(MXMInstrument *)self currentIteration][152])
  {
    currentIteration = [(MXMInstrument *)self currentIteration];
LABEL_17:
    currentIteration->var3 = 1;
    currentIteration->var4 = 1;
    array = [(MXMInstrument *)self _transitionWithState:1 iteration:currentIteration instrumentals:currentIteration->var15];
    dispatch_group_wait(array, 0xFFFFFFFFFFFFFFFFLL);
    v22 = 0;
    thread_selfcounts();
    currentIteration->var7 = mach_continuous_time();
    currentIteration->var5 = mach_absolute_time();
    currentIteration->var9 = [MEMORY[0x277CBEAA8] date];
    currentIteration->var11 = v22;
    v18 = _MXMGetInstrumentsLog();
    if (os_signpost_enabled(v18))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_258DAA000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", v21, 2u);
    }

    v8 = 1;
    goto LABEL_20;
  }

  if (![(MXMInstrument *)self active]&& ![(MXMInstrument *)self currentIteration])
  {
    v9 = malloc_type_malloc(0xE0uLL, 0x1080040BB297B25uLL);
    self->_currentIteration = v9;
    *(v9 + 3) = 0;
    v9[32] = 0;
    *(v9 + 4) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 9) = 0;
    *(v9 + 10) = 0;
    *(v9 + 15) = 3;
    *(v9 + 27) = 0;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    v9[160] = 0;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 193) = 0u;
    currentIteration = self->_currentIteration;
    if (currentIteration->var3 || currentIteration->var4)
    {
      [MXMInstrument startWithError:];
    }

    [(MXMInstrument *)self setActive:1];
    currentIteration = [(MXMInstrument *)self currentIteration];
    array = [MEMORY[0x277CBEB18] array];
    instrumentals = [(MXMInstrument *)self instrumentals];
    v12 = [(MXMInstrument *)self _makeInstrumentalsForIteration:instrumentals shouldCopy:0];
    instrumentals = self->_instrumentals;
    self->_instrumentals = v12;

    instrumentals2 = [(MXMInstrument *)self instrumentals];
    [(MXMInstrument *)self _prepareIteration:currentIteration options:0 instrumentals:instrumentals2 errors:array];

    currentIteration->var2 = MEMORY[0x259C9CA80]();
    *&currentIteration->var0 = xmmword_258DC9E20;
    currentIteration->var14 = self;
    instrumentals3 = [(MXMInstrument *)self instrumentals];
    currentIteration->var15 = [(MXMInstrument *)self _makeInstrumentalsForIteration:instrumentals3 shouldCopy:0];

    if ([array count])
    {
      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277CCA068];
        v26[0] = @"Failed to prepare all instrumentals.";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        *error = [v16 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:v17];
      }

      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (error)
  {
    v6 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA068];
    v24 = @"Cannot start. Instrument already active.";
    array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v6 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:array];
    *error = v8 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = 0;
LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)stopWithError:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = _MXMGetInstrumentsLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_258DAA000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Instrument_Iteration_User_Work", "isAnimation=YES ", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  thread_selfcounts();
  v7 = mach_absolute_time();
  v8 = mach_continuous_time();
  date = [MEMORY[0x277CBEAA8] date];
  if ([(MXMInstrument *)self active])
  {
    v10 = [(MXMInstrument *)self currentIteration][16];
    if (v10 != MEMORY[0x259C9CA80]())
    {
      [MXMInstrument stopWithError:];
    }

    currentIteration = [(MXMInstrument *)self currentIteration];
    currentIteration->var12 = *buf;
    currentIteration->var8 = v8;
    currentIteration->var6 = v7;
    v32 = date;
    currentIteration->var10 = date;
    currentIteration->var3 = 2;
    currentIteration->var4 = 1;
    v12 = [(MXMInstrument *)self _transitionWithState:2 iteration:currentIteration instrumentals:currentIteration->var15];
    v13 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v12, v13);
    v14 = [(MXMInstrument *)self _transitionWithState:3 iteration:currentIteration instrumentals:currentIteration->var15];
    v30 = [(MXMInstrument *)self _transitionWithState:4 iteration:currentIteration instrumentals:currentIteration->var15];
    dispatch_group_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    v31 = v14;
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = objc_alloc_init(MXMMutableSampleData);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = currentIteration->var15;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v33 = 0;
          v34 = 0;
          [v21 harvestData:&v34 error:&v33];
          v22 = v34;
          v23 = v33;
          v24 = v23;
          if (v22)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 0;
          }

          if (!v25)
          {
            [MXMInstrument stopWithError:];
          }

          [(MXMMutableSampleData *)v15 appendData:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v18);
    }

    var17 = currentIteration->var17;
    if (var17)
    {
      [*var17 setObject:v15 atIndexedSubscript:currentIteration->var0];
    }

    else
    {
      CFRelease(currentIteration->var15);
      CFRelease(currentIteration->var9);
      [(MXMInstrument *)self setActive:0];
      free([(MXMInstrument *)self currentIteration]);
      [(MXMInstrument *)self setCurrentIteration:0];
    }

    date = v32;

    goto LABEL_24;
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA068];
    v42[0] = @"Cannot stop. Instrument is inactive.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v27 errorWithDomain:@"MXMInstrumentErrorDomain" code:1 userInfo:v12];
    *error = v15 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v15 = 0;
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)measureAutomatically:(unint64_t)automatically options:(id)options block:(id)block
{
  automaticallyCopy = automatically;
  v85 = a2;
  v114 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  if ([(MXMInstrument *)self active])
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v9 = MEMORY[0x277CBEB98];
  allKeys = [optionsCopy allKeys];
  v11 = [v9 setWithArray:allKeys];
  selfCopy = self;
  _validOptionKeys = [(MXMInstrument *)self _validOptionKeys];
  v13 = [v11 isSubsetOfSet:_validOptionKeys];

  if ((v13 & 1) == 0)
  {
    v80 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMInstrument" reason:@"Invalid options" userInfo:0];
    objc_exception_throw(v80);
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"com.apple.metricmeasurement.instrument.options.ThreadId"];

  if (v14)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v15 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.IterationCount" userOptions:optionsCopy];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v17 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled" userOptions:optionsCopy];
  bOOLValue = [v17 BOOLValue];

  v86 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations" userOptions:optionsCopy];
  v18 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerfdataEnabled" userOptions:optionsCopy];
  bOOLValue2 = [v18 BOOLValue];

  v84 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.PerfdataTestName" userOptions:optionsCopy];
  v19 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent" userOptions:optionsCopy];
  [v19 doubleValue];
  v21 = v20;

  v22 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit" userOptions:optionsCopy];
  [v22 doubleValue];
  v24 = v23;

  v25 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement" userOptions:optionsCopy];
  bOOLValue3 = [v25 BOOLValue];

  v96 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations" userOptions:optionsCopy];
  v95 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations" userOptions:optionsCopy];
  v27 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled" userOptions:optionsCopy];
  bOOLValue4 = [v27 BOOLValue];

  v90 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration" userOptions:optionsCopy];
  if (bOOLValue3)
  {
    v28 = _MXMGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__sig) = 0;
      _os_log_impl(&dword_258DAA000, v28, OS_LOG_TYPE_DEBUG, "Skipping metric measurement as SkipMetricMeasurement was set to true.", &buf, 2u);
    }
  }

  if (bOOLValue && [v86 count])
  {
    v29 = [v86 count];
  }

  else
  {
    v29 = bOOLValue;
  }

  v30 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread" userOptions:optionsCopy];
  bOOLValue5 = [v30 BOOLValue];

  v32 = [(MXMInstrument *)selfCopy _valueWithOption:@"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization" userOptions:optionsCopy];
  bOOLValue6 = [v32 BOOLValue];

  if (bOOLValue6 & bOOLValue5 & 1) == 0 && (bOOLValue5)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  v89 = blockCopy;
  if (bOOLValue6)
  {
    v34 = unsignedIntegerValue;
  }

  else
  {
    v34 = bOOLValue5 & 1;
  }

  if ((((automaticallyCopy & 3) != 0) & bOOLValue5) == 1)
  {
    [MXMInstrument measureAutomatically:options:block:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v35 = objc_autoreleasePoolPush();
  v81[1] = v81;
  v82 = v35;
  MEMORY[0x28223BE20]();
  v36 = (8 * unsignedIntegerValue + 15) & 0xFFFFFFFFFFFFFFF0;
  if (8 * unsignedIntegerValue >= 0x200)
  {
    v37 = 512;
  }

  else
  {
    v37 = 8 * unsignedIntegerValue;
  }

  v101 = v81 - v36;
  bzero(v81 - v36, v37);
  if (bOOLValue5)
  {
    v38 = 8 * v34;
    v94 = malloc_type_malloc(v38, 0x2004093837F09uLL);
    bzero(v94, v38);
  }

  else
  {
    v94 = 0;
  }

  MEMORY[0x28223BE20]();
  v100 = v81 - v36;
  memset(v81 - v36, 255, 8 * unsignedIntegerValue);
  v39 = selfCopy;
  [(MXMInstrument *)selfCopy setActive:1];
  v40 = v89;
  if (unsignedIntegerValue)
  {
    v97 = unsignedIntegerValue;
    v98 = bOOLValue5;
    v92 = 0;
    v41 = 0;
    v42 = unsignedIntegerValue - 1;
    v88 = unsignedIntegerValue - v29;
    do
    {
      v43 = optionsCopy;
      v44 = malloc_type_malloc(0xE0uLL, 0x1080040BB297B25uLL);
      [(MXMInstrument *)v39 instrumentals];
      v46 = v45 = v39;
      v47 = [(MXMInstrument *)v45 _makeInstrumentalsForIteration:v46 shouldCopy:unsignedIntegerValue != 1];

      *(v44 + 3) = 0;
      v44[32] = 0;
      *(v44 + 4) = 0;
      *(v44 + 5) = 0;
      *(v44 + 6) = 0;
      *(v44 + 168) = 0u;
      *(v44 + 9) = 0;
      *(v44 + 10) = 0;
      *(v44 + 27) = 0;
      *(v44 + 18) = 0;
      *(v44 + 19) = 0;
      *(v44 + 16) = v45;
      *(v44 + 17) = 0;
      v44[160] = 0;
      *(v44 + 184) = 0u;
      *(v44 + 193) = 0u;
      *v44 = v41;
      *(v44 + 1) = unsignedIntegerValue;
      *(v44 + 15) = 3;
      v48 = v47;
      *(v44 + 17) = v48;
      v49 = _Block_copy(v40);
      *(v44 + 15) = automaticallyCopy;
      v111 = array;
      *(v44 + 18) = v49;
      *(v44 + 19) = &v111;
      v50 = bOOLValue4;
      if (v41 != v42)
      {
        v50 = 0;
      }

      if (v50 == 1)
      {
        v44[208] = 1;
        *(v44 + 27) = v90;
        unsignedIntegerValue = v97;
        optionsCopy = v43;
      }

      else
      {
        if (v41 >= v88)
        {
          v51 = bOOLValue;
        }

        else
        {
          v51 = 0;
        }

        optionsCopy = v43;
        if (v51 == 1)
        {
          v44[160] = 1;
          v52 = [v86 count];
          v53 = v92;
          unsignedIntegerValue = v97;
          if (v52 > v92)
          {
            v54 = [v86 objectAtIndex:v92];
            v53 = v92;
            *(v44 + 21) = v54;
          }

          v92 = v53 + 1;
        }

        else
        {
          unsignedIntegerValue = v97;
        }
      }

      *(v44 + 22) = v21;
      *(v44 + 23) = v24;
      v55 = v95;
      *(v44 + 24) = v96;
      *(v44 + 25) = v55;
      v39 = selfCopy;
      [(MXMInstrument *)selfCopy _prepareIteration:v44 options:optionsCopy instrumentals:v48 errors:0];
      if (v98)
      {
        memset(&buf, 0, sizeof(buf));
        pthread_attr_init(&buf);
        pthread_attr_setschedpolicy(&buf, 4);
        pthread_attr_set_qos_class_np(&buf, QOS_CLASS_USER_INTERACTIVE, 0);
        v110 = 0;
        [(MXMInstrument *)v39 _setupAndRunWithIteration:v44 spawnThread:1 attrs:&buf pthread:&v110 returnCode:0];
        *(v94 + v41) = v110;
        pthread_attr_destroy(&buf);
      }

      else
      {
        [(MXMInstrument *)v39 setCurrentIteration:v44];
        [(MXMInstrument *)v39 _setupAndRunWithIteration:v44 spawnThread:0 attrs:0 pthread:0 returnCode:&v100[8 * v41]];
        [(MXMInstrument *)v39 setCurrentIteration:0];
      }

      *&v101[8 * v41] = v44;
      if (*(v44 + 22) == 0.0 || *(v44 + 23) == 0.0)
      {
      }

      else
      {
        v56 = +[MXMInstrument activeInstrument];
        v57 = v56[8];

        v70 = v57 == 1;
        v39 = selfCopy;
        if (!v70)
        {
          break;
        }
      }

      ++v41;
    }

    while (v41 < unsignedIntegerValue);
    v58 = 0;
    v59 = 0x2798C9000uLL;
    LOBYTE(bOOLValue5) = v98;
    v87 = optionsCopy;
    do
    {
      v60 = objc_alloc_init(*(v59 + 432));
      v61 = *&v101[8 * v58];
      [(MXMInstrument *)v39 setCurrentIteration:v61];
      if (bOOLValue5)
      {
        pthread_join(*(v94 + v58), &v100[8 * v58]);
      }

      if (*&v100[8 * v58])
      {
        [(MXMInstrument *)v39 setActive:0];
        v75 = MEMORY[0x277CBEAD8];
        v76 = *v61;
        v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non-zero exit code from iteration [%i] code=%i", *v61, *&v100[8 * v58]];
        v78 = [v75 exceptionWithName:@"Failed to run Block" reason:v77 userInfo:0];
        v79 = v78;

        objc_exception_throw(v78);
      }

      if ((automaticallyCopy & 2) != 0)
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        bOOLValue5 = v61[17];
        v62 = [bOOLValue5 countByEnumeratingWithState:&v106 objects:v112 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v107;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v107 != v64)
              {
                objc_enumerationMutation(bOOLValue5);
              }

              v66 = *(*(&v106 + 1) + 8 * i);
              v104 = 0;
              v105 = 0;
              [v66 harvestData:&v105 error:&v104];
              v67 = v105;
              v68 = v104;
              v69 = v68;
              if (v67)
              {
                v70 = v68 == 0;
              }

              else
              {
                v70 = 0;
              }

              if (!v70)
              {
                [MXMInstrument measureAutomatically:options:block:];
              }

              [v60 appendData:v67];
            }

            v63 = [bOOLValue5 countByEnumeratingWithState:&v106 objects:v112 count:16];
          }

          while (v63);
        }

        [array setObject:v60 atIndexedSubscript:v58];
        optionsCopy = v87;
        v40 = v89;
        v39 = selfCopy;
        unsignedIntegerValue = v97;
        LOBYTE(bOOLValue5) = v98;
        v59 = 0x2798C9000;
      }

      _Block_release(v61[18]);

      free(v61);
      [(MXMInstrument *)v39 setCurrentIteration:0];

      ++v58;
    }

    while (v58 != unsignedIntegerValue);
  }

  [(MXMInstrument *)v39 setCurrentIteration:0];
  if (bOOLValue5)
  {
    free(v94);
  }

  objc_autoreleasePoolPop(v82);
  v71 = v84;
  if (bOOLValue2)
  {
    [(MXMInstrument *)v39 _makePerfDataFromMXMResults:array testName:v84];
  }

  if ([(MXMInstrument *)v39 active])
  {
    [(MXMInstrument *)v39 setActive:0];
  }

  v72 = *MEMORY[0x277D85DE8];
  v73 = array;

  return v73;
}

- (void)_makePerfDataFromMXMResults:(id)results testName:(id)name
{
  v46 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  nameCopy = name;
  __sizep = 0;
  __bufp = 0;
  v8 = open_memstream(&__bufp, &__sizep);
  if (v8)
  {
    v9 = v8;
    [nameCopy UTF8String];
    if (pdwriter_open_stream())
    {
      selfCopy = self;
      v33 = nameCopy;
      if ([resultsCopy count])
      {
        v10 = 0;
        v34 = resultsCopy;
        do
        {
          v35 = v10;
          v11 = [resultsCopy objectAtIndexedSubscript:v10];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          obj = v11;
          v12 = [v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (v12)
          {
            v13 = v12;
            v37 = *v39;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v39 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v38 + 1) + 8 * i);
                v16 = [v15 attributeWithName:@"XCT Reporting Display Name"];
                stringValue = [v16 stringValue];

                samples = [v15 samples];
                firstObject = [samples firstObject];
                asMeasurementValue = [firstObject asMeasurementValue];

                unit = [asMeasurementValue unit];
                v22 = [asMeasurementValue measurementByConvertingToUnit:unit];
                [stringValue UTF8String];
                unit2 = [asMeasurementValue unit];
                symbol = [unit2 symbol];
                [symbol UTF8String];
                [v22 doubleValue];
                pdwriter_new_value();
              }

              v13 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
            }

            while (v13);
          }

          resultsCopy = v34;
          v10 = v35 + 1;
        }

        while (v35 + 1 < [v34 count]);
      }

      pdwriter_close();
      v25 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:__bufp length:__sizep freeWhenDone:1];
      perfMetricsPerfdata = selfCopy->_perfMetricsPerfdata;
      selfCopy->_perfMetricsPerfdata = v25;

      nameCopy = v33;
    }

    else
    {
      v29 = _MXMGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258DAA000, v29, OS_LOG_TYPE_ERROR, "unable to open stream to write perfdata", buf, 2u);
      }

      v30 = self->_perfMetricsPerfdata;
      self->_perfMetricsPerfdata = 0;

      fclose(v9);
      free(__bufp);
    }
  }

  else
  {
    v27 = _MXMGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258DAA000, v27, OS_LOG_TYPE_ERROR, "unable to open stream to write perfdata", buf, 2u);
    }

    v28 = self->_perfMetricsPerfdata;
    self->_perfMetricsPerfdata = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_makeInstrumentalsForIteration:(id)iteration shouldCopy:(BOOL)copy
{
  copyCopy = copy;
  v22 = *MEMORY[0x277D85DE8];
  iterationCopy = iteration;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(iterationCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = iterationCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = v12;
        if (copyCopy)
        {
          v14 = [v12 copy];

          v13 = v14;
        }

        [v6 addObject:{v13, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_valueWithOption:(id)option userOptions:(id)options
{
  optionsCopy = options;
  optionCopy = option;
  v8 = [optionsCopy objectForKeyedSubscript:optionCopy];
  if (v8)
  {
    [optionsCopy objectForKeyedSubscript:optionCopy];
  }

  else
  {
    [(MXMInstrument *)self _defaultValueWithOption:optionCopy];
  }
  v9 = ;

  return v9;
}

- (id)_defaultValueWithOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit"))
  {
    v4 = &unk_286A260E8;
  }

  else
  {
    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations"])
    {
      goto LABEL_6;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.PerfdataEnabled"))
    {
      goto LABEL_9;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.PerfdataTestName"])
    {
      v4 = @"unknownTest";
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.IterationCount"])
    {
      v4 = &unk_286A26100;
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization"))
    {
LABEL_9:
      v4 = MEMORY[0x277CBEC28];
      goto LABEL_4;
    }

    v6 = [optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement"];
    v4 = MEMORY[0x277CBEC28];
    if (v6)
    {
      goto LABEL_4;
    }

    if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations"))
    {
LABEL_6:
      v4 = MEMORY[0x277CBEBF8];
    }

    else if ([optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration"])
    {
      v4 = MEMORY[0x277CBEC10];
    }

    else if (![optionCopy isEqualToString:@"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled"])
    {
      v4 = 0;
    }
  }

LABEL_4:

  return v4;
}

- (id)_validOptionKeys
{
  v2 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.metricmeasurement.instrument.options.IterationCount", @"com.apple.metricmeasurement.instrument.options.ThreadId", @"com.apple.metricmeasurement.instrument.options.EnableThreadParallelization", @"com.apple.metricmeasurement.instrument.options.ScheduleKickOffOnNewThread", @"com.apple.metricmeasurement.instrument.options.PerformanceTraceEnabled", @"com.apple.metricmeasurement.instrument.options.PerformanceTraceConfigurations", @"com.apple.metricmeasurement.instrument.options.PerfdataEnabled", @"com.apple.metricmeasurement.instrument.options.PerfdataTestName", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdlePercent", @"com.apple.metricmeasurement.instrument.options.QuiesceCpuIdleTimeLimit", @"com.apple.metricmeasurement.instrument.options.SkipMetricMeasurement", @"com.apple.metricmeasurement.instrument.options.UncacheBetweenIterations", @"com.apple.metricmeasurement.instrument.options.TerminateProcessBetweenIterations", @"com.apple.metricmeasurement.instrument.options.FunctionCoverageEnabled", @"com.apple.metricmeasurement.instrument.options.FunctionCoverageConfiguration", 0}];
  v3 = [v2 copy];

  return v3;
}

- (void)dealloc
{
  if ([(MXMInstrument *)self currentIteration])
  {
    free([(MXMInstrument *)self currentIteration]);
  }

  v3.receiver = self;
  v3.super_class = MXMInstrument;
  [(MXMInstrument *)&v3 dealloc];
}

- (void)initWithInstrumentals:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration" object:? file:? lineNumber:? description:?];
}

- (BOOL)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MXMInstrument.m" lineNumber:568 description:@"Iteration is not in proper state."];

  return *v0 == 0;
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->invocationBlock" object:? file:? lineNumber:? description:?];
}

- (void)_setupAndRunWithIteration:spawnThread:attrs:pthread:returnCode:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"transState != MXMIterationStateUninitialized" object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->transitionCompleted == YES" object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_transitionWithState:iteration:instrumentals:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_1()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_2()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_3()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__MXMInstrument__transitionWithState_iteration_instrumentals___block_invoke_cold_4()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)stopWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)stopWithError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v0 description];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"!options[MXMInstrumentOptionKickOffThreadIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iterationCount > 0" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"(enableParallelizedSampling && shouldKickOffOnNewThread) || !shouldKickOffOnNewThread" object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.6()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)measureAutomatically:options:block:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v0 description];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end