@interface HFEventBuilderItemProviderEventGroup
+ (id)eventGroupWithBuilders:(id)builders;
- (HFEventBuilderItemProviderEventGroup)initWithEventBuilders:(id)builders;
@end

@implementation HFEventBuilderItemProviderEventGroup

- (HFEventBuilderItemProviderEventGroup)initWithEventBuilders:(id)builders
{
  buildersCopy = builders;
  v9.receiver = self;
  v9.super_class = HFEventBuilderItemProviderEventGroup;
  v6 = [(HFEventBuilderItemProviderEventGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilders, builders);
  }

  return v7;
}

+ (id)eventGroupWithBuilders:(id)builders
{
  buildersCopy = builders;
  v5 = [[self alloc] initWithEventBuilders:buildersCopy];

  return v5;
}

@end