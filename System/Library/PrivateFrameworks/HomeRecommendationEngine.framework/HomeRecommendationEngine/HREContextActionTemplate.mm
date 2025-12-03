@interface HREContextActionTemplate
- (id)createStarterRecommendationInHome:(id)home;
@end

@implementation HREContextActionTemplate

- (id)createStarterRecommendationInHome:(id)home
{
  v11.receiver = self;
  v11.super_class = HREContextActionTemplate;
  v4 = [(HREActionTemplate *)&v11 createStarterRecommendationInHome:home];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    contextActionName = [(HREContextActionTemplate *)self contextActionName];
    [v7 setName:contextActionName];

    iconDescriptor = [(HREContextActionTemplate *)self iconDescriptor];
    [v7 setIconDescriptor:iconDescriptor];
  }

  return v5;
}

@end