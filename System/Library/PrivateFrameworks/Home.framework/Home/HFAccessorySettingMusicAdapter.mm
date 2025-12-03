@interface HFAccessorySettingMusicAdapter
+ (BOOL)areAllAccessoriesLoggedIntoSameAccount:(id)account;
+ (BOOL)areAllAccessoriesLoggedOut:(id)out;
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
@end

@implementation HFAccessorySettingMusicAdapter

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  vendorCopy = vendor;
  if (mode)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:mode:]"];
    [currentHandler handleFailureInFunction:v11 file:@"HFAccessorySettingMusicAdapter.m" lineNumber:29 description:@"Music adapter does not do what you think it does."];
  }

  v7 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingMusicAdapter;
  v8 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v7 mode:mode updateHandler:0];

  return v8;
}

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMusicAdapter.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMusicAdapter.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

+ (BOOL)areAllAccessoriesLoggedIntoSameAccount:(id)account
{
  accessories = [account accessories];
  anyObject = [accessories anyObject];
  mediaProfile = [anyObject mediaProfile];
  hf_appleMusicCurrentLoggedInAccount = [mediaProfile hf_appleMusicCurrentLoggedInAccount];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HFAccessorySettingMusicAdapter_areAllAccessoriesLoggedIntoSameAccount___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = hf_appleMusicCurrentLoggedInAccount;
  v7 = hf_appleMusicCurrentLoggedInAccount;
  LOBYTE(mediaProfile) = [accessories na_all:v9];

  return mediaProfile;
}

uint64_t __73__HFAccessorySettingMusicAdapter_areAllAccessoriesLoggedIntoSameAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 hf_appleMusicCurrentLoggedInAccount];
  v5 = [v4 username];
  v6 = [*(a1 + 32) username];
  v7 = [v5 isEqual:v6];

  return v7;
}

+ (BOOL)areAllAccessoriesLoggedOut:(id)out
{
  accessories = [out accessories];
  v4 = [accessories na_all:&__block_literal_global_19];

  return v4;
}

BOOL __61__HFAccessorySettingMusicAdapter_areAllAccessoriesLoggedOut___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 hf_appleMusicCurrentLoggedInAccount];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  keyPath = [entity keyPath];
  if ([keyPath isEqualToString:@"root.music"])
  {
    v5 = 1;
  }

  else if ([keyPath isEqualToString:@"root.music.account"])
  {
    homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    if ([homeKitSettingsVendor conformsToProtocol:&unk_282584A38])
    {
      v7 = homeKitSettingsVendor;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      if ([v8 isItemGroup])
      {
        v9 = [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedIntoSameAccount:v8];
        v5 = v9 | [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedOut:v8];
      }

      else if ([v8 isContainedWithinItemGroup])
      {
        homeKitSettingsVendor2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
        hf_home = [homeKitSettingsVendor2 hf_home];
        accessories = [v8 accessories];
        anyObject = [accessories anyObject];
        v14 = [hf_home hf_mediaSystemForAccessory:anyObject];

        LODWORD(homeKitSettingsVendor2) = [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedIntoSameAccount:v14];
        LODWORD(homeKitSettingsVendor2) = homeKitSettingsVendor2 | [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedOut:v14];

        v5 = homeKitSettingsVendor2 ^ 1;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end