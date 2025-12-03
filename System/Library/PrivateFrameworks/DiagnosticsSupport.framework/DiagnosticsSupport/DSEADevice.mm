@interface DSEADevice
+ (id)deviceWithModelNumber:(id)number;
+ (id)deviceWithSerialNumber:(id)number;
+ (id)devicesWithModelNumbers:(id)numbers;
- (DSEADevice)initWithAccessory:(id)accessory;
- (DSEADevice)initWithModelNumber:(id)number;
- (DSEADevice)initWithSerialNumber:(id)number;
- (id)information;
@end

@implementation DSEADevice

+ (id)deviceWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithSerialNumber:(id)number
{
  v24 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v22.receiver = self;
  v22.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v22 init];
  if (v5)
  {
    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

    if (connectedAccessories)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = connectedAccessories;
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
            serialNumber = [v13 serialNumber];
            v15 = [serialNumber isEqualToString:numberCopy];

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

+ (id)deviceWithModelNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithModelNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithModelNumber:(id)number
{
  v24 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v22.receiver = self;
  v22.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v22 init];
  if (v5)
  {
    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

    if (connectedAccessories)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = connectedAccessories;
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
            modelNumber = [v13 modelNumber];
            v15 = [modelNumber isEqualToString:numberCopy];

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

+ (id)devicesWithModelNumbers:(id)numbers
{
  v25 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

  if (connectedAccessories)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = connectedAccessories;
    v7 = connectedAccessories;
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
          modelNumber = [v12 modelNumber];
          v14 = [numbersCopy containsObject:modelNumber];

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

    connectedAccessories = v19;
  }

  v16 = [v4 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (DSEADevice)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = DSEADevice;
  v6 = [(DSEADevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (accessoryCopy)
    {
      objc_storeStrong(&v6->_device, accessory);
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
  device = [(DSEADevice *)self device];
  v33 = [v3 numberWithUnsignedInt:{objc_msgSend(device, "accessoryCapabilities")}];
  v36[0] = v33;
  v35[1] = @"firmwareRevision";
  device2 = [(DSEADevice *)self device];
  firmwareRevision = [device2 firmwareRevision];
  v31 = firmwareRevision;
  if (!firmwareRevision)
  {
    firmwareRevision = [MEMORY[0x277CBEB68] null];
  }

  v25 = firmwareRevision;
  v36[1] = firmwareRevision;
  v35[2] = @"hardwareRevision";
  device3 = [(DSEADevice *)self device];
  hardwareRevision = [device3 hardwareRevision];
  v6 = hardwareRevision;
  if (!hardwareRevision)
  {
    hardwareRevision = [MEMORY[0x277CBEB68] null];
  }

  v24 = hardwareRevision;
  v36[2] = hardwareRevision;
  v35[3] = @"MACAddress";
  device4 = [(DSEADevice *)self device];
  macAddress = [device4 macAddress];
  v8 = macAddress;
  if (!macAddress)
  {
    macAddress = [MEMORY[0x277CBEB68] null];
  }

  v29 = v6;
  v23 = macAddress;
  v36[3] = macAddress;
  v35[4] = @"modelNumber";
  device5 = [(DSEADevice *)self device];
  modelNumber = [device5 modelNumber];
  v10 = modelNumber;
  if (!modelNumber)
  {
    modelNumber = [MEMORY[0x277CBEB68] null];
  }

  v22 = modelNumber;
  v36[4] = modelNumber;
  v35[5] = @"name";
  device6 = [(DSEADevice *)self device];
  name = [device6 name];
  null = name;
  if (!name)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v36[5] = null;
  v35[6] = @"serialNumber";
  device7 = [(DSEADevice *)self device];
  serialNumber = [device7 serialNumber];
  null2 = serialNumber;
  if (!serialNumber)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v36[6] = null2;
  v35[7] = @"connectionID";
  v17 = MEMORY[0x277CCABB0];
  device8 = [(DSEADevice *)self device];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(device8, "connectionID")}];
  v36[7] = v19;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];

  if (!serialNumber)
  {
  }

  if (!name)
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