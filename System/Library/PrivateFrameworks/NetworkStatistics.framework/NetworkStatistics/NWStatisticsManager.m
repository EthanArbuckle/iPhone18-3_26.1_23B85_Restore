@interface NWStatisticsManager
- (BOOL)addAllForProvider:(int)a3 filter:(unint64_t)a4 events:(unint64_t)a5 pid:(int)a6 uuid:(unsigned __int8 *)(a7;
- (BOOL)addAllRoute:(unint64_t)a3;
- (BOOL)addAllTCP:(unint64_t)a3 events:(unint64_t)a4 pid:(int)a5 uuid:(unsigned __int8 *)(a6;
- (BOOL)addAllUDP:(unint64_t)a3 events:(unint64_t)a4 pid:(int)a5 uuid:(unsigned __int8 *)(a6;
- (BOOL)addSource:(id)a3 request:(nstat_msg_add_src *)a4 length:(unint64_t)a5;
- (BOOL)performQuery:(unsigned int)a3 sourceRef:(unint64_t)a4 completion:(id)a5;
- (BOOL)queryAll:(id)a3;
- (BOOL)sendMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4;
- (NSSet)sources;
- (NWStatisticsManager)init;
- (NWStatisticsManager)initWithQueue:(id)a3;
- (NWStatisticsManagerDelegate)delegate;
- (unint64_t)_nextReferenceForTarget:(unint64_t)a3 command:(unsigned int)a4;
- (unsigned)commandFromReference:(unint64_t)a3;
- (void)dealloc;
- (void)dispatchDidAddSource:(id)a3;
- (void)dispatchDidReceiveCounts:(id)a3 fromUpdate:(BOOL)a4;
- (void)dispatchDidReceiveDescription:(id)a3;
- (void)dispatchDidReceiveType:(unsigned int)a3 source:(id)a4;
- (void)handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4;
- (void)handleReadEvent;
- (void)handleSystemInformationCounts:(nstat_sysinfo_counts *)a3;
- (void)invalidate;
- (void)performAllCompletions:(id)a3;
- (void)queryAllCounts:(id)a3;
- (void)queryAllDescriptions:(id)a3;
- (void)querySource:(id)a3 completion:(id)a4;
- (void)removeSource:(id)a3;
- (void)removeSourceInternal:(unint64_t)a3 isFromClient:(BOOL)a4;
- (void)reportInternalCounts;
- (void)sendRemoveSourceInternal:(unint64_t)a3;
- (void)sendRequestMessage:(int)a3 sourceRef:(unint64_t)a4;
- (void)setDelegate:(id)a3;
- (void)setInterfaceTraceFd:(int)a3;
- (void)setMgrflags:(unsigned int)a3;
- (void)setQueuePriority:(int64_t)a3;
- (void)startQueuedQuery;
- (void)subscribeToSystemInformation;
- (void)trace:(char *)a3;
- (void)traceMemoryBuf:(char *)a3 length:(int64_t)a4 tag:(char *)a5;
@end

@implementation NWStatisticsManager

- (void)handleReadEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = recv([(NWStatisticsManager *)self sockfd], [(NWStatisticsManager *)self readBuffer], 0x1000uLL, 0);
  if (v4 >= 1)
  {
    for (i = v4; i > 0; i = recv([(NWStatisticsManager *)self sockfd], [(NWStatisticsManager *)self readBuffer], 0x1000uLL, 0))
    {
      v6 = [(NWStatisticsManager *)self readBuffer];
      if (i >= 0x10)
      {
        v7 = v6;
        do
        {
          v8 = *(v7 + 6);
          if (v8 < 0x10 || i < v8)
          {
            break;
          }

          if ((self->_interfaceTraceFd & 0x80000000) == 0 && self->_iftracebuf)
          {
            [(NWStatisticsManager *)self traceMemoryBuf:v7 length:*(v7 + 6) tag:"Input"];
          }

          if (!*v7 || ![(NWStatisticsManager *)self handleCompletionMessage:v7 length:v8])
          {
            [(NWStatisticsManager *)self handleMessage:v7 length:v8];
          }

          v7 += v8;
          i -= v8;
        }

        while (i > 0xF);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (NWStatisticsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startQueuedQuery
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_queuedQueryAlls allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 description];
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = [v6 UTF8String];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: found keys %s", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v7 = [v4 description];
    [v7 UTF8String];
    NStatMgrTraceF(self, "%s Manager %p: found keys %s", v8, v9, v10, v11, v12, v13, "[NWStatisticsManager startQueuedQuery]");
  }

  if (v4 && [v4 count])
  {
    v14 = [v4 objectAtIndexedSubscript:0];
    v15 = [(NSMutableDictionary *)self->_queuedQueryAlls objectForKeyedSubscript:v14];
    v16 = MEMORY[0x25F875560]();

    if (v16)
    {
      [(NSMutableDictionary *)self->_queuedQueryAlls removeObjectForKey:v14];
      currentQueries = self->_currentQueries;
      v18 = MEMORY[0x25F875560](v16);
      [(NSMutableDictionary *)currentQueries setObject:v18 forKey:v14];

      v19 = [v14 unsignedLongLongValue];
      self->_currentQueryAllReference = v19;
      *&buf[8] = 0;
      *&buf[8] = [(NWStatisticsManager *)self commandFromReference:v19];
      *buf = v19;
      *&buf[16] = -1;
      *&buf[14] = 2;
      if (![(NWStatisticsManager *)self sendMessage:buf length:24])
      {
        [(NWStatisticsManager *)self handleCompletion:v19 message:0 length:0];
        v20 = NStatGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v28 = 134218240;
          v29 = self;
          v30 = 2048;
          v31 = v19;
          _os_log_impl(&dword_25BA3A000, v20, OS_LOG_TYPE_ERROR, "Manager %p: Failure to send message with reference %llu", v28, 0x16u);
        }

        if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
        {
          NStatMgrTraceF(self, "%s Manager %p: Failure to send message with reference %llu", v21, v22, v23, v24, v25, v26, "[NWStatisticsManager startQueuedQuery]");
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)traceMemoryBuf:(char *)a3 length:(int64_t)a4 tag:(char *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = self;
  objc_sync_enter(v8);
  if ((v8->_interfaceTraceFd & 0x80000000) == 0 && v8->_iftracebuf)
  {
    v16.tv_sec = 0;
    *&v16.tv_usec = 0;
    gettimeofday(&v16, 0);
    __snprintf_chk(v8->_iftracebuf, 0x1100uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%ld.%06d %s len %zu\n", v16.tv_sec, v16.tv_usec, a5, a4);
    v9 = strlen(v8->_iftracebuf) + 1;
    v10 = v9 + a4;
    if ((v9 + a4) >> 8 > 0x10)
    {
      v11 = NStatGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [NWStatisticsManager traceMemoryBuf:a5 length:a4 tag:v11];
      }

      goto LABEL_9;
    }

    memcpy(&v8->_iftracebuf[v9], a3, a4);
    if (write(v8->_interfaceTraceFd, v8->_iftracebuf, v10) < 0)
    {
      v11 = NStatGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 136315650;
        v18 = a5;
        v19 = 1024;
        v20 = v12;
        v21 = 2080;
        v22 = v14;
        _os_log_debug_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_DEBUG, "save %s failed: %d - %s", buf, 0x1Cu);
      }

LABEL_9:
    }
  }

  objc_sync_exit(v8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)trace:(char *)a3
{
  if (a3 && (self->_interfaceTraceFd & 0x80000000) == 0)
  {
    v5 = strlen(a3) + 1;

    [(NWStatisticsManager *)self traceMemoryBuf:a3 length:v5 tag:"Trace"];
  }
}

- (BOOL)sendMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4
{
  v7 = [(NWStatisticsManager *)self readSource];

  if (v7)
  {
    a3->length = a4;
    a3->flags |= 1u;
    if ((self->_interfaceTraceFd & 0x80000000) == 0 && self->_iftracebuf)
    {
      [(NWStatisticsManager *)self traceMemoryBuf:a3 length:a4 tag:"Output"];
    }

    if (send([(NWStatisticsManager *)self sockfd], a3, a4, 0) == a4)
    {
      return 1;
    }

    if (a3->context)
    {
      [(NWStatisticsManager *)self handleCompletion:a3->context message:0 length:0];
    }
  }

  return 0;
}

- (void)handleSystemInformationCounts:(nstat_sysinfo_counts *)a3
{
  v5 = [(NWStatisticsManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ((a3->var0 - 8) / 0x28) >= 1)
  {
    v6 = ((a3->var0 - 8) / 0x28) & 0x7FFFFFFF;
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
    p_var3 = &a3->var2[0].var3;
    while (1)
    {
      v9 = *(p_var3 - 8);
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = *(p_var3 - 7);
      if (v10)
      {
        break;
      }

      if ((v10 & 2) != 0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(p_var3 - 3)];
LABEL_12:
        v11 = v12;
        if (v12)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      if ((v10 & 4) != 0)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:p_var3 - 6 length:*p_var3];
        if (v11)
        {
LABEL_13:
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
          [v7 setObject:v11 forKeyedSubscript:v13];
        }
      }

LABEL_15:
      p_var3 += 10;
      if (!--v6)
      {
        if ([v7 count])
        {
          v14 = [(NWStatisticsManager *)self clientQueue];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __53__NWStatisticsManager_handleSystemInformationCounts___block_invoke;
          v16[3] = &unk_27996DB70;
          v16[4] = self;
          v17 = v7;
          v15 = v7;
          dispatch_async(v14, v16);
        }

        else
        {
        }

        goto LABEL_19;
      }
    }

    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:*(p_var3 - 3)];
    goto LABEL_12;
  }

LABEL_19:
}

void __53__NWStatisticsManager_handleSystemInformationCounts___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 statisticsManager:*(a1 + 32) didReceiveDirectSystemInformation:*(a1 + 40)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)reportInternalCounts
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = NStatGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    numSourceAddsReceived = self->_numSourceAddsReceived;
    numSourcesInserted = self->_numSourcesInserted;
    numSourcesRemoved = self->_numSourcesRemoved;
    v7 = [(NSMutableDictionary *)self->__internalSources count];
    numSourceAddsSkipped = self->_numSourceAddsSkipped;
    numSourcesQueried = self->_numSourcesQueried;
    numUpdatesDispatched = self->_numUpdatesDispatched;
    numUpdatesSkipped = self->_numUpdatesSkipped;
    numUpdatesLazyDispatched = self->_numUpdatesLazyDispatched;
    numUpdatesLazySkipped = self->_numUpdatesLazySkipped;
    *buf = 134220544;
    v31 = self;
    v32 = 2048;
    v33 = numSourceAddsReceived;
    v34 = 2048;
    v35 = numSourcesInserted;
    v36 = 2048;
    v37 = numSourcesRemoved;
    v38 = 2048;
    v39 = v7;
    v40 = 2048;
    v41 = numSourceAddsSkipped;
    v42 = 2048;
    v43 = numSourcesQueried;
    v44 = 2048;
    v45 = numUpdatesDispatched;
    v46 = 2048;
    v47 = numUpdatesSkipped;
    v48 = 2048;
    v49 = numUpdatesLazyDispatched;
    v50 = 2048;
    v51 = numUpdatesLazySkipped;
    _os_log_impl(&dword_25BA3A000, v3, OS_LOG_TYPE_DEBUG, "Manager %p: source kernel added msgs %lld insert %lld remove %lld dict %lld skip %lld query %lld, updates dispatched %lld skipped %lld lazy %lld lazy skip %lld", buf, 0x70u);
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v14 = self->_numSourceAddsReceived;
    v15 = self->_numSourcesInserted;
    v16 = self->_numSourcesRemoved;
    [(NSMutableDictionary *)self->__internalSources count];
    v28 = self->_numUpdatesLazyDispatched;
    v29 = self->_numUpdatesLazySkipped;
    v26 = self->_numUpdatesDispatched;
    v27 = self->_numUpdatesSkipped;
    v24 = self->_numSourceAddsSkipped;
    v25 = self->_numSourcesQueried;
    NStatMgrTraceF(self, "%s Manager %p: source kernel added msgs %lld insert %lld remove %lld dict %lld skip %lld query %lld, updates dispatched %lld skipped %lld lazy %lld lazy skip %lld", v17, v18, v19, v20, v21, v22, "[NWStatisticsManager reportInternalCounts]");
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dispatchDidAddSource:(id)a3
{
  v4 = a3;
  v5 = [(NWStatisticsManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__NWStatisticsManager_dispatchDidAddSource___block_invoke;
  v7[3] = &unk_27996DB70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__NWStatisticsManager_dispatchDidAddSource___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_autoreleasePoolPush();
    [v3 statisticsManager:*(a1 + 32) didAddSource:*(a1 + 40)];
    objc_autoreleasePoolPop(v2);
  }
}

- (void)dispatchDidReceiveDescription:(id)a3
{
  v4 = a3;
  v5 = [(NWStatisticsManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NWStatisticsManager_dispatchDidReceiveDescription___block_invoke;
  block[3] = &unk_27996DB98;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __53__NWStatisticsManager_dispatchDidReceiveDescription___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) removing] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 sourceDidReceiveDescription:*(a1 + 32)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)dispatchDidReceiveCounts:(id)a3 fromUpdate:(BOOL)a4
{
  v5 = a3;
  v6 = [(NWStatisticsManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NWStatisticsManager_dispatchDidReceiveCounts_fromUpdate___block_invoke;
  block[3] = &unk_27996DB98;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __59__NWStatisticsManager_dispatchDidReceiveCounts_fromUpdate___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) removing] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = objc_autoreleasePoolPush();
      [v3 sourceDidReceiveCounts:*(a1 + 32)];
      objc_autoreleasePoolPop(v2);
    }
  }
}

- (void)dispatchDidReceiveType:(unsigned int)a3 source:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 10003)
  {
    v11 = v6;
    v6 = [(NWStatisticsManager *)self dispatchDidReceiveDescription:v6];
  }

  else
  {
    if (a3 == 10004)
    {
      v8 = self;
      v11 = v7;
      v9 = v7;
      v10 = 0;
    }

    else
    {
      if (a3 != 10006)
      {
        goto LABEL_9;
      }

      v11 = v6;
      [(NWStatisticsManager *)self dispatchDidReceiveDescription:v6];
      v8 = self;
      v9 = v11;
      v10 = 1;
    }

    v6 = [(NWStatisticsManager *)v8 dispatchDidReceiveCounts:v9 fromUpdate:v10];
  }

  v7 = v11;
LABEL_9:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)sendRequestMessage:(int)a3 sourceRef:(unint64_t)a4
{
  v7 = [(NWStatisticsManager *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if (a4 == -1)
  {
    [NWStatisticsManager sendRequestMessage:sourceRef:];
  }

  if (![(NWStatisticsManager *)self isInvalidated])
  {
    v8[0] = 0;
    v8[1] = a3;
    v8[2] = a4;
    [(NWStatisticsManager *)self sendMessage:v8 length:24];
  }
}

- (void)handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4
{
  v80 = *MEMORY[0x277D85DE8];
  type = a3->type;
  if (type <= 10001)
  {
    if (type == 1)
    {
      if (a4 < 0x28)
      {
        v42 = NStatGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [NWStatisticsManager handleMessage:a3 length:v42];
        }
      }

      else
      {
        if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
        {
          v27 = NStatGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            context = a3[1].context;
            v29 = *&a3[1].type;
            v30 = a3[2].context;
            v31 = msgTypeToString(v30);
            v32 = WORD2(a3[2].context);
            context_high = HIWORD(a3[2].context);
            if (a4 < 0x30)
            {
              v34 = 0;
            }

            else
            {
              v34 = *&a3[2].type;
            }

            *buf = 134219778;
            v69 = self;
            v70 = 1024;
            *v71 = context;
            *&v71[4] = 2048;
            *&v71[6] = v29;
            *&v71[14] = 1024;
            *&v71[16] = v30;
            v72 = 2080;
            v73 = v31;
            v74 = 1024;
            v75 = v32;
            v76 = 1024;
            v77 = context_high;
            v78 = 2048;
            v79 = v34;
            _os_log_impl(&dword_25BA3A000, v27, OS_LOG_TYPE_DEBUG, "Manager %p: error: %d hdr {0x%lld, %d (%s) %d, 0x%x} srcref %lld}", buf, 0x42u);
          }
        }

        if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
        {
          context_low = LODWORD(a3[1].context);
          v54 = *&a3[1].type;
          msgTypeToString(a3[2].context);
          v61 = WORD2(a3[2].context);
          if (a4 >= 0x30)
          {
            v62 = *&a3[2].type;
          }

          v66 = HIWORD(a3[2].context);
          NStatMgrTraceF(self, "%s Manager %p: error: %d hdr {0x%lld, %d (%s) %d, 0x%x} srcref %lld}", v55, v56, v57, v58, v59, v60, "[NWStatisticsManager handleMessage:length:]");
        }
      }

      goto LABEL_71;
    }

    if (type != 10001)
    {
      goto LABEL_71;
    }

    if (a4 >= 0x20)
    {
      mgrflags = self->_mgrflags;
      if ((mgrflags & 0x20) != 0)
      {
        ++self->_numSourceAddsSkipped;
        if ((mgrflags & 0x40) != 0)
        {
          ++self->_numSourcesQueried;
          [(NWStatisticsManager *)self sendRequestMessage:1007 sourceRef:a3[1].context];
        }
      }

      else
      {
        v15 = [NWStatisticsSource createSourceForProvider:a3[1].type srcRef:a3[1].context manager:self];
        if (v15)
        {
          v16 = [(NWStatisticsManager *)self _internalSources];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3[1].context];
          [v16 setObject:v15 forKey:v17];

          ++self->_numSourcesInserted;
          [(NWStatisticsManager *)self dispatchDidAddSource:v15];
        }

        else
        {
          [(NWStatisticsManager *)self sendRemoveSourceInternal:a3[1].context];
        }
      }
    }

    v51 = self->_numSourceAddsReceived + 1;
    self->_numSourceAddsReceived = v51;
    if ((self->_mgrflags & 0x10) == 0 || v51 % 0x64)
    {
LABEL_71:
      v63 = *MEMORY[0x277D85DE8];
      return;
    }

    v52 = *MEMORY[0x277D85DE8];

    [(NWStatisticsManager *)self reportInternalCounts];
  }

  else
  {
    if ((type - 10002) < 3)
    {
LABEL_5:
      if (a4 >= 0x18)
      {
        v8 = a3[1].context;
        v9 = [(NWStatisticsManager *)self _internalSources];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
        v67 = [v9 objectForKey:v10];

        v12 = a3->type;
        if (v12 == 10002)
        {
          v13 = v67;
          if (v67)
          {
            v11 = [(NWStatisticsManager *)self removeSourceInternal:v8 isFromClient:0];
LABEL_9:
            v13 = v67;
          }
        }

        else
        {
          v13 = v67;
          if (v67)
          {
            v11 = [v67 removing];
            v13 = v67;
            if ((v11 & 1) == 0)
            {
              v11 = [v67 handleMessage:a3 length:a4];
              v13 = v67;
              if (v11)
              {
                if ((self->_mgrflags & 8) != 0 && (a3->flags & 4) != 0)
                {
                  ++self->_numUpdatesSkipped;
                  goto LABEL_73;
                }

                ++self->_numUpdatesDispatched;
                v11 = [(NWStatisticsManager *)self dispatchDidReceiveType:a3->type source:v67];
                goto LABEL_9;
              }
            }
          }

          else
          {
            if (v12 == 10006)
            {
              v43 = 9;
            }

            else
            {
              if (v12 != 10003)
              {
                goto LABEL_73;
              }

              v43 = 2;
            }

            v46 = LODWORD(a3[v43].context);
            if ((v46 - 11) >= 0xFFFFFFF6 && ((self->_providerFilters[v46] & 0x100000) != 0 || (self->_mgrflags & 0x20) != 0))
            {
              v47 = [NWStatisticsSource createSourceForProvider:"createSourceForProvider:srcRef:manager:" srcRef:? manager:?];
              if (v47)
              {
                v48 = [(NWStatisticsManager *)self _internalSources];
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
                [v48 setObject:v47 forKey:v49];

                ++self->_numSourcesInserted;
                v50 = [v47 handleMessage:a3 length:a4];
                [(NWStatisticsManager *)self dispatchDidAddSource:v47];
                if (v50)
                {
                  if ((self->_mgrflags & 8) != 0 && (a3->flags & 4) != 0)
                  {
                    ++self->_numUpdatesLazySkipped;
                  }

                  else
                  {
                    ++self->_numUpdatesLazyDispatched;
                    [(NWStatisticsManager *)self dispatchDidReceiveType:a3->type source:v47];
                  }
                }
              }

              goto LABEL_9;
            }
          }
        }

LABEL_73:
        v64 = *MEMORY[0x277D85DE8];

        MEMORY[0x2821F96F8](v11, v13);
        return;
      }

      goto LABEL_71;
    }

    if (type != 10005)
    {
      if (type != 10006)
      {
        goto LABEL_71;
      }

      goto LABEL_5;
    }

    if (a4 < 0x1C)
    {
      v35 = NStatGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v69 = self;
        v70 = 2048;
        *v71 = a4;
        _os_log_impl(&dword_25BA3A000, v35, OS_LOG_TYPE_ERROR, "Manager %p: Received message too short SYSINFO_COUNTS length %zd could not read nstat_sysinfo_len", buf, 0x16u);
      }

      if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
      {
        NStatMgrTraceF(self, "%s Manager %p: Received message too short SYSINFO_COUNTS length %zd could not read nstat_sysinfo_len", v36, v37, v38, v39, v40, v41, "[NWStatisticsManager handleMessage:length:]");
      }

      goto LABEL_71;
    }

    p_type = &a3[1].type;
    if (a3[1].type + 24 > a4)
    {
      v19 = NStatGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *p_type + 24;
        *buf = 134218496;
        v69 = self;
        v70 = 2048;
        *v71 = a4;
        *&v71[8] = 2048;
        *&v71[10] = v20;
        _os_log_impl(&dword_25BA3A000, v19, OS_LOG_TYPE_ERROR, "Manager %p: Received message too short SYSINFO_COUNTS length %zd < %zd", buf, 0x20u);
      }

      if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
      {
        v65 = *p_type + 24;
        NStatMgrTraceF(self, "%s Manager %p: Received message too short SYSINFO_COUNTS length %zd < %zd", v21, v22, v23, v24, v25, v26, "[NWStatisticsManager handleMessage:length:]");
      }

      goto LABEL_71;
    }

    v44 = *MEMORY[0x277D85DE8];
    v45 = &a3[1].type;

    [(NWStatisticsManager *)self handleSystemInformationCounts:v45];
  }
}

