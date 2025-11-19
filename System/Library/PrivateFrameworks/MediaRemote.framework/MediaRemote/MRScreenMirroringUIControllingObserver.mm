@interface MRScreenMirroringUIControllingObserver
- (MRScreenMirroringUIControllingObserver)init;
- (void)_mirrorStateChanged:(BOOL)a3 screenType:(unsigned int)a4;
- (void)dealloc;
@end

@implementation MRScreenMirroringUIControllingObserver

- (MRScreenMirroringUIControllingObserver)init
{
  location[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MRScreenMirroringUIControllingObserver;
  v2 = [(MRScreenMirroringUIControllingObserver *)&v10 init];
  if (v2)
  {
    objc_initWeak(location, v2);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__MRScreenMirroringUIControllingObserver_init__block_invoke;
    v8[3] = &unk_1E769AE58;
    objc_copyWeak(&v9, location);
    v3 = [MRScreenMirroringObserver observerWithStateChangeCallback:v8];
    internalObserver = v2->_internalObserver;
    v2->_internalObserver = v3;

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  v5 = _MRLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 134217984;
    *(location + 4) = v2;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringUIControllingObserver] <%p> Initialized.", location, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

void __46__MRScreenMirroringUIControllingObserver_init__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalObserver];
    v6 = [v5 queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__MRScreenMirroringUIControllingObserver_init__block_invoke_2;
    v7[3] = &unk_1E769AE30;
    v8 = v4;
    v9 = a2;
    MRMediaRemoteGetExternalScreenType(v6, v7);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringUIControllingObserver] <%p> Deallocating.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MRScreenMirroringUIControllingObserver;
  [(MRScreenMirroringObserver *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_mirrorStateChanged:(BOOL)a3 screenType:(unsigned int)a4
{
  v5 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v7 = _MRLogForCategory(0xBuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109376;
    v13[1] = v5;
    v14 = 1024;
    v15 = a4;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringUIControllingObserver] Mirroring enabled: %{BOOL}u for screen type: %u", v13, 0xEu);
  }

  v8 = [(MRScreenMirroringUIControllingObserver *)self uiController];

  if (a4 == 1 && v5)
  {
    if (!v8)
    {
      v9 = [MRUIControllerProvider screenMirroringControllerWithDelegate:0];
      [(MRScreenMirroringUIControllingObserver *)self setUiController:v9];

      v10 = [(MRScreenMirroringUIControllingObserver *)self uiController];
      [v10 acquireScreenMirroringQuickControlsAssertion];
    }
  }

  else if (v8)
  {
    v11 = [(MRScreenMirroringUIControllingObserver *)self uiController];
    [v11 releaseScreenMirroringQuickControlsAssertion];

    [(MRScreenMirroringUIControllingObserver *)self setUiController:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end