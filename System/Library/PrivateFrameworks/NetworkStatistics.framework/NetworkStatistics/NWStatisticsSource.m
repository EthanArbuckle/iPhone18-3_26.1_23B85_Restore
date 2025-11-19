@interface NWStatisticsSource
- (BOOL)_handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5;
- (BOOL)handleCounts:(const nstat_counts *)a3;
- (BOOL)handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4;
- (NWStatisticsSource)initWithManager:(id)a3 source:(unint64_t)a4 provider:(unsigned int)a5;
- (id)_currentSnapshot;
- (id)currentSnapshot;
- (void)queryCounts;
- (void)queryDescription;
- (void)queryUpdate;
@end

@implementation NWStatisticsSource

- (id)currentSnapshot
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWStatisticsSource *)v2 _currentSnapshot];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)handleCounts:(const nstat_counts *)a3
{
  v5 = [(NWStatisticsSource *)self manager];
  v6 = [v5 internalQueue];
  dispatch_assert_queue_V2(v6);

  if ([(NWStatisticsSource *)self countsSeqno])
  {
    if (!memcmp(a3, &self->_last_counts, 0x70uLL))
    {
      v18 = [(NWStatisticsSource *)self manager];
      v19 = [v18 mgrflags];

      return (v19 & 2) == 0;
    }

    else
    {
      v7 = *&a3->nstat_rxpackets;
      v8 = *&a3->nstat_cell_rxbytes;
      *&self->_last_counts.nstat_txpackets = *&a3->nstat_txpackets;
      *&self->_last_counts.nstat_cell_rxbytes = v8;
      *&self->_last_counts.nstat_rxpackets = v7;
      v9 = *&a3->nstat_wifi_rxbytes;
      v10 = *&a3->nstat_wired_rxbytes;
      v11 = *&a3->nstat_connectsuccesses;
      *&self->_last_counts.nstat_rxduplicatebytes = *&a3->nstat_rxduplicatebytes;
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
    v13 = *&a3->nstat_rxpackets;
    v14 = *&a3->nstat_cell_rxbytes;
    *&self->_last_counts.nstat_txpackets = *&a3->nstat_txpackets;
    *&self->_last_counts.nstat_cell_rxbytes = v14;
    *&self->_last_counts.nstat_rxpackets = v13;
    v15 = *&a3->nstat_wifi_rxbytes;
    v16 = *&a3->nstat_wired_rxbytes;
    v17 = *&a3->nstat_connectsuccesses;
    *&self->_last_counts.nstat_rxduplicatebytes = *&a3->nstat_rxduplicatebytes;
    *&self->_last_counts.nstat_connectsuccesses = v17;
    *&self->_last_counts.nstat_wifi_rxbytes = v15;
    *&self->_last_counts.nstat_wired_rxbytes = v16;
  }

  return v12;
}

- (BOOL)_handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5
{
  v9 = [(NWStatisticsSource *)self manager];
  v10 = [v9 internalQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(NWStatisticsSource *)self handleDescriptor:a3 length:a4 events:a5];
  if (v11 == 3)
  {
    [(NWStatisticsSource *)self setDescriptorSeqno:[(NWStatisticsSource *)self descriptorSeqno]+ 1];
  }

  return v11 != 1;
}

- (BOOL)handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = [(NWStatisticsSource *)self manager];
  v8 = [v7 mgrflags];

  if ((v8 & 0x10) != 0)
  {
    v9 = NStatGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(NWStatisticsSource *)self manager];
      v11 = [(NWStatisticsSource *)self reference];
      type = a3->type;
      *buf = 134218752;
      v34 = v10;
      v35 = 2048;
      v36 = self;
      v37 = 2048;
      v38 = v11;
      v39 = 1024;
      v40 = type;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu  message type %d", buf, 0x26u);
    }
  }

  v13 = [(NWStatisticsSource *)self manager];
  v14 = [v13 mgrflags];

  if (v14 < 0)
  {
    v15 = [(NWStatisticsSource *)self manager];
    v16 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    v32 = a3->type;
    NStatMgrTraceF(v15, "%s Manager %p: Entry for source %p, ref %llu  message type %d", v17, v18, v19, v20, v21, v22, "[NWStatisticsSource handleMessage:length:]");
  }

  v23 = a3->type;
  if (v23 == 10006)
  {
    if (a4 >= 0x99)
    {
      v28 = self;
      objc_sync_enter(v28);
      v29 = [(NWStatisticsSource *)v28 _handleDescriptor:&a3[9].type length:a4 - 152 events:*&a3[1].type];
      v27 = [(NWStatisticsSource *)v28 handleCounts:&a3[2]]|| v29;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v23 == 10004)
  {
    if (a4 >= 0x90)
    {
      v26 = self;
      objc_sync_enter(v26);
      v25 = [(NWStatisticsSource *)v26 handleCounts:&a3[2]];
      goto LABEL_14;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  if (v23 != 10003 || a4 < 0x29)
  {
    goto LABEL_18;
  }

  v24 = self;
  objc_sync_enter(v24);
  v25 = [(NWStatisticsSource *)v24 _handleDescriptor:&a3[2].type length:a4 - 40 events:0];
LABEL_14:
  v27 = v25;
LABEL_17:
  objc_sync_exit(self);

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

- (NWStatisticsSource)initWithManager:(id)a3 source:(unint64_t)a4 provider:(unsigned int)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = NWStatisticsSource;
  v10 = [(NWStatisticsSource *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_manager, a3);
    v11->_reference = a4;
    v11->_provider = a5;
    v12 = v11;
  }

  return v11;
}

- (void)queryCounts
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NWStatisticsSource *)self manager];
  v4 = [v3 mgrflags];

  if ((v4 & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = v6;
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  v7 = [(NWStatisticsSource *)self manager];
  v8 = [v7 mgrflags];

  if (v8 < 0)
  {
    v9 = [(NWStatisticsSource *)self manager];
    v10 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(v9, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryCounts]");
  }

  v17 = [(NWStatisticsSource *)self manager];
  v18 = [v17 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsSource_queryCounts__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(v18, block);

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
  v3 = [(NWStatisticsSource *)self manager];
  v4 = [v3 mgrflags];

  if ((v4 & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = v6;
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  v7 = [(NWStatisticsSource *)self manager];
  v8 = [v7 mgrflags];

  if (v8 < 0)
  {
    v9 = [(NWStatisticsSource *)self manager];
    v10 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(v9, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryDescription]");
  }

  v17 = [(NWStatisticsSource *)self manager];
  v18 = [v17 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NWStatisticsSource_queryDescription__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(v18, block);

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
  v3 = [(NWStatisticsSource *)self manager];
  v4 = [v3 mgrflags];

  if ((v4 & 0x10) != 0)
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(NWStatisticsSource *)self manager];
      *buf = 134218496;
      v22 = v6;
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = [(NWStatisticsSource *)self reference];
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_DEBUG, "Manager %p: Entry for source %p, ref %llu", buf, 0x20u);
    }
  }

  v7 = [(NWStatisticsSource *)self manager];
  v8 = [v7 mgrflags];

  if (v8 < 0)
  {
    v9 = [(NWStatisticsSource *)self manager];
    v10 = [(NWStatisticsSource *)self manager];
    [(NWStatisticsSource *)self reference];
    NStatMgrTraceF(v9, "%s Manager %p: Entry for source %p, ref %llu", v11, v12, v13, v14, v15, v16, "[NWStatisticsSource queryUpdate]");
  }

  v17 = [(NWStatisticsSource *)self manager];
  v18 = [v17 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NWStatisticsSource_queryUpdate__block_invoke;
  block[3] = &unk_27996DB98;
  block[4] = self;
  dispatch_async(v18, block);

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
    v4 = [(NWStatisticsSource *)self manager];
    *buf = 134217984;
    v17 = v4;
    _os_log_impl(&dword_25BA3A000, v3, OS_LOG_TYPE_ERROR, "Manager %p: Subclasses must provide an implementation for _currentSnapshot", buf, 0xCu);
  }

  v5 = [(NWStatisticsSource *)self manager];
  v6 = [v5 mgrflags];

  if (v6 < 0)
  {
    v7 = [(NWStatisticsSource *)self manager];
    v15 = [(NWStatisticsSource *)self manager];
    NStatMgrTraceF(v7, "%s Manager %p: Subclasses must provide an implementation for _currentSnapshot", v8, v9, v10, v11, v12, v13, "[NWStatisticsSource _currentSnapshot]");
  }

  __assert_rtn("[NWStatisticsSource _currentSnapshot]", "NWStatisticsSource.m", 241, "0");
}

@end