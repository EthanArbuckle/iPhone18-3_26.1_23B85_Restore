@interface CSSiriMobileBluetoothDeviceDataSource
- (CSSiriMobileBluetoothDeviceDataSource)init;
- (id)_deviceProxies;
- (id)_deviceProxyWithAddress:(id)a3 createsIfAbsent:(BOOL)a4;
- (id)_deviceProxyWithUID:(id)a3 createsIfAbsent:(BOOL)a4;
- (id)deviceWithAddress:(id)a3;
- (id)deviceWithUID:(id)a3;
- (void)_attachToSession;
- (void)_cleanUpDeviceProxies;
- (void)_detachFromSession;
- (void)_reloadForDevice:(BTDeviceImpl *)a3;
- (void)_sessionAttached:(BTSessionImpl *)a3 result:(int)a4;
- (void)_sessionDetached:(BTSessionImpl *)a3;
- (void)_sessionTerminated:(BTSessionImpl *)a3;
- (void)_setUpAccessoryManager;
- (void)_setUpLocalDevice;
- (void)_tearDownAccessoryManager;
- (void)_tearDownLocalDevice;
- (void)accessoryManager:(BTAccessoryManagerImpl *)a3 event:(int)a4 device:(BTDeviceImpl *)a5 state:(int)a6;
- (void)getBTDeviceWithAddress:(id)a3 completion:(id)a4;
- (void)getBTDeviceWithDeviceUID:(id)a3 completion:(id)a4;
- (void)getBTLocalDeviceWithCompletion:(id)a3;
- (void)invalidate;
- (void)localDevice:(BTLocalDeviceImpl *)a3 event:(int)a4 result:(int)a5;
@end

@implementation CSSiriMobileBluetoothDeviceDataSource

- (id)_deviceProxyWithUID:(id)a3 createsIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [[CSSiriMobileBluetoothDeviceProxy alloc] initWithDeviceUID:v6 dataSource:self queue:self->_queue];
    [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID setObject:v7 forKey:v6];
  }

  return v7;
}

- (id)_deviceProxyWithAddress:(id)a3 createsIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_deviceProxiesByAddress objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [[CSSiriMobileBluetoothDeviceProxy alloc] initWithAddress:v6 dataSource:self queue:self->_queue];
    [(NSMutableDictionary *)self->_deviceProxiesByAddress setObject:v7 forKey:v6];
  }

  return v7;
}

- (id)deviceWithUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v5 = [(CSSiriMobileBluetoothDeviceDataSource *)self _deviceProxyWithUID:v4 createsIfAbsent:1];

  os_unfair_lock_unlock(&self->_deviceProxiesLock);

  return v5;
}

- (id)deviceWithAddress:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v5 = [(CSSiriMobileBluetoothDeviceDataSource *)self _deviceProxyWithAddress:v4 createsIfAbsent:1];

  os_unfair_lock_unlock(&self->_deviceProxiesLock);

  return v5;
}

- (void)getBTLocalDeviceWithCompletion:(id)a3
{
  v4 = a3;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__CSSiriMobileBluetoothDeviceDataSource_getBTLocalDeviceWithCompletion___block_invoke;
  v8[3] = &unk_2784C6E98;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(sessionSetupGroup, queue, v8);
}

uint64_t __72__CSSiriMobileBluetoothDeviceDataSource_getBTLocalDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriMobileBluetoothDeviceDataSource getBTLocalDeviceWithCompletion:]_block_invoke";
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s BTLocalDevice %p", &v7, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getBTDeviceWithDeviceUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CSSiriMobileBluetoothDeviceDataSource_getBTDeviceWithDeviceUID_completion___block_invoke;
  block[3] = &unk_2784C6C68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(sessionSetupGroup, queue, block);
}

uint64_t __77__CSSiriMobileBluetoothDeviceDataSource_getBTDeviceWithDeviceUID_completion___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0A0];
  if (*(*(a1 + 32) + 16))
  {
    v18[0] = 0;
    v18[1] = 0;
    [*(a1 + 40) getUUIDBytes:v18];
    v3 = *(*(a1 + 32) + 16);
    v4 = BTDeviceFromIdentifier();
    if (v4)
    {
      v5 = v4;
      v6 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
        v14 = 1024;
        LODWORD(v15) = v5;
        _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s Failed getting device from deviceUID %d", buf, 0x12u);
      }
    }

    v7 = *(*(a1 + 32) + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    *buf = 136315650;
    v13 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
    v14 = 2048;
    v15 = 0;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s BTDevice %p for deviceUID %@", buf, 0x20u);
    v8 = *v2;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s BTAccessoryManager %p", buf, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, 0, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getBTDeviceWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sessionSetupGroup = self->_sessionSetupGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CSSiriMobileBluetoothDeviceDataSource_getBTDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_2784C6C68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(sessionSetupGroup, queue, block);
}

