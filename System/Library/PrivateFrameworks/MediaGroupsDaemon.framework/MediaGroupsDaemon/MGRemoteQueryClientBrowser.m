@interface MGRemoteQueryClientBrowser
- (MGRemoteQueryClientBrowser)initWithDelegate:(id)a3 dispatchQueue:(id)a4;
- (MGRemoteQueryClientBrowserDelegate)delegate;
- (id)_prepareBrowseDescriptor;
- (id)_prepareBrowseParameters;
- (id)_targetForBrowseResult:(id)a3;
- (id)description;
- (void)_applyUpdates;
- (void)_handleBrowseChangeFromTarget:(id)a3 toTarget:(id)a4 applyBatch:(BOOL)a5;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareBrowserHandlers;
- (void)_startBrowsing;
- (void)dealloc;
@end

@implementation MGRemoteQueryClientBrowser

- (MGRemoteQueryClientBrowser)initWithDelegate:(id)a3 dispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MGRemoteQueryClientBrowser;
  v8 = [(MGRemoteQueryClientBrowser *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_dispatchQueue, a4);
    v10 = [MEMORY[0x277CBEB98] set];
    knownTargets = v9->_knownTargets;
    v9->_knownTargets = v10;

    v12 = [(MGRemoteQueryClientBrowser *)v9 knownTargets];
    v13 = [v12 copy];
    updatedTargets = v9->_updatedTargets;
    v9->_updatedTargets = v13;

    v9->_invalidated = 0;
    error = v9->_error;
    v9->_error = 0;

    v16 = [(MGRemoteQueryClientBrowser *)v9 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__MGRemoteQueryClientBrowser_initWithDelegate_dispatchQueue___block_invoke;
    block[3] = &unk_27989ED90;
    v19 = v9;
    dispatch_async(v16, block);
  }

  return v9;
}

- (void)dealloc
{
  [(MGRemoteQueryClientBrowser *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryClientBrowser;
  [(MGRemoteQueryClientBrowser *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryClientBrowser *)self knownTargets];
  v7 = [(MGRemoteQueryClientBrowser *)self browser];
  v8 = [(MGRemoteQueryClientBrowser *)self invalidated];
  v9 = 78;
  if (v8)
  {
    v9 = 89;
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, _targets = %@, _browser = %@, _invalidated = %c>", v5, self, v6, v7, v9];

  return v10;
}

- (void)_startBrowsing
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientBrowser *)self browser];

  if (v4)
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MGRemoteQueryClientBrowser *)self browser];
      *buf = 134218242;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p browser already browsing %@", buf, 0x16u);
    }

LABEL_7:

    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(MGRemoteQueryClientBrowser *)self invalidated])
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p browser invalidated, not starting", buf, 0xCu);
    }

    goto LABEL_7;
  }

  descriptor = [(MGRemoteQueryClientBrowser *)self _prepareBrowseDescriptor];
  v8 = [(MGRemoteQueryClientBrowser *)self _prepareBrowseParameters];
  v9 = nw_browser_create(descriptor, v8);
  [(MGRemoteQueryClientBrowser *)self setBrowser:v9];
  v10 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  nw_browser_set_queue(v9, v10);

  [(MGRemoteQueryClientBrowser *)self _prepareBrowserHandlers];
  nw_browser_start(v9);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(MGRemoteQueryClientBrowser *)self invalidated])
  {
    v3 = MGLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p browser invalidating", buf, 0xCu);
    }

    [(MGRemoteQueryClientBrowser *)self setInvalidated:1];
    v4 = [(MGRemoteQueryClientBrowser *)self browser];
    [(MGRemoteQueryClientBrowser *)self setBrowser:0];
    v5 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
    if (v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__MGRemoteQueryClientBrowser__invalidate__block_invoke;
      block[3] = &unk_27989ED90;
      v8 = v4;
      dispatch_async(v5, block);
    }

    else
    {
      [(MGRemoteQueryClientBrowser *)self _invalidated];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MGLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p browser invalidated", buf, 0xCu);
  }

  v4 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MGRemoteQueryClientBrowser__invalidated__block_invoke;
  block[3] = &unk_27989ED90;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __42__MGRemoteQueryClientBrowser__invalidated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = v2;
    v4 = [v3 error];
    [v5 browser:v3 invalidatedWithError:v4];

    v2 = v5;
  }
}

- (id)_prepareBrowseDescriptor
{
  v2 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v2);

  bonjour_service = nw_browse_descriptor_create_bonjour_service([@"_mediagroups._tcp" UTF8String], objc_msgSend(@"local.", "UTF8String"));
  nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);

  return bonjour_service;
}

- (id)_prepareBrowseParameters
{
  v2 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v2);

  v3 = MEMORY[0x259C85C70]();
  nw_parameters_prohibit_interface_type(v3, nw_interface_type_cellular);
  nw_parameters_prohibit_interface_type(v3, nw_interface_type_loopback);
  nw_parameters_set_include_peer_to_peer(v3, 0);

  return v3;
}

