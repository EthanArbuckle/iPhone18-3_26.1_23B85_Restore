@interface CRKClassSessionBeaconBrowser
+ (id)invitationUUID;
- (CRKClassSessionBeaconBrowser)init;
- (CRKClassSessionBeaconBrowserDelegate)delegate;
- (id)organizationUUIDsMatchingZoneData:(id)data;
- (id)stateDictionary;
- (id)zoneDataForAdvertisementUUID:(id)d;
- (id)zoneDataForOrganizationUUID:(id)d;
- (void)dealloc;
- (void)delegateDidFailWithError:(id)error;
- (void)delegateDidFindClassSession:(id)session flags:(unsigned __int16)flags;
- (void)delegateDidFindInvitationSessionWithEndpoint:(id)endpoint;
- (void)increaseScanFrequencyForDuration:(double)duration;
- (void)increasedScanDurationElapsed;
- (void)setAllowInvitationSessions:(BOOL)sessions;
- (void)setOrganizationUUIDs:(id)ds;
- (void)startBrowsing;
- (void)startInitialScan;
- (void)startScanningForDevicesInZone:(id)zone;
- (void)stopBrowsing;
- (void)stopScanningForDevicesInAllZones;
- (void)stopScanningForDevicesInZone:(id)zone;
- (void)trackerScanner:(id)scanner didUpdateDeviceScannerState:(id)state;
- (void)trackerScanner:(id)scanner didUpdateZoneTrackerState:(id)state;
- (void)trackerScanner:(id)scanner scanner:(id)a4 didFailToRegisterDevices:(id)devices withError:(id)error;
- (void)trackerScanner:(id)scanner scanner:(id)a4 foundDevice:(id)device withData:(id)data;
- (void)trackerScanner:(id)scanner scanner:(id)a4 foundRequestedDevices:(id)devices;
- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker didFailToRegisterZones:(id)zones withError:(id)error;
- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker enteredZone:(id)zone;
- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker exitedZone:(id)zone;
- (void)updateScanner;
- (void)updateZones;
@end

@implementation CRKClassSessionBeaconBrowser

- (void)dealloc
{
  [(CRKClassSessionBeaconBrowser *)self stopBrowsing];
  v3.receiver = self;
  v3.super_class = CRKClassSessionBeaconBrowser;
  [(CRKClassSessionBeaconBrowser *)&v3 dealloc];
}

- (CRKClassSessionBeaconBrowser)init
{
  v6.receiver = self;
  v6.super_class = CRKClassSessionBeaconBrowser;
  v2 = [(CRKClassSessionBeaconBrowser *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mScanningZones = v2->mScanningZones;
    v2->mScanningZones = v3;
  }

  return v2;
}

- (void)setOrganizationUUIDs:(id)ds
{
  dsCopy = ds;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBeaconBrowser setOrganizationUUIDs:];
  }

  organizationUUIDs = self->_organizationUUIDs;
  if (dsCopy | organizationUUIDs)
  {
    if (([(NSSet *)organizationUUIDs isEqual:dsCopy]& 1) == 0)
    {
      v5 = [dsCopy copy];
      v6 = self->_organizationUUIDs;
      self->_organizationUUIDs = v5;

      if ([(CRKClassSessionBeaconBrowser *)self isBrowsing])
      {
        [(CRKClassSessionBeaconBrowser *)self updateZones];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setAllowInvitationSessions:(BOOL)sessions
{
  sessionsCopy = sessions;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBeaconBrowser setAllowInvitationSessions:];
  }

  if (self->_allowInvitationSessions != sessionsCopy)
  {
    self->_allowInvitationSessions = sessionsCopy;
    if ([(CRKClassSessionBeaconBrowser *)self isBrowsing])
    {

      [(CRKClassSessionBeaconBrowser *)self updateZones];
    }
  }
}

- (void)startBrowsing
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)stopBrowsing
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)increaseScanFrequencyForDuration:(double)duration
{
  v8 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBeaconBrowser increaseScanFrequencyForDuration:];
  }

  v5 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    durationCopy = duration;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Increasing bluetooth scan rate for %f seconds", &v6, 0xCu);
  }

  ++self->mIncreasedScanRequestCount;
  [(CRKClassSessionBeaconBrowser *)self updateScanner];
  [(CRKClassSessionBeaconBrowser *)self performSelector:sel_increasedScanDurationElapsed withObject:0 afterDelay:duration];
}

