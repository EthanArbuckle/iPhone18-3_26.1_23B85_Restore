@interface HMDDoorbellChimeControllerContext
- (BOOL)isCurrentDevicePrimaryResident;
- (HMDDoorbellChimeControllerContext)initWithWorkQueue:(id)a3 accessory:(id)a4;
- (HMDHAPAccessory)accessory;
- (double)doorbellChimeMaximumAnnounceDelay;
@end

@implementation HMDDoorbellChimeControllerContext

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (double)doorbellChimeMaximumAnnounceDelay
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"doorbellChimeMaximumAnnounceDelay"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDDoorbellChimeControllerContext *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (HMDDoorbellChimeControllerContext)initWithWorkQueue:(id)a3 accessory:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v20.receiver = self;
  v20.super_class = HMDDoorbellChimeControllerContext;
  v10 = [(HMDDoorbellChimeControllerContext *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_accessory, v9);
    objc_storeStrong(&v11->_workQueue, a3);
    v12 = objc_alloc_init(HMDDoorbellBulletinUtilities);
    doorbellBulletinUtilities = v11->_doorbellBulletinUtilities;
    v11->_doorbellBulletinUtilities = v12;

    v21 = *MEMORY[0x277CD0E38];
    v14 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
    v22[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v16 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:v9 workQueue:v7 interestedCharacteristicTypesByServiceType:v15];
    listener = v11->_listener;
    v11->_listener = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

@end