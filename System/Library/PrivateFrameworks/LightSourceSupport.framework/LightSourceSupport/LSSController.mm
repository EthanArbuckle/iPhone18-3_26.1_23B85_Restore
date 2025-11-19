@interface LSSController
+ (id)sharedInstance;
- (LSSController)init;
- (__CFString)_resolveProvider:(uint64_t)a1;
- (id)addAssertion:(unsigned int)a3 reason:(id)a4;
- (uint64_t)_resolveFeatures;
- (void)_selectProviderFromSettings;
- (void)_setExtendedProviderTo:(uint64_t)a1;
- (void)_setProviderTo:(uint64_t)a1;
- (void)_start;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)provider:(id)a3 updatedLight:(id)a4;
@end

@implementation LSSController

- (void)_selectProviderFromSettings
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  [(LSSSettings *)*(a1 + 112) logDebugInfo];
  v2 = [(LSSController *)a1 _resolveFeatures];
  *(a1 + 104) = v2;
  v3 = [(LSSController *)a1 _resolveProvider:v2];
  if (qword_280D2F4F0 != -1)
  {
    [LSSController _selectProviderFromSettings];
    v4 = qword_280D2F4E8;
    if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = qword_280D2F4E8;
  if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_255E8B000, v4, OS_LOG_TYPE_DEFAULT, "provider resolved: %@", &v7, 0xCu);
  }

LABEL_5:
  [(LSSController *)a1 _setProviderTo:v3];
  if (!*(a1 + 32))
  {
    [LSSController _selectProviderFromSettings];
  }

  v5 = @"stationary";
  [(LSSController *)a1 _setExtendedProviderTo:v5];
  if (!*(a1 + 24))
  {
    [LSSController _selectProviderFromSettings];
  }

  [*(a1 + 32) setFeatures:*(a1 + 104)];
  [*(a1 + 24) setFeatures:*(a1 + 104)];

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (qword_280D2F4E0 == -1)
  {
    v3 = _MergedGlobals_2;
  }

  else
  {
    +[LSSController sharedInstance];
    v3 = _MergedGlobals_2;
  }

  return v3;
}

