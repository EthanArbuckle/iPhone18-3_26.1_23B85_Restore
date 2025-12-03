@interface MDState
+ (id)getDefault:(id)default;
+ (void)setDefault:(id)default value:(id)value;
- (MDLocationManager)locationManager;
- (MDNotificationCenter)notificationCenter;
- (MDState)init;
- (NSLock)peerConnectionsLock;
- (NSMutableArray)peerConnections;
- (void)setLocationManager:(id)manager;
- (void)setNotificationCenter:(id)center;
@end

@implementation MDState

- (NSLock)peerConnectionsLock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_peerConnectionsLock;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSMutableArray)peerConnections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_peerConnections;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MDLocationManager)locationManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_locationManager;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MDState)init
{
  v8.receiver = self;
  v8.super_class = MDState;
  v2 = [(MDState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    peerConnections = v2->_peerConnections;
    v2->_peerConnections = v3;

    v5 = objc_alloc_init(NSLock);
    peerConnectionsLock = v2->_peerConnectionsLock;
    v2->_peerConnectionsLock = v5;
  }

  return v2;
}

- (void)setLocationManager:(id)manager
{
  managerCopy = manager;
  obj = self;
  objc_sync_enter(obj);
  locationManager = obj->_locationManager;
  obj->_locationManager = managerCopy;

  objc_sync_exit(obj);
}

- (MDNotificationCenter)notificationCenter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_notificationCenter;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNotificationCenter:(id)center
{
  centerCopy = center;
  obj = self;
  objc_sync_enter(obj);
  notificationCenter = obj->_notificationCenter;
  obj->_notificationCenter = centerCopy;

  objc_sync_exit(obj);
}

+ (id)getDefault:(id)default
{
  defaultCopy = default;
  if ([GEOKeyBagNotification canAccessFilesWithProtection:3])
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    path = [v5 path];
    v7 = _CFPreferencesCopyAppValueWithContainer();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)setDefault:(id)default value:(id)value
{
  defaultCopy = default;
  valueCopy = value;
  if ([GEOKeyBagNotification canAccessFilesWithProtection:3])
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    path = [v7 path];
    _CFPreferencesSetAppValueWithContainer();
  }
}

@end