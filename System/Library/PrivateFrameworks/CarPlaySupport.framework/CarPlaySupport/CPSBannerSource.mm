@interface CPSBannerSource
- (CPBannerDelegate)delegate;
- (CPSBannerSource)initWithBundleIdentifier:(id)identifier delegate:(id)delegate applicationStateMonitor:(id)monitor;
- (void)_dismissTimerFired:(id)fired;
- (void)_enqueueBannerItem:(id)item;
- (void)_flushQueue;
- (void)_postBannerRequestForBannerItem:(id)item;
- (void)_resetDismissTimer;
- (void)_resetLastUserDismissedIdentifierTimer;
- (void)_resetLastUserDismissedIdentifierTimerFired:(id)fired;
- (void)_revokePresentedBannerWithReason:(id)reason;
- (void)_setBannerRateLimitEnabled:(BOOL)enabled bundleIdentifier:(id)identifier;
- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active;
- (void)bannerViewController:(id)controller requestsDismissalWithReason:(id)reason;
- (void)bannerViewControllerDidAppearWithIdentifier:(id)identifier;
- (void)bannerViewControllerDidDisappearWithIdentifier:(id)identifier;
- (void)bannerViewControllerTappedWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)postBannerForManeuver:(id)maneuver travelEstimates:(id)estimates;
- (void)postBannerForNavigationAlert:(id)alert;
- (void)sendSuggestUI:(id)i;
- (void)setActive:(BOOL)active;
@end

@implementation CPSBannerSource

- (CPSBannerSource)initWithBundleIdentifier:(id)identifier delegate:(id)delegate applicationStateMonitor:(id)monitor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v18 = 0;
  objc_storeStrong(&v18, monitor);
  v5 = selfCopy;
  selfCopy = 0;
  v17.receiver = v5;
  v17.super_class = CPSBannerSource;
  selfCopy = [(CPSBannerSource *)&v17 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_delegate, v19);
    objc_storeStrong(&selfCopy->_applicationStateMonitor, v18);
    [(CPSApplicationStateMonitor *)selfCopy->_applicationStateMonitor addApplicationStateObserver:selfCopy];
    v6 = [location[0] copy];
    bundleIdentifier = selfCopy->_bundleIdentifier;
    selfCopy->_bundleIdentifier = v6;
    MEMORY[0x277D82BD8](bundleIdentifier);
    v16 = CPSRequesterIdentifierForBundleIdentifier(selfCopy->_bundleIdentifier);
    v8 = [MEMORY[0x277CF0A80] bannerSourceForDestination:1 forRequesterIdentifier:v16];
    bannerKitSource = selfCopy->_bannerKitSource;
    selfCopy->_bannerKitSource = v8;
    *&v10 = MEMORY[0x277D82BD8](bannerKitSource).n128_u64[0];
    isApplicationActive = [v18 isApplicationActive];
    selfCopy->_active = isApplicationActive;
    objc_storeStrong(&v16, 0);
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(CPSBannerSource *)self _flushQueue];
    }
  }
}

- (void)invalidate
{
  bannerKitSource = [(CPSBannerSource *)self bannerKitSource];
  [(BNBannerSource *)bannerKitSource invalidate];
  MEMORY[0x277D82BD8](bannerKitSource);
}

- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  activeCopy = active;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __59__CPSBannerSource_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D91CA8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = activeCopy;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)postBannerForManeuver:(id)maneuver travelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v16 = 0;
  objc_storeStrong(&v16, estimates);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__CPSBannerSource_postBannerForManeuver_travelEstimates___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)postBannerForNavigationAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__CPSBannerSource_postBannerForNavigationAlert___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)bannerViewController:(id)controller requestsDismissalWithReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, reason);
  presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  v6 = location[0];
  *&v4 = MEMORY[0x277D82BD8](presentedBannerViewController).n128_u64[0];
  if (presentedBannerViewController == v6)
  {
    [(CPSBannerSource *)selfCopy _revokePresentedBannerWithReason:v8, v4];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerTappedWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  delegate = [(CPSBannerSource *)selfCopy delegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v6)
  {
    delegate2 = [(CPSBannerSource *)selfCopy delegate];
    [(CPBannerDelegate *)delegate2 bannerTappedWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerDidAppearWithIdentifier:(id)identifier
{
  v18[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  delegate = [(CPSBannerSource *)selfCopy delegate];
  v15 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v15)
  {
    presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
    bannerItem = [(CPSBannerViewController *)presentedBannerViewController bannerItem];
    isManeuverItem = [(CPSBannerItem *)bannerItem isManeuverItem];
    MEMORY[0x277D82BD8](bannerItem);
    v4 = MEMORY[0x277D82BD8](presentedBannerViewController).n128_u64[0];
    if (isManeuverItem)
    {
      v6 = selfCopy;
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

    delegate2 = [(CPSBannerSource *)selfCopy delegate];
    [(CPBannerDelegate *)delegate2 bannerDidAppearWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)bannerViewControllerDidDisappearWithIdentifier:(id)identifier
{
  v27[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  bannerItem = [(CPSBannerViewController *)presentedBannerViewController bannerItem];
  identifier = [(CPSBannerItem *)bannerItem identifier];
  v22 = [(NSUUID *)identifier isEqual:location[0]];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](bannerItem);
  *&v3 = MEMORY[0x277D82BD8](presentedBannerViewController).n128_u64[0];
  if (v22)
  {
    presentedBannerViewController2 = [(CPSBannerSource *)selfCopy presentedBannerViewController];
    bannerItem2 = [(CPSBannerViewController *)presentedBannerViewController2 bannerItem];
    isManeuverItem = [(CPSBannerItem *)bannerItem2 isManeuverItem];
    MEMORY[0x277D82BD8](bannerItem2);
    *&v4 = MEMORY[0x277D82BD8](presentedBannerViewController2).n128_u64[0];
    if (isManeuverItem)
    {
      v12 = selfCopy;
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
      presentedBannerViewController3 = [(CPSBannerSource *)selfCopy presentedBannerViewController];
      bannerItem3 = [(CPSBannerViewController *)presentedBannerViewController3 bannerItem];
      bundleIdentifier = [(CPSBannerItem *)bannerItem3 bundleIdentifier];
      __os_log_helper_16_2_2_8_66_8_66(v26, bundleIdentifier, location[0]);
      _os_log_impl(&dword_242FE8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ #banner item (%{public}@) did disappear", v26, 0x16u);
      MEMORY[0x277D82BD8](bundleIdentifier);
      MEMORY[0x277D82BD8](bannerItem3);
      MEMORY[0x277D82BD8](presentedBannerViewController3);
    }

    objc_storeStrong(&v23, 0);
    [(CPSBannerSource *)selfCopy setPresentedBannerViewController:0];
  }

  delegate = [(CPSBannerSource *)selfCopy delegate];
  v8 = objc_opt_respondsToSelector();
  *&v5 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v8)
  {
    delegate2 = [(CPSBannerSource *)selfCopy delegate];
    [(CPBannerDelegate *)delegate2 bannerDidDisappearWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)sendSuggestUI:(id)i
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  delegate = [(CPSBannerSource *)selfCopy delegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v6)
  {
    delegate2 = [(CPSBannerSource *)selfCopy delegate];
    [(CPBannerDelegate *)delegate2 sendSuggestUI:location[0]];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)_setBannerRateLimitEnabled:(BOOL)enabled bundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v23 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, identifier);
  v8 = enabledCopy;
  if (v8 == [(CPSBannerSource *)selfCopy isRateLimited])
  {
    v20 = 1;
  }

  else
  {
    [(CPSBannerSource *)selfCopy setRateLimited:enabledCopy];
    if (enabledCopy)
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
      v14 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_enqueueBannerItem:(id)item
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  applicationStateMonitor = [(CPSBannerSource *)selfCopy applicationStateMonitor];
  isApplicationActive = [(CPSApplicationStateMonitor *)applicationStateMonitor isApplicationActive];
  *&v3 = MEMORY[0x277D82BD8](applicationStateMonitor).n128_u64[0];
  if (isApplicationActive)
  {
    v51 = CarPlaySupportGeneralLogging();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [location[0] bundleIdentifier];
      identifier = [location[0] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v59, bundleIdentifier, identifier);
      _os_log_impl(&dword_242FE8000, v51, v50, "%{public}@ is frontmost, not enqueuing #banner item (%{public}@)", v59, 0x16u);
      MEMORY[0x277D82BD8](identifier);
      MEMORY[0x277D82BD8](bundleIdentifier);
    }

    objc_storeStrong(&v51, 0);
LABEL_29:
    v45 = 0;
    goto LABEL_30;
  }

  v49 = 1;
  presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  *&v4 = MEMORY[0x277D82BD8](presentedBannerViewController).n128_u64[0];
  if (!presentedBannerViewController)
  {
LABEL_19:
    identifier2 = [location[0] identifier];
    lastUserDismissedIdentifier = [(CPSBannerSource *)selfCopy lastUserDismissedIdentifier];
    v17 = [identifier2 isEqual:?];
    MEMORY[0x277D82BD8](lastUserDismissedIdentifier);
    *&v8 = MEMORY[0x277D82BD8](identifier2).n128_u64[0];
    if (v17)
    {
      v49 = 0;
    }

    if (v49)
    {
      if ([(CPSBannerSource *)selfCopy isRateLimited])
      {
        v40 = CarPlaySupportGeneralLogging();
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [location[0] bundleIdentifier];
          identifier3 = [location[0] identifier];
          __os_log_helper_16_2_2_8_66_8_66(v55, bundleIdentifier2, identifier3);
          _os_log_impl(&dword_242FE8000, v40, v39, "%{public}@ is background but rate limited, not enqueuing #banner item (%{public}@)", v55, 0x16u);
          MEMORY[0x277D82BD8](identifier3);
          MEMORY[0x277D82BD8](bundleIdentifier2);
        }

        objc_storeStrong(&v40, 0);
      }

      else
      {
        v38 = CarPlaySupportGeneralLogging();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier3 = [location[0] bundleIdentifier];
          identifier4 = [location[0] identifier];
          __os_log_helper_16_2_2_8_66_8_66(v54, bundleIdentifier3, identifier4);
          _os_log_impl(&dword_242FE8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ is not frontmost, enqueuing #banner item (%{public}@)", v54, 0x16u);
          MEMORY[0x277D82BD8](identifier4);
          MEMORY[0x277D82BD8](bundleIdentifier3);
        }

        objc_storeStrong(&v38, 0);
        [(CPSBannerSource *)selfCopy _postBannerRequestForBannerItem:location[0]];
        v9 = selfCopy;
        bundleIdentifier4 = [location[0] bundleIdentifier];
        [(CPSBannerSource *)v9 _setBannerRateLimitEnabled:1 bundleIdentifier:?];
        MEMORY[0x277D82BD8](bundleIdentifier4);
      }
    }

    goto LABEL_29;
  }

  v27 = objc_opt_class();
  presentedBannerViewController2 = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  bannerItem = [(CPSBannerViewController *)presentedBannerViewController2 bannerItem];
  v48 = CPSSafeCast_23(v27, bannerItem);
  MEMORY[0x277D82BD8](bannerItem);
  identifier5 = [v48 identifier];
  identifier6 = [location[0] identifier];
  v32 = [identifier5 isEqual:?];
  MEMORY[0x277D82BD8](identifier6);
  *&v5 = MEMORY[0x277D82BD8](identifier5).n128_u64[0];
  if ((v32 & 1) == 0)
  {
    v42 = CarPlaySupportGeneralLogging();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier5 = [location[0] bundleIdentifier];
      identifier7 = [v48 identifier];
      __os_log_helper_16_2_2_8_66_8_66(v56, bundleIdentifier5, identifier7);
      _os_log_impl(&dword_242FE8000, v42, v41, "%{public}@ is background, revoking presented #banner (%{public}@)", v56, 0x16u);
      MEMORY[0x277D82BD8](identifier7);
      MEMORY[0x277D82BD8](bundleIdentifier5);
    }

    objc_storeStrong(&v42, 0);
    [(CPSBannerSource *)selfCopy _revokePresentedBannerWithReason:@"BannerReplaced"];
    goto LABEL_17;
  }

  if (![(CPSBannerSource *)selfCopy isRateLimited])
  {
    v49 = 0;
    presentedBannerViewController3 = [(CPSBannerSource *)selfCopy presentedBannerViewController];
    [(CPSBannerViewController *)presentedBannerViewController3 updateBannerWithBannerItem:location[0]];
    *&v6 = MEMORY[0x277D82BD8](presentedBannerViewController3).n128_u64[0];
    v23 = selfCopy;
    bundleIdentifier6 = [location[0] bundleIdentifier];
    [(CPSBannerSource *)v23 _setBannerRateLimitEnabled:1 bundleIdentifier:?];
    *&v7 = MEMORY[0x277D82BD8](bundleIdentifier6).n128_u64[0];
    [(CPSBannerSource *)selfCopy _resetDismissTimer];
    v44 = CarPlaySupportGeneralLogging();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier7 = [location[0] bundleIdentifier];
      identifier8 = [location[0] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v57, bundleIdentifier7, identifier8);
      _os_log_impl(&dword_242FE8000, v44, v43, "%{public}@ is background, #banner item (%{public}@)is being updated", v57, 0x16u);
      MEMORY[0x277D82BD8](identifier8);
      MEMORY[0x277D82BD8](bundleIdentifier7);
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
    bundleIdentifier8 = [location[0] bundleIdentifier];
    identifier9 = [location[0] identifier];
    __os_log_helper_16_2_2_8_66_8_66(v58, bundleIdentifier8, identifier9);
    _os_log_impl(&dword_242FE8000, oslog, v46, "%{public}@ is background but rate limited, not updating #banner item (%{public}@)", v58, 0x16u);
    MEMORY[0x277D82BD8](identifier9);
    MEMORY[0x277D82BD8](bundleIdentifier8);
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

- (void)_postBannerRequestForBannerItem:(id)item
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v29 = 0;
  bannerKitSource = [(CPSBannerSource *)selfCopy bannerKitSource];
  v27 = 0;
  v13 = [(BNBannerSource *)bannerKitSource layoutDescriptionWithError:&v27];
  objc_storeStrong(&v29, v27);
  v28 = v13;
  MEMORY[0x277D82BD8](bannerKitSource);
  if (v28)
  {
    v26 = [[CPSBannerViewController alloc] initWithBannerItem:location[0]];
    [v26 setDelegate:selfCopy];
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
    [(CPSBannerSource *)selfCopy setPresentedBannerViewController:v26];
    v21[0] = 0;
    bannerKitSource2 = [(CPSBannerSource *)selfCopy bannerKitSource];
    v20 = 0;
    v12 = [(BNBannerSource *)bannerKitSource2 postPresentable:v26 options:1 userInfo:0 error:&v20];
    objc_storeStrong(v21, v20);
    MEMORY[0x277D82BD8](bannerKitSource2);
    if (v12)
    {
      v19 = CarPlaySupportGeneralLogging();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [location[0] bundleIdentifier];
        identifier = [location[0] identifier];
        __os_log_helper_16_2_2_8_66_8_66(v34, bundleIdentifier, identifier);
        _os_log_impl(&dword_242FE8000, v19, v18, "%{public}@ Posted request for #banner item (%{public}@)", v34, 0x16u);
        MEMORY[0x277D82BD8](identifier);
        MEMORY[0x277D82BD8](bundleIdentifier);
      }

      objc_storeStrong(&v19, 0);
      [(CPSBannerSource *)selfCopy _resetDismissTimer];
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

- (void)_revokePresentedBannerWithReason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v20 = 0;
  presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  v18 = CarPlaySupportGeneralLogging();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    bannerItem = [presentedBannerViewController bannerItem];
    bundleIdentifier = [bannerItem bundleIdentifier];
    bannerItem2 = [presentedBannerViewController bannerItem];
    identifier = [bannerItem2 identifier];
    __os_log_helper_16_2_3_8_66_8_66_8_66(v25, bundleIdentifier, identifier, location[0]);
    _os_log_impl(&dword_242FE8000, v18, v17, "%{public}@ Revoking presentable for #banner item (%{public}@) with reason: %{public}@", v25, 0x20u);
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](bannerItem2);
    MEMORY[0x277D82BD8](bundleIdentifier);
    MEMORY[0x277D82BD8](bannerItem);
  }

  objc_storeStrong(&v18, 0);
  bannerKitSource = [(CPSBannerSource *)selfCopy bannerKitSource];
  requestIdentifier = [presentedBannerViewController requestIdentifier];
  v16[1] = 0;
  v9 = [BNBannerSource revokePresentableWithRequestIdentifier:bannerKitSource animated:"revokePresentableWithRequestIdentifier:animated:reason:userInfo:error:" reason:? userInfo:? error:?];
  objc_storeStrong(&v20, 0);
  MEMORY[0x277D82BD8](requestIdentifier);
  MEMORY[0x277D82BD8](bannerKitSource);
  if (v9)
  {
    v16[0] = CarPlaySupportGeneralLogging();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
    {
      bannerItem3 = [presentedBannerViewController bannerItem];
      bundleIdentifier2 = [bannerItem3 bundleIdentifier];
      bannerItem4 = [presentedBannerViewController bannerItem];
      identifier2 = [bannerItem4 identifier];
      __os_log_helper_16_2_2_8_66_8_66(v24, bundleIdentifier2, identifier2);
      _os_log_impl(&dword_242FE8000, v16[0], v15, "%{public}@ Revoked presentable for #banner item (%{public}@)", v24, 0x16u);
      MEMORY[0x277D82BD8](identifier2);
      MEMORY[0x277D82BD8](bannerItem4);
      MEMORY[0x277D82BD8](bundleIdentifier2);
      MEMORY[0x277D82BD8](bannerItem3);
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

  objc_storeStrong(&presentedBannerViewController, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_flushQueue
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
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
  bannerKitSource = [(CPSBannerSource *)selfCopy bannerKitSource];
  v12 = 0;
  v5 = [(BNBannerSource *)bannerKitSource revokeAllPresentablesWithReason:@"FlushQueue" userInfo:0 error:&v12];
  objc_storeStrong(&v13, v12);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](bannerKitSource);
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
  dimissTimer = [(CPSBannerSource *)self dimissTimer];
  [(NSTimer *)dimissTimer invalidate];
  MEMORY[0x277D82BD8](dimissTimer);
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__dismissTimerFired_ selector:0 userInfo:0 repeats:10.0];
  [(CPSBannerSource *)self setDimissTimer:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_dismissTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  presentedBannerViewController = [(CPSBannerSource *)selfCopy presentedBannerViewController];
  *&v3 = MEMORY[0x277D82BD8](presentedBannerViewController).n128_u64[0];
  if (presentedBannerViewController)
  {
    [(CPSBannerSource *)selfCopy _revokePresentedBannerWithReason:@"BannerExpired", v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_resetLastUserDismissedIdentifierTimer
{
  lastUserDismissedIdentifierResetTimer = [(CPSBannerSource *)self lastUserDismissedIdentifierResetTimer];
  [(NSTimer *)lastUserDismissedIdentifierResetTimer invalidate];
  MEMORY[0x277D82BD8](lastUserDismissedIdentifierResetTimer);
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__resetLastUserDismissedIdentifierTimerFired_ selector:0 userInfo:0 repeats:30.0];
  [(CPSBannerSource *)self setLastUserDismissedIdentifierResetTimer:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_resetLastUserDismissedIdentifierTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  [(CPSBannerSource *)selfCopy setLastUserDismissedIdentifier:0];
  objc_storeStrong(location, 0);
}

- (CPBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end