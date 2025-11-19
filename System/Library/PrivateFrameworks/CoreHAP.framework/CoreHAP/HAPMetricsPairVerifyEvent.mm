@interface HAPMetricsPairVerifyEvent
- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)a3 forLinkType:(id)a4 durationInMS:(unint64_t)a5 reason:(id)a6 connectionEstablishedUsing:(id)a7 pvError:(id)a8;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HAPMetricsPairVerifyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPMetricsPairVerifyEvent durationInMS](self, "durationInMS") / 0x3E8}];
  [v3 setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPMetricsPairVerifyEvent durationInMS](self, "durationInMS")}];
  [v3 setObject:v5 forKeyedSubscript:@"durationInMS"];

  v6 = [(HAPMetricsPairVerifyEvent *)self linkType];
  [v3 setObject:v6 forKeyedSubscript:@"linkType"];

  v7 = [(HAPMetricsPairVerifyEvent *)self reason];
  [v3 setObject:v7 forKeyedSubscript:@"reason"];

  v8 = [(HAPMetricsPairVerifyEvent *)self connectionEstablishedUsing];
  [v3 setObject:v8 forKeyedSubscript:@"connection"];

  v9 = [(HAPMetricsPairVerifyEvent *)self linkType];
  v10 = [v9 integerValue];

  if (v10 == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPMetricsPairVerifyEvent triedConnectingToIPv4Address](self, "triedConnectingToIPv4Address")}];
    [v3 setObject:v11 forKeyedSubscript:@"triedConnectingOverIPv4"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPMetricsPairVerifyEvent triedConnectingToIPv6Address](self, "triedConnectingToIPv6Address")}];
    [v3 setObject:v12 forKeyedSubscript:@"triedConnectingOverIPv6"];
  }

  v13 = [v3 copy];

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetricsPairVerifyEvent *)self accessoryIdentifier];
  v5 = [(HAPMetricsPairVerifyEvent *)self linkType];
  v6 = [(HAPMetricsPairVerifyEvent *)self durationInMS];
  v7 = [(HAPMetricsPairVerifyEvent *)self reason];
  v8 = [(HAPMetricsPairVerifyEvent *)self connectionEstablishedUsing];
  v9 = [(HMMLogEvent *)self error];
  v10 = [v3 stringWithFormat:@"HAPMetricsPairVerifyEvent - Accessory Identifier: %@, linkType: %@, duration: %lu ms, reason: %@, connection Established: %@ error: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)a3 forLinkType:(id)a4 durationInMS:(unint64_t)a5 reason:(id)a6 connectionEstablishedUsing:(id)a7 pvError:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = HAPMetricsPairVerifyEvent;
  v19 = [(HMMLogEvent *)&v25 init];
  if (v19)
  {
    v20 = [v14 identifier];
    accessoryIdentifier = v19->_accessoryIdentifier;
    v19->_accessoryIdentifier = v20;

    objc_storeStrong(&v19->_linkType, a4);
    v19->_durationInMS = a5;
    v22 = [v16 copy];
    reason = v19->_reason;
    v19->_reason = v22;

    objc_storeStrong(&v19->_connectionEstablishedUsing, a7);
    v19->_triedConnectingToIPv4Address = 0;
    v19->_triedConnectingToIPv6Address = 0;
    [(HMMLogEvent *)v19 setError:v18];
  }

  return v19;
}

@end