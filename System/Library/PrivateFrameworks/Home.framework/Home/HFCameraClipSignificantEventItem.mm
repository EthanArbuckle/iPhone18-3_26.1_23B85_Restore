@interface HFCameraClipSignificantEventItem
- (HFCameraClipSignificantEventItem)initWithSignificantEvent:(id)event home:(id)home;
- (id)_homeKitObjectFetch;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
@end

@implementation HFCameraClipSignificantEventItem

- (HFCameraClipSignificantEventItem)initWithSignificantEvent:(id)event home:(id)home
{
  eventCopy = event;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HFCameraClipSignificantEventItem;
  v8 = [(HFFetchedHomeKitObjectItem *)&v12 initWithHomeKitObject:eventCopy];
  if (v8)
  {
    v9 = [homeCopy hf_cameraProfileForSignificantEvent:eventCopy];
    cameraProfile = v8->_cameraProfile;
    v8->_cameraProfile = v9;

    objc_storeStrong(&v8->_home, home);
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = HFCameraClipSignificantEventItem;
  v3 = [(HFItem *)&v8 description];
  v4 = MEMORY[0x277CCACA8];
  event = [(HFCameraClipSignificantEventItem *)self event];
  v6 = [v4 stringWithFormat:@"%@ event:%@", v3, event];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  homeKitObject = [(HFFetchedHomeKitObjectItem *)self homeKitObject];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, homeKitObject];

  return v7;
}

- (id)_homeKitObjectFetch
{
  cameraProfile = [(HFCameraClipSignificantEventItem *)self cameraProfile];
  event = [(HFCameraClipSignificantEventItem *)self event];
  uniqueIdentifier = [event uniqueIdentifier];
  v6 = [cameraProfile hf_significantEventWithIdentifier:uniqueIdentifier];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HFCameraClipSignificantEventItem;
  v4 = [(HFFetchedHomeKitObjectItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HFCameraClipSignificantEventItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __64__HFCameraClipSignificantEventItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) event];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "reason")}];
  [v3 setObject:v6 forKeyedSubscript:@"HFResultCameraSignificantEventReasonKey"];

  v7 = [*(a1 + 32) event];
  v8 = [v7 dateOfOccurrence];
  [v3 setObject:v8 forKeyedSubscript:@"HFResultCameraSignificantEventDateKey"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) event];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "confidenceLevel")}];
  [v3 setObject:v11 forKeyedSubscript:@"HFResultCameraSignificantEventConfidenceLevelKey"];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
  v12 = [*(a1 + 32) event];
  v13 = [v12 faceClassification];

  if (v13)
  {
    v14 = [*(a1 + 32) event];
    v15 = [v14 faceClassification];
    [v3 setObject:v15 forKeyedSubscript:@"HFResultCameraSignificantEventFaceClassificationKey"];
  }

  v16 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  event = [(HFCameraClipSignificantEventItem *)self event];
  home = [(HFCameraClipSignificantEventItem *)self home];
  v7 = [v4 initWithSignificantEvent:event home:home];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

@end