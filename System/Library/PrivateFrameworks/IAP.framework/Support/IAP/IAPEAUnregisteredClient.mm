@interface IAPEAUnregisteredClient
- (IAPEAUnregisteredClient)initWithBundleId:(id)id;
- (int)_getProcessIdForUnregisteredClient;
- (void)dealloc;
- (void)releaseProcessAssertion;
- (void)takeProcessAssertion:(id)assertion;
@end

@implementation IAPEAUnregisteredClient

- (IAPEAUnregisteredClient)initWithBundleId:(id)id
{
  v6.receiver = self;
  v6.super_class = IAPEAUnregisteredClient;
  result = [(IAPEAUnregisteredClient *)&v6 init];
  v5 = result;
  if (!result)
  {
    return v5;
  }

  if (((result + 8) & 3) == 0)
  {
    result->_processId = -1;
    result = [id copy];
    if (((v5 + 16) & 7) == 0)
    {
      v5->_bundleId = &result->super.isa;
      if (((v5 + 24) & 7) == 0)
      {
        v5->_processAssertion = 0;
        if (((v5 + 32) & 7) == 0)
        {
          v5->_processAssertionStartTime = 0;
          result = objc_alloc_init(IAPApplicationStateMonitor);
          if ((&v5->_appStateMonitor & 7) == 0)
          {
            v5->_appStateMonitor = result;
            return v5;
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  if (((self + 16) & 7) != 0 || (self->_bundleId, [(IAPEAUnregisteredClient *)self releaseProcessAssertion], ((self + 40) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {

    v3.receiver = self;
    v3.super_class = IAPEAUnregisteredClient;
    [(IAPEAUnregisteredClient *)&v3 dealloc];
  }
}

- (void)takeProcessAssertion:(id)assertion
{
  p_processAssertion = &self->_processAssertion;
  if ((&self->_processAssertion & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!*p_processAssertion)
  {
    goto LABEL_9;
  }

  v5 = time(0);
  if ((&self->_processAssertionStartTime & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  processAssertionStartTime = self->_processAssertionStartTime;
  v7 = __OFSUB__(v5, processAssertionStartTime);
  v8 = v5 - processAssertionStartTime;
  if (v7)
  {
LABEL_16:
    __break(0x5515u);
    return;
  }

  if (v8 >= 3)
  {
    if (*p_processAssertion)
    {
      if (((self + 16) & 7) == 0)
      {
        sub_1000DDE90(3u, @"renewing process assertion - %s:%s - %d appId=%@ pid=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAUnregisteredClient takeProcessAssertion:]", 444, self->_bundleId, [(IAPEAUnregisteredClient *)self _getProcessIdForUnregisteredClient]);
        self->_processAssertionStartTime = 0;
        return;
      }

      goto LABEL_15;
    }

LABEL_9:
    if (((self + 16) & 7) == 0)
    {
      sub_1000DDE90(3u, @"creating process assertion - %s:%s - %d appId=%@ pid=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/common/IAPEAClient.m", "[IAPEAUnregisteredClient takeProcessAssertion:]", 438, self->_bundleId, [(IAPEAUnregisteredClient *)self _getProcessIdForUnregisteredClient]);
      [(IAPEAUnregisteredClient *)self _getProcessIdForUnregisteredClient];
      self->_processAssertion = SBSProcessAssertionCreateForPID();
      v9 = time(0);
      if ((&self->_processAssertionStartTime & 7) == 0)
      {
        self->_processAssertionStartTime = v9;
        return;
      }
    }

    goto LABEL_15;
  }

  sub_1000DDE90(3u, @"using ea process hysteresis");
}

- (void)releaseProcessAssertion
{
  p_processAssertion = &self->_processAssertion;
  if ((&self->_processAssertion & 7) != 0)
  {
    goto LABEL_6;
  }

  if (!*p_processAssertion)
  {
    return;
  }

  CFRelease(*p_processAssertion);
  self->_processAssertion = 0;
  if ((&self->_processAssertionStartTime & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
    return;
  }

  self->_processAssertionStartTime = 0;
}

- (int)_getProcessIdForUnregisteredClient
{
  p_processId = &self->_processId;
  if ((&self->_processId & 3) != 0)
  {
    goto LABEL_9;
  }

  v3 = *p_processId;
  if (*p_processId == -1)
  {
    self->_processId = 0;
    if ((&self->_bundleId & 7) == 0)
    {
      if (!self->_bundleId)
      {
        v3 = 0;
        goto LABEL_8;
      }

      if ((&self->_appStateMonitor & 7) == 0)
      {
        v4 = [(IAPApplicationStateMonitor *)self->_appStateMonitor applicationInfoForBundleIDSync:?];
        v3 = [objc_msgSend(v4 valueForKey:{BKSApplicationStateProcessIDKey), "unsignedIntegerValue"}];
        *p_processId = v3;
        goto LABEL_8;
      }
    }

LABEL_9:
    __break(0x5516u);
    return self;
  }

LABEL_8:
  LODWORD(self) = v3;
  return self;
}

@end