- (BOOL)addSource:(id)a3 request:(nstat_msg_add_src *)a4 length:(unint64_t)a5
{
  v8 = a3;
  v9 = dispatch_semaphore_create(0);
  if (v9)
  {
    v10 = v9;
    a4->var0.context = 0;
    v11 = [(NWStatisticsManager *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__NWStatisticsManager_addSource_request_length___block_invoke;
    block[3] = &unk_27996DBE8;
    block[4] = self;
    v12 = v8;
    v18 = v12;
    v13 = v10;
    v19 = v13;
    v20 = a4;
    v21 = a5;
    dispatch_sync(v11, block);

    if (a4->var0.context)
    {
      v14 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v13, v14);
    }

    v15 = [v12 reference] != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __48__NWStatisticsManager_addSource_request_length___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) readSource];

  if (v2)
  {
    v3 = [*(a1 + 32) _nextReferenceForTarget:0 command:1001];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__NWStatisticsManager_addSource_request_length___block_invoke_2;
    v13[3] = &unk_27996DBC0;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v14 = v4;
    v15 = v5;
    v16 = *(a1 + 48);
    v6 = MEMORY[0x25F875560](v13);
    v7 = MEMORY[0x25F875560]();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
    v9 = *(*(a1 + 32) + 248);
    v10 = MEMORY[0x25F875560](v7);
    [v9 setObject:v10 forKey:v8];

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *(v11 + 8) = 1001;
    *v11 = v3;
    [*(a1 + 32) sendMessage:? length:?];
  }
}

