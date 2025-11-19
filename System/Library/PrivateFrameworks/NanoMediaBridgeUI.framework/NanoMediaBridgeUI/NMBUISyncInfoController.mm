@interface NMBUISyncInfoController
- (BOOL)_musicCellularDownloadingAllowedOnWatch;
- (NMBUISyncInfoController)initWithSyncInfoTarget:(unint64_t)a3;
- (NMBUISyncInfoControllerDataSource)dataSource;
- (float)progressForModelObject:(id)a3;
- (id)_bundleIdentifierForTarget;
- (id)_musicSyncInfoMessageWithStatus:(unint64_t)a3 downloadPauseReason:(unint64_t)a4;
- (id)syncStatusDetailText;
- (unint64_t)downloadStateForModelObject:(id)a3;
- (void)_handleMediaSyncInfoDidUpdateNotification:(id)a3;
- (void)_handleMusicCellularDownloadsAllowedDidChangeNotification:(id)a3;
- (void)beginObservingSyncInfo;
- (void)endObservingSyncInfo;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)powerSourceInfoHasExternalPowerSourceConnectedDidChange:(id)a3;
@end

@implementation NMBUISyncInfoController

- (NMBUISyncInfoController)initWithSyncInfoTarget:(unint64_t)a3
{
  v25.receiver = self;
  v25.super_class = NMBUISyncInfoController;
  v4 = [(NMBUISyncInfoController *)&v25 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_target = a3;
  v6 = objc_alloc(MEMORY[0x277D2B9F8]);
  v7 = [(NMBUISyncInfoController *)v5 _bundleIdentifierForTarget];
  v8 = [v6 initWithBundleIdentifier:v7];
  syncInfoUpdaterHeartbeat = v5->_syncInfoUpdaterHeartbeat;
  v5->_syncInfoUpdaterHeartbeat = v8;

  v10 = [objc_alloc(MEMORY[0x277D2B9F0]) initWithTarget:a3];
  syncInfo = v5->_syncInfo;
  v5->_syncInfo = v10;

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:v5 selector:sel__handleMediaSyncInfoDidUpdateNotification_ name:*MEMORY[0x277D2B9E0] object:v5->_syncInfo];

  v13 = [MEMORY[0x277D2BCF8] sharedInstance];
  v14 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v15 = [v13 getAllDevicesWithArchivedAltAccountDevicesMatching:v14];
  v16 = [v15 firstObject];
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  if (![v16 supportsCapability:v17])
  {

    goto LABEL_7;
  }

  target = v5->_target;

  if (target)
  {
LABEL_7:
    v22 = objc_alloc_init(NMBUIPowerSourceInfo);
    powerSourceInfo = v5->_powerSourceInfo;
    v5->_powerSourceInfo = v22;

    [(NMBUIPowerSourceInfo *)v5->_powerSourceInfo setDelegate:v5];
    return v5;
  }

  if (isPairedDeviceGreenTeaCapable())
  {
    v19 = objc_alloc(MEMORY[0x277CBEBD0]);
    v20 = [v19 initWithSuiteName:*MEMORY[0x277D2B9C8]];
    greenTeaDefaults = v5->_greenTeaDefaults;
    v5->_greenTeaDefaults = v20;
  }

  return v5;
}

