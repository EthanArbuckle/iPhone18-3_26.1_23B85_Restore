@interface HUISoundMeterListener
- (BOOL)shouldShow;
- (HUISoundMeterListener)initWithDelgate:(id)delgate source:(unint64_t)source;
- (HUISoundMeterListenerDelegate)delegate;
- (void)_startLocalLevels;
- (void)_startRemoteLevels;
- (void)_stopLocalLevels;
- (void)_stopRemoteLevels;
- (void)_updateSoundMeterAvailableLocally:(BOOL)locally remotely:(BOOL)remotely;
- (void)start;
- (void)stop;
@end

@implementation HUISoundMeterListener

- (HUISoundMeterListener)initWithDelgate:(id)delgate source:(unint64_t)source
{
  delgateCopy = delgate;
  v10.receiver = self;
  v10.super_class = HUISoundMeterListener;
  v7 = [(HUISoundMeterListener *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HUISoundMeterListener *)v7 setSource:source];
    [(HUISoundMeterListener *)v8 setDelegate:delgateCopy];
  }

  return v8;
}

- (void)start
{
  [(HUISoundMeterListener *)self _startLocalLevels];

  [(HUISoundMeterListener *)self _startRemoteLevels];
}

- (void)stop
{
  [(HUISoundMeterListener *)self _stopLocalLevels];
  [(HUISoundMeterListener *)self _stopRemoteLevels];

  [(HUISoundMeterListener *)self _updateSoundMeterAvailableLocally:0 remotely:0];
}

- (BOOL)shouldShow
{
  if ([(HUISoundMeterListener *)self areLocalLevelsAvailable])
  {
    return 1;
  }

  return [(HUISoundMeterListener *)self areRemoteLevelsAvailable];
}

- (void)_updateSoundMeterAvailableLocally:(BOOL)locally remotely:(BOOL)remotely
{
  remotelyCopy = remotely;
  locallyCopy = locally;
  v31 = *MEMORY[0x277D85DE8];
  shouldShow = [(HUISoundMeterListener *)self shouldShow];
  areLocalLevelsAvailable = [(HUISoundMeterListener *)self areLocalLevelsAvailable];
  areRemoteLevelsAvailable = [(HUISoundMeterListener *)self areRemoteLevelsAvailable];
  v10 = locallyCopy | remotelyCopy;
  [(HUISoundMeterListener *)self setAreLocalLevelsAvailable:locallyCopy];
  [(HUISoundMeterListener *)self setAreRemoteLevelsAvailable:remotelyCopy];
  areLocalLevelsAvailable2 = [(HUISoundMeterListener *)self areLocalLevelsAvailable];
  v12 = areRemoteLevelsAvailable ^ [(HUISoundMeterListener *)self areRemoteLevelsAvailable];
  if (areLocalLevelsAvailable != areLocalLevelsAvailable2)
  {
    delegate = [(HUISoundMeterListener *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(HUISoundMeterListener *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate3 = [(HUISoundMeterListener *)self delegate];
        [delegate3 localSourceAvailableDidUpdate:locallyCopy];
      }
    }
  }

  v18 = v10 ^ shouldShow;
  if (v12)
  {
    delegate4 = [(HUISoundMeterListener *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate5 = [(HUISoundMeterListener *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegate6 = [(HUISoundMeterListener *)self delegate];
        [delegate6 remoteSourceAvailableDidUpdate:remotelyCopy];
      }
    }
  }

  if (v18)
  {
    v24 = HCLogSoundMeter();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = "Hiding";
      if (v10)
      {
        v25 = "Showing";
      }

      v29 = 136315138;
      v30 = v25;
      _os_log_impl(&dword_252166000, v24, OS_LOG_TYPE_INFO, "%s sound meter", &v29, 0xCu);
    }

    delegate7 = [(HUISoundMeterListener *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      delegate8 = [(HUISoundMeterListener *)self delegate];
      [delegate8 liveLevelMeteringDisplayStateChanged:v10];
    }
  }
}

- (void)_startLocalLevels
{
  if ([(HUISoundMeterListener *)self source]!= 2 && ![(HUISoundMeterListener *)self isListeningForLocalLevels])
  {
    v3 = HCLogSoundMeter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_INFO, "Start listening for local headphone levels", buf, 2u);
    }

    [(HUISoundMeterListener *)self setIsListeningForLocalLevels:1];
    objc_initWeak(buf, self);
    mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__HUISoundMeterListener__startLocalLevels__block_invoke;
    v5[3] = &unk_2796F74D0;
    objc_copyWeak(&v6, buf);
    [mEMORY[0x277D12DE8] registerListener:self forLiveHeadphoneLevelHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __42__HUISoundMeterListener__startLocalLevels__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 objectForKey:*MEMORY[0x277D12DB8]];
    v6 = [v5 BOOLValue];

    v7 = [v3 objectForKey:*MEMORY[0x277D12DD0]];
    [v7 unsignedIntegerValue];

    v8 = [v3 objectForKey:*MEMORY[0x277D12DC8]];
    [v8 floatValue];

    v9 = [v3 objectForKey:*MEMORY[0x277D12DC0]];
    [v9 floatValue];

    AXPerformBlockOnMainThread();
    v10 = [WeakRetained isListeningForRemoteLevels];
    if (v6)
    {
      if (v10)
      {
        v11 = HCLogSoundMeter();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_252166000, v11, OS_LOG_TYPE_INFO, "local headphone levels enabled", buf, 2u);
        }

        [WeakRetained _stopRemoteLevels];
      }
    }

    else if ((v10 & 1) == 0)
    {
      v12 = HCLogSoundMeter();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_252166000, v12, OS_LOG_TYPE_INFO, "local headphone levels not enabled", buf, 2u);
      }

      [WeakRetained _startRemoteLevels];
    }

    if (v6 != [WeakRetained areLocalLevelsAvailable])
    {
      v13 = HCLogSoundMeter();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = "unavailable";
        if (v6)
        {
          v14 = "available";
        }

        *buf = 136315138;
        v16 = v14;
        _os_log_impl(&dword_252166000, v13, OS_LOG_TYPE_INFO, "Local headphone levels %s", buf, 0xCu);
      }

      AXPerformBlockOnMainThread();
    }
  }
}

