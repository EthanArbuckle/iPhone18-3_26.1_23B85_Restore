@interface HKOnboardingUIErrorAnalyticsEvent
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 errorCategory:(id)a7 errorDetail:(id)a8 OTAFactorPackID:(id)a9;
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 onboardingEligibility:(id)a7;
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 onboardingIneligibilityReasons:(unint64_t)a7;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKOnboardingUIErrorAnalyticsEvent

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 onboardingEligibility:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingEligibility();
  v18 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingEligibility();

  v19 = HKOTAFactorPackID();
  v20 = [(HKOnboardingUIErrorAnalyticsEvent *)self initWithFeatureIdentifier:v16 featureVersion:v15 countryCode:v14 step:v13 errorCategory:v17 errorDetail:v18 OTAFactorPackID:v19];

  return v20;
}

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 onboardingIneligibilityReasons:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingIneligibilityReasons();
  v16 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons();
  v17 = HKOTAFactorPackID();
  v18 = [(HKOnboardingUIErrorAnalyticsEvent *)self initWithFeatureIdentifier:v14 featureVersion:v13 countryCode:v12 step:v11 errorCategory:v15 errorDetail:v16 OTAFactorPackID:v17];

  return v18;
}

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)a3 featureVersion:(id)a4 countryCode:(id)a5 step:(id)a6 errorCategory:(id)a7 errorDetail:(id)a8 OTAFactorPackID:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = HKOnboardingUIErrorAnalyticsEvent;
  v22 = [(HKOnboardingUIErrorAnalyticsEvent *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    featureIdentifier = v22->_featureIdentifier;
    v22->_featureIdentifier = v23;

    v25 = [v16 copy];
    featureVersion = v22->_featureVersion;
    v22->_featureVersion = v25;

    v27 = [v17 copy];
    countryCode = v22->_countryCode;
    v22->_countryCode = v27;

    v29 = [v18 copy];
    step = v22->_step;
    v22->_step = v29;

    v31 = [v19 copy];
    errorCategory = v22->_errorCategory;
    v22->_errorCategory = v31;

    v33 = [v20 copy];
    errorDetail = v22->_errorDetail;
    v22->_errorDetail = v33;

    v35 = [v21 copy];
    OTAFactorPackID = v22->_OTAFactorPackID;
    v22->_OTAFactorPackID = v35;
  }

  return v22;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:self->_countryCode forKeyedSubscript:@"countryCode"];
  v7 = [v5 healthDataSource];
  v8 = [v5 environmentDataSource];
  v9 = [v8 currentDate];
  v10 = [v7 ageWithCurrentDate:v9 error:0];

  if (v10)
  {
    v11 = HKAnalyticsDecadeBucketedAgeForAge();
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  }

  else
  {
    [v6 setObject:*MEMORY[0x1E696B4B8] forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  }

  v12 = [v5 healthDataSource];
  v13 = [v12 biologicalSexWithError:0];

  if (v13)
  {
    v14 = HKAnalyticsPropertyValueForBiologicalSex();
    [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696B4D8]];
  }

  else
  {
    [v6 setObject:*MEMORY[0x1E696B508] forKeyedSubscript:*MEMORY[0x1E696B4D8]];
  }

  v15 = [v6 copy];

  return v15;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setObject:self->_featureIdentifier forKeyedSubscript:@"featureIdentifier"];
  [v7 setObject:self->_featureVersion forKeyedSubscript:@"featureVersion"];
  [v7 setObject:self->_step forKeyedSubscript:@"step"];
  [v7 setObject:self->_errorCategory forKeyedSubscript:@"errorCategory"];
  [v7 setObject:self->_errorDetail forKeyedSubscript:@"errorDetail"];
  [v7 setObject:self->_OTAFactorPackID forKeyedSubscript:@"OTAFactorPackID"];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v6 environmentDataSource];
  v10 = [v8 numberWithBool:{objc_msgSend(v9, "isImproveHealthAndActivityEnabled")}];
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696B500]];

  v11 = [v6 environmentDataSource];
  v12 = [v11 activePairedDeviceProductType];
  [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696B4C8]];

  v13 = [v6 environmentDataSource];
  v14 = [v13 activePairedDeviceModelNumber];
  [v7 setObject:v14 forKeyedSubscript:@"activeWatchPPN"];

  v15 = [v6 environmentDataSource];

  v16 = [v15 activePairedDeviceRegionInfo];
  [v7 setObject:v16 forKeyedSubscript:@"activeWatchRegionInfo"];

  v17 = [v7 copy];

  return v17;
}

@end