uint64_t __48__NWStatisticsManager_addSource_request_length___block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x20 && *(a2 + 8) == 10001)
  {
    [*(a1 + 32) setReference:*(a2 + 16)];
    v4 = [*(a1 + 40) _internalSources];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "reference")}];
    [v4 setObject:v5 forKey:v6];
  }

  dispatch_semaphore_signal(*(a1 + 48));
  return 1;
}

- (void)sendRemoveSourceInternal:(unint64_t)a3
{
  v3[0] = 0;
  v3[1] = 1003;
  v3[2] = a3;
  [(NWStatisticsManager *)self sendMessage:v3 length:24];
}

- (void)removeSourceInternal:(unint64_t)a3 isFromClient:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [(NWStatisticsManager *)self _internalSources];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 40;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 56;
LABEL_7:
      v10 = *(&self->super.isa + v9);
      -[NWStatisticsManager sendRemoveSourceInternal:](self, "sendRemoveSourceInternal:", [v8 reference]);
      if ((v10 & 0x100000) != 0)
      {
        [v8 setRemoving:1];
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    -[NWStatisticsManager sendRemoveSourceInternal:](self, "sendRemoveSourceInternal:", [v8 reference]);
  }

LABEL_10:
  v11 = [(NWStatisticsManager *)self _internalSources];
  [v11 removeObjectForKey:v6];

  ++self->_numSourcesRemoved;
  v12 = [(NWStatisticsManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(NWStatisticsManager *)self clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__NWStatisticsManager_removeSourceInternal_isFromClient___block_invoke;
    v14[3] = &unk_27996DB70;
    v14[4] = self;
    v15 = v8;
    dispatch_async(v13, v14);
  }

LABEL_13:
}

