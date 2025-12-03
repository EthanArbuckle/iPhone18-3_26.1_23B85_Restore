@interface HFBiomeUsageCountsByRoomFetchRequest
- (HFBiomeUsageCountsByRoomFetchRequest)initWithHome:(id)home;
- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)string uniqueIdentifierToAccessoryRepesentableBlock:(id)block;
- (id)_roomWithUniqueIdentifierString:(id)string uniqueIdentifierToRoomBlock:(id)block;
- (void)_incrementUsageCountForAccessoryRepresentable:(id)representable inRoom:(id)room;
- (void)eventHandler:(id)handler;
@end

@implementation HFBiomeUsageCountsByRoomFetchRequest

- (HFBiomeUsageCountsByRoomFetchRequest)initWithHome:(id)home
{
  v11.receiver = self;
  v11.super_class = HFBiomeUsageCountsByRoomFetchRequest;
  v3 = [(HFBiomeAbstractFetchRequest *)&v11 initWithHome:home];
  if (v3)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    usageCountByAccessoryRepresentableByRoom = v3->_usageCountByAccessoryRepresentableByRoom;
    v3->_usageCountByAccessoryRepresentableByRoom = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    roomsByUniqueIdentifier = v3->_roomsByUniqueIdentifier;
    v3->_roomsByUniqueIdentifier = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryRepresentablesByUniqueIdentifier = v3->_accessoryRepresentablesByUniqueIdentifier;
    v3->_accessoryRepresentablesByUniqueIdentifier = strongToStrongObjectsMapTable3;
  }

  return v3;
}

- (void)eventHandler:(id)handler
{
  handlerCopy = handler;
  eventBody = [handlerCopy eventBody];
  if (eventBody)
  {
    objc_initWeak(location, self);
    roomUniqueIdentifier = [eventBody roomUniqueIdentifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke;
    v24[3] = &unk_277DFAD00;
    objc_copyWeak(&v25, location);
    v7 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _roomWithUniqueIdentifierString:roomUniqueIdentifier uniqueIdentifierToRoomBlock:v24];

    serviceGroupUniqueIdentifier = [eventBody serviceGroupUniqueIdentifier];

    if (serviceGroupUniqueIdentifier)
    {
      serviceGroupUniqueIdentifier2 = [eventBody serviceGroupUniqueIdentifier];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_2;
      v22[3] = &unk_277DFAD28;
      objc_copyWeak(&v23, location);
      v10 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:serviceGroupUniqueIdentifier2 uniqueIdentifierToAccessoryRepesentableBlock:v22];

      [(HFBiomeUsageCountsByRoomFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v10 inRoom:v7];
      objc_destroyWeak(&v23);
    }

    accessoryUniqueIdentifier = [eventBody accessoryUniqueIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_3;
    v20[3] = &unk_277DFAD28;
    objc_copyWeak(&v21, location);
    v12 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:accessoryUniqueIdentifier uniqueIdentifierToAccessoryRepesentableBlock:v20];

    [(HFBiomeUsageCountsByRoomFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v12 inRoom:v7];
    serviceUniqueIdentifier = [eventBody serviceUniqueIdentifier];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __53__HFBiomeUsageCountsByRoomFetchRequest_eventHandler___block_invoke_4;
    v18 = &unk_277DFAD28;
    objc_copyWeak(&v19, location);
    v14 = [(HFBiomeUsageCountsByRoomFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:serviceUniqueIdentifier uniqueIdentifierToAccessoryRepesentableBlock:&v15];

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

- (void)_incrementUsageCountForAccessoryRepresentable:(id)representable inRoom:(id)room
{
  roomCopy = room;
  if (representable)
  {
    v14 = roomCopy;
    representableCopy = representable;
    usageCountByAccessoryRepresentableByRoom = [(HFBiomeUsageCountsByRoomFetchRequest *)self usageCountByAccessoryRepresentableByRoom];
    strongToStrongObjectsMapTable = [usageCountByAccessoryRepresentableByRoom objectForKey:v14];

    if (!strongToStrongObjectsMapTable)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      usageCountByAccessoryRepresentableByRoom2 = [(HFBiomeUsageCountsByRoomFetchRequest *)self usageCountByAccessoryRepresentableByRoom];
      [usageCountByAccessoryRepresentableByRoom2 setObject:strongToStrongObjectsMapTable forKey:v14];
    }

    v11 = [strongToStrongObjectsMapTable objectForKey:representableCopy];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [strongToStrongObjectsMapTable setObject:v13 forKey:representableCopy];

    roomCopy = v14;
  }
}

- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)string uniqueIdentifierToAccessoryRepesentableBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277CCAD78];
  stringCopy = string;
  v9 = [[v7 alloc] initWithUUIDString:stringCopy];

  accessoryRepresentablesByUniqueIdentifier = [(HFBiomeUsageCountsByRoomFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
  v11 = [accessoryRepresentablesByUniqueIdentifier objectForKey:v9];

  if (!v11)
  {
    v11 = blockCopy[2](blockCopy, v9);
    accessoryRepresentablesByUniqueIdentifier2 = [(HFBiomeUsageCountsByRoomFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
    [accessoryRepresentablesByUniqueIdentifier2 setObject:v11 forKey:v9];
  }

  return v11;
}

- (id)_roomWithUniqueIdentifierString:(id)string uniqueIdentifierToRoomBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277CCAD78];
  stringCopy = string;
  v9 = [[v7 alloc] initWithUUIDString:stringCopy];

  roomsByUniqueIdentifier = [(HFBiomeUsageCountsByRoomFetchRequest *)self roomsByUniqueIdentifier];
  v11 = [roomsByUniqueIdentifier objectForKey:v9];

  if (!v11)
  {
    v11 = blockCopy[2](blockCopy, v9);
    roomsByUniqueIdentifier2 = [(HFBiomeUsageCountsByRoomFetchRequest *)self roomsByUniqueIdentifier];
    [roomsByUniqueIdentifier2 setObject:v11 forKey:v9];
  }

  return v11;
}

@end