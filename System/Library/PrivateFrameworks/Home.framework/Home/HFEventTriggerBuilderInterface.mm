@interface HFEventTriggerBuilderInterface
+ (id)interfaceWithBuilder:(id)builder;
- (HFEventTriggerBuilder)triggerBuilder;
- (HFEventTriggerBuilderInterface)initWithTriggerBuilder:(id)builder;
@end

@implementation HFEventTriggerBuilderInterface

- (HFEventTriggerBuilderInterface)initWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = HFEventTriggerBuilderInterface;
  v5 = [(HFEventTriggerBuilderInterface *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_triggerBuilder, builderCopy);
  }

  return v6;
}

+ (id)interfaceWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithTriggerBuilder:builderCopy];

  return v4;
}

- (HFEventTriggerBuilder)triggerBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerBuilder);

  return WeakRetained;
}

@end