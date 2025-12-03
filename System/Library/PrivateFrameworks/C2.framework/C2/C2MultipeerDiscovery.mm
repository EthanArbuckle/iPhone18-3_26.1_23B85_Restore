@interface C2MultipeerDiscovery
- (C2Multipeer)parent;
- (C2MultipeerDiscovery)initWithParent:(id)parent;
- (id)_browser;
- (id)_listener;
- (id)_peerToPeerParameters;
- (void)resetTimer;
- (void)startTimer;
- (void)touch;
@end

@implementation C2MultipeerDiscovery

- (C2MultipeerDiscovery)initWithParent:(id)parent
{
  v22 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  v19.receiver = self;
  v19.super_class = C2MultipeerDiscovery;
  v5 = [(C2MultipeerDiscovery *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    myPeerID = v6->_myPeerID;
    v6->_myPeerID = uUID;

    _listener = [(C2MultipeerDiscovery *)v6 _listener];
    listener = v6->_listener;
    v6->_listener = _listener;
  }

  if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
  {
    [C2MultipeerDiscovery initWithParent:];
  }

  v11 = C2_MULTIPEER_LOG_INTERNAL_1;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_242158000, v11, OS_LOG_TYPE_DEFAULT, "[%@ init]", buf, 0xCu);
  }

  parent = [(C2MultipeerDiscovery *)v6 parent];
  queue = [parent queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__C2MultipeerDiscovery_initWithParent___block_invoke_4;
  block[3] = &unk_278D400A0;
  v14 = v6;
  v18 = v14;
  dispatch_async(queue, block);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __39__C2MultipeerDiscovery_initWithParent___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)touch
{
  parent = [(C2MultipeerDiscovery *)self parent];
  queue = [parent queue];
  dispatch_assert_queue_V2(queue);

  if (self->_browser)
  {
    if (!self->_browserTimer)
    {
      [C2MultipeerDiscovery touch];
    }

    [(C2MultipeerDiscovery *)self resetTimer];
  }

  else
  {
    _browser = [(C2MultipeerDiscovery *)self _browser];
    browser = self->_browser;
    self->_browser = _browser;

    [(C2MultipeerDiscovery *)self startTimer];
  }
}

- (void)startTimer
{
  parent = [(C2MultipeerDiscovery *)self parent];
  queue = [parent queue];
  dispatch_assert_queue_V2(queue);

  parent2 = [(C2MultipeerDiscovery *)self parent];
  queue2 = [parent2 queue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
  browserTimer = self->_browserTimer;
  self->_browserTimer = v7;

  browser = [(C2MultipeerDiscovery *)self browser];
  objc_initWeak(&location, self);
  v10 = self->_browserTimer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__C2MultipeerDiscovery_startTimer__block_invoke;
  v14[3] = &unk_278D402D8;
  v14[4] = self;
  objc_copyWeak(&v16, &location);
  v15 = browser;
  v11 = browser;
  dispatch_source_set_event_handler(v10, v14);
  v12 = self->_browserTimer;
  v13 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_browserTimer);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __34__C2MultipeerDiscovery_startTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  v3 = [v2 queue];
  dispatch_assert_queue_V2(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained browser];
    v7 = *(a1 + 40);

    if (v6 == v7)
    {
      if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
      {
        __34__C2MultipeerDiscovery_startTimer__block_invoke_cold_1();
      }

      v8 = C2_MULTIPEER_LOG_INTERNAL_1;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_INFO, "browser timer triggered, stopping.", v9, 2u);
      }

      nw_browser_cancel(*(a1 + 40));
      [v5 setBrowser:0];
      [v5 setBrowserTimer:0];
    }
  }
}

uint64_t __34__C2MultipeerDiscovery_startTimer__block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)resetTimer
{
  parent = [(C2MultipeerDiscovery *)self parent];
  queue = [parent queue];
  dispatch_assert_queue_V2(queue);

  browserTimer = self->_browserTimer;
  v6 = dispatch_time(0, 30000000000);

  dispatch_source_set_timer(browserTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (id)_peerToPeerParameters
{
  secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_11_0, &__block_literal_global_19_1);
  nw_parameters_set_include_peer_to_peer(secure_tcp, 1);

  return secure_tcp;
}

void __45__C2MultipeerDiscovery__peerToPeerParameters__block_invoke(int a1, id a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [@"ChunkDiscovery" UTF8String];
  v4 = [@"SuperSecretPasscode" UTF8String];
  macOut = 0u;
  v12 = 0u;
  v5 = strlen(v4);
  v6 = strlen(v3);
  CCHmac(2u, v4, v5, v3, v6, &macOut);
  alloc = dispatch_data_create_alloc();
  MEMORY[0] = macOut;
  MEMORY[0x10] = v12;
  strlen(v3);
  v8 = dispatch_data_create_alloc();
  v9 = strlen(v3);
  memcpy(0, v3, v9);
  sec_protocol_options_add_pre_shared_key(v2, alloc, v8);
  sec_protocol_options_append_tls_ciphersuite(v2, 0xAEu);

  v10 = *MEMORY[0x277D85DE8];
}

void __45__C2MultipeerDiscovery__peerToPeerParameters__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x245D099C0]();
  MEMORY[0x245D099D0](v2, 2);
}

