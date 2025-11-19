@interface HMDUnpairedHAPAccessoryPairingInformation
- (BOOL)matchesAccessoryServer:(id)a3;
- (BOOL)matchesUnpairedAccessory:(id)a3;
- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryDescription:(id)a3 linkType:(int64_t)a4 completionHandler:(id)a5 progressHandler:(id)a6 pairingRequest:(id)a7;
- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 linkType:(int64_t)a5 setupCode:(id)a6 completionHandler:(id)a7 setupCodeProvider:(id)a8 pairingRequest:(id)a9;
- (HMFActivity)pairingActivity;
- (id)description;
@end

@implementation HMDUnpairedHAPAccessoryPairingInformation

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (BOOL)matchesAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupID];
  v6 = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryServerIdentifier];
  v7 = [v4 matchesSetupID:v5 serverIdentifier:v6];

  return v7;
}

- (BOOL)matchesUnpairedAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredAccessoryServer];
  if ([(HMDUnpairedHAPAccessoryPairingInformation *)self matchesAccessoryServer:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 uuid];
    v8 = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryUUID];
    v6 = [v7 isEqual:v8];
  }

  return v6;
}

- (id)description
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryName];
  v6 = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryUUID];
  v7 = [v6 UUIDString];
  v8 = v7;
  if (v3)
  {
    v9 = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupID];
    v10 = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupCode];
    [(HMDUnpairedHAPAccessoryPairingInformation *)self wacAccessory];
    v11 = HMFBooleanToString();
    [(HMDUnpairedHAPAccessoryPairingInformation *)self legacyWAC];
    v12 = HMFBooleanToString();
    v13 = [(HMDUnpairedHAPAccessoryPairingInformation *)self homeUUID];
    v14 = [v4 stringWithFormat:@"accessoryName: %@, accessoryUUID: %@, setupID: %@, setupCode: %@, WAC: %@, legacyWAC: %@ homeUUID: %@", v5, v8, v9, v10, v11, v12, v13];
  }

  else
  {
    v14 = [v4 stringWithFormat:@"accessoryName: %@, accessoryUUID: %@", v5, v7];
  }

  return v14;
}

- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryDescription:(id)a3 linkType:(int64_t)a4 completionHandler:(id)a5 progressHandler:(id)a6 pairingRequest:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v40.receiver = self;
  v40.super_class = HMDUnpairedHAPAccessoryPairingInformation;
  v15 = a6;
  v16 = [(HMDUnpairedHAPAccessoryPairingInformation *)&v40 init];
  v16->_linkType = a4;
  if (!a4)
  {
    if ([v12 supportsBTLE])
    {
      v17 = 2;
LABEL_6:
      v16->_linkType = v17;
      goto LABEL_7;
    }

    if ([v12 supportsIP])
    {
      v17 = 1;
      goto LABEL_6;
    }
  }

LABEL_7:
  v18 = _Block_copy(v13);
  addAccessoryCompletionHandler = v16->_addAccessoryCompletionHandler;
  v16->_addAccessoryCompletionHandler = v18;

  v20 = _Block_copy(v15);
  addAccessoryProgressHandler = v16->_addAccessoryProgressHandler;
  v16->_addAccessoryProgressHandler = v20;

  v22 = [v12 accessoryUUID];
  accessoryUUID = v16->_accessoryUUID;
  v16->_accessoryUUID = v22;

  v24 = [v12 accessoryName];
  accessoryName = v16->_accessoryName;
  v16->_accessoryName = v24;

  v26 = [v12 accessoryServerIdentifier];
  accessoryServerIdentifier = v16->_accessoryServerIdentifier;
  v16->_accessoryServerIdentifier = v26;

  v28 = [v12 setupID];
  setupID = v16->_setupID;
  v16->_setupID = v28;

  v30 = [v12 setupCode];
  setupCode = v16->_setupCode;
  v16->_setupCode = v30;

  v32 = [v12 homeUUID];
  homeUUID = v16->_homeUUID;
  v16->_homeUUID = v32;

  v34 = [v12 setupAuthTokenUUID];
  setupAuthTokenUUID = v16->_setupAuthTokenUUID;
  v16->_setupAuthTokenUUID = v34;

  v36 = [v12 setupAuthToken];
  setupAuthToken = v16->_setupAuthToken;
  v16->_setupAuthToken = v36;

  v16->_wacAccessory = [v12 supportsWAC];
  pairingRequest = v16->_pairingRequest;
  v16->_pairingRequest = v14;

  return v16;
}

- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 linkType:(int64_t)a5 setupCode:(id)a6 completionHandler:(id)a7 setupCodeProvider:(id)a8 pairingRequest:(id)a9
{
  v15 = a4;
  v16 = a9;
  v34.receiver = self;
  v34.super_class = HMDUnpairedHAPAccessoryPairingInformation;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [(HMDUnpairedHAPAccessoryPairingInformation *)&v34 init];
  v21->_linkType = a5;
  v22 = _Block_copy(v18);

  addAccessoryCompletionHandler = v21->_addAccessoryCompletionHandler;
  v21->_addAccessoryCompletionHandler = v22;

  v24 = _Block_copy(v17);
  setupCodeProviderCompletionHandler = v21->_setupCodeProviderCompletionHandler;
  v21->_setupCodeProviderCompletionHandler = v24;

  v26 = [v20 copy];
  accessoryUUID = v21->_accessoryUUID;
  v21->_accessoryUUID = v26;

  accessoryName = v21->_accessoryName;
  v21->_accessoryName = v15;
  v29 = v15;

  v30 = [v19 copy];
  setupCode = v21->_setupCode;
  v21->_setupCode = v30;

  pairingRequest = v21->_pairingRequest;
  v21->_pairingRequest = v16;

  return v21;
}

@end