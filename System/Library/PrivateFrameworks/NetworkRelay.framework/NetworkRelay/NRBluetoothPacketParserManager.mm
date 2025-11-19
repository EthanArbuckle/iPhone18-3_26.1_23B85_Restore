@interface NRBluetoothPacketParserManager
- (NRBluetoothPacketParserManager)init;
@end

@implementation NRBluetoothPacketParserManager

- (NRBluetoothPacketParserManager)init
{
  v21 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NRBluetoothPacketParserManager;
  v2 = [(NRBluetoothPacketParserManager *)&v20 init];
  if (!v2)
  {
    v8 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v8;
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v12, v13, v14, v15, v16, "");

LABEL_7:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "[NRBluetoothPacketParserManager init]";
    v19 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v19);
  }

  v3 = v2;
  v2->_lock._os_unfair_lock_opaque = 0;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  parserDictionary = v3->_parserDictionary;
  v3->_parserDictionary = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __51__NRBluetoothPacketParserManager_copySharedManager__block_invoke()
{
  v0 = objc_alloc_init(NRBluetoothPacketParserManager);
  v1 = copySharedManager_manager;
  copySharedManager_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end