void __57__NWStatisticsManager_removeSourceInternal_isFromClient___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_autoreleasePoolPush();
    [v3 statisticsManager:*(a1 + 32) didRemoveSource:*(a1 + 40)];
    objc_autoreleasePoolPop(v2);
  }
}

- (void)subscribeToSystemInformation
{
  v3 = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NWStatisticsManager_subscribeToSystemInformation__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __51__NWStatisticsManager_subscribeToSystemInformation__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v2 = xmmword_25BA778E0;
    return [*(result + 32) sendMessage:&v2 length:16];
  }

  return result;
}

- (BOOL)addAllForProvider:(int)a3 filter:(unint64_t)a4 events:(unint64_t)a5 pid:(int)a6 uuid:(unsigned __int8 *)(a7
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ((a3 - 2) >= 4 && a3 != 8)
  {
    __assert_rtn("[NWStatisticsManager addAllForProvider:filter:events:pid:uuid:]", "NWStatisticsManager.m", 869, "(provider == NSTAT_PROVIDER_TCP_KERNEL) || (provider == NSTAT_PROVIDER_TCP_USERLAND) || (provider == NSTAT_PROVIDER_UDP_KERNEL) || (provider == NSTAT_PROVIDER_UDP_USERLAND) || (provider == NSTAT_PROVIDER_QUIC_USERLAND)");
  }

  v13 = [(NWStatisticsManager *)self internalQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__NWStatisticsManager_addAllForProvider_filter_events_pid_uuid___block_invoke;
  v16[3] = &unk_27996DC10;
  v16[6] = a4;
  v16[7] = a5;
  v17 = a3;
  v18 = a6;
  v16[8] = a7;
  v16[4] = self;
  v16[5] = &v19;
  dispatch_sync(v13, v16);

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v14;
}

void __64__NWStatisticsManager_addAllForProvider_filter_events_pid_uuid___block_invoke(uint64_t a1)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  *v27 = 0u;
  LODWORD(v27[1]) = 1002;
  *&v27[2] = v2;
  memset(&v27[4], 0, 24);
  v3 = *(a1 + 72);
  v27[4] = v3;
  v4 = *(a1 + 64);
  if (v4)
  {
    *&v27[5] = *v4;
  }

  *(*(a1 + 32) + 8 * v3 + 24) = v2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) sendMessage:v27 length:56];
  v5 = NStatGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v9 = "success";
    }

    else
    {
      v9 = "failure";
    }

    *buf = 134218754;
    v20 = v8;
    v21 = 1024;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    v25 = 2080;
    v26 = v9;
    _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_INFO, "Manager %p: add all for provider %d filter 0x%llx returns %s", buf, 0x26u);
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24);
    v18 = *(a1 + 48);
    v17 = *(a1 + 72);
    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: add all for provider %d filter 0x%llx returns %s", v10, v11, v12, v13, v14, v15, "[NWStatisticsManager addAllForProvider:filter:events:pid:uuid:]_block_invoke");
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)addAllTCP:(unint64_t)a3 events:(unint64_t)a4 pid:(int)a5 uuid:(unsigned __int8 *)(a6
{
  if ((a3 & 0x30000000) != 0)
  {
    v8 = a3 & 0x30000000;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = -805306369;
  if (!a5)
  {
    v9 = -855638017;
  }

  v10 = v9 & a3;
  if ((a3 & 0x3000000) != 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFC3FFFFFFLL;
  }

  if ((a3 & 0xC000000) != 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v8 & 0x10000000) == 0 || [(NWStatisticsManager *)self addAllForProvider:2 filter:v12 events:a4 pid:v11 uuid:v13];
  if (v8 >> 29 && v14)
  {

    LOBYTE(v14) = [(NWStatisticsManager *)self addAllForProvider:3 filter:v12 events:a4 pid:v11 uuid:v13];
  }

  return v14;
}

- (BOOL)addAllUDP:(unint64_t)a3 events:(unint64_t)a4 pid:(int)a5 uuid:(unsigned __int8 *)(a6
{
  if ((a3 & 0x70000000) != 0)
  {
    v8 = a3 & 0x70000000;
  }

  else
  {
    v8 = 1879048192;
  }

  v9 = -1879048193;
  if (!a5)
  {
    v9 = -1929379841;
  }

  v10 = v9 & a3;
  if ((a3 & 0x3000000) != 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFF83FFFFFFLL;
  }

  if ((a3 & 0xC000000) != 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  if ((v8 & 0x10000000) != 0)
  {
    v14 = [(NWStatisticsManager *)self addAllForProvider:4 filter:v12 events:a4 pid:v11 uuid:v13];
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 1;
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }
  }

  if (v14)
  {
    v14 = [(NWStatisticsManager *)self addAllForProvider:5 filter:v12 events:a4 pid:v11 uuid:v13];
  }

LABEL_21:
  if (v8 >> 30 && v14)
  {

    LOBYTE(v14) = [(NWStatisticsManager *)self addAllForProvider:8 filter:v12 events:a4 pid:v11 uuid:v13];
  }

  return v14;
}

- (BOOL)addAllRoute:(unint64_t)a3
{
  v4 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NWStatisticsManager_addAllRoute___block_invoke;
  block[3] = &unk_27996DC38;
  block[5] = &v8;
  block[6] = a3;
  block[4] = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __35__NWStatisticsManager_addAllRoute___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v19 = 0;
  DWORD2(v16) = 1002;
  LODWORD(v18) = 1;
  *&v17 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) sendMessage:&v16 length:56];
  v2 = NStatGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v4 = "success";
    }

    else
    {
      v4 = "failure";
    }

    *buf = 134218242;
    v13 = v3;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&dword_25BA3A000, v2, OS_LOG_TYPE_DEBUG, "Manager %p: add all routes returns %s", buf, 0x16u);
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24);
    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: add all routes returns %s", v5, v6, v7, v8, v9, v10, "[NWStatisticsManager addAllRoute:]_block_invoke");
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeSource:(id)a3
{
  v4 = [a3 reference];
  v5 = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NWStatisticsManager_removeSource___block_invoke;
  v6[3] = &unk_27996DC60;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(v5, v6);
}

