@interface CSLPRFPairing
+ (CSLPRFPairing)shared;
- (BOOL)isTinker;
- (CSLPRFPairing)init;
- (void)_didPair;
@end

@implementation CSLPRFPairing

- (BOOL)isTinker
{
  v2 = self;
  objc_sync_enter(v2);
  isTinker = v2->_isTinker;
  objc_sync_exit(v2);

  return isTinker;
}

- (void)_didPair
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D37B50] sharedInstance];
  [v3 removeDelegate:self];

  v4 = self;
  objc_sync_enter(v4);
  v4->_isTinker = _CSLPairingIsTinker();
  v5 = cslprf_systemstate_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    isTinker = v4->_isTinker;
    v8[0] = 67109120;
    v8[1] = isTinker;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_INFO, "Pairing didPair isTinker? %d", v8, 8u);
  }

  objc_sync_exit(v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (CSLPRFPairing)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CSLPRFPairing;
  v2 = [(CSLPRFPairing *)&v8 init];
  if (v2)
  {
    v2->_isTinker = _CSLPairingIsTinker();
    v3 = cslprf_systemstate_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      isTinker = v2->_isTinker;
      *buf = 67109120;
      v10 = isTinker;
      _os_log_impl(&dword_22CE92000, v3, OS_LOG_TYPE_INFO, "Pairing init isTinker? %d", buf, 8u);
    }

    if (!v2->_isTinker)
    {
      v5 = [MEMORY[0x277D37B50] sharedInstance];
      [v5 addDelegate:v2];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (CSLPRFPairing)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CSLPRFPairing_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_Shared;

  return v2;
}

uint64_t __23__CSLPRFPairing_shared__block_invoke(uint64_t a1)
{
  shared_Shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end