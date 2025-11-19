@interface CHSMutableWidgetConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContainerDescriptors:(id)a3;
- (void)setMetricsSpecification:(id)a3;
- (void)setRateLimitPolicies:(id)a3;
- (void)setReplicationPredicate:(id)a3;
@end

@implementation CHSMutableWidgetConfiguration

- (void)setContainerDescriptors:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  containerDescriptors = self->super._containerDescriptors;
  self->super._containerDescriptors = v4;
}

- (void)setMetricsSpecification:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  metricsSpecification = self->super._metricsSpecification;
  self->super._metricsSpecification = v4;
}

- (void)setRateLimitPolicies:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  rateLimitPolicies = self->super._rateLimitPolicies;
  self->super._rateLimitPolicies = v4;
}

- (void)setReplicationPredicate:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  replicationPredicate = self->super._replicationPredicate;
  self->super._replicationPredicate = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSWidgetConfiguration allocWithZone:a3];

  return [(CHSWidgetConfiguration *)v4 initWithConfiguration:self];
}

@end