@interface SFStoreBannerTracker
+ (id)sharedTracker;
- (BOOL)canUpdateProductID:(id)d forHost:(id)host time:(id)time;
- (BOOL)shouldBlockForIdentifier:(id)identifier withDismissCount:(unint64_t)count;
- (void)blockProductBanner:(id)banner;
- (void)isProductBannerBlocked:(id)blocked forHost:(id)host completion:(id)completion;
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

- (BOOL)shouldBlockForIdentifier:(id)identifier withDismissCount:(unint64_t)count
{
  if (!count)
  {
    return 0;
  }

  if (count != 1)
  {
    return 1;
  }

  v4 = MEMORY[0x1E69635F8];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  integerValue = [identifierCopy integerValue];

  v8 = [v6 initWithStoreItemIdentifier:integerValue error:0];
  v9 = v8;
  if (v8)
  {
    applicationState = [v8 applicationState];
    if ([applicationState isInstalled])
    {
      isRestricted = [applicationState isRestricted];
    }

    else
    {
      isRestricted = 1;
    }
  }

  else
  {
    isRestricted = 1;
  }

  return isRestricted;
}

- (void)isProductBannerBlocked:(id)blocked forHost:(id)host completion:(id)completion
{
  blockedCopy = blocked;
  completionCopy = completion;
  v9 = MEMORY[0x1E695DF00];
  hostCopy = host;
  v11 = [v9 now];
  v12 = [(SFStoreBannerTracker *)self canUpdateProductID:blockedCopy forHost:hostCopy time:v11];

  if (v12)
  {
    stringValue = [blockedCopy stringValue];
    [(WBSBannerTracker *)self isBannerBlockedForIdentifier:stringValue completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)blockProductBanner:(id)banner
{
  stringValue = [banner stringValue];
  [(WBSBannerTracker *)self blockBannerForIdentifier:stringValue];
}

- (BOOL)canUpdateProductID:(id)d forHost:(id)host time:(id)time
{
  dCopy = d;
  hostCopy = host;
  timeCopy = time;
  hostToBannerRecordMap = self->_hostToBannerRecordMap;
  if (!hostToBannerRecordMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = self->_hostToBannerRecordMap;
    self->_hostToBannerRecordMap = dictionary;

    hostToBannerRecordMap = self->_hostToBannerRecordMap;
  }

  v14 = [(NSMutableDictionary *)hostToBannerRecordMap objectForKeyedSubscript:hostCopy];
  if (v14)
  {
    v15 = v14;
    v16 = [(SFBannerRecord *)v14 updateProductID:dCopy time:timeCopy];
  }

  else
  {
    v15 = [[SFBannerRecord alloc] initWithProductID:dCopy time:timeCopy];
    [(NSMutableDictionary *)self->_hostToBannerRecordMap setObject:v15 forKeyedSubscript:hostCopy];
    v16 = 1;
  }

  return v16;
}

@end