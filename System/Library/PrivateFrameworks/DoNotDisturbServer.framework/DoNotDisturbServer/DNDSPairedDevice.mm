@interface DNDSPairedDevice
- (BOOL)isEqual:(id)equal;
- (DNDSPairedDevice)initWithCloudDeviceIdentifier:(id)identifier deviceClass:(unint64_t)class assertionSyncProtocolVersion:(unint64_t)version configurationSyncProtocolVersion:(unint64_t)protocolVersion supportsSilenceLists:(BOOL)lists;
- (DNDSPairedDevice)initWithLocalDeviceIdentifier:(id)identifier deviceClass:(unint64_t)class assertionSyncProtocolVersion:(unint64_t)version configurationSyncProtocolVersion:(unint64_t)protocolVersion iOS14EraOS:(BOOL)s supportsSilenceLists:(BOOL)lists pairingIdentifier:(id)pairingIdentifier pairingDataStore:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)setDeviceName:(id)name;
- (void)setOsBuild:(id)build;
@end

@implementation DNDSPairedDevice

- (DNDSPairedDevice)initWithLocalDeviceIdentifier:(id)identifier deviceClass:(unint64_t)class assertionSyncProtocolVersion:(unint64_t)version configurationSyncProtocolVersion:(unint64_t)protocolVersion iOS14EraOS:(BOOL)s supportsSilenceLists:(BOOL)lists pairingIdentifier:(id)pairingIdentifier pairingDataStore:(id)self0
{
  identifierCopy = identifier;
  pairingIdentifierCopy = pairingIdentifier;
  storeCopy = store;
  v27.receiver = self;
  v27.super_class = DNDSPairedDevice;
  v19 = [(DNDSPairedDevice *)&v27 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    deviceIdentifier = v19->_deviceIdentifier;
    v19->_deviceIdentifier = v20;

    v19->_deviceClass = class;
    v19->_assertionSyncProtocolVersion = version;
    v19->_configurationSyncProtocolVersion = protocolVersion;
    v19->_iOS14EraOS = s;
    v19->_supportsSilenceLists = lists;
    v19->_iCloudEnabled = 0;
    v19->_syncServiceType = 1;
    v22 = [pairingIdentifierCopy copy];
    pairingIdentifier = v19->_pairingIdentifier;
    v19->_pairingIdentifier = v22;

    v24 = [storeCopy copy];
    pairingDataStore = v19->_pairingDataStore;
    v19->_pairingDataStore = v24;
  }

  return v19;
}

- (DNDSPairedDevice)initWithCloudDeviceIdentifier:(id)identifier deviceClass:(unint64_t)class assertionSyncProtocolVersion:(unint64_t)version configurationSyncProtocolVersion:(unint64_t)protocolVersion supportsSilenceLists:(BOOL)lists
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = DNDSPairedDevice;
  v13 = [(DNDSPairedDevice *)&v17 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    deviceIdentifier = v13->_deviceIdentifier;
    v13->_deviceIdentifier = v14;

    v13->_deviceClass = class;
    v13->_assertionSyncProtocolVersion = version;
    v13->_configurationSyncProtocolVersion = protocolVersion;
    v13->_iOS14EraOS = 0;
    v13->_supportsSilenceLists = lists;
    v13->_iCloudEnabled = 1;
    v13->_syncServiceType = 2;
  }

  return v13;
}

