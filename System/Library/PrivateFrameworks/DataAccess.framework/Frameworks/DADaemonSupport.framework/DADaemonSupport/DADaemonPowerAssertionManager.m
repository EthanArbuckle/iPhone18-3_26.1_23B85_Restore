@interface DADaemonPowerAssertionManager
+ (__WiFiManagerClient)_getWiFiClientRef;
- (BOOL)_releaseAssertionForContext:(id)a3;
- (BOOL)_retainAssertionForContext:(id)a3;
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

- (BOOL)_retainAssertionForContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = DADaemonPowerAssertionManager;
  v3 = [(DAPowerAssertionManager *)&v5 _retainAssertionForContext:a3];
  if (v3 && +[DADaemonPowerAssertionManager _getWiFiClientRef])
  {
    WiFiManagerClientSetType();
  }

  return v3;
}

- (BOOL)_releaseAssertionForContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = DADaemonPowerAssertionManager;
  v3 = [(DAPowerAssertionManager *)&v5 _releaseAssertionForContext:a3];
  if (v3 && +[DADaemonPowerAssertionManager _getWiFiClientRef])
  {
    WiFiManagerClientSetType();
  }

  return v3;
}

@end