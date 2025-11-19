@interface CUBonjourBrowser
- (CUBonjourBrowser)init;
- (NSArray)devices;
- (id)descriptionWithLevel:(int)a3;
- (int)_bonjourStart;
- (void)_activateSafeInvokeBlock:(id)a3;
- (void)_bonjourHandleAddOrUpdateDevice:(id)a3;
- (void)_bonjourHandleEventType:(unsigned int)a3 info:(id)a4;
- (void)_bonjourHandleRemoveDevice:(id)a3;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_update;
- (void)_updateLocked;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setBrowseFlags:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)update;
@end

@implementation CUBonjourBrowser

- (void)_bonjourHandleRemoveDevice:(id)a3
{
  v4 = a3;
  v29 = 0;
  BonjourDevice_GetDeviceID(v4, v28, &v29);
  if (!v29)
  {
    v10 = NSStringWithMACAddress(v28);
    v15 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v10];
    if (v15)
    {
      v16 = self;
      objc_sync_enter(v16);
      [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v10];
      objc_sync_exit(v16);

      ucat = v16->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
LABEL_8:
          v18 = v15;
          if (objc_opt_respondsToSelector())
          {
            v19 = [v18 shortDescription];
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              [v18 descriptionWithLevel:50];
            }

            else
            {
              [v18 description];
            }
            v19 = ;
          }

          v21 = v19;

          LogPrintF(ucat, "[CUBonjourBrowser _bonjourHandleRemoveDevice:]", 0x1Eu, "Lost %@\n", v22, v23, v24, v25, v21);
          goto LABEL_24;
        }

        if (_LogCategory_Initialize(v16->_ucat, 0x1Eu))
        {
          ucat = v16->_ucat;
          goto LABEL_8;
        }
      }

LABEL_24:
      deviceLostHandler = v16->_deviceLostHandler;
      if (deviceLostHandler)
      {
        deviceLostHandler[2](deviceLostHandler, v15);
      }

      goto LABEL_26;
    }

    v20 = self->_ucat;
    if (v20->var0 <= 30)
    {
      if (v20->var0 == -1)
      {
        if (!_LogCategory_Initialize(v20, 0x1Eu))
        {
          goto LABEL_26;
        }

        v20 = self->_ucat;
      }

      LogPrintF(v20, "[CUBonjourBrowser _bonjourHandleRemoveDevice:]", 0x1Eu, "### Bonjour lost untracked device\n", v11, v12, v13, v14, v27);
    }

LABEL_26:

    goto LABEL_27;
  }

  v9 = self->_ucat;
  if (v9->var0 <= 90)
  {
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x5Au))
      {
        goto LABEL_27;
      }

      v9 = self->_ucat;
    }

    LogPrintF(v9, "[CUBonjourBrowser _bonjourHandleRemoveDevice:]", 0x5Au, "### Bonjour device found without identifier: %@\n", v5, v6, v7, v8, v4);
  }

LABEL_27:
}

- (void)_bonjourHandleAddOrUpdateDevice:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39 = 0;
  v40 = 0;
  v41[0] = 0;
  BonjourDevice_GetDeviceID(v4, v41 + 2, &v39);
  if (!v39)
  {
    v10 = NSStringWithMACAddress(v41 + 2);
    v11 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v10];
    v12 = v11;
    if (v11)
    {
      v13 = [(CUBonjourDevice *)v11 updateWithBonjourDeviceInfo:v4];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
LABEL_8:
          v15 = v12;
          if (objc_opt_respondsToSelector())
          {
            v16 = [(CUBonjourDevice *)v15 shortDescription];
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              [(CUBonjourDevice *)v15 descriptionWithLevel:50];
            }

            else
            {
              [(CUBonjourDevice *)v15 description];
            }
            v16 = ;
          }

          v27 = v16;

          LogPrintF(ucat, "[CUBonjourBrowser _bonjourHandleAddOrUpdateDevice:]", 0x1Eu, "Changed %@ %#{flags}\n", v28, v29, v30, v31, v27);
          goto LABEL_30;
        }

        if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          ucat = self->_ucat;
          goto LABEL_8;
        }
      }

LABEL_30:
      deviceChangedHandler = self->_deviceChangedHandler;
      if (deviceChangedHandler)
      {
        deviceChangedHandler[2](deviceChangedHandler, v12, v13);
      }