- (id)stateDictionary
{
  v60[1] = *MEMORY[0x277D85DE8];
  trackerScanner = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  zoneTrackerState = [trackerScanner zoneTrackerState];

  if (zoneTrackerState == 3)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    organizationUUIDs = [(CRKClassSessionBeaconBrowser *)self organizationUUIDs];
    v8 = [organizationUUIDs countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(organizationUUIDs);
          }

          uUIDString = [*(*(&v52 + 1) + 8 * i) UUIDString];
          [v6 addObject:uUIDString];
        }

        v9 = [organizationUUIDs countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v9);
    }

    if ([(CRKClassSessionBeaconBrowser *)self allowInvitationSessions])
    {
      [v6 addObject:@"436C6173-7372-6F6F-6D49-6E7669746531"];
    }

    if ([v6 count])
    {
      v13 = [v6 componentsJoinedByString:{@", "}];
      [v5 setObject:v13 forKeyedSubscript:@"Monitoring Zones"];
    }

    v40 = v5;
    v41 = v6;
    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:?];
    v16 = [(CRKClassSessionBeaconBrowser *)self zoneDataForAdvertisementUUID:v15];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    selfCopy = self;
    v17 = self->mScanningZones;
    v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      v21 = 0x277CBE000uLL;
      v42 = v17;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v48 + 1) + 8 * j);
          data = [*(v21 + 2704) data];
          v25 = [v23 isEqualToData:data];

          if (v25)
          {
            v26 = v14;
            v27 = @"Initial Scan";
LABEL_22:
            [v26 addObject:v27];
            continue;
          }

          if ([v23 isEqualToData:v16])
          {
            v26 = v14;
            v27 = @"436C6173-7372-6F6F-6D49-6E7669746531";
            goto LABEL_22;
          }

          v28 = v16;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v29 = [(CRKClassSessionBeaconBrowser *)selfCopy organizationUUIDsMatchingZoneData:v23];
          v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v45;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v45 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                uUIDString2 = [*(*(&v44 + 1) + 8 * k) UUIDString];
                [v14 addObject:uUIDString2];
              }

              v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v31);
          }

          v16 = v28;
          v17 = v42;
          v21 = 0x277CBE000;
        }

        v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v19);
    }

    v35 = v40;
    if ([v14 count])
    {
      v36 = [v14 componentsJoinedByString:{@", "}];
      [v40 setObject:v36 forKeyedSubscript:@"Scanning Zones"];
    }

    trackerScanner2 = v41;
    if (selfCopy->mIncreasedScanRequestCount)
    {
      [v40 setObject:@"YES" forKeyedSubscript:@"Ranging"];
    }
  }

  else
  {
    v59 = @"Bluetooth State";
    v38 = MEMORY[0x277CCABB0];
    trackerScanner2 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
    v14 = [v38 numberWithInteger:{objc_msgSend(trackerScanner2, "zoneTrackerState")}];
    v60[0] = v14;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  }

  return v35;
}

- (id)zoneDataForOrganizationUUID:(id)d
{
  dCopy = d;
  v5[2] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v5[0] = 0;
    v5[1] = 0;
    [d getUUIDBytes:v5];
    dCopy = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:12];
  }

  return dCopy;
}

- (id)zoneDataForAdvertisementUUID:(id)d
{
  dCopy = d;
  v5[2] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v5[0] = 0;
    v5[1] = 0;
    [d getUUIDBytes:v5];
    dCopy = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:16];
  }

  return dCopy;
}

