@interface NWStatisticsSource
- (BOOL)_handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
- (BOOL)handleCounts:(const nstat_counts *)counts;
- (BOOL)handleMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (NWStatisticsSource)initWithManager:(id)manager source:(unint64_t)source provider:(unsigned int)provider;
- (id)_currentSnapshot;
- (id)currentSnapshot;
- (void)queryCounts;
- (void)queryDescription;
- (void)queryUpdate;
@end

@implementation NWStatisticsSource

- (id)currentSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentSnapshot = [(NWStatisticsSource *)selfCopy _currentSnapshot];
  objc_sync_exit(selfCopy);

  return _currentSnapshot;
}

- (BOOL)handleCounts:(const nstat_counts *)counts
{
  manager = [(NWStatisticsSource *)self manager];
  internalQueue = [manager internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(NWStatisticsSource *)self countsSeqno])
  {
    if (!memcmp(counts, &self->_last_counts, 0x70uLL))
    {
      manager2 = [(NWStatisticsSource *)self manager];
      mgrflags = [manager2 mgrflags];

      return (mgrflags & 2) == 0;
    }

    else
    {
      v7 = *&counts->nstat_rxpackets;
      v8 = *&counts->nstat_cell_rxbytes;
      *&self->_last_counts.nstat_txpackets = *&counts->nstat_txpackets;
      *&self->_last_counts.nstat_cell_rxbytes = v8;
      *&self->_last_counts.nstat_rxpackets = v7;
      v9 = *&counts->nstat_wifi_rxbytes;
      v10 = *&counts->nstat_wired_rxbytes;
      v11 = *&counts->nstat_connectsuccesses;
      *&self->_last_counts.nstat_rxduplicatebytes = *&counts->nstat_rxduplicatebytes;
      *&self->_last_counts.nstat_connectsuccesses = v11;
      *&self->_last_counts.nstat_wifi_rxbytes = v9;
      *&self->_last_counts.nstat_wired_rxbytes = v10;
      [(NWStatisticsSource *)self setCountsSeqno:[(NWStatisticsSource *)self countsSeqno]+ 1];
      return 1;
    }
  }

  else
  {
    v12 = 1;
    [(NWStatisticsSource *)self setCountsSeqno:1];
    v13 = *&counts->nstat_rxpackets;
    v14 = *&counts->nstat_cell_rxbytes;
    *&self->_last_counts.nstat_txpackets = *&counts->nstat_txpackets;
    *&self->_last_counts.nstat_cell_rxbytes = v14;
    *&self->_last_counts.nstat_rxpackets = v13;
    v15 = *&counts->nstat_wifi_rxbytes;
    v16 = *&counts->nstat_wired_rxbytes;
    v17 = *&counts->nstat_connectsuccesses;
    *&self->_last_counts.nstat_rxduplicatebytes = *&counts->nstat_rxduplicatebytes;
    *&self->_last_counts.nstat_connectsuccesses = v17;
    *&self->_last_counts.nstat_wifi_rxbytes = v15;
    *&self->_last_counts.nstat_wired_rxbytes = v16;
  }

  return v12;
}

- (BOOL)_handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  manager = [(NWStatisticsSource *)self manager];
  internalQueue = [manager internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v11 = [(NWStatisticsSource *)self handleDescriptor:descriptor length:length events:events];
  if (v11 == 3)
  {
    [(NWStatisticsSource *)self setDescriptorSeqno:[(NWStatisticsSource *)self descriptorSeqno]+ 1];
  }

  return v11 != 1;
}

