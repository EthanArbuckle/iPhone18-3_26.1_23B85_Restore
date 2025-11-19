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
  v8 = [a1 setupID];

  if (v8)
  {
    v9 = [a1 setupID];
    v10 = v9;
    v11 = v6;
  }

  else
  {
    v12 = [a1 accessoryServerIdentifier];

    if (!v12)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9 = [a1 accessoryServerIdentifier];
    v10 = v9;
    v11 = v7;
  }

  v13 = [v9 isEqual:v11];

LABEL_6:
  return v13;
}

- (uint64_t)matchesAccessoryServer:()Internal
{
  v4 = a3;
  v5 = [a1 setupID];
  v6 = [a1 accessoryServerIdentifier];
  v7 = [v4 matchesSetupID:v5 serverIdentifier:v6];

  return v7;
}

- (id)debugDescription
{
  v2 = isInternalBuild();
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 homeUUID];
  v5 = [v4 UUIDString];
  v6 = [a1 appIdentifier];
  v7 = [a1 accessoryUUID];
  v8 = [v7 UUIDString];
  if (v2)
  {
    v9 = [a1 ownershipToken];
    v10 = [a1 setupAuthTokenUUID];
    v11 = [a1 setupAuthToken];
    v12 = [a1 setupAccessoryPayload];
    [v12 debugDescription];
    v13 = v16 = v4;
    v14 = [v3 stringWithFormat:@"Accessory pending setup - Home: %@, appID: %@, uuid: %@, ownershipToken: %@, authTokenUUID: %@, authToken: %@, Payload %@", v5, v6, v8, v9, v10, v11, v13];

    v4 = v16;
  }

  else
  {
    v9 = [a1 setupCode];
    v10 = HMFBooleanToString();
    v11 = [a1 ownershipToken];
    v12 = HMFBooleanToString();
    v14 = [v3 stringWithFormat:@"Accessory pending setup - Home: %@, appID: %@, uuid: %@, hasSetupCode: %@, hasOwnershipToken: %@", v5, v6, v8, v10, v12];
  }

  return v14;
}

@end