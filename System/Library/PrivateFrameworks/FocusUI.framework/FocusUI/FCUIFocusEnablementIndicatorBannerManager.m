@interface FCUIFocusEnablementIndicatorBannerManager
+ (id)_flankingBannerRequesterIdentifier;
+ (id)managerWithBannerPoster:(id)a3;
- (id)_initWithBannerPoster:(id)a3;
- (id)postPersistentActivity:(id)a3 enabled:(BOOL)a4 systemApertureElementProvider:(id)a5 pickerPresentation:(BOOL)a6;
- (void)_addActivePresentable:(id)a3;
- (void)_invalidateDismissTimerForPresentable:(id)a3;
- (void)_postActivity:(id)a3 enabled:(BOOL)a4 forPreviewing:(BOOL)a5 withOptions:(unint64_t)a6;
- (void)_removeFlankingPresentable:(id)a3;
- (void)_scheduleDismissTimerForPresentable:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)revokeWithReason:(id)a3;
@end

@implementation FCUIFocusEnablementIndicatorBannerManager

+ (id)managerWithBannerPoster:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithBannerPoster:v4];

  return v5;
}

- (id)_initWithBannerPoster:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCUIFocusEnablementIndicatorBannerManager;
  v6 = [(FCUIFocusEnablementIndicatorManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerPoster, a3);
  }

  return v7;
}

- (void)revokeWithReason:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  bannerPoster = self->_bannerPoster;
  v6 = MEMORY[0x277CF0AC0];
  v7 = [objc_opt_class() _flankingBannerRequesterIdentifier];
  v8 = [v6 identificationWithRequesterIdentifier:v7];
  v11 = *MEMORY[0x277D68068];
  v12[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [(BNPosting *)bannerPoster revokePresentablesWithIdentification:v8 reason:v4 options:0 userInfo:v9 error:0];
}

- (id)postPersistentActivity:(id)a3 enabled:(BOOL)a4 systemApertureElementProvider:(id)a5 pickerPresentation:(BOOL)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277D6B898]);
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __125__FCUIFocusEnablementIndicatorBannerManager_postPersistentActivity_enabled_systemApertureElementProvider_pickerPresentation___block_invoke;
  v16 = &unk_27901A6F8;
  objc_copyWeak(&v17, &location);
  [v11 addInvalidationBlock:&v13];
  [(FCUIFocusEnablementIndicatorBannerManager *)self _postActivity:v9 enabled:v7 forPreviewing:1 withOptions:1, v13, v14, v15, v16];
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

- (void)_postActivity:(id)a3 enabled:(BOOL)a4 forPreviewing:(BOOL)a5 withOptions:(unint64_t)a6
{
  v25 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = self;
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
        v14 = [v13 activityDescription];
        v15 = [v14 activityUniqueIdentifier];
        v16 = [v8 activityUniqueIdentifier];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          a5 = [v13 isForPreviewing];
          if ([v13 isActivityEnabled] == v25)
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
  v19 = [objc_opt_class() _flankingBannerRequesterIdentifier];
  v20 = [(FCUIFocusEnablementIndicatorBannerPresentable *)v18 initWithActivityDescription:v8 requesterIdentifier:v19 enabled:v25 forPreviewing:a5];

  [(FCUIFocusEnablementIndicatorBannerManager *)v23 _addActivePresentable:v20];
  v21 = [MEMORY[0x277CBEB38] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D68088]];
  v22 = v21;
  if (a5)
  {
    [v21 setObject:&unk_285ED93A0 forKey:*MEMORY[0x277D68070]];
  }

  [(BNPosting *)v23->_bannerPoster postPresentable:v20 withOptions:a6 userInfo:v22 error:0, v23];

LABEL_14:
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v10 = v5;
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

  v9 = [v8 isForPreviewing];
  if (v9)
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
  block[4] = a1;
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

- (void)_addActivePresentable:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = self;
    objc_sync_enter(v4);
    activeFlankingPresentables = v4->_activeFlankingPresentables;
    if (!activeFlankingPresentables)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = v4->_activeFlankingPresentables;
      v4->_activeFlankingPresentables = v6;

      activeFlankingPresentables = v4->_activeFlankingPresentables;
    }

    [(NSMutableArray *)activeFlankingPresentables addObject:v8];
    [v8 addPresentableObserver:v4];
    objc_sync_exit(v4);
  }
}

- (void)_removeFlankingPresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [v7 removePresentableObserver:v5];
    [(FCUIFocusEnablementIndicatorBannerManager *)v5 _invalidateDismissTimerForPresentable:v7];
    [(NSMutableArray *)v5->_activeFlankingPresentables removeObject:v7];
    if (![(NSMutableArray *)v5->_activeFlankingPresentables count])
    {
      activeFlankingPresentables = v5->_activeFlankingPresentables;
      v5->_activeFlankingPresentables = 0;
    }

    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)_scheduleDismissTimerForPresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_flankingBannersToDismissTimers objectForKey:v4];
    if (!v6)
    {
      objc_initWeak(&location, v5);
      v7 = MEMORY[0x277CBEBB8];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__FCUIFocusEnablementIndicatorBannerManager__scheduleDismissTimerForPresentable___block_invoke;
      v12[3] = &unk_27901A740;
      objc_copyWeak(&v14, &location);
      v8 = v4;
      v13 = v8;
      v6 = [v7 scheduledTimerWithTimeInterval:0 repeats:v12 block:6.0];
      flankingBannersToDismissTimers = v5->_flankingBannersToDismissTimers;
      if (!flankingBannersToDismissTimers)
      {
        v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v11 = v5->_flankingBannersToDismissTimers;
        v5->_flankingBannersToDismissTimers = v10;

        flankingBannersToDismissTimers = v5->_flankingBannersToDismissTimers;
      }

      [(NSMapTable *)flankingBannersToDismissTimers setObject:v6 forKey:v8];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v5);
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

- (void)_invalidateDismissTimerForPresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_flankingBannersToDismissTimers objectForKey:v8];
    [v6 invalidate];
    [(NSMapTable *)v5->_flankingBannersToDismissTimers removeObjectForKey:v8];
    if (![(NSMapTable *)v5->_flankingBannersToDismissTimers count])
    {
      flankingBannersToDismissTimers = v5->_flankingBannersToDismissTimers;
      v5->_flankingBannersToDismissTimers = 0;
    }

    objc_sync_exit(v5);
    v4 = v8;
  }
}

@end