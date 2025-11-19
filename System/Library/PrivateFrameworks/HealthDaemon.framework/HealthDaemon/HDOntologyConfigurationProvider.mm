@interface HDOntologyConfigurationProvider
- (BOOL)isCountryCodeSupported:(id)a3;
- (BOOL)isCountrySupported:(id)a3;
- (HDOntologyConfigurationProvider)init;
- (HDProfile)profile;
- (NSSet)allSupportedCountryCodes;
- (NSSet)improveHealthRecordsGatedAnalyticsEnabledCountryCodes;
- (NSSet)optInDataCollectionEnabledCountryCodes;
- (id)ontologyConfigurationForCountryCode:(id)a3;
- (void)ontologyConfiguration;
@end

@implementation HDOntologyConfigurationProvider

- (HDOntologyConfigurationProvider)init
{
  v6.receiver = self;
  v6.super_class = HDOntologyConfigurationProvider;
  v2 = [(HDOntologyConfigurationProvider *)&v6 init];
  if (v2)
  {
    v3 = +[HDHealthOntologyConfiguration bundledHealthOntologyConfiguration];
    ontologyConfiguration = v2->_ontologyConfiguration;
    v2->_ontologyConfiguration = v3;
  }

  return v2;
}

- (void)ontologyConfiguration
{
  if (a1)
  {
    v2 = a1[3];
    if (!v2)
    {
      v2 = a1[1];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isCountrySupported:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 countryCode];

  if (v5)
  {
    v6 = [v4 countryCode];
    v7 = [(HDOntologyConfigurationProvider *)self isCountryCodeSupported:v6];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: passing a locale without country code (%{public}@) to isCountrySupported:, will return NO", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isCountryCodeSupported:(id)a3
{
  v3 = [(HDOntologyConfigurationProvider *)self ontologyConfigurationForCountryCode:a3];
  v4 = v3 != 0;

  return v4;
}

- (NSSet)allSupportedCountryCodes
{
  v2 = [(HDOntologyConfigurationProvider *)self ontologyConfiguration];
  v3 = [v2 allCountryConfigurations];
  v4 = [v3 hk_mapToSet:&__block_literal_global_136];

  return v4;
}

- (NSSet)improveHealthRecordsGatedAnalyticsEnabledCountryCodes
{
  v2 = [(HDOntologyConfigurationProvider *)self ontologyConfiguration];
  v3 = [v2 allCountryConfigurations];
  v4 = [v3 hk_mapToSet:&__block_literal_global_294];

  return v4;
}

id __88__HDOntologyConfigurationProvider_improveHealthRecordsGatedAnalyticsEnabledCountryCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 analyticsOptions])
  {
    v3 = [v2 countryCode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)optInDataCollectionEnabledCountryCodes
{
  v2 = [(HDOntologyConfigurationProvider *)self ontologyConfiguration];
  v3 = [v2 allCountryConfigurations];
  v4 = [v3 hk_mapToSet:&__block_literal_global_296_0];

  return v4;
}

id __73__HDOntologyConfigurationProvider_optInDataCollectionEnabledCountryCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 analyticsOptions] & 2) != 0)
  {
    v3 = [v2 countryCode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ontologyConfigurationForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(HDOntologyConfigurationProvider *)self ontologyConfiguration];
  v6 = [v5 configurationForCountryCode:v4];

  return v6;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end