- (void)_prepareBrowserHandlers
{
  v3 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [(MGRemoteQueryClientBrowser *)self browser];
  v4 = v11[5];
  state_changed_handler[0] = MEMORY[0x277D85DD0];
  state_changed_handler[1] = 3221225472;
  state_changed_handler[2] = __53__MGRemoteQueryClientBrowser__prepareBrowserHandlers__block_invoke;
  state_changed_handler[3] = &unk_27989EDB8;
  objc_copyWeak(&v9, &location);
  state_changed_handler[4] = &v10;
  nw_browser_set_state_changed_handler(v4, state_changed_handler);
  v5 = v11[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MGRemoteQueryClientBrowser__prepareBrowserHandlers__block_invoke_9;
  v6[3] = &unk_27989EDE0;
  objc_copyWeak(&v7, &location);
  nw_browser_set_browse_results_changed_handler(v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  _Block_object_dispose(&v10, 8);

  objc_destroyWeak(&location);
}

void __53__MGRemoteQueryClientBrowser__prepareBrowserHandlers__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2 == 3)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    [v7 _invalidated];
  }

  else if (a2 == 2 && WeakRetained)
  {
    v8 = MGLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218242;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p browser failed, error %@", &v13, 0x16u);
    }

    v9 = nw_error_copy_cf_error(v5);
    [v7 setError:v9];
    [v7 _invalidate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__MGRemoteQueryClientBrowser__prepareBrowserHandlers__block_invoke_9(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained && ([WeakRetained invalidated] & 1) == 0)
  {
    changes = nw_browse_result_get_changes(v7, v8);
    if (changes)
    {
      v14 = 0;
      v12 = 0;
    }

    else
    {
      v12 = [v10 _targetForBrowseResult:v7];
      v13 = [v10 _targetForBrowseResult:v8];
      if (v12 | v13)
      {
        v14 = v13;
        if (([v12 isEqual:v13] ^ 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0;
      }
    }

    if (!a4)
    {
      v15 = MGLogForCategory(6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134219266;
        v18 = v10;
        v19 = 2048;
        v20 = changes;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v14;
        _os_log_debug_impl(&dword_25863A000, v15, OS_LOG_TYPE_DEBUG, "%p browser disregarding inconsequential change %llu from %@ to %@ for %@ to %@", &v17, 0x3Eu);
      }

      goto LABEL_14;
    }

LABEL_13:
    [v10 _handleBrowseChangeFromTarget:v12 toTarget:v14 applyBatch:a4];
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleBrowseChangeFromTarget:(id)a3 toTarget:(id)a4 applyBatch:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(MGRemoteQueryClientBrowser *)self updatedTargets];
  v12 = [v11 mutableCopy];

  if (v8)
  {
    v13 = MGLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218242;
      v17 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_debug_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEBUG, "%p browser losing target %@", &v16, 0x16u);
    }

    [v12 removeObject:v8];
  }

  if (v9)
  {
    v14 = MGLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218242;
      v17 = self;
      v18 = 2112;
      v19 = v9;
      _os_log_debug_impl(&dword_25863A000, v14, OS_LOG_TYPE_DEBUG, "%p browser adding target %@", &v16, 0x16u);
    }

    [v12 addObject:v9];
  }

  [(MGRemoteQueryClientBrowser *)self setUpdatedTargets:v12];
  if (v5)
  {
    [(MGRemoteQueryClientBrowser *)self _applyUpdates];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_applyUpdates
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientBrowser *)self knownTargets];
  v5 = [(MGRemoteQueryClientBrowser *)self updatedTargets];
  if (([v4 isEqualToSet:v5] & 1) == 0)
  {
    v6 = [v5 copy];
    [(MGRemoteQueryClientBrowser *)self setKnownTargets:v6];

    v7 = [(MGRemoteQueryClientBrowser *)self delegate];
    if (v7)
    {
      v8 = [v5 mutableCopy];
      [v8 minusSet:v4];
      v9 = [v4 mutableCopy];
      [v9 minusSet:v5];
      v10 = MGLogForCategory(6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v33 = self;
        v34 = 2048;
        v35 = [v8 count];
        v36 = 2048;
        v37 = [v9 count];
        v38 = 2048;
        v39 = [v5 count];
        _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p browser updated, found(%lu) lost(%lu) now(%lu)", buf, 0x2Au);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v7 browser:self foundTarget:*(*(&v26 + 1) + 8 * v15++)];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v13);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v7 browser:self lostTarget:{*(*(&v22 + 1) + 8 * v20++), v22}];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v18);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_targetForBrowseResult:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientBrowser *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if (v4 && nw_browse_result_get_interfaces_count(v4))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    enumerator[0] = MEMORY[0x277D85DD0];
    enumerator[1] = 3221225472;
    enumerator[2] = __53__MGRemoteQueryClientBrowser__targetForBrowseResult___block_invoke;
    enumerator[3] = &unk_27989EE08;
    enumerator[4] = &v13;
    nw_browse_result_enumerate_interfaces(v4, enumerator);
    if (v14[3])
    {
      v6 = MGLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v18 = self;
        v19 = 2112;
        v20 = v4;
        _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p browser ignoring loopback result %@", buf, 0x16u);
      }

      v7 = 0;
    }

    else
    {
      v6 = nw_browse_result_copy_endpoint(v4);
      v8 = nw_browse_result_copy_txt_record_object(v4);
      v9 = v8;
      v7 = 0;
      if (v6 && v8)
      {
        v7 = [MGRemoteQueryClientTarget targetWithEndpoint:v6 txtRecord:v8];
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

BOOL __53__MGRemoteQueryClientBrowser__targetForBrowseResult___block_invoke(uint64_t a1, nw_interface_t interface)
{
  type = nw_interface_get_type(interface);
  if (type == nw_interface_type_loopback)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return type != nw_interface_type_loopback;
}

- (MGRemoteQueryClientBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end