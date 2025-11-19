@interface HFAccessorySettingSiriHistoryAdapter
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6;
- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4;
@end

@implementation HFAccessorySettingSiriHistoryAdapter

- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  if (a4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriHistoryAdapter.m" lineNumber:23 description:@"The Siri History Adapter is only used on the Controller"];
  }

  v8 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingSiriHistoryAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:v7 keyPaths:v8 mode:a4 updateHandler:0];

  return v9;
}

- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriHistoryAdapter.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriHistoryAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v3 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  if ([v3 conformsToProtocol:&unk_282584A38])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 isContainedWithinItemGroup] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end