@interface HFAnalyticsRecommendationsEnabledEvent
- (HFAnalyticsRecommendationsEnabledEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsRecommendationsEnabledEvent

- (HFAnalyticsRecommendationsEnabledEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v4 = [dataCopy objectForKeyedSubscript:@"enabled"];
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
  v7 = [dataCopy objectForKeyedSubscript:@"success"];
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
  v10 = [dataCopy objectForKeyedSubscript:@"rank"];
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
  v13 = [dataCopy objectForKeyedSubscript:@"rankInt"];
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
  v16 = [dataCopy objectForKeyedSubscript:@"rankVersion"];
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
  v19 = [dataCopy objectForKeyedSubscript:@"serviceType"];
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
  v21 = [dataCopy objectForKeyedSubscript:@"accessoryCategory"];
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
  v23 = [dataCopy objectForKeyedSubscript:@"source"];
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
  v25 = [dataCopy objectForKeyedSubscript:@"presentationContext"];
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
  v27 = [dataCopy objectForKeyedSubscript:@"configurationType"];
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
  payload = [(HFAnalyticsEvent *)&v22 payload];
  v4 = [payload mutableCopy];

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

  serviceType = [(HFAnalyticsRecommendationsEnabledEvent *)self serviceType];

  if (serviceType)
  {
    serviceType2 = [(HFAnalyticsRecommendationsEnabledEvent *)self serviceType];
    [v4 setObject:serviceType2 forKeyedSubscript:@"serviceType"];
  }

  accessoryCategory = [(HFAnalyticsRecommendationsEnabledEvent *)self accessoryCategory];

  if (accessoryCategory)
  {
    accessoryCategory2 = [(HFAnalyticsRecommendationsEnabledEvent *)self accessoryCategory];
    [v4 setObject:accessoryCategory2 forKeyedSubscript:@"accessoryCategory"];
  }

  source = [(HFAnalyticsRecommendationsEnabledEvent *)self source];

  if (source)
  {
    source2 = [(HFAnalyticsRecommendationsEnabledEvent *)self source];
    [v4 setObject:source2 forKeyedSubscript:@"source"];
  }

  presentationContext = [(HFAnalyticsRecommendationsEnabledEvent *)self presentationContext];

  if (presentationContext)
  {
    presentationContext2 = [(HFAnalyticsRecommendationsEnabledEvent *)self presentationContext];
    [v4 setObject:presentationContext2 forKeyedSubscript:@"presentationContext"];
  }

  configurationType = [(HFAnalyticsRecommendationsEnabledEvent *)self configurationType];

  if (configurationType)
  {
    configurationType2 = [(HFAnalyticsRecommendationsEnabledEvent *)self configurationType];
    [v4 setObject:configurationType2 forKeyedSubscript:@"configurationType"];
  }

  return v4;
}

@end