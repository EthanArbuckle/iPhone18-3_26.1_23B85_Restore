@interface IMFocusStateManager
+ (BOOL)focusConfiguration:(id)a3 matchesConversationWithHandleStrings:(id)a4;
+ (BOOL)focusConfiguration:(id)a3 matchesConversationWithHandles:(id)a4;
+ (IMFocusStateManager)sharedManager;
- (BOOL)activeFocusModeMatchesConversationWithHandleStrings:(id)a3;
- (BOOL)activeFocusModeMatchesConversationWithHandles:(id)a3;
- (BOOL)hasActiveFocusMode;
- (BOOL)shouldDisplayFocusFilterBanner;
- (BOOL)shouldFilterConversationsByFocus;
- (BOOL)shouldFilterUnreadMessageCount;
- (DNDStateService)dndStateService;
- (IMFocusStateManager)init;
- (id)activeFocusName;
- (id)activeFocusSymbolName;
- (void)_fetchInitialDNDStateSynchronously:(BOOL)a3;
- (void)_notifyDelegatesOfDNDStateChange;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeDelegate:(id)a3;
- (void)setDndState:(id)a3;
- (void)setFocusFilterActionIsEnabled:(BOOL)a3;
- (void)setUserSwitchForFocusFilteringIsEnabled:(BOOL)a3;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
@end

@implementation IMFocusStateManager

+ (IMFocusStateManager)sharedManager
{
  if (qword_1ED8CA100 != -1)
  {
    sub_1A85FB9D8();
  }

  v3 = qword_1ED8CA0E0;

  return v3;
}

- (BOOL)shouldFilterUnreadMessageCount
{
  v2 = [(IMFocusStateManager *)self shouldDisplayFocusFilterBanner];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] messagesAppDomain];
    v4 = [v3 userSwitchForFocusFilteringIsEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)shouldDisplayFocusFilterBanner
{
  if (![(IMFocusStateManager *)self deviceSupportsFocusFiltering]|| ![(IMFocusStateManager *)self focusFilterActionIsEnabled])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_hasActiveFocusMode);
}

- (IMFocusStateManager)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = IMFocusStateManager;
  v2 = [(IMFocusStateManager *)&v7 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v9 = v2;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMFocusStateManager init: %p", buf, 0xCu);
      }
    }

    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v4;

    v2->_userSwitchForFocusFilteringIsEnabled = 1;
  }

  return v2;
}

- (DNDStateService)dndStateService
{
  dndStateService = self->_dndStateService;
  if (!dndStateService)
  {
    v4 = [MEMORY[0x1AC570AA0](@"DNDStateService" @"DoNotDisturb")];
    v5 = self->_dndStateService;
    self->_dndStateService = v4;

    dndStateService = self->_dndStateService;
  }

  return dndStateService;
}

- (BOOL)shouldFilterConversationsByFocus
{
  v3 = [(IMFocusStateManager *)self shouldDisplayFocusFilterBanner];
  if (v3)
  {

    LOBYTE(v3) = [(IMFocusStateManager *)self userSwitchForFocusFilteringIsEnabled];
  }

  return v3;
}

- (void)_notifyDelegatesOfDNDStateChange
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_delegates allObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v5 = *v12;
    *&v4 = 138412290;
    v10 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = v10;
            v16 = v7;
            _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Notifying %@ of dnd state change", buf, 0xCu);
          }
        }

        [v7 focusStateDidChange];
        ++v6;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v3);
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Finished notifying all delegates of dnd state change", buf, 2u);
    }
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMFocusStateManager dealloc: %p", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = IMFocusStateManager;
  [(IMFocusStateManager *)&v4 dealloc];
}

- (void)setUserSwitchForFocusFilteringIsEnabled:(BOOL)a3
{
  if (self->_userSwitchForFocusFilteringIsEnabled != a3)
  {
    v4 = a3;
    self->_userSwitchForFocusFilteringIsEnabled = a3;
    v6 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v6 setUserSwitchForFocusFilteringIsEnabled:v4];

    [(IMFocusStateManager *)self _notifyDelegatesOfDNDStateChange];
  }
}

- (void)setFocusFilterActionIsEnabled:(BOOL)a3
{
  if (self->_focusFilterActionIsEnabled != a3)
  {
    self->_focusFilterActionIsEnabled = a3;
    [(IMFocusStateManager *)self _notifyDelegatesOfDNDStateChange];
  }
}

- (void)setDndState:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_dndState, a3);
  v5 = [v11 activeModeConfiguration];
  if (v5)
  {
    v6 = [IMFocusStateSnapshot alloc];
    v7 = [v11 activeModeConfiguration];
    v8 = [v7 configuration];
    v9 = [(IMFocusStateSnapshot *)v6 initWithConfiguration:v8];
    focusSnapshot = self->_focusSnapshot;
    self->_focusSnapshot = v9;
  }

  else
  {
    v7 = self->_focusSnapshot;
    self->_focusSnapshot = 0;
  }
}