uint64_t __31__LSSController_sharedInstance__block_invoke()
{
  _MergedGlobals_2 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (LSSController)init
{
  v10.receiver = self;
  v10.super_class = LSSController;
  v2 = [(LSSController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.lightsourcesupport.controller", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__LSSController_init__block_invoke;
    block[3] = &unk_279812748;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

- (void)_start
{
  if (!a1)
  {
    return;
  }

  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;

  objc_initWeak(&location, a1);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __23__LSSController__start__block_invoke;
  v38 = &unk_279812770;
  objc_copyWeak(&v39, &location);
  v6 = MEMORY[0x259C50010](&v35);
  v7 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"disableOutput" stateDidChangeHandler:{v6, v35, v36, v37, v38}];
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;

  v9 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"lowPower" stateDidChangeHandler:v6];
  v10 = *(a1 + 72);
  *(a1 + 72) = v9;

  v11 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"needsOrientation" stateDidChangeHandler:v6];
  v12 = *(a1 + 80);
  *(a1 + 80) = v11;

  v13 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"needsLight" stateDidChangeHandler:v6];
  v14 = *(a1 + 88);
  *(a1 + 88) = v13;

  v15 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"responsiveMotion" stateDidChangeHandler:v6];
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;

  if (qword_280D2F4F0 != -1)
  {
    [LSSController _start];
  }

  v17 = qword_280D2F4E8;
  [*(a1 + 64) setLog:v17];

  if (qword_280D2F4F0 != -1)
  {
    [LSSController _start];
  }

  v18 = qword_280D2F4E8;
  [*(a1 + 72) setLog:v18];

  if (qword_280D2F4F0 != -1)
  {
    [LSSController _start];
  }

  v19 = qword_280D2F4E8;
  [*(a1 + 80) setLog:v19];

  if (qword_280D2F4F0 != -1)
  {
    [LSSController _start];
  }

  v20 = qword_280D2F4E8;
  [*(a1 + 88) setLog:v20];

  if (qword_280D2F4F0 != -1)
  {
    [LSSController _start];
  }

  v21 = qword_280D2F4E8;
  [*(a1 + 96) setLog:v21];

  v22 = [[LSSXPCService alloc] initWithTargetQueue:a1 subscriber:?];
  v23 = *(a1 + 16);
  *(a1 + 16) = v22;

  if (!*(a1 + 16))
  {
    if (qword_280D2F4F0 == -1)
    {
      v24 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      [LSSController _start];
      v24 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    [(LSSController *)v24 _start];
  }

LABEL_15:
  v27 = +[LSSSettings currentSettings];
  v28 = [(LSSSettings *)v27 BOOLForKey:?];

  if (v28)
  {
    v29 = [[LSSCAService alloc] initWithTargetQueue:*(a1 + 8) subscriber:a1];
    v30 = *(a1 + 56);
    *(a1 + 56) = v29;

    if (!*(a1 + 56))
    {
      __assert_rtn("[LSSController _start]", "LSSController.m", 130, "_caService != nil");
    }
  }

  v31 = +[LSSSettings currentSettings];
  v32 = *(a1 + 112);
  *(a1 + 112) = v31;

  if ([(LSSSettings *)*(a1 + 112) dynamic])
  {
    v33 = [(LSSSettings *)*(a1 + 112) defaults];
    [v33 addObserver:a1 forKeyPath:@"provider" options:1 context:0];

    v34 = [(LSSSettings *)*(a1 + 112) defaults];
    [v34 addObserver:a1 forKeyPath:@"lowPerformance" options:1 context:0];
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __23__LSSController__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__LSSController__start__block_invoke_2;
    block[3] = &unk_279812748;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__LSSController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279812748;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setExtendedProviderTo:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (!a1 || ([v4 isEqualToString:*(a1 + 40)] & 1) != 0)
  {
    goto LABEL_11;
  }

  objc_storeStrong((a1 + 40), a2);
  if (qword_280D2F4F0 != -1)
  {
    [LSSController _selectProviderFromSettings];
    v6 = qword_280D2F4E8;
    if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = qword_280D2F4E8;
  if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *v9 = 0;
    _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "changing extended provider", v9, 2u);
  }

LABEL_6:
  [*(a1 + 24) invalidate];
  [*(a1 + 24) setDelegate:0];
  if ([v5 isEqualToString:@"stationary"])
  {
    v7 = [[LSSStationaryProvider alloc] initWithQueue:*(a1 + 8) delegate:a1];
  }

  else
  {
    if (![v5 isEqualToString:@"null"])
    {
      [LSSController _setExtendedProviderTo:];
    }

    v7 = objc_alloc_init(LSSNullProvider);
  }

  v8 = *(a1 + 24);
  *(a1 + 24) = v7;

LABEL_11:
}

- (void)provider:(id)a3 updatedLight:(id)a4
{
  var0 = a4.var0;
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_provider == v6)
  {
    v11 = *(*&var0 + 84);
    idling = self->_idling;
    if (!idling || v11 != 0)
    {
      if (self->_idling && v11)
      {
        self->_idling = 0;
        if (qword_280D2F4F0 == -1)
        {
          v14 = qword_280D2F4E8;
          if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
          {
LABEL_13:
            v15 = &unk_2867F8368;
LABEL_23:
            LSSPowerLog(0, v15);
            goto LABEL_24;
          }
        }

        else
        {
          [LSSController _selectProviderFromSettings];
          v14 = qword_280D2F4E8;
          if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_255E8B000, v14, OS_LOG_TYPE_DEFAULT, "--ACTIVE-", buf, 2u);
        goto LABEL_13;
      }

      if (idling || v11)
      {
        goto LABEL_24;
      }

      self->_idling = 1;
      if (qword_280D2F4F0 == -1)
      {
        v17 = qword_280D2F4E8;
        if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:
          v15 = &unk_2867F8390;
          goto LABEL_23;
        }
      }

      else
      {
        [LSSController _selectProviderFromSettings];
        v17 = qword_280D2F4E8;
        if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_255E8B000, v17, OS_LOG_TYPE_DEFAULT, "--IDLE--", buf, 2u);
      goto LABEL_22;
    }

    if (qword_280D2F4F0 == -1)
    {
      v16 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        xpc = self->_xpc;
        v19 = *(*&var0 + 48);
        v38 = *(*&var0 + 32);
        v39 = v19;
        v20 = *(*&var0 + 80);
        v40 = *(*&var0 + 64);
        v41 = v20;
        v21 = *(*&var0 + 16);
        *buf = **&var0;
        v37 = v21;
        [(LSSXPCService *)xpc updateLightDirection:buf];
        v22 = dispatch_time(0, 1000000);
        queue = self->_queue;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __39__LSSController_provider_updatedLight___block_invoke;
        v28[3] = &unk_279812798;
        v35 = self;
        v24 = *(*&var0 + 48);
        v31 = *(*&var0 + 32);
        v32 = v24;
        v25 = *(*&var0 + 80);
        v33 = *(*&var0 + 64);
        v34 = v25;
        v26 = *(*&var0 + 16);
        v29 = **&var0;
        v30 = v26;
        dispatch_after(v22, queue, v28);
        goto LABEL_25;
      }
    }

    else
    {
      [LSSController _selectProviderFromSettings];
      v16 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_255E8B000, v16, OS_LOG_TYPE_DEFAULT, "occasional", buf, 2u);
    goto LABEL_24;
  }

  if (self->_extendedProvider == v6)
  {
    caService = self->_caService;
    v8 = *(*&var0 + 48);
    v38 = *(*&var0 + 32);
    v39 = v8;
    v9 = *(*&var0 + 80);
    v40 = *(*&var0 + 64);
    v41 = v9;
    v10 = *(*&var0 + 16);
    *buf = **&var0;
    v37 = v10;
    [(LSSCAService *)caService setLightForExtendedDisplays:buf];
  }

LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __39__LSSController_provider_updatedLight___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 128) + 56);
  v2 = *(a1 + 80);
  v7[2] = *(a1 + 64);
  v7[3] = v2;
  v3 = *(a1 + 112);
  v7[4] = *(a1 + 96);
  v7[5] = v3;
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 32);
  v7[1] = v4;
  result = [v1 setLightForDynamicDisplays:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)addAssertion:(unsigned int)a3 reason:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v8 = 72;
    }

    else
    {
      v8 = 64;
    }
  }

  else
  {
    switch(a3)
    {
      case 2u:
        v8 = 96;
        break;
      case 0x64u:
        v8 = 88;
        break;
      case 0x65u:
        v8 = 80;
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = [*(&self->super.isa + v8) acquireForReason:v6];
LABEL_13:

  return v7;
}

- (__CFString)_resolveProvider:(uint64_t)a1
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = +[LSSSettings currentSettings];
    v4 = [(LSSSettings *)v3 defaults];

    v5 = [v4 objectForKey:@"provider"];
    if (qword_280D2F4F0 != -1)
    {
      dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
    }

    v6 = qword_280D2F4E8;
    if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_debug_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEBUG, "provider suggested: %@", &v11, 0xCu);
    }

    v7 = @"stationary";
    if ((a2 & 6) != 0)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (uint64_t)_resolveFeatures
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ([*(result + 64) isActive])
  {
    if (qword_280D2F4F0 != -1)
    {
      dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
    }

    v2 = qword_280D2F4E8;
    if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v22 = 0;
    v4 = "disabling: assertion";
    v5 = &v22;
LABEL_13:
    OUTLINED_FUNCTION_0_0(&dword_255E8B000, v2, v3, v4, v5);
    return 0;
  }

  v6 = [*(v1 + 80) isActive];
  v7 = [*(v1 + 88) isActive];
  v8 = v7;
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    if (qword_280D2F4F0 != -1)
    {
      dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
    }

    v2 = qword_280D2F4E8;
    if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v21 = 0;
    v4 = "disabling: no clients.";
    v5 = &v21;
    goto LABEL_13;
  }

  v9 = [*(v1 + 72) isActive];
  if ([*(v1 + 96) isActive])
  {
    if (qword_280D2F4F0 != -1)
    {
      dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
    }

    v10 = qword_280D2F4E8;
    if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 0;
      OUTLINED_FUNCTION_0_0(&dword_255E8B000, v10, v11, "responsive: assertion", v20);
    }

    v12 = 8;
    if (!v8)
    {
      goto LABEL_36;
    }

