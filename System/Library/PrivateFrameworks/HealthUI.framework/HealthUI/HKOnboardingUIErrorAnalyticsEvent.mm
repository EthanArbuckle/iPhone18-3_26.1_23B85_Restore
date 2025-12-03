@interface HKOnboardingUIErrorAnalyticsEvent
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step errorCategory:(id)category errorDetail:(id)detail OTAFactorPackID:(id)d;
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step onboardingEligibility:(id)eligibility;
- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step onboardingIneligibilityReasons:(unint64_t)reasons;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKOnboardingUIErrorAnalyticsEvent

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step onboardingEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  stepCopy = step;
  codeCopy = code;
  versionCopy = version;
  identifierCopy = identifier;
  v17 = HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingEligibility();
  v18 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingEligibility();

  v19 = HKOTAFactorPackID();
  v20 = [(HKOnboardingUIErrorAnalyticsEvent *)self initWithFeatureIdentifier:identifierCopy featureVersion:versionCopy countryCode:codeCopy step:stepCopy errorCategory:v17 errorDetail:v18 OTAFactorPackID:v19];

  return v20;
}

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step onboardingIneligibilityReasons:(unint64_t)reasons
{
  stepCopy = step;
  codeCopy = code;
  versionCopy = version;
  identifierCopy = identifier;
  v15 = HKAnalyticsErrorCategoryForFeatureAvailabilityOnboardingIneligibilityReasons();
  v16 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons();
  v17 = HKOTAFactorPackID();
  v18 = [(HKOnboardingUIErrorAnalyticsEvent *)self initWithFeatureIdentifier:identifierCopy featureVersion:versionCopy countryCode:codeCopy step:stepCopy errorCategory:v15 errorDetail:v16 OTAFactorPackID:v17];

  return v18;
}

- (HKOnboardingUIErrorAnalyticsEvent)initWithFeatureIdentifier:(id)identifier featureVersion:(id)version countryCode:(id)code step:(id)step errorCategory:(id)category errorDetail:(id)detail OTAFactorPackID:(id)d
{
  identifierCopy = identifier;
  versionCopy = version;
  codeCopy = code;
  stepCopy = step;
  categoryCopy = category;
  detailCopy = detail;
  dCopy = d;
  v38.receiver = self;
  v38.super_class = HKOnboardingUIErrorAnalyticsEvent;
  v22 = [(HKOnboardingUIErrorAnalyticsEvent *)&v38 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    featureIdentifier = v22->_featureIdentifier;
    v22->_featureIdentifier = v23;

    v25 = [versionCopy copy];
    featureVersion = v22->_featureVersion;
    v22->_featureVersion = v25;

    v27 = [codeCopy copy];
    countryCode = v22->_countryCode;
    v22->_countryCode = v27;

    v29 = [stepCopy copy];
    step = v22->_step;
    v22->_step = v29;

    v31 = [categoryCopy copy];
    errorCategory = v22->_errorCategory;
    v22->_errorCategory = v31;

    v33 = [detailCopy copy];
    errorDetail = v22->_errorDetail;
    v22->_errorDetail = v33;

    v35 = [dCopy copy];
    OTAFactorPackID = v22->_OTAFactorPackID;
    v22->_OTAFactorPackID = v35;
  }

  return v22;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:self->_countryCode forKeyedSubscript:@"countryCode"];
  healthDataSource = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v10 = [healthDataSource ageWithCurrentDate:currentDate error:0];

  if (v10)
  {
    v11 = HKAnalyticsDecadeBucketedAgeForAge();
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  }

  else
  {
    [v6 setObject:*MEMORY[0x1E696B4B8] forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  v13 = [healthDataSource2 biologicalSexWithError:0];

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

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  sourceCopy = source;
  v7 = objc_alloc_init(v5);
  [v7 setObject:self->_featureIdentifier forKeyedSubscript:@"featureIdentifier"];
  [v7 setObject:self->_featureVersion forKeyedSubscript:@"featureVersion"];
  [v7 setObject:self->_step forKeyedSubscript:@"step"];
  [v7 setObject:self->_errorCategory forKeyedSubscript:@"errorCategory"];
  [v7 setObject:self->_errorDetail forKeyedSubscript:@"errorDetail"];
  [v7 setObject:self->_OTAFactorPackID forKeyedSubscript:@"OTAFactorPackID"];
  v8 = MEMORY[0x1E696AD98];
  environmentDataSource = [sourceCopy environmentDataSource];
  v10 = [v8 numberWithBool:{objc_msgSend(environmentDataSource, "isImproveHealthAndActivityEnabled")}];
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696B500]];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource2 activePairedDeviceProductType];
  [v7 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x1E696B4C8]];

  environmentDataSource3 = [sourceCopy environmentDataSource];
  activePairedDeviceModelNumber = [environmentDataSource3 activePairedDeviceModelNumber];
  [v7 setObject:activePairedDeviceModelNumber forKeyedSubscript:@"activeWatchPPN"];

  environmentDataSource4 = [sourceCopy environmentDataSource];

  activePairedDeviceRegionInfo = [environmentDataSource4 activePairedDeviceRegionInfo];
  [v7 setObject:activePairedDeviceRegionInfo forKeyedSubscript:@"activeWatchRegionInfo"];

  v17 = [v7 copy];

  return v17;
}

@end