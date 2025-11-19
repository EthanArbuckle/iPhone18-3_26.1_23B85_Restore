@interface DSEADevice
+ (id)deviceWithModelNumber:(id)a3;
+ (id)deviceWithSerialNumber:(id)a3;
+ (id)devicesWithModelNumbers:(id)a3;
- (DSEADevice)initWithAccessory:(id)a3;
- (DSEADevice)initWithModelNumber:(id)a3;
- (DSEADevice)initWithSerialNumber:(id)a3;
- (id)information;
@end

@implementation DSEADevice

+ (id)deviceWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerialNumber:v4];

  return v5;
}

- (DSEADevice)initWithSerialNumber:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    v7 = [v6 connectedAccessories];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 serialNumber];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)deviceWithModelNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithModelNumber:v4];

  return v5;
}

- (DSEADevice)initWithModelNumber:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    v7 = [v6 connectedAccessories];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 modelNumber];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)devicesWithModelNumbers:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  v6 = [v5 connectedAccessories];

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 modelNumber];
          v14 = [v3 containsObject:v13];

          if (v14)
          {
            v15 = [[DSEADevice alloc] initWithAccessory:v12];
            if (v15)
            {
              [v4 addObject:v15];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v6 = v19;
  }

  v16 = [v4 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (DSEADevice)initWithAccessory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DSEADevice;
  v6 = [(DSEADevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_device, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)information
{
  v36[8] = *MEMORY[0x277D85DE8];
  v35[0] = @"capabilities";
  v3 = MEMORY[0x277CCABB0];
  v34 = [(DSEADevice *)self device];
  v33 = [v3 numberWithUnsignedInt:{objc_msgSend(v34, "accessoryCapabilities")}];
  v36[0] = v33;
  v35[1] = @"firmwareRevision";
  v32 = [(DSEADevice *)self device];
  v4 = [v32 firmwareRevision];
  v31 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v4;
  v36[1] = v4;
  v35[2] = @"hardwareRevision";
  v30 = [(DSEADevice *)self device];
  v5 = [v30 hardwareRevision];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v5;
  v36[2] = v5;
  v35[3] = @"MACAddress";
  v28 = [(DSEADevice *)self device];
  v7 = [v28 macAddress];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v6;
  v23 = v7;
  v36[3] = v7;
  v35[4] = @"modelNumber";
  v27 = [(DSEADevice *)self device];
  v9 = [v27 modelNumber];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v9;
  v36[4] = v9;
  v35[5] = @"name";
  v11 = [(DSEADevice *)self device];
  v12 = [v11 name];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v36[5] = v13;
  v35[6] = @"serialNumber";
  v14 = [(DSEADevice *)self device];
  v15 = [v14 serialNumber];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v36[6] = v16;
  v35[7] = @"connectionID";
  v17 = MEMORY[0x277CCABB0];
  v18 = [(DSEADevice *)self device];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "connectionID")}];
  v36[7] = v19;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];

  if (!v15)
  {
  }

  if (!v12)
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

  v20 = *MEMORY[0x277D85DE8];

  return v26;
}

@end