uint64_t __75__CSSiriMobileBluetoothDeviceDataSource_getBTDeviceWithAddress_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0A0];
  if (!*(*(a1 + 32) + 16))
  {
    v7 = 0;
    goto LABEL_9;
  }

  WORD2(v15) = 0;
  LODWORD(v15) = 0;
  [*(a1 + 40) UTF8String];
  v3 = BTDeviceAddressFromString();
  if (!v3)
  {
    v8 = *(*(a1 + 32) + 16);
    v9 = BTDeviceFromAddress();
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    v5 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v17 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v18 = 1024;
    LODWORD(v19) = v10;
    v6 = "%s Failed getting device from address %d";
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v18 = 1024;
    LODWORD(v19) = v4;
    v6 = "%s Failed getting device address from string %d";
LABEL_17:
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
  }

LABEL_8:
  v7 = *(*(a1 + 32) + 32);
LABEL_9:
  v11 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    *buf = 136315650;
    v17 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v18 = 2048;
    v19 = 0;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s BTDevice %p for address %@", buf, 0x20u);
    v11 = *v2;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[CSSiriMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v18 = 2048;
    v19 = v7;
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s BTAccessoryManager %p", buf, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, 0, v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_deviceProxies
{
  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v3 = [(NSMutableDictionary *)self->_deviceProxiesByAddress allValues];
  v4 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID allValues];
  os_unfair_lock_unlock(&self->_deviceProxiesLock);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v3 count])
  {
    [v5 addObjectsFromArray:v3];
  }

  if ([v4 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  return v5;
}

- (void)_reloadForDevice:(BTDeviceImpl *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = _CSSiriBTDeviceGetAddress(a3);
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(CSSiriMobileBluetoothDeviceDataSource *)self _deviceProxies];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __58__CSSiriMobileBluetoothDeviceDataSource__reloadForDevice___block_invoke;
          v12[3] = &unk_2784C5C90;
          v13 = v4;
          v14 = v10;
          [v10 getDeviceInfo:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CSSiriMobileBluetoothDeviceDataSource__reloadForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);

    [v5 reload];
  }
}

- (void)accessoryManager:(BTAccessoryManagerImpl *)a3 event:(int)a4 device:(BTDeviceImpl *)a5 state:(int)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v17 = "[CSSiriMobileBluetoothDeviceDataSource accessoryManager:event:device:state:]";
    v18 = 2048;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    v22 = 2048;
    v23 = a5;
    v24 = 1024;
    v25 = a6;
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s accessoryManager = %p, accessoryEvent = %d, device = %p, state = %d", buf, 0x2Cu);
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CSSiriMobileBluetoothDeviceDataSource_accessoryManager_event_device_state___block_invoke;
  v14[3] = &unk_2784C5C68;
  v14[4] = self;
  v14[5] = a3;
  v15 = a4;
  v14[6] = a5;
  dispatch_async(queue, v14);
  v13 = *MEMORY[0x277D85DE8];
}

void *__77__CSSiriMobileBluetoothDeviceDataSource_accessoryManager_event_device_state___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[4] == *(a1 + 40) && *(a1 + 56) <= 6u)
  {
    return [result _reloadForDevice:*(a1 + 48)];
  }

  return result;
}

- (void)_tearDownAccessoryManager
{
  if (self->_accessoryManager)
  {
    BTAccessoryManagerRemoveCallbacks();
    self->_accessoryManager = 0;
  }
}

