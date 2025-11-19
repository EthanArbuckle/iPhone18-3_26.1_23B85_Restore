@interface HFSoftwareUpdateCounter
+ (id)progressForAccessoriesDownloadingSoftwareUpdate:(id)a3;
- (HFSoftwareUpdateCounter)init;
- (HFSoftwareUpdateCounter)initWithAccessories:(id)a3;
- (id)description;
@end

@implementation HFSoftwareUpdateCounter

+ (id)progressForAccessoriesDownloadingSoftwareUpdate:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__HFSoftwareUpdateCounter_progressForAccessoriesDownloadingSoftwareUpdate___block_invoke;
    v7[3] = &unk_277DF9AC0;
    v7[4] = &v12;
    v7[5] = &v8;
    [v3 na_each:v7];
    v4 = v9[3];
    if (v4)
    {
      v13[6] = v13[6] / v4;
      v5 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __75__HFSoftwareUpdateCounter_progressForAccessoriesDownloadingSoftwareUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_softwareUpdatePortionComplete];
  if (v3)
  {
    v5 = v3;
    [v3 floatValue];
    v3 = v5;
    if (v4 < 0.99 && fabsf(v4 + -0.99) >= 0.00000011921)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (HFSoftwareUpdateCounter)initWithAccessories:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = HFSoftwareUpdateCounter;
  v5 = [(HFSoftwareUpdateCounter *)&v39 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [MEMORY[0x277CBEB58] set];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = [MEMORY[0x277CBEB58] set];
    [MEMORY[0x277CBEB58] set];
    v12 = v28 = v4;
    v13 = [MEMORY[0x277CBEB58] set];
    v14 = [MEMORY[0x277CBEB58] set];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __47__HFSoftwareUpdateCounter_initWithAccessories___block_invoke;
    v29[3] = &unk_277DF9AE8;
    v30 = v12;
    v31 = v6;
    v32 = v8;
    v33 = v9;
    v34 = v14;
    v35 = v10;
    v36 = v7;
    v37 = v13;
    v38 = v11;
    v15 = v11;
    v26 = v13;
    v27 = v7;
    v16 = v10;
    v17 = v14;
    v18 = v9;
    v19 = v8;
    v20 = v6;
    v21 = v12;
    [v28 na_each:v29];
    -[HFSoftwareUpdateCounter setSoftwareUpdatesRequested:](v5, "setSoftwareUpdatesRequested:", [v27 count]);
    -[HFSoftwareUpdateCounter setSoftwareUpdatesReadyToInstall:](v5, "setSoftwareUpdatesReadyToInstall:", [v20 count]);
    -[HFSoftwareUpdateCounter setSoftwareUpdatesInProgress:](v5, "setSoftwareUpdatesInProgress:", [v19 count]);
    -[HFSoftwareUpdateCounter setSoftwareUpdatesDownloading:](v5, "setSoftwareUpdatesDownloading:", [v18 count]);
    -[HFSoftwareUpdateCounter setSoftwareUpdatesInstalling:](v5, "setSoftwareUpdatesInstalling:", [v16 count]);
    -[HFSoftwareUpdateCounter setSoftwareUpdatesInstalled:](v5, "setSoftwareUpdatesInstalled:", [v15 count]);
    -[HFSoftwareUpdateCounter setFirmwareUpdatesReadyToInstall:](v5, "setFirmwareUpdatesReadyToInstall:", [v21 count]);
    [(HFSoftwareUpdateCounter *)v5 setUpdatesReadyToInstall:[(HFSoftwareUpdateCounter *)v5 firmwareUpdatesReadyToInstall]+ [(HFSoftwareUpdateCounter *)v5 softwareUpdatesReadyToInstall]];
    v22 = [(HFSoftwareUpdateCounter *)v5 updatesReadyToInstall];
    v23 = [(HFSoftwareUpdateCounter *)v5 softwareUpdatesInProgress]+ v22;
    v24 = v23 + [(HFSoftwareUpdateCounter *)v5 softwareUpdatesInstalled];
    v4 = v28;
    [(HFSoftwareUpdateCounter *)v5 setAllUpdates:v24];
    [(HFSoftwareUpdateCounter *)v5 setAccessoriesWithRequestedSoftwareUpdates:v26];
    [(HFSoftwareUpdateCounter *)v5 setAccessoriesDownloadingSoftwareUpdates:v17];
  }

  return v5;
}

void __47__HFSoftwareUpdateCounter_initWithAccessories___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isFirmwareUpdateAvailable])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 storeID];
    v6 = [v3 bundleID];
    v7 = [v4 stringWithFormat:@"%@-%@", v5, v6];

    v8 = a1[4];
LABEL_18:
    [v8 addObject:v7];

    goto LABEL_19;
  }

  if ([v3 hf_isReadyToInstallSoftwareUpdate])
  {
    if ([v3 hf_hasNewValidSoftwareUpdate])
    {
      v9 = a1[5];
LABEL_17:
      v7 = [v3 hf_softwareUpdateHash];
      v8 = v9;
      goto LABEL_18;
    }

    v15 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Software update is ready to install but accessory not controllable: %@", buf, 0xCu);
    }
  }

  else if ([v3 hf_isSoftwareUpdateInProgress])
  {
    v10 = a1[6];
    v11 = [v3 hf_softwareUpdateHash];
    [v10 addObject:v11];

    if ([v3 hf_isDownloadingSoftwareUpdate])
    {
      v12 = a1[7];
      v13 = [v3 hf_softwareUpdateHash];
      [v12 addObject:v13];

      v14 = a1[8];
    }

    else
    {
      if ([v3 hf_isInstallingSoftwareUpdate])
      {
        v9 = a1[9];
        goto LABEL_17;
      }

      if (![v3 hf_hasRequestedSoftwareUpdate])
      {
        goto LABEL_19;
      }

      v17 = a1[10];
      v18 = [v3 hf_softwareUpdateHash];
      [v17 addObject:v18];

      v14 = a1[11];
    }

    [v14 addObject:v3];
  }

  else if ([v3 hf_isSoftwareUpdateInstalled])
  {
    v9 = a1[12];
    goto LABEL_17;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (HFSoftwareUpdateCounter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessories_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSoftwareUpdateCounter.m" lineNumber:121 description:{@"%s is unavailable; use %@ instead", "-[HFSoftwareUpdateCounter init]", v5}];

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesRequested](self withName:{"softwareUpdatesRequested"), @"softwareUpdatesRequested"}];
  v5 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesReadyToInstall](self withName:{"softwareUpdatesReadyToInstall"), @"softwareUpdatesReadyToInstall"}];
  v6 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesInProgress](self withName:{"softwareUpdatesInProgress"), @"softwareUpdatesInProgress"}];
  v7 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesDownloading](self withName:{"softwareUpdatesDownloading"), @"softwareUpdatesDownloading"}];
  v8 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesInstalling](self withName:{"softwareUpdatesInstalling"), @"softwareUpdatesInstalling"}];
  v9 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter softwareUpdatesInstalled](self withName:{"softwareUpdatesInstalled"), @"softwareUpdatesInstalled"}];
  v10 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter firmwareUpdatesReadyToInstall](self withName:{"firmwareUpdatesReadyToInstall"), @"firmwareUpdatesReadyToInstall"}];
  v11 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter updatesReadyToInstall](self withName:{"updatesReadyToInstall"), @"updatesReadyToInstall"}];
  v12 = [v3 appendUnsignedInteger:-[HFSoftwareUpdateCounter allUpdates](self withName:{"allUpdates"), @"allUpdates"}];
  v13 = [v3 build];

  return v13;
}

@end