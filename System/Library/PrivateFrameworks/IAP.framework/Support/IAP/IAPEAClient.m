@interface IAPEAClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)cameraSupportedByClient;
- (BOOL)canSendConnectionEventForAccessory:(id)a3;
- (BOOL)clientRequiresAccReset;
- (BOOL)locationSupportedByClient;
- (BOOL)supportsAccessibility;
- (int)_getProcessId;
- (void)_setJetsamPrioritySpecialCasing:(BOOL)a3;
- (void)dealloc;
- (void)decreaseSessionRefCount;
- (void)increaseSessionRefCount;
- (void)setApplicationState:(unsigned int)a3;
- (void)setCameraSupportedByClient:(BOOL)a3;
- (void)setClientID:(unsigned int)a3;
- (void)setLocationSupportedByClient:(BOOL)a3;
- (void)takeProcessAssertion:(id)a3;
@end

@implementation IAPEAClient

- (void)dealloc
{
  if ((&self->_iapSessionRefCount & 3) != 0)
  {
    goto LABEL_22;
  }

  if (self->_iapSessionRefCount)
  {
    [(IAPEAClient *)self _setJetsamPrioritySpecialCasing:0];
  }

  if (((self + 8) & 3) != 0)
  {
    goto LABEL_22;
  }

  sub_1000DDE90(3u, @"DEALLOC - %s:%s - %d clientID=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAClient dealloc]", 148, self->_clientID);
  p_processAssertionTimer = &self->_processAssertionTimer;
  if ((&self->_processAssertionTimer & 7) != 0)
  {
    goto LABEL_22;
  }

  if (*p_processAssertionTimer)
  {
    dispatch_source_cancel(*p_processAssertionTimer);
    if (!*p_processAssertionTimer)
    {
      goto LABEL_23;
    }

    dispatch_release(*p_processAssertionTimer);
    *p_processAssertionTimer = 0;
  }

  p_processAssertionQ = &self->_processAssertionQ;
  if ((&self->_processAssertionQ & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  v5 = *p_processAssertionQ;
  if (*p_processAssertionQ)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ADE48;
    block[3] = &unk_100111C88;
    block[4] = self;
    dispatch_sync(v5, block);
    if ((&self->_processAssertionStartTime & 7) != 0)
    {
      goto LABEL_22;
    }

    self->_processAssertionStartTime = 0;
    if (!*p_processAssertionQ)
    {
      goto LABEL_23;
    }

    dispatch_sync(*p_processAssertionQ, &stru_100116720);
    if (!*p_processAssertionQ)
    {
      goto LABEL_23;
    }

    dispatch_release(*p_processAssertionQ);
    p_xpcConnection = &self->_xpcConnection;
    if ((&self->_xpcConnection & 7) != 0)
    {
      goto LABEL_22;
    }

    if (*p_xpcConnection)
    {
      xpc_release(*p_xpcConnection);
      if ([(IAPEAClient *)self locationSupportedByClient])
      {
        dword_10012BEC0 = 0;
      }

      if (((self + 0x80) & 7) == 0)
      {

        if (((self + 56) & 7) == 0)
        {

          if (((self + 72) & 7) == 0)
          {

            v7.receiver = self;
            v7.super_class = IAPEAClient;
            [(IAPEAClient *)&v7 dealloc];
            return;
          }
        }
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  __break(0x5510u);
}

- (void)takeProcessAssertion:(id)a3
{
  if ((&self->_capabilities & 3) != 0)
  {
    goto LABEL_12;
  }

  if ((self->_capabilities & 0x10) == 0)
  {
    return;
  }

  if ((&self->_processAssertion & 7) != 0)
  {
    goto LABEL_12;
  }

  if (self->_processAssertion)
  {
    v5 = time(0);
    if ((&self->_processAssertionStartTime & 7) != 0)
    {
LABEL_12:
      __break(0x5516u);
      goto LABEL_13;
    }

    processAssertionStartTime = self->_processAssertionStartTime;
    v7 = __OFSUB__(v5, processAssertionStartTime);
    v8 = v5 - processAssertionStartTime;
    if (v7)
    {
LABEL_14:
      __break(0x5515u);
      return;
    }

    if (v8 < 3)
    {
      return;
    }
  }

  p_processAssertionQ = &self->_processAssertionQ;
  if ((&self->_processAssertionQ & 7) != 0)
  {
    goto LABEL_12;
  }

  v10 = *p_processAssertionQ;
  if (!*p_processAssertionQ)
  {
LABEL_13:
    __break(0x5510u);
    goto LABEL_14;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000ADFA4;
  v11[3] = &unk_100114558;
  v11[4] = self;
  v11[5] = a3;
  dispatch_sync(v10, v11);
}

- (BOOL)canSendConnectionEventForAccessory:(id)a3
{
  v5 = [(IAPEAClient *)self capabilities];
  v6 = [(IAPEAClient *)self capabilities];
  v7 = [(IAPEAClient *)self capabilities];
  v8 = [(IAPEAClient *)self applicationState];
  v9 = [(IAPEAClient *)self applicationState];
  v10 = [a3 objectForKey:IAPAppAccessoryProtocolsKey];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if ((&self->_clientEAProtocols & 7) != 0)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v10 = [(NSArray *)self->_clientEAProtocols count];
  if (v10)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AE430;
    v24[3] = &unk_100116770;
    v24[4] = self;
    v24[5] = &v25;
    LOBYTE(v10) = [v11 enumerateKeysAndObjectsUsingBlock:v24];
    v12 = *(v26 + 24);
    if (v12 >= 2)
    {
      goto LABEL_26;
    }

    if ((v12 & 1) == 0)
    {
      if ((&self->_bundleId & 7) != 0)
      {
LABEL_27:
        __break(0x5516u);
        return v10;
      }

      sub_1000DDE90(3u, @"No protocols found for client %@", self->_bundleId);
    }
  }

  v13 = *(v26 + 24);
  if (v13 > 1)
  {
    goto LABEL_26;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  entitlementForAllAccessories = self->_entitlementForAllAccessories;
  if (entitlementForAllAccessories > 1)
  {
LABEL_26:
    __break(0x550Au);
    goto LABEL_27;
  }

  if ((entitlementForAllAccessories & 1) == 0)
  {
    LOBYTE(v17) = 0;
    goto LABEL_25;
  }

LABEL_11:
  v15 = v6 & 0x20;
  v16 = v7 & 0x8000;
  v17 = 1;
  v18 = v5 & 0x10;
  if (!v18 && v16)
  {
    v19 = v9 > 4;
    if (v8 == 4 || v15 == 0)
    {
      v19 = v15 != 0;
    }

    v17 = v9 > 4 || v19;
  }

  if (((self + 56) & 7) != 0)
  {
    goto LABEL_27;
  }

  v21 = v9 > 4;
  v22 = self->_entitlementForAllAccessories;
  if (v22 > 1)
  {
    goto LABEL_26;
  }

  sub_1000DDE90(3u, @"bundleID %@ supportsEAWhenSuspended = %d, supportsEAInBackground = %d, clientAppStateInBackground = %d, clientAppStateInForeground = %d, clientLinksUIApplication = %d, _entitlementForAllAccessories = %d, anyProtocolFound = %d, self.applicationState = 0x%X, canSendConnectionEvent = %d", self->_bundleId, v18 >> 4, v15 >> 5, v8 == 4, v21, v16 >> 15, v22, v13, [(IAPEAClient *)self applicationState], v17);
LABEL_25:
  _Block_object_dispose(&v25, 8);
  LOBYTE(v10) = v17;
  return v10;
}

- (void)increaseSessionRefCount
{
  p_iapSessionRefCount = &self->_iapSessionRefCount;
  if ((&self->_iapSessionRefCount & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    iapSessionRefCount = *p_iapSessionRefCount;
    if (!*p_iapSessionRefCount)
    {
      [(IAPEAClient *)self _setJetsamPrioritySpecialCasing:1];
      iapSessionRefCount = self->_iapSessionRefCount;
    }

    v5 = __OFADD__(iapSessionRefCount, 1);
    v6 = iapSessionRefCount + 1;
    if (!v5)
    {
      *p_iapSessionRefCount = v6;
      return;
    }
  }

  __break(0x5500u);
}

- (void)decreaseSessionRefCount
{
  p_iapSessionRefCount = &self->_iapSessionRefCount;
  iapSessionRefCount = self->_iapSessionRefCount;
  v4 = __OFSUB__(iapSessionRefCount, 1);
  v5 = iapSessionRefCount - 1;
  if (v4)
  {
    __break(0x5515u);
    goto LABEL_9;
  }

  *p_iapSessionRefCount = v5;
  if ((p_iapSessionRefCount & 3) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return;
  }

  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    NSLog(@"ERROR - %s:%s - %d session ref count is < 0 for pid=%d, please file a bug", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAClient decreaseSessionRefCount]", 304, [(IAPEAClient *)self _getProcessId]);
    return;
  }

  [(IAPEAClient *)self _setJetsamPrioritySpecialCasing:0];
  if (self->_iapSessionRefCount < 0)
  {
    goto LABEL_7;
  }
}

- (void)setLocationSupportedByClient:(BOOL)a3
{
  if (!a3)
  {
    clientID = 0;
    goto LABEL_7;
  }

  if (dword_10012BEC0)
  {
    NSLog(@"ERROR - %s:%s - %d there is already a client (0x%x) supporting location", a2, "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAClient setLocationSupportedByClient:]", 314, dword_10012BEC0);
  }

  if ((&self->_clientID & 3) == 0)
  {
    clientID = self->_clientID;
LABEL_7:
    dword_10012BEC0 = clientID;
    return;
  }

  __break(0x5516u);
}

- (BOOL)locationSupportedByClient
{
  if ((&self->_clientID & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    clientID = self->_clientID;
    if (clientID)
    {
      v3 = dword_10012BEC0 == clientID;
    }

    else
    {
      v3 = 0;
    }

    LOBYTE(self) = v3;
  }

  return self;
}

- (void)setCameraSupportedByClient:(BOOL)a3
{
  if (!a3)
  {
    clientID = 0;
    goto LABEL_7;
  }

  if (dword_10012BEC4)
  {
    NSLog(@"ERROR - %s:%s - %d there is already a client (0x%x) supporting camera", a2, "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAClient setCameraSupportedByClient:]", 336, dword_10012BEC4);
  }

  if ((&self->_clientID & 3) == 0)
  {
    clientID = self->_clientID;
LABEL_7:
    dword_10012BEC4 = clientID;
    return;
  }

  __break(0x5516u);
}

- (BOOL)cameraSupportedByClient
{
  if ((&self->_clientID & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    clientID = self->_clientID;
    if (clientID)
    {
      v3 = dword_10012BEC4 == clientID;
    }

    else
    {
      v3 = 0;
    }

    LOBYTE(self) = v3;
  }

  return self;
}

- (int)_getProcessId
{
  p_processId = &self->_processId;
  if ((&self->_processId & 3) != 0)
  {
    goto LABEL_12;
  }

  v3 = self;
  LODWORD(self) = *p_processId;
  if (*p_processId != -1)
  {
    return self;
  }

  v3->_processId = 0;
  self = [(IAPEAClient *)v3 xpcConnection];
  if (!self)
  {
    goto LABEL_13;
  }

  pid = xpc_connection_get_pid(self);
  if ((pid + 1) > 1)
  {
    v6 = pid;
    NSLog(@"got valid pid from xpc connection, setting _processID to xpcConnectionPid %d", pid);
    *p_processId = v6;
    LODWORD(self) = v6;
    return self;
  }

  NSLog(@"invalid pid, falling back to bundleID");
  if ((&v3->_bundleId & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!v3->_bundleId)
  {
    LODWORD(self) = *p_processId;
    return self;
  }

  if ((&v3->_appStateMonitor & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
LABEL_13:
    __break(0x5510u);
    return self;
  }

  v5 = [(IAPApplicationStateMonitor *)v3->_appStateMonitor applicationInfoForBundleIDSync:?];
  LODWORD(self) = [objc_msgSend(v5 valueForKey:{BKSApplicationStateProcessIDKey), "unsignedIntegerValue"}];
  *p_processId = self;
  return self;
}

- (void)_setJetsamPrioritySpecialCasing:(BOOL)a3
{
  p_bksProcessAssertion = &self->_bksProcessAssertion;
  v5 = &self->_bksProcessAssertion & 7;
  if (a3)
  {
    if (!v5)
    {
      if (*p_bksProcessAssertion)
      {
        return;
      }

      v6 = [[BKSProcessAssertion alloc] initWithPID:-[IAPEAClient _getProcessId](self flags:"_getProcessId") reason:13 name:{3, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.iapd.ea.assertion.pid.%d", -[IAPEAClient _getProcessId](self, "_getProcessId"))}];
      self->_bksProcessAssertion = v6;
      [(BKSProcessAssertion *)v6 acquire];
      v7 = @"Taking BKSProcessAssertion for pid %d";
      goto LABEL_8;
    }

LABEL_10:
    __break(0x5516u);
    return;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (!*p_bksProcessAssertion)
  {
    return;
  }

  [*p_bksProcessAssertion invalidate];

  *p_bksProcessAssertion = 0;
  v7 = @"Removing BKSProcessAssertion for pid %d";
LABEL_8:
  NSLog(&v7->isa, [(IAPEAClient *)self _getProcessId]);
}

- (void)setClientID:(unsigned int)a3
{
  if ((&self->_clientID & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self->_clientID = a3;
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)supportsAccessibility
{
  if (self->_supportsAccessibility >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_supportsAccessibility;
  }

  return self;
}

- (BOOL)clientRequiresAccReset
{
  if (self->_clientRequiresAccReset >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_clientRequiresAccReset;
  }

  return self;
}

- (void)setApplicationState:(unsigned int)a3
{
  if ((&self->_applicationState & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self->_applicationState = a3;
  }
}

@end