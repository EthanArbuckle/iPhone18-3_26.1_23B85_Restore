@interface HMDCloudManagerModelFailureEvent
- (HMDCloudManagerModelFailureEvent)initWithModel:(id)model failureCode:(unint64_t)code error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudManagerModelFailureEvent

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMDCloudManagerModelFailureEvent *)self model];
  v5 = [v3 initWithName:@"model" value:model];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  failureCode = [(HMDCloudManagerModelFailureEvent *)self failureCode];
  v8 = [v6 initWithName:@"failureCode" value:failureCode];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  errorDomain = [(HMDCloudManagerModelFailureEvent *)self errorDomain];
  v11 = [v9 initWithName:@"errorDomain" value:errorDomain];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  errorCode = [(HMDCloudManagerModelFailureEvent *)self errorCode];
  v14 = [v12 initWithName:@"errorCode" value:errorCode];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"modelClass";
  model = [(HMDCloudManagerModelFailureEvent *)self model];
  v11[0] = model;
  v10[1] = @"failureCode";
  failureCode = [(HMDCloudManagerModelFailureEvent *)self failureCode];
  v11[1] = failureCode;
  v10[2] = @"errorDomain";
  errorDomain = [(HMDCloudManagerModelFailureEvent *)self errorDomain];
  v11[2] = errorDomain;
  v10[3] = @"errorCode";
  errorCode = [(HMDCloudManagerModelFailureEvent *)self errorCode];
  v11[3] = errorCode;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDCloudManagerModelFailureEvent)initWithModel:(id)model failureCode:(unint64_t)code error:(id)error
{
  modelCopy = model;
  errorCopy = error;
  if (!modelCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = errorCopy;
  if (!errorCopy)
  {
LABEL_7:
    v21 = _HMFPreconditionFailure();
    [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)v21 .cxx_destruct];
    return result;
  }

  v23.receiver = self;
  v23.super_class = HMDCloudManagerModelFailureEvent;
  v12 = [(HMMLogEvent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, model);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
    failureCode = v13->_failureCode;
    v13->_failureCode = v14;

    domain = [v11 domain];
    errorDomain = v13->_errorDomain;
    v13->_errorDomain = domain;

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
    errorCode = v13->_errorCode;
    v13->_errorCode = v18;
  }

  return v13;
}

@end