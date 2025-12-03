@interface HMDCloudShareTrustManagerFailureLogEvent
- (HMDCloudShareTrustManagerFailureLogEvent)initWithTrustManagerErrorCode:(int64_t)code error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCloudShareTrustManagerFailureLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"trustManagerErrorCode";
  trustManagerErrorCode = [(HMDCloudShareTrustManagerFailureLogEvent *)self trustManagerErrorCode];
  v13[0] = trustManagerErrorCode;
  v12[1] = @"errorCode";
  v4 = MEMORY[0x277CCABB0];
  error = [(HMMLogEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(error, "code")}];
  v13[1] = v6;
  v12[2] = @"errorDomain";
  error2 = [(HMMLogEvent *)self error];
  domain = [error2 domain];
  v13[2] = domain;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCloudShareTrustManagerFailureLogEvent)initWithTrustManagerErrorCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v19.receiver = self;
    v19.super_class = HMDCloudShareTrustManagerFailureLogEvent;
    v8 = [(HMMLogEvent *)&v19 init];
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:code];
      trustManagerErrorCode = v8->_trustManagerErrorCode;
      v8->_trustManagerErrorCode = v9;

      domain = [v7 domain];

      if (domain)
      {
        [(HMMLogEvent *)v8 setError:v7];
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        code = [v7 code];
        userInfo = [v7 userInfo];
        v15 = [v12 errorWithDomain:@"<No Domain>" code:code userInfo:userInfo];
        [(HMMLogEvent *)v8 setError:v15];
      }
    }

    return v8;
  }

  else
  {
    v17 = _HMFPreconditionFailure();
    [(HMDUserCloudShareOwnerAdoptionDailyEvent *)v17 .cxx_destruct];
  }

  return result;
}

@end