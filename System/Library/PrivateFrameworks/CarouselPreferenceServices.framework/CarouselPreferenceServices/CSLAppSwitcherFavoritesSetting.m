@interface CSLAppSwitcherFavoritesSetting
- (CSLAppSwitcherFavoritesSetting)init;
- (CSLAppSwitcherFavoritesSettingDelegate)delegate;
- (NSArray)favorites;
- (unint64_t)maximumFavorites;
- (void)_withLock:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMaximumFavorites:(unint64_t)a3;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLAppSwitcherFavoritesSetting

- (CSLAppSwitcherFavoritesSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(CSLAppSwitcherFavoritesSetting *)self favorites];
  [v4 appSwitcherFavoritesDidUpdate:v5];
}

- (void)setMaximumFavorites:(unint64_t)a3
{
  maximumFavoritesSetting = self->_maximumFavoritesSetting;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(CSLPRFTwoWaySyncSetting *)maximumFavoritesSetting setValue:v4];
}

- (unint64_t)maximumFavorites
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__CSLAppSwitcherFavoritesSetting_maximumFavorites__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLAppSwitcherFavoritesSetting *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__CSLAppSwitcherFavoritesSetting_maximumFavorites__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) value];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (NSArray)favorites
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3175;
  v9 = __Block_byref_object_dispose__3176;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSLAppSwitcherFavoritesSetting_favorites__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLAppSwitcherFavoritesSetting *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __43__CSLAppSwitcherFavoritesSetting_favorites__block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 16) value];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = v7;
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 16) defaultValue];
    v6 = *(*(a1 + 40) + 8);
    v4 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(CSLAppSwitcherFavoritesSetting *)self favorites];
  [WeakRetained appSwitcherFavoritesDidUpdate:v4];
}

- (CSLAppSwitcherFavoritesSetting)init
{
  v10.receiver = self;
  v10.super_class = CSLAppSwitcherFavoritesSetting;
  v2 = [(CSLAppSwitcherFavoritesSetting *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[CSLPRFAppSwitcherDefaultApplications defaultApplicationList];
    v5 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"FavoriteApplications" defaultValue:v4 notification:"CSLDockSettingsChangedNotification"];
    favoritesSetting = v3->_favoritesSetting;
    v3->_favoritesSetting = v5;

    v7 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"MaximumFavoriteApplications" defaultValue:&unk_2840252F0 notification:"CSLDockSettingsChangedNotification"];
    maximumFavoritesSetting = v3->_maximumFavoritesSetting;
    v3->_maximumFavoritesSetting = v7;

    [(CSLPRFTwoWaySyncSetting *)v3->_favoritesSetting setDelegate:v3];
    [(CSLPRFTwoWaySyncSetting *)v3->_maximumFavoritesSetting setDelegate:v3];
  }

  return v3;
}

@end