LABEL_23:
    if (v9)
    {
      if (qword_280D2F4F0 != -1)
      {
        dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
      }

      v13 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v19 = 0;
      v15 = "forcing stationary: low power mode";
      v16 = &v19;
    }

    else
    {
      if (![(LSSSettings *)*(v1 + 112) BOOLForKey:?])
      {
        v12 |= 2uLL;
        goto LABEL_36;
      }

      if (qword_280D2F4F0 != -1)
      {
        dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
      }

      v13 = qword_280D2F4E8;
      if (!os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v18 = 0;
      v15 = "forcing stationary: device is low performance.";
      v16 = &v18;
    }

    OUTLINED_FUNCTION_0_0(&dword_255E8B000, v13, v14, v15, v16);
LABEL_34:
    v12 |= 1uLL;
    goto LABEL_36;
  }

  v12 = 0;
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_36:
  if ((v9 & ((v12 & 8) == 0)) != 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = v12 | 4;
  }

  if (v6)
  {
    return v17;
  }

  else
  {
    return v12;
  }
}

- (void)_setProviderTo:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (!a1 || ([v4 isEqualToString:*(a1 + 48)] & 1) != 0)
  {
    goto LABEL_29;
  }

  if (qword_280D2F4F0 != -1)
  {
    dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
  }

  v6 = qword_280D2F4E8;
  if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    OUTLINED_FUNCTION_0_0(&dword_255E8B000, v6, v7, "changing provider", v30);
  }

  objc_storeStrong((a1 + 48), a2);
  [*(a1 + 32) invalidate];
  [*(a1 + 32) setDelegate:0];
  if ([v5 isEqualToString:@"stationary"])
  {
    v8 = LSSStationaryProvider;
  }

  else
  {
    if ([v5 isEqualToString:@"motion"])
    {
      v10 = [[LSSMotionBasedProvider alloc] initWithQueue:*(a1 + 8) delegate:0];
      [(LSSSettings *)*(a1 + 112) doubleForKey:?];
      v11 = *(a1 + 56);
      if (v11 && ([v11 displayForDisplayLink], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        v14 = [LSSDisplayLinkResampler alloc];
        [(LSSMotionBasedProvider *)v10 updateInterval];
        v15 = [LSSDisplayLinkResampler initWithProvider:v14 display:"initWithProvider:display:inUpdateInterval:outUpdateInterval:delegate:" inUpdateInterval:v10 outUpdateInterval:v13 delegate:a1];
        v16 = *(a1 + 32);
        *(a1 + 32) = v15;
      }

      else
      {
        if (qword_280D2F4F0 != -1)
        {
          dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
        }

        v17 = qword_280D2F4E8;
        if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_ERROR))
        {
          *v29 = 0;
          OUTLINED_FUNCTION_1_0(&dword_255E8B000, v17, v18, "cannot make display link", v29);
        }

        v19 = [LSSResampler alloc];
        [(LSSMotionBasedProvider *)v10 updateInterval];
        v20 = [LSSResampler initWithProvider:v19 inUpdateInterval:"initWithProvider:inUpdateInterval:outUpdateInterval:delegate:" outUpdateInterval:v10 delegate:a1];
        v13 = *(a1 + 32);
        *(a1 + 32) = v20;
      }

      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"test"])
    {
      v8 = LSSTestProvider;
    }

    else if ([v5 isEqualToString:@"performance"])
    {
      v8 = LSSPerformanceTestProvider;
    }

    else
    {
      if (![v5 isEqualToString:@"time"])
      {
        if (![v5 isEqualToString:@"null"])
        {
          v25 = LSSLogController();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v28 = 0;
            OUTLINED_FUNCTION_1_0(&dword_255E8B000, v25, v26, "invalid provider setting.", v28);
          }

          v10 = *(a1 + 32);
          *(a1 + 32) = 0;
          goto LABEL_23;
        }

        v9 = objc_alloc_init(LSSNullProvider);
        goto LABEL_10;
      }

      v8 = LSSTimeBasedProvider;
    }
  }

  v9 = [[v8 alloc] initWithQueue:*(a1 + 8) delegate:a1];
LABEL_10:
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
LABEL_23:

  if (!*(a1 + 32))
  {
    if (qword_280D2F4F0 != -1)
    {
      dispatch_once(&qword_280D2F4F0, &__block_literal_global_116);
    }

    v21 = qword_280D2F4E8;
    if (os_log_type_enabled(qword_280D2F4E8, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      OUTLINED_FUNCTION_1_0(&dword_255E8B000, v21, v22, "provider is not available (failed to init?). using fallback.", v27);
    }

    v23 = [[LSSStationaryProvider alloc] initWithQueue:*(a1 + 8) delegate:a1];
    v24 = *(a1 + 32);
    *(a1 + 32) = v23;
  }

LABEL_29:
}

@end