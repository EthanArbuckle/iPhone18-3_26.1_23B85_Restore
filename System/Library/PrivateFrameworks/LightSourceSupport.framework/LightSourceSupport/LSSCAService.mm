@interface LSSCAService
- (LSSCAService)initWithTargetQueue:(id)queue subscriber:(id)subscriber;
- (LSSSubscriptionProvider)subscriber;
- (void)_requestGlobalFrom:(int)from enabled:;
- (void)_setExtendedDisplayLighting;
- (void)_updateDisplays;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLightForDynamicDisplays:(id)displays;
- (void)setLightForExtendedDisplays:(id)displays;
@end

@implementation LSSCAService

- (LSSCAService)initWithTargetQueue:(id)queue subscriber:(id)subscriber
{
  queueCopy = queue;
  subscriberCopy = subscriber;
  v29.receiver = self;
  v29.super_class = LSSCAService;
  v9 = [(LSSCAService *)&v29 init];
  if (v9)
  {
    if (qword_280D2F570 == -1)
    {
      v10 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }
    }

    else
    {
      [LSSCAService initWithTargetQueue:subscriber:];
      v10 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:
        serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
        if (serverIfRunning)
        {
          v12 = serverIfRunning;
          objc_storeWeak(v9 + 11, subscriberCopy);
          objc_storeStrong(v9 + 10, queue);
          array = [MEMORY[0x277CBEB18] array];
          v14 = *(v9 + 1);
          *(v9 + 1) = array;

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v16 = *(v9 + 2);
          *(v9 + 2) = dictionary;

          objc_initWeak(buf, v9);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke;
          v26[3] = &unk_2798128C0;
          objc_copyWeak(&v27, buf);
          v17 = MEMORY[0x259C50010](v26);
          v18 = *(v9 + 6);
          *(v9 + 6) = v17;

          v19 = +[LSSSettings currentSettings];
          v20 = *(v9 + 7);
          *(v9 + 7) = v19;

          if ([(LSSSettings *)*(v9 + 7) dynamic])
          {
            defaults = [(LSSSettings *)*(v9 + 7) defaults];
            [defaults addObserver:v9 forKeyPath:@"lightDefaultAltitude" options:1 context:0];
          }

          *(v9 + 5) = 0x7FF8000000000000;
          [v12 addObserver:v9 forKeyPath:@"displays" options:1 context:0];
          [(LSSCAService *)v9 _updateDisplays];
          tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
          [tVOutDisplay addObserver:v9 forKeyPath:@"availableModes" options:5 context:0];

          objc_destroyWeak(&v27);
          objc_destroyWeak(buf);

          goto LABEL_9;
        }

        if (qword_280D2F570 == -1)
        {
          v24 = _MergedGlobals_9;
          if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_FAULT))
          {
LABEL_12:
            v23 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          [LSSCAService initWithTargetQueue:subscriber:];
          v24 = _MergedGlobals_9;
          if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_12;
          }
        }

        [LSSCAService initWithTargetQueue:v24 subscriber:?];
        goto LABEL_12;
      }
    }

    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "start", buf, 2u);
    goto LABEL_5;
  }

LABEL_9:
  v23 = v9;
LABEL_13:

  return v23;
}

