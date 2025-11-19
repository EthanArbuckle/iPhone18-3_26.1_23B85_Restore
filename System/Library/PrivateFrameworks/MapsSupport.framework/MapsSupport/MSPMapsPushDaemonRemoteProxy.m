@interface MSPMapsPushDaemonRemoteProxy
+ (MSPMapsPushDaemonRemoteProxy)sharedInstance;
- (MSPMapsPushDaemonRemoteProxy)init;
- (id)_connection;
- (id)_remoteObjectProxy;
- (void)_clearConnection;
- (void)_connectToDaemonIfNeeded;
- (void)addObserver:(id)a3;
- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4;
- (void)clearAirportArrivalBulletin;
- (void)clearBulletinWithRecordID:(id)a3;
- (void)clearCurrentAnnouncement;
- (void)clearLowFuelAlertBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearParkedCarBulletin;
- (void)clearPredictedRouteTrafficIncidentBulletin;
- (void)clearTrafficIncidentBulletinWithAlertID:(id)a3;
- (void)clearVenueBulletin;
- (void)closeConnection;
- (void)fetchCurrentAnnouncement:(id)a3;
- (void)fetchDevicePushToken:(id)a3;
- (void)handleMapsApplicationRemoval:(id)a3;
- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5;
- (void)removeObserver:(id)a3;
- (void)resetAnnouncements;
- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6;
- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)a3;
- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (void)showParkedCarBulletinForEvent:(id)a3;
- (void)showParkedCarReplacementBulletinForEvent:(id)a3 replacingEvent:(id)a4;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3;
- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
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
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

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
  v2 = [(MSPMapsPushDaemonRemoteProxy *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)_connection
{
  [(MSPMapsPushDaemonRemoteProxy *)self _connectToDaemonIfNeeded];
  v3 = self;
  objc_sync_enter(v3);
  v4 = v3->_connection;
  objc_sync_exit(v3);

  return v4;
}

- (void)_connectToDaemonIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_connection)
  {
    objc_initWeak(&location, v2);
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.Maps.mapspushd" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286969548];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_fetchCurrentAnnouncement_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286968FA0];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v9];

    v10 = [[MSPMapsPushDaemonRemoteXPCProxy alloc] initWithObserver:v2];
    [(NSXPCConnection *)v2->_connection setExportedObject:v10];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke;
    v13[3] = &unk_279866390;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__MSPMapsPushDaemonRemoteProxy__connectToDaemonIfNeeded__block_invoke_2;
    v11[3] = &unk_279866390;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v11];
    [(NSXPCConnection *)v2->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);
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

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
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
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 simulateProblemResolution];
  }
}

- (void)simulateUGCPhotoSubmissionResolution
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 simulateUGCPhotoSubmissionResolution];
  }
}

- (void)simulateUGCPhotoAttributionClearedNotification
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 simulateUGCPhotoAttributionClearedNotification];
  }
}

- (void)simulateRAPStatusChangeNotification
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 simulateRAPStatusChangeNotification];
  }
}

- (void)fetchDevicePushToken:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 fetchDevicePushToken:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)fetchCurrentAnnouncement:(id)a3
{
  v4 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v5 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__MSPMapsPushDaemonRemoteProxy_fetchCurrentAnnouncement___block_invoke;
    v6[3] = &unk_279867500;
    v7 = v4;
    [v5 fetchCurrentAnnouncement:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearCurrentAnnouncement];
  }
}

- (void)resetAnnouncements
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 resetAnnouncements];
  }
}

- (void)clearBulletinWithRecordID:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 clearBulletinWithRecordID:v5];
  }
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v10 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v10 showMapsSuggestionsBulletinWithTitle:v11 message:v8 actionURL:v9];
  }
}

- (void)clearMapsSuggestionsBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearMapsSuggestionsBulletin];
  }
}

- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v7 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v7 addSufficientVisitsNotification:v8 message:v6];
  }
}

- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v13 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v13 showAirportArrivalBulletinWithTitle:v14 message:v10 mapRegion:v11 regionName:v12];
  }
}

- (void)clearAirportArrivalBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearMapsSuggestionsBulletin];
  }
}

- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v10 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v10 showMapsSuggestionsBulletinWithTitle:v11 message:v8 actionURL:v9];
  }
}

- (void)clearVenueBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearMapsSuggestionsBulletin];
  }
}

- (void)clearTrafficIncidentBulletinWithAlertID:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 clearTrafficIncidentBulletinWithAlertID:v5];
  }
}

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 showPredictedRouteTrafficIncidentBulletinForCommuteDetails:v5];
  }
}

- (void)clearPredictedRouteTrafficIncidentBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearPredictedRouteTrafficIncidentBulletin];
  }
}

- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 showLowFuelAlertBulletinForLowFuelDetails:v5];
  }
}

- (void)clearLowFuelAlertBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearLowFuelAlertBulletin];
  }
}

- (void)showParkedCarBulletinForEvent:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 showParkedCarBulletinForEvent:v5];
  }
}

- (void)showParkedCarReplacementBulletinForEvent:(id)a3 replacingEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v7 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v7 showParkedCarReplacementBulletinForEvent:v8 replacingEvent:v6];
  }
}

- (void)clearParkedCarBulletin
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v3 clearParkedCarBulletin];
  }
}

- (void)handleMapsApplicationRemoval:(id)a3
{
  v5 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v4 = [(MSPMapsPushDaemonRemoteProxy *)self _remoteObjectProxy];
    [v4 handleMapsApplicationRemoval:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = [(NSHashTable *)v11->_observers allObjects];
    objc_sync_exit(v11);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__MSPMapsPushDaemonRemoteProxy_pushDaemonProxyReceivedNotificationData_forType_recordIdentifier___block_invoke;
    v14[3] = &unk_279865F98;
    v15 = v12;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v13 = v12;
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