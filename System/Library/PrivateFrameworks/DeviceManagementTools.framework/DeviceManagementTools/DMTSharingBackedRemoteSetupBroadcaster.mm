@interface DMTSharingBackedRemoteSetupBroadcaster
- (DMTSharingBackedRemoteSetupBroadcaster)initWithPrimitives:(id)primitives;
- (void)beginObservingTerminal;
- (void)broadcastTerminal:(id)terminal didActivateWithError:(id)error;
- (void)broadcastTerminal:(id)terminal hasError:(id)error;
- (void)broadcastTerminal:(id)terminal hasPairedDeviceConnection:(id)connection;
- (void)broadcastTerminal:(id)terminal needsToDisplayPin:(id)pin;
- (void)broadcastTerminal:(id)terminal stoppedWithError:(id)error;
- (void)broadcastTerminalNeedsToDismissPin:(id)pin;
- (void)dealloc;
- (void)endObservingTerminal;
- (void)invalidateWithError:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startBroadcasting;
@end

@implementation DMTSharingBackedRemoteSetupBroadcaster

- (void)dealloc
{
  [(DMTSharingBackedRemoteSetupBroadcaster *)self endObservingTerminal];
  v3.receiver = self;
  v3.super_class = DMTSharingBackedRemoteSetupBroadcaster;
  [(DMTSharingBackedRemoteSetupBroadcaster *)&v3 dealloc];
}

- (DMTSharingBackedRemoteSetupBroadcaster)initWithPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v13.receiver = self;
  v13.super_class = DMTSharingBackedRemoteSetupBroadcaster;
  v6 = [(DMTSharingBackedRemoteSetupBroadcaster *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_broadcastPrimitives, primitives);
    v8 = objc_opt_new();
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v8;

    v10 = [objc_alloc(MEMORY[0x277CF9570]) initWithBroadcastPrimitives:primitivesCopy delegate:v7 delegationQueue:v7->_delegateQueue];
    terminal = v7->_terminal;
    v7->_terminal = v10;
  }

  return v7;
}

- (void)startBroadcasting
{
  if ([(DMTSharingBackedRemoteSetupBroadcaster *)self isBroadcasting])
  {
    v3 = _DMTLogGeneral_3();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(DMTSharingBackedRemoteSetupBroadcaster *)v3 startBroadcasting:v4];
    }
  }

  else
  {
    [(DMTSharingBackedRemoteSetupBroadcaster *)self beginObservingTerminal];
    terminal = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
    [terminal activate];
  }
}

- (void)broadcastTerminal:(id)terminal didActivateWithError:(id)error
{
  terminalCopy = terminal;
  errorCopy = error;
  v8 = _DMTLogGeneral_3();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DMTSharingBackedRemoteSetupBroadcaster broadcastTerminal:didActivateWithError:];
    }

    [(DMTSharingBackedRemoteSetupBroadcaster *)self performSelectorOnMainThread:sel_invalidateWithError_ withObject:errorCopy waitUntilDone:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [DMTSharingBackedRemoteSetupBroadcaster broadcastTerminal:didActivateWithError:];
    }
  }
}

- (void)broadcastTerminal:(id)terminal hasError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasError___block_invoke;
  v7[3] = &unk_278F5E650;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __69__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasError___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) showErrorHandler];

    if (v2)
    {
      v3 = [*(a1 + 32) showErrorHandler];
      v3[2](v3, *(a1 + 40));
    }
  }
}

- (void)broadcastTerminal:(id)terminal stoppedWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_stoppedWithError___block_invoke;
  v7[3] = &unk_278F5E650;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __77__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_stoppedWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 invalidateWithError:v4];
  }

  return result;
}

