@interface WDSourcesListTableViewSection
+ (id)_clinicalAuthorizationFamilyControllerWithAuthorizationController:(id)a3 healthRecordsStore:(id)a4 source:(id)a5 readUsageDescription:(id)a6;
+ (id)_healthDataAuthorizationFamilyControllerWithHealthStore:(id)a3 source:(id)a4 healthAuthorizationViewController:(id)a5;
+ (id)_healthDataAuthorizationViewControllerWithSourceModel:(id)a3 source:(id)a4 profile:(id)a5;
+ (id)_medicationAuthorizationFamilyControllerWithSourceModel:(id)a3 healthStore:(id)a4 source:(id)a5;
+ (void)createDetailViewControllerForSourceModel:(id)a3 profile:(id)a4 completion:(id)a5;
- (id)noneCellForTableView:(id)a3;
- (id)noneString;
- (void)createDetailViewControllerForSourceModel:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)setSourceListDataSource:(id)a3;
@end

@implementation WDSourcesListTableViewSection

- (void)dealloc
{
  [(HKSourceListDataSource *)self->_dataSource unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = WDSourcesListTableViewSection;
  [(WDSourcesListTableViewSection *)&v3 dealloc];
}

- (void)setSourceListDataSource:(id)a3
{
  v5 = a3;
  dataSource = self->_dataSource;
  v8 = v5;
  if (dataSource != v5)
  {
    [(HKSourceListDataSource *)dataSource unregisterObserver:self];
    objc_storeStrong(&self->_dataSource, a3);
    [(HKSourceListDataSource *)v8 registerObserver:self];
    v7 = [(HKSourceListDataSource *)v8 sources];

    if (v7)
    {
      [(WDSourcesListTableViewSection *)self dataSourceDidUpdate];
    }
  }
}

- (id)noneCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"WDSourcesListTableViewSectionNoSources"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDSourcesListTableViewSectionNoSources"];
  }

  [v4 setAccessoryType:0];
  [v4 setSelectionStyle:0];
  v5 = [(WDSourcesListTableViewSection *)self noneString];
  v6 = [v4 textLabel];
  [v6 setText:v5];

  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  v8 = [v4 textLabel];
  [v8 setTextColor:v7];

  v9 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v10 = [v4 textLabel];
  [v10 setFont:v9];

  return v4;
}

- (id)noneString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (void)createDetailViewControllerForSourceModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDTableViewSection *)self delegate];
  v9 = [v8 profile];

  [objc_opt_class() createDetailViewControllerForSourceModel:v7 profile:v9 completion:v6];
}

+ (void)createDetailViewControllerForSourceModel:(id)a3 profile:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 source];
  if (([v11 _requiresAuthorization] & 1) == 0)
  {
    v21 = objc_alloc_init(WDSourceStoredDataViewController);
    [(WDSourceStoredDataViewController *)v21 setSource:v11];
    [(WDStoredDataByCategoryViewController *)v21 setProfile:v9];
LABEL_6:
    v10[2](v10, v21);

    goto LABEL_7;
  }

  if (([v8 installed] & 1) == 0)
  {
    v12 = [v9 healthStore];
    v13 = [v12 profileIdentifier];
    v14 = [v13 type];

    if (v14 != 3)
    {
      v21 = [[WDSourceMessageViewController alloc] initWithStyle:1 source:v11];
      goto LABEL_6;
    }
  }

  v15 = [v9 healthStore];
  v16 = [v9 healthRecordsStore];
  v17 = [objc_alloc(MEMORY[0x277D127E8]) initWithHealthStore:v15 healthRecordsStore:v16 source:v11 typesRequestedForReading:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__WDSourcesListTableViewSection_createDetailViewControllerForSourceModel_profile_completion___block_invoke;
  v22[3] = &unk_2796E7060;
  v23 = v8;
  v24 = v17;
  v30 = a1;
  v25 = v16;
  v26 = v11;
  v27 = v15;
  v28 = v9;
  v29 = v10;
  v18 = v15;
  v19 = v16;
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

+ (id)_clinicalAuthorizationFamilyControllerWithAuthorizationController:(id)a3 healthRecordsStore:(id)a4 source:(id)a5 readUsageDescription:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 anyTypeRequested])
  {
    v13 = objc_alloc(MEMORY[0x277D127D8]);
    v14 = [v9 healthStore];
    v15 = [v13 initWithHealthStore:v14 healthRecordsStore:v10 authorizationController:v9 readUsageDescription:v12 source:v11];

    v16 = [objc_alloc(MEMORY[0x277D127E0]) initWithContext:v15 style:0];
    v17 = objc_alloc_init(MEMORY[0x277D12AB0]);
    [v17 setController:v9];
    [v17 setViewController:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_healthDataAuthorizationFamilyControllerWithHealthStore:(id)a3 source:(id)a4 healthAuthorizationViewController:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277D12AA8];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithHealthStore:v10 source:v9 typesForSharing:0 typesForReading:0];

  v12 = 0;
  if ([v11 anyTypeRequested])
  {
    v12 = objc_alloc_init(MEMORY[0x277D12AB0]);
    [v12 setController:v11];
    [v12 setViewController:v7];
  }

  return v12;
}

+ (id)_healthDataAuthorizationViewControllerWithSourceModel:(id)a3 source:(id)a4 profile:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [WDAuthorizationSettingsViewController alloc];
  v11 = [v9 purposeStrings];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D12758]];
  v13 = [v9 purposeStrings];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D12760]];
  v15 = [v9 purposeStrings];

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D12750]];
  v17 = [(WDAuthorizationSettingsViewController *)v10 initWithProfile:v7 style:0 source:v8 shareDescription:v12 updateDescription:v14 researchStudyUsageDescription:v16];

  return v17;
}

+ (id)_medicationAuthorizationFamilyControllerWithSourceModel:(id)a3 healthStore:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277D12958]) initWithHealthStore:v8 source:v9];
  [v10 reload];
  if ([v10 anyTypeRequested])
  {
    v11 = [objc_alloc(MEMORY[0x277D12960]) initWithController:v10 source:v9 healthStore:v8];
    v12 = [v7 purposeStrings];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D12758]];
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