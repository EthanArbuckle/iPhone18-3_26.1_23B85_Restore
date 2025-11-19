@interface CPSBannerSource
- (CPBannerDelegate)delegate;
- (CPSBannerSource)initWithBundleIdentifier:(id)a3 delegate:(id)a4 applicationStateMonitor:(id)a5;
- (void)_dismissTimerFired:(id)a3;
- (void)_enqueueBannerItem:(id)a3;
- (void)_flushQueue;
- (void)_postBannerRequestForBannerItem:(id)a3;
- (void)_resetDismissTimer;
- (void)_resetLastUserDismissedIdentifierTimer;
- (void)_resetLastUserDismissedIdentifierTimerFired:(id)a3;
- (void)_revokePresentedBannerWithReason:(id)a3;
- (void)_setBannerRateLimitEnabled:(BOOL)a3 bundleIdentifier:(id)a4;
- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4;
- (void)bannerViewController:(id)a3 requestsDismissalWithReason:(id)a4;
- (void)bannerViewControllerDidAppearWithIdentifier:(id)a3;
- (void)bannerViewControllerDidDisappearWithIdentifier:(id)a3;
- (void)bannerViewControllerTappedWithIdentifier:(id)a3;
- (void)invalidate;
- (void)postBannerForManeuver:(id)a3 travelEstimates:(id)a4;
- (void)postBannerForNavigationAlert:(id)a3;
- (void)sendSuggestUI:(id)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation CPSBannerSource

- (CPSBannerSource)initWithBundleIdentifier:(id)a3 delegate:(id)a4 applicationStateMonitor:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v5 = v21;
  v21 = 0;
  v17.receiver = v5;
  v17.super_class = CPSBannerSource;
  v21 = [(CPSBannerSource *)&v17 init];
  objc_storeStrong(&v21, v21);
  if (v21)
  {
    objc_storeWeak(&v21->_delegate, v19);
    objc_storeStrong(&v21->_applicationStateMonitor, v18);
    [(CPSApplicationStateMonitor *)v21->_applicationStateMonitor addApplicationStateObserver:v21];
    v6 = [location[0] copy];
    bundleIdentifier = v21->_bundleIdentifier;
    v21->_bundleIdentifier = v6;
    MEMORY[0x277D82BD8](bundleIdentifier);
    v16 = CPSRequesterIdentifierForBundleIdentifier(v21->_bundleIdentifier);
    v8 = [MEMORY[0x277CF0A80] bannerSourceForDestination:1 forRequesterIdentifier:v16];
    bannerKitSource = v21->_bannerKitSource;
    v21->_bannerKitSource = v8;
    *&v10 = MEMORY[0x277D82BD8](bannerKitSource).n128_u64[0];
    v11 = [v18 isApplicationActive];
    v21->_active = v11;
    objc_storeStrong(&v16, 0);
  }

  v13 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v13;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(CPSBannerSource *)self _flushQueue];
    }
  }
}

- (void)invalidate
{
  v2 = [(CPSBannerSource *)self bannerKitSource];
  [(BNBannerSource *)v2 invalidate];
  MEMORY[0x277D82BD8](v2);
}

- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __59__CPSBannerSource_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D91CA8;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = v15;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)postBannerForManeuver:(id)a3 travelEstimates:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__CPSBannerSource_postBannerForManeuver_travelEstimates___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](v16);
  v15 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __57__CPSBannerSource_postBannerForManeuver_travelEstimates___block_invoke(id *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v43[2] = a1;
  v43[1] = a1;
  v29 = [a1[4] applicationStateMonitor];
  v30 = [v29 isApplicationActive];
  *&v1 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if ((v30 & 1) == 0)
  {
    v27 = [a1[5] distanceRemaining];
    v41 = 0;
    v39 = 0;
    if (v27)
    {
      v26 = v27;
    }

    else
    {
      v42 = [a1[6] initialTravelEstimates];
      v41 = 1;
      v40 = [v42 distanceRemaining];
      v39 = 1;
      v26 = v40;
    }

    v43[0] = MEMORY[0x277D82BE0](v26);
    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    v25 = [a1[6] notificationAttributedInstructionVariants];
    *&v2 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    if (v25)
    {
      v3 = [a1[6] notificationAttributedInstructionVariants];
      v4 = v36;
      v36 = v3;
      v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    }

    else
    {
      v24 = [a1[6] notificationInstructionVariants];
      *&v6 = MEMORY[0x277D82BD8](v24).n128_u64[0];
      if (v24)
      {
        v7 = [a1[6] notificationInstructionVariants];
        v8 = v37;
        v37 = v7;
        v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      }

      else
      {
        v23 = [a1[6] attributedInstructionVariants];
        *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
        if (v23)
        {
          v10 = [a1[6] attributedInstructionVariants];
          v11 = v36;
          v36 = v10;
        }

        else
        {
          v12 = [a1[6] instructionVariants];
          v11 = v37;
          v37 = v12;
        }

        v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      }
    }

    if (v43[0])
    {
      v21 = MEMORY[0x277CBEA60];
      v22 = CPSFormattedDistanceWithMediumUnit(v43[0]);
      v13 = [v21 arrayWithObjects:0];
      v14 = v38;
      v38 = v13;
      MEMORY[0x277D82BD8](v14);
      v5 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    }

    v20 = [a1[6] notificationSymbolImageSet];
    v33 = 0;
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v34 = [a1[6] symbolSet];
      v33 = 1;
      v19 = v34;
    }

    v35 = MEMORY[0x277D82BE0](v19);
    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    MEMORY[0x277D82BD8](v20);
    v16 = [CPSBannerItem alloc];
    v18 = [a1[6] identifier];
    v17 = [a1[4] bundleIdentifier];
    LOBYTE(v15) = 1;
    v32 = [CPSBannerItem initWithIdentifier:v16 bundleIdentifier:"initWithIdentifier:bundleIdentifier:textVariants:detailTextVariants:attributedDetailTextVariants:imageSet:isManeuverItem:" textVariants:v18 detailTextVariants:v15 attributedDetailTextVariants:? imageSet:? isManeuverItem:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    location = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v44, a1[6]);
      _os_log_impl(&dword_242FE8000, location, OS_LOG_TYPE_DEFAULT, "Enqueuing #banner item for maneuver: %{public}@", v44, 0xCu);
    }

    objc_storeStrong(&location, 0);
    [a1[4] _enqueueBannerItem:v32];
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(v43, 0);
  }
}