LABEL_37:

      goto LABEL_38;
    }

    v12 = objc_alloc_init(CUBonjourDevice);
    v17 = *(v41 + 2);
    *&v12->_deviceIDBytes[4] = HIWORD(v41[0]);
    *v12->_deviceIDBytes = v17;
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v40];
    [(CUBonjourDevice *)v12 setIdentifier:v18];
    [(CUBonjourDevice *)v12 setIdentifierUUID:v18];
    [(CUBonjourDevice *)v12 setIdentifierStr:v10];
    [(CUBonjourDevice *)v12 updateWithBonjourDeviceInfo:v4];
    v19 = self;
    objc_sync_enter(v19);
    deviceMap = self->_deviceMap;
    if (!deviceMap)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v23 = self->_deviceMap;
      p_deviceMap = &self->_deviceMap;
      *p_deviceMap = v21;

      deviceMap = *p_deviceMap;
    }

    [(NSMutableDictionary *)deviceMap setObject:v12 forKeyedSubscript:v10];
    objc_sync_exit(v19);

    v24 = v19->_ucat;
    if (v24->var0 <= 30)
    {
      if (v24->var0 != -1)
      {
LABEL_14:
        v25 = v12;
        if (objc_opt_respondsToSelector())
        {
          v26 = [(CUBonjourDevice *)v25 shortDescription];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [(CUBonjourDevice *)v25 descriptionWithLevel:50];
          }

          else
          {
            [(CUBonjourDevice *)v25 description];
          }
          v26 = ;
        }

        v33 = v26;

        LogPrintF(v24, "[CUBonjourBrowser _bonjourHandleAddOrUpdateDevice:]", 0x1Eu, "Found %@\n", v34, v35, v36, v37, v33);
        goto LABEL_34;
      }

      if (_LogCategory_Initialize(v19->_ucat, 0x1Eu))
      {
        v24 = v19->_ucat;
        goto LABEL_14;
      }
    }

LABEL_34:
    deviceFoundHandler = v19->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      deviceFoundHandler[2](deviceFoundHandler, v12);
    }

    goto LABEL_37;
  }

  v9 = self->_ucat;
  if (v9->var0 <= 90)
  {
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x5Au))
      {
        goto LABEL_38;
      }

      v9 = self->_ucat;
    }

    LogPrintF(v9, "[CUBonjourBrowser _bonjourHandleAddOrUpdateDevice:]", 0x5Au, "### Bonjour device found without identifier: %@\n", v5, v6, v7, v8, v4);
  }

LABEL_38:
}

- (void)_bonjourHandleEventType:(unsigned int)a3 info:(id)a4
{
  v6 = a4;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v6 = [(CUBonjourBrowser *)self _bonjourHandleAddOrUpdateDevice:?];
    }

    else if (a3 == 2)
    {
      v6 = [(CUBonjourBrowser *)self _bonjourHandleRemoveDevice:?];
    }

    goto LABEL_20;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_20;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_15;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x3Cu))
      {
        goto LABEL_15;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBonjourBrowser _bonjourHandleEventType:info:]", 0x3Cu, "### Bonjour daemon crashed\n", v7, v8, v9, v10, v14);
LABEL_15:
    v6 = [(CUBonjourBrowser *)self _interrupted];
    goto LABEL_20;
  }

  v12 = self->_ucat;
  if (v12->var0 <= 30)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize(v12, 0x1Eu))
      {
        goto LABEL_17;
      }

      v12 = self->_ucat;
    }

    LogPrintF(v12, "[CUBonjourBrowser _bonjourHandleEventType:info:]", 0x1Eu, "Bonjour stopped\n", v7, v8, v9, v10, v14);
  }

LABEL_17:
  bonjourBrowser = self->_bonjourBrowser;
  if (bonjourBrowser)
  {
    CFRetain(self->_bonjourBrowser);
    dispatch_async_f(*(bonjourBrowser + 2), bonjourBrowser, _BonjourBrowser_Stop);
    CFRelease(self->_bonjourBrowser);
    self->_bonjourBrowser = 0;
  }

  v6 = [(CUBonjourBrowser *)self _invalidated];
LABEL_20:

  MEMORY[0x1EEE66BE0](v6);
}

