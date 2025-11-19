@interface DNDSPairedDevice
- (BOOL)isEqual:(id)a3;
- (DNDSPairedDevice)initWithCloudDeviceIdentifier:(id)a3 deviceClass:(unint64_t)a4 assertionSyncProtocolVersion:(unint64_t)a5 configurationSyncProtocolVersion:(unint64_t)a6 supportsSilenceLists:(BOOL)a7;
- (DNDSPairedDevice)initWithLocalDeviceIdentifier:(id)a3 deviceClass:(unint64_t)a4 assertionSyncProtocolVersion:(unint64_t)a5 configurationSyncProtocolVersion:(unint64_t)a6 iOS14EraOS:(BOOL)a7 supportsSilenceLists:(BOOL)a8 pairingIdentifier:(id)a9 pairingDataStore:(id)a10;
- (id)description;
- (unint64_t)hash;
- (void)setDeviceName:(id)a3;
- (void)setOsBuild:(id)a3;
@end

@implementation DNDSPairedDevice

- (DNDSPairedDevice)initWithLocalDeviceIdentifier:(id)a3 deviceClass:(unint64_t)a4 assertionSyncProtocolVersion:(unint64_t)a5 configurationSyncProtocolVersion:(unint64_t)a6 iOS14EraOS:(BOOL)a7 supportsSilenceLists:(BOOL)a8 pairingIdentifier:(id)a9 pairingDataStore:(id)a10
{
  v16 = a3;
  v17 = a9;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = DNDSPairedDevice;
  v19 = [(DNDSPairedDevice *)&v27 init];
  if (v19)
  {
    v20 = [v16 copy];
    deviceIdentifier = v19->_deviceIdentifier;
    v19->_deviceIdentifier = v20;

    v19->_deviceClass = a4;
    v19->_assertionSyncProtocolVersion = a5;
    v19->_configurationSyncProtocolVersion = a6;
    v19->_iOS14EraOS = a7;
    v19->_supportsSilenceLists = a8;
    v19->_iCloudEnabled = 0;
    v19->_syncServiceType = 1;
    v22 = [v17 copy];
    pairingIdentifier = v19->_pairingIdentifier;
    v19->_pairingIdentifier = v22;

    v24 = [v18 copy];
    pairingDataStore = v19->_pairingDataStore;
    v19->_pairingDataStore = v24;
  }

  return v19;
}

