@interface CORoleDefaultsMonitor
- (CORoleDefaultsMonitor)initWithDelegate:(id)delegate;
- (CORoleDefaultsMonitorDelegate)delegate;
- (unint64_t)_getCurrentResult;
- (void)_notifyDelegate:(unint64_t)delegate;
- (void)_updateState;
- (void)activate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CORoleDefaultsMonitor

- (CORoleDefaultsMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = CORoleDefaultsMonitor;
  v5 = [(CORoleDefaultsMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_result = 0;
    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.soundboard"];
    SoundBoardDefaults = v6->_SoundBoardDefaults;
    v6->_SoundBoardDefaults = v7;
  }

  return v6;
}

- (void)dealloc
{
  soundBoardDefaults = [(CORoleDefaultsMonitor *)self SoundBoardDefaults];
  [soundBoardDefaults removeObserver:self forKeyPath:@"stereo_leader_info" context:0];

  soundBoardDefaults2 = [(CORoleDefaultsMonitor *)self SoundBoardDefaults];
  [soundBoardDefaults2 removeObserver:self forKeyPath:@"stereo_temporary_leader" context:0];

  v5.receiver = self;
  v5.super_class = CORoleDefaultsMonitor;
  [(CORoleDefaultsMonitor *)&v5 dealloc];
}

- (void)activate
{
  [(NSUserDefaults *)self->_SoundBoardDefaults addObserver:self forKeyPath:@"stereo_leader_info" options:4 context:0];
  SoundBoardDefaults = self->_SoundBoardDefaults;

  [(NSUserDefaults *)SoundBoardDefaults addObserver:self forKeyPath:@"stereo_temporary_leader" options:4 context:0];
}

- (void)_updateState
{
  v12 = *MEMORY[0x277D85DE8];
  result = [(CORoleDefaultsMonitor *)self result];
  _getCurrentResult = [(CORoleDefaultsMonitor *)self _getCurrentResult];
  if (_getCurrentResult != result)
  {
    v5 = _getCurrentResult;
    v6 = COCoreLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = result;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "Monitored result changed from %lu to %lu", &v8, 0x16u);
    }

    [(CORoleDefaultsMonitor *)self setResult:v5];
    [(CORoleDefaultsMonitor *)self _notifyDelegate:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getCurrentResult
{
  soundBoardDefaults = [(CORoleDefaultsMonitor *)self SoundBoardDefaults];
  v3 = [soundBoardDefaults BOOLForKey:@"stereo_temporary_leader"];
  v4 = [soundBoardDefaults dictionaryForKey:@"stereo_leader_info"];
  v5 = v4;
  if (v3)
  {
    v6 = 2;
  }

  else if (v4)
  {
    v7 = [v4 valueForKey:@"stereo_leader"];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"stereo_leader_info"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"stereo_temporary_leader"))
  {
    [(CORoleDefaultsMonitor *)self _updateState];
  }
}

- (void)_notifyDelegate:(unint64_t)delegate
{
  delegate = [(CORoleDefaultsMonitor *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    [delegate monitor:self defaultChanged:delegate];
    delegate = v6;
  }
}

- (CORoleDefaultsMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end