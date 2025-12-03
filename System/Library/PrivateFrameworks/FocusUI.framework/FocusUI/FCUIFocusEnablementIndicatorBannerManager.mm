@interface FCUIFocusEnablementIndicatorBannerManager
+ (id)_flankingBannerRequesterIdentifier;
+ (id)managerWithBannerPoster:(id)poster;
- (id)_initWithBannerPoster:(id)poster;
- (id)postPersistentActivity:(id)activity enabled:(BOOL)enabled systemApertureElementProvider:(id)provider pickerPresentation:(BOOL)presentation;
- (void)_addActivePresentable:(id)presentable;
- (void)_invalidateDismissTimerForPresentable:(id)presentable;
- (void)_postActivity:(id)activity enabled:(BOOL)enabled forPreviewing:(BOOL)previewing withOptions:(unint64_t)options;
- (void)_removeFlankingPresentable:(id)presentable;
- (void)_scheduleDismissTimerForPresentable:(id)presentable;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)revokeWithReason:(id)reason;
@end

@implementation FCUIFocusEnablementIndicatorBannerManager

+ (id)managerWithBannerPoster:(id)poster
{
  posterCopy = poster;
  v5 = [[self alloc] _initWithBannerPoster:posterCopy];

  return v5;
}

- (id)_initWithBannerPoster:(id)poster
{
  posterCopy = poster;
  v9.receiver = self;
  v9.super_class = FCUIFocusEnablementIndicatorBannerManager;
  v6 = [(FCUIFocusEnablementIndicatorManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerPoster, poster);
  }

  return v7;
}

- (void)revokeWithReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  bannerPoster = self->_bannerPoster;
  v6 = MEMORY[0x277CF0AC0];
  _flankingBannerRequesterIdentifier = [objc_opt_class() _flankingBannerRequesterIdentifier];
  v8 = [v6 identificationWithRequesterIdentifier:_flankingBannerRequesterIdentifier];
  v11 = *MEMORY[0x277D68068];
  v12[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [(BNPosting *)bannerPoster revokePresentablesWithIdentification:v8 reason:reasonCopy options:0 userInfo:v9 error:0];
}

- (id)postPersistentActivity:(id)activity enabled:(BOOL)enabled systemApertureElementProvider:(id)provider pickerPresentation:(BOOL)presentation
{
  enabledCopy = enabled;
  activityCopy = activity;
  providerCopy = provider;
  v11 = objc_alloc_init(MEMORY[0x277D6B898]);
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __125__FCUIFocusEnablementIndicatorBannerManager_postPersistentActivity_enabled_systemApertureElementProvider_pickerPresentation___block_invoke;
  v16 = &unk_27901A6F8;
  objc_copyWeak(&v17, &location);
  [v11 addInvalidationBlock:&v13];
  [(FCUIFocusEnablementIndicatorBannerManager *)self _postActivity:activityCopy enabled:enabledCopy forPreviewing:1 withOptions:1, v13, v14, v15, v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __125__FCUIFocusEnablementIndicatorBannerManager_postPersistentActivity_enabled_systemApertureElementProvider_pickerPresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained revokeWithReason:v4];
}

- (void)_postActivity:(id)activity enabled:(BOOL)enabled forPreviewing:(BOOL)previewing withOptions:(unint64_t)options
{
  enabledCopy = enabled;
  v32 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  obj = self->_activeFlankingPresentables;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        activityDescription = [v13 activityDescription];
        activityUniqueIdentifier = [activityDescription activityUniqueIdentifier];
        activityUniqueIdentifier2 = [activityCopy activityUniqueIdentifier];
        v17 = [activityUniqueIdentifier isEqual:activityUniqueIdentifier2];

        if (v17)
        {
          previewing = [v13 isForPreviewing];
          if ([v13 isActivityEnabled] == enabledCopy)
          {
            v20 = obj;
            goto LABEL_14;
          }
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [FCUIFocusEnablementIndicatorBannerPresentable alloc];
  _flankingBannerRequesterIdentifier = [objc_opt_class() _flankingBannerRequesterIdentifier];
  v20 = [(FCUIFocusEnablementIndicatorBannerPresentable *)v18 initWithActivityDescription:activityCopy requesterIdentifier:_flankingBannerRequesterIdentifier enabled:enabledCopy forPreviewing:previewing];

  [(FCUIFocusEnablementIndicatorBannerManager *)selfCopy _addActivePresentable:v20];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D68088]];
  v22 = v21;
  if (previewing)
  {
    [v21 setObject:&unk_285ED93A0 forKey:*MEMORY[0x277D68070]];
  }

  [(BNPosting *)selfCopy->_bannerPoster postPresentable:v20 withOptions:options userInfo:v22 error:0, selfCopy];