- (unint64_t)hash
{
  deviceIdentifier = [(DNDSPairedDevice *)self deviceIdentifier];
  v4 = [deviceIdentifier hash];
  deviceClass = [(DNDSPairedDevice *)self deviceClass];
  v6 = deviceClass ^ [(DNDSPairedDevice *)self assertionSyncProtocolVersion]^ v4;
  v7 = v6 ^ [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
  isIOS14EraOS = [(DNDSPairedDevice *)self isIOS14EraOS];
  v9 = v7 ^ isIOS14EraOS ^ [(DNDSPairedDevice *)self supportsSilenceLists];
  isICloudEnabled = [(DNDSPairedDevice *)self isICloudEnabled];
  v11 = isICloudEnabled ^ [(DNDSPairedDevice *)self syncServiceType];
  pairingIdentifier = [(DNDSPairedDevice *)self pairingIdentifier];
  v13 = v9 ^ v11 ^ [pairingIdentifier hash];
  pairingDataStore = [(DNDSPairedDevice *)self pairingDataStore];
  v15 = [pairingDataStore hash];

  return v13 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      deviceIdentifier = [(DNDSPairedDevice *)self deviceIdentifier];
      deviceIdentifier2 = [(DNDSPairedDevice *)v9 deviceIdentifier];
      if (deviceIdentifier != deviceIdentifier2)
      {
        deviceIdentifier3 = [(DNDSPairedDevice *)self deviceIdentifier];
        if (!deviceIdentifier3)
        {
          v14 = 0;
          goto LABEL_37;
        }

        v3 = deviceIdentifier3;
        deviceIdentifier4 = [(DNDSPairedDevice *)v9 deviceIdentifier];
        if (!deviceIdentifier4)
        {
          v13 = 0;
LABEL_36:

          v14 = v13;
          goto LABEL_37;
        }

        deviceIdentifier5 = [(DNDSPairedDevice *)self deviceIdentifier];
        deviceIdentifier6 = [(DNDSPairedDevice *)v9 deviceIdentifier];
        if (![deviceIdentifier5 isEqual:deviceIdentifier6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }
      }

      deviceClass = [(DNDSPairedDevice *)self deviceClass];
      if (deviceClass == [(DNDSPairedDevice *)v9 deviceClass])
      {
        assertionSyncProtocolVersion = [(DNDSPairedDevice *)self assertionSyncProtocolVersion];
        if (assertionSyncProtocolVersion == [(DNDSPairedDevice *)v9 assertionSyncProtocolVersion])
        {
          configurationSyncProtocolVersion = [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
          if (configurationSyncProtocolVersion == [(DNDSPairedDevice *)v9 configurationSyncProtocolVersion])
          {
            isIOS14EraOS = [(DNDSPairedDevice *)self isIOS14EraOS];
            if (isIOS14EraOS == [(DNDSPairedDevice *)v9 isIOS14EraOS])
            {
              supportsSilenceLists = [(DNDSPairedDevice *)self supportsSilenceLists];
              if (supportsSilenceLists == [(DNDSPairedDevice *)v9 supportsSilenceLists])
              {
                isICloudEnabled = [(DNDSPairedDevice *)self isICloudEnabled];
                if (isICloudEnabled == [(DNDSPairedDevice *)v9 isICloudEnabled])
                {
                  syncServiceType = [(DNDSPairedDevice *)self syncServiceType];
                  if (syncServiceType == [(DNDSPairedDevice *)v9 syncServiceType])
                  {
                    pairingIdentifier = [(DNDSPairedDevice *)self pairingIdentifier];
                    pairingIdentifier2 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                    if (pairingIdentifier == pairingIdentifier2)
                    {
                      v42 = pairingIdentifier;
                      goto LABEL_25;
                    }

                    pairingIdentifier3 = [(DNDSPairedDevice *)self pairingIdentifier];
                    if (pairingIdentifier3)
                    {
                      v40 = pairingIdentifier3;
                      pairingIdentifier4 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                      if (pairingIdentifier4)
                      {
                        v38 = pairingIdentifier4;
                        pairingIdentifier5 = [(DNDSPairedDevice *)self pairingIdentifier];
                        pairingIdentifier6 = [(DNDSPairedDevice *)v9 pairingIdentifier];
                        if ([pairingIdentifier5 isEqual:?])
                        {
                          v42 = pairingIdentifier;
LABEL_25:
                          pairingDataStore = [(DNDSPairedDevice *)self pairingDataStore];
                          pairingDataStore2 = [(DNDSPairedDevice *)v9 pairingDataStore];
                          v41 = pairingDataStore;
                          v27 = pairingDataStore == pairingDataStore2;
                          v28 = pairingDataStore2;
                          if (v27)
                          {

                            v13 = 1;
                          }

                          else
                          {
                            pairingDataStore3 = [(DNDSPairedDevice *)self pairingDataStore];
                            if (pairingDataStore3)
                            {
                              v36 = pairingDataStore3;
                              pairingDataStore4 = [(DNDSPairedDevice *)v9 pairingDataStore];
                              if (pairingDataStore4)
                              {
                                v35 = pairingDataStore4;
                                pairingDataStore5 = [(DNDSPairedDevice *)self pairingDataStore];
                                pairingDataStore6 = [(DNDSPairedDevice *)v9 pairingDataStore];
                                v13 = [pairingDataStore5 isEqual:pairingDataStore6];

                                pairingDataStore4 = v35;
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

                          v32 = pairingIdentifier2;
                          if (v42 != pairingIdentifier2)
                          {

                            v32 = pairingIdentifier2;
                          }

                          v14 = v13;
LABEL_34:
                          if (deviceIdentifier != deviceIdentifier2)
                          {
                            goto LABEL_35;
                          }

LABEL_37:

                          goto LABEL_38;
                        }

                        pairingIdentifier4 = v38;
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
  deviceName = [(DNDSPairedDevice *)self deviceName];
  if (deviceName)
  {
    v3 = MEMORY[0x277CCACA8];
    deviceName2 = [(DNDSPairedDevice *)self deviceName];
    v4 = [v3 stringWithFormat:@" deviceName: '%@'", deviceName2];;
  }

  else
  {
    v4 = &stru_285C26090;
  }

  osBuild = [(DNDSPairedDevice *)self osBuild];
  if (osBuild)
  {
    v5 = MEMORY[0x277CCACA8];
    osBuild2 = [(DNDSPairedDevice *)self osBuild];
    v6 = [v5 stringWithFormat:@" build: %@", osBuild2];;
  }

  else
  {
    v6 = &stru_285C26090;
  }

  v24 = v6;
  v28 = v4;
  deviceIdentifier = [(DNDSPairedDevice *)self deviceIdentifier];
  deviceClass = [(DNDSPairedDevice *)self deviceClass];
  v8 = @"<unhandled>";
  if (deviceClass <= 4)
  {
    v8 = off_278F8B2E0[deviceClass];
  }

  assertionSyncProtocolVersion = [(DNDSPairedDevice *)self assertionSyncProtocolVersion];
  configurationSyncProtocolVersion = [(DNDSPairedDevice *)self configurationSyncProtocolVersion];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice isIOS14EraOS](self, "isIOS14EraOS")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice supportsSilenceLists](self, "supportsSilenceLists")}];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSPairedDevice isICloudEnabled](self, "isICloudEnabled")}];
  syncServiceType = [(DNDSPairedDevice *)self syncServiceType];
  v15 = @"cloud";
  if (syncServiceType != 2)
  {
    v15 = @"<unhandled>";
  }

  if (syncServiceType == 1)
  {
    v15 = @"local";
  }

  v16 = v15;
  pairingIdentifier = [(DNDSPairedDevice *)self pairingIdentifier];
  pairingDataStore = [(DNDSPairedDevice *)self pairingDataStore];
  v19 = [v27 stringWithFormat:@"<%@: %p%@%@ deviceIdentifier: '%@'; deviceClass: %@; assertionSyncProtocolVersion: %lu; configurationSyncProtocolVersion: %lu; iOS14EraOS: %@; supportsSilenceLists: %@; iCloudEnabled: %@; syncServiceType: %@; pairingIdentifier: %@; pairingDataStore: %@>", v25, self, v28, v24, deviceIdentifier, v8, assertionSyncProtocolVersion, configurationSyncProtocolVersion, v11, v12, v13, v16, pairingIdentifier, pairingDataStore];;

  if (osBuild)
  {
  }

  if (deviceName)
  {
  }

  return v19;
}

- (void)setOsBuild:(id)build
{
  buildCopy = build;
  if (os_variant_has_internal_diagnostics())
  {
    objc_storeStrong(&self->_osBuild, build);
  }
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  if (os_variant_has_internal_diagnostics())
  {
    objc_storeStrong(&self->_deviceName, name);
  }
}

@end