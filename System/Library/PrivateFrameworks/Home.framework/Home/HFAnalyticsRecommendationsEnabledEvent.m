@interface HFAnalyticsRecommendationsEnabledEvent
- (HFAnalyticsRecommendationsEnabledEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsRecommendationsEnabledEvent

- (HFAnalyticsRecommendationsEnabledEvent)initWithData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"enabled"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    NSLog(&cfstr_ErrorHfanalyti_4.isa);
  }

  objc_opt_class();
  v7 = [v3 objectForKeyedSubscript:@"success"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    NSLog(&cfstr_ErrorHfanalyti_5.isa);
  }

  objc_opt_class();
  v10 = [v3 objectForKeyedSubscript:@"rank"];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    NSLog(&cfstr_ErrorHfanalyti_6.isa);
  }

  v42 = v12;
  objc_opt_class();
  v13 = [v3 objectForKeyedSubscript:@"rankInt"];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    NSLog(&cfstr_ErrorHfanalyti_7.isa);
  }

  objc_opt_class();
  v16 = [v3 objectForKeyedSubscript:@"rankVersion"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v40 = v17;

  v18 = v15;
  if (!v15)
  {
    NSLog(&cfstr_ErrorHfanalyti_8.isa);
  }

  objc_opt_class();
  v19 = [v3 objectForKeyedSubscript:@"serviceType"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  obj = v20;
  v39 = v20;

  objc_opt_class();
  v21 = [v3 objectForKeyedSubscript:@"accessoryCategory"];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v34 = v22;
  v38 = v22;

  objc_opt_class();
  v23 = [v3 objectForKeyedSubscript:@"source"];
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v33 = v24;
  v37 = v24;

  objc_opt_class();
  v25 = [v3 objectForKeyedSubscript:@"presentationContext"];
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v36 = v26;

  objc_opt_class();
  v27 = [v3 objectForKeyedSubscript:@"configurationType"];
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v43.receiver = self;
  v43.super_class = HFAnalyticsRecommendationsEnabledEvent;
  v30 = [(HFAnalyticsEvent *)&v43 initWithEventType:14];
  if (v30)
  {
    v30->_enabled = [v6 BOOLValue];
    v30->_success = [v9 BOOLValue];
    [v42 doubleValue];
    v30->_rank = v31;
    v30->_rankInt = [v18 intValue];
    v30->_rankVersion = [v40 intValue];
    objc_storeStrong(&v30->_serviceType, obj);
    objc_storeStrong(&v30->_accessoryCategory, v34);
    objc_storeStrong(&v30->_source, v33);
    objc_storeStrong(&v30->_presentationContext, v26);
    objc_storeStrong(&v30->_configurationType, v28);
  }

  return v30;
}

- (id)payload
{
  v22.receiver = self;
  v22.super_class = HFAnalyticsRecommendationsEnabledEvent;
  v3 = [(HFAnalyticsEvent *)&v22 payload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsRecommendationsEnabledEvent enabled](self, "enabled")}];
  [v4 setObject:v5 forKeyedSubscript:@"enabled"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsRecommendationsEnabledEvent success](self, "success")}];
  [v4 setObject:v6 forKeyedSubscript:@"success"];

  v7 = MEMORY[0x277CCABB0];
  [(HFAnalyticsRecommendationsEnabledEvent *)self rank];
  v8 = [v7 numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"rank"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[HFAnalyticsRecommendationsEnabledEvent rankInt](self, "rankInt")}];
  [v4 setObject:v9 forKeyedSubscript:@"rankInt"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[HFAnalyticsRecommendationsEnabledEvent rankVersion](self, "rankVersion")}];
  [v4 setObject:v10 forKeyedSubscript:@"rankVersion"];

  v11 = [(HFAnalyticsRecommendationsEnabledEvent *)self serviceType];

  if (v11)
  {
    v12 = [(HFAnalyticsRecommendationsEnabledEvent *)self serviceType];
    [v4 setObject:v12 forKeyedSubscript:@"serviceType"];
  }

  v13 = [(HFAnalyticsRecommendationsEnabledEvent *)self accessoryCategory];

  if (v13)
  {
    v14 = [(HFAnalyticsRecommendationsEnabledEvent *)self accessoryCategory];
    [v4 setObject:v14 forKeyedSubscript:@"accessoryCategory"];
  }

  v15 = [(HFAnalyticsRecommendationsEnabledEvent *)self source];

  if (v15)
  {
    v16 = [(HFAnalyticsRecommendationsEnabledEvent *)self source];
    [v4 setObject:v16 forKeyedSubscript:@"source"];
  }

  v17 = [(HFAnalyticsRecommendationsEnabledEvent *)self presentationContext];

  if (v17)
  {
    v18 = [(HFAnalyticsRecommendationsEnabledEvent *)self presentationContext];
    [v4 setObject:v18 forKeyedSubscript:@"presentationContext"];
  }

  v19 = [(HFAnalyticsRecommendationsEnabledEvent *)self configurationType];

  if (v19)
  {
    v20 = [(HFAnalyticsRecommendationsEnabledEvent *)self configurationType];
    [v4 setObject:v20 forKeyedSubscript:@"configurationType"];
  }

  return v4;
}

@end