@interface FigExternalSyncDeviceDiscoverySessionDelegateHandler
- (FigExternalSyncDeviceDiscoverySessionDelegateHandler)initWithSource:(OpaqueFigCaptureSource *)a3;
- (void)externalSyncDeviceDiscoverySessionManager:(id)a3 connectedDevicesDidChange:(id)a4;
- (void)forceCleanup;
@end

@implementation FigExternalSyncDeviceDiscoverySessionDelegateHandler

- (FigExternalSyncDeviceDiscoverySessionDelegateHandler)initWithSource:(OpaqueFigCaptureSource *)a3
{
  v10.receiver = self;
  v10.super_class = FigExternalSyncDeviceDiscoverySessionDelegateHandler;
  v4 = [(FigExternalSyncDeviceDiscoverySessionDelegateHandler *)&v10 init];
  if (v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4->_source = a3;
    v6 = +[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager];
    v7 = *(DerivedStorage + 20);
    v9[0] = *(DerivedStorage + 4);
    v9[1] = v7;
    [v6 registerClient:v9 delegate:v4];
  }

  return v4;
}

- (void)forceCleanup
{
  os_unfair_lock_lock(&self->_sourceLock);
  if (self->_source)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    self->_source = 0;
    v4 = +[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager];
    v5 = *(DerivedStorage + 20);
    v6[0] = *(DerivedStorage + 4);
    v6[1] = v5;
    [v4 unregisterAndCleanupClient:v6];
    os_unfair_lock_unlock(&self->_sourceLock);
  }
}

- (void)externalSyncDeviceDiscoverySessionManager:(id)a3 connectedDevicesDidChange:(id)a4
{
  os_unfair_lock_lock(&self->_sourceLock);
  if (self->_source)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [a4 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(a4);
          }

          [v6 setObject:objc_msgSend(*(*(&v16 + 1) + 8 * i) forKeyedSubscript:{"getDeviceInfoDict"), objc_msgSend(*(*(&v16 + 1) + 8 * i), "externalSyncDeviceDeviceIdentifer")}];
        }

        v8 = [a4 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v8);
    }

    source = self->_source;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (@"ExternalSyncDeviceDiscoverySessionUpdateNotification")
    {
      v13 = DerivedStorage;
      CFRetain(@"ExternalSyncDeviceDiscoverySessionUpdateNotification");
      if (v6)
      {
        CFRetain(v6);
      }

      if (source)
      {
        CFRetain(source);
      }

      v14 = *(v13 + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __externalSyncDeviceDiscoverySession_postNotificationWithPayload_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = @"ExternalSyncDeviceDiscoverySessionUpdateNotification";
      block[5] = source;
      block[6] = v6;
      dispatch_async(v14, block);
    }

    else
    {
      [FigExternalSyncDeviceDiscoverySessionDelegateHandler externalSyncDeviceDiscoverySessionManager:connectedDevicesDidChange:];
    }

    os_unfair_lock_unlock(&self->_sourceLock);
  }
}

- (uint64_t)externalSyncDeviceDiscoverySessionManager:connectedDevicesDidChange:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end