- (void)postBannerForNavigationAlert:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__CPSBannerSource_postBannerForNavigationAlert___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __48__CPSBannerSource_postBannerForNavigationAlert___block_invoke(uint64_t a1)
{
  v8 = a1;
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v9 = [CPSBannerItem alloc];
  v14 = [*(v8 + 32) identifier];
  v13 = [*(v8 + 40) bundleIdentifier];
  v12 = [*(v8 + 32) titleVariants];
  v11 = [*(v8 + 32) subtitleVariants];
  v10 = [*(v8 + 32) imageSet];
  LOBYTE(v3) = 0;
  v17[0] = [(CPSBannerItem *)v9 initWithIdentifier:v14 bundleIdentifier:v13 textVariants:v12 detailTextVariants:v11 attributedDetailTextVariants:0 imageSet:v3 isManeuverItem:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  location = CarPlaySupportGeneralLogging();
  v15 = 0;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    *type = v15;
    v1 = *(v8 + 32);
    buf = v18;
    __os_log_helper_16_2_1_8_66(v18, v1);
    _os_log_impl(&dword_242FE8000, log, type[0], "Enqueuing #banner item for navigation alert: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v2 = *(v8 + 40);
  v4 = v17;
  [v2 _enqueueBannerItem:v17[0]];
  objc_storeStrong(v4, 0);
}

- (void)bannerViewController:(id)a3 requestsDismissalWithReason:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(CPSBannerSource *)v10 presentedBannerViewController];
  v6 = location[0];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7 == v6)
  {
    [(CPSBannerSource *)v10 _revokePresentedBannerWithReason:v8, v4];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerTappedWithIdentifier:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSBannerSource *)v8 delegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSBannerSource *)v8 delegate];
    [(CPBannerDelegate *)v4 bannerTappedWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerDidAppearWithIdentifier:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [(CPSBannerSource *)v17 delegate];
  v15 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v12 = [(CPSBannerSource *)v17 presentedBannerViewController];
    v11 = [(CPSBannerViewController *)v12 bannerItem];
    v13 = [(CPSBannerItem *)v11 isManeuverItem];
    MEMORY[0x277D82BD8](v11);
    v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v13)
    {
      v6 = v17;
      v10 = [MEMORY[0x277CBEBC0] URLWithString:{@"maps:/car/instrumentcluster/instructioncard", *&v4}];
      v18[0] = v10;
      v9 = [MEMORY[0x277CBEBC0] URLWithString:@"maps:/car/instrumentcluster/map"];
      v18[1] = v9;
      v8 = [MEMORY[0x277CBEBC0] URLWithString:@"maps:/car/instrumentcluster"];
      v18[2] = v8;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
      [(CPSBannerSource *)v6 sendSuggestUI:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    v5 = [(CPSBannerSource *)v17 delegate];
    [(CPBannerDelegate *)v5 bannerDidAppearWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerDidDisappearWithIdentifier:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = [(CPSBannerSource *)v25 presentedBannerViewController];
  v20 = [(CPSBannerViewController *)v21 bannerItem];
  v19 = [(CPSBannerItem *)v20 identifier];
  v22 = [(NSUUID *)v19 isEqual:location[0]];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  *&v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  if (v22)
  {
    v17 = [(CPSBannerSource *)v25 presentedBannerViewController];
    v16 = [(CPSBannerViewController *)v17 bannerItem];
    v18 = [(CPSBannerItem *)v16 isManeuverItem];
    MEMORY[0x277D82BD8](v16);
    *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    if (v18)
    {
      v12 = v25;
      v15 = [MEMORY[0x277CBEBC0] URLWithString:{@"maps:/car/instrumentcluster/map", v4}];
      v27[0] = v15;
      v14 = [MEMORY[0x277CBEBC0] URLWithString:@"maps:/car/instrumentcluster"];
      v27[1] = v14;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [(CPSBannerSource *)v12 sendSuggestUI:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    v23 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CPSBannerSource *)v25 presentedBannerViewController];
      v10 = [(CPSBannerViewController *)v11 bannerItem];
      v9 = [(CPSBannerItem *)v10 bundleIdentifier];
      __os_log_helper_16_2_2_8_66_8_66(v26, v9, location[0]);
      _os_log_impl(&dword_242FE8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ #banner item (%{public}@) did disappear", v26, 0x16u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }

    objc_storeStrong(&v23, 0);
    [(CPSBannerSource *)v25 setPresentedBannerViewController:0];
  }

  v7 = [(CPSBannerSource *)v25 delegate];
  v8 = objc_opt_respondsToSelector();
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSBannerSource *)v25 delegate];
    [(CPBannerDelegate *)v6 bannerDidDisappearWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

- (void)sendSuggestUI:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSBannerSource *)v8 delegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSBannerSource *)v8 delegate];
    [(CPBannerDelegate *)v4 sendSuggestUI:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_setBannerRateLimitEnabled:(BOOL)a3 bundleIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = self;
  v23 = a2;
  v22 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8 = v22;
  if (v8 == [(CPSBannerSource *)v24 isRateLimited])
  {
    v20 = 1;
  }

  else
  {
    [(CPSBannerSource *)v24 setRateLimited:v22];
    if (v22)
    {
      v17 = CarPlaySupportGeneralLogging();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v25, location);
        _os_log_impl(&dword_242FE8000, v17, v16, "%{public}@ #banner rate limit enabled", v25, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      when = dispatch_time(0, 1000000000);
      v5 = MEMORY[0x277D85CD0];
      v4 = MEMORY[0x277D85CD0];
      queue = v5;
      v9 = MEMORY[0x277D85DD0];
      v10 = -1073741824;
      v11 = 0;
      v12 = __63__CPSBannerSource__setBannerRateLimitEnabled_bundleIdentifier___block_invoke;
      v13 = &unk_278D910D8;
      v14 = MEMORY[0x277D82BE0](v24);
      v15 = MEMORY[0x277D82BE0](location);
      dispatch_after(when, queue, &v9);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v19 = CarPlaySupportGeneralLogging();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v26, location);
        _os_log_impl(&dword_242FE8000, v19, v18, "%{public}@ #banner rate limit disabled", v26, 0xCu);
      }

      objc_storeStrong(&v19, 0);
    }

    v20 = 0;
  }

  objc_storeStrong(&location, 0);
}

