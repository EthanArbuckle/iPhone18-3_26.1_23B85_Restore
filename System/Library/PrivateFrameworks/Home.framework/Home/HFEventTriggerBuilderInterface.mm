@interface HFEventTriggerBuilderInterface
+ (id)interfaceWithBuilder:(id)a3;
- (HFEventTriggerBuilder)triggerBuilder;
- (HFEventTriggerBuilderInterface)initWithTriggerBuilder:(id)a3;
@end

@implementation HFEventTriggerBuilderInterface

- (HFEventTriggerBuilderInterface)initWithTriggerBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFEventTriggerBuilderInterface;
  v5 = [(HFEventTriggerBuilderInterface *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_triggerBuilder, v4);
  }

  return v6;
}

+ (id)interfaceWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithTriggerBuilder:v3];

  return v4;
}

- (HFEventTriggerBuilder)triggerBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerBuilder);

  return WeakRetained;
}

@end