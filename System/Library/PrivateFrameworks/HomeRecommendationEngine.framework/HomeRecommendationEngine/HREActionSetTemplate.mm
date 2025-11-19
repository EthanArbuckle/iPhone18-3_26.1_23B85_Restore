@interface HREActionSetTemplate
- (HREActionSetTemplate)init;
- (id)createStarterRecommendationInHome:(id)a3;
@end

@implementation HREActionSetTemplate

- (HREActionSetTemplate)init
{
  v5.receiver = self;
  v5.super_class = HREActionSetTemplate;
  v2 = [(HRETemplate *)&v5 init];
  if (v2)
  {
    if (_MergedGlobals_2 != -1)
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_3_1);
    }

    v3 = qword_27F5F9730;
    [(HREActionSetTemplate *)v2 setActionSetName:v3];

    [(HREActionSetTemplate *)v2 setActionSetType:0];
    [(HREActionSetTemplate *)v2 setIconDescriptor:0];
  }

  return v2;
}

void __28__HREActionSetTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9730;
  qword_27F5F9730 = &stru_286657A08;
}

- (id)createStarterRecommendationInHome:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HREActionSetTemplate;
  v5 = [(HREActionTemplate *)&v15 createStarterRecommendationInHome:v4];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D14398]) initWithHome:v4];
    v10 = [v8 mutableActionSetBuilders];
    [v10 addObject:v9];

    v11 = [(HREActionSetTemplate *)self actionSetName];
    [v9 setName:v11];

    v12 = [(HREActionSetTemplate *)self iconDescriptor];
    if (v12)
    {
      [v9 setIconDescriptor:v12];
    }

    else
    {
      v13 = [v9 iconDescriptor];
      [v9 setIconDescriptor:v13];
    }
  }

  return v6;
}

@end