void __63__CPSBannerSource__setBannerRateLimitEnabled_bundleIdentifier___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  [*(a1 + 32) _setBannerRateLimitEnabled:0 bundleIdentifier:*(a1 + 40)];
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v3, *(a1 + 40));
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_DEFAULT, "%{public}@ #banner rate limit disabled", v3, 0xCu);
  }

  objc_storeStrong(oslog, 0);
}

- (void)_enqueueBannerItem:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = [(CPSBannerSource *)v53 applicationStateMonitor];
  v37 = [(CPSApplicationStateMonitor *)v36 isApplicationActive];
  *&v3 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  if (v37)
  {
    v51 = CarPlaySupportGeneralLogging();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [location[0] bundleIdentifier];
      v34 = [location[0] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v59, v35, v34);
      _os_log_impl(&dword_242FE8000, v51, v50, "%{public}@ is frontmost, not enqueuing #banner item (%{public}@)", v59, 0x16u);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
    }

    objc_storeStrong(&v51, 0);
LABEL_29:
    v45 = 0;
    goto LABEL_30;
  }

  v49 = 1;
  v33 = [(CPSBannerSource *)v53 presentedBannerViewController];
  *&v4 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  if (!v33)
  {
LABEL_19:
    v16 = [location[0] identifier];
    v15 = [(CPSBannerSource *)v53 lastUserDismissedIdentifier];
    v17 = [v16 isEqual:?];
    MEMORY[0x277D82BD8](v15);
    *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    if (v17)
    {
      v49 = 0;
    }

    if (v49)
    {
      if ([(CPSBannerSource *)v53 isRateLimited])
      {
        v40 = CarPlaySupportGeneralLogging();
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [location[0] bundleIdentifier];
          v13 = [location[0] identifier];
          __os_log_helper_16_2_2_8_66_8_66(v55, v14, v13);
          _os_log_impl(&dword_242FE8000, v40, v39, "%{public}@ is background but rate limited, not enqueuing #banner item (%{public}@)", v55, 0x16u);
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
        }

        objc_storeStrong(&v40, 0);
      }

      else
      {
        v38 = CarPlaySupportGeneralLogging();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [location[0] bundleIdentifier];
          v11 = [location[0] identifier];
          __os_log_helper_16_2_2_8_66_8_66(v54, v12, v11);
          _os_log_impl(&dword_242FE8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ is not frontmost, enqueuing #banner item (%{public}@)", v54, 0x16u);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
        }

        objc_storeStrong(&v38, 0);
        [(CPSBannerSource *)v53 _postBannerRequestForBannerItem:location[0]];
        v9 = v53;
        v10 = [location[0] bundleIdentifier];
        [(CPSBannerSource *)v9 _setBannerRateLimitEnabled:1 bundleIdentifier:?];
        MEMORY[0x277D82BD8](v10);
      }
    }

    goto LABEL_29;
  }

  v27 = objc_opt_class();
  v29 = [(CPSBannerSource *)v53 presentedBannerViewController];
  v28 = [(CPSBannerViewController *)v29 bannerItem];
  v48 = CPSSafeCast_23(v27, v28);
  MEMORY[0x277D82BD8](v28);
  v31 = [v48 identifier];
  v30 = [location[0] identifier];
  v32 = [v31 isEqual:?];
  MEMORY[0x277D82BD8](v30);
  *&v5 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if ((v32 & 1) == 0)
  {
    v42 = CarPlaySupportGeneralLogging();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [location[0] bundleIdentifier];
      v18 = [v48 identifier];
      __os_log_helper_16_2_2_8_66_8_66(v56, v19, v18);
      _os_log_impl(&dword_242FE8000, v42, v41, "%{public}@ is background, revoking presented #banner (%{public}@)", v56, 0x16u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v42, 0);
    [(CPSBannerSource *)v53 _revokePresentedBannerWithReason:@"BannerReplaced"];
    goto LABEL_17;
  }

  if (![(CPSBannerSource *)v53 isRateLimited])
  {
    v49 = 0;
    v22 = [(CPSBannerSource *)v53 presentedBannerViewController];
    [(CPSBannerViewController *)v22 updateBannerWithBannerItem:location[0]];
    *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    v23 = v53;
    v24 = [location[0] bundleIdentifier];
    [(CPSBannerSource *)v23 _setBannerRateLimitEnabled:1 bundleIdentifier:?];
    *&v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    [(CPSBannerSource *)v53 _resetDismissTimer];
    v44 = CarPlaySupportGeneralLogging();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [location[0] bundleIdentifier];
      v20 = [location[0] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v57, v21, v20);
      _os_log_impl(&dword_242FE8000, v44, v43, "%{public}@ is background, #banner item (%{public}@)is being updated", v57, 0x16u);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
    }

    objc_storeStrong(&v44, 0);
