@interface BannerController
- (BannerControllerDelegate)delegate;
- (NSArray)topBannersAnchoredToStatusBar;
- (NSArray)topBannersSeparableFromStatusBar;
- (UIView)bannerBackdrop;
- (void)_updateTopBanners;
- (void)setAppBanner:(id)a3 animated:(BOOL)a4;
- (void)setCrashBanner:(id)a3 animated:(BOOL)a4;
- (void)setPrivateBrowsingPrivacyProtectionsBanner:(id)a3 animated:(BOOL)a4;
- (void)setRemotelyEnabledExtensionBanner:(id)a3 animated:(BOOL)a4;
- (void)setTabGroupBanner:(id)a3 animated:(BOOL)a4;
- (void)setWebExtensionBanner:(id)a3 animated:(BOOL)a4;
- (void)setWebExtensionPermissionGrantedBanner:(id)a3 animated:(BOOL)a4;
@end

@implementation BannerController

- (BannerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)bannerBackdrop
{
  bannerBackdrop = self->_bannerBackdrop;
  if (!bannerBackdrop)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_bannerBackdrop;
    self->_bannerBackdrop = v4;

    v6 = [(UIView *)self->_bannerBackdrop layer];
    [v6 setName:@"Banner backdrop"];

    bannerBackdrop = self->_bannerBackdrop;
  }

  return bannerBackdrop;
}

- (NSArray)topBannersAnchoredToStatusBar
{
  v3 = [(BannerController *)self indexOfFirstBannerSeparableFromStatusBar];
  if (v3)
  {
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = self->_topBanners;
    }

    else
    {
      v4 = [(NSArray *)self->_topBanners subarrayWithRange:0, v3];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)setAppBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_appBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_appBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetAppBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setCrashBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_crashBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_crashBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetCrashBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setWebExtensionBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_webExtensionBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_webExtensionBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetWebExtensionBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setWebExtensionPermissionGrantedBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_webExtensionPermissionGrantedBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_webExtensionPermissionGrantedBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetWebExtensionPermissionGrantedBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setRemotelyEnabledExtensionBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_remotelyEnabledExtensionBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_remotelyEnabledExtensionBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetRemotelyEnabledExtensionBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setPrivateBrowsingPrivacyProtectionsBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_privateBrowsingPrivacyProtectionsBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_privateBrowsingPrivacyProtectionsBanner, a3);
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetPrivateBrowsingPrivacyProtectionsBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)setTabGroupBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v7 = self->_tabGroupBanner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_tabGroupBanner, a3);
    [(SFPinnableBanner *)self->_tabGroupBanner setAccessibilityIdentifier:@"TabGroupBanner"];
    [(BannerController *)self _updateTopBanners];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerController:self didSetTabGroupBanner:v9 previousBanner:v7 animated:v4];
  }
}

- (void)_updateTopBanners
{
  v3 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__BannerController__updateTopBanners__block_invoke;
  aBlock[3] = &unk_2781D8D10;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_tabGroupBanner);
  v5[2](v5, self->_crashBanner);
  v5[2](v5, self->_appBanner);
  v5[2](v5, self->_webExtensionBanner);
  v5[2](v5, self->_webExtensionPermissionGrantedBanner);
  v5[2](v5, self->_remotelyEnabledExtensionBanner);
  v5[2](v5, self->_privateBrowsingPrivacyProtectionsBanner);
  [v4 sortWithOptions:16 usingComparator:&__block_literal_global_39];
  v6 = [v4 copy];
  topBanners = self->_topBanners;
  self->_topBanners = v6;
}

void __37__BannerController__updateTopBanners__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 isHidden];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
      v4 = v6;
    }
  }
}

uint64_t __37__BannerController__updateTopBanners__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 separableFromStatusBar];
  v7 = [v5 separableFromStatusBar];
  if (v6 && !v7)
  {
    goto LABEL_3;
  }

  if (!(v6 & 1 | ((v7 & 1) == 0)))
  {
    v8 = -1;
    goto LABEL_9;
  }

  v9 = [v4 isPinnedToTop];
  v10 = [v5 isPinnedToTop];
  if (((v9 ^ 1) & 1) != 0 || v10)
  {
    v8 = (((v9 ^ 1) & v10) << 63) >> 63;
  }

  else
  {
LABEL_3:
    v8 = 1;
  }

LABEL_9:

  return v8;
}

- (NSArray)topBannersSeparableFromStatusBar
{
  v3 = [(BannerController *)self indexOfFirstBannerSeparableFromStatusBar];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = v3;
    v6 = self->_topBanners;
    v4 = [(NSArray *)v6 subarrayWithRange:v5, [(NSArray *)v6 count]- v5];
  }

  return v4;
}

@end