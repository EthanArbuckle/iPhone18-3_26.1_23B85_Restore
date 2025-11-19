@interface NRDevicePairingManagerMuxEntry
- (void)initWithPairingManager:(void *)a1;
@end

@implementation NRDevicePairingManagerMuxEntry

- (void)initWithPairingManager:(void *)a1
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = NRDevicePairingManagerMuxEntry;
    v5 = objc_msgSendSuper2(&v24, sel_init);
    if (v5)
    {
      a1 = v5;
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = a1[2];
      a1[2] = v6;

      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = a1[5];
      a1[5] = v8;

      goto LABEL_4;
    }

    v12 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    v15 = nrCopyLogObj_1710();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v16, v17, v18, v19, v20, "");

LABEL_9:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDevicePairingManagerMuxEntry initWithPairingManager:]";
    v23 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v23);
  }

LABEL_4:

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

@end