- (id)organizationUUIDsMatchingZoneData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] >= 0xC)
  {
    if ([dataCopy length] >= 0xD)
    {
      v6 = [dataCopy subdataWithRange:{0, 12}];

      dataCopy = v6;
    }

    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    organizationUUIDs = [(CRKClassSessionBeaconBrowser *)self organizationUUIDs];
    v8 = [organizationUUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(organizationUUIDs);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(CRKClassSessionBeaconBrowser *)self zoneDataForOrganizationUUID:v12];
          v14 = [v13 isEqualToData:dataCopy];

          if (v14)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [organizationUUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (id)invitationUUID
{
  if (invitationUUID_onceToken != -1)
  {
    +[CRKClassSessionBeaconBrowser invitationUUID];
  }

  v3 = invitationUUID_invitationUUID;

  return v3;
}

uint64_t __46__CRKClassSessionBeaconBrowser_invitationUUID__block_invoke()
{
  invitationUUID_invitationUUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"436C6173-7372-6F6F-6D49-6E7669746531"];

  return MEMORY[0x2821F96F8]();
}

- (void)updateZones
{
  v74 = *MEMORY[0x277D85DE8];
  trackerScanner = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  zoneTrackerState = [trackerScanner zoneTrackerState];

  if (zoneTrackerState == 2)
  {
    v5 = _CRKLogBluetooth_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_INFO, "Tracking off; unregistering all zones", buf, 2u);
    }

    v6 = [MEMORY[0x277CBEB98] set];
    [(CRKClassSessionBeaconBrowser *)self setTrackingUUIDs:v6];

    trackerScanner2 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
    [trackerScanner2 unregisterAllZoneChanges];

    [(CRKClassSessionBeaconBrowser *)self stopScanningForDevicesInAllZones];
    return;
  }

  trackerScanner3 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  zoneTrackerState2 = [trackerScanner3 zoneTrackerState];

  if (zoneTrackerState2 == 3)
  {
    v10 = objc_opt_new();
    v52 = objc_opt_new();
    v11 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    organizationUUIDs = [(CRKClassSessionBeaconBrowser *)self organizationUUIDs];
    v13 = [organizationUUIDs countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v62;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(organizationUUIDs);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          [v10 addObject:v17];
          trackingUUIDs = [(CRKClassSessionBeaconBrowser *)self trackingUUIDs];
          v19 = [trackingUUIDs containsObject:v17];

          if ((v19 & 1) == 0)
          {
            v20 = [(CRKClassSessionBeaconBrowser *)self zoneDataForOrganizationUUID:v17];
            if (v20)
            {
              [v52 addObject:v20];
            }
          }
        }

        v14 = [organizationUUIDs countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v14);
    }

    invitationUUID = [objc_opt_class() invitationUUID];
    trackingUUIDs2 = [(CRKClassSessionBeaconBrowser *)self trackingUUIDs];
    v23 = [trackingUUIDs2 crk_setBySubtractingSet:v10];
    v24 = [v23 mutableCopy];

    [v24 removeObject:invitationUUID];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v58;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v58 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [(CRKClassSessionBeaconBrowser *)self zoneDataForOrganizationUUID:*(*(&v57 + 1) + 8 * j)];
          if (v30)
          {
            [v11 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v27);
    }

    if ([(CRKClassSessionBeaconBrowser *)self allowInvitationSessions])
    {
      [v10 addObject:invitationUUID];
      trackingUUIDs3 = [(CRKClassSessionBeaconBrowser *)self trackingUUIDs];
      v32 = [trackingUUIDs3 containsObject:invitationUUID];

      v33 = v52;
      if ((v32 & 1) == 0)
      {
        v34 = [(CRKClassSessionBeaconBrowser *)self zoneDataForAdvertisementUUID:invitationUUID];
        if (v34)
        {
          v35 = v52;
LABEL_36:
          [v35 addObject:v34];
          goto LABEL_37;
        }

        goto LABEL_37;
      }
    }

    else
    {
      trackingUUIDs4 = [(CRKClassSessionBeaconBrowser *)self trackingUUIDs];
      v38 = [trackingUUIDs4 containsObject:invitationUUID];

      v33 = v52;
      if (v38)
      {
        v34 = [(CRKClassSessionBeaconBrowser *)self zoneDataForAdvertisementUUID:invitationUUID];
        if (v34)
        {
          v35 = v11;
          goto LABEL_36;
        }

LABEL_37:
      }
    }

    if ([v11 count])
    {
      v39 = _CRKLogBluetooth_2();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
        *buf = 138543362;
        v71 = v40;
        _os_log_impl(&dword_243550000, v39, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ no-longer-needed zones", buf, 0xCu);
      }

      trackerScanner4 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
      v68 = @"ZTZonesArray";
      v69 = v11;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      [trackerScanner4 unregisterForZoneChanges:v42];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v43 = v11;
      v44 = [v43 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v54;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v54 != v46)
            {
              objc_enumerationMutation(v43);
            }

            [(CRKClassSessionBeaconBrowser *)self stopScanningForDevicesInZone:*(*(&v53 + 1) + 8 * k)];
          }

          v45 = [v43 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v45);
      }

      v33 = v52;
    }

    if ([v33 count])
    {
      v48 = _CRKLogBluetooth_2();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
        *buf = 138543362;
        v71 = v49;
        _os_log_impl(&dword_243550000, v48, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ zones", buf, 0xCu);
      }

      trackerScanner5 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
      v65[0] = @"ZTZonesArray";
      v65[1] = @"ZTZoneEntry";
      v66[0] = v33;
      v66[1] = MEMORY[0x277CBEC38];
      v65[2] = @"ZTZoneExit";
      v66[2] = MEMORY[0x277CBEC38];
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
      [trackerScanner5 registerForZoneChangesMatching:v51];
    }

    [(CRKClassSessionBeaconBrowser *)self setTrackingUUIDs:v10];

    return;
  }

  v36 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_243550000, v36, OS_LOG_TYPE_INFO, "Tracking state indeterminate; waiting for update", buf, 2u);
  }
}

