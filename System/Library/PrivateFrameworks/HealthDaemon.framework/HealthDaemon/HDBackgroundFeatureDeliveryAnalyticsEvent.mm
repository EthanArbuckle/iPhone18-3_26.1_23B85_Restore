@interface HDBackgroundFeatureDeliveryAnalyticsEvent
- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)identifier eventType:(id)type countryCode:(id)code countryCodeProvenance:(int64_t)provenance errorCategory:(id)category errorDetail:(id)detail;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDBackgroundFeatureDeliveryAnalyticsEvent

- (HDBackgroundFeatureDeliveryAnalyticsEvent)initWithFeatureIdentifier:(id)identifier eventType:(id)type countryCode:(id)code countryCodeProvenance:(int64_t)provenance errorCategory:(id)category errorDetail:(id)detail
{
  identifierCopy = identifier;
  typeCopy = type;
  codeCopy = code;
  categoryCopy = category;
  detailCopy = detail;
  v31.receiver = self;
  v31.super_class = HDBackgroundFeatureDeliveryAnalyticsEvent;
  v19 = [(HDBackgroundFeatureDeliveryAnalyticsEvent *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    featureIdentifier = v19->_featureIdentifier;
    v19->_featureIdentifier = v20;

    v22 = [typeCopy copy];
    eventType = v19->_eventType;
    v19->_eventType = v22;

    v24 = [codeCopy copy];
    countryCode = v19->_countryCode;
    v19->_countryCode = v24;

    v19->_countryCodeProvenance = provenance;
    v26 = [categoryCopy copy];
    errorCategory = v19->_errorCategory;
    v19->_errorCategory = v26;

    v28 = [detailCopy copy];
    errorDetail = v19->_errorDetail;
    v19->_errorDetail = v28;
  }

  return v19;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v22[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"eventType";
  v21[1] = @"featureIdentifier";
  featureIdentifier = self->_featureIdentifier;
  v22[0] = self->_eventType;
  v22[1] = featureIdentifier;
  v21[2] = @"provenance";
  countryCodeProvenance = self->_countryCodeProvenance;
  sourceCopy = source;
  v8 = NSStringFromHKOnboardingCompletionCountryCodeProvenance();
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v10 = [v9 mutableCopy];

  [v10 setObject:self->_errorCategory forKeyedSubscript:@"errorCategory"];
  [v10 setObject:self->_errorDetail forKeyedSubscript:@"errorDetail"];
  v11 = [MEMORY[0x277D73660] clientWithIdentifier:275];
  v12 = [v11 rolloutIdentifiersWithNamespaceName:*MEMORY[0x277CCC5B0]];
  factorPackId = [v12 factorPackId];
  [v10 setObject:factorPackId forKeyedSubscript:@"OTAFactorPackID"];

  environmentDataSource = [sourceCopy environmentDataSource];

  isImproveHealthAndActivityEnabled = [environmentDataSource isImproveHealthAndActivityEnabled];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:isImproveHealthAndActivityEnabled];
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