@interface HFAccessorySettingMusicAdapter
+ (BOOL)areAllAccessoriesLoggedIntoSameAccount:(id)a3;
+ (BOOL)areAllAccessoriesLoggedOut:(id)a3;
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5;
- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4;
@end

@implementation HFAccessorySettingMusicAdapter

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:mode:]"];
    [v10 handleFailureInFunction:v11 file:@"HFAccessorySettingMusicAdapter.m" lineNumber:29 description:@"Music adapter does not do what you think it does."];
  }

  v7 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingMusicAdapter;
  v8 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:v6 keyPaths:v7 mode:a4 updateHandler:0];

  return v8;
}

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMusicAdapter.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingMusicAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMusicAdapter.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMusicAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

+ (BOOL)areAllAccessoriesLoggedIntoSameAccount:(id)a3
{
  v3 = [a3 accessories];
  v4 = [v3 anyObject];
  v5 = [v4 mediaProfile];
  v6 = [v5 hf_appleMusicCurrentLoggedInAccount];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HFAccessorySettingMusicAdapter_areAllAccessoriesLoggedIntoSameAccount___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v6;
  v7 = v6;
  LOBYTE(v5) = [v3 na_all:v9];

  return v5;
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

+ (BOOL)areAllAccessoriesLoggedOut:(id)a3
{
  v3 = [a3 accessories];
  v4 = [v3 na_all:&__block_literal_global_19];

  return v4;
}

BOOL __61__HFAccessorySettingMusicAdapter_areAllAccessoriesLoggedOut___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 hf_appleMusicCurrentLoggedInAccount];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v4 = [a3 keyPath];
  if ([v4 isEqualToString:@"root.music"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"root.music.account"])
  {
    v6 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    if ([v6 conformsToProtocol:&unk_282584A38])
    {
      v7 = v6;
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
        v10 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
        v11 = [v10 hf_home];
        v12 = [v8 accessories];
        v13 = [v12 anyObject];
        v14 = [v11 hf_mediaSystemForAccessory:v13];

        LODWORD(v10) = [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedIntoSameAccount:v14];
        LODWORD(v10) = v10 | [HFAccessorySettingMusicAdapter areAllAccessoriesLoggedOut:v14];

        v5 = v10 ^ 1;
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