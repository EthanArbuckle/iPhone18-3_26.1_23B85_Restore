@interface BWIOSurfacePoller
+ (uint64_t)defaultPoller;
+ (void)trackSurface:(__IOSurface *)surface useCountIsZeroHandler:(id)handler;
- (BWIOSurfacePoller)init;
- (os_unfair_lock_s)_pollingTimerFired;
- (void)_startPolling;
- (void)_stopPolling;
- (void)dealloc;
- (void)trackSurface:(uint64_t)surface useCountIsZeroHandler:;
@end

@implementation BWIOSurfacePoller

+ (void)trackSurface:(__IOSurface *)surface useCountIsZeroHandler:(id)handler
{
  v6 = +[BWIOSurfacePoller defaultPoller];

  [(BWIOSurfacePoller *)v6 trackSurface:surface useCountIsZeroHandler:handler];
}

+ (uint64_t)defaultPoller
{
  objc_opt_self();
  if (defaultPoller_sOnceToken != -1)
  {
    +[BWIOSurfacePoller defaultPoller];
  }

  return defaultPoller_sDefaultPoller;
}

BWIOSurfacePoller *__34__BWIOSurfacePoller_defaultPoller__block_invoke()
{
  result = objc_alloc_init(BWIOSurfacePoller);
  defaultPoller_sDefaultPoller = result;
  return result;
}

- (BWIOSurfacePoller)init
{
  v5.receiver = self;
  v5.super_class = BWIOSurfacePoller;
  v2 = [(BWIOSurfacePoller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_trackedSurfacesLock._os_unfair_lock_opaque = 0;
    v2->_trackedSurfaces = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIOSurfacePoller;
  [(BWIOSurfacePoller *)&v3 dealloc];
}

- (void)trackSurface:(uint64_t)surface useCountIsZeroHandler:
{
  if (self)
  {
    v5 = [[BWTrackedSurface alloc] initWithSurface:a2 handler:surface];
    os_unfair_lock_lock((self + 16));
    v4 = [*(self + 24) count];
    [*(self + 24) addObject:v5];
    if (!v4)
    {
      [(BWIOSurfacePoller *)self _startPolling];
    }

    os_unfair_lock_unlock((self + 16));
  }
}

- (void)_startPolling
{
  if (self)
  {
    if (!*(self + 8))
    {
      v2 = FigDispatchQueueCreateWithPriority();
      v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v2);

      v4 = dispatch_time(0, 7500000);
      dispatch_source_set_timer(v3, v4, 0x7270E0uLL, 0xB71AFuLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __34__BWIOSurfacePoller__startPolling__block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = self;
      dispatch_source_set_event_handler(v3, handler);
      *(self + 8) = v3;
      dispatch_activate(v3);
    }
  }
}

- (os_unfair_lock_s)_pollingTimerFired
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 4);
    v2 = *(v1 + 24);
    v11 = OUTLINED_FUNCTION_0_12(v3, v4, v5, v6, v7, v8, v9, v10, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v98, v100, v102, v104, v106, v108, v110);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = 0;
    indexSet = 0;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v2);
        }

        v17 = IOSurfaceIsInUse([*(8 * i) surface]);
        if (!v17)
        {
          if (!indexSet)
          {
            indexSet = [MEMORY[0x1E696AD50] indexSet];
          }

          v17 = [indexSet addIndex:v13];
        }

        ++v13;
      }

      v12 = OUTLINED_FUNCTION_0_12(v17, v18, v19, v20, v21, v22, v23, v24, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v99, v101, v103, v105, v107, v109, v111);
    }

    while (v12);
    if (indexSet)
    {
      v25 = [*(v1 + 24) objectsAtIndexes:indexSet];
      [*(v1 + 24) removeObjectsAtIndexes:indexSet];
      if (![*(v1 + 24) count])
      {
        [(BWIOSurfacePoller *)v1 _stopPolling];
      }
    }

    else
    {
LABEL_16:
      v25 = 0;
    }

    os_unfair_lock_unlock((v1 + 16));
    OUTLINED_FUNCTION_1_13();
    result = OUTLINED_FUNCTION_1_3(v26, v27, v28, v29, v30, v31, v32, v33, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
    if (result)
    {
      v34 = result;
      v35 = *v99;
      do
      {
        v36 = 0;
        do
        {
          if (*v99 != v35)
          {
            objc_enumerationMutation(v25);
          }

          v37 = (*([*(v97 + 8 * v36) handler] + 16))();
          v36 = (v36 + 1);
        }

        while (v34 != v36);
        result = OUTLINED_FUNCTION_1_3(v37, v38, v39, v40, v41, v42, v43, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
        v34 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_stopPolling
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      dispatch_source_cancel(v2);

      *(self + 8) = 0;
    }
  }
}

@end