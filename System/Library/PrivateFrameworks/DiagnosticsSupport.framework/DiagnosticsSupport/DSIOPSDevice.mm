@interface DSIOPSDevice
+ (id)deviceMatchingAccessories:(id)accessories;
+ (id)deviceWithAccessory:(unint64_t)accessory;
- (DSIOPSDevice)initWithDeviceIdentifiers:(id)identifiers;
- (id)information;
- (id)serialNumber;
@end

@implementation DSIOPSDevice

+ (id)deviceWithAccessory:(unint64_t)accessory
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [DSIODeviceIdentifier identifierForAccessoryModel:accessory];
  v5 = [self alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 initWithDeviceIdentifiers:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)deviceMatchingAccessories:(id)accessories
{
  v24 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = accessoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = +[DSIODeviceIdentifier identifierForAccessoryModel:](DSIODeviceIdentifier, "identifierForAccessoryModel:", [v10 intValue]);
        if (v11)
        {
          [array addObject:v11];
        }

        else
        {
          v12 = DiagnosticLogHandleForCategory(6);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v22 = v10;
            _os_log_fault_impl(&dword_248BD5000, v12, OS_LOG_TYPE_FAULT, "Identifier not found for accessory %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [[self alloc] initWithDeviceIdentifiers:array];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (DSIOPSDevice)initWithDeviceIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = DSIOPSDevice;
  v4 = [(DSIOPSDevice *)&v11 init];
  if (v4)
  {
    blob = 0;
    v5 = IOPSCopyPowerSourcesByTypePrecise();
    v6 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DSIOPSDevice *)v5 initWithDeviceIdentifiers:v6];
    }

    if (!v4->_info)
    {

      v4 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)serialNumber
{
  info = [(DSIOPSDevice *)self info];
  v3 = [info objectForKeyedSubscript:@"Accessory Identifier"];

  return v3;
}

- (id)information
{
  v34[7] = *MEMORY[0x277D85DE8];
  v33[0] = @"serialNumber";
  info = [(DSIOPSDevice *)self info];
  null = [info objectForKeyedSubscript:@"Accessory Identifier"];
  v4 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v24 = null;
  v34[0] = null;
  v33[1] = @"fullChargeCapacity";
  info2 = [(DSIOPSDevice *)self info];
  null2 = [info2 objectForKeyedSubscript:@"Max Capacity"];
  v6 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v31 = v4;
  v23 = null2;
  v34[1] = null2;
  v33[2] = @"nominalChargeCapacity";
  info3 = [(DSIOPSDevice *)self info];
  null3 = [info3 objectForKeyedSubscript:@"Nominal Capacity"];
  v8 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v22 = null3;
  v34[2] = null3;
  v33[3] = @"cycleCount";
  info4 = [(DSIOPSDevice *)self info];
  null4 = [info4 objectForKeyedSubscript:@"CycleCount"];
  v10 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v6;
  v34[3] = null4;
  v33[4] = @"temperature";
  info5 = [(DSIOPSDevice *)self info];
  v11 = [info5 objectForKeyedSubscript:@"Temperature"];
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v34[4] = null5;
  v33[5] = @"isCharging";
  info6 = [(DSIOPSDevice *)self info];
  v14 = [info6 objectForKeyedSubscript:@"Is Charging"];
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v34[5] = null6;
  v33[6] = @"powerSourceState";
  info7 = [(DSIOPSDevice *)self info];
  v17 = [info7 objectForKeyedSubscript:@"Power Source State"];
  null7 = v17;
  if (!v17)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v34[6] = null7;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:7];
  if (!v17)
  {
  }

  if (!v14)
  {
  }

  if (!v11)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v29)
  {
  }

  if (!v31)
  {
  }

  v19 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)initWithDeviceIdentifiers:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve power sources info. Error code: %03X", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end