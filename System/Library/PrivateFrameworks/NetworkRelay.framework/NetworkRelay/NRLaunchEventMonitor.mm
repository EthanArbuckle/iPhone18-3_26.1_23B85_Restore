@interface NRLaunchEventMonitor
+ (id)copySharedMonitor;
- (NRLaunchEventMonitor)init;
- (uint64_t)processSCDUpdate:(uint64_t)a1;
- (void)cancel;
- (void)processCWFEvent:(int)a3 forced:;
- (void)setLaunchFlags:(uint64_t)a1;
- (void)start;
- (void)triggerLaunchIfNeeded;
@end

@implementation NRLaunchEventMonitor

- (void)cancel
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NRLaunchEventMonitor_cancel__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__NRLaunchEventMonitor_cancel__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (v8)
  {
    if (*(v8 + 9))
    {
      return;
    }

    *(v8 + 9) = 1;
  }

  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d cancelled launch event monitor", a4, a5, a6, a7, a8, "");
  }
}

- (void)start
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__NRLaunchEventMonitor_start__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__NRLaunchEventMonitor_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  if (v8 && (*(v8 + 8) & 1) == 0)
  {
    if (nrSupportsPHSProxyClient_onceToken != -1)
    {
      dispatch_once(&nrSupportsPHSProxyClient_onceToken, &__block_literal_global_523);
    }

    if (nrSupportsPHSProxyClient_supported)
    {
      out_token = -1;
      objc_initWeak(&location, v8);
      v10 = *(v8 + 24);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__NRLaunchEventMonitor_startInner__block_invoke;
      handler[3] = &unk_27996ADE0;
      objc_copyWeak(&v57, &location);
      v11 = notify_register_dispatch("com.apple.private.restrict-post.networkrelay.launch", &out_token, v10, handler);

      if (v11)
      {
        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        v12 = nrCopyLogObj_sNRLogObj_8;
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_22:
          if (nrCopyLogObj_onceToken_7 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
          }

          v17 = nrCopyLogObj_sNRLogObj_8;
          _NRLogWithArgs(v17, 17, "notify_register_dispatch(%u) failed", v21, v22, v23, v24, v25, v11);
          goto LABEL_37;
        }

        v19 = v12;
        v20 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

        if (v20)
        {
          goto LABEL_22;
        }

        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
      }

      else
      {
        *(v8 + 12) = out_token;
        v13 = objc_alloc_init(MEMORY[0x277D02B18]);
        v14 = *(v8 + 32);
        *(v8 + 32) = v13;

        v15 = *(v8 + 32);
        [v15 activate];

        v16 = *(v8 + 32);
        v55 = 0;
        [v16 startMonitoringEventType:30 error:&v55];
        v17 = v55;

        if (v17)
        {
          if (nrCopyLogObj_onceToken_7 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
          }

          v18 = nrCopyLogObj_sNRLogObj_8;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v41 = v18;
            v42 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

            if (!v42)
            {
LABEL_37:

              objc_destroyWeak(&v57);
              objc_destroyWeak(&location);
              goto LABEL_38;
            }
          }

          if (nrCopyLogObj_onceToken_7 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
          }

          v43 = nrCopyLogObj_sNRLogObj_8;
          _NRLogWithArgs(v43, 17, "startMonitoringEventType(%@) failed", v44, v45, v46, v47, v48, v17);

          goto LABEL_37;
        }

        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __34__NRLaunchEventMonitor_startInner__block_invoke_2;
        v53[3] = &unk_27996AE08;
        objc_copyWeak(&v54, &location);
        v26 = *(v8 + 32);
        [v26 setEventHandler:v53];

        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = v8;
        *(v8 + 48) = SCDynamicStoreCreate(0, @"NRLaunchEventMonitor", scDynamicStoreCallout, &context);
        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"ir0", *MEMORY[0x277CE16A0]);
        v28 = *(v8 + 56);
        *(v8 + 56) = NetworkInterfaceEntity;

        v29 = *(v8 + 56);
        v60[0] = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];

        SCDynamicStoreSetNotificationKeys(*(v8 + 48), v30, 0);
        v31 = *(v8 + 48);
        v32 = *(v8 + 24);
        SCDynamicStoreSetDispatchQueue(v31, v32);

        v33 = *(v8 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__NRLaunchEventMonitor_startInner__block_invoke_3;
        block[3] = &unk_27996B248;
        block[4] = v8;
        v51 = v30;
        v34 = v30;
        dispatch_async(v33, block);

        objc_destroyWeak(&v54);
        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
        v40 = *(a1 + 32);
        if (v40)
        {
          *(v40 + 8) = 1;
        }

        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d started launch event monitor", v35, v36, v37, v38, v39, "");
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_7 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d PHS proxy client not supported", a4, a5, a6, a7, a8, "");
      }
    }
  }

