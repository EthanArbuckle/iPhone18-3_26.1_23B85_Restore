@interface NTKCompanionComplicationCollectionManager
+ (id)sharedComplicationCollectionWithIdentifier:(id)identifier forDevice:(id)device;
@end

@implementation NTKCompanionComplicationCollectionManager

+ (id)sharedComplicationCollectionWithIdentifier:(id)identifier forDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  if (sharedComplicationCollectionWithIdentifier_forDevice__onceToken != -1)
  {
    +[NTKCompanionComplicationCollectionManager sharedComplicationCollectionWithIdentifier:forDevice:];
  }

  pairingID = [deviceCopy pairingID];
  if (pairingID)
  {
    os_unfair_lock_lock(&sharedComplicationCollectionWithIdentifier_forDevice__lock);
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    pairingID2 = [currentDevice pairingID];
    v10 = [pairingID isEqual:pairingID2];

    strongToWeakObjectsMapTable = [sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID objectForKey:pairingID];
    if (!strongToWeakObjectsMapTable)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      [sharedComplicationCollectionWithIdentifier_forDevice__collectionsByDeviceUUID setObject:strongToWeakObjectsMapTable forKey:pairingID];
    }

    if (pairingID == sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceUUID)
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
      v23 = deviceCopy;
      objc_storeStrong(&sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceUUID, pairingID);
      [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections removeAllObjects];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      keyEnumerator = [strongToWeakObjectsMapTable keyEnumerator];
      v14 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
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
              objc_enumerationMutation(keyEnumerator);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [strongToWeakObjectsMapTable objectForKey:v18];
            [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections setObject:v19 forKey:v18];
          }

          v15 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      deviceCopy = v23;
      v10 = v22;
    }

    v20 = [strongToWeakObjectsMapTable objectForKey:identifierCopy];
    if (!v20)
    {
      v20 = [[NTKComplicationCollection alloc] initWithCollectionIdentifier:identifierCopy deviceUUID:pairingID];
      [strongToWeakObjectsMapTable setObject:v20 forKey:identifierCopy];
      if (v10)
      {
        [sharedComplicationCollectionWithIdentifier_forDevice__activeDeviceCollections setObject:v20 forKey:identifierCopy];
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