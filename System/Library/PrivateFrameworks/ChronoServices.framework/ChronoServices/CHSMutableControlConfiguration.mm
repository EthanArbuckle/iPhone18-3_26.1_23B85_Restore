@interface CHSMutableControlConfiguration
- (CHSMutableControlConfiguration)init;
- (CHSMutableControlConfiguration)initWithControlItems:(id)a3;
- (CHSMutableControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4;
- (id)copyWithZone:(void *)a3;
- (void)setControlItems:(id)a3;
- (void)setReplicationPredicate:(id)a3;
@end

@implementation CHSMutableControlConfiguration

- (void)setControlItems:(id)a3
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B38();
  v5 = *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems);
  *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v4;
}

- (void)setReplicationPredicate:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a3;
  v3 = a3;
}

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(CHSControlConfiguration);

  return [v4 initWithConfiguration_];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v4 initWithControlItems:a3];
}

- (CHSMutableControlConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v3 init];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4
{
  v5.receiver = self;
  v5.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v5 initWithControlItems:a3 replicationPredicate:a4];
}

@end