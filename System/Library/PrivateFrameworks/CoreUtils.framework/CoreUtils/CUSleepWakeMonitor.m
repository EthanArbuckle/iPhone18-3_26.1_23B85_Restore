@interface CUSleepWakeMonitor
- (CUSleepWakeMonitor)init;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_sleepWakeHandlerForService:(unsigned int)a3 type:(unsigned int)a4 arg:(void *)a5;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)a3;
@end

@implementation CUSleepWakeMonitor

- (void)_sleepWakeHandlerForService:(unsigned int)a3 type:(unsigned int)a4 arg:(void *)a5
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (a4 > -536870369)
  {
    if (a4 > -536870289)
    {
      if (a4 <= -536870257)
      {
        if (a4 == -536870288)
        {
          v12 = "CanSystemSleep";
          goto LABEL_51;
        }

        if (a4 == -536870272)
        {
          v12 = "SystemWillSleep";
          goto LABEL_51;
        }
      }

      else
      {
        switch(a4)
        {
          case 0xE0000290:
            v12 = "SystemWillNotSleep";
            goto LABEL_51;
          case 0xE0000300:
            v12 = "SystemHasPoweredOn";
            goto LABEL_51;
          case 0xE0000310:
            v12 = "SystemWillRestart";
            goto LABEL_51;
        }
      }
    }

    else if (a4 <= -536870337)
    {
      if (a4 == -536870368)
      {
        v12 = "DeviceWillNotPowerOff";
        goto LABEL_51;
      }

      if (a4 == -536870352)
      {
        v12 = "DeviceHasPoweredOn";
        goto LABEL_51;
      }
    }

    else
    {
      switch(a4)
      {
        case 0xE0000240:
          v12 = "CanSystemPowerOff";
          goto LABEL_51;
        case 0xE0000250:
          v12 = "SystemWillPowerOff";
          goto LABEL_51;
        case 0xE0000260:
          v12 = "SystemWillNotPowerOff";
          goto LABEL_51;
      }
    }
  }

  else if (a4 > -536870641)
  {
    if (a4 <= -536870609)
    {
      if (a4 == -536870640)
      {
        v12 = "WasClosed";
        goto LABEL_51;
      }

      if (a4 == -536870624)
      {
        v12 = "BusyStateChange";
        goto LABEL_51;
      }
    }

    else
    {
      switch(a4)
      {
        case 0xE0000130:
          v12 = "PropertyChange";
          goto LABEL_51;
        case 0xE0000200:
          v12 = "CanDevicePowerOff";
          goto LABEL_51;
        case 0xE0000210:
          v12 = "DeviceWillPowerOff";
          goto LABEL_51;
      }
    }
  }

  else if (a4 <= -536870865)
  {
    if (a4 == -536870896)
    {
      v12 = "IsTerminated";
      goto LABEL_51;
    }

    if (a4 == -536870880)
    {
      v12 = "IsSuspended";
      goto LABEL_51;
    }
  }

  else
  {
    switch(a4)
    {
      case 0xE0000030:
        v12 = "IsResumed";
        goto LABEL_51;
      case 0xE0000100:
        v12 = "IsRequestingClose";
        goto LABEL_51;
      case 0xE0000101:
        v12 = "IsAttemptingOpen";
        goto LABEL_51;
    }
  }

  if (a4 == -536870112)
  {
    v12 = "SystemWillPowerOn";
  }

  else
  {
    v12 = "?";
  }

LABEL_51:
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_55;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_53;
  }

  if (_LogCategory_Initialize(ucat, 0x1Eu))
  {
    ucat = self->_ucat;
LABEL_53:
    LogPrintF(ucat, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]", 0x1Eu, "Event: %s\n", v8, v9, v10, v11, v12);
  }

LABEL_55:
  HIDWORD(v15) = a4 + 536870336;
  LODWORD(v15) = a4 + 536870336;
  v14 = v15 >> 4;
  if (v14 > 3)
  {
    if (v14 != 4)
    {
      if (v14 != 12)
      {
        if (v14 != 13)
        {
          return;
        }

        v16 = _Block_copy(self->_sleepWakeHandler);
        if (!v16)
        {
          goto LABEL_77;
        }

        v17 = v16[2];
        v32 = v16;
        goto LABEL_76;
      }

      v16 = _Block_copy(self->_sleepWakeHandler);
      if (v16)
      {
        v17 = v16[2];
        v32 = v16;
LABEL_76:
        v17();
        v16 = v32;
        goto LABEL_77;
      }

      goto LABEL_77;
    }

    v24 = _Block_copy(self->_sleepWakeHandler);
    v25 = v24;
    if (v24)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __59__CUSleepWakeMonitor__sleepWakeHandlerForService_type_arg___block_invoke;
      v33[3] = &unk_1E73A3C10;
      v34 = a4;
      v33[4] = self;
      v33[5] = a5;
      (*(v24 + 2))(v24, 10, v33);
    }

    else
    {
      powerCnx = self->_powerCnx;
      if (!powerCnx)
      {
        return;
      }

      if (IOAllowPowerChange(powerCnx, a5))
      {
        v31 = self->_ucat;
        if (v31->var0 <= 90)
        {
          if (v31->var0 == -1)
          {
            if (!_LogCategory_Initialize(v31, 0x5Au))
            {
              goto LABEL_70;
            }

            v31 = self->_ucat;
          }

          LogPrintF(v31, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]", 0x5Au, "### Ack failed (%s): %#m\n", v27, v28, v29, v30, v12);
        }
      }
    }

