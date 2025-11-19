@interface NSArray(PreviewDeviceInfoAppearanceAdditions)
- (id)ic_deviceInfosByAddingAppearances;
@end

@implementation NSArray(PreviewDeviceInfoAppearanceAdditions)

- (id)ic_deviceInfosByAddingAppearances
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        v9 = ICDynamicCast();
        if (v9)
        {
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __82__NSArray_PreviewDeviceInfoAppearanceAdditions__ic_deviceInfosByAddingAppearances__block_invoke;
          v12[3] = &unk_278197968;
          v12[4] = v8;
          v13 = v2;
          [ICAppearanceInfo enumerateAppearanceTypesUsingBlock:v12];
        }

        else
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"checkedDeviceInfo != ((void*)0)" functionName:"-[NSArray(PreviewDeviceInfoAppearanceAdditions) ic_deviceInfosByAddingAppearances]" simulateCrash:1 showAlert:0 format:{@"Trying to add appearances to an array of devices infos, but the array contains something other than a device info, skipping %@", v8}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

@end