- (id)_browser
{
  if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
  {
    [C2MultipeerDiscovery _browser];
  }

  v3 = C2_MULTIPEER_LOG_INTERNAL_1;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242158000, v3, OS_LOG_TYPE_INFO, "browser starting.", buf, 2u);
  }

  v4 = MEMORY[0x245D09990]();
  nw_parameters_set_include_peer_to_peer(v4, 1);
  bonjour_service = nw_browse_descriptor_create_bonjour_service("_chunkdiscovery._tcp", 0);
  v6 = nw_browser_create(bonjour_service, v4);
  nw_browser_set_state_changed_handler(v6, &__block_literal_global_25);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__C2MultipeerDiscovery__browser__block_invoke_2;
  handler[3] = &unk_278D40340;
  handler[4] = self;
  nw_browser_set_browse_results_changed_handler(v6, handler);
  parent = [(C2MultipeerDiscovery *)self parent];
  queue = [parent queue];
  nw_browser_set_queue(v6, queue);

  nw_browser_start(v6);

  return v6;
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __32__C2MultipeerDiscovery__browser__block_invoke_2(uint64_t a1, NSObject *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  changes = nw_browse_result_get_changes(a2, v5);
  v7 = changes;
  if (!changes)
  {
    if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
    {
      __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_1();
    }

    v8 = C2_MULTIPEER_LOG_INTERNAL_1;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_INFO, "nw_browse_result_change_invalid", &v38, 2u);
    }
  }

  if (v5)
  {
    v9 = nw_browse_result_copy_endpoint(v5);
    if (v9)
    {
      v10 = v9;
      bonjour_service_name = nw_endpoint_get_bonjour_service_name(v9);
      if (bonjour_service_name)
      {
        v12 = bonjour_service_name;
        bonjour_service_type = nw_endpoint_get_bonjour_service_type(v10);
        if (bonjour_service_type)
        {
          if (strcmp("_chunkdiscovery._tcp", bonjour_service_type))
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_2();
            }

            v14 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (!os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              goto LABEL_70;
            }

            LOWORD(v38) = 0;
            v15 = "Wrong service type.";
            goto LABEL_27;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
          if (v7)
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_3();
            }

            v18 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v18, OS_LOG_TYPE_INFO, "nw_browse_result_change_identical for peer %@", &v38, 0xCu);
            }
          }

          if ((v7 & 2) != 0)
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_4();
            }

            v19 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v19, OS_LOG_TYPE_INFO, "nw_browse_result_change_result_added for peer %@", &v38, 0xCu);
            }

            v20 = [*(a1 + 32) parent];
            v21 = [v20 clientConnectionByPeer];
            v22 = [v21 objectForKeyedSubscript:v17];

            if (v22)
            {
              if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
              {
                __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_5();
              }

              v23 = C2_MULTIPEER_LOG_INTERNAL_1;
              if (!os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
              {
                goto LABEL_69;
              }

              v38 = 138412290;
              v39 = v17;
              v24 = "Connection already exists to peer %@";
LABEL_68:
              _os_log_impl(&dword_242158000, v23, OS_LOG_TYPE_INFO, v24, &v38, 0xCu);
LABEL_69:

              goto LABEL_70;
            }

            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_6();
            }

            v25 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v25, OS_LOG_TYPE_INFO, "Creating connection to %@", &v38, 0xCu);
            }

            v26 = [*(a1 + 32) _peerToPeerParameters];
            v27 = nw_connection_create(v10, v26);

            v28 = [C2MultipeerNetworkConnection alloc];
            v29 = [*(a1 + 32) parent];
            v30 = [*(a1 + 32) parent];
            v31 = [v30 queue];
            v32 = [(C2MultipeerNetworkConnection *)v28 initWithParent:v29 queue:v31 connection:v27 peerID:v17 isClientConnection:1];

            v33 = [*(a1 + 32) parent];
            [v33 addClientConnection:v32 peerID:v17];
          }

          if ((v7 & 4) != 0)
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_7();
            }

            v34 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v34, OS_LOG_TYPE_INFO, "nw_browse_result_change_result_removed for peer %@", &v38, 0xCu);
            }
          }

          if ((v7 & 8) != 0)
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_8();
            }

            v35 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v35, OS_LOG_TYPE_INFO, "nw_browse_result_change_interface_added for peer %@", &v38, 0xCu);
            }
          }

          if ((v7 & 0x10) != 0)
          {
            if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
            {
              __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_9();
            }

            v36 = C2_MULTIPEER_LOG_INTERNAL_1;
            if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
            {
              v38 = 138412290;
              v39 = v17;
              _os_log_impl(&dword_242158000, v36, OS_LOG_TYPE_INFO, "nw_browse_result_change_interface_removed for peer %@", &v38, 0xCu);
            }
          }

          if ((v7 & 0x20) == 0)
          {
            goto LABEL_69;
          }

          if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
          {
            __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_10();
          }

          v23 = C2_MULTIPEER_LOG_INTERNAL_1;
          if (!os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
          {
            goto LABEL_69;
          }

          v38 = 138412290;
          v39 = v17;
          v24 = "nw_browse_result_change_txt_record_changed for peer %@";
          goto LABEL_68;
        }

        if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
        {
          __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_11();
        }

        v14 = C2_MULTIPEER_LOG_INTERNAL_1;
        if (!os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
        {
          goto LABEL_70;
        }

        LOWORD(v38) = 0;
        v15 = "No service type.";
      }

      else
      {
        if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
        {
          __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_12();
        }

        v14 = C2_MULTIPEER_LOG_INTERNAL_1;
        if (!os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
        {
          goto LABEL_70;
        }

        LOWORD(v38) = 0;
        v15 = "No service name.";
      }

LABEL_27:
      _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_INFO, v15, &v38, 2u);
