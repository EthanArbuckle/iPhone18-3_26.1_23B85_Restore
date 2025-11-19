@interface HMDCloudShareTrustManagerFailureLogEvent
- (HMDCloudShareTrustManagerFailureLogEvent)initWithTrustManagerErrorCode:(int64_t)a3 error:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCloudShareTrustManagerFailureLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"trustManagerErrorCode";
  v3 = [(HMDCloudShareTrustManagerFailureLogEvent *)self trustManagerErrorCode];
  v13[0] = v3;
  v12[1] = @"errorCode";
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMMLogEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "code")}];
  v13[1] = v6;
  v12[2] = @"errorDomain";
  v7 = [(HMMLogEvent *)self error];
  v8 = [v7 domain];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCloudShareTrustManagerFailureLogEvent)initWithTrustManagerErrorCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v19.receiver = self;
    v19.super_class = HMDCloudShareTrustManagerFailureLogEvent;
    v8 = [(HMMLogEvent *)&v19 init];
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      trustManagerErrorCode = v8->_trustManagerErrorCode;
      v8->_trustManagerErrorCode = v9;

      v11 = [v7 domain];

      if (v11)
      {
        [(HMMLogEvent *)v8 setError:v7];
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = [v7 code];
        v14 = [v7 userInfo];
        v15 = [v12 errorWithDomain:@"<No Domain>" code:v13 userInfo:v14];
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