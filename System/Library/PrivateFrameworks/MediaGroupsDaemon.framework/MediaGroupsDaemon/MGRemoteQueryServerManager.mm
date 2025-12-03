@interface MGRemoteQueryServerManager
- (BOOL)_shouldRunServer;
- (MGInternalQueryRunner)queryRunner;
- (MGRemoteQueryServerManager)initWithQueryRunner:(id)runner;
- (NSString)description;
- (void)_setupQuery;
- (void)_startServer;
- (void)_stopServer;
- (void)_updateState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)serverInvalidated:(id)invalidated withError:(id)error;
- (void)setHaveGroupsToAdvertise:(BOOL)advertise;
- (void)setHavePermissiveACL:(BOOL)l;
- (void)setHomeHash:(id)hash;
@end

@implementation MGRemoteQueryServerManager

- (MGRemoteQueryServerManager)initWithQueryRunner:(id)runner
{
  runnerCopy = runner;
  v17.receiver = self;
  v17.super_class = MGRemoteQueryServerManager;
  v5 = [(MGRemoteQueryServerManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_queryRunner, runnerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MediaGroups.RemoteQuery.Server", v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    server = v6->_server;
    v6->_server = 0;

    *&v6->_havePermissiveACL = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.airplay"];
    airplayDefaults = v6->_airplayDefaults;
    v6->_airplayDefaults = v11;

    [(NSUserDefaults *)v6->_airplayDefaults addObserver:v6 forKeyPath:@"accessControlLevel" options:4 context:0];
    dispatchQueue = [(MGRemoteQueryServerManager *)v6 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MGRemoteQueryServerManager_initWithQueryRunner___block_invoke;
    block[3] = &unk_27989ED90;
    v16 = v6;
    dispatch_async(dispatchQueue, block);
  }

  return v6;
}

uint64_t __50__MGRemoteQueryServerManager_initWithQueryRunner___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupQuery];
  v2 = *(a1 + 32);

  return [v2 _updateState];
}

