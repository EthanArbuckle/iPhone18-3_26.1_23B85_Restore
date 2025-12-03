@interface CSLAppSwitcherFavoritesSetting
- (CSLAppSwitcherFavoritesSetting)init;
- (CSLAppSwitcherFavoritesSettingDelegate)delegate;
- (NSArray)favorites;
- (unint64_t)maximumFavorites;
- (void)_withLock:(id)lock;
- (void)setDelegate:(id)delegate;
- (void)setMaximumFavorites:(unint64_t)favorites;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLAppSwitcherFavoritesSetting

- (CSLAppSwitcherFavoritesSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  favorites = [(CSLAppSwitcherFavoritesSetting *)self favorites];
  [delegateCopy appSwitcherFavoritesDidUpdate:favorites];
}

- (void)setMaximumFavorites:(unint64_t)favorites
{
  maximumFavoritesSetting = self->_maximumFavoritesSetting;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:favorites];
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

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  favorites = [(CSLAppSwitcherFavoritesSetting *)self favorites];
  [WeakRetained appSwitcherFavoritesDidUpdate:favorites];
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