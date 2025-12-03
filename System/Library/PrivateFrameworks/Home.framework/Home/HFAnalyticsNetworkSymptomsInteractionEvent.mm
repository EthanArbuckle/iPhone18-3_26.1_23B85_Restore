@interface HFAnalyticsNetworkSymptomsInteractionEvent
- (HFAnalyticsNetworkSymptomsInteractionEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsNetworkSymptomsInteractionEvent

- (HFAnalyticsNetworkSymptomsInteractionEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"accessoryType"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti.isa);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"symptom"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_ErrorHfanalyti_0.isa);
  }

  objc_opt_class();
  v11 = [dataCopy objectForKeyedSubscript:@"interactionTypeTileTap"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    NSLog(&cfstr_ErrorHfanalyti_1.isa);
  }

  objc_opt_class();
  v14 = [dataCopy objectForKeyedSubscript:@"interactionTypeLearnMoreButton"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    NSLog(&cfstr_ErrorHfanalyti_2.isa);
  }

  objc_opt_class();
  v17 = [dataCopy objectForKeyedSubscript:@"interactionTypeWifiPicker"];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    NSLog(&cfstr_ErrorHfanalyti_3.isa);
  }

  v22.receiver = self;
  v22.super_class = HFAnalyticsNetworkSymptomsInteractionEvent;
  v20 = [(HFAnalyticsEvent *)&v22 initWithEventType:59];
  if (v20)
  {
    v20->_accessoryType = [v7 unsignedIntValue];
    v20->_symptom = [v10 unsignedIntValue];
    v20->_interactionTypeTileTap = [v13 BOOLValue];
    v20->_interactionTypeLearnMoreButton = [v16 BOOLValue];
    v20->_interactionTypeWifiPicker = [v19 BOOLValue];
  }

  return v20;
}

- (id)payload
{
  v11.receiver = self;
  v11.super_class = HFAnalyticsNetworkSymptomsInteractionEvent;
  payload = [(HFAnalyticsEvent *)&v11 payload];
  v4 = [payload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsNetworkSymptomsInteractionEvent accessoryType](self, "accessoryType")}];
  [v4 setObject:v5 forKeyedSubscript:@"accessoryType"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsNetworkSymptomsInteractionEvent symptom](self, "symptom")}];
  [v4 setObject:v6 forKeyedSubscript:@"symptom"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsInteractionEvent interactionTypeTileTap](self, "interactionTypeTileTap")}];
  [v4 setObject:v7 forKeyedSubscript:@"interactionTypeTileTap"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsInteractionEvent interactionTypeLearnMoreButton](self, "interactionTypeLearnMoreButton")}];
  [v4 setObject:v8 forKeyedSubscript:@"interactionTypeLearnMoreButton"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsInteractionEvent interactionTypeWifiPicker](self, "interactionTypeWifiPicker")}];
  [v4 setObject:v9 forKeyedSubscript:@"interactionTypeWifiPicker"];

  return v4;
}

@end