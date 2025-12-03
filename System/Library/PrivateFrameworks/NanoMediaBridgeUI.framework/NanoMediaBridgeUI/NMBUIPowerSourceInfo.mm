@interface NMBUIPowerSourceInfo
- (BOOL)_hasExternalPowerSourceConnected;
- (NMBUIPowerSourceInfoDelegate)delegate;
- (void)_handlePowerSourceNotification;
- (void)setDelegate:(id)delegate;
@end

@implementation NMBUIPowerSourceInfo

- (void)setDelegate:(id)delegate
{
  location[3] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    if (delegateCopy)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);

      if (!v6)
      {
        objc_initWeak(location, self);
        v7 = [NMBUINotificationObserver alloc];
        v8 = MEMORY[0x277D85CD0];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __36__NMBUIPowerSourceInfo_setDelegate___block_invoke;
        v19[3] = &unk_27993BEA0;
        objc_copyWeak(&v20, location);
        v9 = [(NMBUINotificationObserver *)v7 initWithNotificationName:@"com.apple.system.accpowersources.attach" queue:MEMORY[0x277D85CD0] block:v19];
        accessoryNotificationObserver = self->_accessoryNotificationObserver;
        self->_accessoryNotificationObserver = v9;

        v11 = [NMBUINotificationObserver alloc];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __36__NMBUIPowerSourceInfo_setDelegate___block_invoke_5;
        v17[3] = &unk_27993BEA0;
        objc_copyWeak(&v18, location);
        v12 = [(NMBUINotificationObserver *)v11 initWithNotificationName:@"com.apple.system.accpowersources.source" queue:MEMORY[0x277D85CD0] block:v17];
        powerSourceNotificationObserver = self->_powerSourceNotificationObserver;
        self->_powerSourceNotificationObserver = v12;

        objc_destroyWeak(&v18);
        objc_destroyWeak(&v20);
        objc_destroyWeak(location);
      }
    }

    else
    {
      v14 = self->_accessoryNotificationObserver;
      self->_accessoryNotificationObserver = 0;

      v15 = self->_powerSourceNotificationObserver;
      self->_powerSourceNotificationObserver = 0;
    }

    v16 = NMLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = delegateCopy;
      _os_log_impl(&dword_25B260000, v16, OS_LOG_TYPE_DEFAULT, "NMBUIPowerSourceInfo set new delegate %@", location, 0xCu);
    }

    objc_storeWeak(&self->_delegate, delegateCopy);
  }
}

void __36__NMBUIPowerSourceInfo_setDelegate___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B260000, v2, OS_LOG_TYPE_DEFAULT, "NMBUIPowerSourceInfo got new accessory notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePowerSourceNotification];
}

void __36__NMBUIPowerSourceInfo_setDelegate___block_invoke_5(uint64_t a1)
{
  v2 = NMLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B260000, v2, OS_LOG_TYPE_DEFAULT, "NMBUIPowerSourceInfo got power source change notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePowerSourceNotification];
}

- (BOOL)_hasExternalPowerSourceConnected
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = IOPSCopyPowerSourcesByType();
  if (v2)
  {
    cf = v2;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = IOPSCopyPowerSourcesList(v2);
    v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      bOOLValue = 0;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 objectForKeyedSubscript:{@"Accessory Category", cf}];
            v10 = [v9 isEqualToString:@"Watch"];

            if (v10)
            {
              v11 = [v8 objectForKeyedSubscript:@"Is Charging"];
              bOOLValue = [v11 BOOLValue];
            }
          }
        }

        v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    else
    {
      bOOLValue = 0;
    }

    CFRelease(cf);
    v12 = bOOLValue;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)_handlePowerSourceNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _hasExternalPowerSourceConnected = [(NMBUIPowerSourceInfo *)self _hasExternalPowerSourceConnected];
    lastNotifiedExternalPowerSourceConnected = self->_lastNotifiedExternalPowerSourceConnected;
    if (!lastNotifiedExternalPowerSourceConnected || _hasExternalPowerSourceConnected != [(NSNumber *)lastNotifiedExternalPowerSourceConnected BOOLValue])
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:_hasExternalPowerSourceConnected];
      v8 = self->_lastNotifiedExternalPowerSourceConnected;
      self->_lastNotifiedExternalPowerSourceConnected = v7;

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 powerSourceInfoHasExternalPowerSourceConnectedDidChange:self];
    }
  }
}

- (NMBUIPowerSourceInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end