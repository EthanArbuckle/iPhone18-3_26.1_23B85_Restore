@interface IDSGFTMetricsMembershipChange
- (IDSGFTMetricsMembershipChange)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6;
@end

@implementation IDSGFTMetricsMembershipChange

- (IDSGFTMetricsMembershipChange)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6
{
  v8.receiver = self;
  v8.super_class = IDSGFTMetricsMembershipChange;
  v6 = [(IDSGFTMetricsReferencePoint *)&v8 initWithFromType:a3 fromUniqueID:a4 anonymizer:a5 templateDictionary:a6];
  if (v6)
  {
    v6->_referenceTime = ids_monotonic_time();
    [(IDSGFTMetricsReferencePoint *)v6 event:@"mc" uniqueID:@"IDSGFTMetricsWildcard" time:?];
  }

  return v6;
}

@end