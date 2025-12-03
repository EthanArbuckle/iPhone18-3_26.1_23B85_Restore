@interface FigExternalSyncDeviceDiscoverySessionManager
+ (id)sharedFigExternalSyncDeviceDiscoverySessionManager;
+ (void)initialize;
- (FigExternalSyncDeviceDiscoverySessionManager)init;
- (id)_currentDevices;
- (id)currentDevices;
- (void)_addDevice:(id)device;
- (void)_forceNotifyDelegatesDevicesChanged;
- (void)_handleDeviceEvent:(unsigned int)event;
- (void)_removeDevice:(id)device;
- (void)_setupDeviceDeviceManagmentMonitoring;
- (void)_setupDeviceObservationNotifications;
- (void)_teardownDeviceDeviceManagmentMonitoring;
- (void)_teardownDeviceObservationNotifications;
- (void)dealloc;
- (void)deviceDisconnectedEvent:(id)event;
- (void)registerClient:(id *)client delegate:(id)delegate;
- (void)unregisterAndCleanupClient:(id *)client;
@end

@implementation FigExternalSyncDeviceDiscoverySessionManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedFigExternalSyncDeviceDiscoverySessionManager
{
  if (sharedFigExternalSyncDeviceDiscoverySessionManager_onceToken != -1)
  {
    +[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager];
  }

  return sharedFigExternalSyncDeviceDiscoverySessionManager_sFigExternalSyncDeviceDiscoverySessionManager;
}

FigExternalSyncDeviceDiscoverySessionManager *__98__FigExternalSyncDeviceDiscoverySessionManager_sharedFigExternalSyncDeviceDiscoverySessionManager__block_invoke()
{
  result = objc_alloc_init(FigExternalSyncDeviceDiscoverySessionManager);
  sharedFigExternalSyncDeviceDiscoverySessionManager_sFigExternalSyncDeviceDiscoverySessionManager = result;
  return result;
}

- (void)_forceNotifyDelegatesDevicesChanged
{
  dispatch_assert_queue_V2(self->_queue);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [(NSMutableDictionary *)self->_activeClients allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [-[NSMutableDictionary objectForKey:](self->_activeClients objectForKey:{v8), "referencedObject"}];
        if (v9)
        {
          v10 = v9;
          if (dword_1EB58E5E0)
          {
            v23 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v12 = v23;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v13 = v12;
            }

            else
            {
              v13 = v12 & 0xFFFFFFFE;
            }

            if (v13)
            {
              v16 = 136315650;
              v17 = "[FigExternalSyncDeviceDiscoverySessionManager _forceNotifyDelegatesDevicesChanged]";
              v18 = 2114;
              selfCopy = self;
              v20 = 2114;
              v21 = v10;
              LODWORD(v15) = 32;
              v14 = &v16;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v10 externalSyncDeviceDiscoverySessionManager:self connectedDevicesDidChange:{-[FigExternalSyncDeviceDiscoverySessionManager _currentDevices](self, "_currentDevices", v14, v15)}];
        }

        else
        {
          [(NSMutableDictionary *)self->_activeClients removeObjectForKey:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)deviceDisconnectedEvent:(id)event
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__FigExternalSyncDeviceDiscoverySessionManager_deviceDisconnectedEvent___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(queue, v4);
}

uint64_t __72__FigExternalSyncDeviceDiscoverySessionManager_deviceDisconnectedEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeDevice:{objc_msgSend(*(a1 + 40), "externalSyncDeviceDeviceIdentifer")}];
  v2 = *(a1 + 32);

  return [v2 _forceNotifyDelegatesDevicesChanged];
}

