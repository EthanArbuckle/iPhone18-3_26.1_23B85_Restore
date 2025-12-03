@interface HMDDoorbellChimeControllerContext
- (BOOL)isCurrentDevicePrimaryResident;
- (HMDDoorbellChimeControllerContext)initWithWorkQueue:(id)queue accessory:(id)accessory;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"doorbellChimeMaximumAnnounceDelay"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  accessory = [(HMDDoorbellChimeControllerContext *)self accessory];
  home = [accessory home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (HMDDoorbellChimeControllerContext)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  v22[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!queueCopy)
  {
    goto LABEL_7;
  }

  v9 = accessoryCopy;
  v20.receiver = self;
  v20.super_class = HMDDoorbellChimeControllerContext;
  v10 = [(HMDDoorbellChimeControllerContext *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_accessory, v9);
    objc_storeStrong(&v11->_workQueue, queue);
    v12 = objc_alloc_init(HMDDoorbellBulletinUtilities);
    doorbellBulletinUtilities = v11->_doorbellBulletinUtilities;
    v11->_doorbellBulletinUtilities = v12;

    v21 = *MEMORY[0x277CD0E38];
    v14 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
    v22[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v16 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:v9 workQueue:queueCopy interestedCharacteristicTypesByServiceType:v15];
    listener = v11->_listener;
    v11->_listener = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

@end