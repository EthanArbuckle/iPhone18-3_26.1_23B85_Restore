@interface ClinicalSourcesDataProvider
- (_TtC15HealthRecordsUI27ClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)store;
@end

@implementation ClinicalSourcesDataProvider

- (_TtC15HealthRecordsUI27ClinicalSourcesDataProvider)initWithHealthRecordsStore:(id)store
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClinicalSourcesDataProvider();
  return [(WDClinicalSourcesDataProvider *)&v5 initWithHealthRecordsStore:store];
}

@end