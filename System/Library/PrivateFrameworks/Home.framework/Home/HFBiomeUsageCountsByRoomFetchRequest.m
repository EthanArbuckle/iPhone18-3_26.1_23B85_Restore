@interface HFBiomeUsageCountsByRoomFetchRequest
- (HFBiomeUsageCountsByRoomFetchRequest)initWithHome:(id)a3;
- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)a3 uniqueIdentifierToAccessoryRepesentableBlock:(id)a4;
- (id)_roomWithUniqueIdentifierString:(id)a3 uniqueIdentifierToRoomBlock:(id)a4;
- (void)_incrementUsageCountForAccessoryRepresentable:(id)a3 inRoom:(id)a4;
- (void)eventHandler:(id)a3;
@end

@implementation HFBiomeUsageCountsByRoomFetchRequest

- (HFBiomeUsageCountsByRoomFetchRequest)initWithHome:(id)a3
{
  v11.receiver = self;
  v11.super_class = HFBiomeUsageCountsByRoomFetchRequest;
  v3 = [(HFBiomeAbstractFetchRequest *)&v11 initWithHome:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    usageCountByAccessoryRepresentableByRoom = v3->_usageCountByAccessoryRepresentableByRoom;
    v3->_usageCountByAccessoryRepresentableByRoom = v4;

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    roomsByUniqueIdentifier = v3->_roomsByUniqueIdentifier;
    v3->_roomsByUniqueIdentifier = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryRepresentablesByUniqueIdentifier = v3->_accessoryRepresentablesByUniqueIdentifier;
    v3->_accessoryRepresentablesByUniqueIdentifier = v8;
  }

  return v3;
}

- (void)eventHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  if (v5)
  {
    objc_initWeak(location, self);
    v6 = [v5 roomUniqueIdentifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke;
    v24[3] = &unk_277DFAD00;
    objc_copyWeak(&v25, location);
    v7 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _roomWithUniqueIdentifierString:v6 uniqueIdentifierToRoomBlock:v24];

    v8 = [v5 serviceGroupUniqueIdentifier];

    if (v8)
    {
      v9 = [v5 serviceGroupUniqueIdentifier];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_2;
      v22[3] = &unk_277DFAD28;
      objc_copyWeak(&v23, location);
      v10 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v9 uniqueIdentifierToAccessoryRepesentableBlock:v22];

      [(HFBiomeUsageCountsByRoomFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v10 inRoom:v7];
      objc_destroyWeak(&v23);
    }

    v11 = [v5 accessoryUniqueIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_3;
    v20[3] = &unk_277DFAD28;
    objc_copyWeak(&v21, location);
    v12 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v11 uniqueIdentifierToAccessoryRepesentableBlock:v20];

    [(HFBiomeUsageCountsByRoomFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v12 inRoom:v7];
    v13 = [v5 serviceUniqueIdentifier];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_4;
    v18 = &unk_277DFAD28;
    objc_copyWeak(&v19, location);
    v14 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v13 uniqueIdentifierToAccessoryRepesentableBlock:&v15];

    [(HFBiomeUsageCountsByRoomFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v14 inRoom:v7, v15, v16, v17, v18];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }
}

id __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_roomWithIdentifier:v3];

  return v6;
}

void *__53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_serviceGroupWithIdentifier:v3];

  v7 = [WeakRetained filter];
  if ((v7)[2](v7, v6))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void *__53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_accessoryWithIdentifier:v3];

  v7 = [WeakRetained filter];
  if ((v7)[2](v7, v6))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void *__53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_serviceWithIdentifier:v3];

  v7 = [WeakRetained filter];
  if ((v7)[2](v7, v6))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (void)_incrementUsageCountForAccessoryRepresentable:(id)a3 inRoom:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v14 = v6;
    v7 = a3;
    v8 = [(HFBiomeUsageCountsByRoomFetchRequest *)self usageCountByAccessoryRepresentableByRoom];
    v9 = [v8 objectForKey:v14];

    if (!v9)
    {
      v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v10 = [(HFBiomeUsageCountsByRoomFetchRequest *)self usageCountByAccessoryRepresentableByRoom];
      [v10 setObject:v9 forKey:v14];
    }

    v11 = [v9 objectForKey:v7];
    v12 = [v11 unsignedIntegerValue];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
    [v9 setObject:v13 forKey:v7];

    v6 = v14;
  }
}

- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)a3 uniqueIdentifierToAccessoryRepesentableBlock:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAD78];
  v8 = a3;
  v9 = [[v7 alloc] initWithUUIDString:v8];

  v10 = [(HFBiomeUsageCountsByRoomFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = v6[2](v6, v9);
    v12 = [(HFBiomeUsageCountsByRoomFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
    [v12 setObject:v11 forKey:v9];
  }

  return v11;
}

- (id)_roomWithUniqueIdentifierString:(id)a3 uniqueIdentifierToRoomBlock:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAD78];
  v8 = a3;
  v9 = [[v7 alloc] initWithUUIDString:v8];

  v10 = [(HFBiomeUsageCountsByRoomFetchRequest *)self roomsByUniqueIdentifier];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = v6[2](v6, v9);
    v12 = [(HFBiomeUsageCountsByRoomFetchRequest *)self roomsByUniqueIdentifier];
    [v12 setObject:v11 forKey:v9];
  }

  return v11;
}

@end