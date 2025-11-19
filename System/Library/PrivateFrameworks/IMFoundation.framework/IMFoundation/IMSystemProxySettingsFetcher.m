@interface IMSystemProxySettingsFetcher
- (IMSystemProxySettingsFetcher)initWithHost:(id)a3 port:(unsigned __int16)a4 delegate:(id)a5;
- (IMSystemProxySettingsFetcher)initWithProxyProtocol:(int64_t)a3 proxyHost:(id)a4 proxyPort:(unsigned __int16)a5 delegate:(id)a6;
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

- (IMSystemProxySettingsFetcher)initWithHost:(id)a3 port:(unsigned __int16)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IMSystemProxySettingsFetcher;
  v11 = [(IMSystemProxySettingsFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_proxyProtocol = 4;
    v11->_delegate = v10;
    objc_storeStrong(&v11->_host, a3);
    v12->_port = a4;
  }

  return v12;
}

- (IMSystemProxySettingsFetcher)initWithProxyProtocol:(int64_t)a3 proxyHost:(id)a4 proxyPort:(unsigned __int16)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = IMSystemProxySettingsFetcher;
  v13 = [(IMSystemProxySettingsFetcher *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_proxyProtocol = a3;
    v13->_delegate = v12;
    objc_storeStrong(&v13->_proxyHost, a4);
    v14->_proxyPort = a5;
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