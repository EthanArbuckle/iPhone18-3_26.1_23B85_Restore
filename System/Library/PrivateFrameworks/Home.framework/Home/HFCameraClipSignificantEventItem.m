@interface HFCameraClipSignificantEventItem
- (HFCameraClipSignificantEventItem)initWithSignificantEvent:(id)a3 home:(id)a4;
- (id)_homeKitObjectFetch;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation HFCameraClipSignificantEventItem

- (HFCameraClipSignificantEventItem)initWithSignificantEvent:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HFCameraClipSignificantEventItem;
  v8 = [(HFFetchedHomeKitObjectItem *)&v12 initWithHomeKitObject:v6];
  if (v8)
  {
    v9 = [v7 hf_cameraProfileForSignificantEvent:v6];
    cameraProfile = v8->_cameraProfile;
    v8->_cameraProfile = v9;

    objc_storeStrong(&v8->_home, a4);
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = HFCameraClipSignificantEventItem;
  v3 = [(HFItem *)&v8 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HFCameraClipSignificantEventItem *)self event];
  v6 = [v4 stringWithFormat:@"%@ event:%@", v3, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFFetchedHomeKitObjectItem *)self homeKitObject];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (id)_homeKitObjectFetch
{
  v3 = [(HFCameraClipSignificantEventItem *)self cameraProfile];
  v4 = [(HFCameraClipSignificantEventItem *)self event];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hf_significantEventWithIdentifier:v5];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HFCameraClipSignificantEventItem;
  v4 = [(HFFetchedHomeKitObjectItem *)&v8 _subclass_updateWithOptions:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFCameraClipSignificantEventItem *)self event];
  v6 = [(HFCameraClipSignificantEventItem *)self home];
  v7 = [v4 initWithSignificantEvent:v5 home:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

@end