- (unint64_t)downloadStateForModelObject:(id)a3
{
  if (!a3)
  {
    return 5;
  }

  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained syncInfoController:self containerIdentifierForModelObject:v4];

  v7 = [(NMSMediaSyncInfo *)self->_syncInfo statusForContainer:v6];
  v8 = 5;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v9 = 2;
      if (v7 != 5)
      {
        v9 = 5;
      }

      if (v7 == 3)
      {
        v8 = 4;
      }

      else
      {
        v8 = v9;
      }

      goto LABEL_26;
    }

    v19 = [MEMORY[0x277D2BCF8] sharedInstance];
    v20 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    v21 = [v19 getAllDevicesWithArchivedAltAccountDevicesMatching:v20];
    v22 = [v21 firstObject];
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    if (![v22 supportsCapability:v23] || self->_target || !-[NMSMediaSyncInfo downloadPauseReasonForContainer:](self->_syncInfo, "downloadPauseReasonForContainer:", v6))
    {

      v8 = 3;
      goto LABEL_26;
    }

    v26 = [(NMSMediaSyncInfo *)self->_syncInfo hasItemsWaitingWithoutPauseReasonForContainer:v6];

    v24 = v26 == 0;
    goto LABEL_23;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_26;
  }

  if (v7 == 1)
  {
    v11 = [MEMORY[0x277D2BCF8] sharedInstance];
    v12 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    v13 = [v11 getAllDevicesWithArchivedAltAccountDevicesMatching:v12];
    v14 = [v13 firstObject];
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
    if ([v14 supportsCapability:v15])
    {
      target = self->_target;

      if (!target)
      {
        v17 = [(NMSMediaSyncInfo *)self->_syncInfo containers];
        v18 = [v17 containsObject:v6];

        if (v18)
        {
          v8 = 1;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v24 = ![(NMBUIPowerSourceInfo *)self->_powerSourceInfo hasExternalPowerSourceConnected];
LABEL_23:
    if (v24)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

LABEL_26:
  if ([(NMSMediaSyncInfo *)self->_syncInfo hasItemsOverStorageLimitForContainer:v6])
  {
    v10 = 6;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (float)progressForModelObject:(id)a3
{
  if (!a3)
  {
    return 1.0;
  }

  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained syncInfoController:self containerIdentifierForModelObject:v4];

  if (v6)
  {
    [(NMSMediaSyncInfo *)self->_syncInfo progressForContainer:v6];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (id)syncStatusDetailText
{
  v3 = [(NMSMediaSyncInfo *)self->_syncInfo status];
  if (v3 <= 5)
  {
    if (((1 << v3) & 0x26) != 0)
    {
      v4 = [MEMORY[0x277D2BCF8] sharedInstance];
      v5 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
      v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
      v7 = [v6 firstObject];
      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
      if ([v7 supportsCapability:v8])
      {
        target = self->_target;

        if (!target)
        {
          if (([(NMSMediaSyncInfo *)self->_syncInfo hasItemsWaitingWithoutPauseReason]& 1) != 0)
          {
            v10 = 0;
          }

          else
          {
            v10 = [(NMSMediaSyncInfo *)self->_syncInfo downloadPauseReason];
          }

          v15 = [(NMBUISyncInfoController *)self _musicSyncInfoMessageWithStatus:[(NMSMediaSyncInfo *)self->_syncInfo status] downloadPauseReason:v10];
          goto LABEL_26;
        }
      }

      else
      {
      }

      if ([(NMBUIPowerSourceInfo *)self->_powerSourceInfo hasExternalPowerSourceConnected])
      {
        v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v12 = v11;
        v13 = @"SYNC_STATUS_WAITING_TITLE";
        v14 = @"Waiting…";
        goto LABEL_12;
      }

      v16 = self->_target;
      switch(v16)
      {
        case 2uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_WAITING_TITLE_POWER_AUDIOBOOKS";
          v14 = @"Audiobooks download when Apple Watch is charging";
          goto LABEL_12;
        case 1uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_WAITING_TITLE_POWER_PODCASTS";
          v14 = @"Podcasts download when Apple Watch is charging";
          goto LABEL_12;
        case 0uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_WAITING_TITLE_POWER_MUSIC";
          v14 = @"Music downloads when Apple Watch is charging";
          goto LABEL_12;
      }
    }

    else
    {
      if (((1 << v3) & 0x11) != 0)
      {
        v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v12 = v11;
        v13 = @"SYNC_STATUS_UPDATED_TITLE";
        v14 = @"Updated Just Now";
LABEL_12:
        v15 = [v11 localizedStringForKey:v13 value:v14 table:0];

        goto LABEL_26;
      }

      v17 = self->_target;
      switch(v17)
      {
        case 2uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_SYNCING_TITLE_AUDIOBOOKS";
          v14 = @"Updating Audiobooks on Apple Watch…";
          goto LABEL_12;
        case 1uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_SYNCING_TITLE_PODCASTS";
          v14 = @"Updating Podcasts on Apple Watch…";
          goto LABEL_12;
        case 0uLL:
          v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v12 = v11;
          v13 = @"SYNC_STATUS_PROGRESS_TITLE_MUSIC";
          v14 = @"Updating Music on Apple Watch…";
          goto LABEL_12;
      }
    }
  }

  v15 = 0;
LABEL_26:

  return v15;
}

- (void)beginObservingSyncInfo
{
  if (self->_isObservingSyncInfo)
  {
    return;
  }

  self->_isObservingSyncInfo = 1;
  [(NMSMediaSyncInfoUpdaterHeartbeat *)self->_syncInfoUpdaterHeartbeat start];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  if ([v6 supportsCapability:v7])
  {
    target = self->_target;

    if (!target)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel__handleMusicCellularDownloadsAllowedDidChangeNotification_ name:*MEMORY[0x277CD5C50] object:0];

      if (isPairedDeviceGreenTeaCapable())
      {
        [(NSUserDefaults *)self->_greenTeaDefaults addObserver:self forKeyPath:*MEMORY[0x277D2B9C0] options:0 context:*MEMORY[0x277D2B9C0]];
        greenTeaDefaults = self->_greenTeaDefaults;
        v11 = *MEMORY[0x277D2B9B8];
        v12 = *MEMORY[0x277D2B9B8];

        [(NSUserDefaults *)greenTeaDefaults addObserver:self forKeyPath:v11 options:0 context:v12];
      }

      return;
    }
  }

  else
  {
  }

  powerSourceInfo = self->_powerSourceInfo;

  [(NMBUIPowerSourceInfo *)powerSourceInfo setDelegate:self];
}

- (void)endObservingSyncInfo
{
  if (!self->_isObservingSyncInfo)
  {
    return;
  }

  self->_isObservingSyncInfo = 0;
  [(NMSMediaSyncInfoUpdaterHeartbeat *)self->_syncInfoUpdaterHeartbeat stop];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  if ([v6 supportsCapability:v7])
  {
    target = self->_target;

    if (!target)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 removeObserver:self name:*MEMORY[0x277CD5C50] object:0];

      if (isPairedDeviceGreenTeaCapable())
      {
        [(NSUserDefaults *)self->_greenTeaDefaults removeObserver:self forKeyPath:*MEMORY[0x277D2B9C0] context:*MEMORY[0x277D2B9C0]];
        greenTeaDefaults = self->_greenTeaDefaults;
        v11 = *MEMORY[0x277D2B9B8];
        v12 = *MEMORY[0x277D2B9B8];

        [(NSUserDefaults *)greenTeaDefaults removeObserver:self forKeyPath:v11 context:v12];
      }

      return;
    }
  }

  else
  {
  }

  powerSourceInfo = self->_powerSourceInfo;

  [(NMBUIPowerSourceInfo *)powerSourceInfo setDelegate:0];
}

- (void)powerSourceInfoHasExternalPowerSourceConnectedDidChange:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v4 hasExternalPowerSourceConnected];
    _os_log_impl(&dword_25B260000, v5, OS_LOG_TYPE_DEFAULT, "Watch power state did change hasPower=%x", v7, 8u);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"NMBUIMediaSyncInfoDidUpdateNotification" object:self];
}

- (void)_handleMediaSyncInfoDidUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_25B260000, v5, OS_LOG_TYPE_DEFAULT, "Received media sync info did update notification.", v9, 2u);
  }

  v6 = [v4 object];

  syncInfo = self->_syncInfo;
  if (v6 == syncInfo)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"NMBUIMediaSyncInfoDidUpdateNotification" object:self];
  }
}

- (void)_handleMusicCellularDownloadsAllowedDidChangeNotification:(id)a3
{
  v4 = NMLogForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B260000, v4, OS_LOG_TYPE_DEFAULT, "Received MusicCellularDownloadsAllowedDidChange notification.", v6, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NMBUIMediaSyncInfoDidUpdateNotification" object:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (*MEMORY[0x277D2B9C0] == a6 || *MEMORY[0x277D2B9B8] == a6)
  {
    v13 = v6;
    v14 = v7;
    v10 = NMLogForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25B260000, v10, OS_LOG_TYPE_DEFAULT, "Received GreenTeaSettingsChanged notification.", v12, 2u);
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"NMBUIMediaSyncInfoDidUpdateNotification" object:self];
  }
}

- (id)_bundleIdentifierForTarget
{
  v3 = [(NMBUISyncInfoController *)self target];
  if (v3 >= 3)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected target: (%lu).", -[NMBUISyncInfoController target](self, "target")];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  return off_27993BE30[v3];
}

