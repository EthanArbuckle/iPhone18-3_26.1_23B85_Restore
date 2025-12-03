@interface HFBiomeUsageCountsFetchRequest
- (HFBiomeUsageCountsFetchRequest)initWithHome:(id)home;
- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)string uniqueIdentifierToAccessoryRepesentableBlock:(id)block;
- (void)_incrementUsageCountForAccessoryRepresentable:(id)representable;
- (void)eventHandler:(id)handler;
@end

@implementation HFBiomeUsageCountsFetchRequest

- (HFBiomeUsageCountsFetchRequest)initWithHome:(id)home
{
  v9.receiver = self;
  v9.super_class = HFBiomeUsageCountsFetchRequest;
  v3 = [(HFBiomeAbstractFetchRequest *)&v9 initWithHome:home];
  if (v3)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    usageCountByAccessoryRepresentable = v3->_usageCountByAccessoryRepresentable;
    v3->_usageCountByAccessoryRepresentable = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryRepresentablesByUniqueIdentifier = v3->_accessoryRepresentablesByUniqueIdentifier;
    v3->_accessoryRepresentablesByUniqueIdentifier = strongToStrongObjectsMapTable2;
  }

  return v3;
}

- (void)eventHandler:(id)handler
{
  handlerCopy = handler;
  eventBody = [handlerCopy eventBody];
  v6 = eventBody;
  if (eventBody)
  {
    serviceGroupUniqueIdentifier = [eventBody serviceGroupUniqueIdentifier];

    if (serviceGroupUniqueIdentifier)
    {
      objc_initWeak(&location, self);
      serviceGroupUniqueIdentifier2 = [v6 serviceGroupUniqueIdentifier];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke;
      v21[3] = &unk_277DFAD28;
      objc_copyWeak(&v22, &location);
      v9 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:serviceGroupUniqueIdentifier2 uniqueIdentifierToAccessoryRepesentableBlock:v21];

      [(HFBiomeUsageCountsFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v9];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    objc_initWeak(&location, self);
    accessoryUniqueIdentifier = [v6 accessoryUniqueIdentifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_2;
    v19[3] = &unk_277DFAD28;
    objc_copyWeak(&v20, &location);
    v11 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:accessoryUniqueIdentifier uniqueIdentifierToAccessoryRepesentableBlock:v19];

    [(HFBiomeUsageCountsFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v11];
    serviceUniqueIdentifier = [v6 serviceUniqueIdentifier];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_3;
    v17 = &unk_277DFAD28;
    objc_copyWeak(&v18, &location);
    v13 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:serviceUniqueIdentifier uniqueIdentifierToAccessoryRepesentableBlock:&v14];

    [(HFBiomeUsageCountsFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v13, v14, v15, v16, v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void *__47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke(uint64_t a1, void *a2)
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

void *__47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_2(uint64_t a1, void *a2)
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

void *__47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_3(uint64_t a1, void *a2)
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

- (void)_incrementUsageCountForAccessoryRepresentable:(id)representable
{
  if (representable)
  {
    representableCopy = representable;
    usageCountByAccessoryRepresentable = [(HFBiomeUsageCountsFetchRequest *)self usageCountByAccessoryRepresentable];
    v6 = [usageCountByAccessoryRepresentable objectForKey:representableCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    usageCountByAccessoryRepresentable2 = [(HFBiomeUsageCountsFetchRequest *)self usageCountByAccessoryRepresentable];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [usageCountByAccessoryRepresentable2 setObject:v8 forKey:representableCopy];
  }
}

- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)string uniqueIdentifierToAccessoryRepesentableBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277CCAD78];
  stringCopy = string;
  v9 = [[v7 alloc] initWithUUIDString:stringCopy];

  accessoryRepresentablesByUniqueIdentifier = [(HFBiomeUsageCountsFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
  v11 = [accessoryRepresentablesByUniqueIdentifier objectForKey:v9];

  if (!v11)
  {
    v11 = blockCopy[2](blockCopy, v9);
    if (v11)
    {
      accessoryRepresentablesByUniqueIdentifier2 = [(HFBiomeUsageCountsFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
      [accessoryRepresentablesByUniqueIdentifier2 setObject:v11 forKey:v9];
    }
  }

  return v11;
}

@end