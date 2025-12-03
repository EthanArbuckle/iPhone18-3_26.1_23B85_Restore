@interface IMSystemProxySettingsFetcher
- (IMSystemProxySettingsFetcher)initWithHost:(id)host port:(unsigned __int16)port delegate:(id)delegate;
- (IMSystemProxySettingsFetcher)initWithProxyProtocol:(int64_t)protocol proxyHost:(id)host proxyPort:(unsigned __int16)port delegate:(id)delegate;
- (void)_callAccountSettingsDelegateMethod;
- (void)_callProxySettingsDelegateMethod;
- (void)_getProxyAccountAndPasswordFromKeychain;
- (void)retrieveProxyAccountSettings;
@end

@implementation IMSystemProxySettingsFetcher

- (void)_callProxySettingsDelegateMethod
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_systemProxySettingsFetcher_retrievedHost_port_protocol_(v5, v4, self, self->_proxyHost, self->_proxyPort, self->_proxyProtocol);
}

- (void)_callAccountSettingsDelegateMethod
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_systemProxySettingsFetcher_retrievedAccount_password_(v5, v4, self, self->_proxyAccount, self->_proxyPassword);
}

- (void)_getProxyAccountAndPasswordFromKeychain
{
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v4, sel__callAccountSettingsDelegateMethod, 0, 0);

  objc_autoreleasePoolPop(v3);
}

- (IMSystemProxySettingsFetcher)initWithHost:(id)host port:(unsigned __int16)port delegate:(id)delegate
{
  hostCopy = host;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = IMSystemProxySettingsFetcher;
  v11 = [(IMSystemProxySettingsFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_proxyProtocol = 4;
    v11->_delegate = delegateCopy;
    objc_storeStrong(&v11->_host, host);
    v12->_port = port;
  }

  return v12;
}

- (IMSystemProxySettingsFetcher)initWithProxyProtocol:(int64_t)protocol proxyHost:(id)host proxyPort:(unsigned __int16)port delegate:(id)delegate
{
  hostCopy = host;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = IMSystemProxySettingsFetcher;
  v13 = [(IMSystemProxySettingsFetcher *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_proxyProtocol = protocol;
    v13->_delegate = delegateCopy;
    objc_storeStrong(&v13->_proxyHost, host);
    v14->_proxyPort = port;
  }

  return v14;
}

- (void)retrieveProxyAccountSettings
{
  if (self->_proxyAccount)
  {
    (MEMORY[0x1EEE66B58])(self, sel__callAccountSettingsDelegateMethod);
  }

  else
  {
    objc_msgSend_performSelectorInBackground_withObject_(self, a2, sel__getProxyAccountAndPasswordFromKeychain, 0);
  }
}

@end