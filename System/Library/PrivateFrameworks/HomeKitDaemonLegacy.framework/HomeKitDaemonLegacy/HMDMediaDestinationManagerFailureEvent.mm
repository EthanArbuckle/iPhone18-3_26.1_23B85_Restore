@interface HMDMediaDestinationManagerFailureEvent
- (HMDMediaDestinationManagerFailureEvent)initWithFailureCode:(unint64_t)a3 error:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDMediaDestinationManagerFailureEvent

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaDestinationManagerFailureEvent *)self failureCode];
  v5 = HMDMediaDestinationManagerFailureCodeAsString([v4 integerValue]);
  v6 = [v3 initWithName:@"failureCode" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDMediaDestinationManagerFailureEvent *)self errorDomain];
  v9 = [v7 initWithName:@"errorDomain" value:v8];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDMediaDestinationManagerFailureEvent *)self errorCode];
  v12 = [v10 initWithName:@"errorCode" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"errorDomain";
  v3 = [(HMDMediaDestinationManagerFailureEvent *)self errorDomain];
  v10[0] = v3;
  v9[1] = @"errorCode";
  v4 = [(HMDMediaDestinationManagerFailureEvent *)self errorCode];
  v10[1] = v4;
  v9[2] = @"failureCode";
  v5 = [(HMDMediaDestinationManagerFailureEvent *)self failureCode];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDMediaDestinationManagerFailureEvent)initWithFailureCode:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v18.receiver = self;
    v18.super_class = HMDMediaDestinationManagerFailureEvent;
    v8 = [(HMMLogEvent *)&v18 init];
    if (v8)
    {
      v9 = [v7 domain];
      errorDomain = v8->_errorDomain;
      v8->_errorDomain = v9;

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      errorCode = v8->_errorCode;
      v8->_errorCode = v11;

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      failureCode = v8->_failureCode;
      v8->_failureCode = v13;
    }

    return v8;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    [(HMDCameraSnapshotRequestHandler *)v16 .cxx_destruct];
  }

  return result;
}

@end