LABEL_70:

    return;
  }

  if (v14 == 1)
  {
    v16 = _Block_copy(self->_sleepWakeHandler);
    if (v16)
    {
      v17 = v16[2];
      v32 = v16;
      goto LABEL_76;
    }

LABEL_77:

    return;
  }

  if (v14 == 3)
  {
    v18 = self->_powerCnx;
    if (v18)
    {
      if (IOAllowPowerChange(v18, a5))
      {
        v23 = self->_ucat;
        if (v23->var0 <= 90)
        {
          if (v23->var0 == -1)
          {
            if (!_LogCategory_Initialize(v23, 0x5Au))
            {
              return;
            }

            v23 = self->_ucat;
          }

          LogPrintF(v23, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]", 0x5Au, "### Ack failed (%s): %#m\n", v19, v20, v21, v22, v12);
        }
      }
    }
  }
}

void __59__CUSleepWakeMonitor__sleepWakeHandlerForService_type_arg___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CUSleepWakeMonitor__sleepWakeHandlerForService_type_arg___block_invoke_2;
  block[3] = &unk_1E73A3C10;
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v2 = *(v4 + 48);
  v5 = v1;
  dispatch_async(v2, block);
}

uint64_t __59__CUSleepWakeMonitor__sleepWakeHandlerForService_type_arg___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  v9 = *(v8 + 12);
  if (!v9)
  {
    return result;
  }

  v10 = result;
  v11 = *(result + 48);
  if (v11 > -536870369)
  {
    if (v11 > -536870289)
    {
      if (v11 <= -536870257)
      {
        if (v11 == -536870288)
        {
          v12 = "CanSystemSleep";
          goto LABEL_52;
        }

        if (v11 == -536870272)
        {
          v12 = "SystemWillSleep";
          goto LABEL_52;
        }
      }

      else
      {
        switch(v11)
        {
          case -536870256:
            v12 = "SystemWillNotSleep";
            goto LABEL_52;
          case -536870144:
            v12 = "SystemHasPoweredOn";
            goto LABEL_52;
          case -536870128:
            v12 = "SystemWillRestart";
            goto LABEL_52;
        }
      }
    }

    else if (v11 <= -536870337)
    {
      if (v11 == -536870368)
      {
        v12 = "DeviceWillNotPowerOff";
        goto LABEL_52;
      }

      if (v11 == -536870352)
      {
        v12 = "DeviceHasPoweredOn";
        goto LABEL_52;
      }
    }

    else
    {
      switch(v11)
      {
        case -536870336:
          v12 = "CanSystemPowerOff";
          goto LABEL_52;
        case -536870320:
          v12 = "SystemWillPowerOff";
          goto LABEL_52;
        case -536870304:
          v12 = "SystemWillNotPowerOff";
          goto LABEL_52;
      }
    }
  }

  else if (v11 > -536870641)
  {
    if (v11 <= -536870609)
    {
      if (v11 == -536870640)
      {
        v12 = "WasClosed";
        goto LABEL_52;
      }

      if (v11 == -536870624)
      {
        v12 = "BusyStateChange";
        goto LABEL_52;
      }
    }

    else
    {
      switch(v11)
      {
        case -536870608:
          v12 = "PropertyChange";
          goto LABEL_52;
        case -536870400:
          v12 = "CanDevicePowerOff";
          goto LABEL_52;
        case -536870384:
          v12 = "DeviceWillPowerOff";
          goto LABEL_52;
      }
    }
  }

  else if (v11 <= -536870865)
  {
    if (v11 == -536870896)
    {
      v12 = "IsTerminated";
      goto LABEL_52;
    }

    if (v11 == -536870880)
    {
      v12 = "IsSuspended";
      goto LABEL_52;
    }
  }

  else
  {
    switch(v11)
    {
      case -536870864:
        v12 = "IsResumed";
        goto LABEL_52;
      case -536870656:
        v12 = "IsRequestingClose";
        goto LABEL_52;
      case -536870655:
        v12 = "IsAttemptingOpen";
        goto LABEL_52;
    }
  }

  if (v11 == -536870112)
  {
    v12 = "SystemWillPowerOn";
  }

  else
  {
    v12 = "?";
  }

