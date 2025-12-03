@interface HFAccessoriesToReadSet
- (HFAccessoriesToReadSet)initWithTransportType:(id)type;
- (int64_t)count;
- (void)addCharacteristic:(id)characteristic;
- (void)markCharacteristicAsRead:(id)read withLogger:(id)logger;
@end

@implementation HFAccessoriesToReadSet

- (HFAccessoriesToReadSet)initWithTransportType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = HFAccessoriesToReadSet;
  v6 = [(HFAccessoriesToReadSet *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessories = v6->_accessories;
    v6->_accessories = v7;

    objc_storeStrong(&v6->_transportKey, type);
  }

  return v6;
}

- (void)addCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  accessory = [service accessory];

  accessories = [(HFAccessoriesToReadSet *)self accessories];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v8 = [accessories na_objectForKey:uniqueIdentifier withDefaultValue:&__block_literal_global_92];

  [v8 addObject:characteristicCopy];
}

id __44__HFAccessoriesToReadSet_addCharacteristic___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return v0;
}

- (void)markCharacteristicAsRead:(id)read withLogger:(id)logger
{
  v35 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  readCopy = read;
  service = [readCopy service];
  accessory = [service accessory];

  accessories = [(HFAccessoriesToReadSet *)self accessories];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v12 = [accessories objectForKeyedSubscript:uniqueIdentifier];

  v13 = [v12 count];
  [v12 removeObject:readCopy];

  if (![v12 count])
  {
    accessories2 = [(HFAccessoriesToReadSet *)self accessories];
    uniqueIdentifier2 = [accessory uniqueIdentifier];
    [accessories2 removeObjectForKey:uniqueIdentifier2];

    if (v13)
    {
      if (loggerCopy)
      {
        loggerActivity = [loggerCopy loggerActivity];
        os_activity_scope_enter(loggerActivity, &v28);

        v17 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          accessories3 = [(HFAccessoriesToReadSet *)self accessories];
          v19 = [accessories3 count];
          transportKey = [(HFAccessoriesToReadSet *)self transportKey];
          v21 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [transportKey integerValue]);
          *buf = 138412802;
          v30 = accessory;
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
          accessories4 = [(HFAccessoriesToReadSet *)self accessories];
          v25 = [accessories4 count];
          transportKey2 = [(HFAccessoriesToReadSet *)self transportKey];
          v27 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [transportKey2 integerValue]);
          *buf = 138412802;
          v30 = accessory;
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
  accessories = [(HFAccessoriesToReadSet *)self accessories];
  v3 = [accessories count];

  return v3;
}

@end