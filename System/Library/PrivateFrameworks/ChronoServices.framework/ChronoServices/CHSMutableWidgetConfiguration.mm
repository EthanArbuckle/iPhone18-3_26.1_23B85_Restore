@interface CHSMutableWidgetConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContainerDescriptors:(id)descriptors;
- (void)setMetricsSpecification:(id)specification;
- (void)setRateLimitPolicies:(id)policies;
- (void)setReplicationPredicate:(id)predicate;
@end

@implementation CHSMutableWidgetConfiguration

- (void)setContainerDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy copy];
  containerDescriptors = self->super._containerDescriptors;
  self->super._containerDescriptors = v4;
}

- (void)setMetricsSpecification:(id)specification
{
  specificationCopy = specification;
  v4 = [specificationCopy copy];
  metricsSpecification = self->super._metricsSpecification;
  self->super._metricsSpecification = v4;
}

- (void)setRateLimitPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [policiesCopy copy];
  rateLimitPolicies = self->super._rateLimitPolicies;
  self->super._rateLimitPolicies = v4;
}

- (void)setReplicationPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = [predicateCopy copy];
  replicationPredicate = self->super._replicationPredicate;
  self->super._replicationPredicate = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetConfiguration allocWithZone:zone];

  return [(CHSWidgetConfiguration *)v4 initWithConfiguration:self];
}

@end