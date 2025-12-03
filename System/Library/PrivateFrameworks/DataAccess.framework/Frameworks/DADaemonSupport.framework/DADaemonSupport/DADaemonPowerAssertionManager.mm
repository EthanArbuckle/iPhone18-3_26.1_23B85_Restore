@interface DADaemonPowerAssertionManager
+ (__WiFiManagerClient)_getWiFiClientRef;
- (BOOL)_releaseAssertionForContext:(id)context;
- (BOOL)_retainAssertionForContext:(id)context;
@end

@implementation DADaemonPowerAssertionManager

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

- (BOOL)_retainAssertionForContext:(id)context
{
  v5.receiver = self;
  v5.super_class = DADaemonPowerAssertionManager;
  v3 = [(DAPowerAssertionManager *)&v5 _retainAssertionForContext:context];
  if (v3 && +[DADaemonPowerAssertionManager _getWiFiClientRef])
  {
    WiFiManagerClientSetType();
  }

  return v3;
}

- (BOOL)_releaseAssertionForContext:(id)context
{
  v5.receiver = self;
  v5.super_class = DADaemonPowerAssertionManager;
  v3 = [(DAPowerAssertionManager *)&v5 _releaseAssertionForContext:context];
  if (v3 && +[DADaemonPowerAssertionManager _getWiFiClientRef])
  {
    WiFiManagerClientSetType();
  }

  return v3;
}

@end