LABEL_52:
  v13 = *(v8 + 40);
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        goto LABEL_56;
      }

      v13 = *(*(v10 + 32) + 40);
    }

    LogPrintF(v13, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]_block_invoke_2", 0x1Eu, "Event: %s async ack\n", a5, a6, a7, a8, v12);
  }

LABEL_56:
  result = IOAllowPowerChange(v9, *(v10 + 40));
  if (result)
  {
    result = *(*(v10 + 32) + 40);
    if (*result <= 90)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]_block_invoke_2", 0x5Au, "### Ack failed (%s): %#m\n", v14, v15, v16, v17, v12);
      }

      result = _LogCategory_Initialize(result, 0x5Au);
      if (result)
      {
        result = *(*(v10 + 32) + 40);
        return LogPrintF(result, "[CUSleepWakeMonitor _sleepWakeHandlerForService:type:arg:]_block_invoke_2", 0x5Au, "### Ack failed (%s): %#m\n", v14, v15, v16, v17, v12);
      }
    }
  }

  return result;
}

- (void)_ensureStopped
{
  if (self->_powerCnx)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[CUSleepWakeMonitor _ensureStopped]", 0x1Eu, "Monitoring stop\n", v2, v3, v4, v5, v10);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  IODeregisterForSystemPower(&self->_powerNotifier);
  powerNotificationPort = self->_powerNotificationPort;
  if (powerNotificationPort)
  {
    IONotificationPortDestroy(powerNotificationPort);
    self->_powerNotificationPort = 0;
  }

  powerCnx = self->_powerCnx;
  if (powerCnx)
  {
    IOServiceClose(powerCnx);
    self->_powerCnx = 0;
  }
}

- (void)_ensureStarted
{
  if (self->_powerCnx)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_5:
      LogPrintF(ucat, "[CUSleepWakeMonitor _ensureStarted]", 0x1Eu, "Monitoring start\n", v2, v3, v4, v5, v20);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_7:
  v8 = IORegisterForSystemPower(self, &self->_powerNotificationPort, _sleepWakeCallback, &self->_powerNotifier);
  self->_powerCnx = v8;
  if (v8)
  {
    powerNotificationPort = self->_powerNotificationPort;
    if (powerNotificationPort)
    {
      if (self->_powerNotifier)
      {
        dispatchQueue = self->_dispatchQueue;

        IONotificationPortSetDispatchQueue(powerNotificationPort, dispatchQueue);
        return;
      }

      v15 = "notifier null";
    }

    else
    {
      v15 = "port null";
    }
  }

  else
  {
    v15 = "cnx null";
  }

  v16 = self->_ucat;
  if (v16->var0 <= 90)
  {
    if (v16->var0 == -1)
    {
      v21 = v15;
      v17 = _LogCategory_Initialize(v16, 0x5Au);
      v15 = v21;
      if (!v17)
      {
        goto LABEL_20;
      }

      v16 = self->_ucat;
    }

    LogPrintF(v16, "[CUSleepWakeMonitor _ensureStarted]", 0x5Au, "### Monitoring start failed (%s)\n", v9, v10, v11, v12, v15);
  }

LABEL_20:
  IODeregisterForSystemPower(&self->_powerNotifier);
  v18 = self->_powerNotificationPort;
  if (v18)
  {
    IONotificationPortDestroy(v18);
    self->_powerNotificationPort = 0;
  }

  powerCnx = self->_powerCnx;
  if (powerCnx)
  {
    IOServiceClose(powerCnx);
    self->_powerCnx = 0;
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

    sleepWakeHandler = self->_sleepWakeHandler;
    self->_sleepWakeHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUSleepWakeMonitor _invalidated]", 0x1Eu, "Invalidated\n", v6, v7, v8, v9, v12);
    }
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v10 = v6;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUSleepWakeMonitor _invalidate]", 0x1Eu, "Invalidating\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CUSleepWakeMonitor *)self _ensureStopped];

  [(CUSleepWakeMonitor *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CUSleepWakeMonitor_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CUSleepWakeMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __45__CUSleepWakeMonitor_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[5];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUSleepWakeMonitor activateWithCompletion:]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[5];
      goto LABEL_3;
    }
  }

LABEL_5:
  [v9 _ensureStarted];
  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA398;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
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
  v4.super_class = CUSleepWakeMonitor;
  [(CUSleepWakeMonitor *)&v4 dealloc];
}

- (CUSleepWakeMonitor)init
{
  v6.receiver = self;
  v6.super_class = CUSleepWakeMonitor;
  v2 = [(CUSleepWakeMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUSleepWakeMonitor;
    v4 = v3;
  }

  return v3;
}

@end