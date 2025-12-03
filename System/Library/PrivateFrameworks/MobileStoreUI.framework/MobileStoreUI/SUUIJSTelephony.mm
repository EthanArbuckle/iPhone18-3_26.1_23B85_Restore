@interface SUUIJSTelephony
- (BOOL)isCellularRoaming;
- (NSString)countryCode;
- (NSString)mobileCountryCode;
- (NSString)mobileNetworkCode;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (SUUIJSTelephony)initWithAppContext:(id)context;
- (__CTServerConnection)_telephonyServer;
- (id)formattedPhoneNumber:(id)number;
- (void)beginObserving;
- (void)dealloc;
- (void)sendSMSWithBodyText:(id)text :(id)a4 :(id)a5;
@end

@implementation SUUIJSTelephony

- (SUUIJSTelephony)initWithAppContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SUUIJSTelephony;
  v3 = [(IKJSObject *)&v7 initWithAppContext:context];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIJSTelephony", 0);
    telephonyQueue = v3->_telephonyQueue;
    v3->_telephonyQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = SUUICoreTelephonyFramework();
  if (self->_telephonyServer)
  {
    v4 = v3;
    v5 = SUUIWeakLinkedSymbolForString("_CTServerConnectionUnregisterForNotification", v3);
    if (v5)
    {
      v6 = v5;
      v7 = SUUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v4);
      v6(self->_telephonyServer, *v7);
      v8 = SUUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v4);
      v6(self->_telephonyServer, *v8);
      v9 = SUUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v4);
      v6(self->_telephonyServer, *v9);
      v10 = SUUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v4);
      v6(self->_telephonyServer, *v10);
    }

    CFRelease(self->_telephonyServer);
  }

  v11.receiver = self;
  v11.super_class = SUUIJSTelephony;
  [(SUUIJSTelephony *)&v11 dealloc];
}

- (void)beginObserving
{
  if (!self->_isObserving)
  {
    _telephonyServer = [(SUUIJSTelephony *)self _telephonyServer];
    if (_telephonyServer)
    {
      v4 = _telephonyServer;
      v5 = SUUICoreTelephonyFramework();
      v6 = SUUIWeakLinkedSymbolForString("_CTServerConnectionRegisterForNotification", v5);
      if (v6)
      {
        v7 = v6;
        v8 = SUUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v5);
        v7(v4, *v8);
        v9 = SUUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v5);
        v7(v4, *v9);
        v10 = SUUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v5);
        v7(v4, *v10);
        v11 = SUUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v5);
        v7(v4, *v11);
      }

      self->_isObserving = 1;
    }
  }
}

- (NSString)countryCode
{
  active = CPPhoneNumberCopyActiveCountryCode();

  return active;
}

- (id)formattedPhoneNumber:(id)number
{
  v3 = CPPhoneNumberCopyFormattedStringForTextMessage();

  return v3;
}

- (BOOL)isCellularRoaming
{
  v2 = SUUICoreTelephonyFramework();
  v3 = SUUIWeakLinkedSymbolForString("CTRegistrationCopyDataStatus", v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SUUIWeakLinkedSymbolForString("kCTRegistrationStatus", v2);
  Value = CFDictionaryGetValue(v5, *v6);
  if (Value)
  {
    v8 = Value;
    v9 = SUUIWeakLinkedSymbolForString("kCTRegistrationStatusRegisteredRoaming", v2);
    v10 = CFEqual(v8, *v9) != 0;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v5);
  return v10;
}

- (NSString)mobileCountryCode
{
  v6 = 0;
  _telephonyServer = [(SUUIJSTelephony *)self _telephonyServer];
  if (_telephonyServer)
  {
    v3 = _telephonyServer;
    v4 = SUUICoreTelephonyFramework();
    _telephonyServer = SUUIWeakLinkedSymbolForString("_CTServerConnectionCopyMobileCountryCode", v4);
    if (_telephonyServer)
    {
      (_telephonyServer)(v3, &v6);
      _telephonyServer = v6;
    }
  }

  return _telephonyServer;
}

- (NSString)mobileNetworkCode
{
  v6 = 0;
  _telephonyServer = [(SUUIJSTelephony *)self _telephonyServer];
  if (_telephonyServer)
  {
    v3 = _telephonyServer;
    v4 = SUUICoreTelephonyFramework();
    _telephonyServer = SUUIWeakLinkedSymbolForString("_CTServerConnectionCopyMobileNetworkCode", v4);
    if (_telephonyServer)
    {
      (_telephonyServer)(v3, &v6);
      _telephonyServer = v6;
    }
  }

  return _telephonyServer;
}

- (NSString)operatorName
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  operatorName = [mEMORY[0x277D7FD00] operatorName];

  return operatorName;
}

- (NSString)phoneNumber
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  phoneNumber = [mEMORY[0x277D7FD00] phoneNumber];

  return phoneNumber;
}

- (NSString)providerName
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  providerName = [mEMORY[0x277D7FD00] providerName];

  return providerName;
}

- (void)sendSMSWithBodyText:(id)text :(id)a4 :(id)a5
{
  v7 = a5;
  v8 = a4;
  textCopy = text;
  v10 = SUUICoreTelephonyFramework();
  v11 = SUUIWeakLinkedClassForString(&cfstr_Ctmessagecente.isa, v10);
  v14 = [SUUIWeakLinkedClassForString(&cfstr_Ctphonenumber.isa v10)];

  sharedMessageCenter = [v11 sharedMessageCenter];
  canonicalFormat = [v14 canonicalFormat];
  [sharedMessageCenter sendSMSWithText:textCopy serviceCenter:0 toAddress:canonicalFormat];
}

- (__CTServerConnection)_telephonyServer
{
  if (!self->_telephonyServer)
  {
    v3 = SUUICoreTelephonyFramework();
    v4 = SUUIWeakLinkedSymbolForString("_CTServerConnectionCreateWithIdentifier", v3);
    v5 = SUUIWeakLinkedSymbolForString("_CTServerConnectionSetTargetQueue", v3);
    if (v4)
    {
      v6 = v5;
      if (v5)
      {
        v8[0] = 0;
        v9 = 0u;
        v10 = 0;
        v8[1] = self;
        self->_telephonyServer = (v4)(0, @"com.apple.iTunesStoreUI.SUUIJSTelephony", _telephonyNotification, v8);
        v6();
      }
    }
  }

  return self->_telephonyServer;
}

@end