- (FigExternalSyncDeviceDiscoverySessionManager)init
{
  v4.receiver = self;
  v4.super_class = FigExternalSyncDeviceDiscoverySessionManager;
  v2 = [(FigExternalSyncDeviceDiscoverySessionManager *)&v4 init];
  if (v2)
  {
    v2->_managedExternalSyncDevices = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_activeClients = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_queue = dispatch_queue_create("com.apple.figexternalsyncdevicediscoverysessionmanager", 0);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigExternalSyncDeviceDiscoverySessionManager;
  [(FigExternalSyncDeviceDiscoverySessionManager *)&v3 dealloc];
}

- (void)registerClient:(id *)client delegate:(id)delegate
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__FigExternalSyncDeviceDiscoverySessionManager_registerClient_delegate___block_invoke;
  v6[3] = &unk_1E79914B8;
  v5 = *&client->var0[4];
  v7 = *client->var0;
  v8 = v5;
  v6[4] = self;
  v6[5] = delegate;
  dispatch_async(queue, v6);
}

uint64_t __72__FigExternalSyncDeviceDiscoverySessionManager_registerClient_delegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:FigCaptureGetPIDFromAuditToken(v9)];
  result = [*(*(a1 + 32) + 40) objectForKey:v3];
  if (!result)
  {
    [*(*(a1 + 32) + 40) setObject:-[FigWeakReference initWithReferencedObject:]([FigWeakReference alloc] forKey:{"initWithReferencedObject:", *(a1 + 40)), v3}];
    if (dword_1EB58E5E0)
    {
      v11 = 0;
      v10 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v6 = v11;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v10))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(a1 + 32);
    if (v8[48])
    {
      return [*(a1 + 40) externalSyncDeviceDiscoverySessionManager:v8 connectedDevicesDidChange:{objc_msgSend(v8, "_currentDevices")}];
    }

    else
    {
      return [*(a1 + 32) _setupDeviceDeviceManagmentMonitoring];
    }
  }

  return result;
}

- (void)unregisterAndCleanupClient:(id *)client
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = *&client->var0[4];
  v6 = *client->var0;
  v7 = v4;
  block[2] = __75__FigExternalSyncDeviceDiscoverySessionManager_unregisterAndCleanupClient___block_invoke;
  block[3] = &unk_1E79914E0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __75__FigExternalSyncDeviceDiscoverySessionManager_unregisterAndCleanupClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v17[0] = *(a1 + 40);
  v17[1] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:FigCaptureGetPIDFromAuditToken(v17)];
  result = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v3];
  if (result)
  {
    if (dword_1EB58E5E0)
    {
      v19 = 0;
      v18 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v6 = v19;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v18))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 32);
        v11 = 136315650;
        v12 = "[FigExternalSyncDeviceDiscoverySessionManager unregisterAndCleanupClient:]_block_invoke";
        v13 = 2114;
        v14 = v8;
        v15 = 2114;
        v16 = v3;
        LODWORD(v10) = 32;
        v9 = &v11;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 40) removeObjectForKey:{v3, v9, v10}];
    result = [*(*(a1 + 32) + 40) count];
    if (!result)
    {
      return [*(a1 + 32) _teardownDeviceDeviceManagmentMonitoring];
    }
  }

  return result;
}

- (void)_setupDeviceDeviceManagmentMonitoring
{
  dispatch_assert_queue_V2(self->_queue);
  if (dword_1EB58E5E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!self->_observingSSAMEvents)
  {
    [(FigExternalSyncDeviceDiscoverySessionManager *)self _setupDeviceObservationNotifications];
    self->_observingSSAMEvents = 1;
  }
}

- (void)_teardownDeviceDeviceManagmentMonitoring
{
  dispatch_assert_queue_V2(self->_queue);
  [(FigExternalSyncDeviceDiscoverySessionManager *)self _teardownDeviceObservationNotifications];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allKeys = [(NSMutableDictionary *)self->_managedExternalSyncDevices allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(FigExternalSyncDeviceDiscoverySessionManager *)self _removeDevice:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  self->_observingSSAMEvents = 0;
  [(NSMutableDictionary *)self->_managedExternalSyncDevices removeAllObjects];
  [(NSMutableDictionary *)self->_activeClients removeAllObjects];
}

- (void)_addDevice:(id)device
{
  dispatch_assert_queue_V2(self->_queue);
  if (dword_1EB58E5E0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_managedExternalSyncDevices, "setObject:forKeyedSubscript:", device, [device externalSyncDeviceDeviceIdentifer]);
}

- (void)_removeDevice:(id)device
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_managedExternalSyncDevices objectForKey:device];
  if (v5)
  {
    v6 = v5;
    if (dword_1EB58E5E0)
    {
      v11 = 0;
      v10 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v6 forceCleanup];
    [(NSMutableDictionary *)self->_managedExternalSyncDevices removeObjectForKey:device];
  }
}

