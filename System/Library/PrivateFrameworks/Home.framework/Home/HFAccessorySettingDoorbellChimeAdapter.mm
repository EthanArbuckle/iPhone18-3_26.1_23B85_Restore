@interface HFAccessorySettingDoorbellChimeAdapter
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFAccessorySettingDoorbellChimeAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFAccessorySettingDoorbellChimeAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
@end

@implementation HFAccessorySettingDoorbellChimeAdapter

- (HFAccessorySettingDoorbellChimeAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  vendorCopy = vendor;
  if (mode)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingDoorbellChimeAdapter.m" lineNumber:21 description:@"The Doorbell Chime Adapter is only used on the Controller"];
  }

  v8 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingDoorbellChimeAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v8 mode:mode updateHandler:0];

  return v9;
}

- (HFAccessorySettingDoorbellChimeAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingDoorbellChimeAdapter.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingDoorbellChimeAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

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
  v9 = v5 && ([v5 hf_home], v6 = ;
  return v9;
}

@end