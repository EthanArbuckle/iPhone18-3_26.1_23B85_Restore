@interface W5BluetoothStatus(Strings)
- (id)dictionary;
@end

@implementation W5BluetoothStatus(Strings)

- (id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a1 devices];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v8 += [v11 isConnected];
        v6 += [v11 isPaired];
        v7 += [v11 isCloudPaired];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v2 setValue:v12 forKey:@"bt_connected_devices_count"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [v2 setValue:v13 forKey:@"bt_paired_devices_count"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v2 setValue:v14 forKey:@"bt_cloud_paired_devices_count"];

  v15 = MEMORY[0x277CCABB0];
  v16 = [a1 devices];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  [v2 setValue:v17 forKey:@"bt_devices_count"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "powerOn")}];
  [v2 setValue:v18 forKey:@"bt_is_power_on"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isConnectable")}];
  [v2 setValue:v19 forKey:@"bt_is_connectable"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isDiscoverable")}];
  [v2 setValue:v20 forKey:@"bt_is_discoverable"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isScanning")}];
  [v2 setValue:v21 forKey:@"bt_is_scanning"];

  v22 = [a1 address];

  if (v22)
  {
    v23 = [a1 address];
    [v2 setValue:v23 forKey:@"bt_address"];
  }

  v24 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end