- (id)currentDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__FigExternalSyncDeviceDiscoverySessionManager_currentDevices__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__FigExternalSyncDeviceDiscoverySessionManager_currentDevices__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _currentDevices];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_currentDevices
{
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_managedExternalSyncDevices allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSSAMEnabled])
        {
          [array addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_setupDeviceObservationNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  notification = 0;
  v3 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  self->_ioServiceNotificationPort = v3;
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, self->_queue);
    v4 = IOServiceMatching("IOPortTransportProtocolCCUSBPDSSAM");
    if (v4)
    {
      v5 = v4;
      ioServiceNotificationPort = self->_ioServiceNotificationPort;
      v7 = CFRetain(v4);
      v8 = IOServiceAddMatchingNotification(ioServiceNotificationPort, "IOServiceFirstMatch", v7, sSSAMDeviceFoundCallback, 0, &notification);
      v9 = notification;
      self->_firstMatchIterator = notification;
      if (v8)
      {
        [FigExternalSyncDeviceDiscoverySessionManager _setupDeviceObservationNotifications];
      }

      else if (v9)
      {
        sSSAMDeviceFoundCallback(0, v9);
        if (dword_1EB58E5E0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        [FigExternalSyncDeviceDiscoverySessionManager _setupDeviceObservationNotifications];
      }

      CFRelease(v5);
    }

    else
    {
      [FigExternalSyncDeviceDiscoverySessionManager _setupDeviceObservationNotifications];
    }
  }

  else
  {
    [FigExternalSyncDeviceDiscoverySessionManager _setupDeviceObservationNotifications];
  }
}

- (void)_teardownDeviceObservationNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  firstMatchIterator = self->_firstMatchIterator;
  if (firstMatchIterator)
  {
    IOObjectRelease(firstMatchIterator);
    self->_firstMatchIterator = 0;
  }

  ioServiceNotificationPort = self->_ioServiceNotificationPort;
  if (ioServiceNotificationPort)
  {
    IONotificationPortDestroy(ioServiceNotificationPort);
    self->_ioServiceNotificationPort = 0;
  }
}

- (void)_handleDeviceEvent:(unsigned int)event
{
  v3 = *&event;
  dispatch_assert_queue_V2(self->_queue);
  if (dword_1EB58E5E0)
  {
    v16[0] = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16[0] = 0;
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(v3, entryID);
  MEMORY[0x1B26F0740](v3, "IOService", v16);
  v6 = IOIteratorNext(v16[0]);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x1E695E480];
    while (1)
    {
      if (IOObjectConformsTo(v7, "IOPortTransportStateCC") && (v10 & 1) == 0)
      {
        v8 = IORegistryEntryCreateCFProperty(v7, @"Vendor ID (SOP)", v11, 0);
        objc_opt_class();
        if (!v8 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
        }

        v9 = IORegistryEntryCreateCFProperty(v7, @"Product ID (SOP)", v11, 0);
        objc_opt_class();
        if (!v9 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
        }

        v10 = 1;
      }

      if (IOObjectConformsTo(v7, "AppleHPMARM"))
      {
        break;
      }

      MEMORY[0x1B26F0740](v7, "IOService", v16);
      v7 = IOIteratorNext(v16[0]);
      if (!v7)
      {
        return;
      }
    }

    v13 = 0;
    IORegistryEntryGetRegistryEntryID(v7, &v13);
    v12 = [FigExternalSyncDevice alloc];
    -[FigExternalSyncDeviceDiscoverySessionManager _addDevice:](self, "_addDevice:", -[FigExternalSyncDevice initWithHpmEntID:ssamEntID:connectionState:vid:pid:](v12, "initWithHpmEntID:ssamEntID:connectionState:vid:pid:", v13, entryID[0], 1, [v8 unsignedIntValue], objc_msgSend(v9, "unsignedIntValue")));
  }
}

@end