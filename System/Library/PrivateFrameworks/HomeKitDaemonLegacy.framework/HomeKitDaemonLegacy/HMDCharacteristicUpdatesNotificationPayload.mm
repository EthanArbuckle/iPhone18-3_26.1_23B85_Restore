@interface HMDCharacteristicUpdatesNotificationPayload
- (HMDCharacteristicUpdatesNotificationPayload)initWithSPIEntitledClientUpdates:(id)a3 allClientUpdates:(id)a4;
- (NSDictionary)characteristicUpdatesForEntitledClients;
- (id)mergeCharacteristicChangesPayload:(id)a3 otherCharacteristicChangesPayload:(id)a4;
@end

@implementation HMDCharacteristicUpdatesNotificationPayload

- (id)mergeCharacteristicChangesPayload:(id)a3 otherCharacteristicChangesPayload:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = [v5 dictionaryWithDictionary:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__HMDCharacteristicUpdatesNotificationPayload_mergeCharacteristicChangesPayload_otherCharacteristicChangesPayload___block_invoke;
  v11[3] = &unk_2797207B0;
  v12 = v7;
  v8 = v7;
  [v6 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v11];

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
  v3 = [(HMDCharacteristicUpdatesNotificationPayload *)self spiEntitledClientUpdates];
  v4 = [v3 count];

  v5 = [(HMDCharacteristicUpdatesNotificationPayload *)self characteristicUpdatesForAllClients];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 count];

    v6 = [(HMDCharacteristicUpdatesNotificationPayload *)self spiEntitledClientUpdates];
    if (v7)
    {
      v8 = [(HMDCharacteristicUpdatesNotificationPayload *)self characteristicUpdatesForAllClients];
      v9 = [(HMDCharacteristicUpdatesNotificationPayload *)self mergeCharacteristicChangesPayload:v6 otherCharacteristicChangesPayload:v8];

      v6 = v9;
    }
  }

  return v6;
}

- (HMDCharacteristicUpdatesNotificationPayload)initWithSPIEntitledClientUpdates:(id)a3 allClientUpdates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicUpdatesNotificationPayload;
  v8 = [(HMDCharacteristicUpdatesNotificationPayload *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    spiEntitledClientUpdates = v8->_spiEntitledClientUpdates;
    v8->_spiEntitledClientUpdates = v9;

    v8->_hasEntitledClientOnlyChanges = [v6 count] != 0;
    v11 = [v7 copy];
    characteristicUpdatesForAllClients = v8->_characteristicUpdatesForAllClients;
    v8->_characteristicUpdatesForAllClients = v11;
  }

  return v8;
}

@end