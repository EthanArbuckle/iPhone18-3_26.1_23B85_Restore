@interface HMDCameraClipsQuotaServerNotification
- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)identifier reason:(int64_t)reason requestID:(id)d userDSID:(id)iD;
- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)representation;
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
  containerIdentifier = [(HMDCameraClipsQuotaServerNotification *)self containerIdentifier];
  v12[0] = containerIdentifier;
  v12[1] = v3;
  v11[1] = @"f";
  v11[2] = @"r";
  requestID = [(HMDCameraClipsQuotaServerNotification *)self requestID];
  v12[2] = requestID;
  v11[3] = @"u";
  userDSID = [(HMDCameraClipsQuotaServerNotification *)self userDSID];
  v12[3] = userDSID;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"hk"];
  v5 = [v4 objectForKeyedSubscript:@"c"];
  v6 = [v4 objectForKeyedSubscript:@"f"];
  v7 = [v4 objectForKeyedSubscript:@"r"];
  v8 = [v4 objectForKeyedSubscript:@"u"];
  v9 = v8;
  selfCopy = 0;
  if (v5 && v6 && v7 && v8)
  {
    if ([v6 isEqualToString:@"allCamerasDisabled"])
    {
      self = [(HMDCameraClipsQuotaServerNotification *)self initWithContainerIdentifier:v5 reason:1 requestID:v7 userDSID:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)identifier reason:(int64_t)reason requestID:(id)d userDSID:(id)iD
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!reason)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v18 = _HMFPreconditionFailure();
    return [(HMDMetricsUtilities *)v18 shouldRedactBundleID:v19 isInternalBuild:v20, v21];
  }

  v22.receiver = self;
  v22.super_class = HMDCameraClipsQuotaServerNotification;
  v15 = [(HMDCameraClipsQuotaServerNotification *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerIdentifier, identifier);
    v16->_reason = reason;
    objc_storeStrong(&v16->_requestID, d);
    objc_storeStrong(&v16->_userDSID, iD);
  }

  return v16;
}

@end