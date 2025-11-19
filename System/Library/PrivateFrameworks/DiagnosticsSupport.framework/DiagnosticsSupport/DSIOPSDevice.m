@interface DSIOPSDevice
+ (id)deviceMatchingAccessories:(id)a3;
+ (id)deviceWithAccessory:(unint64_t)a3;
- (DSIOPSDevice)initWithDeviceIdentifiers:(id)a3;
- (id)information;
- (id)serialNumber;
@end

@implementation DSIOPSDevice

+ (id)deviceWithAccessory:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [DSIODeviceIdentifier identifierForAccessoryModel:a3];
  v5 = [a1 alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 initWithDeviceIdentifiers:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)deviceMatchingAccessories:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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
          [v4 addObject:v11];
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

  v13 = [[a1 alloc] initWithDeviceIdentifiers:v4];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (DSIOPSDevice)initWithDeviceIdentifiers:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a3;
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
  v2 = [(DSIOPSDevice *)self info];
  v3 = [v2 objectForKeyedSubscript:@"Accessory Identifier"];

  return v3;
}

- (id)information
{
  v34[7] = *MEMORY[0x277D85DE8];
  v33[0] = @"serialNumber";
  v32 = [(DSIOPSDevice *)self info];
  v3 = [v32 objectForKeyedSubscript:@"Accessory Identifier"];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v3;
  v34[0] = v3;
  v33[1] = @"fullChargeCapacity";
  v30 = [(DSIOPSDevice *)self info];
  v5 = [v30 objectForKeyedSubscript:@"Max Capacity"];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v31 = v4;
  v23 = v5;
  v34[1] = v5;
  v33[2] = @"nominalChargeCapacity";
  v28 = [(DSIOPSDevice *)self info];
  v7 = [v28 objectForKeyedSubscript:@"Nominal Capacity"];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v7;
  v34[2] = v7;
  v33[3] = @"cycleCount";
  v27 = [(DSIOPSDevice *)self info];
  v9 = [v27 objectForKeyedSubscript:@"CycleCount"];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v6;
  v34[3] = v9;
  v33[4] = @"temperature";
  v26 = [(DSIOPSDevice *)self info];
  v11 = [v26 objectForKeyedSubscript:@"Temperature"];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v34[4] = v12;
  v33[5] = @"isCharging";
  v13 = [(DSIOPSDevice *)self info];
  v14 = [v13 objectForKeyedSubscript:@"Is Charging"];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v34[5] = v15;
  v33[6] = @"powerSourceState";
  v16 = [(DSIOPSDevice *)self info];
  v17 = [v16 objectForKeyedSubscript:@"Power Source State"];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v34[6] = v18;
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