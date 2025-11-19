@interface MOConnection
- (BOOL)runBlockCompleted:(id)a3;
- (MOConnection)initWithName:(id)a3;
- (MOConnectionDelegate)delegate;
- (id)onConnectionInterrupted;
- (id)runBlockStarted:(id)a3 withConnectionError:(id)a4;
- (void)callBlock:(id)a3 onInterruption:(id)a4;
@end

@implementation MOConnection

- (MOConnection)initWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MOConnection;
  v6 = [(MOConnection *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingRequests = v6->_pendingRequests;
    v6->_pendingRequests = v7;

    v6->_pendingRequestCounter = 0;
    objc_storeStrong(&v6->_name, a3);
    v6->_interruptActive = 0;
  }

  return v6;
}

- (void)callBlock:(id)a3 onInterruption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOConnection *)self runBlockStarted:v6 withConnectionError:v7];
  v9 = self;
  objc_sync_enter(v9);
  interruptActive = v9->_interruptActive;
  objc_sync_exit(v9);

  if (!interruptActive && v8)
  {
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__MOConnection_callBlock_onInterruption___block_invoke;
    v11[3] = &unk_278773980;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    v6[2](v6, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

uint64_t __41__MOConnection_callBlock_onInterruption___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained runBlockCompleted:*(a1 + 32)];

  return v3;
}

- (id)runBlockStarted:(id)a3 withConnectionError:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    ++v8->_pendingRequestCounter;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v15[0] = @"requestBlock";
    v10 = MEMORY[0x2318D5790](v6);
    v15[1] = @"interruptionBlock";
    v16[0] = v10;
    v11 = MEMORY[0x2318D5790](v7);
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(NSMutableDictionary *)v8->_pendingRequests setObject:v12 forKeyedSubscript:v9];

    objc_sync_exit(v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)runBlockCompleted:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_pendingRequests objectForKeyedSubscript:v4];

    [(NSMutableDictionary *)v5->_pendingRequests removeObjectForKey:v4];
    v7 = v6 != 0;
    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)onConnectionInterrupted
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__MOConnection_onConnectionInterrupted__block_invoke;
  v8[3] = &unk_2787739A8;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x2318D5790](v8);
  v6 = MEMORY[0x2318D5790](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __39__MOConnection_onConnectionInterrupted__block_invoke(uint64_t a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v34 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    if (*(v2 + 32) == 1)
    {
      objc_sync_exit(v2);
    }

    else
    {
      *(v2 + 32) = 1;
      v3 = [v2[1] copy];
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = v2[1];
      v2[1] = v4;

      objc_sync_exit(v2);
      v6 = [v3 count] == 0;
      v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __39__MOConnection_onConnectionInterrupted__block_invoke_cold_2(v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __39__MOConnection_onConnectionInterrupted__block_invoke_cold_1(v2, v3, v8);
      }

      v9 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50[0] = @"remote process execution was interrupted";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v36 = [v9 errorWithDomain:@"MOErrorDomain" code:4097 userInfo:v10];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        v13 = *v44;
        do
        {
          v14 = 0;
          do
          {
            if (*v44 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v43 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v17 = [v11 objectForKeyedSubscript:v15];
            v18 = [v17 objectForKeyedSubscript:@"interruptionBlock"];
            (v18)[2](v18, v36);

            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v12);
      }

      obj = v2;
      objc_sync_enter(obj);
      v19 = [v2[1] copy];
      if ([v19 count])
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v21 = v2[1];
        v2[1] = v20;
      }

      *(v2 + 32) = 0;
      objc_sync_exit(obj);

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v19;
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v23)
      {
        v24 = *v40;
        do
        {
          v25 = 0;
          do
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v39 + 1) + 8 * v25);
            v27 = objc_autoreleasePoolPush();
            v28 = [v22 objectForKeyedSubscript:v26];
            v29 = [v28 objectForKeyedSubscript:@"requestBlock"];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __39__MOConnection_onConnectionInterrupted__block_invoke_29;
            v37[3] = &unk_278773980;
            objc_copyWeak(&v38, (a1 + 32));
            v37[4] = v26;
            (v29)[2](v29, v37);
            objc_destroyWeak(&v38);

            objc_autoreleasePoolPop(v27);
            ++v25;
          }

          while (v23 != v25);
          v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v23);
      }

      if ([v11 count] && !objc_msgSend(v22, "count"))
      {
        v30 = +[MODiagnosticReporter defaultReporter];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC Connection with %@ ended prematurely", obj[3]];
        [v30 reportIncident:@"XPCInterruption" subtype:@"Other" context:v31];
      }
    }

    WeakRetained = v34;
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __39__MOConnection_onConnectionInterrupted__block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained runBlockCompleted:*(a1 + 32)];

  return v3;
}

- (MOConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__MOConnection_onConnectionInterrupted__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 24) UTF8String];
  v7 = 136315394;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 count];
  _os_log_fault_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_FAULT, "[%s] The connection has been interrupted with %lu pending tasks", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__MOConnection_onConnectionInterrupted__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 24) UTF8String];
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "[%s] The connection has been interrupted with zero pending tasks", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end