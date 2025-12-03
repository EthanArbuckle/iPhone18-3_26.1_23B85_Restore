@interface CMPhotoProcessMonitor
+ (BOOL)isForegroundApp;
+ (BOOL)isManagedByRunningBoard;
+ (id)getShared;
- (BOOL)init;
- (CMPhotoProcessMonitor)init;
- (int)registerBackgroundNotificationHandlerForContext:(void *)context handler:(id)handler;
- (int)releaseAssertionForContext:(void *)context;
- (int)takeAssertionUntilTime:(unint64_t)time forContext:(void *)context;
- (int)unregisterBackgroundNotificationForContext:(void *)context;
- (void)_createRBSMonitorIfNeeded;
- (void)_handleBackgroundingNotification;
- (void)_takeOSTransactionForContext:(void *)context;
- (void)_takeRBSAssertionForContext:(void *)context until:(unint64_t)until maxLength:(unint64_t)length;
- (void)dealloc;
- (void)waitForPendingNotifications;
@end

@implementation CMPhotoProcessMonitor

+ (BOOL)isForegroundApp
{
  if (isForegroundApp_onceToken != -1)
  {
    +[CMPhotoProcessMonitor isForegroundApp];
  }

  return isForegroundApp_sIsForeground;
}

uint64_t __40__CMPhotoProcessMonitor_isForegroundApp__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  isForegroundApp_sIsForeground = result;
  return result;
}

CMPhotoProcessMonitor *__34__CMPhotoProcessMonitor_getShared__block_invoke()
{
  result = FigServer_IsServerProcess();
  if (!result)
  {
    result = objc_alloc_init(CMPhotoProcessMonitor);
    getShared_sSharedMonitor = result;
  }

  return result;
}

- (CMPhotoProcessMonitor)init
{
  v11.receiver = self;
  v11.super_class = CMPhotoProcessMonitor;
  v2 = [(CMPhotoProcessMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskCanSleep"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v7 = dispatch_queue_create("com.apple.coremedia.CMPhotoProcessMonitor.notifications", 0);
    v8 = v7;
    if (v4)
    {
      if (dictionary)
      {
        if (dictionary2)
        {
          if (v7)
          {
            [(CMPhotoProcessMonitor *)v3 setDomainAttribute:v4];
            [(CMPhotoProcessMonitor *)v3 setHeldAssertions:dictionary];
            [(CMPhotoProcessMonitor *)v3 setBackgroundNotificationBlocks:dictionary2];
            [(CMPhotoProcessMonitor *)v3 setProcessMonitorSyncQueue:v8];
LABEL_7:

            return v3;
          }

          v10 = 166;
        }

        else
        {
          v10 = 165;
        }
      }

      else
      {
        v10 = 164;
      }
    }

    else
    {
      v10 = 163;
    }

    if ([(CMPhotoProcessMonitor *)v10 init])
    {
      return v3;
    }

    v8 = v3;
    v3 = 0;
    goto LABEL_7;
  }

  return v3;
}

+ (id)getShared
{
  if (getShared_onceToken != -1)
  {
    +[CMPhotoProcessMonitor getShared];
  }

  return getShared_sSharedMonitor;
}

+ (BOOL)isManagedByRunningBoard
{
  if (isManagedByRunningBoard_onceToken != -1)
  {
    +[CMPhotoProcessMonitor isManagedByRunningBoard];
  }

  return isManagedByRunningBoard_sIsManagedByRunningBoard;
}

uint64_t __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) processMonitor];
  if (!result)
  {
    result = +[CMPhotoProcessMonitor isManagedByRunningBoard];
    if (result)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke_2;
      v3[3] = &unk_1E77A25F8;
      v3[4] = *(a1 + 32);
      return [*(a1 + 32) setProcessMonitor:{objc_msgSend(MEMORY[0x1E69C75F8], "monitorWithConfiguration:", v3)}];
    }
  }

  return result;
}

uint64_t __48__CMPhotoProcessMonitor_isManagedByRunningBoard__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  isManagedByRunningBoard_sIsManagedByRunningBoard = result;
  return result;
}

uint64_t __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_1F194A318];
  [a2 setStateDescriptor:v4];
  v7[0] = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:{objc_msgSend(MEMORY[0x1E69C75E0], "identifierForCurrentProcess")}];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke_3;
  v6[3] = &unk_1E77A25D0;
  v6[4] = *(a1 + 32);
  return [a2 setUpdateHandler:v6];
}

