@interface IMFocusStateManager
+ (BOOL)focusConfiguration:(id)configuration matchesConversationWithHandleStrings:(id)strings;
+ (BOOL)focusConfiguration:(id)configuration matchesConversationWithHandles:(id)handles;
+ (IMFocusStateManager)sharedManager;
- (BOOL)activeFocusModeMatchesConversationWithHandleStrings:(id)strings;
- (BOOL)activeFocusModeMatchesConversationWithHandles:(id)handles;
- (BOOL)hasActiveFocusMode;
- (BOOL)shouldDisplayFocusFilterBanner;
- (BOOL)shouldFilterConversationsByFocus;
- (BOOL)shouldFilterUnreadMessageCount;
- (DNDStateService)dndStateService;
- (IMFocusStateManager)init;
- (id)activeFocusName;
- (id)activeFocusSymbolName;
- (void)_fetchInitialDNDStateSynchronously:(BOOL)synchronously;
- (void)_notifyDelegatesOfDNDStateChange;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDelegate:(id)delegate;
- (void)setDndState:(id)state;
- (void)setFocusFilterActionIsEnabled:(BOOL)enabled;
- (void)setUserSwitchForFocusFilteringIsEnabled:(BOOL)enabled;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
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
  shouldDisplayFocusFilterBanner = [(IMFocusStateManager *)self shouldDisplayFocusFilterBanner];
  if (shouldDisplayFocusFilterBanner)
  {
    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    userSwitchForFocusFilteringIsEnabled = [messagesAppDomain userSwitchForFocusFilteringIsEnabled];

    LOBYTE(shouldDisplayFocusFilterBanner) = userSwitchForFocusFilteringIsEnabled;
  }

  return shouldDisplayFocusFilterBanner;
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = weakObjectsHashTable;

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
  shouldDisplayFocusFilterBanner = [(IMFocusStateManager *)self shouldDisplayFocusFilterBanner];
  if (shouldDisplayFocusFilterBanner)
  {

    LOBYTE(shouldDisplayFocusFilterBanner) = [(IMFocusStateManager *)self userSwitchForFocusFilteringIsEnabled];
  }

  return shouldDisplayFocusFilterBanner;
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
      selfCopy = self;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMFocusStateManager dealloc: %p", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = IMFocusStateManager;
  [(IMFocusStateManager *)&v4 dealloc];
}

- (void)setUserSwitchForFocusFilteringIsEnabled:(BOOL)enabled
{
  if (self->_userSwitchForFocusFilteringIsEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_userSwitchForFocusFilteringIsEnabled = enabled;
    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    [messagesAppDomain setUserSwitchForFocusFilteringIsEnabled:enabledCopy];

    [(IMFocusStateManager *)self _notifyDelegatesOfDNDStateChange];
  }
}

- (void)setFocusFilterActionIsEnabled:(BOOL)enabled
{
  if (self->_focusFilterActionIsEnabled != enabled)
  {
    self->_focusFilterActionIsEnabled = enabled;
    [(IMFocusStateManager *)self _notifyDelegatesOfDNDStateChange];
  }
}

- (void)setDndState:(id)state
{
  stateCopy = state;
  objc_storeStrong(&self->_dndState, state);
  activeModeConfiguration = [stateCopy activeModeConfiguration];
  if (activeModeConfiguration)
  {
    v6 = [IMFocusStateSnapshot alloc];
    activeModeConfiguration2 = [stateCopy activeModeConfiguration];
    configuration = [activeModeConfiguration2 configuration];
    v9 = [(IMFocusStateSnapshot *)v6 initWithConfiguration:configuration];
    focusSnapshot = self->_focusSnapshot;
    self->_focusSnapshot = v9;
  }

  else
  {
    activeModeConfiguration2 = self->_focusSnapshot;
    self->_focusSnapshot = 0;
  }
}

- (id)activeFocusName
{
  dndState = [(IMFocusStateManager *)self dndState];
  activeModeConfiguration = [dndState activeModeConfiguration];
  mode = [activeModeConfiguration mode];
  name = [mode name];

  return name;
}

- (id)activeFocusSymbolName
{
  dndState = [(IMFocusStateManager *)self dndState];
  activeModeConfiguration = [dndState activeModeConfiguration];
  mode = [activeModeConfiguration mode];
  symbolImageName = [mode symbolImageName];

  if (symbolImageName)
  {
    v6 = symbolImageName;
  }

  else
  {
    v6 = @"moon.fill";
  }

  v7 = v6;

  return v6;
}