- (void)broadcastTerminal:(id)terminal hasPairedDeviceConnection:(id)connection
{
  connectionCopy = connection;
  v6 = _DMTLogGeneral_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DMTSharingBackedRemoteSetupBroadcaster broadcastTerminal:connectionCopy hasPairedDeviceConnection:v6];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasPairedDeviceConnection___block_invoke;
  v8[3] = &unk_278F5E650;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __86__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasPairedDeviceConnection___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isInvalidated])
  {
    v2 = _DMTLogGeneral_3();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __86__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasPairedDeviceConnection___block_invoke_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CF9580]) initWithConnection:*(a1 + 40)];
    v10 = [*(a1 + 32) pairedTransportHandler];

    if (v10)
    {
      v11 = [*(a1 + 32) pairedTransportHandler];
      (*(v11 + 16))(v11, v2);
    }

    else
    {
      v11 = _DMTLogGeneral_3();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __86__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_hasPairedDeviceConnection___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }
}

- (void)broadcastTerminal:(id)terminal needsToDisplayPin:(id)pin
{
  pinCopy = pin;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_needsToDisplayPin___block_invoke;
  v7[3] = &unk_278F5E650;
  v7[4] = self;
  v8 = pinCopy;
  v6 = pinCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __78__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminal_needsToDisplayPin___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    [*(a1 + 32) setDisplayedPin:v2];

    v3 = [*(a1 + 32) showPinHandler];

    if (v3)
    {
      v5 = [*(a1 + 32) showPinHandler];
      v4 = [*(a1 + 32) displayedPin];
      v5[2](v5, v4);
    }
  }
}

- (void)broadcastTerminalNeedsToDismissPin:(id)pin
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminalNeedsToDismissPin___block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __77__DMTSharingBackedRemoteSetupBroadcaster_broadcastTerminalNeedsToDismissPin___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    [*(a1 + 32) setDisplayedPin:0];
    v2 = [*(a1 + 32) showPinHandler];

    if (v2)
    {
      v3 = [*(a1 + 32) showPinHandler];
      v3[2](v3, 0);
    }
  }
}

- (void)invalidateWithError:(id)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DMTSharingBackedRemoteSetupBroadcaster *)self isInvalidated])
  {
    [(DMTSharingBackedRemoteSetupBroadcaster *)self setIsInvalidated:1];
    [(DMTSharingBackedRemoteSetupBroadcaster *)self setDisplayedPin:0];
    terminal = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
    [terminal invalidate];

    v6 = _DMTLogGeneral_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DMTSharingBackedRemoteSetupBroadcaster invalidateWithError:];
    }

    if (errorCopy)
    {
      showErrorHandler = [(DMTSharingBackedRemoteSetupBroadcaster *)self showErrorHandler];

      if (showErrorHandler)
      {
        showErrorHandler2 = [(DMTSharingBackedRemoteSetupBroadcaster *)self showErrorHandler];
        v12 = *MEMORY[0x277CCA7E8];
        v13[0] = errorCopy;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        v10 = DMTErrorWithCodeAndUserInfo(40, v9);
        (showErrorHandler2)[2](showErrorHandler2, v10);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)beginObservingTerminal
{
  terminal = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
  [terminal addObserver:self forKeyPath:@"broadcasting" options:4 context:@"TerminalObservationContext"];
}

- (void)endObservingTerminal
{
  terminal = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
  [terminal removeObserver:self forKeyPath:@"broadcasting" context:@"TerminalObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"TerminalObservationContext")
  {
    if ([path isEqualToString:{@"broadcasting", object, change}])
    {
      terminal = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
      isBroadcasting = [terminal isBroadcasting];
      isBroadcasting2 = [(DMTSharingBackedRemoteSetupBroadcaster *)self isBroadcasting];

      if (isBroadcasting != isBroadcasting2)
      {
        terminal2 = [(DMTSharingBackedRemoteSetupBroadcaster *)self terminal];
        -[DMTSharingBackedRemoteSetupBroadcaster setIsBroadcasting:](self, "setIsBroadcasting:", [terminal2 isBroadcasting]);
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DMTSharingBackedRemoteSetupBroadcaster;
    [(DMTSharingBackedRemoteSetupBroadcaster *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)broadcastTerminal:didActivateWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Activation of terminal failed, invalidating: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)broadcastTerminal:didActivateWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ didActivate", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)broadcastTerminal:(void *)a1 hasPairedDeviceConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteDevice];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "Paired connection vended for: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Broadcaster invalidated due to: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end