- (unint64_t)_nextReferenceForTarget:(unint64_t)a3 command:(unsigned int)a4
{
  v4 = self->_querySequenceNumber + 1;
  self->_querySequenceNumber = v4;
  v5 = 4 * v4;
  v6 = v5 | 2;
  v7 = v5 | 1;
  v8 = v5 | 3;
  if (a4 != 1007)
  {
    v8 = v5;
  }

  if (a4 != 1005)
  {
    v7 = v8;
  }

  if (a4 != 1004)
  {
    v6 = v7;
  }

  if (a3 == -1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (unsigned)commandFromReference:(unint64_t)a3
{
  if ((a3 & 3) == 2)
  {
    v3 = 1004;
  }

  else
  {
    v3 = 1007;
  }

  if ((a3 & 3) == 1)
  {
    return 1005;
  }

  else
  {
    return v3;
  }
}

- (BOOL)performQuery:(unsigned int)a3 sourceRef:(unint64_t)a4 completion:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v9 = NStatGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "NSTAT_MSG_TYPE_GET_SRC_DESC";
      v11 = "UNKNOWN -???";
      if (a3 == 1007)
      {
        v11 = "NSTAT_MSG_TYPE_GET_UPDATE";
      }

      if (a3 != 1005)
      {
        v10 = v11;
      }

      if (a3 == 1004)
      {
        v12 = "NSTAT_MSG_TYPE_QUERY_SRC";
      }

      else
      {
        v12 = v10;
      }

      v13 = MEMORY[0x25F875560](v8);
      *buf = 134218754;
      v39 = self;
      v40 = 2080;
      v41 = v12;
      v42 = 2048;
      v43 = a4;
      v44 = 2048;
      v45 = v13;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEBUG, "Manager %p: Entry command %s  source ref %llu completion %p", buf, 0x2Au);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v26 = MEMORY[0x25F875560](v8);
    NStatMgrTraceF(self, "%s Manager %p: Entry command %s  source ref %llu completion %p", v14, v15, v16, v17, v18, v19, "[NWStatisticsManager performQuery:sourceRef:completion:]");
  }

  v20 = [(NWStatisticsManager *)self internalQueue];
  dispatch_assert_queue_not_V2(v20);

  if (a4 == -1 || v8)
  {
    v22 = [(NWStatisticsManager *)self internalQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2;
    v27[3] = &unk_27996DD00;
    v27[4] = self;
    v30 = a4;
    v31 = a3;
    v28 = v8;
    v29 = &v34;
    dispatch_sync(v22, v27);
  }

  else
  {
    v21 = [(NWStatisticsManager *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke;
    block[3] = &unk_27996DC88;
    v33 = a3;
    block[4] = self;
    block[5] = a4;
    dispatch_async(v21, block);

    *(v35 + 24) = 1;
  }

  v23 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nextReferenceForTarget:*(a1 + 56) command:*(a1 + 64)];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_3;
  v83[3] = &unk_27996DCD8;
  v4 = *(a1 + 40);
  v83[4] = *(a1 + 32);
  v85 = v2;
  v84 = v4;
  v5 = MEMORY[0x25F875560](v83);
  v6 = MEMORY[0x25F875560]();
  if (([*(a1 + 32) mgrflags] & 0x10) != 0)
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = MEMORY[0x25F875560](v5);
      v10 = *(a1 + 56);
      *buf = 134218752;
      v87 = v8;
      v88 = 2048;
      *v89 = v9;
      *&v89[8] = 2048;
      *&v89[10] = v2;
      *&v89[18] = 2048;
      *&v89[20] = v10;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block %p for ref %lld  src %llu", buf, 0x2Au);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x25F875560](v5);
    v77 = *(a1 + 56);
    NStatMgrTraceF(v11, "%s Manager %p: Outer completion block %p for ref %lld  src %llu", v13, v14, v15, v16, v17, v18, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
  }

  if (*(a1 + 56) != -1)
  {
    goto LABEL_8;
  }

  v52 = [*(a1 + 32) currentQueryAllReference];
  v53 = *(a1 + 32);
  if (!v52)
  {
    [v53 setCurrentQueryAllReference:v2];
    v73 = *(*(a1 + 32) + 248);
    v74 = MEMORY[0x25F875560](v6);
    [v73 setObject:v74 forKey:v3];

LABEL_8:
    if (([*(a1 + 32) mgrflags] & 0x10) != 0)
    {
      v19 = NStatGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        v21 = [v20 currentQueryAllReference];
        v22 = *(a1 + 32);
        v24 = *(v22 + 248);
        v23 = *(v22 + 256);
        *buf = 134218754;
        v87 = v20;
        v88 = 2048;
        *v89 = v21;
        *&v89[8] = 2112;
        *&v89[10] = v24;
        *&v89[18] = 2112;
        *&v89[20] = v23;
        _os_log_impl(&dword_25BA3A000, v19, OS_LOG_TYPE_DEBUG, "Manager %p: currentQueryAllReference %llu current %@, pending %@", buf, 0x2Au);
      }
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      v25 = *(a1 + 32);
      [v25 currentQueryAllReference];
      v26 = *(a1 + 32);
      v76 = *(v26 + 248);
      v78 = *(v26 + 256);
      NStatMgrTraceF(v25, "%s Manager %p: currentQueryAllReference %llu current %@, pending %@", v27, v28, v29, v30, v31, v32, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
    }

    if (([*(a1 + 32) mgrflags] & 0x10) != 0)
    {
      v33 = NStatGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 32);
        v35 = *(a1 + 64);
        v36 = *(a1 + 56);
        *buf = 134219008;
        v87 = v34;
        v88 = 1024;
        *v89 = v35;
        *&v89[4] = 2048;
        *&v89[6] = v2;
        *&v89[14] = 2048;
        *&v89[16] = v36;
        *&v89[24] = 1024;
        *&v89[26] = 0;
        _os_log_impl(&dword_25BA3A000, v33, OS_LOG_TYPE_DEBUG, "Manager %p: about to prepare message %x context %lld srcef %llu, prev pended %d", buf, 0x2Cu);
      }
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      v79 = *(a1 + 56);
      v75 = *(a1 + 64);
      NStatMgrTraceF(*(a1 + 32), "%s Manager %p: about to prepare message %x context %lld srcef %llu, prev pended %d", v37, v38, v39, v40, v41, v42, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
    }

    v43 = *(a1 + 64);
    v80 = v2;
    v81 = v43;
    v82 = *(a1 + 56);
    if (v82 == -1)
    {
      HIWORD(v81) = 2;
      if (([*(a1 + 32) mgrflags] & 0x10) != 0)
      {
        v44 = NStatGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 32);
          *buf = 134218752;
          v87 = v45;
          v88 = 1024;
          *v89 = v43;
          *&v89[4] = 2048;
          *&v89[6] = v2;
          *&v89[14] = 2048;
          *&v89[16] = -1;
          _os_log_impl(&dword_25BA3A000, v44, OS_LOG_TYPE_DEBUG, "Manager %p: about to send message %x context %lld srcef %llu", buf, 0x26u);
        }
      }

      if (([*(a1 + 32) mgrflags] & 0x80) != 0)
      {
        NStatMgrTraceF(*(a1 + 32), "%s Manager %p: about to send message %x context %lld srcef %llu", v46, v47, v48, v49, v50, v51, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) sendMessage:&v80 length:24];
    goto LABEL_36;
  }

  v54 = v53[32];
  v55 = MEMORY[0x25F875560](v6);
  [v54 setObject:v55 forKey:v3];

  if (([*(a1 + 32) mgrflags] & 0x10) != 0)
  {
    v56 = NStatGetLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(a1 + 32);
      v58 = *(a1 + 64);
      v59 = *(a1 + 56);
      v60 = [v57[32] description];
      v61 = [v60 UTF8String];
      *buf = 134219010;
      v87 = v57;
      v88 = 1024;
      *v89 = v58;
      *&v89[4] = 2048;
      *&v89[6] = v2;
      *&v89[14] = 2048;
      *&v89[16] = v59;
      *&v89[24] = 2080;
      *&v89[26] = v61;
      _os_log_impl(&dword_25BA3A000, v56, OS_LOG_TYPE_DEBUG, "Manager %p: set pended for message %x context %lld srcef %llu dictionary %s", buf, 0x30u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v62 = *(a1 + 32);
    v63 = *(a1 + 56);
    v64 = *(a1 + 64);
    v65 = [v62[32] description];
    [v65 UTF8String];
    NStatMgrTraceF(v62, "%s Manager %p: set pended for message %x context %lld srcef %llu dictionary %s", v66, v67, v68, v69, v70, v71, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_36:

  v72 = *MEMORY[0x277D85DE8];
}

uint64_t __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) mgrflags] & 0x10) != 0)
  {
    v6 = NStatGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = MEMORY[0x25F875560](*(a1 + 40));
      *buf = 134219008;
      v45 = v8;
      v46 = 2048;
      v47 = v7;
      v48 = 2048;
      v49 = a2;
      v50 = 1024;
      v51 = a3;
      v52 = 2048;
      v53 = v9;
      _os_log_impl(&dword_25BA3A000, v6, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block called, for ref %lld, msg %p len %d completion %p", buf, 0x30u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v41 = MEMORY[0x25F875560](*(a1 + 40));
    NStatMgrTraceF(v11, "%s Manager %p: Outer completion block called, for ref %lld, msg %p len %d completion %p", v12, v13, v14, v15, v16, v17, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
  }

  v18 = [*(a1 + 32) clientQueue];
  if (!v18)
  {
    goto LABEL_23;
  }

  if (a2 && *(a2 + 8) > 1u)
  {
    v29 = NStatGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      v31 = *(a2 + 8);
      *buf = 134218240;
      v45 = v30;
      v46 = 1024;
      LODWORD(v47) = v31;
      _os_log_impl(&dword_25BA3A000, v29, OS_LOG_TYPE_ERROR, "Manager %p: Outer completion block called, type mismatch %d", buf, 0x12u);
    }

    if (([*(a1 + 32) mgrflags] & 0x80) != 0)
    {
      v40 = *(a2 + 8);
      NStatMgrTraceF(*(a1 + 32), "%s Manager %p: Outer completion block called, type mismatch %d", v32, v33, v34, v35, v36, v37, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
    }

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  if (([*(a1 + 32) mgrflags] & 0x10) != 0)
  {
    v19 = NStatGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      *buf = 134218240;
      v45 = v20;
      v46 = 2048;
      v47 = a2;
      _os_log_impl(&dword_25BA3A000, v19, OS_LOG_TYPE_DEBUG, "Manager %p: Outer completion block ready to dispatch async to inner block, msg %p", buf, 0x16u);
    }
  }

  if (([*(a1 + 32) mgrflags] & 0x80) != 0)
  {
    NStatMgrTraceF(*(a1 + 32), "%s Manager %p: Outer completion block ready to dispatch async to inner block, msg %p", v21, v22, v23, v24, v25, v26, "[NWStatisticsManager performQuery:sourceRef:completion:]_block_invoke");
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2_47;
    block[3] = &unk_27996DCB0;
    block[4] = *(a1 + 32);
    v43 = v27;
    dispatch_async(v18, block);
  }

  v28 = 1;
LABEL_24:

  v38 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t __57__NWStatisticsManager_performQuery_sourceRef_completion___block_invoke_2_47(uint64_t a1)
{
  result = [*(a1 + 32) isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)queryAllCounts:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x25F875560](v4);
      *buf = 134218240;
      v16 = self;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Query all counts, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v14 = MEMORY[0x25F875560](v4);
    NStatMgrTraceF(self, "%s Manager %p: Query all counts, completion %p", v7, v8, v9, v10, v11, v12, "[NWStatisticsManager queryAllCounts:]");
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    [(NWStatisticsManager *)self performQuery:1004 sourceRef:-1 completion:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)queryAllDescriptions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x25F875560](v4);
      *buf = 134218240;
      v16 = self;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Query all descriptions, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v14 = MEMORY[0x25F875560](v4);
    NStatMgrTraceF(self, "%s Manager %p: Query all descriptions, completion %p", v7, v8, v9, v10, v11, v12, "[NWStatisticsManager queryAllDescriptions:]");
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    [(NWStatisticsManager *)self performQuery:1005 sourceRef:-1 completion:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)queryAll:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x25F875560](v4);
      *buf = 134218240;
      v18 = self;
      v19 = 2048;
      v20 = v6;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Query all update, completion %p", buf, 0x16u);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    v16 = MEMORY[0x25F875560](v4);
    NStatMgrTraceF(self, "%s Manager %p: Query all update, completion %p", v7, v8, v9, v10, v11, v12, "[NWStatisticsManager queryAll:]");
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (v4)
    {
      v4[2](v4);
    }

    v13 = 0;
  }

  else
  {
    v13 = [(NWStatisticsManager *)self performQuery:1007 sourceRef:-1 completion:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)querySource:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(NWStatisticsManager *)self mgrflags]& 0x10) != 0)
  {
    v8 = NStatGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v6 reference];
      v10 = MEMORY[0x25F875560](v7);
      *buf = 134218752;
      v20 = self;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEBUG, "Manager %p: Query Source for %p, %llu  completion %p", buf, 0x2Au);
    }
  }

  if (([(NWStatisticsManager *)self mgrflags]& 0x80) != 0)
  {
    [v6 reference];
    v18 = MEMORY[0x25F875560](v7);
    NStatMgrTraceF(self, "%s Manager %p: Query Source for %p, %llu  completion %p", v11, v12, v13, v14, v15, v16, "[NWStatisticsManager querySource:completion:]");
  }

  if ([(NWStatisticsManager *)self isInvalidated])
  {
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    -[NWStatisticsManager performQuery:sourceRef:completion:](self, "performQuery:sourceRef:completion:", 1007, [v6 reference], v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setQueuePriority:(int64_t)a3
{
  v3 = NStatGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [NWStatisticsManager setQueuePriority:];
  }
}

- (void)setMgrflags:(unsigned int)a3
{
  v5 = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NWStatisticsManager_setMgrflags___block_invoke;
  v6[3] = &unk_27996DD28;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

uint64_t __35__NWStatisticsManager_setMgrflags___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 204))
  {
    *(v2 + 204) = defaultMgrFlags | v1;
  }

  return result;
}