- (void)dealloc
{
  airplayDefaults = [(MGRemoteQueryServerManager *)self airplayDefaults];
  [airplayDefaults removeObserver:self forKeyPath:@"accessControlLevel" context:0];

  query = [(MGRemoteQueryServerManager *)self query];
  if (query)
  {
    queryRunner = [(MGRemoteQueryServerManager *)self queryRunner];
    [queryRunner stopOutstandingQuery:query];
  }

  v6.receiver = self;
  v6.super_class = MGRemoteQueryServerManager;
  [(MGRemoteQueryServerManager *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  havePermissiveACL = [(MGRemoteQueryServerManager *)self havePermissiveACL];
  haveGroupsToAdvertise = [(MGRemoteQueryServerManager *)self haveGroupsToAdvertise];
  homeHash = [(MGRemoteQueryServerManager *)self homeHash];
  server = [(MGRemoteQueryServerManager *)self server];
  v10 = 78;
  if (haveGroupsToAdvertise)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  if (havePermissiveACL)
  {
    v10 = 89;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, ACL(%c), Groups(%c), _homeHash = %@, _server = %@>", v5, self, v10, v11, homeHash, server];

  return v12;
}

- (void)_updateState
{
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  server = [(MGRemoteQueryServerManager *)self server];

  _shouldRunServer = [(MGRemoteQueryServerManager *)self _shouldRunServer];
  if (server || !_shouldRunServer)
  {
    if (server != 0 && !_shouldRunServer)
    {

      [(MGRemoteQueryServerManager *)self _stopServer];
    }
  }

  else
  {

    [(MGRemoteQueryServerManager *)self _startServer];
  }
}

- (BOOL)_shouldRunServer
{
  v24 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerManager *)self havePermissiveACL]&& [(MGRemoteQueryServerManager *)self haveGroupsToAdvertise])
  {
    homeHash = [(MGRemoteQueryServerManager *)self homeHash];
    v5 = [homeHash length] != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = MGLogForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    if ([(MGRemoteQueryServerManager *)self havePermissiveACL])
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    if ([(MGRemoteQueryServerManager *)self haveGroupsToAdvertise])
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    homeHash2 = [(MGRemoteQueryServerManager *)self homeHash];
    v14 = 134219008;
    if ([homeHash2 length])
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    selfCopy = self;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v13;
    _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p server should run %c, ACL(%c) GTA(%c) HH(%c)", &v14, 0x24u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_startServer
{
  v16 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  server = [(MGRemoteQueryServerManager *)self server];

  if (server)
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      server2 = [(MGRemoteQueryServerManager *)self server];
      v12 = 134218240;
      selfCopy2 = self;
      v14 = 2048;
      v15 = server2;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p server already started, running %p", &v12, 0x16u);
LABEL_6:
    }
  }

  else
  {
    v7 = [MGRemoteQueryServer alloc];
    homeHash = [(MGRemoteQueryServerManager *)self homeHash];
    dispatchQueue2 = [(MGRemoteQueryServerManager *)self dispatchQueue];
    v10 = [(MGRemoteQueryServer *)v7 initWithHomeHash:homeHash delegate:self dispatchQueue:dispatchQueue2];
    [(MGRemoteQueryServerManager *)self setServer:v10];

    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      server2 = [(MGRemoteQueryServerManager *)self server];
      v12 = 134218240;
      selfCopy2 = self;
      v14 = 2048;
      v15 = server2;
      _os_log_impl(&dword_25863A000, v5, OS_LOG_TYPE_DEFAULT, "%p started server %p", &v12, 0x16u);
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopServer
{
  v12 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  server = [(MGRemoteQueryServerManager *)self server];
  v5 = MGLogForCategory(5);
  v6 = v5;
  if (server)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      selfCopy2 = self;
      v10 = 2048;
      v11 = server;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p stopping server %p", &v8, 0x16u);
    }

    [(MGRemoteQueryServerManager *)self setServer:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      selfCopy2 = self;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p server already stopped", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupQuery
{
  v30 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  query = [(MGRemoteQueryServerManager *)self query];

  if (query)
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      query2 = [(MGRemoteQueryServerManager *)self query];
      identifier = [query2 identifier];
      *buf = 134218242;
      selfCopy = self;
      v28 = 2112;
      v29 = identifier;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p server monitoring query already running %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA920];
    predicateForCurrentDevice = [MEMORY[0x277D27470] predicateForCurrentDevice];
    v25[0] = predicateForCurrentDevice;
    v10 = MEMORY[0x277CCA920];
    rq_predicateForHaveCurrentHome = [MEMORY[0x277D27440] rq_predicateForHaveCurrentHome];
    v24[0] = rq_predicateForHaveCurrentHome;
    rq_predicateForLocal = [MEMORY[0x277D27440] rq_predicateForLocal];
    v24[1] = rq_predicateForLocal;
    v13 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    v24[2] = v13;
    rq_predicateForInCurrentHome = [MEMORY[0x277D27440] rq_predicateForInCurrentHome];
    v24[3] = rq_predicateForInCurrentHome;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    v16 = [v10 andPredicateWithSubpredicates:v15];
    v25[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v5 = [v8 orPredicateWithSubpredicates:v17];

    objc_initWeak(buf, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __41__MGRemoteQueryServerManager__setupQuery__block_invoke;
    v22[3] = &unk_27989F060;
    objc_copyWeak(&v23, buf);
    v18 = MEMORY[0x259C85F90](v22);
    queryRunner = [(MGRemoteQueryServerManager *)self queryRunner];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__MGRemoteQueryServerManager__setupQuery__block_invoke_19;
    v21[3] = &unk_27989F0D8;
    v21[4] = self;
    [queryRunner startOutstandingQueryWithPredicate:v5 handler:v18 completion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __41__MGRemoteQueryServerManager__setupQuery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__MGRemoteQueryServerManager__setupQuery__block_invoke_2;
    v7[3] = &unk_27989EE80;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __41__MGRemoteQueryServerManager__setupQuery__block_invoke_2(uint64_t a1)
{
  data[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = MGLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    buf.A = 134218240;
    *&buf.B = v4;
    LOWORD(buf.D) = 2048;
    *(&buf.D + 2) = v2;
    _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p server monitoring query received %lu groups", &buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 identifier];
          v12 = MGHomeIdentifierForGroupIdentifier(v11);

          if (v12)
          {
            v15 = *(a1 + 40);
            data[0] = 0;
            data[1] = 0;
            [v12 getUUIDBytes:data];
            memset(&buf, 0, sizeof(buf));
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, data, 0x10u);
            CC_MD5_Final(md, &buf);
            v16 = objc_alloc_init(MEMORY[0x277CCACA8]);
            for (i = 0; i != 16; ++i)
            {
              v18 = v16;
              v16 = [v16 stringByAppendingFormat:@"%hhX", md[i]];
            }

            [v15 setHomeHash:v16];

            [*(a1 + 40) setHaveGroupsToAdvertise:v2 != 1];
            goto LABEL_18;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = MGLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    buf.A = 134217984;
    *&buf.B = v14;
    _os_log_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEFAULT, "%p no suitable home found for advertising.", &buf, 0xCu);
  }

  [*(a1 + 40) setHomeHash:0];
  [*(a1 + 40) setHaveGroupsToAdvertise:0];
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

void __41__MGRemoteQueryServerManager__setupQuery__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MGRemoteQueryServerManager__setupQuery__block_invoke_2_20;
  v6[3] = &unk_27989EE80;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __41__MGRemoteQueryServerManager__setupQuery__block_invoke_2_20(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MGLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25863A000, v2, OS_LOG_TYPE_DEFAULT, "%p server monitoring using query %@", &v7, 0x16u);
  }

  result = [*(a1 + 32) setQuery:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setHavePermissiveACL:(BOOL)l
{
  lCopy = l;
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (self->_havePermissiveACL != lCopy)
  {
    self->_havePermissiveACL = lCopy;
    dispatchQueue2 = [(MGRemoteQueryServerManager *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MGRemoteQueryServerManager_setHavePermissiveACL___block_invoke;
    block[3] = &unk_27989ED90;
    block[4] = self;
    dispatch_async(dispatchQueue2, block);
  }
}

- (void)setHaveGroupsToAdvertise:(BOOL)advertise
{
  advertiseCopy = advertise;
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (self->_haveGroupsToAdvertise != advertiseCopy)
  {
    self->_haveGroupsToAdvertise = advertiseCopy;
    dispatchQueue2 = [(MGRemoteQueryServerManager *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MGRemoteQueryServerManager_setHaveGroupsToAdvertise___block_invoke;
    block[3] = &unk_27989ED90;
    block[4] = self;
    dispatch_async(dispatchQueue2, block);
  }
}

- (void)setHomeHash:(id)hash
{
  v18 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (self->_homeHash != hashCopy)
  {
    homeHash = [(MGRemoteQueryServerManager *)self homeHash];
    v7 = [homeHash isEqual:hashCopy];

    if ((v7 & 1) == 0)
    {
      v8 = MGLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy = self;
        v16 = 2112;
        v17 = hashCopy;
        _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p home hash changing %@", buf, 0x16u);
      }

      [(MGRemoteQueryServerManager *)self _stopServer];
      v9 = [(NSString *)hashCopy copy];
      homeHash = self->_homeHash;
      self->_homeHash = v9;

      dispatchQueue2 = [(MGRemoteQueryServerManager *)self dispatchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__MGRemoteQueryServerManager_setHomeHash___block_invoke;
      block[3] = &unk_27989ED90;
      block[4] = self;
      dispatch_async(dispatchQueue2, block);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)serverInvalidated:(id)invalidated withError:(id)error
{
  invalidatedCopy = invalidated;
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MGRemoteQueryServerManager_serverInvalidated_withError___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = invalidatedCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = invalidatedCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__MGRemoteQueryServerManager_serverInvalidated_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) setServer:0];
    v4 = [*(a1 + 32) relaunchCount];
    if (*(a1 + 48))
    {
      v5 = v4;
      v6 = exp2(v4);
      if (v5 >= 5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 + 1;
      }

      v8 = 1000000000 * (v6 + -1.0);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    [*(a1 + 32) setRelaunchCount:v7];
    v9 = dispatch_time(0, v8);
    v10 = [*(a1 + 32) dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MGRemoteQueryServerManager_serverInvalidated_withError___block_invoke_2;
    block[3] = &unk_27989ED90;
    block[4] = *(a1 + 32);
    dispatch_after(v9, v10, block);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  dispatchQueue = [(MGRemoteQueryServerManager *)self dispatchQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__MGRemoteQueryServerManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v10[3] = &unk_27989EE80;
  v11 = pathCopy;
  selfCopy = self;
  v9 = pathCopy;
  dispatch_async(dispatchQueue, v10);
}

void __77__MGRemoteQueryServerManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqualToString:@"accessControlLevel"])
  {
    v2 = [*(a1 + 40) airplayDefaults];
    v3 = [v2 objectForKey:@"accessControlLevel"];

    if (v3)
    {
      v4 = [*(a1 + 40) airplayDefaults];
      v5 = [v4 integerForKey:@"accessControlLevel"];

      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v13 = 134218240;
        v14 = v7;
        v15 = 2048;
        v16 = v5;
        _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p ACL changed to %ld", &v13, 0x16u);
      }

      v8 = *(a1 + 40);
      v9 = v5 == 0;
    }

    else
    {
      v10 = MGLogForCategory(5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v13 = 134217984;
        v14 = v11;
        _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p ACL not set", &v13, 0xCu);
      }

      v8 = *(a1 + 40);
      v9 = 0;
    }

    [v8 setHavePermissiveACL:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (MGInternalQueryRunner)queryRunner
{
  WeakRetained = objc_loadWeakRetained(&self->_queryRunner);

  return WeakRetained;
}

@end