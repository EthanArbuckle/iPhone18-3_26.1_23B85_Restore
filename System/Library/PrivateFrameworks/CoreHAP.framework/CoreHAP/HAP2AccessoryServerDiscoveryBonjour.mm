@interface HAP2AccessoryServerDiscoveryBonjour
+ (id)new;
- (BOOL)isDiscovering;
- (HAP2AccessoryServerDiscoveryBonjour)init;
- (HAP2AccessoryServerDiscoveryBonjour)initWithServiceType:(id)a3 domain:(id)a4;
- (HAP2AccessoryServerDiscoveryDelegate)delegate;
- (OS_nw_browser)browser;
- (void)_handleBrowseResults:(id)a3;
- (void)_handleBrowseResultsChange:(id)a3 current:(id)a4 batchComplete:(BOOL)a5;
- (void)_handleStateChange:(int)a3 error:(id)a4;
- (void)_startBrowser;
- (void)_startDiscovering;
- (void)_stopBrowser;
- (void)_stopDiscovering;
- (void)dealloc;
- (void)reconfirmAccessory:(id)a3;
- (void)setBrowser:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDiscovering:(BOOL)a3;
- (void)startDiscovering;
- (void)stopDiscovering;
@end

@implementation HAP2AccessoryServerDiscoveryBonjour

- (void)_handleBrowseResults:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAP2AccessoryServerDiscoveryBonjour *)self delegate];
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__12038;
    v26 = __Block_byref_object_dispose__12039;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__12038;
    v20 = __Block_byref_object_dispose__12039;
    v21 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__HAP2AccessoryServerDiscoveryBonjour__handleBrowseResults___block_invoke;
    v15[3] = &unk_2786D4A98;
    v15[4] = &v22;
    v15[5] = &v16;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
    if ([v17[5] count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = v17[5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__HAP2AccessoryServerDiscoveryBonjour__handleBrowseResults___block_invoke_52;
      v12[3] = &unk_2786D4AC0;
      v13 = v6;
      v14 = self;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];
    }

    v8 = v23[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HAP2AccessoryServerDiscoveryBonjour__handleBrowseResults___block_invoke_2;
    v9[3] = &unk_2786D4AC0;
    v10 = v6;
    v11 = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }
}