- (void)_createRBSMonitorIfNeeded
{
  processMonitorSyncQueue = [(CMPhotoProcessMonitor *)self processMonitorSyncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke;
  block[3] = &unk_1E77A2620;
  block[4] = self;
  dispatch_async(processMonitorSyncQueue, block);
}

- (void)_handleBackgroundingNotification
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  processMonitorSyncQueue = [(CMPhotoProcessMonitor *)self processMonitorSyncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CMPhotoProcessMonitor__handleBackgroundingNotification__block_invoke;
  block[3] = &unk_1E77A2620;
  block[4] = self;
  dispatch_async(processMonitorSyncQueue, block);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  backgroundNotificationBlocks = [(CMPhotoProcessMonitor *)self backgroundNotificationBlocks];
  v5 = [(NSMutableDictionary *)backgroundNotificationBlocks countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(backgroundNotificationBlocks);
        }

        dispatch_async([(CMPhotoProcessMonitor *)self processMonitorSyncQueue], [(NSMutableDictionary *)[(CMPhotoProcessMonitor *)self backgroundNotificationBlocks] objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v8++)]);
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)backgroundNotificationBlocks countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __57__CMPhotoProcessMonitor__handleBackgroundingNotification__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [objc_msgSend(*(a1 + 32) "processMonitor")];
  [*(a1 + 32) setProcessMonitor:0];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)dealloc
{
  if ([(CMPhotoProcessMonitor *)self processMonitorSyncQueue])
  {
    dispatch_barrier_sync([(CMPhotoProcessMonitor *)self processMonitorSyncQueue], &__block_literal_global_24);
  }

  [(CMPhotoProcessMonitor *)self setProcessMonitorSyncQueue:0];
  [(CMPhotoProcessMonitor *)self setBackgroundNotificationBlocks:0];
  [(RBSProcessMonitor *)[(CMPhotoProcessMonitor *)self processMonitor] invalidate];
  [(CMPhotoProcessMonitor *)self setProcessMonitor:0];
  [(RBSAssertion *)[(CMPhotoProcessMonitor *)self latestAssertion] invalidate];
  [(CMPhotoProcessMonitor *)self setLatestAssertion:0];
  [(CMPhotoProcessMonitor *)self setLatestTransaction:0];
  [(CMPhotoProcessMonitor *)self setDomainAttribute:0];
  [(CMPhotoProcessMonitor *)self setHeldAssertions:0];
  v3.receiver = self;
  v3.super_class = CMPhotoProcessMonitor;
  [(CMPhotoProcessMonitor *)&v3 dealloc];
}

- (void)waitForPendingNotifications
{
  processMonitorSyncQueue = [(CMPhotoProcessMonitor *)self processMonitorSyncQueue];

  dispatch_barrier_sync(processMonitorSyncQueue, &__block_literal_global_28);
}

uint64_t __50__CMPhotoProcessMonitor__createRBSMonitorIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_msgSend(objc_msgSend(a4 "previousState")];
  result = [objc_msgSend(objc_msgSend(a4 "state")];
  if (v6 && (result & 1) == 0)
  {
    v8 = *(a1 + 32);

    return [v8 _handleBackgroundingNotification];
  }

  return result;
}

- (void)_takeOSTransactionForContext:(void *)context
{
  if ([(CMPhotoProcessMonitor *)self latestTransaction])
  {
    latestTransaction = [(CMPhotoProcessMonitor *)self latestTransaction];

    MEMORY[0x1EEE74830](latestTransaction);
  }

  else
  {
    v5 = os_transaction_create();
    if (v5)
    {
      v6 = v5;
      [(CMPhotoProcessMonitor *)self setLatestTransaction:v5];
    }

    else
    {
      [CMPhotoProcessMonitor _takeOSTransactionForContext:];
    }
  }
}