- (void)_setUpAccessoryManager
{
  v26 = *MEMORY[0x277D85DE8];
  [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
  if (self->_session)
  {
    Default = BTAccessoryManagerGetDefault();
    if (Default)
    {
      v4 = Default;
      v5 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        session = self->_session;
        v18 = 136315650;
        v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
        v20 = 2048;
        v21 = session;
        v22 = 1024;
        LODWORD(v23) = v4;
        v7 = "%s Failed getting default accessory manager from session %p (result = %d).";
        v8 = v5;
        v9 = 28;
LABEL_10:
        _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, v7, &v18, v9);
      }
    }

    else
    {
      accessoryManager = self->_accessoryManager;
      v12 = BTAccessoryManagerAddCallbacks();
      if (v12)
      {
        v13 = v12;
        v14 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
        {
          v15 = self->_accessoryManager;
          v16 = self->_session;
          v18 = 136315906;
          v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
          v20 = 2048;
          v21 = v15;
          v22 = 2048;
          v23 = v16;
          v24 = 1024;
          v25 = v13;
          v7 = "%s Failed adding callbacks to accessory manager %p from session %p (result = %d).";
          v8 = v14;
          v9 = 38;
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpAccessoryManager]";
      v7 = "%s Session is NULL.";
      v8 = v10;
      v9 = 12;
      goto LABEL_10;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)localDevice:(BTLocalDeviceImpl *)a3 event:(int)a4 result:(int)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v15 = "[CSSiriMobileBluetoothDeviceDataSource localDevice:event:result:]";
    v16 = 2048;
    v17 = a3;
    v18 = 1024;
    v19 = a4;
    v20 = 1024;
    v21 = a5;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s localDevice = %p, event = %d, result = %d", buf, 0x22u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CSSiriMobileBluetoothDeviceDataSource_localDevice_event_result___block_invoke;
  block[3] = &unk_2784C5F40;
  block[4] = self;
  block[5] = a3;
  v13 = a4;
  dispatch_async(queue, block);
  v11 = *MEMORY[0x277D85DE8];
}

void *__66__CSSiriMobileBluetoothDeviceDataSource_localDevice_event_result___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3] == *(a1 + 40) && *(a1 + 48) == 11)
  {
    return [result _cleanUpDeviceProxies];
  }

  return result;
}

- (void)_tearDownLocalDevice
{
  if (self->_localDevice)
  {
    BTLocalDeviceRemoveCallbacks();
    self->_localDevice = 0;
  }
}

