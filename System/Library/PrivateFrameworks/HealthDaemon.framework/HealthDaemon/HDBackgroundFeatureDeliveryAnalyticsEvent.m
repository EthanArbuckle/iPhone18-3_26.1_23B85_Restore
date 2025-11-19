@interface HDBackgroundFeatureDeliveryAnalyticsEvent
- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)a3 eventType:(id)a4 countryCode:(id)a5 countryCodeProvenance:(int64_t)a6 errorCategory:(id)a7 errorDetail:(id)a8;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HDBackgroundFeatureDeliveryAnalyticsEvent

- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)a3 eventType:(id)a4 countryCode:(id)a5 countryCodeProvenance:(int64_t)a6 errorCategory:(id)a7 errorDetail:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = HDBackgroundFeatureDeliveryAnalyticsEvent;
  v19 = [(HDBackgroundFeatureDeliveryAnalyticsEvent *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    featureIdentifier = v19->_featureIdentifier;
    v19->_featureIdentifier = v20;

    v22 = [v15 copy];
    eventType = v19->_eventType;
    v19->_eventType = v22;

    v24 = [v16 copy];
    countryCode = v19->_countryCode;
    v19->_countryCode = v24;

    v19->_countryCodeProvenance = a6;
    v26 = [v17 copy];
    errorCategory = v19->_errorCategory;
    v19->_errorCategory = v26;

    v28 = [v18 copy];
    errorDetail = v19->_errorDetail;
    v19->_errorDetail = v28;
  }

  return v19;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"eventType";
  v21[1] = @"featureIdentifier";
  featureIdentifier = self->_featureIdentifier;
  v22[0] = self->_eventType;
  v22[1] = featureIdentifier;
  v21[2] = @"provenance";
  countryCodeProvenance = self->_countryCodeProvenance;
  v7 = a3;
  v8 = NSStringFromHKOnboardingCompletionCountryCodeProvenance();
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v10 = [v9 mutableCopy];

  [v10 setObject:self->_errorCategory forKeyedSubscript:@"errorCategory"];
  [v10 setObject:self->_errorDetail forKeyedSubscript:@"errorDetail"];
  v11 = [MEMORY[0x277D73660] clientWithIdentifier:275];
  v12 = [v11 rolloutIdentifiersWithNamespaceName:*MEMORY[0x277CCC5B0]];
  v13 = [v12 factorPackId];
  [v10 setObject:v13 forKeyedSubscript:@"OTAFactorPackID"];

  v14 = [v7 environmentDataSource];

  v15 = [v14 isImproveHealthAndActivityEnabled];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  [v10 setObject:v16 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v10 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  v18 = [v10 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end