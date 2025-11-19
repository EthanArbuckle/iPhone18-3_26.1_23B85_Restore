@interface DSAppPermissionsDescriptor
+ (id)appsWithPermission:(id)a3 fromAllApps:(id)a4;
+ (id)enumerateAppPermissionPairsFromApps:(id)a3 permissions:(id)a4;
+ (id)localizedDescriptionFromApps:(id)a3 permission:(id)a4;
+ (id)localizedDescriptionFromPermissions:(id)a3;
+ (id)localizedNameForPermission:(id)a3;
+ (id)sortSensorDict:(id)a3;
+ (void)ensureApp:(id)a3 inSensorDict:(id)a4;
@end

@implementation DSAppPermissionsDescriptor

+ (id)sortSensorDict:(id)a3
{
  v3 = [a3 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_3];

  return v4;
}

uint64_t __45__DSAppPermissionsDescriptor_sortSensorDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[DSUtilities tccServices];
  v7 = [v5 tccPermission];

  v8 = [v6 indexOfObject:v7];
  v9 = [v4 tccPermission];

  if (v8 < [v6 indexOfObject:v9])
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (void)ensureApp:(id)a3 inSensorDict:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v5;
  v7 = [v5 permissionsGranted];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [DSAppPermissionsDescriptor localizedNameForPermission:v12];
        v14 = DSLocStringForKey(v13);

        if ([v14 length])
        {
          v15 = objc_alloc_init(DSSensor);
          [(DSSensor *)v15 setLocalizedName:v14];
          [(DSSensor *)v15 setTccPermission:v12];
          [v6 setValue:v15 forKey:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__DSAppPermissionsDescriptor_ensureApp_inSensorDict___block_invoke;
  v24[3] = &unk_278F72D70;
  v25 = v6;
  v16 = v6;
  v17 = MEMORY[0x24C1E7EB0](v24);
  if ([v23 hasLocationAccess])
  {
    v18 = [v23 locationAuthorization];
    v19 = @"DSLocationWhenInUse";
    if (v18 == 2)
    {
      v19 = @"DSLocationAlways";
    }

    v20 = v19;
    v21 = DSLocStringForKey(@"LOCATION");
    (v17)[2](v17, v21, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __53__DSAppPermissionsDescriptor_ensureApp_inSensorDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForKey:v12];
  if (!v6 || (v7 = v6, v8 = [v5 isEqualToString:@"DSLocationWhenInUse"], v7, (v8 & 1) == 0))
  {
    v9 = objc_alloc_init(DSSensor);
    [(DSSensor *)v9 setLocalizedName:v12];
    [(DSSensor *)v9 setTccPermission:v5];
    v10 = *(a1 + 32);
    v11 = [(DSSensor *)v9 localizedName];
    [v10 setValue:v9 forKey:v11];
  }
}

+ (id)localizedNameForPermission:(id)a3
{
  v3 = localizedNameForPermission__token;
  v4 = a3;
  if (v3 != -1)
  {
    +[DSAppPermissionsDescriptor localizedNameForPermission:];
  }

  v5 = [localizedNameForPermission__localizedNames objectForKey:v4];

  return v5;
}

uint64_t __57__DSAppPermissionsDescriptor_localizedNameForPermission___block_invoke()
{
  localizedNameForPermission__localizedNames = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"DSLocationAlways", @"BLUETOOTH", *MEMORY[0x277D6C110], @"LOCATION", @"DSLocationWhenInUse", @"MICROPHONE", *MEMORY[0x277D6C1A8], @"CAMERA", *MEMORY[0x277D6C120], @"PHOTOS", *MEMORY[0x277D6C1D0], @"MEDIA_LIBRARY", *MEMORY[0x277D6C1A0], @"HOMEKIT", *MEMORY[0x277D6C258], @"CALENDAR", *MEMORY[0x277D6C118], @"REMINDERS", *MEMORY[0x277D6C1E0], @"CONTACTS", @"DSContacts", @"HEALTH", @"DSHealth", @"LOCAL_NETWORK", @"DSLocalNetwork", @"NEARBY_INTERACTION", *MEMORY[0x277D6C1B8], @"SENSORKIT_LOCATION", *MEMORY[0x277D6C1F8], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)localizedDescriptionFromPermissions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = +[DSUtilities tccServices];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        if ([DSApp app:v3 hasPermission:v10])
        {
          v11 = [DSAppPermissionsDescriptor localizedNameForPermission:v10];
          v12 = v11;
          if (v11)
          {
            v13 = DSLocStringForKey(v11);
            [v4 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [DSUtilities localizedDetailStringWithTruncationFromArray:v4 withType:@"com.apple.DigitalSeparation.Permissions"];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)appsWithPermission:(id)a3 fromAllApps:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([DSApp app:v13 hasPermissionAcceptingAnyLocationAuthorization:v5, v16])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)localizedDescriptionFromApps:(id)a3 permission:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 tccPermission];
  v7 = [DSAppPermissionsDescriptor appsWithPermission:v6 fromAllApps:v5];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) displayName];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [DSUtilities localizedDetailStringWithTruncationFromArray:v8 withType:@"com.apple.DigitalSeparation.Apps"];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)enumerateAppPermissionPairsFromApps:(id)a3 permissions:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v5 allObjects];
        v15 = [DSAppPermissionsDescriptor appsWithPermission:v13 fromAllApps:v14];

        if ([v15 count])
        {
          [v7 setObject:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

@end