- (int)takeAssertionUntilTime:(unint64_t)time forContext:(void *)context
{
  os_unfair_lock_lock(&self->_lock);
  v7 = dispatch_time(0, 30000000000);
  if (v7 <= time)
  {
    [CMPhotoProcessMonitor takeAssertionUntilTime:? forContext:?];
    v9 = v11;
  }

  else
  {
    [(CMPhotoProcessMonitor *)self _takeRBSAssertionForContext:context until:time maxLength:v7];
    [(CMPhotoProcessMonitor *)self _takeOSTransactionForContext:context];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:context];
    -[NSMutableDictionary setObject:forKeyedSubscript:](-[CMPhotoProcessMonitor heldAssertions](self, "heldAssertions"), "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLongLong:time], v8);
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (int)releaseAssertionForContext:(void *)context
{
  os_unfair_lock_lock(&self->_lock);
  heldAssertions = [(CMPhotoProcessMonitor *)self heldAssertions];
  -[NSMutableDictionary removeObjectForKey:](heldAssertions, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:context]);
  if ([(NSMutableDictionary *)[(CMPhotoProcessMonitor *)self heldAssertions] count])
  {
    v6 = dispatch_time(0, 0);
    allKeys = [(NSMutableDictionary *)[(CMPhotoProcessMonitor *)self heldAssertions] allKeys];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CMPhotoProcessMonitor_releaseAssertionForContext___block_invoke;
    v9[3] = &unk_1E77A2648;
    v9[4] = self;
    v9[5] = v6;
    -[NSMutableDictionary removeObjectsForKeys:](-[CMPhotoProcessMonitor heldAssertions](self, "heldAssertions"), "removeObjectsForKeys:", [allKeys filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v9)}]);
  }

  if (![(NSMutableDictionary *)[(CMPhotoProcessMonitor *)self heldAssertions] count])
  {
    [(RBSAssertion *)[(CMPhotoProcessMonitor *)self latestAssertion] invalidate];
    [(CMPhotoProcessMonitor *)self setLatestAssertion:0];
    [(CMPhotoProcessMonitor *)self setLatestTransaction:0];
  }

  os_unfair_lock_unlock(&self->_lock);
  return 0;
}

- (int)registerBackgroundNotificationHandlerForContext:(void *)context handler:(id)handler
{
  [(CMPhotoProcessMonitor *)self _createRBSMonitorIfNeeded];
  v7 = [handler copy];
  os_unfair_lock_lock(&self->_lock);
  backgroundNotificationBlocks = [(CMPhotoProcessMonitor *)self backgroundNotificationBlocks];
  -[NSMutableDictionary setObject:forKeyedSubscript:](backgroundNotificationBlocks, "setObject:forKeyedSubscript:", v7, [MEMORY[0x1E696AD98] numberWithUnsignedLong:context]);
  os_unfair_lock_unlock(&self->_lock);

  return 0;
}

- (int)unregisterBackgroundNotificationForContext:(void *)context
{
  os_unfair_lock_lock(&self->_lock);
  backgroundNotificationBlocks = [(CMPhotoProcessMonitor *)self backgroundNotificationBlocks];
  -[NSMutableDictionary removeObjectForKey:](backgroundNotificationBlocks, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:context]);
  os_unfair_lock_unlock(&self->_lock);
  return 0;
}

- (void)_takeRBSAssertionForContext:(void *)context until:(unint64_t)until maxLength:(unint64_t)length
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (+[CMPhotoProcessMonitor isManagedByRunningBoard]&& ![(CMPhotoProcessMonitor *)self gotRBSConnectionError]&& (![(CMPhotoProcessMonitor *)self latestAssertion]|| [(CMPhotoProcessMonitor *)self assertionHeldToTime]<= until))
  {
    v8 = objc_alloc(MEMORY[0x1E69C7548]);
    v9 = [MEMORY[0x1E69C7640] targetWithPid:getpid()];
    v14[0] = [(CMPhotoProcessMonitor *)self domainAttribute];
    v10 = [v8 initWithExplanation:@"CMPhoto pool cleanup timer" target:v9 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 1)}];
    if (!v10)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return;
    }

    v11 = v10;
    v13 = 0;
    if ([v10 acquireWithError:&v13])
    {
      goto LABEL_11;
    }

    domain = [v13 domain];
    if ((domain != *MEMORY[0x1E69C7688] || [v13 code] != 2) && objc_msgSend(v13, "code") == 4099)
    {
      [(CMPhotoProcessMonitor *)self setGotRBSConnectionError:1];
LABEL_11:
      [(RBSAssertion *)[(CMPhotoProcessMonitor *)self latestAssertion] invalidate];
      [(CMPhotoProcessMonitor *)self setAssertionHeldToTime:length];
      [(CMPhotoProcessMonitor *)self setLatestAssertion:v11];
    }
  }
}

- (BOOL)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v3 = FigSignalErrorAtGM();

  return v3 == 0;
}

- (uint64_t)_takeOSTransactionForContext:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)takeAssertionUntilTime:(_DWORD *)a1 forContext:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end