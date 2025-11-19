@interface HUNoInternetOnPhoneBannerItemProvider
- (HUNoInternetOnPhoneBannerItemProvider)init;
- (HUNoInternetOnPhoneBannerItemProvider)initWithHome:(id)a3 delegate:(id)a4;
- (HUNoInternetOnPhoneBannerItemProviderDelegate)delegate;
- (id)items;
- (id)reloadItems;
- (void)notifyChangeForNoInternetOnPhone:(BOOL)a3;
- (void)startNetworkDiagnosticsObservationOnPhone;
- (void)stopNetworkDiagnosticsObservationOnPhone;
@end

@implementation HUNoInternetOnPhoneBannerItemProvider

- (void)startNetworkDiagnosticsObservationOnPhone
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = self;
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v7 = sub_20D568518();
  sub_20D565868();

  v8 = sub_20D567C58();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  sub_20CF18C60(0, 0, v5, &unk_20D5C8DF0, v9);
}

- (void)stopNetworkDiagnosticsObservationOnPhone
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = self;
  [(HUNoInternetOnPhoneBannerItemProvider *)v6 notifyChangeForNoInternetOnPhone:0];
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_20CF18960(0, 0, v5, &unk_20D5C8DE0, v8);
}

- (HUNoInternetOnPhoneBannerItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUNoInternetOnPhoneBannerItemProvider.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNoInternetOnPhoneBannerItemProvider init]", v5}];

  return 0;
}

- (HUNoInternetOnPhoneBannerItemProvider)initWithHome:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUNoInternetOnPhoneBannerItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_opt_new();
    [(HUNoInternetOnPhoneBannerItemProvider *)v10 setBannerItems:v11];

    v12 = [MEMORY[0x277D14670] sharedInstance];
    [v12 addObserver:v10];
  }

  return v10;
}

- (id)reloadItems
{
  if (!_os_feature_enabled_impl() || hasInternetOutageOnPhone != 1)
  {
    v7 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    [v7 removeAllObjects];

    v6 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    v5 = 0;
    goto LABEL_6;
  }

  v3 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
    v6 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v12 = [HUNoInternetOnPhoneBannerItem alloc];
  v13 = [(HUNoInternetOnPhoneBannerItemProvider *)self home];
  v14 = [(HUNoInternetOnPhoneBannerItem *)v12 initWithHome:v13];

  v15 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  [v15 addObject:v14];

  v8 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];

  v5 = 0;
  v6 = 0;
LABEL_7:
  v9 = [objc_alloc(MEMORY[0x277D14768]) initWithAddedItems:v8 removedItems:v6 existingItems:v5];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)items
{
  v2 = [(HUNoInternetOnPhoneBannerItemProvider *)self bannerItems];
  v3 = [v2 copy];

  return v3;
}

- (void)notifyChangeForNoInternetOnPhone:(BOOL)a3
{
  hasInternetOutageOnPhone = a3;
  v4 = [(HUNoInternetOnPhoneBannerItemProvider *)self delegate];
  v5 = [v4 conformsToProtocol:&unk_282542B08];

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