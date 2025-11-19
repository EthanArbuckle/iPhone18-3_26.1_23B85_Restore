@interface HFUserAccessLevelItem
- (id)_subclass_updateWithOptions:(id)a3;
- (unint64_t)cameraAccessLevel;
@end

@implementation HFUserAccessLevelItem

- (unint64_t)cameraAccessLevel
{
  v3 = [(HFUserItem *)self home];
  v4 = [(HFUserItem *)self user];
  v5 = [v3 homeAccessControlForUser:v4];
  v6 = [v5 camerasAccessLevel];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HFUserAccessLevelItem;
  v5 = [(HFUserItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HFUserAccessLevelItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DF5A08;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __53__HFUserAccessLevelItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = HFLocalizedStringFromHMUserCameraAccessLevel([WeakRetained cameraAccessLevel]);
  [v5 setObject:v6 forKeyedSubscript:@"cameraAccessLevel"];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v7;
}

@end