- (void)startInitialScan
{
  data = [MEMORY[0x277CBEA90] data];
  [(CRKClassSessionBeaconBrowser *)self startScanningForDevicesInZone:data];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_stopScanningForDevicesInZone_ object:data];
  [(CRKClassSessionBeaconBrowser *)self performSelector:sel_stopScanningForDevicesInZone_ withObject:data afterDelay:5.0];
}

- (void)startScanningForDevicesInZone:(id)zone
{
  v8 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = zoneCopy;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Start scanning for devices in zone: %{public}@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->mScanningZones addObject:zoneCopy];
  [(CRKClassSessionBeaconBrowser *)self updateScanner];
}

- (void)stopScanningForDevicesInZone:(id)zone
{
  v8 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_stopScanningForDevicesInZone_ object:zoneCopy];
  if ([(NSMutableSet *)self->mScanningZones containsObject:zoneCopy])
  {
    v5 = _CRKLogBluetooth_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = zoneCopy;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Stop scanning in zone: %{public}@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->mScanningZones removeObject:zoneCopy];
    [(CRKClassSessionBeaconBrowser *)self updateScanner];
  }
}

- (void)stopScanningForDevicesInAllZones
{
  v3 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Stop scanning all zones", v4, 2u);
  }

  [(NSMutableSet *)self->mScanningZones removeAllObjects];
  [(CRKClassSessionBeaconBrowser *)self updateScanner];
}

- (void)increasedScanDurationElapsed
{
  v4 = self->mIncreasedScanRequestCount - 1;
  self->mIncreasedScanRequestCount = v4;
  if (!v4)
  {
    v8 = v2;
    v9 = v3;
    v6 = _CRKLogBluetooth_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Decreasing bluetooth scan rate", v7, 2u);
    }

    [(CRKClassSessionBeaconBrowser *)self updateScanner];
  }
}

