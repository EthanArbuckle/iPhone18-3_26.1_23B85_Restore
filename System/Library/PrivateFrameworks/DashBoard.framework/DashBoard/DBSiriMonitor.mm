@interface DBSiriMonitor
- (DBSiriMonitor)init;
- (void)_updateSiriEnabled;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setSiriEnabled:(BOOL)a3;
@end

@implementation DBSiriMonitor

- (DBSiriMonitor)init
{
  v8.receiver = self;
  v8.super_class = DBSiriMonitor;
  v2 = [(DBSiriMonitor *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B0B638];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_handleAssistantLanguageChanged_ name:*MEMORY[0x277CEF018] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_handleAssistantPreferencesChanged_ name:*MEMORY[0x277CEF060] object:0];

    [(DBSiriMonitor *)v2 _updateSiriEnabled];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSiriMonitor;
  [(DBSiriMonitor *)&v4 dealloc];
}

- (void)setSiriEnabled:(BOOL)a3
{
  if (self->_siriEnabled != a3)
  {
    self->_siriEnabled = a3;
    v5 = [(DBSiriMonitor *)self observers];
    [v5 siriMonitorDidChangeEnabled:self];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSiriMonitor *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSiriMonitor *)self observers];
  [v5 removeObserver:v4];
}

- (void)_updateSiriEnabled
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 assistantIsEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x277CEF218] currentLanguageCode];
    if (v5)
    {
      v4 = [MEMORY[0x277CEF218] assistantIsSupportedForLanguageCode:v5 error:0];
    }

    else
    {
      v4 = 1;
    }
  }

  [(DBSiriMonitor *)self setSiriEnabled:v4];
}

@end