- (id)_musicSyncInfoMessageWithStatus:(unint64_t)a3 downloadPauseReason:(unint64_t)a4
{
  v4 = NMUResolvedDownloadWaitingReason(a3, a4);
  if (v4 > 4)
  {
    if (v4 <= 7)
    {
      if (v4 != 5)
      {
        if (v4 != 6)
        {
          v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v6 = v5;
          v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_POWER";
          v8 = @"Your music will continue to download the next time your Apple Watch is charging.";
          goto LABEL_30;
        }

        v10 = MGGetBoolAnswer();
        v6 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        if (v10)
        {
          v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WLAN";
          v8 = @"Your music will continue to download the next time your Apple Watch is connected to either WLAN or your iPhone.";
        }

        else
        {
          v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WIFI";
          v8 = @"Your music will continue to download the next time your Apple Watch is connected to either Wi-Fi or your iPhone.";
        }

        goto LABEL_29;
      }

      goto LABEL_9;
    }

    switch(v4)
    {
      case 8:
        v11 = MGGetBoolAnswer();
        v6 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        if (v11)
        {
          v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WLAN_AND_POWER";
          v8 = @"Your music will continue to download the next time your Apple Watch is charging and connected to either WLAN or your iPhone.";
        }

        else
        {
          v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WIFI_AND_POWER";
          v8 = @"Your music will continue to download the next time your Apple Watch is charging and connected to either Wi-Fi or your iPhone.";
        }

        goto LABEL_29;
      case 9:
        v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v6 = v5;
        v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_THERMAL";
        v8 = @"Your music will continue to download once your Apple Watch cools down.";
        goto LABEL_30;
      case 10:
        v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v6 = v5;
        v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_FAILED";
        v8 = @"Your music will resume downloading the next time your Apple Watch is charging and connected to the internet.";
        goto LABEL_30;
    }

LABEL_33:
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unsupported NMUDownloadWaitingReason." userInfo:0];
    objc_exception_throw(v14);
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v6 = v5;
      v7 = @"WAITING_TO_DOWNLOAD_ALERT_GENERIC_MESSAGE";
      v8 = @"Your music will download soon.";
      goto LABEL_30;
    }

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v6 = v5;
      v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_STORAGE";
      v8 = @"Your music will continue to download once additional storage space is available on your Apple Watch.";
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v4 == 2)
  {
    v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v6 = v5;
    v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_HQ_NETWORK";
    v8 = @"Your music will continue to download once your Apple Watch has a better internet connection.";
    goto LABEL_30;
  }

  if (v4 == 3)
  {
    v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v6 = v5;
    v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CONSTRAINED_NETWORK";
    v8 = @"Your music will continue to download once your Apple Watch is no longer in Low Data Mode.";
    goto LABEL_30;
  }

LABEL_9:
  v9 = MGGetBoolAnswer();
  v6 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  if (v9)
  {
    v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_WLAN";
    v8 = @"Cellular downloads are turned off. Your music will continue to download the next time your Apple Watch is connected to either WLAN or your iPhone.";
  }

  else
  {
    v7 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_WIFI";
    v8 = @"Cellular downloads are turned off. Your music will continue to download the next time your Apple Watch is connected to either Wi-Fi or your iPhone.";
  }

LABEL_29:
  v5 = v6;
LABEL_30:
  v12 = [v5 localizedStringForKey:v7 value:v8 table:0];

  return v12;
}

- (BOOL)_musicCellularDownloadingAllowedOnWatch
{
  if (isPairedDeviceGreenTeaCapable() && ![(NSUserDefaults *)self->_greenTeaDefaults BOOLForKey:*MEMORY[0x277D2B9C0]])
  {
    greenTeaDefaults = self->_greenTeaDefaults;
    v7 = *MEMORY[0x277D2B9B8];

    return [(NSUserDefaults *)greenTeaDefaults BOOLForKey:v7];
  }

  else
  {
    v3 = [MEMORY[0x277CD5FD8] sharedNetworkObserver];
    v4 = [v3 isMusicCellularDownloadingAllowed];

    return v4;
  }
}

- (NMBUISyncInfoControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end