LABEL_38:
  v49 = *MEMORY[0x277D85DE8];
}

void __34__NRLaunchEventMonitor_startInner__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && *(WeakRetained + 3) == a2)
  {
    v4 = WeakRetained;
    [(NRLaunchEventMonitor *)WeakRetained triggerLaunchIfNeeded];
    WeakRetained = v4;
  }
}

void __34__NRLaunchEventMonitor_startInner__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[9] & 1) == 0)
  {
    v4 = WeakRetained;
    [(NRLaunchEventMonitor *)WeakRetained processCWFEvent:v5 forced:0];
    WeakRetained = v4;
  }
}

uint64_t __34__NRLaunchEventMonitor_startInner__block_invoke_3(uint64_t a1)
{
  [(NRLaunchEventMonitor *)*(a1 + 32) processCWFEvent:1 forced:?];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a1 + 40);

    return [(NRLaunchEventMonitor *)result processSCDUpdate:v3];
  }

  return result;
}

- (void)processCWFEvent:(int)a3 forced:
{
  v5 = a2;
  v6 = v5;
  if (a1 && ([v5 type] == 30 || a3))
  {
    v7 = *(a1 + 16) + 1;
    *(a1 + 16) = v7;
    v8 = dispatch_time(0, 2000000000);
    v9 = *(a1 + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__NRLaunchEventMonitor_processCWFEvent_forced___block_invoke;
    v10[3] = &unk_27996AE30;
    v10[4] = a1;
    v11 = v7;
    dispatch_after(v8, v9, v10);
  }
}

- (uint64_t)processSCDUpdate:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 9) & 1) == 0)
  {
    v11 = v3;
    v5 = SCDynamicStoreCopyMultiple(*(a1 + 48), v3, 0);
    if ([(__CFArray *)v11 containsObject:*(a1 + 56)])
    {
      v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*(a1 + 56)];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CE17A0]];
        v9 = [v8 BOOLValue];
      }

      else
      {
        v9 = 0;
      }

      if (v9 == (*(a1 + 40) & 1))
      {
      }

      else
      {
        [(NRLaunchEventMonitor *)a1 setLaunchFlags:?];

        [(NRLaunchEventMonitor *)a1 triggerLaunchIfNeeded];
      }
    }

    v4 = v11;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)setLaunchFlags:(uint64_t)a1
{
  if (a1 && *(a1 + 40) != a2)
  {
    *(a1 + 40) = a2;
    if (nrCopyLogObj_onceToken_7 != -1)
    {
      v15 = a1;
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
      a1 = v15;
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || (v2 = a1, v3 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT), a1 = v2, v3))
    {
      v4 = *(a1 + 40);
      v5 = MEMORY[0x277CBEB18];
      v6 = nrCopyLogObj_sNRLogObj_8;
      v7 = objc_alloc_init(v5);
      v8 = v7;
      if (v4)
      {
        [v7 addObject:@"PHSClientActiveWithIR"];
      }

      if ((v4 & 2) != 0)
      {
        [v8 addObject:@"PHSClientActiveWithSoftAP"];
      }

      if ([v8 count])
      {
        v9 = [v8 componentsJoinedByString:{@", "}];
      }

      else
      {
        v9 = &stru_286D23DB8;
      }

      v16 = v9;

      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d updated launch flags: [%@]", v10, v11, v12, v13, v14, "");
    }
  }
}