void __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke(uint64_t a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__LSSCAService_initWithTargetQueue_subscriber___block_invoke_2;
    v8[3] = &unk_279812898;
    v9 = v6;
    v10 = a2;
    v11 = a3;
    dispatch_async(v7, v8);
  }
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
  [serverIfRunning removeObserver:self forKeyPath:@"displays"];

  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  [tVOutDisplay removeObserver:self forKeyPath:@"availableModes"];

  globalLightRequests = self->_globalLightRequests;
  if (globalLightRequests)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = globalLightRequests;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_globalLightRequests objectForKey:*(*(&v14 + 1) + 8 * v10)];
          [v11 invalidate];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13.receiver = self;
  v13.super_class = LSSCAService;
  [(LSSCAService *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLightForDynamicDisplays:(id)displays
{
  var0 = displays.var0;
  v62 = *MEMORY[0x277D85DE8];
  v5 = self->_requestedUpdateCount + 1;
  self->_requestedUpdateCount = v5;
  if ((v5 & 0x1FF) == 0)
  {
    if (qword_280D2F570 != -1)
    {
      [LSSCAService setLightForDynamicDisplays:];
      v6 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v6 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_INFO))
    {
LABEL_4:
      requestedUpdateCount = self->_requestedUpdateCount;
      actualUpdateCount = self->_actualUpdateCount;
      *buf = 134218496;
      *&buf[4] = requestedUpdateCount;
      *&buf[12] = 2048;
      *&buf[14] = actualUpdateCount;
      *&buf[22] = 2048;
      *&buf[24] = actualUpdateCount / requestedUpdateCount;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_INFO, "update filter. requested: %lu. actual: %lu. percentage: %g", buf, 0x20u);
    }
  }

LABEL_5:
  if (([(LSSSettings *)self->_settings dynamic]& 1) != 0 || (alignmentRange = self->_alignmentRange, (*&alignmentRange & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
  {
    v10 = [(LSSSettings *)self->_settings doubleForKey:?];
    alignmentRange = sin(v10 * 3.14159265 / 180.0);
    self->_alignmentRange = alignmentRange;
  }

  v11 = alignmentRange;
  v12 = *(*&var0 + 48);
  v58 = *(*&var0 + 32);
  v59 = v12;
  v13 = *(*&var0 + 80);
  v60 = *(*&var0 + 64);
  v61 = v13;
  v14 = *(*&var0 + 16);
  *buf = **&var0;
  *&buf[16] = v14;
  v15 = LSSCAParamsMake(buf, v11);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  params = self->_params;
  if (!params)
  {
    v23 = objc_alloc_init(LSSCAParamsDictionary);
    v24 = self->_params;
    self->_params = v23;

    params = self->_params;
  }

  [(LSSCAParamsDictionary *)params params];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *(*&var0 + 84);
  if (v32)
  {
    if (v32 == 1)
    {
      v33 = 0.06;
      v34 = 0.02;
      *&v35 = 0.05;
    }

    else
    {
      v33 = 0.0065;
      v34 = 0.003;
      *&v35 = 0.008;
    }

    v36 = *&v35;
  }

  else
  {
    v36 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  if (!LSSCAParamsAlmostEqual(v15, v17, v19, v21, v27, v29, v31, v25, v33, v34, v36, 0.0))
  {
    *&v37 = v15;
    *&v38 = v17;
    *&v39 = v19;
    *&v40 = v21;
    [(LSSCAParamsDictionary *)self->_params setParams:v37, v38, v39, v40];
    ++self->_actualUpdateCount;
    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    v42 = serverIfRunning;
    if (!serverIfRunning)
    {
      goto LABEL_33;
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __43__LSSCAService_setLightForDynamicDisplays___block_invoke;
    v55[3] = &unk_2798128E8;
    v55[4] = self;
    [serverIfRunning lss_filterDisplays:v55 into:self->_displaysToUpdate];
    if (![(NSMutableArray *)self->_displaysToUpdate count])
    {
      goto LABEL_33;
    }

    if (qword_280D2F570 == -1)
    {
      v43 = _MergedGlobals_9;
      if (!os_signpost_enabled(_MergedGlobals_9))
      {
        goto LABEL_22;
      }
    }

    else
    {
      [LSSCAService initWithTargetQueue:subscriber:];
      v43 = _MergedGlobals_9;
      if (!os_signpost_enabled(_MergedGlobals_9))
      {
LABEL_22:
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v44 = self->_displaysToUpdate;
        v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v52;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v52 != v47)
              {
                objc_enumerationMutation(v44);
              }

              [*(*(&v51 + 1) + 8 * i) setGlobalLightParameters:self->_params];
            }

            v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v51 objects:v56 count:16];
          }

          while (v46);
        }

        if (qword_280D2F570 == -1)
        {
          v49 = _MergedGlobals_9;
          if (!os_signpost_enabled(_MergedGlobals_9))
          {
LABEL_32:
            [(NSMutableArray *)self->_displaysToUpdate removeAllObjects];
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          [LSSCAService initWithTargetQueue:subscriber:];
          v49 = _MergedGlobals_9;
          if (!os_signpost_enabled(_MergedGlobals_9))
          {
            goto LABEL_32;
          }
        }

        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_255E8B000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ca update", &unk_255E9DB2B, buf, 2u);
        goto LABEL_32;
      }
    }

    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_255E8B000, v43, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ca update", &unk_255E9DB2B, buf, 2u);
    goto LABEL_22;
  }

LABEL_34:
  v50 = *MEMORY[0x277D85DE8];
}

BOOL __43__LSSCAService_setLightForDynamicDisplays___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a2, "displayId")}];
  v4 = [*(*(a1 + 32) + 16) objectForKey:v3];
  v5 = v4 != 0;

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"availableModes"])
  {
    v10 = [changeCopy valueForKeyPath:*MEMORY[0x277CCA2F0]];
    if ([v10 count])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__LSSCAService_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_279812748;
      block[4] = self;
      dispatch_async(queue, block);
LABEL_9:

      goto LABEL_10;
    }

    if (qword_280D2F570 == -1)
    {
      v13 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [LSSCAService setLightForDynamicDisplays:];
      v13 = _MergedGlobals_9;
      if (!os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_255E8B000, v13, OS_LOG_TYPE_DEFAULT, "display extension disabled", buf, 2u);
    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"displays"])
  {
    v12 = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__LSSCAService_observeValueForKeyPath_ofObject_change_context___block_invoke_18;
    v14[3] = &unk_279812748;
    v14[4] = self;
    dispatch_async(v12, v14);
  }

