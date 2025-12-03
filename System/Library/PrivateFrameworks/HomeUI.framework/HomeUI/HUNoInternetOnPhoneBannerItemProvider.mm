@interface HUNoInternetOnPhoneBannerItemProvider
- (HUNoInternetOnPhoneBannerItemProvider)init;
- (HUNoInternetOnPhoneBannerItemProvider)initWithHome:(id)home delegate:(id)delegate;
- (HUNoInternetOnPhoneBannerItemProviderDelegate)delegate;
- (id)items;
- (id)reloadItems;
- (void)notifyChangeForNoInternetOnPhone:(BOOL)phone;
- (void)startNetworkDiagnosticsObservationOnPhone;
- (void)stopNetworkDiagnosticsObservationOnPhone;
@end

@implementation HUNoInternetOnPhoneBannerItemProvider

- (void)startNetworkDiagnosticsObservationOnPhone
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v7 = sub_20D568518();
  sub_20D565868();

  v8 = sub_20D567C58();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = selfCopy;
  sub_20CF18C60(0, 0, v5, &unk_20D5C8DF0, v9);
}

- (void)stopNetworkDiagnosticsObservationOnPhone
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  selfCopy = self;
  [(HUNoInternetOnPhoneBannerItemProvider *)selfCopy notifyChangeForNoInternetOnPhone:0];
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_20CF18960(0, 0, v5, &unk_20D5C8DE0, v8);
}

- (HUNoInternetOnPhoneBannerItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNoInternetOnPhoneBannerItemProvider.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNoInternetOnPhoneBannerItemProvider init]", v5}];

  return 0;
}

- (HUNoInternetOnPhoneBannerItemProvider)initWithHome:(id)home delegate:(id)delegate
{
  homeCopy = home;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HUNoInternetOnPhoneBannerItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_opt_new();
    [(HUNoInternetOnPhoneBannerItemProvider *)v10 setBannerItems:v11];

    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    [mEMORY[0x277D14670] addObserver:v10];
  }

  return v10;
}

- (id)reloadItems
{
  if (!_os_feature_enabled_impl() || hasInternetOutageOnPhone != 1)
  {
    bannerItems = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    [bannerItems removeAllObjects];

    bannerItems2 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    bannerItems4 = 0;
    goto LABEL_6;
  }

  bannerItems3 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  v4 = [bannerItems3 count];

  if (v4)
  {
    bannerItems4 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    bannerItems2 = 0;
LABEL_6:
    bannerItems6 = 0;
    goto LABEL_7;
  }

  v12 = [HUNoInternetOnPhoneBannerItem alloc];
  home = [(HUNoInternetOnPhoneBannerItemProvider *)self home];
  v14 = [(HUNoInternetOnPhoneBannerItem *)v12 initWithHome:home];

  bannerItems5 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  [bannerItems5 addObject:v14];

  bannerItems6 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];

  bannerItems4 = 0;
  bannerItems2 = 0;
LABEL_7:
  v9 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:bannerItems6 removedItems:bannerItems2 existingItems:bannerItems4];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)items
{
  bannerItems = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  v3 = [bannerItems copy];

  return v3;
}

- (void)notifyChangeForNoInternetOnPhone:(BOOL)phone
{
  hasInternetOutageOnPhone = phone;
  delegate = [(HUNoInternetOnPhoneBannerItemProvider *)self delegate];
  v5 = [delegate conformsToProtocol:&unk_282542B08];

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HUNoInternetOnPhoneBannerItemProvider_notifyChangeForNoInternetOnPhone___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __74__HUNoInternetOnPhoneBannerItemProvider_notifyChangeForNoInternetOnPhone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdateNoInternetOnPhoneStatus:*(a1 + 32)];
}

- (HUNoInternetOnPhoneBannerItemProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end