- (id)activeFocusName
{
  v2 = [(IMFocusStateManager *)self dndState];
  v3 = [v2 activeModeConfiguration];
  v4 = [v3 mode];
  v5 = [v4 name];

  return v5;
}

- (id)activeFocusSymbolName
{
  v2 = [(IMFocusStateManager *)self dndState];
  v3 = [v2 activeModeConfiguration];
  v4 = [v3 mode];
  v5 = [v4 symbolImageName];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"moon.fill";
  }

  v7 = v6;

  return v6;
}

- (BOOL)activeFocusModeMatchesConversationWithHandleStrings:(id)a3
{
  v4 = a3;
  v5 = [(IMFocusStateManager *)self focusSnapshot];
  v6 = [v5 matchesConversationWithHandleStrings:v4];

  return v6;
}

- (BOOL)activeFocusModeMatchesConversationWithHandles:(id)a3
{
  v4 = a3;
  v5 = [(IMFocusStateManager *)self focusSnapshot];
  v6 = [v5 matchesConversationWithHandles:v4];

  return v6;
}

+ (BOOL)focusConfiguration:(id)a3 matchesConversationWithHandleStrings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IMFocusStateSnapshot alloc] initWithConfiguration:v6];

  LOBYTE(v6) = [(IMFocusStateSnapshot *)v7 matchesConversationWithHandleStrings:v5];
  return v6;
}

+ (BOOL)focusConfiguration:(id)a3 matchesConversationWithHandles:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IMFocusStateSnapshot alloc] initWithConfiguration:v6];

  LOBYTE(v6) = [(IMFocusStateSnapshot *)v7 matchesConversationWithHandles:v5];
  return v6;
}

- (void)addDelegate:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding IMFocusStateManagerDelegate: %@", buf, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates addObject:v4];
  if (![(IMFocusStateManager *)self registeredAsStateUpdateListener])
  {
    objc_initWeak(buf, self);
    v6 = [(IMFocusStateManager *)self dndStateService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A866E890;
    v13[3] = &unk_1E7828338;
    objc_copyWeak(&v14, buf);
    [v6 addStateUpdateListener:self withCompletionHandler:v13];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Registering for NSUserDefaults KVO.", v12, 2u);
      }
    }

    v8 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v8 addObserver:self forKeyPath:@"conversationListFocusFilterActionEnabled" options:5 context:0];

    v9 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v9 addObserver:self forKeyPath:@"userSwitchForFocusFilteringIsEnabled" options:5 context:0];

    v10 = [MEMORY[0x1E695E000] messagesAppDomain];
    v11 = [v10 conversationListFocusFilterActionEnabled];

    [(IMFocusStateManager *)self _fetchInitialDNDStateSynchronously:v11];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchInitialDNDStateSynchronously:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A866ECB0;
  aBlock[3] = &unk_1E7828360;
  objc_copyWeak(&v18, &location);
  v5 = _Block_copy(aBlock);
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Fetching DND state synchronously", buf, 2u);
      }
    }

    v7 = [(IMFocusStateManager *)self dndStateService];
    v15 = 0;
    v8 = [v7 queryCurrentStateWithError:&v15];
    v9 = v15;

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "DND state synchronously received", buf, 2u);
      }
    }

    v5[2](v5, v8, v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Fetching DND state asynchronously", buf, 2u);
      }
    }

    v12 = [(IMFocusStateManager *)self dndStateService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A866EE30;
    v13[3] = &unk_1E78283B0;
    v14 = v5;
    [v12 queryCurrentStateWithCompletionHandler:v13];

    v9 = v14;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"conversationListFocusFilterActionEnabled"])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Received KVO notification for conversationListFocusFilterActionEnabled", buf, 2u);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A866F168;
    v18[3] = &unk_1E7828050;
    v18[4] = self;
    v14 = MEMORY[0x1E69E96A0];
    v15 = v18;
  }

  else
  {
    if (![v10 isEqualToString:@"userSwitchForFocusFilteringIsEnabled"])
    {
      v16.receiver = self;
      v16.super_class = IMFocusStateManager;
      [(IMFocusStateManager *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_11;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A866F26C;
    block[3] = &unk_1E7828050;
    block[4] = self;
    v14 = MEMORY[0x1E69E96A0];
    v15 = block;
  }

  dispatch_async(v14, v15);
LABEL_11:
}

- (void)removeDelegate:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Removing IMFocusStateManagerDelegate: %@", &v6, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates removeObject:v4];
}

- (BOOL)hasActiveFocusMode
{
  v2 = [(IMFocusStateManager *)self dndState];
  v3 = [v2 activeModeConfiguration];
  v4 = v3 != 0;

  return v4;
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Received dnd state update: %@", buf, 0xCu);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A866F5F8;
  v10[3] = &unk_1E78260F0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

@end