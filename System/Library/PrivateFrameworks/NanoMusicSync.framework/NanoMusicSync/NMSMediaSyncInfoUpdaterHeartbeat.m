@interface NMSMediaSyncInfoUpdaterHeartbeat
- (NMSMediaSyncInfoUpdaterHeartbeat)initWithBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation NMSMediaSyncInfoUpdaterHeartbeat

- (NMSMediaSyncInfoUpdaterHeartbeat)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NMSMediaSyncInfoUpdaterHeartbeat;
  v6 = [(NMSMediaSyncInfoUpdaterHeartbeat *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (void)dealloc
{
  currentSyncInfoRequestDateTimer = self->_currentSyncInfoRequestDateTimer;
  if (currentSyncInfoRequestDateTimer)
  {
    dispatch_source_cancel(currentSyncInfoRequestDateTimer);
    v4 = self->_currentSyncInfoRequestDateTimer;
    self->_currentSyncInfoRequestDateTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = NMSMediaSyncInfoUpdaterHeartbeat;
  [(NMSMediaSyncInfoUpdaterHeartbeat *)&v5 dealloc];
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[NMSMediaSyncInfoUpdaterHeartbeat start]";
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = self->_bundleIdentifier;
  if (!self->_currentSyncInfoRequestDateTimer)
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    currentSyncInfoRequestDateTimer = self->_currentSyncInfoRequestDateTimer;
    self->_currentSyncInfoRequestDateTimer = v5;

    dispatch_source_set_timer(self->_currentSyncInfoRequestDateTimer, 0, 0x37E11D600uLL, 0x3B9ACA00uLL);
    v7 = self->_currentSyncInfoRequestDateTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __41__NMSMediaSyncInfoUpdaterHeartbeat_start__block_invoke;
    handler[3] = &unk_27993DD20;
    v10 = v4;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_currentSyncInfoRequestDateTimer);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__NMSMediaSyncInfoUpdaterHeartbeat_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[NMSMediaSyncInfoUpdaterHeartbeat start]_block_invoke";
    v9 = 2112;
    v10 = v2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "%s updating last sync info request date: %@ for bundleID: %@", &v7, 0x20u);
  }

  v5 = +[NMSyncDefaults sharedDefaults];
  [v5 setLastSyncInfoRequestDate:v2 forBundleIdentifier:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NMSMediaSyncInfoUpdaterHeartbeat stop]";
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  currentSyncInfoRequestDateTimer = self->_currentSyncInfoRequestDateTimer;
  if (currentSyncInfoRequestDateTimer)
  {
    dispatch_source_cancel(currentSyncInfoRequestDateTimer);
    v5 = self->_currentSyncInfoRequestDateTimer;
    self->_currentSyncInfoRequestDateTimer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end