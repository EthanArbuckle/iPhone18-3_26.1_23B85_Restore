@interface HFAnalyticsNetworkSymptomsSummaryEvent
- (HFAnalyticsNetworkSymptomsSummaryEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsNetworkSymptomsSummaryEvent

- (HFAnalyticsNetworkSymptomsSummaryEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v4 = [dataCopy objectForKeyedSubscript:@"anySymptom"];
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
    NSLog(&cfstr_ErrorHfanalyti_20.isa);
  }

  objc_opt_class();
  v7 = [dataCopy objectForKeyedSubscript:@"symptomMisconfigurationDoubleNAT"];
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
    NSLog(&cfstr_ErrorHfanalyti_21.isa);
  }

  objc_opt_class();
  v10 = [dataCopy objectForKeyedSubscript:@"symptomMisconfigurationPeerToPeer"];
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
    NSLog(&cfstr_ErrorHfanalyti_22.isa);
  }

  objc_opt_class();
  v13 = [dataCopy objectForKeyedSubscript:@"symptomMisconfigurationMultipleNetworks"];
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
    NSLog(&cfstr_ErrorHfanalyti_23.isa);
  }

  objc_opt_class();
  v16 = [dataCopy objectForKeyedSubscript:@"symptomDHCPAcquisitionFailure"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    NSLog(&cfstr_ErrorHfanalyti_24.isa);
  }

  objc_opt_class();
  v19 = [dataCopy objectForKeyedSubscript:@"symptomDNSServerOutage"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (!v21)
  {
    NSLog(&cfstr_ErrorHfanalyti_25.isa);
  }

  objc_opt_class();
  v22 = [dataCopy objectForKeyedSubscript:@"symptomMisconfigurationUnknown"];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v24)
  {
    NSLog(&cfstr_ErrorHfanalyti_26.isa);
  }

  objc_opt_class();
  v25 = [dataCopy objectForKeyedSubscript:@"symptomWifiDisassociation"];
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (!v27)
  {
    NSLog(&cfstr_ErrorHfanalyti_27.isa);
  }

  v31.receiver = self;
  v31.super_class = HFAnalyticsNetworkSymptomsSummaryEvent;
  v28 = [(HFAnalyticsEvent *)&v31 initWithEventType:58];
  if (v28)
  {
    v28->_anySymptom = [v6 BOOLValue];
    v28->_symptomMisconfigurationDoubleNAT = [v9 BOOLValue];
    v28->_symptomMisconfigurationPeerToPeer = [v12 BOOLValue];
    v28->_symptomMisconfigurationMultipleNetworks = [v15 BOOLValue];
    v28->_symptomDHCPAcquisitionFailure = [v18 BOOLValue];
    v28->_symptomDNSServerOutage = [v21 BOOLValue];
    v28->_symptomMisconfigurationUnknown = [v24 BOOLValue];
    v28->_symptomWifiDisassociation = [v27 BOOLValue];
  }

  return v28;
}

- (id)payload
{
  v14.receiver = self;
  v14.super_class = HFAnalyticsNetworkSymptomsSummaryEvent;
  payload = [(HFAnalyticsEvent *)&v14 payload];
  v4 = [payload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent anySymptom](self, "anySymptom")}];
  [v4 setObject:v5 forKeyedSubscript:@"anySymptom"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomMisconfigurationDoubleNAT](self, "symptomMisconfigurationDoubleNAT")}];
  [v4 setObject:v6 forKeyedSubscript:@"symptomMisconfigurationDoubleNAT"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomMisconfigurationPeerToPeer](self, "symptomMisconfigurationPeerToPeer")}];
  [v4 setObject:v7 forKeyedSubscript:@"symptomMisconfigurationPeerToPeer"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomMisconfigurationMultipleNetworks](self, "symptomMisconfigurationMultipleNetworks")}];
  [v4 setObject:v8 forKeyedSubscript:@"symptomMisconfigurationMultipleNetworks"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomDHCPAcquisitionFailure](self, "symptomDHCPAcquisitionFailure")}];
  [v4 setObject:v9 forKeyedSubscript:@"symptomDHCPAcquisitionFailure"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomDNSServerOutage](self, "symptomDNSServerOutage")}];
  [v4 setObject:v10 forKeyedSubscript:@"symptomDNSServerOutage"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomMisconfigurationUnknown](self, "symptomMisconfigurationUnknown")}];
  [v4 setObject:v11 forKeyedSubscript:@"symptomMisconfigurationUnknown"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsNetworkSymptomsSummaryEvent symptomWifiDisassociation](self, "symptomWifiDisassociation")}];
  [v4 setObject:v12 forKeyedSubscript:@"symptomWifiDisassociation"];

  return v4;
}

@end