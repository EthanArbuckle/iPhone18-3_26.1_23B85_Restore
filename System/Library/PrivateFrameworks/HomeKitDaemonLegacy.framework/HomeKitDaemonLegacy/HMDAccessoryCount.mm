@interface HMDAccessoryCount
- (HMDAccessoryCount)initWithHome:(id)home;
- (HMDHome)home;
- (unint64_t)numCameraAccessories;
- (unint64_t)numCameraAccessoriesRecordingEnabled;
- (unint64_t)numCriticalSensorAccessories;
- (unint64_t)numHAPAccessories;
- (unint64_t)numHAPAccessoriesWithAnyServiceWithTypes:(id)types;
- (unint64_t)numSecurityClassAccessories;
@end

@implementation HMDAccessoryCount

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (unint64_t)numHAPAccessoriesWithAnyServiceWithTypes:(id)types
{
  v19 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  home = [(HMDAccessoryCount *)self home];
  hapAccessories = [home hapAccessories];

  v7 = [hapAccessories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v9 += [*(*(&v14 + 1) + 8 * i) hasAnyServiceWithTypes:typesCopy];
      }

      v8 = [hapAccessories countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)numCriticalSensorAccessories
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E18], *MEMORY[0x277CD0E10], *MEMORY[0x277CD0EE8], 0}];
  v4 = [(HMDAccessoryCount *)self numHAPAccessoriesWithAnyServiceWithTypes:v3];

  return v4;
}

- (unint64_t)numSecurityClassAccessories
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E30], *MEMORY[0x277CD0E58], *MEMORY[0x277CD0EB0], *MEMORY[0x277CD0ED8], *MEMORY[0x277CD0F58], 0}];
  v4 = [(HMDAccessoryCount *)self numHAPAccessoriesWithAnyServiceWithTypes:v3];

  return v4;
}

- (unint64_t)numCameraAccessoriesRecordingEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  home = [(HMDAccessoryCount *)self home];
  cameraAccessories = [home cameraAccessories];

  v4 = [cameraAccessories countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(cameraAccessories);
        }

        cameraProfileSettingsManager = [*(*(&v12 + 1) + 8 * i) cameraProfileSettingsManager];
        v6 += [cameraProfileSettingsManager isRecordingEnabled];
      }

      v5 = [cameraAccessories countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)numCameraAccessories
{
  home = [(HMDAccessoryCount *)self home];
  cameraAccessories = [home cameraAccessories];
  v4 = [cameraAccessories count];

  return v4;
}

- (unint64_t)numHAPAccessories
{
  home = [(HMDAccessoryCount *)self home];
  hapAccessories = [home hapAccessories];
  v4 = [hapAccessories count];

  return v4;
}

- (HMDAccessoryCount)initWithHome:(id)home
{
  homeCopy = home;
  v8.receiver = self;
  v8.super_class = HMDAccessoryCount;
  v5 = [(HMDAccessoryCount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
  }

  return v6;
}

@end