- (void)setInterfaceTraceFd:(int)a3
{
  v5 = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__NWStatisticsManager_setInterfaceTraceFd___block_invoke;
  v6[3] = &unk_27996DD28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __43__NWStatisticsManager_setInterfaceTraceFd___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (!*(v2 + 112))
  {
    *(*(a1 + 32) + 112) = malloc_type_malloc(0x1000uLL, 0x72F32AE1uLL);
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 208);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 208) = *(a1 + 40);
  objc_sync_exit(obj);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(NWStatisticsManager *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__NWStatisticsManager_setDelegate___block_invoke;
  v7[3] = &unk_27996DB70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __35__NWStatisticsManager_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 224), *(a1 + 40));
  v2 = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 subscribeToSystemInformation];
  }

  return result;
}

- (NSSet)sources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(NWStatisticsManager *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NWStatisticsManager_sources__block_invoke;
  v6[3] = &unk_27996DD50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__NWStatisticsManager_sources__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) _internalSources];
  v3 = [v7 allValues];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)performAllCompletions:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NWStatisticsManager_performAllCompletions___block_invoke;
  v4[3] = &unk_27996DDA0;
  v4[4] = self;
  v3 = a3;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  [v3 removeAllObjects];
}

void __45__NWStatisticsManager_performAllCompletions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x25F875560](a3);
  v5 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWStatisticsManager_performAllCompletions___block_invoke_2;
  block[3] = &unk_27996DD78;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)invalidate
{
  v3 = [(NWStatisticsManager *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsManager_invalidate__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __33__NWStatisticsManager_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) readSource];

  if (v2)
  {
    v3 = [*(a1 + 32) readSource];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setReadSource:0];
  }

  v4 = [*(a1 + 32) currentQueries];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 currentQueries];
    [v5 performAllCompletions:v6];
  }

  [*(a1 + 32) setCurrentQueries:0];
  v7 = [*(a1 + 32) queuedQueryAlls];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v8 queuedQueryAlls];
    [v8 performAllCompletions:v9];
  }

  [*(a1 + 32) setQueuedQueryAlls:0];
  while (1)
  {
    v10 = [*(a1 + 32) _internalSources];
    v11 = [v10 count];

    if (!v11)
    {
      break;
    }

    v12 = [*(a1 + 32) _internalSources];
    v13 = [v12 allKeys];

    v14 = [v13 objectAtIndexedSubscript:0];
    [*(a1 + 32) removeSourceInternal:objc_msgSend(v14 isFromClient:{"unsignedLongLongValue"), 0}];
  }

  [*(a1 + 32) set_internalSources:0];
  v15 = *(a1 + 32);
  if ((v15[52] & 0x80000000) == 0)
  {
    v16 = v15;
    objc_sync_enter(v16);
    *(*(a1 + 32) + 208) = -1;
    v17 = *(*(a1 + 32) + 112);
    if (v17)
    {
      free(v17);
      *(*(a1 + 32) + 112) = 0;
    }

    objc_sync_exit(v16);

    v15 = *(a1 + 32);
  }

  return [v15 setInvalidated:1];
}

