@interface NMUDownloadWaitingAlertConfiguration
- (NMUDownloadWaitingAlertConfiguration)initWithItemName:(id)a3 status:(unint64_t)a4 downloadPauseReason:(unint64_t)a5 options:(id)a6;
- (NMUDownloadWaitingAlertConfiguration)initWithModelObject:(id)a3 status:(unint64_t)a4 downloadPauseReason:(unint64_t)a5 options:(id)a6;
- (id)_downloadNowOnCellularActionWithOptions:(id)a3;
- (id)_tryAgainWithOptions:(id)a3;
@end

@implementation NMUDownloadWaitingAlertConfiguration

- (NMUDownloadWaitingAlertConfiguration)initWithModelObject:(id)a3 status:(unint64_t)a4 downloadPauseReason:(unint64_t)a5 options:(id)a6
{
  v10 = a6;
  v11 = _titleForModelObject(a3);
  v12 = [(NMUDownloadWaitingAlertConfiguration *)self initWithItemName:v11 status:a4 downloadPauseReason:a5 options:v10];

  return v12;
}

- (NMUDownloadWaitingAlertConfiguration)initWithItemName:(id)a3 status:(unint64_t)a4 downloadPauseReason:(unint64_t)a5 options:(id)a6
{
  v7 = a5;
  v114[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v103.receiver = self;
  v103.super_class = NMUDownloadWaitingAlertConfiguration;
  v12 = [(NMUDownloadWaitingAlertConfiguration *)&v103 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v14 = [v13 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_TITLE" value:@"Waiting to Download" table:0];
    [(NMUKeepLocalAlertConfiguration *)v12 setTitle:v14];

    v15 = NMUResolvedDownloadWaitingReason(a4, v7);
    if (v15 > 4)
    {
      if (v15 > 7)
      {
        if (v15 == 8)
        {
          v54 = MEMORY[0x277CCACA8];
          v55 = MGGetBoolAnswer();
          v56 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v57 = v56;
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

          v92 = [v56 localizedStringForKey:v58 value:v59 table:0];
          v93 = [v54 stringWithFormat:v92, v10];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v93];

          [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:8];
          v89 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v109[0] = v89;
          v94 = [(NMUKeepLocalAlertConfiguration *)v12 _downloadNowOffPowerOnCellularActionWithOptions:v11];
          v109[1] = v94;
          v95 = MEMORY[0x277CBEA60];
          v96 = v109;
          goto LABEL_37;
        }

        if (v15 == 9)
        {
          v30 = MEMORY[0x277CCACA8];
          v31 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v32 = [v31 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_THERMAL_CONTAINER" value:@"“%@” will download once your Apple Watch cools down." table:0];
          v33 = [v30 stringWithFormat:v32, v10];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v33];

          v34 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v105 = v34;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
          [(NMUKeepLocalAlertConfiguration *)v12 setActions:v35];

          v28 = v12;
          v29 = 9;
        }

        else
        {
          v78 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v79 = [v78 localizedStringForKey:@"DOWNLOAD_FAILED_ALERT_TITLE" value:@"Download Failed" table:0];
          [(NMUKeepLocalAlertConfiguration *)v12 setTitle:v79];

          v80 = MEMORY[0x277CCACA8];
          v81 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v82 = [v81 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_FAILED_CONTAINER" value:@"“%@” will resume downloading the next time your Apple Watch is charging and connected to the internet." table:0];
          v83 = [v80 stringWithFormat:v82, v10];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v83];

          v84 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v104[0] = v84;
          v85 = [(NMUDownloadWaitingAlertConfiguration *)v12 _tryAgainWithOptions:v11];
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
          v18 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
          v19 = v18;
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

          v99 = [v18 localizedStringForKey:v20 value:v21 table:0];
          v100 = [v16 stringWithFormat:v99, v10];
          [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v100];

          [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:6];
          v89 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
          v110[0] = v89;
          v94 = [(NMUDownloadWaitingAlertConfiguration *)v12 _downloadNowOnCellularActionWithOptions:v11];
          v110[1] = v94;
          v95 = MEMORY[0x277CBEA60];
          v96 = v110;
LABEL_37:
          v101 = [v95 arrayWithObjects:v96 count:2];
          [(NMUKeepLocalAlertConfiguration *)v12 setActions:v101];

          goto LABEL_38;
        }

        v71 = MEMORY[0x277CCACA8];
        v72 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v73 = [v72 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_WAITING_FOR_POWER_CONTAINER" value:@"“%@” will download the next time your Apple Watch is charging." table:0];
        v74 = [v71 stringWithFormat:v73, v10];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v74];

        v75 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v108[0] = v75;
        v76 = [(NMUKeepLocalAlertConfiguration *)v12 _downloadNowOffPowerActionWithOptions:v11];
        v108[1] = v76;
        v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v77];

        v28 = v12;
        v29 = 7;
        goto LABEL_27;
      }

      v48 = MEMORY[0x277CCACA8];
      v49 = MGGetBoolAnswer();
      v50 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v51 = v50;
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

      v87 = [v50 localizedStringForKey:v52 value:v53 table:0];
      v88 = [v48 stringWithFormat:v87, v10];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v88];

      [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:5];
      v89 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v111 = v89;
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
        v66 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v67 = [v66 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_STORAGE_CONTAINER" value:@"“%@” will download once additional storage space is available on your Apple Watch." table:0];
        v68 = [v36 stringWithFormat:v67, v10];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v68];

        v69 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v113 = v69;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v70];

        v28 = v12;
        v29 = 1;
      }

      else
      {
        v37 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v38 = [v37 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_GENERIC_MESSAGE_CONTAINER" value:@"“%@” will download soon." table:0];
        v39 = [v36 stringWithFormat:v38, v10];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v39];

        v40 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v114[0] = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
        [(NMUKeepLocalAlertConfiguration *)v12 setActions:v41];

        v28 = v12;
        v29 = 0;
      }
    }

    else if (v15 == 2)
    {
      v42 = MEMORY[0x277CCACA8];
      v43 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v44 = [v43 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_LOW_NETWORK_LINK_QUALITY_CONTAINER" value:@"“%@” will download once your Apple Watch has a better internet connection." table:0];
      v45 = [v42 stringWithFormat:v44, v10];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v45];

      v46 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v107 = v46;
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
        v62 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v63 = v62;
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

        v97 = [v62 localizedStringForKey:v64 value:v65 table:0];
        v98 = [v60 stringWithFormat:v97, v10];
        [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v98];

        [(NMUDownloadWaitingAlertConfiguration *)v12 setReason:4];
        v89 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
        v112 = v89;
        v90 = MEMORY[0x277CBEA60];
        v91 = &v112;
        goto LABEL_34;
      }

      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v24 = [v23 localizedStringForKey:@"WAITING_TO_DOWNLOAD_ALERT_MESSAGE_CONSTRAINED_NETWORK_CONTAINER" value:@"“%@” will download once your Apple Watch is no longer in Low Data Mode." table:0];
      v25 = [v22 stringWithFormat:v24, v10];
      [(NMUKeepLocalAlertConfiguration *)v12 setMessage:v25];

      v26 = [(NMUKeepLocalAlertConfiguration *)v12 _okAction];
      v106 = v26;
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

- (id)_downloadNowOnCellularActionWithOptions:(id)a3
{
  v3 = [a3 copy];
  [v3 setCellularPolicy:1];
  v4 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [v4 localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:4];

  return v6;
}

- (id)_tryAgainWithOptions:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 nanoMediaBridgeUIBundle];
  v6 = [v5 localizedStringForKey:@"ACTION_TITLE_TRY_AGAIN_NOW" value:@"Try Again Now" table:0];
  v7 = [NMUKeepLocalAlertAction actionWithTitle:v6 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v4 downloadAction:6];

  return v7;
}

@end