@interface HMDCameraSessionID
+ (NSNumber)uptimeNumberInMilliseconds;
+ (id)hostProcessBundleIdentifierForMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (HMDCameraSessionID)initWithSessionID:(id)d hostProcessBundleIdentifier:(id)identifier isSPIClient:(BOOL)client deviceSectionName:(id)name description:(id)description;
- (HMDCameraSessionID)initWithSessionID:(id)d message:(id)message description:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addParameterFor:(id)for value:(id)value;
- (void)markMilestoneFor:(id)for;
- (void)markMilestoneFor:(id)for withTimestamp:(id)timestamp;
- (void)markMilestoneForPath:(id)path;
- (void)setParameterFor:(id)for value:(id)value;
- (void)setParameterForPath:(id)path value:(id)value;
@end

@implementation HMDCameraSessionID

- (void)addParameterFor:(id)for value:(id)value
{
  forCopy = for;
  valueCopy = value;
  deviceMilestones = [(HMDCameraSessionID *)self deviceMilestones];
  v8 = [deviceMilestones objectForKeyedSubscript:forCopy];

  if (!v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    deviceMilestones2 = [(HMDCameraSessionID *)self deviceMilestones];
    [deviceMilestones2 setObject:array forKeyedSubscript:forCopy];
  }

  deviceMilestones3 = [(HMDCameraSessionID *)self deviceMilestones];
  v12 = [deviceMilestones3 objectForKeyedSubscript:forCopy];
  [v12 addObject:valueCopy];
}

- (void)setParameterForPath:(id)path value:(id)value
{
  valueCopy = value;
  pathCopy = path;
  deviceMilestones = [(HMDCameraSessionID *)self deviceMilestones];
  firstObject = [pathCopy firstObject];
  v11 = [deviceMilestones objectForKeyedSubscript:firstObject];

  lastObject = [pathCopy lastObject];

  [v11 setObject:valueCopy forKeyedSubscript:lastObject];
}

- (void)setParameterFor:(id)for value:(id)value
{
  valueCopy = value;
  forCopy = for;
  deviceMilestones = [(HMDCameraSessionID *)self deviceMilestones];
  [deviceMilestones setObject:valueCopy forKeyedSubscript:forCopy];
}

- (void)markMilestoneForPath:(id)path
{
  pathCopy = path;
  deviceMilestones = [(HMDCameraSessionID *)self deviceMilestones];
  firstObject = [pathCopy firstObject];
  dictionary = [deviceMilestones objectForKeyedSubscript:firstObject];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    deviceMilestones2 = [(HMDCameraSessionID *)self deviceMilestones];
    firstObject2 = [pathCopy firstObject];
    [deviceMilestones2 setObject:dictionary forKeyedSubscript:firstObject2];
  }

  uptimeNumberInMilliseconds = [objc_opt_class() uptimeNumberInMilliseconds];
  lastObject = [pathCopy lastObject];
  [dictionary setObject:uptimeNumberInMilliseconds forKeyedSubscript:lastObject];
}

- (void)markMilestoneFor:(id)for withTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  forCopy = for;
  deviceMilestones = [(HMDCameraSessionID *)self deviceMilestones];
  [deviceMilestones setObject:timestampCopy forKeyedSubscript:forCopy];
}

- (void)markMilestoneFor:(id)for
{
  forCopy = for;
  uptimeNumberInMilliseconds = [objc_opt_class() uptimeNumberInMilliseconds];
  [(HMDCameraSessionID *)self markMilestoneFor:forCopy withTimestamp:uptimeNumberInMilliseconds];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sessionID = [(HMDCameraSessionID *)self sessionID];
  hostProcessBundleIdentifier = [(HMDCameraSessionID *)self hostProcessBundleIdentifier];
  isSPIClient = [(HMDCameraSessionID *)self isSPIClient];
  deviceSectionName = [(HMDCameraSessionID *)self deviceSectionName];
  v9 = [(HMDCameraSessionID *)self description];
  v10 = [v4 initWithSessionID:sessionID hostProcessBundleIdentifier:hostProcessBundleIdentifier isSPIClient:isSPIClient deviceSectionName:deviceSectionName description:v9];

  return v10;
}

- (unint64_t)hash
{
  sessionID = [(HMDCameraSessionID *)self sessionID];
  v3 = [sessionID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sessionID = [(HMDCameraSessionID *)self sessionID];
      sessionID2 = [(HMDCameraSessionID *)equalCopy sessionID];
      v7 = [sessionID isEqualToString:sessionID2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (HMDCameraSessionID)initWithSessionID:(id)d hostProcessBundleIdentifier:(id)identifier isSPIClient:(BOOL)client deviceSectionName:(id)name description:(id)description
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!identifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = descriptionCopy;
  if (!descriptionCopy)
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
    objc_storeStrong(&v18->_sessionID, d);
    v20 = [identifierCopy copy];
    hostProcessBundleIdentifier = v19->_hostProcessBundleIdentifier;
    v19->_hostProcessBundleIdentifier = v20;

    v19->_spiClient = client;
    v22 = [nameCopy copy];
    deviceSectionName = v19->_deviceSectionName;
    v19->_deviceSectionName = v22;

    v24 = [v17 copy];
    description = v19->_description;
    v19->_description = v24;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    deviceMilestones = v19->_deviceMilestones;
    v19->_deviceMilestones = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    milestones = v19->_milestones;
    v19->_milestones = dictionary2;

    [(NSMutableDictionary *)v19->_milestones setObject:v19->_deviceMilestones forKeyedSubscript:v19->_deviceSectionName];
  }

  return v19;
}

- (HMDCameraSessionID)initWithSessionID:(id)d message:(id)message description:(id)description
{
  dCopy = d;
  messageCopy = message;
  descriptionCopy = description;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!messageCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v11 = descriptionCopy;
  if (!descriptionCopy)
  {
LABEL_14:
    v18 = _HMFPreconditionFailure();
    return +[(HMDCameraSessionID *)v18];
  }

  v12 = [HMDCameraSessionID hostProcessBundleIdentifierForMessage:messageCopy];
  isEntitledForSPIAccess = [messageCopy isEntitledForSPIAccess];
  if (isWatch())
  {
    v14 = kCameraWatch;
  }

  else if (isTVOSDevice() || isiPadDevice() && ([messageCopy isRemote] & 1) != 0)
  {
    v14 = kCameraResident;
  }

  else
  {
    v14 = &kCameraController;
  }

  v15 = *v14;
  v16 = [(HMDCameraSessionID *)self initWithSessionID:dCopy hostProcessBundleIdentifier:v12 isSPIClient:isEntitledForSPIAccess deviceSectionName:v15 description:v11];

  return v16;
}

+ (NSNumber)uptimeNumberInMilliseconds
{
  v2 = MEMORY[0x277CCABB0];
  uptimeInMilliseconds = [self uptimeInMilliseconds];

  return [v2 numberWithInteger:uptimeInMilliseconds];
}

+ (id)hostProcessBundleIdentifierForMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy stringForKey:@"kCameraSessionApplicationID"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    goto LABEL_14;
  }

  companionAppBundleIdentifier = [messageCopy companionAppBundleIdentifier];
  if (companionAppBundleIdentifier)
  {
    v6 = companionAppBundleIdentifier;
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
    clientIdentifier = [messageCopy clientIdentifier];
    v9 = clientIdentifier;
    v11 = @"kDefaultCameraApplicationIdentifier";
    if (clientIdentifier)
    {
      v11 = clientIdentifier;
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