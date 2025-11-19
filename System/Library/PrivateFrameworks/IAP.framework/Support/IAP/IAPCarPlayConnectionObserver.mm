@interface IAPCarPlayConnectionObserver
- (IAPCarPlayConnectionObserver)initWithPort:(CIapPortIOKit *)a3;
- (void)dealloc;
- (void)handleCarPlayAllowedDidChange;
@end

@implementation IAPCarPlayConnectionObserver

- (IAPCarPlayConnectionObserver)initWithPort:(CIapPortIOKit *)a3
{
  v13.receiver = self;
  v13.super_class = IAPCarPlayConnectionObserver;
  v4 = [(IAPCarPlayConnectionObserver *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_parentUSBPort = a3;
    v6 = sub_1000016A4(@"CRCarPlayPreferences", 4);
    if (v6)
    {
      v7 = objc_alloc_init(v6);
      v5->_carPreferences = v7;
      [(CRCarPlayPreferences *)v7 setPreferencesDelegate:v5];
      v8 = [(CRCarPlayPreferences *)v5->_carPreferences isCarPlayAllowed];
      v5->_isStarkPossibleByCarPlaySettings = v8;
      parentUSBPort = v5->_parentUSBPort;
      if (!parentUSBPort)
      {
        NSLog(@"ERROR - _parentUSBHost does not exist");
        return v5;
      }

      NSLog(@"_isStarkPossibleByCarPlaySettings = %d, _parentUSBPort = %hhx", v8, parentUSBPort);
      v10 = v5->_parentUSBPort;
      isStarkPossibleByCarPlaySettings = v5->_isStarkPossibleByCarPlaySettings;
      goto LABEL_7;
    }

    if (v5->_parentUSBPort)
    {
      NSLog(@"CarPlay not present, setting USB role swap mask to 0");
      v10 = v5->_parentUSBPort;
LABEL_7:
      sub_10000DCC0(v10);
    }
  }

  return v5;
}

- (void)dealloc
{
  self->_parentUSBPort = 0;
  carPreferences = self->_carPreferences;
  if (carPreferences)
  {
    [(CRCarPlayPreferences *)carPreferences setPreferencesDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = IAPCarPlayConnectionObserver;
  [(IAPCarPlayConnectionObserver *)&v4 dealloc];
}

- (void)handleCarPlayAllowedDidChange
{
  if (self->_isStarkPossibleByCarPlaySettings != [(CRCarPlayPreferences *)self->_carPreferences isCarPlayAllowed])
  {
    v3 = [(CRCarPlayPreferences *)self->_carPreferences isCarPlayAllowed];
    self->_isStarkPossibleByCarPlaySettings = v3;
    parentUSBPort = self->_parentUSBPort;
    if (parentUSBPort)
    {
      NSLog(@"_isStarkPossibleByCarPlaySettings = %d, _parentUSBPort = %hhx", v3, parentUSBPort);
      v5 = self->_parentUSBPort;
      isStarkPossibleByCarPlaySettings = self->_isStarkPossibleByCarPlaySettings;

      sub_10000DCC0(v5);
    }

    else
    {
      NSLog(@"%s:%d ERROR - no _parentUSBPort", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", 125);
    }
  }
}

@end