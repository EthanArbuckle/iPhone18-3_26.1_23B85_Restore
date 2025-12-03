@interface NMUDownloadWaitingAlertConfiguration
- (NMUDownloadWaitingAlertConfiguration)initWithItemName:(id)name status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options;
- (NMUDownloadWaitingAlertConfiguration)initWithModelObject:(id)object status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options;
- (id)_downloadNowOnCellularActionWithOptions:(id)options;
- (id)_tryAgainWithOptions:(id)options;
@end

@implementation NMUDownloadWaitingAlertConfiguration

- (NMUDownloadWaitingAlertConfiguration)initWithModelObject:(id)object status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options
{
  optionsCopy = options;
  v11 = _titleForModelObject(object);
  v12 = [(NMUDownloadWaitingAlertConfiguration *)self initWithItemName:v11 status:status downloadPauseReason:reason options:optionsCopy];

  return v12;
}

- (NMUDownloadWaitingAlertConfiguration)initWithItemName:(id)name status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options
{
  reasonCopy = reason;
  v114[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  v103.receiver = self;
  v103.super_class = NMUDownloadWaitingAlertConfiguration;
  v12 = [(NMUDownloadWaitingAlertConfiguration *)&v103 init];
  if (v12)
  {
    nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v14 = [nanoMediaBridgeUIBundle localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_TITLE" value:@"Waiting to Download" table:0];
    [(NMUKeepLocalAlertConfiguration *)v12 setTitle:v14];

    v15 = NMUResolvedDownloadWaitingReason(status, reasonCopy);
    if (v15 > 4)
    {
      if (v15 > 7)
      {
        if (v15 == 8)
        {
          v54 = MEMORY[0x277CCACA8];
          v55 = MGGetBoolAnswer();
          nanoMediaBridgeUIBundle2 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v57 = nanoMediaBridgeUIBundle2;
          if (v55)
          {
            v58 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WLAN_AND_POWER_CONTAINER";
            v59 = @"“%@” will download the next time your Apple Watch is charging and connected to either WLAN or your iPhone.";
          }

          else
          {
            v58 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WIFI_AND_POWER_CONTAINER";
            v59 = @"“%@” will download the next time your Apple Watch is charging and connected to either Wi-Fi or your iPhone.";
          }

          v92 = [nanoMediaBridgeUIBundle2 localizedStringForKey:v58 value:v59 table:0];
          nameCopy = [v54 stringWithFormat:v92, nameCopy];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy];

          [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:8];
          _okAction = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v109[0] = _okAction;
          v94 = [(NMUKeepLocalAlertConfiguration *)v12 _downloadNowOffPowerOnCellularActionWithOptions:optionsCopy];
          v109[1] = v94;
          v95 = MEMORY[0x277CBEA60];
          v96 = v109;
          goto LABEL_37;
        }

        if (v15 == 9)
        {
          v30 = MEMORY[0x277CCACA8];
          nanoMediaBridgeUIBundle3 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v32 = [nanoMediaBridgeUIBundle3 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_THERMAL_CONTAINER" value:@"“%@” will download once your Apple Watch cools down." table:0];
          nameCopy2 = [v30 stringWithFormat:v32, nameCopy];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy2];

          _okAction2 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v105 = _okAction2;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
          [(NMUKeepLocalAlertConfiguration *)v12 setActions:v35];

          v28 = v12;
          v29 = 9;
        }

        else
        {
          nanoMediaBridgeUIBundle4 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v79 = [nanoMediaBridgeUIBundle4 localizedStringForKey:@"DOWNLOAD_FAILED_ALERT_TITLE" value:@"Download Failed" table:0];
          [(NMUKeepLocalAlertConfiguration *)v12 setTitle:v79];

          v80 = MEMORY[0x277CCACA8];
          nanoMediaBridgeUIBundle5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v82 = [nanoMediaBridgeUIBundle5 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_FAILED_CONTAINER" value:@"“%@” will resume downloading the next time your Apple Watch is charging and connected to the internet." table:0];
          nameCopy3 = [v80 stringWithFormat:v82, nameCopy];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy3];

          _okAction3 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v104[0] = _okAction3;
          v85 = [(NMUDownloadWaitingAlertConfiguration *)v12 _tryAgainWithOptions:optionsCopy];
          v104[1] = v85;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
          [(NMUKeepLocalAlertConfiguration *)v12 setActions:v86];

          v28 = v12;
          v29 = 10;
        }

        goto LABEL_27;
      }

      if (v15 != 5)
      {
        if (v15 == 6)
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = MGGetBoolAnswer();
          nanoMediaBridgeUIBundle6 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v19 = nanoMediaBridgeUIBundle6;
          if (v17)
          {
            v20 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_WLAN_CONTAINER";
            v21 = @"“%@” will download the next time your Apple Watch is connected to either WLAN or your iPhone.";
          }

          else
          {
            v20 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_WIFI_CONTAINER";
            v21 = @"“%@” will download the next time your Apple Watch is connected to either Wi-Fi or your iPhone.";
          }

          v99 = [nanoMediaBridgeUIBundle6 localizedStringForKey:v20 value:v21 table:0];
          nameCopy4 = [v16 stringWithFormat:v99, nameCopy];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy4];

          [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:6];
          _okAction = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v110[0] = _okAction;
          v94 = [(NMUDownloadWaitingAlertConfiguration *)v12 _downloadNowOnCellularActionWithOptions:optionsCopy];
          v110[1] = v94;
          v95 = MEMORY[0x277CBEA60];
          v96 = v110;
LABEL_37:
          v101 = [v95 arrayWithObjects:v96 count:2];
          [(NMUKeepLocalAlertConfiguration *)v12 setActions:v101];

          goto LABEL_38;
        }

        v71 = MEMORY[0x277CCACA8];
        nanoMediaBridgeUIBundle7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v73 = [nanoMediaBridgeUIBundle7 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_POWER_CONTAINER" value:@"“%@” will download the next time your Apple Watch is charging." table:0];
        nameCopy5 = [v71 stringWithFormat:v73, nameCopy];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy5];

        _okAction4 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v108[0] = _okAction4;
        v76 = [(NMUKeepLocalAlertConfiguration *)v12 _downloadNowOffPowerActionWithOptions:optionsCopy];
        v108[1] = v76;
        v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v77];

        v28 = v12;
        v29 = 7;
        goto LABEL_27;
      }

      v48 = MEMORY[0x277CCACA8];
      v49 = MGGetBoolAnswer();
      nanoMediaBridgeUIBundle8 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v51 = nanoMediaBridgeUIBundle8;
      if (v49)
      {
        v52 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_CONTAINER_WLAN";
        v53 = @"Cellular downloads are turned off. “%@” will download the next time your Apple Watch is connected to either WLAN or your iPhone.";
      }

      else
      {
        v52 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_CONTAINER_WIFI";
        v53 = @"Cellular downloads are turned off. “%@” will download the next time your Apple Watch is connected to either Wi-Fi or your iPhone.";
      }

      v87 = [nanoMediaBridgeUIBundle8 localizedStringForKey:v52 value:v53 table:0];
      nameCopy6 = [v48 stringWithFormat:v87, nameCopy];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy6];

      [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:5];
      _okAction = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v111 = _okAction;
      v90 = MEMORY[0x277CBEA60];
      v91 = &v111;