- (BOOL)activeFocusModeMatchesConversationWithHandleStrings:(id)strings
{
  stringsCopy = strings;
  focusSnapshot = [(IMFocusStateManager *)self focusSnapshot];
  v6 = [focusSnapshot matchesConversationWithHandleStrings:stringsCopy];

  return v6;
}

- (BOOL)activeFocusModeMatchesConversationWithHandles:(id)handles
{
  handlesCopy = handles;
  focusSnapshot = [(IMFocusStateManager *)self focusSnapshot];
  v6 = [focusSnapshot matchesConversationWithHandles:handlesCopy];

  return v6;
}

+ (BOOL)focusConfiguration:(id)configuration matchesConversationWithHandleStrings:(id)strings
{
  stringsCopy = strings;
  configurationCopy = configuration;
  v7 = [[IMFocusStateSnapshot alloc] initWithConfiguration:configurationCopy];

  LOBYTE(configurationCopy) = [(IMFocusStateSnapshot *)v7 matchesConversationWithHandleStrings:stringsCopy];
  return configurationCopy;
}

+ (BOOL)focusConfiguration:(id)configuration matchesConversationWithHandles:(id)handles
{
  handlesCopy = handles;
  configurationCopy = configuration;
  v7 = [[IMFocusStateSnapshot alloc] initWithConfiguration:configurationCopy];

  LOBYTE(configurationCopy) = [(IMFocusStateSnapshot *)v7 matchesConversationWithHandles:handlesCopy];
  return configurationCopy;
}

- (void)addDelegate:(id)delegate
{
  v17 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = delegateCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding IMFocusStateManagerDelegate: %@", buf, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates addObject:delegateCopy];
  if (![(IMFocusStateManager *)self registeredAsStateUpdateListener])
  {
    objc_initWeak(buf, self);
    dndStateService = [(IMFocusStateManager *)self dndStateService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A866E890;
    v13[3] = &unk_1E7828338;
    objc_copyWeak(&v14, buf);
    [dndStateService addStateUpdateListener:self withCompletionHandler:v13];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Registering for NSUserDefaults KVO.", v12, 2u);
      }
    }

    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    [messagesAppDomain addObserver:self forKeyPath:@"conversationListFocusFilterActionEnabled" options:5 context:0];

    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    [messagesAppDomain2 addObserver:self forKeyPath:@"userSwitchForFocusFilteringIsEnabled" options:5 context:0];

    messagesAppDomain3 = [MEMORY[0x1E695E000] messagesAppDomain];
    conversationListFocusFilterActionEnabled = [messagesAppDomain3 conversationListFocusFilterActionEnabled];

    [(IMFocusStateManager *)self _fetchInitialDNDStateSynchronously:conversationListFocusFilterActionEnabled];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchInitialDNDStateSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A866ECB0;
  aBlock[3] = &unk_1E7828360;
  objc_copyWeak(&v18, &location);
  v5 = _Block_copy(aBlock);
  if (synchronouslyCopy)
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

    dndStateService = [(IMFocusStateManager *)self dndStateService];
    v15 = 0;
    v8 = [dndStateService queryCurrentStateWithError:&v15];
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

    dndStateService2 = [(IMFocusStateManager *)self dndStateService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A866EE30;
    v13[3] = &unk_1E78283B0;
    v14 = v5;
    [dndStateService2 queryCurrentStateWithCompletionHandler:v13];

    v9 = v14;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"conversationListFocusFilterActionEnabled"])
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
    if (![pathCopy isEqualToString:@"userSwitchForFocusFilteringIsEnabled"])
    {
      v16.receiver = self;
      v16.super_class = IMFocusStateManager;
      [(IMFocusStateManager *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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

- (void)removeDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = delegateCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Removing IMFocusStateManagerDelegate: %@", &v6, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates removeObject:delegateCopy];
}

- (BOOL)hasActiveFocusMode
{
  dndState = [(IMFocusStateManager *)self dndState];
  activeModeConfiguration = [dndState activeModeConfiguration];
  v4 = activeModeConfiguration != 0;

  return v4;
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v14 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = updateCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Received dnd state update: %@", buf, 0xCu);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A866F5F8;
  v10[3] = &unk_1E78260F0;
  v10[4] = self;
  v11 = updateCopy;
  v9 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

@end