void __42__HUISoundMeterListener__startLocalLevels__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 updateViewsWith:*(a1 + 40) fastLeq:*(a1 + 48) thresholdLevel:*(a1 + 52)];
  }
}

uint64_t __42__HUISoundMeterListener__startLocalLevels__block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 areRemoteLevelsAvailable];

  return [v1 _updateSoundMeterAvailableLocally:v2 remotely:v3];
}

- (void)_stopLocalLevels
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_INFO, "Stop listening for local headphone levels", v5, 2u);
  }

  [(HUISoundMeterListener *)self setIsListeningForLocalLevels:0];
  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  [mEMORY[0x277D12DE8] unregisterLiveHeadphoneLevelHandler:self];
}

- (void)_startRemoteLevels
{
  if ([(HUISoundMeterListener *)self source]!= 1 && ![(HUISoundMeterListener *)self isListeningForRemoteLevels])
  {
    v3 = HCLogSoundMeter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_INFO, "Start listening for remote headphone levels", buf, 2u);
    }

    [(HUISoundMeterListener *)self setIsListeningForRemoteLevels:1];
    objc_initWeak(buf, self);
    mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__HUISoundMeterListener__startRemoteLevels__block_invoke;
    v5[3] = &unk_2796F74D0;
    objc_copyWeak(&v6, buf);
    [mEMORY[0x277D12DE8] registerListener:self forRemoteLiveHeadphoneLevelHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __43__HUISoundMeterListener__startRemoteLevels__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 objectForKey:*MEMORY[0x277D12DB8]];
    v6 = [v5 BOOLValue];

    v7 = [v3 objectForKey:*MEMORY[0x277D12DD0]];
    [v7 unsignedIntegerValue];

    v8 = [v3 objectForKey:*MEMORY[0x277D12DC8]];
    [v8 floatValue];

    v9 = [v3 objectForKey:*MEMORY[0x277D12DC0]];
    [v9 floatValue];

    AXPerformBlockOnMainThread();
    if (v6 != [WeakRetained areRemoteLevelsAvailable])
    {
      v10 = HCLogSoundMeter();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = "unavailable";
        if (v6)
        {
          v11 = "available";
        }

        *buf = 136315138;
        v13 = v11;
        _os_log_impl(&dword_252166000, v10, OS_LOG_TYPE_INFO, "Remote headphone levels %s", buf, 0xCu);
      }

      AXPerformBlockOnMainThread();
    }
  }
}

void __43__HUISoundMeterListener__startRemoteLevels__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 updateViewsWith:*(a1 + 40) fastLeq:*(a1 + 48) thresholdLevel:*(a1 + 52)];
  }
}

uint64_t __43__HUISoundMeterListener__startRemoteLevels__block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 areLocalLevelsAvailable];
  v4 = *(a1 + 40);

  return [v2 _updateSoundMeterAvailableLocally:v3 remotely:v4];
}

- (void)_stopRemoteLevels
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_INFO, "Stop listening for remote headphone levels", v5, 2u);
  }

  [(HUISoundMeterListener *)self setIsListeningForRemoteLevels:0];
  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  [mEMORY[0x277D12DE8] unregisterRemoteLiveHeadphoneLevelHandler:self];
}

- (HUISoundMeterListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end