- (DNDSPairedDevice)initWithCloudDeviceIdentifier:(id)a3 deviceClass:(unint64_t)a4 assertionSyncProtocolVersion:(unint64_t)a5 configurationSyncProtocolVersion:(unint64_t)a6 supportsSilenceLists:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = DNDSPairedDevice;
  v13 = [(DNDSPairedDevice *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    deviceIdentifier = v13->_deviceIdentifier;
    v13->_deviceIdentifier = v14;

    v13->_deviceClass = a4;
    v13->_assertionSyncProtocolVersion = a5;
    v13->_configurationSyncProtocolVersion = a6;
    v13->_iOS14EraOS = 0;
    v13->_supportsSilenceLists = a7;
    v13->_iCloudEnabled = 1;
    v13->_syncServiceType = 2;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(DNDSPairedDevice *)self deviceIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDSPairedDevice *)self deviceClass];
  v6 = v5 ^ [(DNDSPairedDevice *)self assertionSyncProtocolVersion]^ v4;
  v7 = v6 ^ [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
  v8 = [(DNDSPairedDevice *)self isIOS14EraOS];
  v9 = v7 ^ v8 ^ [(DNDSPairedDevice *)self supportsSilenceLists];
  v10 = [(DNDSPairedDevice *)self isICloudEnabled];
  v11 = v10 ^ [(DNDSPairedDevice *)self syncServiceType];
  v12 = [(DNDSPairedDevice *)self pairingIdentifier];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [(DNDSPairedDevice *)self pairingDataStore];
  v15 = [v14 hash];

  return v13 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDSPairedDevice *)self deviceIdentifier];
      v11 = [(DNDSPairedDevice *)v9 deviceIdentifier];
      if (v10 != v11)
      {
        v12 = [(DNDSPairedDevice *)self deviceIdentifier];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_37;
        }

        v3 = v12;
        v4 = [(DNDSPairedDevice *)v9 deviceIdentifier];
        if (!v4)
        {
          v13 = 0;
LABEL_36:

          v14 = v13;
          goto LABEL_37;
        }

        v5 = [(DNDSPairedDevice *)self deviceIdentifier];
        v6 = [(DNDSPairedDevice *)v9 deviceIdentifier];
        if (![v5 isEqual:v6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }
      }

      v15 = [(DNDSPairedDevice *)self deviceClass];
      if (v15 == [(DNDSPairedDevice *)v9 deviceClass])
      {
        v16 = [(DNDSPairedDevice *)self assertionSyncProtocolVersion];
        if (v16 == [(DNDSPairedDevice *)v9 assertionSyncProtocolVersion])
        {
          v17 = [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
          if (v17 == [(DNDSPairedDevice *)v9 configurationSyncProtocolVersion])
          {
            v18 = [(DNDSPairedDevice *)self isIOS14EraOS];
            if (v18 == [(DNDSPairedDevice *)v9 isIOS14EraOS])
            {
              v19 = [(DNDSPairedDevice *)self supportsSilenceLists];
              if (v19 == [(DNDSPairedDevice *)v9 supportsSilenceLists])
              {
                v20 = [(DNDSPairedDevice *)self isICloudEnabled];
                if (v20 == [(DNDSPairedDevice *)v9 isICloudEnabled])
                {
                  v21 = [(DNDSPairedDevice *)self syncServiceType];
                  if (v21 == [(DNDSPairedDevice *)v9 syncServiceType])
                  {
                    v22 = [(DNDSPairedDevice *)self pairingIdentifier];
                    v43 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                    if (v22 == v43)
                    {
                      v42 = v22;
                      goto LABEL_25;
                    }

                    v23 = [(DNDSPairedDevice *)self pairingIdentifier];
                    if (v23)
                    {
                      v40 = v23;
                      v24 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                      if (v24)
                      {
                        v38 = v24;
                        v39 = [(DNDSPairedDevice *)self pairingIdentifier];
                        v37 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                        if ([v39 isEqual:?])
                        {
                          v42 = v22;
LABEL_25:
                          v25 = [(DNDSPairedDevice *)self pairingDataStore];
                          v26 = [(DNDSPairedDevice *)v9 pairingDataStore];
                          v41 = v25;
                          v27 = v25 == v26;
                          v28 = v26;
                          if (v27)
                          {

                            v13 = 1;
                          }

                          else
                          {
                            v29 = [(DNDSPairedDevice *)self pairingDataStore];
                            if (v29)
                            {
                              v36 = v29;
                              v30 = [(DNDSPairedDevice *)v9 pairingDataStore];
                              if (v30)
                              {
                                v35 = v30;
                                v34 = [(DNDSPairedDevice *)self pairingDataStore];
                                v33 = [(DNDSPairedDevice *)v9 pairingDataStore];
                                v13 = [v34 isEqual:v33];

                                v30 = v35;
                              }

                              else
                              {
                                v13 = 0;
                              }
                            }

                            else
                            {

                              v13 = 0;
                            }
                          }

                          v32 = v43;
                          if (v42 != v43)
                          {

                            v32 = v43;
                          }

                          v14 = v13;
LABEL_34:
                          if (v10 != v11)
                          {
                            goto LABEL_35;
                          }

LABEL_37:

                          goto LABEL_38;
                        }

                        v24 = v38;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_34;
    }

    v14 = 0;
  }

LABEL_38:

  return v14;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v29 = [(DNDSPairedDevice *)self deviceName];
  if (v29)
  {
    v3 = MEMORY[0x277CCACA8];
    v22 = [(DNDSPairedDevice *)self deviceName];
    v4 = [v3 stringWithFormat:@" deviceName: '%@'", v22];;
  }

  else
  {
    v4 = &stru_285C26090;
  }

  v26 = [(DNDSPairedDevice *)self osBuild];
  if (v26)
  {
    v5 = MEMORY[0x277CCACA8];
    v21 = [(DNDSPairedDevice *)self osBuild];
    v6 = [v5 stringWithFormat:@" build: %@", v21];;
  }

  else
  {
    v6 = &stru_285C26090;
  }

  v24 = v6;
  v28 = v4;
  v23 = [(DNDSPairedDevice *)self deviceIdentifier];
  v7 = [(DNDSPairedDevice *)self deviceClass];
  v8 = @"<unhandled>";
  if (v7 <= 4)
  {
    v8 = off_278F8B2E0[v7];
  }

  v9 = [(DNDSPairedDevice *)self assertionSyncProtocolVersion];
  v10 = [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice isIOS14EraOS](self, "isIOS14EraOS")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice supportsSilenceLists](self, "supportsSilenceLists")}];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice isICloudEnabled](self, "isICloudEnabled")}];
  v14 = [(DNDSPairedDevice *)self syncServiceType];
  v15 = @"cloud";
  if (v14 != 2)
  {
    v15 = @"<unhandled>";
  }

  if (v14 == 1)
  {
    v15 = @"local";
  }

  v16 = v15;
  v17 = [(DNDSPairedDevice *)self pairingIdentifier];
  v18 = [(DNDSPairedDevice *)self pairingDataStore];
  v19 = [v27 stringWithFormat:@"<%@: %p%@%@ deviceIdentifier: '%@'; deviceClass: %@; assertionSyncProtocolVersion: %lu; configurationSyncProtocolVersion: %lu; iOS14EraOS: %@; supportsSilenceLists: %@; iCloudEnabled: %@; syncServiceType: %@; pairingIdentifier: %@; pairingDataStore: %@>", v25, self, v28, v24, v23, v8, v9, v10, v11, v12, v13, v16, v17, v18];;

  if (v26)
  {
  }

  if (v29)
  {
  }

  return v19;
}

- (void)setOsBuild:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    objc_storeStrong(&self->_osBuild, a3);
  }
}

- (void)setDeviceName:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    objc_storeStrong(&self->_deviceName, a3);
  }
}

@end