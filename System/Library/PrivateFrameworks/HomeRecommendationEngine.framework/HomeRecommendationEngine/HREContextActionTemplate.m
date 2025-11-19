@interface HREContextActionTemplate
- (id)createStarterRecommendationInHome:(id)a3;
@end

@implementation HREContextActionTemplate

- (id)createStarterRecommendationInHome:(id)a3
{
  v11.receiver = self;
  v11.super_class = HREContextActionTemplate;
  v4 = [(HREActionTemplate *)&v11 createStarterRecommendationInHome:a3];
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
    v8 = [(HREContextActionTemplate *)self contextActionName];
    [v7 setName:v8];

    v9 = [(HREContextActionTemplate *)self iconDescriptor];
    [v7 setIconDescriptor:v9];
  }

  return v5;
}

@end