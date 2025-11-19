@interface HUCameraRecordingOptionsItem
- (HUCameraRecordingOptionsItem)initWithCameraProfiles:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUCameraRecordingOptionsItem

- (HUCameraRecordingOptionsItem)initWithCameraProfiles:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUCameraRecordingOptionsItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfiles, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsCameraStreamingAndRecordingItemDisplayTitle", @"HUServiceDetailsCameraStreamingAndRecordingItemDisplayTitle", 1);
  v5 = [(HUCameraRecordingOptionsItem *)self cameraProfiles];
  v6 = [v5 na_any:&__block_literal_global_213];

  v7 = MEMORY[0x277CBEB38];
  v8 = *MEMORY[0x277D13FB8];
  v17[0] = *MEMORY[0x277D13F60];
  v17[1] = v8;
  v9 = MEMORY[0x277CBEC38];
  if (v6)
  {
    v9 = MEMORY[0x277CBEC28];
  }

  v18[0] = v4;
  v18[1] = v9;
  v17[2] = *MEMORY[0x277D13DA8];
  v10 = [(HUCameraRecordingOptionsItem *)self cameraProfiles];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v12 = [v7 dictionaryWithDictionary:v11];

  v13 = MEMORY[0x277D2C900];
  v14 = [MEMORY[0x277D14780] outcomeWithResults:v12];
  v15 = [v13 futureWithResult:v14];

  return v15;
}

BOOL __60__HUCameraRecordingOptionsItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userSettings];
  if ([v3 accessModeForPresenceType:3] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 userSettings];
    v4 = [v5 accessModeForPresenceType:4] == 2;
  }

  return v4;
}

@end