@interface LBFBiomeManager
- (BOOL)writeData:(id)data;
- (id)init:(id)init;
- (id)readData:(id)data endDate:(id)date;
@end

@implementation LBFBiomeManager

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = LBFBiomeManager;
  v6 = [(LBFBiomeManager *)&v9 init];
  if (v6)
  {
    LBFLoggingUtilsInit();
    objc_storeStrong(&v6->_biomeStream, init);
    biomeSource = v6->_biomeSource;
    v6->_biomeSource = 0;
  }

  return v6;
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EE8EC0;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeSource != -1)
  {
    dispatch_once(&onceTokenBiomeSource, block);
  }

  v5 = self->_biomeSource;
  objc_sync_enter(v5);
  objc_msgSend_sendEvent_(self->_biomeSource, v6, dataCopy, v7, v8);
  objc_sync_exit(v5);

  return 1;
}

- (id)readData:(id)data endDate:(id)date
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  v8 = LBFLogContextBiomeManager;
  if (os_log_type_enabled(LBFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    objc_msgSend_timeIntervalSince1970(dataCopy, v10, v11, v12, v13);
    v15 = v14;
    objc_msgSend_timeIntervalSince1970(dateCopy, v16, v17, v18, v19);
    *buf = 134218240;
    v48 = v15;
    v49 = 2048;
    v50 = v20;
    _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "Reading Biome events from %f to %f.", buf, 0x16u);
  }

  v21 = objc_alloc(MEMORY[0x277CF1A50]);
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v21, v22, dataCopy, dateCopy, -1, -1, 0);
  v27 = objc_msgSend_publisherWithOptions_(self->_biomeStream, v24, started, v25, v26);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_255EE9174;
  v45[3] = &unk_279813BD0;
  v46 = v28;
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = sub_255EE9230;
  v43 = &unk_279813BF8;
  v44 = v46;
  v29 = v46;
  v32 = objc_msgSend_sinkWithCompletion_receiveInput_(v27, v30, v45, &v40, v31);
  v33 = objc_alloc(MEMORY[0x277CBEA60]);
  v37 = objc_msgSend_initWithArray_(v33, v34, v29, v35, v36, v40, v41, v42, v43);

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

@end