- (int)_bonjourStart
{
  p_bonjourBrowser = &self->_bonjourBrowser;
  bonjourBrowser = self->_bonjourBrowser;
  if (bonjourBrowser)
  {
    CFRetain(self->_bonjourBrowser);
    dispatch_async_f(*(bonjourBrowser + 2), bonjourBrowser, _BonjourBrowser_Stop);
    CFRelease(*p_bonjourBrowser);
    *p_bonjourBrowser = 0;
  }

  v10 = BonjourBrowser_CreateEx(p_bonjourBrowser, self->_ucat->var4, self->_controlFlags, v2, v3, v4, v5, v6);
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    BonjourBrowser_SetDispatchQueue(self->_bonjourBrowser, self->_dispatchQueue);
    v16 = self->_bonjourBrowser;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __33__CUBonjourBrowser__bonjourStart__block_invoke;
    aBlock[3] = &unk_1E73A3178;
    aBlock[4] = self;
    BonjourBrowser_SetEventHandlerBlock(v16, aBlock);
    v15 = BonjourBrowser_Start(self->_bonjourBrowser, [(NSString *)self->_serviceType UTF8String], [(NSString *)self->_domain UTF8String], [(NSString *)self->_interfaceName UTF8String], self->_browseFlags);
    if (!v15)
    {
      return v15;
    }
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 != -1)
    {
LABEL_8:
      LogPrintF(ucat, "[CUBonjourBrowser _bonjourStart]", 0x3Cu, "### Bonjour start failed: %#m\n", v11, v12, v13, v14, v15);
      goto LABEL_10;
    }

    if (_LogCategory_Initialize(ucat, 0x3Cu))
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_10:
  v18 = *p_bonjourBrowser;
  if (*p_bonjourBrowser)
  {
    CFRetain(*p_bonjourBrowser);
    dispatch_async_f(v18[2], v18, _BonjourBrowser_Stop);
    CFRelease(*p_bonjourBrowser);
    *p_bonjourBrowser = 0;
  }

  return v15;
}

- (void)_updateLocked
{
  if (self->_browseFlagsChanged)
  {
    self->_browseFlagsChanged = 0;
    v3 = BonjourBrowser_Start(self->_bonjourBrowser, [(NSString *)self->_serviceType UTF8String], [(NSString *)self->_domain UTF8String], [(NSString *)self->_interfaceName UTF8String], self->_browseFlags);
    if (v3)
    {
      v8 = v3;
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 != -1)
        {
LABEL_5:
          LogPrintF(ucat, "[CUBonjourBrowser _updateLocked]", 0x5Au, "### Bonjour start update failed: %#m\n", v4, v5, v6, v7, v8);
          return;
        }

        if (_LogCategory_Initialize(ucat, 0x5Au))
        {
          ucat = self->_ucat;
          goto LABEL_5;
        }
      }
    }
  }
}

- (void)_update
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_invalidateCalled && obj->_bonjourBrowser)
  {
    [(CUBonjourBrowser *)obj _updateLocked];
  }

  objc_sync_exit(obj);
}

- (void)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUBonjourBrowser_update__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_lostAllDevices
{
  if (self->_deviceLostHandler)
  {
    deviceMap = self->_deviceMap;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__CUBonjourBrowser__lostAllDevices__block_invoke;
    v5[3] = &unk_1E73A3150;
    v5[4] = self;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v5];
  }

  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_deviceMap removeAllObjects];
  objc_sync_exit(v4);
}

void __35__CUBonjourBrowser__lostAllDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_3:
      LogPrintF(v11, "[CUBonjourBrowser _lostAllDevices]_block_invoke", 0x1Eu, "Bonjour lost    %@\n", v5, v6, v7, v8, v9);
      v10 = *(a1 + 32);
      goto LABEL_5;
    }

    v12 = _LogCategory_Initialize(v11, 0x1Eu);
    v10 = *(a1 + 32);
    if (v12)
    {
      v11 = *(v10 + 40);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(v10 + 120) + 16))();
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x32u))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBonjourBrowser _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v19);
    }
  }

LABEL_7:
  if (!self->_bonjourBrowser)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v13 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    v18 = self->_ucat;
    if (v18->var0 <= 10)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize(v18, 0xAu))
        {
          return;
        }

        v18 = self->_ucat;
      }

      LogPrintF(v18, "[CUBonjourBrowser _invalidated]", 0xAu, "Invalidated\n", v14, v15, v16, v17, v21);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUBonjourBrowser_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CUBonjourBrowser_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 24))
  {
    return result;
  }

  v11 = result;
  *(v10 + 24) = 1;
  v12 = *(result + 32);
  v13 = *(v12 + 40);
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(*(v12 + 40), 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = *(v12 + 40);
    }

    LogPrintF(v13, "[CUBonjourBrowser invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:
  v15 = *(v12 + 16);
  if (v15)
  {
    CFRetain(*(v12 + 16));
    dispatch_async_f(v15[2], v15, _BonjourBrowser_Stop);
    v12 = *(v11 + 32);
  }

  return [v12 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  [(CUBonjourBrowser *)self _lostAllDevices];
}

- (void)_activateSafeInvokeBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activateCalled)
  {
    dispatchQueue = v5->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__CUBonjourBrowser__activateSafeInvokeBlock___block_invoke;
    v7[3] = &unk_1E73A49A0;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    v4[2](v4);
  }

  objc_sync_exit(v5);
}

uint64_t __45__CUBonjourBrowser__activateSafeInvokeBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _update];
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_activateCalled = 1;
  dispatchQueue = v2->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUBonjourBrowser_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(v2);
}

