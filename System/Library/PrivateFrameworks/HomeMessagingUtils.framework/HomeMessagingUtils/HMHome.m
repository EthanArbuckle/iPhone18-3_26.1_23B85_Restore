@interface HMHome
@end

@implementation HMHome

uint64_t __53__HMHome_HMUAdditions__hmu_userWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __64__HMHome_HMUAdditions__hmu_userWithSenderCorrelationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 senderCorrelationIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __53__HMHome_HMUAdditions__hmu_roomWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __55__HMHome_HMUAdditions__hmu_roomsWithUniqueIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __41__HMHome_HMUAdditions__hmu_roomWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __53__HMHome_HMUAdditions__hmu_zoneWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __55__HMHome_HMUAdditions__hmu_zonesWithUniqueIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __41__HMHome_HMUAdditions__hmu_zoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __51__HMHome_HMU_IDS__hmu_accessoryWithFromID_service___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hmu_destinationForService:*(a1 + 32)];
  v4 = [v3 destinationURIs];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMHome_HMU_IDS__hmu_accessoryWithFromID_service___block_invoke_2;
  v7[3] = &unk_279772618;
  v8 = *(a1 + 40);
  v5 = [v4 na_any:v7];

  return v5;
}

uint64_t __38__HMHome_HMU_IDS__hmu_userWithFromID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userIDSURI];
  v4 = [v3 destinationURIs];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMHome_HMU_IDS__hmu_userWithFromID___block_invoke_2;
  v7[3] = &unk_279772618;
  v8 = *(a1 + 32);
  v5 = [v4 na_any:v7];

  return v5;
}

uint64_t __43__HMHome_HMU_IDS__hmu_userWithDestination___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 destinationURIs];
  v5 = [v3 userIDSURI];

  v6 = [v5 destinationURIs];
  v7 = [v4 intersectsSet:v6];

  return v7;
}

uint64_t __56__HMHome_HMU_IDS__hmu_accessoryWithDestination_service___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hmu_destinationForService:*(a1 + 32)];
  v4 = [v3 destinationURIs];
  v5 = [*(a1 + 40) destinationURIs];
  v6 = [v4 intersectsSet:v5];

  return v6;
}

@end