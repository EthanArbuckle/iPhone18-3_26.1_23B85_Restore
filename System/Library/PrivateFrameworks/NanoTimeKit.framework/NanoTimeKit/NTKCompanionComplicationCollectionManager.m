@interface NTKCompanionComplicationCollectionManager
+ (id)sharedComplicationCollectionWithIdentifier:(id)a3 forDevice:(id)a4;
@end

@implementation NTKCompanionComplicationCollectionManager

+ (id)sharedComplicationCollectionWithIdentifier:(id)a3 forDevice:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (sharedComplicationCollectionWithIdentifier_forDevice__onceToken != -1)
  {
    +[NTKCompanionComplicationCollectionManager sharedComplicationCollectionWithIdentifier:forDevice:];
  }

  v7 = [v6 pairingID];
  if (v7)
  {
    os_unfair_lock_lock(&sharedComplicationCollectionWithIdentifier_forDevice__lock);
    v8 = [MEMORY[0x277CBBAE8] currentDevice];
    v9 = [v8 pairingID];
    v10 = [v7 isEqual:v9];

    v11 = [sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID objectForKey:v7];
    if (!v11)
    {
      v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      [sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID setObject:v11 forKey:v7];
    }

    if (v7 == sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceUUID)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == 1)
    {
      v22 = v10;
      v23 = v6;
      objc_storeStrong(&sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceUUID, v7);
      [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections removeAllObjects];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [v11 keyEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [v11 objectForKey:v18];
            [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections setObject:v19 forKey:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      v6 = v23;
      v10 = v22;
    }

    v20 = [v11 objectForKey:v5];
    if (!v20)
    {
      v20 = [[NTKComplicationCollection alloc] initWithCollectionIdentifier:v5 deviceUUID:v7];
      [v11 setObject:v20 forKey:v5];
      if (v10)
      {
        [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections setObject:v20 forKey:v5];
      }
    }

    os_unfair_lock_unlock(&sharedComplicationCollectionWithIdentifier_forDevice__lock);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __98__NTKCompanionComplicationCollectionManager_sharedComplicationCollectionWithIdentifier_forDevice___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID;
  sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID = v0;

  v2 = objc_opt_new();
  v3 = sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections;
  sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections = v2;
}

@end