- (BOOL)handleMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  v41 = *MEMORY[0x277D85DE8];
  manager = [(NWStatisticsSource *)self manager];
  mgrflags = [manager mgrflags];

  if ((mgrflags & 0x10) != 0)
  {
    v9 = NStatGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      manager2 = [(NWStatisticsSource *)self manager];
      reference = [(NWStatisticsSource *)self reference];
      type = message->type;
      *buf = 134218752;
      v34 = manager2;
      v35 = 2048;
      selfCopy = self;
      v37 = 2048;
      v38 = reference;
      v39 = 1024;
      v40 = type;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu  message type %d", buf, 0x26u);
    }
  }

  manager3 = [(NWStatisticsSource *)self manager];
  mgrflags2 = [manager3 mgrflags];

  if (mgrflags2 < 0)
  {
    manager4 = [(NWStatisticsSource *)self manager];
    manager5 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    v32 = message->type;
    NStatMgrTraceF(manager4, "%s Manager %p: Entry for source %p, ref %llu  message type %d", v17, v18, v19, v20, v21, v22, "[NWStatisticsSource handleMessage:length:]");
  }

  v23 = message->type;
  if (v23 == 10006)
  {
    if (length >= 0x99)
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      v29 = [(NWStatisticsSource *)selfCopy2 _handleDescriptor:&message[9].type length:length - 152 events:*&message[1].type];
      v27 = [(NWStatisticsSource *)selfCopy2 handleCounts:&message[2]]|| v29;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v23 == 10004)
  {
    if (length >= 0x90)
    {
      selfCopy3 = self;
      objc_sync_enter(selfCopy3);
      v25 = [(NWStatisticsSource *)selfCopy3 handleCounts:&message[2]];
      goto LABEL_14;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  if (v23 != 10003 || length < 0x29)
  {
    goto LABEL_18;
  }

  selfCopy4 = self;
  objc_sync_enter(selfCopy4);
  v25 = [(NWStatisticsSource *)selfCopy4 _handleDescriptor:&message[2].type length:length - 40 events:0];
LABEL_14:
  v27 = v25;
LABEL_17:
  objc_sync_exit(self);

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

- (NWStatisticsSource)initWithManager:(id)manager source:(unint64_t)source provider:(unsigned int)provider
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = NWStatisticsSource;
  v10 = [(NWStatisticsSource *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_manager, manager);
    v11->_reference = source;
    v11->_provider = provider;
    v12 = v11;
  }

  return v11;
}

- (void)queryCounts
{
  v27 = *MEMORY[0x277D85DE8];
  manager = [(NWStatisticsSource *)self manager];
  mgrflags = [manager mgrflags];

  if ((mgrflags & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      manager2 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = manager2;
      v23 = 2048;
      selfCopy = self;
      v25 = 2048;
      reference = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  manager3 = [(NWStatisticsSource *)self manager];
  mgrflags2 = [manager3 mgrflags];

  if (mgrflags2 < 0)
  {
    manager4 = [(NWStatisticsSource *)self manager];
    manager5 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(manager4, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryCounts]");
  }

  manager6 = [(NWStatisticsSource *)self manager];
  internalQueue = [manager6 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsSource_queryCounts__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(internalQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __33__NWStatisticsSource_queryCounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 sendRequestMessage:1004 sourceRef:{objc_msgSend(*(a1 + 32), "reference")}];
}

- (void)queryDescription
{
  v27 = *MEMORY[0x277D85DE8];
  manager = [(NWStatisticsSource *)self manager];
  mgrflags = [manager mgrflags];

  if ((mgrflags & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      manager2 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = manager2;
      v23 = 2048;
      selfCopy = self;
      v25 = 2048;
      reference = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  manager3 = [(NWStatisticsSource *)self manager];
  mgrflags2 = [manager3 mgrflags];

  if (mgrflags2 < 0)
  {
    manager4 = [(NWStatisticsSource *)self manager];
    manager5 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(manager4, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryDescription]");
  }

  manager6 = [(NWStatisticsSource *)self manager];
  internalQueue = [manager6 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NWStatisticsSource_queryDescription__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(internalQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __38__NWStatisticsSource_queryDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 sendRequestMessage:1005 sourceRef:{objc_msgSend(*(a1 + 32), "reference")}];
}

- (void)queryUpdate
{
  v27 = *MEMORY[0x277D85DE8];
  manager = [(NWStatisticsSource *)self manager];
  mgrflags = [manager mgrflags];

  if ((mgrflags & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      manager2 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = manager2;
      v23 = 2048;
      selfCopy = self;
      v25 = 2048;
      reference = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  manager3 = [(NWStatisticsSource *)self manager];
  mgrflags2 = [manager3 mgrflags];

  if (mgrflags2 < 0)
  {
    manager4 = [(NWStatisticsSource *)self manager];
    manager5 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(manager4, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryUpdate]");
  }

  manager6 = [(NWStatisticsSource *)self manager];
  internalQueue = [manager6 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsSource_queryUpdate__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(internalQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __33__NWStatisticsSource_queryUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 sendRequestMessage:1007 sourceRef:{objc_msgSend(*(a1 + 32), "reference")}];
}

- (id)_currentSnapshot
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = NStatGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    manager = [(NWStatisticsSource *)self manager];
    *buf = 134217984;
    v17 = manager;
    _os_log_impl(&dword_25BA3A000, v3, OS_LOG_TYPE_ERROR, "Manager %p: Subclasses must provide an implementation for _currentSnapshot", buf, 0xCu);
  }

  manager2 = [(NWStatisticsSource *)self manager];
  mgrflags = [manager2 mgrflags];

  if (mgrflags < 0)
  {
    manager3 = [(NWStatisticsSource *)self manager];
    manager4 = [(NWStatisticsSource *)self manager];
    NStatMgrTraceF(manager3, "%s Manager %p: Subclasses must provide an implementation for _currentSnapshot", v8, v9, v10, v11, v12, v13, "[NWStatisticsSource _currentSnapshot]");
  }

  __assert_rtn("[NWStatisticsSource _currentSnapshot]", "NWStatisticsSource.m", 241, "0");
}

@end