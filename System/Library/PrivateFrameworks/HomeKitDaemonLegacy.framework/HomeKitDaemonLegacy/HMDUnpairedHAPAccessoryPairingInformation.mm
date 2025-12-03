@interface HMDUnpairedHAPAccessoryPairingInformation
- (BOOL)matchesAccessoryServer:(id)server;
- (BOOL)matchesUnpairedAccessory:(id)accessory;
- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryDescription:(id)description linkType:(int64_t)type completionHandler:(id)handler progressHandler:(id)progressHandler pairingRequest:(id)request;
- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryUUID:(id)d accessoryName:(id)name linkType:(int64_t)type setupCode:(id)code completionHandler:(id)handler setupCodeProvider:(id)provider pairingRequest:(id)request;
- (HMFActivity)pairingActivity;
- (id)description;
@end

@implementation HMDUnpairedHAPAccessoryPairingInformation

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (BOOL)matchesAccessoryServer:(id)server
{
  serverCopy = server;
  setupID = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupID];
  accessoryServerIdentifier = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryServerIdentifier];
  v7 = [serverCopy matchesSetupID:setupID serverIdentifier:accessoryServerIdentifier];

  return v7;
}

- (BOOL)matchesUnpairedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  preferredAccessoryServer = [accessoryCopy preferredAccessoryServer];
  if ([(HMDUnpairedHAPAccessoryPairingInformation *)self matchesAccessoryServer:preferredAccessoryServer])
  {
    v6 = 1;
  }

  else
  {
    uuid = [accessoryCopy uuid];
    accessoryUUID = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryUUID];
    v6 = [uuid isEqual:accessoryUUID];
  }

  return v6;
}

- (id)description
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  accessoryName = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryName];
  accessoryUUID = [(HMDUnpairedHAPAccessoryPairingInformation *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  v8 = uUIDString;
  if (v3)
  {
    setupID = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupID];
    setupCode = [(HMDUnpairedHAPAccessoryPairingInformation *)self setupCode];
    [(HMDUnpairedHAPAccessoryPairingInformation *)self wacAccessory];
    v11 = HMFBooleanToString();
    [(HMDUnpairedHAPAccessoryPairingInformation *)self legacyWAC];
    v12 = HMFBooleanToString();
    homeUUID = [(HMDUnpairedHAPAccessoryPairingInformation *)self homeUUID];
    v14 = [v4 stringWithFormat:@"accessoryName: %@, accessoryUUID: %@, setupID: %@, setupCode: %@, WAC: %@, legacyWAC: %@ homeUUID: %@", accessoryName, v8, setupID, setupCode, v11, v12, homeUUID];
  }

  else
  {
    v14 = [v4 stringWithFormat:@"accessoryName: %@, accessoryUUID: %@", accessoryName, uUIDString];
  }

  return v14;
}

- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryDescription:(id)description linkType:(int64_t)type completionHandler:(id)handler progressHandler:(id)progressHandler pairingRequest:(id)request
{
  descriptionCopy = description;
  handlerCopy = handler;
  requestCopy = request;
  v40.receiver = self;
  v40.super_class = HMDUnpairedHAPAccessoryPairingInformation;
  progressHandlerCopy = progressHandler;
  v16 = [(HMDUnpairedHAPAccessoryPairingInformation *)&v40 init];
  v16->_linkType = type;
  if (!type)
  {
    if ([descriptionCopy supportsBTLE])
    {
      v17 = 2;
LABEL_6:
      v16->_linkType = v17;
      goto LABEL_7;
    }

    if ([descriptionCopy supportsIP])
    {
      v17 = 1;
      goto LABEL_6;
    }
  }

LABEL_7:
  v18 = _Block_copy(handlerCopy);
  addAccessoryCompletionHandler = v16->_addAccessoryCompletionHandler;
  v16->_addAccessoryCompletionHandler = v18;

  v20 = _Block_copy(progressHandlerCopy);
  addAccessoryProgressHandler = v16->_addAccessoryProgressHandler;
  v16->_addAccessoryProgressHandler = v20;

  accessoryUUID = [descriptionCopy accessoryUUID];
  accessoryUUID = v16->_accessoryUUID;
  v16->_accessoryUUID = accessoryUUID;

  accessoryName = [descriptionCopy accessoryName];
  accessoryName = v16->_accessoryName;
  v16->_accessoryName = accessoryName;

  accessoryServerIdentifier = [descriptionCopy accessoryServerIdentifier];
  accessoryServerIdentifier = v16->_accessoryServerIdentifier;
  v16->_accessoryServerIdentifier = accessoryServerIdentifier;

  setupID = [descriptionCopy setupID];
  setupID = v16->_setupID;
  v16->_setupID = setupID;

  setupCode = [descriptionCopy setupCode];
  setupCode = v16->_setupCode;
  v16->_setupCode = setupCode;

  homeUUID = [descriptionCopy homeUUID];
  homeUUID = v16->_homeUUID;
  v16->_homeUUID = homeUUID;

  setupAuthTokenUUID = [descriptionCopy setupAuthTokenUUID];
  setupAuthTokenUUID = v16->_setupAuthTokenUUID;
  v16->_setupAuthTokenUUID = setupAuthTokenUUID;

  setupAuthToken = [descriptionCopy setupAuthToken];
  setupAuthToken = v16->_setupAuthToken;
  v16->_setupAuthToken = setupAuthToken;

  v16->_wacAccessory = [descriptionCopy supportsWAC];
  pairingRequest = v16->_pairingRequest;
  v16->_pairingRequest = requestCopy;

  return v16;
}

- (HMDUnpairedHAPAccessoryPairingInformation)initWithAccessoryUUID:(id)d accessoryName:(id)name linkType:(int64_t)type setupCode:(id)code completionHandler:(id)handler setupCodeProvider:(id)provider pairingRequest:(id)request
{
  nameCopy = name;
  requestCopy = request;
  v34.receiver = self;
  v34.super_class = HMDUnpairedHAPAccessoryPairingInformation;
  providerCopy = provider;
  handlerCopy = handler;
  codeCopy = code;
  dCopy = d;
  v21 = [(HMDUnpairedHAPAccessoryPairingInformation *)&v34 init];
  v21->_linkType = type;
  v22 = _Block_copy(handlerCopy);

  addAccessoryCompletionHandler = v21->_addAccessoryCompletionHandler;
  v21->_addAccessoryCompletionHandler = v22;

  v24 = _Block_copy(providerCopy);
  setupCodeProviderCompletionHandler = v21->_setupCodeProviderCompletionHandler;
  v21->_setupCodeProviderCompletionHandler = v24;

  v26 = [dCopy copy];
  accessoryUUID = v21->_accessoryUUID;
  v21->_accessoryUUID = v26;

  accessoryName = v21->_accessoryName;
  v21->_accessoryName = nameCopy;
  v29 = nameCopy;

  v30 = [codeCopy copy];
  setupCode = v21->_setupCode;
  v21->_setupCode = v30;

  pairingRequest = v21->_pairingRequest;
  v21->_pairingRequest = requestCopy;

  return v21;
}

@end