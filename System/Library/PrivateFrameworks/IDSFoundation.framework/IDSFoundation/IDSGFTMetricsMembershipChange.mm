@interface IDSGFTMetricsMembershipChange
- (IDSGFTMetricsMembershipChange)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary;
@end

@implementation IDSGFTMetricsMembershipChange

- (IDSGFTMetricsMembershipChange)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = IDSGFTMetricsMembershipChange;
  v6 = [(IDSGFTMetricsReferencePoint *)&v8 initWithFromType:type fromUniqueID:d anonymizer:anonymizer templateDictionary:dictionary];
  if (v6)
  {
    v6->_referenceTime = ids_monotonic_time();
    [(IDSGFTMetricsReferencePoint *)v6 event:@"mc" uniqueID:@"IDSGFTMetricsWildcard" time:?];
  }

  return v6;
}

@end