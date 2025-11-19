@interface HFEventBuilderItemProviderEventGroup
+ (id)eventGroupWithBuilders:(id)a3;
- (HFEventBuilderItemProviderEventGroup)initWithEventBuilders:(id)a3;
@end

@implementation HFEventBuilderItemProviderEventGroup

- (HFEventBuilderItemProviderEventGroup)initWithEventBuilders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFEventBuilderItemProviderEventGroup;
  v6 = [(HFEventBuilderItemProviderEventGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilders, a3);
  }

  return v7;
}

+ (id)eventGroupWithBuilders:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithEventBuilders:v4];

  return v5;
}

@end