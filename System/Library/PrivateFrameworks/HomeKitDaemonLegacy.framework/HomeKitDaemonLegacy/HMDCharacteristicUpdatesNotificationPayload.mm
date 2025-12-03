@interface HMDCharacteristicUpdatesNotificationPayload
- (HMDCharacteristicUpdatesNotificationPayload)initWithSPIEntitledClientUpdates:(id)updates allClientUpdates:(id)clientUpdates;
- (NSDictionary)characteristicUpdatesForEntitledClients;
- (id)mergeCharacteristicChangesPayload:(id)payload otherCharacteristicChangesPayload:(id)changesPayload;
@end

@implementation HMDCharacteristicUpdatesNotificationPayload

- (id)mergeCharacteristicChangesPayload:(id)payload otherCharacteristicChangesPayload:(id)changesPayload
{
  v5 = MEMORY[0x277CBEB38];
  changesPayloadCopy = changesPayload;
  v7 = [v5 dictionaryWithDictionary:payload];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__HMDCharacteristicUpdatesNotificationPayload_mergeCharacteristicChangesPayload_otherCharacteristicChangesPayload___block_invoke;
  v11[3] = &unk_2797207B0;
  v12 = v7;
  v8 = v7;
  [changesPayloadCopy hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __115__HMDCharacteristicUpdatesNotificationPayload_mergeCharacteristicChangesPayload_otherCharacteristicChangesPayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __115__HMDCharacteristicUpdatesNotificationPayload_mergeCharacteristicChangesPayload_otherCharacteristicChangesPayload___block_invoke_2;
    v12[3] = &unk_279720788;
    v10 = v9;
    v13 = v10;
    [v6 na_each:v12];

    v6 = v13;
  }

  else
  {
    v10 = [v6 mutableCopy];
  }

  v11 = [v10 copy];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
}

void __115__HMDCharacteristicUpdatesNotificationPayload_mergeCharacteristicChangesPayload_otherCharacteristicChangesPayload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v10 = [v8 mutableCopy];

  if (v10)
  {
    [v10 addEntriesFromDictionary:v6];
  }

  else
  {
    v10 = [v6 mutableCopy];
  }

  v9 = [v10 copy];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

- (NSDictionary)characteristicUpdatesForEntitledClients
{
  spiEntitledClientUpdates = [(HMDCharacteristicUpdatesNotificationPayload *)self spiEntitledClientUpdates];
  v4 = [spiEntitledClientUpdates count];

  characteristicUpdatesForAllClients = [(HMDCharacteristicUpdatesNotificationPayload *)self characteristicUpdatesForAllClients];
  spiEntitledClientUpdates2 = characteristicUpdatesForAllClients;
  if (v4)
  {
    v7 = [characteristicUpdatesForAllClients count];

    spiEntitledClientUpdates2 = [(HMDCharacteristicUpdatesNotificationPayload *)self spiEntitledClientUpdates];
    if (v7)
    {
      characteristicUpdatesForAllClients2 = [(HMDCharacteristicUpdatesNotificationPayload *)self characteristicUpdatesForAllClients];
      v9 = [(HMDCharacteristicUpdatesNotificationPayload *)self mergeCharacteristicChangesPayload:spiEntitledClientUpdates2 otherCharacteristicChangesPayload:characteristicUpdatesForAllClients2];

      spiEntitledClientUpdates2 = v9;
    }
  }

  return spiEntitledClientUpdates2;
}

- (HMDCharacteristicUpdatesNotificationPayload)initWithSPIEntitledClientUpdates:(id)updates allClientUpdates:(id)clientUpdates
{
  updatesCopy = updates;
  clientUpdatesCopy = clientUpdates;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicUpdatesNotificationPayload;
  v8 = [(HMDCharacteristicUpdatesNotificationPayload *)&v14 init];
  if (v8)
  {
    v9 = [updatesCopy copy];
    spiEntitledClientUpdates = v8->_spiEntitledClientUpdates;
    v8->_spiEntitledClientUpdates = v9;

    v8->_hasEntitledClientOnlyChanges = [updatesCopy count] != 0;
    v11 = [clientUpdatesCopy copy];
    characteristicUpdatesForAllClients = v8->_characteristicUpdatesForAllClients;
    v8->_characteristicUpdatesForAllClients = v11;
  }

  return v8;
}

@end