- (void)_setUpLocalDevice
{
  v26 = *MEMORY[0x277D85DE8];
  [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
  if (self->_session)
  {
    Default = BTLocalDeviceGetDefault();
    if (Default)
    {
      v4 = Default;
      v5 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        session = self->_session;
        v18 = 136315650;
        v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpLocalDevice]";
        v20 = 2048;
        v21 = session;
        v22 = 1024;
        LODWORD(v23) = v4;
        v7 = "%s Failed getting default local device from session %p (result = %d).";
        v8 = v5;
        v9 = 28;
LABEL_10:
        _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, v7, &v18, v9);
      }
    }

    else
    {
      localDevice = self->_localDevice;
      v12 = BTLocalDeviceAddCallbacks();
      if (v12)
      {
        v13 = v12;
        v14 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
        {
          v16 = self->_session;
          v15 = self->_localDevice;
          v18 = 136315906;
          v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpLocalDevice]";
          v20 = 2048;
          v21 = v15;
          v22 = 2048;
          v23 = v16;
          v24 = 1024;
          v25 = v13;
          v7 = "%s Failed adding callbacks to local device %p from session %p (result = %d).";
          v8 = v14;
          v9 = 38;
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSSiriMobileBluetoothDeviceDataSource _setUpLocalDevice]";
      v7 = "%s Session is NULL.";
      v8 = v10;
      v9 = 12;
      goto LABEL_10;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_sessionTerminated:(BTSessionImpl *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriMobileBluetoothDeviceDataSource _sessionTerminated:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s session = %p", &v7, 0x16u);
  }

  if (self->_session == a3)
  {
    [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
    [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
    if (self->_session)
    {
      BTServiceRemoveCallbacks();
      self->_session = 0;
    }

    [(CSSiriMobileBluetoothDeviceDataSource *)self _attachToSession];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sessionDetached:(BTSessionImpl *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriMobileBluetoothDeviceDataSource _sessionDetached:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s session = %p", &v7, 0x16u);
  }

  if (self->_session == a3)
  {
    [(CSSiriMobileBluetoothDeviceDataSource *)self _cleanUpDeviceProxies];
    [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
    [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
    if (self->_session)
    {
      BTServiceRemoveCallbacks();
      self->_session = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sessionAttached:(BTSessionImpl *)a3 result:(int)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[CSSiriMobileBluetoothDeviceDataSource _sessionAttached:result:]";
    v21 = 2048;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s session = %p, result = %d", buf, 0x1Cu);
  }

  self->_attachingToSession = 0;
  if (!a4)
  {
    [(CSSiriMobileBluetoothDeviceDataSource *)self _detachFromSession];
    self->_session = a3;
    if (a3)
    {
      BTServiceAddCallbacks();
    }

    [(CSSiriMobileBluetoothDeviceDataSource *)self _setUpLocalDevice];
    [(CSSiriMobileBluetoothDeviceDataSource *)self _setUpAccessoryManager];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(CSSiriMobileBluetoothDeviceDataSource *)self _deviceProxies];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) reload];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  dispatch_group_leave(self->_sessionSetupGroup);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_attachToSession
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_attachingToSession)
  {
    v2 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSSiriMobileBluetoothDeviceDataSource _attachToSession]";
      v3 = "%s Already attaching to session!";
      v4 = v2;
      v5 = 12;
LABEL_7:
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, v3, &v12, v5);
    }
  }

  else
  {
    [(CSSiriMobileBluetoothDeviceDataSource *)self _detachFromSession];
    queue = self->_queue;
    v8 = BTSessionAttachWithQueue();
    v9 = *MEMORY[0x277CEF0A0];
    if (v8)
    {
      v10 = v8;
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[CSSiriMobileBluetoothDeviceDataSource _attachToSession]";
        v14 = 1024;
        v15 = v10;
        v3 = "%s Failed attaching to bt session %d";
        v4 = v9;
        v5 = 18;
        goto LABEL_7;
      }
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[CSSiriMobileBluetoothDeviceDataSource _attachToSession]";
        _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Attaching to session", &v12, 0xCu);
      }

      self->_attachingToSession = 1;
      dispatch_group_enter(self->_sessionSetupGroup);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_detachFromSession
{
  v12 = *MEMORY[0x277D85DE8];
  [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownAccessoryManager];
  [(CSSiriMobileBluetoothDeviceDataSource *)self _tearDownLocalDevice];
  session = self->_session;
  p_session = &self->_session;
  if (session)
  {
    BTServiceRemoveCallbacks();
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      v6 = *p_session;
      v8 = 136315394;
      v9 = "[CSSiriMobileBluetoothDeviceDataSource _detachFromSession]";
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Detaching from session %p", &v8, 0x16u);
    }

    BTSessionDetachWithQueue();
    *p_session = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpDeviceProxies
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[CSSiriMobileBluetoothDeviceDataSource _cleanUpDeviceProxies]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_deviceProxiesLock);
  v4 = [(NSMutableDictionary *)self->_deviceProxiesByAddress allValues];
  [(NSMutableDictionary *)self->_deviceProxiesByAddress removeAllObjects];
  v5 = [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID allValues];
  [(NSMutableDictionary *)self->_deviceProxiesByDeviceUID removeAllObjects];
  os_unfair_lock_unlock(&self->_deviceProxiesLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v21 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) invalidate];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CSSiriMobileBluetoothDeviceDataSource_invalidate__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __51__CSSiriMobileBluetoothDeviceDataSource_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpDeviceProxies];
  v2 = *(a1 + 32);

  return [v2 _detachFromSession];
}

- (CSSiriMobileBluetoothDeviceDataSource)init
{
  v21.receiver = self;
  v21.super_class = CSSiriMobileBluetoothDeviceDataSource;
  v2 = [(CSSiriMobileBluetoothDeviceDataSource *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("CSSiriMobileBluetoothDeviceDataSource", v3);

    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_group_create();
    v7 = *(v2 + 6);
    *(v2 + 6) = v6;

    *(v2 + 14) = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = *(v2 + 8);
    *(v2 + 8) = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *(v2 + 9);
    *(v2 + 9) = v10;

    dispatch_group_enter(*(v2 + 6));
    v12 = *(v2 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__CSSiriMobileBluetoothDeviceDataSource_init__block_invoke;
    block[3] = &unk_2784C6FD0;
    v20 = v2;
    dispatch_async(v12, block);
    v13 = *(v2 + 1);
    v14 = +[CSSiriQueueMonitor sharedMonitor];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__CSSiriMobileBluetoothDeviceDataSource_init__block_invoke_2;
    v17[3] = &unk_2784C5C40;
    v18 = v13;
    v15 = v13;
    [v14 addQueue:v15 heartBeatInterval:v17 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

void __45__CSSiriMobileBluetoothDeviceDataSource_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _attachToSession];
  v2 = *(*(a1 + 32) + 48);

  dispatch_group_leave(v2);
}

void __45__CSSiriMobileBluetoothDeviceDataSource_init__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v5 = "[CSSiriMobileBluetoothDeviceDataSource init]_block_invoke_2";
    v6 = 2112;
    v7 = v1;
    _os_log_fault_impl(&dword_222E4D000, v2, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end