@interface NetworkChangeNotifier
+ (BOOL)enableNotifications;
+ (id)sharedInstance;
+ (void)disableNotifications;
- (BOOL)_listenForChanges;
- (BOOL)isPrimaryCellular;
- (NSArray)myIPAddresses;
- (NSString)myGatewayAddress;
- (NetworkChangeNotifier)init;
- (id)primaryInterfaceName;
- (int)linkQualityValueForInterface:(id)a3;
- (int)linkQualityValueForInterfaceType:(unint64_t)a3;
- (unint64_t)linkQualityForInterfaceType:(unint64_t)a3;
- (void)_clearIPCache;
- (void)connectionMonitorDidUpdate:(id)a3;
- (void)dealloc;
@end

@implementation NetworkChangeNotifier

- (void)_clearIPCache
{
  myIPs = self->_myIPs;
  self->_myIPs = 0;

  myIP = self->_myIP;
  self->_myIP = 0;
}

+ (id)sharedInstance
{
  objc_msgSend_enableNotifications(a1, a2, v2);
  v3 = qword_1ED517130;

  return v3;
}

+ (BOOL)enableNotifications
{
  if (qword_1ED517130)
  {
    return 1;
  }

  v3 = objc_alloc_init(a1);
  v4 = qword_1ED517130;
  qword_1ED517130 = v3;

  return qword_1ED517130 != 0;
}

+ (void)disableNotifications
{
  v2 = qword_1ED517130;
  qword_1ED517130 = 0;
}

- (BOOL)_listenForChanges
{
  if (self->_store)
  {
    return 1;
  }

  v19.version = 0;
  memset(&v19.retain, 0, 24);
  v19.info = self;
  v4 = SCDynamicStoreCreate(0, @"com.apple.messagingagent", sub_195993F24, &v19);
  self->_store = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v7 = CFArrayCreateMutable(0, 0, v5);
  SCDynamicStoreSetDispatchQueue(self->_store, MEMORY[0x1E69E96A0]);
  v8 = *MEMORY[0x1E69822F0];
  v9 = *MEMORY[0x1E6982338];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  if (NetworkGlobalEntity)
  {
    CFRelease(NetworkGlobalEntity);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v8, *MEMORY[0x1E69822E0], v9);
  CFArrayAppendValue(v7, NetworkInterfaceEntity);
  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  v12 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, v8, *MEMORY[0x1E6982330]);
  CFArrayAppendValue(Mutable, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, v8, *MEMORY[0x1E6982360]);
  CFArrayAppendValue(Mutable, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v2 = SCDynamicStoreSetNotificationKeys(self->_store, Mutable, v7) != 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v14 = [IMConnectionMonitor alloc];
  v16 = objc_msgSend_initWithRemoteHost_delegate_(v14, v15, 0, self);
  connectionMonitor = self->_connectionMonitor;
  self->_connectionMonitor = v16;

  return v2;
}

- (NetworkChangeNotifier)init
{
  v12.receiver = self;
  v12.super_class = NetworkChangeNotifier;
  v2 = [(NetworkChangeNotifier *)&v12 init];
  v5 = v2;
  if (v2)
  {
    if (!objc_msgSend__listenForChanges(v2, v3, v4))
    {
      v10 = 0;
      goto LABEL_6;
    }

    v8 = objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
    objc_msgSend__addEarlyListener_(v8, v9, v5);
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)dealloc
{
  objc_msgSend_clear(self->_connectionMonitor, a2, v2);
  objc_msgSend_setDelegate_(self->_connectionMonitor, v4, 0);
  v7 = objc_msgSend_sharedInstance(IMSystemMonitor, v5, v6);
  objc_msgSend__removeEarlyListener_(v7, v8, self);

  v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
  objc_msgSend_removeObserver_name_object_(v11, v12, self, 0, 0);

  store = self->_store;
  if (store)
  {
    SCDynamicStoreSetDispatchQueue(store, 0);
    v14 = self->_store;
    if (v14)
    {
      CFRelease(v14);
      self->_store = 0;
    }
  }

  v15.receiver = self;
  v15.super_class = NetworkChangeNotifier;
  [(NetworkChangeNotifier *)&v15 dealloc];
}

- (NSArray)myIPAddresses
{
  myIPs = self->_myIPs;
  if (myIPs)
  {
    v3 = myIPs;
  }

  return myIPs;
}

- (NSString)myGatewayAddress
{
  v3 = objc_msgSend_sharedInstance(NetworkChangeNotifier, a2, v2);
  DynamicStore = objc_msgSend_getDynamicStore(v3, v4, v5);

  if (DynamicStore)
  {
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
    v9 = SCDynamicStoreCopyValue(DynamicStore, NetworkGlobalEntity);
    if (NetworkGlobalEntity)
    {
      CFRelease(NetworkGlobalEntity);
    }

    if (v9)
    {
      v10 = objc_msgSend_objectForKey_(v9, v8, @"Router");
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)linkQualityValueForInterfaceType:(unint64_t)a3
{
  if (a3 == 3)
  {
    v3 = @"pdp_ip0";
  }

  else
  {
    v3 = @"en0";
  }

  return MEMORY[0x1EEE66B58](self, sel_linkQualityValueForInterface_, v3);
}

- (int)linkQualityValueForInterface:(id)a3
{
  valuePtr = 0;
  v4 = *MEMORY[0x1E6982358];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822F0], a3, *MEMORY[0x1E6982358]);
  v6 = SCDynamicStoreCopyValue(self->_store, NetworkInterfaceEntity);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v7, v4);
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
        }
      }
    }
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return valuePtr;
}

- (unint64_t)linkQualityForInterfaceType:(unint64_t)a3
{
  v3 = objc_msgSend_linkQualityValueForInterfaceType_(self, a2, a3);
  if (v3 <= 99)
  {
    return v3 > 49;
  }

  else
  {
    return 2;
  }
}

- (void)connectionMonitorDidUpdate:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  connectionMonitor = self->_connectionMonitor;
  if (connectionMonitor == a3)
  {
    isImmediatelyReachable = objc_msgSend_isImmediatelyReachable(connectionMonitor, a2, a3);
    if (self->_lastPostedNetworkUp != isImmediatelyReachable)
    {
      v8 = isImmediatelyReachable;
      self->_lastPostedNetworkUp = isImmediatelyReachable;
      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
      v16 = @"__kIMNetworkChangedNotificationNetworkAvailableKey";
      v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v10, v8);
      v17[0] = v11;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v17, &v16, 1);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v9, v14, @"__kIMNetworkChangedNotification", 0, v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPrimaryCellular
{
  v3 = 0;
  sub_1959AC880(self->_store, &v3, 0);
  return v3;
}

- (id)primaryInterfaceName
{
  v4 = 0;
  sub_1959AC880(self->_store, 0, &v4);
  v2 = v4;

  return v2;
}

@end