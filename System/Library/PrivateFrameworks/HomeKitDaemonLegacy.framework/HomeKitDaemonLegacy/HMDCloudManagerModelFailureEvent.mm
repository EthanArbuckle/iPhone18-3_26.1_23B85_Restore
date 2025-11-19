@interface HMDCloudManagerModelFailureEvent
- (HMDCloudManagerModelFailureEvent)initWithModel:(id)a3 failureCode:(unint64_t)a4 error:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudManagerModelFailureEvent

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCloudManagerModelFailureEvent *)self model];
  v5 = [v3 initWithName:@"model" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCloudManagerModelFailureEvent *)self failureCode];
  v8 = [v6 initWithName:@"failureCode" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCloudManagerModelFailureEvent *)self errorDomain];
  v11 = [v9 initWithName:@"errorDomain" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCloudManagerModelFailureEvent *)self errorCode];
  v14 = [v12 initWithName:@"errorCode" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"modelClass";
  v3 = [(HMDCloudManagerModelFailureEvent *)self model];
  v11[0] = v3;
  v10[1] = @"failureCode";
  v4 = [(HMDCloudManagerModelFailureEvent *)self failureCode];
  v11[1] = v4;
  v10[2] = @"errorDomain";
  v5 = [(HMDCloudManagerModelFailureEvent *)self errorDomain];
  v11[2] = v5;
  v10[3] = @"errorCode";
  v6 = [(HMDCloudManagerModelFailureEvent *)self errorCode];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDCloudManagerModelFailureEvent)initWithModel:(id)a3 failureCode:(unint64_t)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v21 = _HMFPreconditionFailure();
    [(HMDMediaGroupsLocalDataStorage *)v21 .cxx_destruct];
    return result;
  }

  v23.receiver = self;
  v23.super_class = HMDCloudManagerModelFailureEvent;
  v12 = [(HMMLogEvent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, a3);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    failureCode = v13->_failureCode;
    v13->_failureCode = v14;

    v16 = [v11 domain];
    errorDomain = v13->_errorDomain;
    v13->_errorDomain = v16;

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
    errorCode = v13->_errorCode;
    v13->_errorCode = v18;
  }

  return v13;
}

@end