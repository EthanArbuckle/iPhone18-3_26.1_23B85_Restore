@interface NMUKeepLocalErrorAlertConfiguration
- (NMUKeepLocalErrorAlertConfiguration)initWithItemName:(id)a3 error:(id)a4 options:(id)a5;
- (NMUKeepLocalErrorAlertConfiguration)initWithModelObject:(id)a3 error:(id)a4 options:(id)a5;
- (id)_downloadOnPowerActionWithOptions:(id)a3;
- (void)_setGenericErrorWithOKAction;
@end

@implementation NMUKeepLocalErrorAlertConfiguration

- (NMUKeepLocalErrorAlertConfiguration)initWithModelObject:(id)a3 error:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _titleForModelObject(a3);
  v11 = [(NMUKeepLocalErrorAlertConfiguration *)self initWithItemName:v10 error:v9 options:v8];

  return v11;
}

- (NMUKeepLocalErrorAlertConfiguration)initWithItemName:(id)a3 error:(id)a4 options:(id)a5
{
  v93[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v85.receiver = self;
  v85.super_class = NMUKeepLocalErrorAlertConfiguration;
  v11 = [(NMUKeepLocalErrorAlertConfiguration *)&v85 init];
  if (v11)
  {
    v12 = [v9 domain];
    v13 = [v12 isEqualToString:*MEMORY[0x277D2B9D0]];

    if (!v13)
    {
LABEL_7:
      [(NMUKeepLocalErrorAlertConfiguration *)v11 _setGenericErrorWithOKAction];
      goto LABEL_28;
    }

    v14 = [v9 code];
    if (v14 != 1)
    {
      if (v14 == 3)
      {
        v23 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v24 = [v23 localizedStringForKey:@"DOWNLOAD_ERROR_DEVICE_IS_LOCKED_TITLE" value:@"Unlock Apple Watch" table:0];
        [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v24];

        v25 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v26 = [v25 localizedStringForKey:@"DOWNLOAD_ERROR_DEVICE_IS_LOCKED_MESSAGE" value:@"Your Apple Watch is currently locked. Please unlock it and then try again." table:0];
        [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v26];

        v27 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
        v92 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        [(NMUKeepLocalAlertConfiguration *)v11 setActions:v28];

        v21 = v11;
        v22 = 1;
        goto LABEL_27;
      }

      if (v14 == 2)
      {
        v15 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v16 = [v15 localizedStringForKey:@"DOWNLOAD_ERROR_TIMEDOUT_TITLE" value:@"Could Not Connect to Apple Watch" table:0];
        [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v16];

        v17 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v18 = [v17 localizedStringForKey:@"DOWNLOAD_ERROR_TIMEDOUT_MESSAGE" value:@"Make sure your Apple Watch is nearby table:{powered on, and not in Airplane Mode and then try again.", 0}];
        [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v18];

        v19 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
        v93[0] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
        [(NMUKeepLocalAlertConfiguration *)v11 setActions:v20];

        v21 = v11;
        v22 = 0;
LABEL_27:
        [(NMUKeepLocalErrorAlertConfiguration *)v21 setReason:v22];
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    v29 = [v9 userInfo];
    v30 = [v29 objectForKey:*MEMORY[0x277D2B9D8]];
    v31 = [v30 unsignedIntegerValue];

    if ((v31 & 0x10) != 0)
    {
      v42 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v43 = [v42 localizedStringForKey:@"DOWNLOAD_EXCEPTION_NO_NETWORK_TITLE" value:@"No Internet Connection" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v43];

      v44 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v45 = [v44 localizedStringForKey:@"DOWNLOAD_EXCEPTION_NO_NETWORK_MESSAGE" value:@"Make sure your Apple Watch is connected to the internet and try again." table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v45];

      v46 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
      v91 = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v47];

      v21 = v11;
      v22 = 2;
      goto LABEL_27;
    }

    if ((v31 & 0x20) != 0)
    {
      v48 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v49 = [v48 localizedStringForKey:@"DOWNLOAD_EXCEPTION_STORAGE_SPACE_NO_SPACE_TITLE" value:@"Unable to Complete Download" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v49];

      v50 = MEMORY[0x277CCACA8];
      v51 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v52 = [v51 localizedStringForKey:@"DOWNLOAD_EXCEPTION_STORAGE_SPACE_NO_SPACE_MESSAGE" value:@"There’s not enough storage space to download “%@” on your Apple Watch." table:0];
      v53 = [v50 stringWithFormat:v52, v8];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v53];

      v54 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
      v90 = v54;
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v55];

      v21 = v11;
      v22 = 3;
      goto LABEL_27;
    }

    if ((v31 & 0x40) != 0)
    {
      v56 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v57 = [v56 localizedStringForKey:@"DOWNLOAD_EXCEPTION_CELLULAR_DATA_NOT_ALLOWED_TITLE" value:@"Cellular Data is Turned Off" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v57];

      LOBYTE(v57) = MGGetBoolAnswer();
      v58 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v59 = v58;
      if (v57)
      {
        v60 = @"DOWNLOAD_EXCEPTION_CELLULAR_DATA_NOT_ALLOWED_MESSAGE_WLAN";
        v61 = @"To download music when your Apple Watch isn’t connected to either WLAN or your iPhone, turn on Cellular Data for Music. You can change this anytime in Settings > Cellular.";
      }

      else
      {
        v60 = @"DOWNLOAD_EXCEPTION_CELLULAR_DATA_NOT_ALLOWED_MESSAGE_WIFI";
        v61 = @"To download music when your Apple Watch isn’t connected to either Wi-Fi or your iPhone, turn on Cellular Data for Music. You can change this anytime in Settings > Cellular.";
      }

      v68 = [v58 localizedStringForKey:v60 value:v61 table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v68];

      v69 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
      v89 = v69;
      v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v70];

      v21 = v11;
      v22 = 4;
      goto LABEL_27;
    }

    if ((v31 & 8) != 0)
    {
      v62 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v63 = [v62 localizedStringForKey:@"DOWNLOAD_EXCEPTION_CELLULAR_DOWNLOADS_NOT_ALLOWED_TITLE" value:@"Cellular Downloads Are Turned Off" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v63];

      LOBYTE(v63) = MGGetBoolAnswer();
      v64 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v65 = v64;
      if (v63)
      {
        v66 = @"DOWNLOAD_EXCEPTION_CELLULAR_DOWNLOADS_NOT_ALLOWED_MESSAGE_WLAN";
        v67 = @"To download music when your Apple Watch isn’t connected to either WLAN or your iPhone, turn on Cellular Data for downloads. You can change this anytime in Settings > Music.";
      }

      else
      {
        v66 = @"DOWNLOAD_EXCEPTION_CELLULAR_DOWNLOADS_NOT_ALLOWED_MESSAGE_WIFI";
        v67 = @"To download music when your Apple Watch isn’t connected to either Wi-Fi or your iPhone, turn on Cellular Data for downloads. You can change this anytime in Settings > Music.";
      }

      v81 = [v64 localizedStringForKey:v66 value:v67 table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v81];

      v82 = [(NMUKeepLocalAlertConfiguration *)v11 _okAction];
      v88 = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v83];

      v21 = v11;
      v22 = 5;
      goto LABEL_27;
    }

    if ((v31 & 4) != 0)
    {
      v71 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v72 = [v71 localizedStringForKey:@"DOWNLOAD_EXCEPTION_POWER_WARNING_TITLE" value:@"Battery Warning" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v72];

      v73 = MEMORY[0x277CCACA8];
      v74 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v75 = [v74 localizedStringForKey:@"DOWNLOAD_EXCEPTION_POWER_WARNING_MESSAGE" value:@"Continuing to download “%@” on your Apple Watch may use more battery than normal." table:0];
      v76 = [v73 stringWithFormat:v75, v8];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v76];

      v77 = [(NMUKeepLocalAlertConfiguration *)v11 _downloadNowOffPowerOnCellularActionWithOptions:v10];
      v87[0] = v77;
      v78 = [(NMUKeepLocalErrorAlertConfiguration *)v11 _downloadOnPowerActionWithOptions:v10];
      v87[1] = v78;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v79];

      v80 = [(NMUKeepLocalAlertConfiguration *)v11 _cancelAction];
      [(NMUKeepLocalAlertConfiguration *)v11 setCancelAction:v80];

      v21 = v11;
      v22 = 6;
      goto LABEL_27;
    }

    if ((v31 & 2) != 0)
    {
      v32 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v33 = [v32 localizedStringForKey:@"DOWNLOAD_EXCEPTION_POWER_WARNING_TITLE" value:@"Battery Warning" table:0];
      [(NMUKeepLocalAlertConfiguration *)v11 setTitle:v33];

      v34 = MEMORY[0x277CCACA8];
      v35 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v36 = [v35 localizedStringForKey:@"DOWNLOAD_EXCEPTION_POWER_WARNING_MESSAGE" value:@"Continuing to download “%@” on your Apple Watch may use more battery than normal." table:0];
      v37 = [v34 stringWithFormat:v36, v8];
      [(NMUKeepLocalAlertConfiguration *)v11 setMessage:v37];

      v38 = [(NMUKeepLocalAlertConfiguration *)v11 _downloadNowOffPowerActionWithOptions:v10];
      v86[0] = v38;
      v39 = [(NMUKeepLocalErrorAlertConfiguration *)v11 _downloadOnPowerActionWithOptions:v10];
      v86[1] = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
      [(NMUKeepLocalAlertConfiguration *)v11 setActions:v40];

      v41 = [(NMUKeepLocalAlertConfiguration *)v11 _cancelAction];
      [(NMUKeepLocalAlertConfiguration *)v11 setCancelAction:v41];

      v21 = v11;
      v22 = 7;
      goto LABEL_27;
    }
  }

LABEL_28:

  return v11;
}

- (void)_setGenericErrorWithOKAction
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v4 = [v3 localizedStringForKey:@"DOWNLOAD_UNKNOWN_ERROR_TITLE" value:@"Something went wrong" table:0];
  [(NMUKeepLocalAlertConfiguration *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v6 = [v5 localizedStringForKey:@"DOWNLOAD_UNKNOWN_ERROR_MESSAGE" value:@"Please try again." table:0];
  [(NMUKeepLocalAlertConfiguration *)self setMessage:v6];

  v7 = [(NMUKeepLocalAlertConfiguration *)self _okAction];
  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(NMUKeepLocalAlertConfiguration *)self setActions:v8];
}

- (id)_downloadOnPowerActionWithOptions:(id)a3
{
  v3 = [a3 copy];
  [v3 setPowerPolicy:2];
  v4 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [v4 localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_WHEN_CHARGING" value:@"Download When Charging" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:5];

  return v6;
}

@end