uint64_t __28__CUBonjourBrowser_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUBonjourBrowser activate]_block_invoke", 0x1Eu, "Activate %@\n", a5, a6, a7, a8, *(v9 + 104));
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 40);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v9 + 9) = 1;
  v12 = *(a1 + 32);

  return [v12 _bonjourStart];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9648;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (NSArray)devices
{
  v2 = self;
  objc_sync_enter(v2);
  deviceMap = v2->_deviceMap;
  if (deviceMap)
  {
    v4 = [(NSMutableDictionary *)deviceMap allValues];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)setBrowseFlags:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CUBonjourBrowser_setBrowseFlags___block_invoke;
  v3[3] = &unk_1E73A4340;
  v3[4] = self;
  v3[5] = a3;
  [(CUBonjourBrowser *)self _activateSafeInvokeBlock:v3];
}

uint64_t __35__CUBonjourBrowser_setBrowseFlags___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 64))
  {
    *(v2 + 64) = v1;
    *(*(result + 32) + 48) = 1;
  }

  return result;
}

- (id)descriptionWithLevel:(int)a3
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__2719;
  v73 = __Block_byref_object_dispose__2720;
  v74 = 0;
  v68 = 0;
  NSAppendPrintF(&v68, "CUBonjourBrowser %@", *&a3, v3, v4, v5, v6, v7, self->_serviceType);
  objc_storeStrong(&v74, v68);
  browseFlags = self->_browseFlags;
  if (browseFlags)
  {
    v17 = v70;
    v67 = v70[5];
    NSAppendPrintF(&v67, ", BFlags 0x%llX", v10, v11, v12, v13, v14, v15, browseFlags);
    objc_storeStrong(v17 + 5, v67);
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    v19 = v70;
    v66 = v70[5];
    NSAppendPrintF(&v66, ", CFlags 0x%X", v10, v11, v12, v13, v14, v15, changeFlags);
    objc_storeStrong(v19 + 5, v66);
  }

  v20 = self->_domain;
  v27 = v20;
  if (v20)
  {
    v28 = v70;
    obj = v70[5];
    NSAppendPrintF(&obj, ", Domain '%@'", v21, v22, v23, v24, v25, v26, v20);
    objc_storeStrong(v28 + 5, obj);
  }

  v29 = self->_interfaceName;
  v36 = v29;
  if (v29)
  {
    v37 = v70;
    v64 = v70[5];
    NSAppendPrintF(&v64, ", Interface '%@'", v30, v31, v32, v33, v34, v35, v29);
    objc_storeStrong(v37 + 5, v64);
  }

  v38 = v70;
  v63 = v70[5];
  v39 = [(NSMutableDictionary *)self->_deviceMap count];
  NSAppendPrintF(&v63, ", %d device(s)", v40, v41, v42, v43, v44, v45, v39);
  objc_storeStrong(v38 + 5, v63);
  if (a3 <= 20)
  {
    v52 = v70;
    v62 = v70[5];
    NSAppendPrintF(&v62, "\n", v46, v47, v48, v49, v50, v51, v58);
    objc_storeStrong(v52 + 5, v62);
    v53 = [(NSMutableDictionary *)self->_deviceMap count];
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 0;
    if (a3 >= 11)
    {
      v54 = 50;
    }

    else
    {
      v54 = 30;
    }

    deviceMap = self->_deviceMap;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __41__CUBonjourBrowser_descriptionWithLevel___block_invoke;
    v59[3] = &unk_1E73A3128;
    v60 = v54;
    v59[4] = &v69;
    v59[5] = v61;
    v59[6] = v53;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v59];
    _Block_object_dispose(v61, 8);
  }

  v56 = v70[5];
  _Block_object_dispose(&v69, 8);

  return v56;
}

void __41__CUBonjourBrowser_descriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel(a3, *(a1 + 56));
  NSAppendPrintF(&obj, "    %@\n", v8, v9, v10, v11, v12, v13, v7);
  objc_storeStrong((v6 + 40), obj);

  v20 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v20 >= 0x11)
  {
    v21 = *(*(a1 + 32) + 8);
    v22 = *(v21 + 40);
    NSAppendPrintF(&v22, "    ... %d more not shown\n", v14, v15, v16, v17, v18, v19, *(a1 + 48) - v20);
    objc_storeStrong((v21 + 40), v22);
    *a4 = 1;
  }
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBonjourBrowser;
  [(CUBonjourBrowser *)&v4 dealloc];
}

- (CUBonjourBrowser)init
{
  v5.receiver = self;
  v5.super_class = CUBonjourBrowser;
  v2 = [(CUBonjourBrowser *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUBonjourBrowser;
    v3 = v2;
  }

  return v2;
}

@end