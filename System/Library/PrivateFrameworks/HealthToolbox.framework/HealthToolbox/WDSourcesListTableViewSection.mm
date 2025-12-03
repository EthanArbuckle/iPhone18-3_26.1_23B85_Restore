@interface WDSourcesListTableViewSection
+ (id)_clinicalAuthorizationFamilyControllerWithAuthorizationController:(id)controller healthRecordsStore:(id)store source:(id)source readUsageDescription:(id)description;
+ (id)_healthDataAuthorizationFamilyControllerWithHealthStore:(id)store source:(id)source healthAuthorizationViewController:(id)controller;
+ (id)_healthDataAuthorizationViewControllerWithSourceModel:(id)model source:(id)source profile:(id)profile;
+ (id)_medicationAuthorizationFamilyControllerWithSourceModel:(id)model healthStore:(id)store source:(id)source;
+ (void)createDetailViewControllerForSourceModel:(id)model profile:(id)profile completion:(id)completion;
- (id)noneCellForTableView:(id)view;
- (id)noneString;
- (void)createDetailViewControllerForSourceModel:(id)model completion:(id)completion;
- (void)dealloc;
- (void)setSourceListDataSource:(id)source;
@end

@implementation WDSourcesListTableViewSection

- (void)dealloc
{
  [(HKSourceListDataSource *)self->_dataSource unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = WDSourcesListTableViewSection;
  [(WDSourcesListTableViewSection *)&v3 dealloc];
}

- (void)setSourceListDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  v8 = sourceCopy;
  if (dataSource != sourceCopy)
  {
    [(HKSourceListDataSource *)dataSource unregisterObserver:self];
    objc_storeStrong(&self->_dataSource, source);
    [(HKSourceListDataSource *)v8 registerObserver:self];
    sources = [(HKSourceListDataSource *)v8 sources];

    if (sources)
    {
      [(WDSourcesListTableViewSection *)self dataSourceDidUpdate];
    }
  }
}

- (id)noneCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"WDSourcesListTableViewSectionNoSources"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDSourcesListTableViewSectionNoSources"];
  }

  [v4 setAccessoryType:0];
  [v4 setSelectionStyle:0];
  noneString = [(WDSourcesListTableViewSection *)self noneString];
  textLabel = [v4 textLabel];
  [textLabel setText:noneString];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  textLabel2 = [v4 textLabel];
  [textLabel2 setTextColor:secondaryLabelColor];

  v9 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel3 = [v4 textLabel];
  [textLabel3 setFont:v9];

  return v4;
}

- (id)noneString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (void)createDetailViewControllerForSourceModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  delegate = [(WDTableViewSection *)self delegate];
  profile = [delegate profile];

  [objc_opt_class() createDetailViewControllerForSourceModel:modelCopy profile:profile completion:completionCopy];
}

+ (void)createDetailViewControllerForSourceModel:(id)model profile:(id)profile completion:(id)completion
{
  modelCopy = model;
  profileCopy = profile;
  completionCopy = completion;
  source = [modelCopy source];
  if (([source _requiresAuthorization] & 1) == 0)
  {
    v21 = objc_alloc_init(WDSourceStoredDataViewController);
    [(WDSourceStoredDataViewController *)v21 setSource:source];
    [(WDStoredDataByCategoryViewController *)v21 setProfile:profileCopy];
LABEL_6:
    completionCopy[2](completionCopy, v21);

    goto LABEL_7;
  }

  if (([modelCopy installed] & 1) == 0)
  {
    healthStore = [profileCopy healthStore];
    profileIdentifier = [healthStore profileIdentifier];
    type = [profileIdentifier type];

    if (type != 3)
    {
      v21 = [[WDSourceMessageViewController alloc] initWithStyle:1 source:source];
      goto LABEL_6;
    }
  }

  healthStore2 = [profileCopy healthStore];
  healthRecordsStore = [profileCopy healthRecordsStore];
  v17 = [objc_alloc(MEMORY[0x277D127E8]) initWithHealthStore:healthStore2 healthRecordsStore:healthRecordsStore source:source typesRequestedForReading:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__WDSourcesListTableViewSection_createDetailViewControllerForSourceModel_profile_completion___block_invoke;
  v22[3] = &unk_2796E7060;
  v23 = modelCopy;
  v24 = v17;
  selfCopy = self;
  v25 = healthRecordsStore;
  v26 = source;
  v27 = healthStore2;
  v28 = profileCopy;
  v29 = completionCopy;
  v18 = healthStore2;
  v19 = healthRecordsStore;
  v20 = v17;
  [v20 reloadWithCompletion:v22];

LABEL_7:
}

void __93__WDSourcesListTableViewSection_createDetailViewControllerForSourceModel_profile_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) purposeStrings];
  v12 = [v2 objectForKeyedSubscript:*MEMORY[0x277D12748]];

  v3 = [*(a1 + 88) _clinicalAuthorizationFamilyControllerWithAuthorizationController:*(a1 + 40) healthRecordsStore:*(a1 + 48) source:*(a1 + 56) readUsageDescription:v12];
  v4 = [*(a1 + 88) _medicationAuthorizationFamilyControllerWithSourceModel:*(a1 + 32) healthStore:*(a1 + 64) source:*(a1 + 56)];
  v5 = [*(a1 + 88) _healthDataAuthorizationViewControllerWithSourceModel:*(a1 + 32) source:*(a1 + 56) profile:*(a1 + 72)];
  v6 = [*(a1 + 88) _healthDataAuthorizationFamilyControllerWithHealthStore:*(a1 + 64) source:*(a1 + 56) healthAuthorizationViewController:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  [v7 hk_addNonNilObject:v3];
  [v7 hk_addNonNilObject:v4];
  [v7 hk_addNonNilObject:v6];
  if ([v7 count] == 1)
  {
    v8 = *(a1 + 80);
    v9 = [v7 firstObject];
    v10 = [v9 viewController];
    (*(v8 + 16))(v8, v10);

LABEL_5:
    goto LABEL_7;
  }

  if ([v7 count] >= 2)
  {
    v9 = [objc_alloc(MEMORY[0x277D12AB8]) initWithHealthStore:*(a1 + 64) source:*(a1 + 56)];
    v11 = [v7 copy];
    [v9 setFamilyControllers:v11];

    (*(*(a1 + 80) + 16))();
    goto LABEL_5;
  }

  (*(*(a1 + 80) + 16))();
LABEL_7:
}