LABEL_17:
    v45 = 0;
    goto LABEL_18;
  }

  oslog = CarPlaySupportGeneralLogging();
  v46 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [location[0] bundleIdentifier];
    v25 = [location[0] identifier];
    __os_log_helper_16_2_2_8_66_8_66(v58, v26, v25);
    _os_log_impl(&dword_242FE8000, oslog, v46, "%{public}@ is background but rate limited, not updating #banner item (%{public}@)", v58, 0x16u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
  }

  objc_storeStrong(&oslog, 0);
  v45 = 1;
LABEL_18:
  objc_storeStrong(&v48, 0);
  if (!v45)
  {
    goto LABEL_19;
  }

LABEL_30:
  objc_storeStrong(location, 0);
}

- (void)_postBannerRequestForBannerItem:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  v14 = [(CPSBannerSource *)v31 bannerKitSource];
  v27 = 0;
  v13 = [(BNBannerSource *)v14 layoutDescriptionWithError:&v27];
  objc_storeStrong(&v29, v27);
  v28 = v13;
  MEMORY[0x277D82BD8](v14);
  if (v28)
  {
    v26 = [[CPSBannerViewController alloc] initWithBannerItem:location[0]];
    [v26 setDelegate:v31];
    [v28 presentationSize];
    v22 = v3;
    v23 = v4;
    [v28 containerSize];
    v21[1] = v5;
    v21[2] = v6;
    [v26 preferredContentSizeWithPresentationSize:v22 containerSize:{v23, *&v5, *&v6}];
    v24 = v7;
    v25 = v8;
    [v26 setPreferredContentSize:{v7, v8}];
    [(CPSBannerSource *)v31 setPresentedBannerViewController:v26];
    v21[0] = 0;
    v11 = [(CPSBannerSource *)v31 bannerKitSource];
    v20 = 0;
    v12 = [(BNBannerSource *)v11 postPresentable:v26 options:1 userInfo:0 error:&v20];
    objc_storeStrong(v21, v20);
    MEMORY[0x277D82BD8](v11);
    if (v12)
    {
      v19 = CarPlaySupportGeneralLogging();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [location[0] bundleIdentifier];
        v9 = [location[0] identifier];
        __os_log_helper_16_2_2_8_66_8_66(v34, v10, v9);
        _os_log_impl(&dword_242FE8000, v19, v18, "%{public}@ Posted request for #banner item (%{public}@)", v34, 0x16u);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
      }

      objc_storeStrong(&v19, 0);
      [(CPSBannerSource *)v31 _resetDismissTimer];
    }

    else
    {
      oslog = CarPlaySupportGeneralLogging();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v33, v21[0]);
        _os_log_error_impl(&dword_242FE8000, oslog, v16, "Error attempting to post request for #banner item: %{public}@", v33, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(v21, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v15 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v32, v29);
      _os_log_error_impl(&dword_242FE8000, v15, OS_LOG_TYPE_ERROR, "Error requesting layout description from #banner source: %{public}@", v32, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_revokePresentedBannerWithReason:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  v19 = [(CPSBannerSource *)v22 presentedBannerViewController];
  v18 = CarPlaySupportGeneralLogging();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v19 bannerItem];
    v12 = [v13 bundleIdentifier];
    v11 = [v19 bannerItem];
    v10 = [v11 identifier];
    __os_log_helper_16_2_3_8_66_8_66_8_66(v25, v12, v10, location[0]);
    _os_log_impl(&dword_242FE8000, v18, v17, "%{public}@ Revoking presentable for #banner item (%{public}@) with reason: %{public}@", v25, 0x20u);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  objc_storeStrong(&v18, 0);
  v8 = [(CPSBannerSource *)v22 bannerKitSource];
  v7 = [v19 requestIdentifier];
  v16[1] = 0;
  v9 = [BNBannerSource revokePresentableWithRequestIdentifier:v8 animated:"revokePresentableWithRequestIdentifier:animated:reason:userInfo:error:" reason:? userInfo:? error:?];
  objc_storeStrong(&v20, 0);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v16[0] = CarPlaySupportGeneralLogging();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v19 bannerItem];
      v5 = [v6 bundleIdentifier];
      v4 = [v19 bannerItem];
      v3 = [v4 identifier];
      __os_log_helper_16_2_2_8_66_8_66(v24, v5, v3);
      _os_log_impl(&dword_242FE8000, v16[0], v15, "%{public}@ Revoked presentable for #banner item (%{public}@)", v24, 0x16u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(v16, 0);
  }

  else
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v23, v20);
      _os_log_error_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_ERROR, "Error attempting to revoke presentable for #banner item: %{public}@", v23, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_flushQueue
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v15 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Flushing banner queue", v14, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  v4 = [(CPSBannerSource *)v17 bannerKitSource];
  v12 = 0;
  v5 = [(BNBannerSource *)v4 revokeAllPresentablesWithReason:@"FlushQueue" userInfo:0 error:&v12];
  objc_storeStrong(&v13, v12);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    v11 = CarPlaySupportGeneralLogging();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v11;
      v3 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_242FE8000, v2, v3, "Flushed #banner source", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    v8 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v18, v13);
      _os_log_error_impl(&dword_242FE8000, v8, OS_LOG_TYPE_ERROR, "Error flushing #banner source: %{public}@", v18, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v13, 0);
}

- (void)_resetDismissTimer
{
  v2 = [(CPSBannerSource *)self dimissTimer];
  [(NSTimer *)v2 invalidate];
  MEMORY[0x277D82BD8](v2);
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__dismissTimerFired_ selector:0 userInfo:0 repeats:10.0];
  [(CPSBannerSource *)self setDimissTimer:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_dismissTimerFired:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSBannerSource *)v6 presentedBannerViewController];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v4)
  {
    [(CPSBannerSource *)v6 _revokePresentedBannerWithReason:@"BannerExpired", v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_resetLastUserDismissedIdentifierTimer
{
  v2 = [(CPSBannerSource *)self lastUserDismissedIdentifierResetTimer];
  [(NSTimer *)v2 invalidate];
  MEMORY[0x277D82BD8](v2);
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__resetLastUserDismissedIdentifierTimerFired_ selector:0 userInfo:0 repeats:30.0];
  [(CPSBannerSource *)self setLastUserDismissedIdentifierResetTimer:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_resetLastUserDismissedIdentifierTimerFired:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSBannerSource *)v4 setLastUserDismissedIdentifier:0];
  objc_storeStrong(location, 0);
}

- (CPBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end