LABEL_34:
      v94 = [v90 arrayWithObjects:v91 count:1];
      [(NMUKeepLocalAlertConfiguration *)v12 setActions:v94];
LABEL_38:

      goto LABEL_39;
    }

    if (v15 <= 1)
    {
      v36 = MEMORY[0x277CCACA8];
      if (v15)
      {
        nanoMediaBridgeUIBundle9 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v67 = [nanoMediaBridgeUIBundle9 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_STORAGE_CONTAINER" value:@"“%@” will download once additional storage space is available on your Apple Watch." table:0];
        nameCopy7 = [v36 stringWithFormat:v67, nameCopy];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy7];

        _okAction5 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v113 = _okAction5;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v70];

        v28 = v12;
        v29 = 1;
      }

      else
      {
        nanoMediaBridgeUIBundle10 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v38 = [nanoMediaBridgeUIBundle10 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_GENERIC_MESSAGE_CONTAINER" value:@"“%@” will download soon." table:0];
        nameCopy8 = [v36 stringWithFormat:v38, nameCopy];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy8];

        _okAction6 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v114[0] = _okAction6;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v41];

        v28 = v12;
        v29 = 0;
      }
    }

    else if (v15 == 2)
    {
      v42 = MEMORY[0x277CCACA8];
      nanoMediaBridgeUIBundle11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v44 = [nanoMediaBridgeUIBundle11 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_LOW_NETWORK_LINK_QUALITY_CONTAINER" value:@"“%@” will download once your Apple Watch has a better internet connection." table:0];
      nameCopy9 = [v42 stringWithFormat:v44, nameCopy];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy9];

      _okAction7 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v107 = _okAction7;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
      [(NMUKeepLocalAlertConfiguration *)v12 setActions:v47];

      v28 = v12;
      v29 = 2;
    }

    else
    {
      if (v15 != 3)
      {
        v60 = MEMORY[0x277CCACA8];
        v61 = MGGetBoolAnswer();
        nanoMediaBridgeUIBundle12 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v63 = nanoMediaBridgeUIBundle12;
        if (v61)
        {
          v64 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_CONTAINER_WLAN";
          v65 = @"Cellular downloads are turned off. “%@” will download the next time your Apple Watch is connected to either WLAN or your iPhone.";
        }

        else
        {
          v64 = @"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CELLULAR_DOWNLOADS_NOT_ALLOWED_CONTAINER_WIFI";
          v65 = @"Cellular downloads are turned off. “%@” will download the next time your Apple Watch is connected to either Wi-Fi or your iPhone.";
        }

        v97 = [nanoMediaBridgeUIBundle12 localizedStringForKey:v64 value:v65 table:0];
        nameCopy10 = [v60 stringWithFormat:v97, nameCopy];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy10];

        [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:4];
        _okAction = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v112 = _okAction;
        v90 = MEMORY[0x277CBEA60];
        v91 = &v112;
        goto LABEL_34;
      }

      v22 = MEMORY[0x277CCACA8];
      nanoMediaBridgeUIBundle13 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v24 = [nanoMediaBridgeUIBundle13 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CONSTRAINED_NETWORK_CONTAINER" value:@"“%@” will download once your Apple Watch is no longer in Low Data Mode." table:0];
      nameCopy11 = [v22 stringWithFormat:v24, nameCopy];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:nameCopy11];

      _okAction8 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v106 = _okAction8;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
      [(NMUKeepLocalAlertConfiguration *)v12 setActions:v27];

      v28 = v12;
      v29 = 3;
    }

LABEL_27:
    [(NMUDownloadWaitingAlertConfiguration *)v28 setReason:v29];
  }

LABEL_39:

  return v12;
}

- (id)_downloadNowOnCellularActionWithOptions:(id)options
{
  v3 = [options copy];
  [v3 setCellularPolicy:1];
  nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:4];

  return v6;
}

- (id)_tryAgainWithOptions:(id)options
{
  v3 = MEMORY[0x277CCA8D8];
  optionsCopy = options;
  nanoMediaBridgeUIBundle = [v3 nanoMediaBridgeUIBundle];
  v6 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_TRY_AGAIN_NOW" value:@"Try Again Now" table:0];
  v7 = [NMUKeepLocalAlertAction actionWithTitle:v6 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:optionsCopy downloadAction:6];

  return v7;
}

@end