- (void)updateScanner
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCABB0];
    trackerScanner = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
    v6 = [v4 numberWithInteger:{objc_msgSend(trackerScanner, "deviceScannerState")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableSet count](self->mScanningZones, "count")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->mIncreasedScanRequestCount];
    *buf = 138543874;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_INFO, "Updating scanner: scanner state = %{public}@, zones count = %{public}@, increased scan request count = %{public}@", buf, 0x20u);
  }

  trackerScanner2 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  if ([trackerScanner2 deviceScannerState] == 3)
  {
    v10 = [(NSMutableSet *)self->mScanningZones count];

    if (v10)
    {
      if (self->mIncreasedScanRequestCount <= 0)
      {
        v11 = @"WPPuckBeaconNoRanging";
      }

      else
      {
        v11 = @"WPPuckCompany";
      }

      v12 = v11;
      trackerScanner3 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
      v19 = v12;
      v20 = @"kPuckTypes";
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v21 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [trackerScanner3 registerForDevicesMatching:v15 options:MEMORY[0x277CBEC10]];

      if (![(CRKClassSessionBeaconBrowser *)self isScanning])
      {
        +[CRKNetworkPowerAssertion increment];
        [(CRKClassSessionBeaconBrowser *)self setIsScanning:1];
      }

      return;
    }
  }

  else
  {
  }

  trackerScanner4 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  if ([trackerScanner4 deviceScannerState] == 2)
  {
  }

  else
  {
    v17 = [(NSMutableSet *)self->mScanningZones count];

    if (v17)
    {
      return;
    }
  }

  trackerScanner5 = [(CRKClassSessionBeaconBrowser *)self trackerScanner];
  [trackerScanner5 unregisterAllDeviceChanges];

  if ([(CRKClassSessionBeaconBrowser *)self isScanning])
  {
    [(CRKClassSessionBeaconBrowser *)self setIsScanning:0];
    +[CRKNetworkPowerAssertion decrement];
  }
}

- (void)trackerScanner:(id)scanner didUpdateZoneTrackerState:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  mZoneTrackerLastState = self->mZoneTrackerLastState;
  state = [stateCopy state];
  self->mZoneTrackerLastState = [stateCopy state];
  v8 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    state2 = [stateCopy state];
    v10 = @"YES";
    if (mZoneTrackerLastState == state)
    {
      v10 = @"NO";
    }

    v11 = v10;
    v12 = 134349314;
    v13 = state2;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Zone tracker state %{public}ld, is changed: %{public}@", &v12, 0x16u);
  }

  if (mZoneTrackerLastState != state && [stateCopy state] == 3)
  {
    [(CRKClassSessionBeaconBrowser *)self updateZones];
    [(CRKClassSessionBeaconBrowser *)self startInitialScan];
  }
}

- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker enteredZone:(id)zone
{
  v10 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v7 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = zoneCopy;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Zone entered %{public}@", &v8, 0xCu);
  }

  [(CRKClassSessionBeaconBrowser *)self startScanningForDevicesInZone:zoneCopy];
}

- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker exitedZone:(id)zone
{
  v10 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v7 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = zoneCopy;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Zone exited %{public}@", &v8, 0xCu);
  }

  [(CRKClassSessionBeaconBrowser *)self stopScanningForDevicesInZone:zoneCopy];
}

- (void)trackerScanner:(id)scanner zoneTracker:(id)tracker didFailToRegisterZones:(id)zones withError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = error;
  v7 = MEMORY[0x277CBEAC0];
  errorCopy = error;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v10 = CRKErrorWithCodeAndUserInfo(103, v9);
  [(CRKClassSessionBeaconBrowser *)self delegateDidFailWithError:v10];
}

- (void)trackerScanner:(id)scanner didUpdateDeviceScannerState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "state")}];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Device scanner state %{public}@", &v8, 0xCu);
  }

  [(CRKClassSessionBeaconBrowser *)self updateScanner];
}

