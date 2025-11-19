@interface HMDCameraSessionID
+ (NSNumber)uptimeNumberInMilliseconds;
+ (id)hostProcessBundleIdentifierForMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDCameraSessionID)initWithSessionID:(id)a3 hostProcessBundleIdentifier:(id)a4 isSPIClient:(BOOL)a5 deviceSectionName:(id)a6 description:(id)a7;
- (HMDCameraSessionID)initWithSessionID:(id)a3 message:(id)a4 description:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addParameterFor:(id)a3 value:(id)a4;
- (void)markMilestoneFor:(id)a3;
- (void)markMilestoneFor:(id)a3 withTimestamp:(id)a4;
- (void)markMilestoneForPath:(id)a3;
- (void)setParameterFor:(id)a3 value:(id)a4;
- (void)setParameterForPath:(id)a3 value:(id)a4;
@end

@implementation HMDCameraSessionID

- (void)addParameterFor:(id)a3 value:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(HMDCameraSessionID *)self deviceMilestones];
  v8 = [v7 objectForKeyedSubscript:v13];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [(HMDCameraSessionID *)self deviceMilestones];
    [v10 setObject:v9 forKeyedSubscript:v13];
  }

  v11 = [(HMDCameraSessionID *)self deviceMilestones];
  v12 = [v11 objectForKeyedSubscript:v13];
  [v12 addObject:v6];
}

- (void)setParameterForPath:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraSessionID *)self deviceMilestones];
  v9 = [v7 firstObject];
  v11 = [v8 objectForKeyedSubscript:v9];

  v10 = [v7 lastObject];

  [v11 setObject:v6 forKeyedSubscript:v10];
}

- (void)setParameterFor:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraSessionID *)self deviceMilestones];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (void)markMilestoneForPath:(id)a3
{
  v11 = a3;
  v4 = [(HMDCameraSessionID *)self deviceMilestones];
  v5 = [v11 firstObject];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [(HMDCameraSessionID *)self deviceMilestones];
    v8 = [v11 firstObject];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [objc_opt_class() uptimeNumberInMilliseconds];
  v10 = [v11 lastObject];
  [v6 setObject:v9 forKeyedSubscript:v10];
}

- (void)markMilestoneFor:(id)a3 withTimestamp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraSessionID *)self deviceMilestones];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (void)markMilestoneFor:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() uptimeNumberInMilliseconds];
  [(HMDCameraSessionID *)self markMilestoneFor:v4 withTimestamp:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HMDCameraSessionID *)self sessionID];
  v6 = [(HMDCameraSessionID *)self hostProcessBundleIdentifier];
  v7 = [(HMDCameraSessionID *)self isSPIClient];
  v8 = [(HMDCameraSessionID *)self deviceSectionName];
  v9 = [(HMDCameraSessionID *)self description];
  v10 = [v4 initWithSessionID:v5 hostProcessBundleIdentifier:v6 isSPIClient:v7 deviceSectionName:v8 description:v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDCameraSessionID *)self sessionID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDCameraSessionID *)self sessionID];
      v6 = [(HMDCameraSessionID *)v4 sessionID];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (HMDCameraSessionID)initWithSessionID:(id)a3 hostProcessBundleIdentifier:(id)a4 isSPIClient:(BOOL)a5 deviceSectionName:(id)a6 description:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_11:
    v31 = _HMFPreconditionFailure();
    return [(HMDCameraSessionID *)v31 initWithSessionID:v32 message:v33 description:v34, v35];
  }

  v36.receiver = self;
  v36.super_class = HMDCameraSessionID;
  v18 = [(HMDCameraSessionID *)&v36 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, a3);
    v20 = [v14 copy];
    hostProcessBundleIdentifier = v19->_hostProcessBundleIdentifier;
    v19->_hostProcessBundleIdentifier = v20;

    v19->_spiClient = a5;
    v22 = [v15 copy];
    deviceSectionName = v19->_deviceSectionName;
    v19->_deviceSectionName = v22;

    v24 = [v17 copy];
    description = v19->_description;
    v19->_description = v24;

    v26 = [MEMORY[0x277CBEB38] dictionary];
    deviceMilestones = v19->_deviceMilestones;
    v19->_deviceMilestones = v26;

    v28 = [MEMORY[0x277CBEB38] dictionary];
    milestones = v19->_milestones;
    v19->_milestones = v28;

    [(NSMutableDictionary *)v19->_milestones setObject:v19->_deviceMilestones forKeyedSubscript:v19->_deviceSectionName];
  }

  return v19;
}

- (HMDCameraSessionID)initWithSessionID:(id)a3 message:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v9)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_14:
    v18 = _HMFPreconditionFailure();
    return +[(HMDCameraSessionID *)v18];
  }

  v12 = [HMDCameraSessionID hostProcessBundleIdentifierForMessage:v9];
  v13 = [v9 isEntitledForSPIAccess];
  if (isWatch())
  {
    v14 = kCameraWatch;
  }

  else if (isTVOSDevice() || isiPadDevice() && ([v9 isRemote] & 1) != 0)
  {
    v14 = kCameraResident;
  }

  else
  {
    v14 = &kCameraController;
  }

  v15 = *v14;
  v16 = [(HMDCameraSessionID *)self initWithSessionID:v8 hostProcessBundleIdentifier:v12 isSPIClient:v13 deviceSectionName:v15 description:v11];

  return v16;
}

+ (NSNumber)uptimeNumberInMilliseconds
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a1 uptimeInMilliseconds];

  return [v2 numberWithInteger:v3];
}

+ (id)hostProcessBundleIdentifierForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 stringForKey:@"kCameraSessionApplicationID"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    goto LABEL_14;
  }

  v7 = [v3 companionAppBundleIdentifier];
  if (v7)
  {
    v6 = v7;
    if (!isWatch())
    {
      goto LABEL_14;
    }

    if (hostProcessBundleIdentifierForMessage__onceToken != -1)
    {
      dispatch_once(&hostProcessBundleIdentifierForMessage__onceToken, &__block_literal_global_256074);
    }

    v8 = [hostProcessBundleIdentifierForMessage__companionAppBundleIdentifierOverrides objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;

      v6 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v3 clientIdentifier];
    v9 = v10;
    v11 = @"kDefaultCameraApplicationIdentifier";
    if (v10)
    {
      v11 = v10;
    }

    v6 = v11;
  }

LABEL_14:

  return v6;
}

void __60__HMDCameraSessionID_hostProcessBundleIdentifierForMessage___block_invoke()
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:*MEMORY[0x277CCFE40] forKeyedSubscript:*MEMORY[0x277CD09C8]];
  v0 = [v2 copy];
  v1 = hostProcessBundleIdentifierForMessage__companionAppBundleIdentifierOverrides;
  hostProcessBundleIdentifierForMessage__companionAppBundleIdentifierOverrides = v0;
}

@end