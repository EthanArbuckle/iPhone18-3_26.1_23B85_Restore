@interface MSPMapsPushDaemonRemoteProxy
+ (MSPMapsPushDaemonRemoteProxy)sharedInstance;
- (MSPMapsPushDaemonRemoteProxy)init;
- (id)_connection;
- (id)_remoteObjectProxy;
- (void)_clearConnection;
- (void)_connectToDaemonIfNeeded;
- (void)addObserver:(id)observer;
- (void)addSufficientVisitsNotification:(id)notification message:(id)message;
- (void)clearAirportArrivalBulletin;
- (void)clearBulletinWithRecordID:(id)d;
- (void)clearCurrentAnnouncement;
- (void)clearLowFuelAlertBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearParkedCarBulletin;
- (void)clearPredictedRouteTrafficIncidentBulletin;
- (void)clearTrafficIncidentBulletinWithAlertID:(id)d;
- (void)clearVenueBulletin;
- (void)closeConnection;
- (void)fetchCurrentAnnouncement:(id)announcement;
- (void)fetchDevicePushToken:(id)token;
- (void)handleMapsApplicationRemoval:(id)removal;
- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
- (void)resetAnnouncements;
- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name;
- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)details;
- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
- (void)showParkedCarBulletinForEvent:(id)event;
- (void)showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details;
- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
- (void)simulateProblemResolution;
- (void)simulateRAPStatusChangeNotification;
- (void)simulateUGCPhotoAttributionClearedNotification;
- (void)simulateUGCPhotoSubmissionResolution;
@end

@implementation MSPMapsPushDaemonRemoteProxy

- (MSPMapsPushDaemonRemoteProxy)init
{
  v7.receiver = self;
  v7.super_class = MSPMapsPushDaemonRemoteProxy;
  v2 = [(MSPMapsPushDaemonRemoteProxy *)&v7 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = v2;
  }

  return v2;
}

+ (MSPMapsPushDaemonRemoteProxy)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __46__MSPMapsPushDaemonRemoteProxy_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(MSPMapsPushDaemonRemoteProxy);

  return MEMORY[0x2821F96F8]();
}

- (id)_remoteObjectProxy
{
  _connection = [(MSPMapsPushDaemonRemoteProxy *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  [(MSPMapsPushDaemonRemoteProxy *)self _connectToDaemonIfNeeded];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_connection;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)_connectToDaemonIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connection)
  {
    objc_initWeak(&location, selfCopy);
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.Maps.mapspushd" options:0];
    connection = selfCopy->_connection;
    selfCopy->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286969548];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_fetchCurrentAnnouncement_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)selfCopy->_connection setRemoteObjectInterface:v5];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286968FA0];
    [(NSXPCConnection *)selfCopy->_connection setExportedInterface:v9];

    v10 = [[MSPMapsPushDaemonRemoteXPCProxy alloc] initWithObserver:selfCopy];
    [(NSXPCConnection *)selfCopy->_connection setExportedObject:v10];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke;
    v13[3] = &unk_279866390;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke_2;
    v11[3] = &unk_279866390;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:v11];
    [(NSXPCConnection *)selfCopy->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (void)closeConnection
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_connection invalidate];
  connection = obj->_connection;
  obj->_connection = 0;

  objc_sync_exit(obj);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

void __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_connection invalidate];
  connection = obj->_connection;
  obj->_connection = 0;

  objc_sync_exit(obj);
}

- (void)simulateProblemResolution
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy simulateProblemResolution];
  }
}

- (void)simulateUGCPhotoSubmissionResolution
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy simulateUGCPhotoSubmissionResolution];
  }
}

- (void)simulateUGCPhotoAttributionClearedNotification
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy simulateUGCPhotoAttributionClearedNotification];
  }
}

- (void)simulateRAPStatusChangeNotification
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy simulateRAPStatusChangeNotification];
  }
}

- (void)fetchDevicePushToken:(id)token
{
  tokenCopy = token;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy fetchDevicePushToken:tokenCopy];
  }

  else
  {
    tokenCopy[2](tokenCopy, 0);
  }
}

