@interface HFAccessorySettingSiriHistoryAdapter
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
@end

@implementation HFAccessorySettingSiriHistoryAdapter

- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  vendorCopy = vendor;
  if (mode)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriHistoryAdapter.m" lineNumber:23 description:@"The Siri History Adapter is only used on the Controller"];
  }

  v8 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingSiriHistoryAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v8 mode:mode updateHandler:0];

  return v9;
}

- (HFAccessorySettingSiriHistoryAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriHistoryAdapter.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriHistoryAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  if ([homeKitSettingsVendor conformsToProtocol:&unk_282584A38])
  {
    v4 = homeKitSettingsVendor;
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