void __60__HAP2AccessoryServerDiscoveryBonjour__handleBrowseResults___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 currentResult];

  if (v4)
  {
    v5 = [v3 currentResult];
    v6 = accessoryInfoForBrowseResult(v5);

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [v3 previousResult];

  if (v7)
  {
    v8 = [v3 previousResult];
    v6 = accessoryInfoForBrowseResult(v8);

    if (v6)
    {
LABEL_5:
      v9 = [v6 deviceID];
      if (([v3 changes] & 2) != 0 || (objc_msgSend(v3, "changes") & 0x20) != 0)
      {
        v10 = a1 + 32;
        v11 = *(*(*(a1 + 32) + 8) + 40);
        v12 = 40;
        if (!v11)
        {
LABEL_11:
          v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
          v14 = *(*v10 + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v11 = *(*(*v10 + 8) + 40);
        }
      }

      else
      {
        if (([v3 changes] & 4) == 0)
        {
LABEL_13:

          goto LABEL_18;
        }

        v10 = a1 + 40;
        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = 32;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      [v11 setObject:v6 forKeyedSubscript:v9];
      [*(*(*(a1 + v12) + 8) + 40) setObject:0 forKeyedSubscript:v9];
      goto LABEL_13;
    }
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v16 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
  {
    v18 = v16;
    v19 = [v3 previousResult];
    v20 = [v3 currentResult];
    v21 = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_error_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "Failed to parse previous and current browse results: previous = %@, current = %@", &v21, 0x16u);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleBrowseResultsChange:(id)a3 current:(id)a4 batchComplete:(BOOL)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v10);

  if ([(HAP2AccessoryServerDiscoveryBonjour *)self isDiscovering])
  {
    changes = nw_browse_result_get_changes(v8, v9);
    if (changes)
    {
      if (changes)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v19 = hap2Log_browser;
        if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "Ignoring identical results", buf, 2u);
        }
      }

      else
      {
        v12 = [[HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple alloc] initWithPreviousResult:v8 currentResult:v9 changes:changes];
        if (a5)
        {
          v13 = [(HAP2AccessoryServerDiscoveryBonjour *)self browseResults];

          if (v13)
          {
            v14 = [(HAP2AccessoryServerDiscoveryBonjour *)self browseResults];
            [v14 addObject:v12];

            v15 = [(HAP2AccessoryServerDiscoveryBonjour *)self browseResults];
            v16 = [v15 copy];

            [(HAP2AccessoryServerDiscoveryBonjour *)self setBrowseResults:0];
          }

          else
          {
            v24 = v12;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
          }

          [(HAP2AccessoryServerDiscoveryBonjour *)self _handleBrowseResults:v16];
        }

        else
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v20 = hap2Log_browser;
          if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "Batching changes", buf, 2u);
          }

          v21 = [(HAP2AccessoryServerDiscoveryBonjour *)self browseResults];

          if (!v21)
          {
            v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
            [(HAP2AccessoryServerDiscoveryBonjour *)self setBrowseResults:v22];
          }

          v16 = [(HAP2AccessoryServerDiscoveryBonjour *)self browseResults];
          [v16 addObject:v12];
        }
      }
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v18 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v8;
        v27 = 2112;
        v28 = v9;
        _os_log_error_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "Failed to compare results: previous = %@ current = %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "Ignoring result change while not discovering: %@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleStateChange:(int)a3 error:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HAP2AccessoryServerDiscoveryBonjour *)self isDiscovering];
  v9 = [(HAP2AccessoryServerDiscoveryBonjour *)self delegate];
  if (a3 == 1)
  {
    if (v8)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "Received redundant ready message", &v25, 2u);
      }

      goto LABEL_33;
    }

    [(HAP2AccessoryServerDiscoveryBonjour *)self setDiscovering:1];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v15 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
      v25 = 138412290;
      v26 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "Now discovering services with type '%@'", &v25, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = v9;
      v19 = self;
      v20 = 0;
LABEL_32:
      [v18 discovery:v19 didStartDiscoveringWithError:v20];
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  [(HAP2AccessoryServerDiscoveryBonjour *)self setDiscovering:0];
  if (a3 == 3)
  {
    if (!v8)
    {
      goto LABEL_33;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v21 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v13 = v21;
    v14 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "No longer discovering services with type '%@'", &v25, 0xCu);
    goto LABEL_25;
  }

  if (a3 != 2)
  {
    goto LABEL_33;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_browser;
  v12 = os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = v11;
    v14 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v25 = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = v6;
    _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "Browser failed while discovering services with type '%@': %@", &v25, 0x16u);
LABEL_25:

LABEL_26:
    if (objc_opt_respondsToSelector())
    {
      [v9 discovery:self didStopDiscoveringWithError:v6];
    }

    goto LABEL_33;
  }

  if (v12)
  {
    v23 = v11;
    v24 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v25 = 138412546;
    v26 = v24;
    v27 = 2112;
    v28 = v6;
    _os_log_error_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "Browser failed to start discovering services with type '%@': %@", &v25, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = v9;
    v19 = self;
    v20 = v6;
    goto LABEL_32;
  }

LABEL_33:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_stopBrowser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAP2AccessoryServerDiscoveryBonjour *)self browser];
  if (v4)
  {
    browser = v4;
    [(HAP2AccessoryServerDiscoveryBonjour *)self setBrowser:0];
    nw_browser_cancel(browser);
    v4 = browser;
  }
}