+ (id)_clinicalAuthorizationFamilyControllerWithAuthorizationController:(id)controller healthRecordsStore:(id)store source:(id)source readUsageDescription:(id)description
{
  controllerCopy = controller;
  storeCopy = store;
  sourceCopy = source;
  descriptionCopy = description;
  if ([controllerCopy anyTypeRequested])
  {
    v13 = objc_alloc(MEMORY[0x277D127D8]);
    healthStore = [controllerCopy healthStore];
    v15 = [v13 initWithHealthStore:healthStore healthRecordsStore:storeCopy authorizationController:controllerCopy readUsageDescription:descriptionCopy source:sourceCopy];

    v16 = [objc_alloc(MEMORY[0x277D127E0]) initWithContext:v15 style:0];
    v17 = objc_alloc_init(MEMORY[0x277D12AB0]);
    [v17 setController:controllerCopy];
    [v17 setViewController:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_healthDataAuthorizationFamilyControllerWithHealthStore:(id)store source:(id)source healthAuthorizationViewController:(id)controller
{
  controllerCopy = controller;
  v8 = MEMORY[0x277D12AA8];
  sourceCopy = source;
  storeCopy = store;
  v11 = [[v8 alloc] initWithHealthStore:storeCopy source:sourceCopy typesForSharing:0 typesForReading:0];

  v12 = 0;
  if ([v11 anyTypeRequested])
  {
    v12 = objc_alloc_init(MEMORY[0x277D12AB0]);
    [v12 setController:v11];
    [v12 setViewController:controllerCopy];
  }

  return v12;
}

+ (id)_healthDataAuthorizationViewControllerWithSourceModel:(id)model source:(id)source profile:(id)profile
{
  profileCopy = profile;
  sourceCopy = source;
  modelCopy = model;
  v10 = [WDAuthorizationSettingsViewController alloc];
  purposeStrings = [modelCopy purposeStrings];
  v12 = [purposeStrings objectForKeyedSubscript:*MEMORY[0x277D12758]];
  purposeStrings2 = [modelCopy purposeStrings];
  v14 = [purposeStrings2 objectForKeyedSubscript:*MEMORY[0x277D12760]];
  purposeStrings3 = [modelCopy purposeStrings];

  v16 = [purposeStrings3 objectForKeyedSubscript:*MEMORY[0x277D12750]];
  v17 = [(WDAuthorizationSettingsViewController *)v10 initWithProfile:profileCopy style:0 source:sourceCopy shareDescription:v12 updateDescription:v14 researchStudyUsageDescription:v16];

  return v17;
}

+ (id)_medicationAuthorizationFamilyControllerWithSourceModel:(id)model healthStore:(id)store source:(id)source
{
  modelCopy = model;
  storeCopy = store;
  sourceCopy = source;
  v10 = [objc_alloc(MEMORY[0x277D12958]) initWithHealthStore:storeCopy source:sourceCopy];
  [v10 reload];
  if ([v10 anyTypeRequested])
  {
    v11 = [objc_alloc(MEMORY[0x277D12960]) initWithController:v10 source:sourceCopy healthStore:storeCopy];
    purposeStrings = [modelCopy purposeStrings];
    v13 = [purposeStrings objectForKeyedSubscript:*MEMORY[0x277D12758]];
    [v11 setShareDescription:v13];

    v14 = objc_alloc_init(MEMORY[0x277D12AB0]);
    [v14 setController:v10];
    [v14 setViewController:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end