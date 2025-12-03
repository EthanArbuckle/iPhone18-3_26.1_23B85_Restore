@interface HMSetupAccessoryDescription(Internal)
- (id)debugDescription;
- (uint64_t)matchesAccessoryServer:()Internal;
- (uint64_t)matchesSetupID:()Internal serverIdentifier:;
@end

@implementation HMSetupAccessoryDescription(Internal)

- (uint64_t)matchesSetupID:()Internal serverIdentifier:
{
  v6 = a3;
  v7 = a4;
  setupID = [self setupID];

  if (setupID)
  {
    setupID2 = [self setupID];
    v10 = setupID2;
    v11 = v6;
  }

  else
  {
    accessoryServerIdentifier = [self accessoryServerIdentifier];

    if (!accessoryServerIdentifier)
    {
      v13 = 0;
      goto LABEL_6;
    }

    setupID2 = [self accessoryServerIdentifier];
    v10 = setupID2;
    v11 = v7;
  }

  v13 = [setupID2 isEqual:v11];

LABEL_6:
  return v13;
}

- (uint64_t)matchesAccessoryServer:()Internal
{
  v4 = a3;
  setupID = [self setupID];
  accessoryServerIdentifier = [self accessoryServerIdentifier];
  v7 = [v4 matchesSetupID:setupID serverIdentifier:accessoryServerIdentifier];

  return v7;
}

- (id)debugDescription
{
  v2 = isInternalBuild();
  v3 = MEMORY[0x277CCACA8];
  homeUUID = [self homeUUID];
  uUIDString = [homeUUID UUIDString];
  appIdentifier = [self appIdentifier];
  accessoryUUID = [self accessoryUUID];
  uUIDString2 = [accessoryUUID UUIDString];
  if (v2)
  {
    ownershipToken = [self ownershipToken];
    setupAuthTokenUUID = [self setupAuthTokenUUID];
    setupAuthToken = [self setupAuthToken];
    setupAccessoryPayload = [self setupAccessoryPayload];
    [setupAccessoryPayload debugDescription];
    v13 = v16 = homeUUID;
    v14 = [v3 stringWithFormat:@"Accessory pending setup - Home: %@, appID: %@, uuid: %@, ownershipToken: %@, authTokenUUID: %@, authToken: %@, Payload %@", uUIDString, appIdentifier, uUIDString2, ownershipToken, setupAuthTokenUUID, setupAuthToken, v13];

    homeUUID = v16;
  }

  else
  {
    ownershipToken = [self setupCode];
    setupAuthTokenUUID = HMFBooleanToString();
    setupAuthToken = [self ownershipToken];
    setupAccessoryPayload = HMFBooleanToString();
    v14 = [v3 stringWithFormat:@"Accessory pending setup - Home: %@, appID: %@, uuid: %@, hasSetupCode: %@, hasOwnershipToken: %@", uUIDString, appIdentifier, uUIDString2, setupAuthTokenUUID, setupAccessoryPayload];
  }

  return v14;
}

@end