LABEL_14:
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  v6 = objc_opt_class();
  v10 = bannerCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  isForPreviewing = [v8 isForPreviewing];
  if (isForPreviewing)
  {
    [(FCUIFocusEnablementIndicatorBannerManager *)self _removeFlankingPresentable:v10];
  }
}

+ (id)_flankingBannerRequesterIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__FCUIFocusEnablementIndicatorBannerManager__flankingBannerRequesterIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_flankingBannerRequesterIdentifier_onceToken != -1)
  {
    dispatch_once(&_flankingBannerRequesterIdentifier_onceToken, block);
  }

  v2 = _flankingBannerRequesterIdentifier___flankingBannerRequesterIdentifier;

  return v2;
}

void __79__FCUIFocusEnablementIndicatorBannerManager__flankingBannerRequesterIdentifier__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v2 = [v6 bundleIdentifier];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [v2 stringByAppendingString:v3];
  v5 = _flankingBannerRequesterIdentifier___flankingBannerRequesterIdentifier;
  _flankingBannerRequesterIdentifier___flankingBannerRequesterIdentifier = v4;
}

- (void)_addActivePresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeFlankingPresentables = selfCopy->_activeFlankingPresentables;
    if (!activeFlankingPresentables)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = selfCopy->_activeFlankingPresentables;
      selfCopy->_activeFlankingPresentables = v6;

      activeFlankingPresentables = selfCopy->_activeFlankingPresentables;
    }

    [(NSMutableArray *)activeFlankingPresentables addObject:presentableCopy];
    [presentableCopy addPresentableObserver:selfCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)_removeFlankingPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v7 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [v7 removePresentableObserver:selfCopy];
    [(FCUIFocusEnablementIndicatorBannerManager *)selfCopy _invalidateDismissTimerForPresentable:v7];
    [(NSMutableArray *)selfCopy->_activeFlankingPresentables removeObject:v7];
    if (![(NSMutableArray *)selfCopy->_activeFlankingPresentables count])
    {
      activeFlankingPresentables = selfCopy->_activeFlankingPresentables;
      selfCopy->_activeFlankingPresentables = 0;
    }

    objc_sync_exit(selfCopy);

    presentableCopy = v7;
  }
}

- (void)_scheduleDismissTimerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_flankingBannersToDismissTimers objectForKey:presentableCopy];
    if (!v6)
    {
      objc_initWeak(&location, selfCopy);
      v7 = MEMORY[0x277CBEBB8];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__FCUIFocusEnablementIndicatorBannerManager__scheduleDismissTimerForPresentable___block_invoke;
      v12[3] = &unk_27901A740;
      objc_copyWeak(&v14, &location);
      v8 = presentableCopy;
      v13 = v8;
      v6 = [v7 scheduledTimerWithTimeInterval:0 repeats:v12 block:6.0];
      flankingBannersToDismissTimers = selfCopy->_flankingBannersToDismissTimers;
      if (!flankingBannersToDismissTimers)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v11 = selfCopy->_flankingBannersToDismissTimers;
        selfCopy->_flankingBannersToDismissTimers = weakToStrongObjectsMapTable;

        flankingBannersToDismissTimers = selfCopy->_flankingBannersToDismissTimers;
      }

      [(NSMapTable *)flankingBannersToDismissTimers setObject:v6 forKey:v8];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }
}

void __81__FCUIFocusEnablementIndicatorBannerManager__scheduleDismissTimerForPresentable___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateDismissTimerForPresentable:*(a1 + 32)];
  v3 = [WeakRetained _bannerPoster];
  v4 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:*(a1 + 32)];
  v7 = *MEMORY[0x277D68068];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 revokePresentablesWithIdentification:v4 reason:@"Revoking for dismiss timer" options:0 userInfo:v5 error:0];
}

- (void)_invalidateDismissTimerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v8 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_flankingBannersToDismissTimers objectForKey:v8];
    [v6 invalidate];
    [(NSMapTable *)selfCopy->_flankingBannersToDismissTimers removeObjectForKey:v8];
    if (![(NSMapTable *)selfCopy->_flankingBannersToDismissTimers count])
    {
      flankingBannersToDismissTimers = selfCopy->_flankingBannersToDismissTimers;
      selfCopy->_flankingBannersToDismissTimers = 0;
    }

    objc_sync_exit(selfCopy);
    presentableCopy = v8;
  }
}

@end