- (void)_startBrowser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAP2AccessoryServerDiscoveryBonjour *)self browser];

  if (!v4)
  {
    v5 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v6 = [v5 UTF8String];
    v7 = [(HAP2AccessoryServerDiscoveryBonjour *)self domain];
    bonjour_service = nw_browse_descriptor_create_bonjour_service(v6, [v7 UTF8String]);

    nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
    v9 = nw_browser_create(bonjour_service, 0);
    v10 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
    nw_browser_set_queue(v9, v10);

    objc_initWeak(&location, self);
    state_changed_handler[0] = MEMORY[0x277D85DD0];
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = __52__HAP2AccessoryServerDiscoveryBonjour__startBrowser__block_invoke;
    state_changed_handler[3] = &unk_2786D4A48;
    objc_copyWeak(&v19, &location);
    v11 = v9;
    v18 = v11;
    nw_browser_set_state_changed_handler(v11, state_changed_handler);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __52__HAP2AccessoryServerDiscoveryBonjour__startBrowser__block_invoke_2;
    v15 = &unk_2786D4A70;
    objc_copyWeak(&v16, &location);
    nw_browser_set_browse_results_changed_handler(v11, &v12);
    [(HAP2AccessoryServerDiscoveryBonjour *)self setBrowser:v11, v12, v13, v14, v15];
    nw_browser_start(v11);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __52__HAP2AccessoryServerDiscoveryBonjour__startBrowser__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  error = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (error)
  {
    v6 = nw_error_copy_cf_error(error);
  }

  else
  {
    v6 = 0;
  }

  [WeakRetained _handleStateChange:a2 error:v6];

  if (a2 == 3)
  {
    nw_browser_set_browse_results_changed_handler(*(a1 + 32), 0);
    nw_browser_set_state_changed_handler(*(a1 + 32), 0);
  }
}

void __52__HAP2AccessoryServerDiscoveryBonjour__startBrowser__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBrowseResultsChange:v8 current:v7 batchComplete:a4];
}

- (void)_stopDiscovering
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "Stopping discovery of services with type '%@'", &v8, 0xCu);
  }

  [(HAP2AccessoryServerDiscoveryBonjour *)self _stopBrowser];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscovering
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(HAP2AccessoryServerDiscoveryBonjour *)self type];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "Starting to discover services with type '%@'", &v8, 0xCu);
  }

  [(HAP2AccessoryServerDiscoveryBonjour *)self _startBrowser];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reconfirmAccessory:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)stopDiscovering
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAP2AccessoryServerDiscoveryBonjour_stopDiscovering__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startDiscovering
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAP2AccessoryServerDiscoveryBonjour_startDiscovering__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setBrowser:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v5);

  browser = self->_browser;
  self->_browser = v4;
}

- (OS_nw_browser)browser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self workQueue];
  dispatch_assert_queue_V2(v3);

  browser = self->_browser;

  return browser;
}

- (void)setDiscovering:(BOOL)a3
{
  v5 = [(HAP2AccessoryServerDiscoveryBonjour *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HAP2AccessoryServerDiscoveryBonjour_setDiscovering___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  [v5 performWritingBlock:v6];
}

- (BOOL)isDiscovering
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self propertyLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HAP2AccessoryServerDiscoveryBonjour_isDiscovering__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performReadingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjour *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HAP2AccessoryServerDiscoveryBonjour_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerDiscoveryDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__12038;
  v11 = __Block_byref_object_dispose__12039;
  v12 = 0;
  v3 = [(HAP2AccessoryServerDiscoveryBonjour *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HAP2AccessoryServerDiscoveryBonjour_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __47__HAP2AccessoryServerDiscoveryBonjour_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  browser = self->_browser;
  if (browser)
  {
    self->_browser = 0;
    v4 = browser;

    nw_browser_cancel(v4);
  }

  v5.receiver = self;
  v5.super_class = HAP2AccessoryServerDiscoveryBonjour;
  [(HAP2AccessoryServerDiscoveryBonjour *)&v5 dealloc];
}

- (HAP2AccessoryServerDiscoveryBonjour)initWithServiceType:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HAP2AccessoryServerDiscoveryBonjour;
  v9 = [(HAP2AccessoryServerDiscoveryBonjour *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = HAPDispatchQueueName(v9, @"workQueue");
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    workQueue = v10->_workQueue;
    v10->_workQueue = v13;

    v15 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerDiscoveryBonjour.propertyLock"];
    propertyLock = v10->_propertyLock;
    v10->_propertyLock = v15;

    objc_storeStrong(&v10->_type, a3);
    objc_storeStrong(&v10->_domain, a4);
  }

  return v10;
}

- (HAP2AccessoryServerDiscoveryBonjour)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end