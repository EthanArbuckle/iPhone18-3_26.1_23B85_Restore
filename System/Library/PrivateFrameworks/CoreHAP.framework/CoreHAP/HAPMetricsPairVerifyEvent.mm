@interface HAPMetricsPairVerifyEvent
- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)accessory forLinkType:(id)type durationInMS:(unint64_t)s reason:(id)reason connectionEstablishedUsing:(id)using pvError:(id)error;
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

  linkType = [(HAPMetricsPairVerifyEvent *)self linkType];
  [v3 setObject:linkType forKeyedSubscript:@"linkType"];

  reason = [(HAPMetricsPairVerifyEvent *)self reason];
  [v3 setObject:reason forKeyedSubscript:@"reason"];

  connectionEstablishedUsing = [(HAPMetricsPairVerifyEvent *)self connectionEstablishedUsing];
  [v3 setObject:connectionEstablishedUsing forKeyedSubscript:@"connection"];

  linkType2 = [(HAPMetricsPairVerifyEvent *)self linkType];
  integerValue = [linkType2 integerValue];

  if (integerValue == 1)
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
  accessoryIdentifier = [(HAPMetricsPairVerifyEvent *)self accessoryIdentifier];
  linkType = [(HAPMetricsPairVerifyEvent *)self linkType];
  durationInMS = [(HAPMetricsPairVerifyEvent *)self durationInMS];
  reason = [(HAPMetricsPairVerifyEvent *)self reason];
  connectionEstablishedUsing = [(HAPMetricsPairVerifyEvent *)self connectionEstablishedUsing];
  error = [(HMMLogEvent *)self error];
  v10 = [v3 stringWithFormat:@"HAPMetricsPairVerifyEvent - Accessory Identifier: %@, linkType: %@, duration: %lu ms, reason: %@, connection Established: %@ error: %@", accessoryIdentifier, linkType, durationInMS, reason, connectionEstablishedUsing, error];

  return v10;
}

- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)accessory forLinkType:(id)type durationInMS:(unint64_t)s reason:(id)reason connectionEstablishedUsing:(id)using pvError:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  reasonCopy = reason;
  usingCopy = using;
  errorCopy = error;
  v25.receiver = self;
  v25.super_class = HAPMetricsPairVerifyEvent;
  v19 = [(HMMLogEvent *)&v25 init];
  if (v19)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v19->_accessoryIdentifier;
    v19->_accessoryIdentifier = identifier;

    objc_storeStrong(&v19->_linkType, type);
    v19->_durationInMS = s;
    v22 = [reasonCopy copy];
    reason = v19->_reason;
    v19->_reason = v22;

    objc_storeStrong(&v19->_connectionEstablishedUsing, using);
    v19->_triedConnectingToIPv4Address = 0;
    v19->_triedConnectingToIPv6Address = 0;
    [(HMMLogEvent *)v19 setError:errorCopy];
  }

  return v19;
}

@end