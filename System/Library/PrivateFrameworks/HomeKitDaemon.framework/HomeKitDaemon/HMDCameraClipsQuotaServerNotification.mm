@interface HMDCameraClipsQuotaServerNotification
- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)a3 reason:(int64_t)a4 requestID:(id)a5 userDSID:(id)a6;
- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation HMDCameraClipsQuotaServerNotification

- (NSDictionary)dictionaryRepresentation
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ([(HMDCameraClipsQuotaServerNotification *)self reason]== 1)
  {
    v3 = @"allCamerasDisabled";
  }

  else
  {
    v3 = 0;
  }

  v13 = @"hk";
  v11[0] = @"c";
  v4 = [(HMDCameraClipsQuotaServerNotification *)self containerIdentifier];
  v12[0] = v4;
  v12[1] = v3;
  v11[1] = @"f";
  v11[2] = @"r";
  v5 = [(HMDCameraClipsQuotaServerNotification *)self requestID];
  v12[2] = v5;
  v11[3] = @"u";
  v6 = [(HMDCameraClipsQuotaServerNotification *)self userDSID];
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"hk"];
  v5 = [v4 objectForKeyedSubscript:@"c"];
  v6 = [v4 objectForKeyedSubscript:@"f"];
  v7 = [v4 objectForKeyedSubscript:@"r"];
  v8 = [v4 objectForKeyedSubscript:@"u"];
  v9 = v8;
  v10 = 0;
  if (v5 && v6 && v7 && v8)
  {
    if ([v6 isEqualToString:@"allCamerasDisabled"])
    {
      self = [(HMDCameraClipsQuotaServerNotification *)self initWithContainerIdentifier:v5 reason:1 requestID:v7 userDSID:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)a3 reason:(int64_t)a4 requestID:(id)a5 userDSID:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v18 = _HMFPreconditionFailure();
    return [(HMDHome *)v18 _deviceEligibleForDarkPoll];
  }

  v20.receiver = self;
  v20.super_class = HMDCameraClipsQuotaServerNotification;
  v15 = [(HMDCameraClipsQuotaServerNotification *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerIdentifier, a3);
    v16->_reason = a4;
    objc_storeStrong(&v16->_requestID, a5);
    objc_storeStrong(&v16->_userDSID, a6);
  }

  return v16;
}

@end