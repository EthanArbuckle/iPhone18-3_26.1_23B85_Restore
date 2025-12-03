@interface WDElectrocardiogramReportDataSource
- (WDElectrocardiogramReportDataSource)initWithSample:(id)sample healthStore:(id)store activeAlgorithmVersion:(int64_t)version;
- (void)_fetchDemographicInformation;
@end

@implementation WDElectrocardiogramReportDataSource

- (WDElectrocardiogramReportDataSource)initWithSample:(id)sample healthStore:(id)store activeAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = WDElectrocardiogramReportDataSource;
  v11 = [(WDElectrocardiogramReportDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sample, sample);
    objc_storeStrong(&v12->_healthStore, store);
    v13 = HKHealthTintColor();
    tintColor = v12->_tintColor;
    v12->_tintColor = v13;

    v12->_activeAlgorithmVersion = version;
    [(WDElectrocardiogramReportDataSource *)v12 _fetchDemographicInformation];
  }

  return v12;
}

- (void)_fetchDemographicInformation
{
  objc_initWeak(&location, self);
  healthStore = [(WDElectrocardiogramReportDataSource *)self healthStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__WDElectrocardiogramReportDataSource__fetchDemographicInformation__block_invoke;
  v4[3] = &unk_2796E6F50;
  objc_copyWeak(&v5, &location);
  [healthStore hk_fetchExistingDemographicInformationWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__WDElectrocardiogramReportDataSource__fetchDemographicInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstName];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFirstName:v4];

  v6 = [v3 lastName];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setLastName:v6];

  v9 = [v3 dateOfBirthComponents];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setDateOfBirthComponents:v9];
}

@end