LABEL_10:
}

- (LSSSubscriptionProvider)subscriber
{
  WeakRetained = objc_loadWeakRetained(&self->_subscriber);

  return WeakRetained;
}

- (void)_requestGlobalFrom:(int)from enabled:
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F570 != -1)
    {
      dispatch_once(&qword_280D2F570, &__block_literal_global_9);
    }

    v6 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109376;
      v14[1] = a2;
      v15 = 1024;
      fromCopy = from;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "changing global light: %u, %d", v14, 0xEu);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v8 = [*(self + 16) objectForKey:v7];
    v9 = v8;
    v10 = from ^ 1;
    if (((from ^ 1) & 1) != 0 || v8)
    {
      if (!v8)
      {
        v10 = 0;
      }

      if (v10 == 1)
      {
        [*(self + 16) removeObjectForKey:v7];
        [v9 invalidate];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((self + 88));
      v12 = [WeakRetained addAssertion:100 reason:@"CoreAnimation"];

      [*(self + 16) setObject:v12 forKey:v7];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateDisplays
{
  v35 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F570 != -1)
    {
      dispatch_once(&qword_280D2F570, &__block_literal_global_9);
    }

    v2 = _MergedGlobals_9;
    if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255E8B000, v2, OS_LOG_TYPE_DEFAULT, "displays changed", buf, 2u);
    }

    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displays = [serverIfRunning displays];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [displays countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(displays);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if (([v10 displayType] | 2) == 2)
          {
            [v10 setNeedsGlobalLightCallback:*(self + 48)];
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "displayId")}];
            v12 = [*(self + 16) objectForKey:v11];
            if (v12)
            {
              [dictionary setObject:v12 forKey:v11];
            }
          }
        }

        v7 = [displays countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v7);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = *(self + 16);
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * j);
          v19 = [dictionary objectForKey:{v18, v24}];

          if (!v19)
          {
            v20 = [*(self + 16) objectForKey:v18];
            [v20 invalidate];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v15);
    }

    v21 = *(self + 16);
    *(self + 16) = dictionary;
    v22 = dictionary;

    [*(self + 24) setParams:{0.0, 0.0, 0.0, 0.0}];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setExtendedDisplayLighting
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    v3 = serverIfRunning;
    if (serverIfRunning && *(self + 32))
    {
      lss_extendedDisplays = [serverIfRunning lss_extendedDisplays];
      if ([lss_extendedDisplays count])
      {
        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v5 = _MergedGlobals_9;
        if (os_log_type_enabled(_MergedGlobals_9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_255E8B000, v5, OS_LOG_TYPE_DEFAULT, "extended display update", buf, 2u);
        }

        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v6 = _MergedGlobals_9;
        if (os_signpost_enabled(_MergedGlobals_9))
        {
          *buf = 0;
          OUTLINED_FUNCTION_1_2();
          _os_signpost_emit_with_name_impl(v7, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, v9, v10, v11, 2u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = lss_extendedDisplays;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v24 + 1) + 8 * i) setGlobalLightParameters:{*(self + 32), v24}];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v14);
        }

        if (qword_280D2F570 != -1)
        {
          dispatch_once(&qword_280D2F570, &__block_literal_global_9);
        }

        v17 = _MergedGlobals_9;
        if (os_signpost_enabled(_MergedGlobals_9))
        {
          *buf = 0;
          OUTLINED_FUNCTION_1_2();
          _os_signpost_emit_with_name_impl(v18, v17, OS_SIGNPOST_INTERVAL_END, v19, v20, v21, v22, 2u);
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setLightForExtendedDisplays:(id)displays
{
  var0 = displays.var0;
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_extendedParams)
  {
    v5 = objc_alloc_init(LSSCAParamsDictionary);
    extendedParams = self->_extendedParams;
    self->_extendedParams = v5;
  }

  if (([(LSSSettings *)self->_settings dynamic]& 1) != 0 || (v7 = OUTLINED_FUNCTION_0_2(), v8 == v9))
  {
    v10 = [(LSSSettings *)self->_settings doubleForKey:?];
    v7 = sin(v10 * 3.14159265 / 180.0);
    self->_alignmentRange = v7;
  }

  v11 = v7;
  memcpy(v14, *&var0, 0x60uLL);
  *&v12 = LSSCAParamsMake(v14, v11);
  [(LSSCAParamsDictionary *)self->_extendedParams setParams:v12];
  [(LSSCAService *)self _setExtendedDisplayLighting];
  v13 = *MEMORY[0x277D85DE8];
}

@end