- (void)fetchCurrentAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__MSPMapsPushDaemonRemoteProxy_fetchCurrentAnnouncement___block_invoke;
    v6[3] = &unk_279867500;
    v7 = announcementCopy;
    [_remoteObjectProxy fetchCurrentAnnouncement:v6];
  }

  else
  {
    (*(announcementCopy + 2))(announcementCopy, 0);
  }
}

void __57__MSPMapsPushDaemonRemoteProxy_fetchCurrentAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__MSPMapsPushDaemonRemoteProxy_fetchCurrentAnnouncement___block_invoke_2;
  v6[3] = &unk_2798674D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __57__MSPMapsPushDaemonRemoteProxy_fetchCurrentAnnouncement___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)clearCurrentAnnouncement
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearCurrentAnnouncement];
  }
}

- (void)resetAnnouncements
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy resetAnnouncements];
  }
}

- (void)clearBulletinWithRecordID:(id)d
{
  dCopy = d;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearBulletinWithRecordID:dCopy];
  }
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showMapsSuggestionsBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy];
  }
}

- (void)clearMapsSuggestionsBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearMapsSuggestionsBulletin];
  }
}

- (void)addSufficientVisitsNotification:(id)notification message:(id)message
{
  notificationCopy = notification;
  messageCopy = message;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy addSufficientVisitsNotification:notificationCopy message:messageCopy];
  }
}

- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name
{
  titleCopy = title;
  messageCopy = message;
  regionCopy = region;
  nameCopy = name;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showAirportArrivalBulletinWithTitle:titleCopy message:messageCopy mapRegion:regionCopy regionName:nameCopy];
  }
}

- (void)clearAirportArrivalBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearMapsSuggestionsBulletin];
  }
}

- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showMapsSuggestionsBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy];
  }
}

- (void)clearVenueBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearMapsSuggestionsBulletin];
  }
}

- (void)clearTrafficIncidentBulletinWithAlertID:(id)d
{
  dCopy = d;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearTrafficIncidentBulletinWithAlertID:dCopy];
  }
}

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details
{
  detailsCopy = details;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showPredictedRouteTrafficIncidentBulletinForCommuteDetails:detailsCopy];
  }
}

- (void)clearPredictedRouteTrafficIncidentBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearPredictedRouteTrafficIncidentBulletin];
  }
}

- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)details
{
  detailsCopy = details;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showLowFuelAlertBulletinForLowFuelDetails:detailsCopy];
  }
}

- (void)clearLowFuelAlertBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearLowFuelAlertBulletin];
  }
}

- (void)showParkedCarBulletinForEvent:(id)event
{
  eventCopy = event;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showParkedCarBulletinForEvent:eventCopy];
  }
}

- (void)showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent
{
  eventCopy = event;
  replacingEventCopy = replacingEvent;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy showParkedCarReplacementBulletinForEvent:eventCopy replacingEvent:replacingEventCopy];
  }
}

- (void)clearParkedCarBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy clearParkedCarBulletin];
  }
}

- (void)handleMapsApplicationRemoval:(id)removal
{
  removalCopy = removal;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    _remoteObjectProxy = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [_remoteObjectProxy handleMapsApplicationRemoval:removalCopy];
  }

  else
  {
    removalCopy[2](removalCopy, 0);
  }
}

- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier
{
  dataCopy = data;
  typeCopy = type;
  identifierCopy = identifier;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
    objc_sync_exit(selfCopy);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__MSPMapsPushDaemonRemoteProxy_pushDaemonProxyReceivedNotificationData_forType_recordIdentifier___block_invoke;
    v14[3] = &unk_279865F98;
    v15 = allObjects;
    v16 = dataCopy;
    v17 = typeCopy;
    v18 = identifierCopy;
    v13 = allObjects;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __97__MSPMapsPushDaemonRemoteProxy_pushDaemonProxyReceivedNotificationData_forType_recordIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) pushDaemonProxyReceivedNotificationData:*(a1 + 40) forType:*(a1 + 48) recordIdentifier:{*(a1 + 56), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end