- (void)trackerScanner:(id)scanner scanner:(id)a4 foundRequestedDevices:(id)devices
{
  v9 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = devicesCopy;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }
}

- (void)trackerScanner:(id)scanner scanner:(id)a4 foundDevice:(id)device withData:(id)data
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dataCopy;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Found device %{public}@", &buf, 0xCu);
  }

  v8 = [dataCopy objectForKeyedSubscript:@"kPuckCompanyUUID"];
  v9 = [dataCopy objectForKeyedSubscript:@"kPuckCompanyMajor"];
  shortValue = [v9 shortValue];

  v11 = [dataCopy objectForKeyedSubscript:@"kPuckCompanyMinor"];
  LOWORD(v9) = [v11 shortValue];

  v12 = v9 | (shortValue << 16);
  if (-[CRKClassSessionBeaconBrowser allowInvitationSessions](self, "allowInvitationSessions") && ([v8 UUIDString], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"436C6173-7372-6F6F-6D49-6E7669746531"), v13, v14))
  {
    v15 = [MEMORY[0x277CCACA8] crk_stringWithIPAddress:v12];
    v16 = [[CRKRemoteEndpoint alloc] initWithIPAddress:v15 port:CRKClassroomServicePortNumberV2];
    [(CRKClassSessionBeaconBrowser *)self delegateDidFindInvitationSessionWithEndpoint:v16];
  }

  else
  {
    v29 = dataCopy;
    buf = 0uLL;
    [v8 getUUIDBytes:&buf];
    v17 = HIWORD(buf);
    v18 = WORD6(buf);
    v28 = v8;
    [(CRKClassSessionBeaconBrowser *)self zoneDataForOrganizationUUID:v8];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v34 = 0u;
    v19 = [(CRKClassSessionBeaconBrowser *)self organizationUUIDsMatchingZoneData:?];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = bswap32(v17) >> 16;
      v23 = bswap32(v18) >> 16;
      v24 = *v32;
      do
      {
        v25 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = [objc_alloc(MEMORY[0x277D04C08]) initWithOrganizationUUID:*(*(&v31 + 1) + 8 * v25) groupID:v22 leaderIP:v12 port:CRKClassroomServicePortNumberV2];
          [(CRKClassSessionBeaconBrowser *)self delegateDidFindClassSession:v26 flags:v23];

          ++v25;
        }

        while (v21 != v25);
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    v8 = v28;
    dataCopy = v29;
  }
}

- (void)trackerScanner:(id)scanner scanner:(id)a4 didFailToRegisterDevices:(id)devices withError:(id)error
{
  devicesCopy = devices;
  errorCopy = error;
  v9 = _CRKLogBluetooth_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CRKClassSessionBeaconBrowser trackerScanner:errorCopy scanner:devicesCopy didFailToRegisterDevices:v9 withError:?];
  }
}

- (void)delegateDidFindClassSession:(id)session flags:(unsigned __int16)flags
{
  flagsCopy = flags;
  sessionCopy = session;
  delegate = [(CRKClassSessionBeaconBrowser *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CRKClassSessionBeaconBrowser *)self delegate];
    [delegate2 beaconBrowser:self didFindBeaconForClassSession:sessionCopy flags:flagsCopy];
  }
}

- (void)delegateDidFindInvitationSessionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  delegate = [(CRKClassSessionBeaconBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBeaconBrowser *)self delegate];
    [delegate2 beaconBrowser:self didFindBeaconForInvitationSessionWithEndpoint:endpointCopy];
  }
}

- (void)delegateDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(CRKClassSessionBeaconBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBeaconBrowser *)self delegate];
    [delegate2 beaconBrowser:self didFailWithError:errorCopy];
  }
}

- (CRKClassSessionBeaconBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setOrganizationUUIDs:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)setAllowInvitationSessions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)increaseScanFrequencyForDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)trackerScanner:(os_log_t)log scanner:didFailToRegisterDevices:withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@", &v3, 0x16u);
}

@end