LABEL_70:

      goto LABEL_71;
    }
  }

  if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
  {
    __32__C2MultipeerDiscovery__browser__block_invoke_2_cold_13();
  }

  v16 = C2_MULTIPEER_LOG_INTERNAL_1;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_242158000, v16, OS_LOG_TYPE_INFO, "No endpoint.", &v38, 2u);
  }

LABEL_71:

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_3()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_28()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_31()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_34()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_37()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_41()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_44()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_47()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_50()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_54()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_57()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_60()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__C2MultipeerDiscovery__browser__block_invoke_63()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (id)_listener
{
  _peerToPeerParameters = [(C2MultipeerDiscovery *)self _peerToPeerParameters];
  v4 = nw_listener_create(_peerToPeerParameters);

  uUIDString = [(NSUUID *)self->_myPeerID UUIDString];
  bonjour_service = nw_advertise_descriptor_create_bonjour_service([uUIDString UTF8String], "_chunkdiscovery._tcp", 0);
  nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
  nw_listener_set_advertise_descriptor(v4, bonjour_service);
  nw_listener_set_state_changed_handler(v4, &__block_literal_global_68);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__C2MultipeerDiscovery__listener__block_invoke_2;
  handler[3] = &unk_278D40368;
  handler[4] = self;
  nw_listener_set_new_connection_handler(v4, handler);
  parent = [(C2MultipeerDiscovery *)self parent];
  queue = [parent queue];
  nw_listener_set_queue(v4, queue);

  nw_listener_start(v4);

  return v4;
}

void __33__C2MultipeerDiscovery__listener__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nw_connection_copy_endpoint(v3);
  if (v4)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];

    v7 = [*(a1 + 32) parent];
    v8 = [v7 serverConnectionByPeer];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (v9)
    {
      if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
      {
        __33__C2MultipeerDiscovery__listener__block_invoke_2_cold_1();
      }

      v10 = C2_MULTIPEER_LOG_INTERNAL_1;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_242158000, v10, OS_LOG_TYPE_INFO, "Ignoring connection, unexpected conflict on UUID, something has gone terribly wrong.", &v21, 2u);
      }

      nw_connection_cancel(v3);
    }

    else
    {
      if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
      {
        __33__C2MultipeerDiscovery__listener__block_invoke_2_cold_2();
      }

      v12 = C2_MULTIPEER_LOG_INTERNAL_1;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v21 = 136315394;
        description = nw_endpoint_get_description();
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_INFO, "Accepting connection from %s with fake peer ID %@", &v21, 0x16u);
      }

      v14 = [C2MultipeerNetworkConnection alloc];
      v15 = [*(a1 + 32) parent];
      v16 = [*(a1 + 32) parent];
      v17 = [v16 queue];
      v18 = [(C2MultipeerNetworkConnection *)v14 initWithParent:v15 queue:v17 connection:v3 peerID:v6 isClientConnection:0];

      v19 = [*(a1 + 32) parent];
      [v19 addServerConnection:v18 peerID:v6];
    }
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK_1 != -1)
    {
      __33__C2MultipeerDiscovery__listener__block_invoke_2_cold_3();
    }

    v11 = C2_MULTIPEER_LOG_INTERNAL_1;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_242158000, v11, OS_LOG_TYPE_INFO, "Ignoring connection, no endpoint.", &v21, 2u);
    }

    nw_connection_cancel(v3);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __33__C2MultipeerDiscovery__listener__block_invoke_3()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __33__C2MultipeerDiscovery__listener__block_invoke_71()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __33__C2MultipeerDiscovery__listener__block_invoke_74()
{
  C2_MULTIPEER_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (C2Multipeer)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end