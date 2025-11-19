@interface ESWifiAssertionManager
+ (__WiFiManagerClient)_getWiFiClientRef;
+ (id)sharedWifiAssertionManager;
- (void)releaseWifiAssertion;
- (void)retainWifiAssertion;
@end

@implementation ESWifiAssertionManager

+ (id)sharedWifiAssertionManager
{
  if (sharedWifiAssertionManager_onceToken != -1)
  {
    +[ESWifiAssertionManager sharedWifiAssertionManager];
  }

  v3 = sharedWifiAssertionManager_obj;

  return v3;
}

uint64_t __52__ESWifiAssertionManager_sharedWifiAssertionManager__block_invoke()
{
  sharedWifiAssertionManager_obj = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (__WiFiManagerClient)_getWiFiClientRef
{
  result = _getWiFiClientRef_ref;
  if (!_getWiFiClientRef_ref)
  {
    result = WiFiManagerClientCreate();
    _getWiFiClientRef_ref = result;
  }

  return result;
}

- (void)retainWifiAssertion
{
  obj = self;
  objc_sync_enter(obj);
  refCount = obj->_refCount;
  if (refCount <= 0)
  {
    if (+[ESWifiAssertionManager _getWiFiClientRef])
    {
      obj->_refCount = 1;
      WiFiManagerClientSetType();
      WiFiManagerClientSetWoWState();
    }
  }

  else
  {
    obj->_refCount = refCount + 1;
  }

  objc_sync_exit(obj);
}

- (void)releaseWifiAssertion
{
  obj = self;
  objc_sync_enter(obj);
  refCount = obj->_refCount;
  if (refCount == 1)
  {
    if (+[ESWifiAssertionManager _getWiFiClientRef])
    {
      obj->_refCount = 0;
      WiFiManagerClientSetWoWState();
      WiFiManagerClientSetType();
    }
  }

  else if (refCount >= 2)
  {
    obj->_refCount = refCount - 1;
  }

  objc_sync_exit(obj);
}

@end