- (void)dealloc
{
  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    v4 = self->_readSource;
    self->_readSource = 0;
  }

  readBuffer = self->_readBuffer;
  if (readBuffer)
  {
    free(readBuffer);
  }

  v6.receiver = self;
  v6.super_class = NWStatisticsManager;
  [(NWStatisticsManager *)&v6 dealloc];
}

- (NWStatisticsManager)initWithQueue:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v69.receiver = self;
  v69.super_class = NWStatisticsManager;
  v6 = [(NWStatisticsManager *)&v69 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = NStatGetLog();
    v10 = socket(32, 2, 2);
    if (v10 == -1)
    {
LABEL_10:
      v7->_sockfd = -1;
      v13 = NStatGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *__str = 0u;
    v72 = 0u;
    __strlcpy_chk();
    if (ioctl(v11, 0xC0644E03uLL, __str) == -1)
    {
LABEL_9:
      close(v11);
      goto LABEL_10;
    }

    *&v78[12] = 0uLL;
    *v78 = 139296;
    *&v78[4] = *__str;
    v79 = 0;
    if (connect(v11, v78, 0x20u))
    {
      v12 = NStatGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

LABEL_8:

      goto LABEL_9;
    }

    relative_priority_ptr = 0x20000;
    if (setsockopt(v11, 0xFFFF, 4098, &relative_priority_ptr, 4u) == -1)
    {
      v12 = NStatGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      goto LABEL_8;
    }

    v16 = fcntl(v11, 3, 0);
    if (fcntl(v11, 4, v16 | 4u) == -1)
    {
      v12 = NStatGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      goto LABEL_8;
    }

    v7->_sockfd = v11;
    v17 = malloc_type_malloc(0x1000uLL, 0x52ACDC63uLL);
    v7->_readBuffer = v17;
    if (!v17)
    {
      v43 = NStatGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }

      close(v7->_sockfd);
      goto LABEL_13;
    }

    objc_storeStrong(&v7->_clientQueue, a3);
    snprintf(__str, 0x3BuLL, "com.apple.network.statistics.manager.%p", v7);
    relative_priority_ptr = 0;
    qos_class = dispatch_queue_get_qos_class(v5, &relative_priority_ptr);
    v19 = dispatch_queue_attr_make_with_qos_class(0, qos_class, relative_priority_ptr);
    v20 = dispatch_queue_create(__str, v19);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalSources = v7->__internalSources;
    v7->__internalSources = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentQueries = v7->_currentQueries;
    v7->_currentQueries = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queuedQueryAlls = v7->_queuedQueryAlls;
    v7->_queuedQueryAlls = v26;

    v28 = v7->_internalQueue;
    if (v28 && v7->__internalSources && v7->_currentQueries && v7->_queuedQueryAlls)
    {
      v29 = dispatch_source_create(MEMORY[0x277D85D28], v7->_sockfd, 0, v28);
      readSource = v7->_readSource;
      v7->_readSource = v29;

      if (v7->_readSource)
      {
        v7->_id = atomic_fetch_add_explicit(&mgrSeqno, 1u, memory_order_relaxed) + 1;
        v7->_interfaceTraceFd = -1;
        if (traceFilePrefix)
        {
          v31 = objc_alloc_init(MEMORY[0x277CCA968]);
          v32 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v31 setLocale:v32];

          [v31 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZ"];
          v33 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
          [v31 setTimeZone:v33];

          v34 = MEMORY[0x277CCACA8];
          v35 = traceFilePrefix;
          id = v7->_id;
          v37 = [MEMORY[0x277CBEAA8] date];
          v38 = [v31 stringFromDate:v37];
          v39 = [v34 stringWithFormat:@"%@-%d.%@.trace", v35, id, v38];

          v40 = open([v39 UTF8String], 513, 438);
          if (v40 < 0)
          {
            v44 = NStatGetLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [NWStatisticsManager initWithQueue:];
            }
          }

          else
          {
            v41 = v40;
            v7->_iftracebuf = malloc_type_malloc(0x1000uLL, 0x593934DuLL);
            v7->_interfaceTraceFd = v41;
          }
        }

        v7->_mgrflags = defaultMgrFlags;
        v45 = NStatGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = NStatGetLog();
          *v78 = 134218240;
          *&v78[4] = v7;
          *&v78[12] = 2048;
          *&v78[14] = v46;
          _os_log_impl(&dword_25BA3A000, v45, OS_LOG_TYPE_DEBUG, "Manager %p: Log object is at %p", v78, 0x16u);
        }

        if (([(NWStatisticsManager *)v7 mgrflags]& 0x80) != 0)
        {
          v64 = NStatGetLog();
          NStatMgrTraceF(v7, "%s Manager %p: Log object is at %p", v47, v48, v49, v50, v51, v52, "[NWStatisticsManager initWithQueue:]");
        }

        sockfd = v7->_sockfd;
        v54 = v7->_readSource;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __37__NWStatisticsManager_initWithQueue___block_invoke;
        handler[3] = &__block_descriptor_36_e5_v8__0l;
        v68 = sockfd;
        dispatch_source_set_cancel_handler(v54, handler);
        v55 = v7->_readSource;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __37__NWStatisticsManager_initWithQueue___block_invoke_2;
        v65[3] = &unk_27996DB98;
        v56 = v7;
        v66 = v56;
        dispatch_source_set_event_handler(v55, v65);
        dispatch_resume(v7->_readSource);
        v57 = NStatGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *v78 = 134218240;
          *&v78[4] = v56;
          *&v78[12] = 2048;
          *&v78[14] = v56;
          _os_log_impl(&dword_25BA3A000, v57, OS_LOG_TYPE_INFO, "Manager %p: Created new NetworkStatistics manager at %p", v78, 0x16u);
        }

        if (([(NWStatisticsManager *)v56 mgrflags]& 0x80) != 0)
        {
          NStatMgrTraceF(v56, "%s Manager %p: Created new NetworkStatistics manager at %p", v58, v59, v60, v61, v62, v63, "[NWStatisticsManager initWithQueue:]");
        }

        v8 = v56;

        goto LABEL_34;
      }
    }

    else
    {
      v42 = NStatGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [NWStatisticsManager initWithQueue:];
      }
    }

    close(v7->_sockfd);
    v8 = 0;
LABEL_34:
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NWStatisticsManager)init
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = [(NWStatisticsManager *)self initWithQueue:v3];

  return v4;
}

- (void)traceMemoryBuf:(uint64_t)a1 length:(uint64_t)a2 tag:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_25BA3A000, log, OS_LOG_TYPE_DEBUG, "save %s capacity limit for len %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(uint64_t)a1 length:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_25BA3A000, a2, OS_LOG_TYPE_DEBUG, "error: %d, no quoted message in return", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end