- (void)triggerLaunchIfNeeded
{
  if (a1 && *(a1 + 40))
  {
    if (nrCopyLogObj_onceToken_7 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v3 = MEMORY[0x277CBEB18];
      v4 = nrCopyLogObj_sNRLogObj_8;
      v5 = objc_alloc_init(v3);
      v6 = v5;
      if (v2)
      {
        [v5 addObject:@"PHSClientActiveWithIR"];
      }

      if ((v2 & 2) != 0)
      {
        [v6 addObject:@"PHSClientActiveWithSoftAP"];
      }

      if ([v6 count])
      {
        v7 = [v6 componentsJoinedByString:{@", "}];
      }

      else
      {
        v7 = &stru_286D23DB8;
      }

      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d issuing launch notify w/ flags: %@", v8, v9, v10, v11, v12, "");
    }

    if ((*(a1 + 40) & 3) != 0)
    {

      notify_post("com.apple.networkrelay.launch.phs");
    }
  }
}

void __47__NRLaunchEventMonitor_processCWFEvent_forced___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    if (*(v9 + 9))
    {
      return;
    }

    if (*(a1 + 40) == *(v9 + 16))
    {
      v10 = *(v9 + 32);
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 40))
  {
    v10 = 0;
LABEL_5:
    v11 = [v10 currentKnownNetworkProfile];
    v12 = *(a1 + 32);
    v27 = v11;
    if (v12)
    {
      v13 = *(v12 + 40);
      if (![v11 isPersonalHotspot] || (v13 & 2) != 0)
      {
        if ((v13 & 2) != 0 && ([v27 isPersonalHotspot] & 1) == 0)
        {
          if (nrCopyLogObj_onceToken_7 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = nrCopyLogObj_22();
            _NRLogWithArgs(v20, 0, "%s%.30s:%-4d Left PHS network", v21, v22, v23, v24, v25, "");
          }

          v26 = *(a1 + 32);
          if (v26)
          {
            [(NRLaunchEventMonitor *)v26 setLaunchFlags:?];
          }
        }

        goto LABEL_25;
      }
    }

    else if (![v11 isPersonalHotspot])
    {
LABEL_25:

      return;
    }

    if (nrCopyLogObj_onceToken_7 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d Joined PHS network", v14, v15, v16, v17, v18, "");
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      [(NRLaunchEventMonitor *)v19 setLaunchFlags:?];
      v19 = *(a1 + 32);
    }

    [(NRLaunchEventMonitor *)v19 triggerLaunchIfNeeded];
    goto LABEL_25;
  }

  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEBUG))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 2, "%s%.30s:%-4d Ignoring stale profile changed event", a4, a5, a6, a7, a8, "");
  }
}

- (NRLaunchEventMonitor)init
{
  v19 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = NRLaunchEventMonitor;
  v2 = [(NRLaunchEventMonitor *)&v18 init];
  if (!v2)
  {
    v6 = nrCopyLogObj_22();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v9 = nrCopyLogObj_22();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v10, v11, v12, v13, v14, "");

LABEL_9:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "[NRLaunchEventMonitor init]";
    v17 = nrCopyLogObj_22();
    _NRLogAbortWithPack(v17);
  }

  v3 = v2;
  if (NRLaunchEventMonitorCopyQueue_onceToken != -1)
  {
    dispatch_once(&NRLaunchEventMonitorCopyQueue_onceToken, &__block_literal_global_64);
  }

  objc_storeStrong(&v3->_queue, NRLaunchEventMonitorCopyQueue_queue);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)copySharedMonitor
{
  if (copySharedMonitor_onceToken != -1)
  {
    dispatch_once(&copySharedMonitor_onceToken, &__block_literal_global_29);
  }

  v3 = copySharedMonitor_monitor;

  return v3;
}

uint64_t __41__NRLaunchEventMonitor_copySharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(NRLaunchEventMonitor);
  v1 = copySharedMonitor_monitor;
  copySharedMonitor_monitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end