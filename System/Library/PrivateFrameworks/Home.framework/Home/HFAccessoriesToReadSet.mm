@interface HFAccessoriesToReadSet
- (HFAccessoriesToReadSet)initWithTransportType:(id)a3;
- (int64_t)count;
- (void)addCharacteristic:(id)a3;
- (void)markCharacteristicAsRead:(id)a3 withLogger:(id)a4;
@end

@implementation HFAccessoriesToReadSet

- (HFAccessoriesToReadSet)initWithTransportType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HFAccessoriesToReadSet;
  v6 = [(HFAccessoriesToReadSet *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessories = v6->_accessories;
    v6->_accessories = v7;

    objc_storeStrong(&v6->_transportKey, a3);
  }

  return v6;
}

- (void)addCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v9 = [v5 accessory];

  v6 = [(HFAccessoriesToReadSet *)self accessories];
  v7 = [v9 uniqueIdentifier];
  v8 = [v6 na_objectForKey:v7 withDefaultValue:&__block_literal_global_92];

  [v8 addObject:v4];
}

id __44__HFAccessoriesToReadSet_addCharacteristic___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return v0;
}

- (void)markCharacteristicAsRead:(id)a3 withLogger:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 service];
  v9 = [v8 accessory];

  v10 = [(HFAccessoriesToReadSet *)self accessories];
  v11 = [v9 uniqueIdentifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 count];
  [v12 removeObject:v7];

  if (![v12 count])
  {
    v14 = [(HFAccessoriesToReadSet *)self accessories];
    v15 = [v9 uniqueIdentifier];
    [v14 removeObjectForKey:v15];

    if (v13)
    {
      if (v6)
      {
        v16 = [v6 loggerActivity];
        os_activity_scope_enter(v16, &v28);

        v17 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(HFAccessoriesToReadSet *)self accessories];
          v19 = [v18 count];
          v20 = [(HFAccessoriesToReadSet *)self transportKey];
          v21 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v20 integerValue]);
          *buf = 138412802;
          v30 = v9;
          v31 = 2048;
          v32 = v19;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: All reads complete for accessory: %@ (%lu %@ accessories remaining)", buf, 0x20u);
        }

        os_activity_scope_leave(&v28);
      }

      else
      {
        v23 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(HFAccessoriesToReadSet *)self accessories];
          v25 = [v24 count];
          v26 = [(HFAccessoriesToReadSet *)self transportKey];
          v27 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v26 integerValue]);
          *buf = 138412802;
          v30 = v9;
          v31 = 2048;
          v32 = v25;
          v33 = 2112;
          v34 = v27;
          _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: All reads complete for accessory: %@ (%lu %@ accessories remaining)", buf, 0x20u);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)count
{
  v2 = [(HFAccessoriesToReadSet *)self accessories];
  v3 = [v2 count];

  return v3;
}

@end