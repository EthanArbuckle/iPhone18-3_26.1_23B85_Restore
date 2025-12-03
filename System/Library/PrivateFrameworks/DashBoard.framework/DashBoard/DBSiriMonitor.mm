@interface DBSiriMonitor
- (DBSiriMonitor)init;
- (void)_updateSiriEnabled;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setSiriEnabled:(BOOL)enabled;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleAssistantLanguageChanged_ name:*MEMORY[0x277CEF018] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_handleAssistantPreferencesChanged_ name:*MEMORY[0x277CEF060] object:0];

    [(DBSiriMonitor *)v2 _updateSiriEnabled];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSiriMonitor;
  [(DBSiriMonitor *)&v4 dealloc];
}

- (void)setSiriEnabled:(BOOL)enabled
{
  if (self->_siriEnabled != enabled)
  {
    self->_siriEnabled = enabled;
    observers = [(DBSiriMonitor *)self observers];
    [observers siriMonitorDidChangeEnabled:self];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBSiriMonitor *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBSiriMonitor *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)_updateSiriEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    currentLanguageCode = [MEMORY[0x277CEF218] currentLanguageCode];
    if (currentLanguageCode)
    {
      assistantIsEnabled = [MEMORY[0x277CEF218] assistantIsSupportedForLanguageCode:currentLanguageCode error:0];
    }

    else
    {
      assistantIsEnabled = 1;
    }
  }

  [(DBSiriMonitor *)self setSiriEnabled:assistantIsEnabled];
}

@end