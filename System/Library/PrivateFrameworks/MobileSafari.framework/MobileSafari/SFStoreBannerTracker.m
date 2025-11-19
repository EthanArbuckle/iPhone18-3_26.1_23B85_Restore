@interface SFStoreBannerTracker
+ (id)sharedTracker;
- (BOOL)canUpdateProductID:(id)a3 forHost:(id)a4 time:(id)a5;
- (BOOL)shouldBlockForIdentifier:(id)a3 withDismissCount:(unint64_t)a4;
- (void)blockProductBanner:(id)a3;
- (void)isProductBannerBlocked:(id)a3 forHost:(id)a4 completion:(id)a5;
@end

@implementation SFStoreBannerTracker

+ (id)sharedTracker
{
  if (sharedTracker_once != -1)
  {
    +[SFStoreBannerTracker sharedTracker];
  }

  v3 = sharedTracker_sharedTracker;

  return v3;
}

void __37__SFStoreBannerTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(SFStoreBannerTracker);
  v1 = sharedTracker_sharedTracker;
  sharedTracker_sharedTracker = v0;
}

- (BOOL)shouldBlockForIdentifier:(id)a3 withDismissCount:(unint64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  if (a4 != 1)
  {
    return 1;
  }

  v4 = MEMORY[0x1E69635F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 integerValue];

  v8 = [v6 initWithStoreItemIdentifier:v7 error:0];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applicationState];
    if ([v10 isInstalled])
    {
      v11 = [v10 isRestricted];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)isProductBannerBlocked:(id)a3 forHost:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E695DF00];
  v10 = a4;
  v11 = [v9 now];
  v12 = [(SFStoreBannerTracker *)self canUpdateProductID:v14 forHost:v10 time:v11];

  if (v12)
  {
    v13 = [v14 stringValue];
    [(WBSBannerTracker *)self isBannerBlockedForIdentifier:v13 completion:v8];
  }

  else
  {
    v8[2](v8, 1);
  }
}

- (void)blockProductBanner:(id)a3
{
  v4 = [a3 stringValue];
  [(WBSBannerTracker *)self blockBannerForIdentifier:v4];
}

- (BOOL)canUpdateProductID:(id)a3 forHost:(id)a4 time:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  hostToBannerRecordMap = self->_hostToBannerRecordMap;
  if (!hostToBannerRecordMap)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = self->_hostToBannerRecordMap;
    self->_hostToBannerRecordMap = v12;

    hostToBannerRecordMap = self->_hostToBannerRecordMap;
  }

  v14 = [(NSMutableDictionary *)hostToBannerRecordMap objectForKeyedSubscript:v9];
  if (v14)
  {
    v15 = v14;
    v16 = [(SFBannerRecord *)v14 updateProductID:v8 time:v10];
  }

  else
  {
    v15 = [[SFBannerRecord alloc] initWithProductID:v8 time:v10];
    [(NSMutableDictionary *)self->_hostToBannerRecordMap setObject:v15 forKeyedSubscript:v9];
    v16 = 1;
  }

  return v16;
}

@end