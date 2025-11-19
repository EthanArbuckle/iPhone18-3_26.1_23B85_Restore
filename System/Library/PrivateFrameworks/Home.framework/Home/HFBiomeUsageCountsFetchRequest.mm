@interface HFBiomeUsageCountsFetchRequest
- (HFBiomeUsageCountsFetchRequest)initWithHome:(id)a3;
- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)a3 uniqueIdentifierToAccessoryRepesentableBlock:(id)a4;
- (void)_incrementUsageCountForAccessoryRepresentable:(id)a3;
- (void)eventHandler:(id)a3;
@end

@implementation HFBiomeUsageCountsFetchRequest

- (HFBiomeUsageCountsFetchRequest)initWithHome:(id)a3
{
  v9.receiver = self;
  v9.super_class = HFBiomeUsageCountsFetchRequest;
  v3 = [(HFBiomeAbstractFetchRequest *)&v9 initWithHome:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    usageCountByAccessoryRepresentable = v3->_usageCountByAccessoryRepresentable;
    v3->_usageCountByAccessoryRepresentable = v4;

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryRepresentablesByUniqueIdentifier = v3->_accessoryRepresentablesByUniqueIdentifier;
    v3->_accessoryRepresentablesByUniqueIdentifier = v6;
  }

  return v3;
}

- (void)eventHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 serviceGroupUniqueIdentifier];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [v6 serviceGroupUniqueIdentifier];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke;
      v21[3] = &unk_277DFAD28;
      objc_copyWeak(&v22, &location);
      v9 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v8 uniqueIdentifierToAccessoryRepesentableBlock:v21];

      [(HFBiomeUsageCountsFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v9];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    objc_initWeak(&location, self);
    v10 = [v6 accessoryUniqueIdentifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_2;
    v19[3] = &unk_277DFAD28;
    objc_copyWeak(&v20, &location);
    v11 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v10 uniqueIdentifierToAccessoryRepesentableBlock:v19];

    [(HFBiomeUsageCountsFetchRequest *)self _incrementUsageCountForAccessoryRepresentable:v11];
    v12 = [v6 serviceUniqueIdentifier];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __47__HFBiomeUsageCountsFetchRequest_eventHandler___block_invoke_3;
    v17 = &unk_277DFAD28;
    objc_copyWeak(&v18, &location);
    v13 = [(HFBiomeUsageCountsFetchRequest *)self _accessoryRepresentableWithUniqueIdentifierString:v12 uniqueIdentifierToAccessoryRepesentableBlock:&v14];

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

- (void)_incrementUsageCountForAccessoryRepresentable:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HFBiomeUsageCountsFetchRequest *)self usageCountByAccessoryRepresentable];
    v6 = [v5 objectForKey:v4];
    v7 = [v6 unsignedIntegerValue];

    v9 = [(HFBiomeUsageCountsFetchRequest *)self usageCountByAccessoryRepresentable];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    [v9 setObject:v8 forKey:v4];
  }
}

- (id)_accessoryRepresentableWithUniqueIdentifierString:(id)a3 uniqueIdentifierToAccessoryRepesentableBlock:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAD78];
  v8 = a3;
  v9 = [[v7 alloc] initWithUUIDString:v8];

  v10 = [(HFBiomeUsageCountsFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = v6[2](v6, v9);
    if (v11)
    {
      v12 = [(HFBiomeUsageCountsFetchRequest *)self accessoryRepresentablesByUniqueIdentifier];
      [v12 setObject:v11 forKey:v9];
    }
  }

  return v11;
}

@end