@interface HMDResidentSelectionPrimaryResidentChangedLogEvent
+ (id)denominatorEvent:(id)event residentSelectionMode:(unint64_t)mode;
- (HMDResidentSelectionPrimaryResidentChangedLogEvent)initWithPrimaryResidentDidChange:(BOOL)change isElectedDevicePreferred:(BOOL)preferred isCurrentDevicePrimary:(BOOL)primary isCurrentDevicePreferred:(BOOL)devicePreferred isPreviousPrimaryRev2:(BOOL)rev2 isElectedDeviceLatestSWVersionInHome:(BOOL)home residentSelectionMode:(unint64_t)mode triggerReason:(unint64_t)self0 numResidentsREV3Capable:(unint64_t)self1 numResidentsREV3Incompatible:(unint64_t)self2 minimumVersionInHome:(id)self3 minimumParticipatingtvOS17Version:(id)self4 minimumParticipatingAllVersion:(id)self5 minimumParticipatingtvOS18Version:(id)self6 homeUUID:(id)self7;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDResidentSelectionPrimaryResidentChangedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"primaryResidentChangedCount"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent residentSelectionMode](self, "residentSelectionMode")}];
  [dictionary setObject:v5 forKeyedSubscript:@"residentSelectionMode"];

  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode])
  {
    v6 = &unk_283E71E28;
  }

  else
  {
    v6 = &unk_283E71E10;
  }

  [dictionary setObject:v6 forKeyedSubscript:@"RSModeUnknown_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 3)
  {
    v7 = &unk_283E71E10;
  }

  else
  {
    v7 = &unk_283E71E28;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"RSModeAuto_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 2)
  {
    v8 = &unk_283E71E10;
  }

  else
  {
    v8 = &unk_283E71E28;
  }

  [dictionary setObject:v8 forKeyedSubscript:@"RSModeManual_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 1)
  {
    v9 = &unk_283E71E10;
  }

  else
  {
    v9 = &unk_283E71E28;
  }

  [dictionary setObject:v9 forKeyedSubscript:@"RSModeCoordination_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self count])
  {
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isElectedDevicePreferred])
    {
      v10 = &unk_283E71E28;
    }

    else
    {
      v10 = &unk_283E71E10;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"primaryResidentNotPreferred_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isElectedDeviceLatestSWVersionInHome])
    {
      v11 = &unk_283E71E28;
    }

    else
    {
      v11 = &unk_283E71E10;
    }

    [dictionary setObject:v11 forKeyedSubscript:@"primaryResidentNotLatestSWVersion_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isPreviousPrimaryRev2])
    {
      v12 = &unk_283E71E10;
    }

    else
    {
      v12 = &unk_283E71E28;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"previousPrimaryREV2_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isCurrentDevicePrimary])
    {
      v13 = &unk_283E71E10;
    }

    else
    {
      v13 = &unk_283E71E28;
    }

    [dictionary setObject:v13 forKeyedSubscript:@"isCurrentDevicePrimary_LAST"];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isCurrentDevicePrimary](self, "isCurrentDevicePrimary")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isCurrentDevicePrimary_BOOL"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isCurrentDevicePreferred](self, "isCurrentDevicePreferred")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isCurrentDevicePreferred_BOOL"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isElectedDeviceLatestSWVersionInHome](self, "isElectedDeviceLatestSWVersionInHome")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isPrimaryResidentLatestSWVersion_BOOL"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isPreviousPrimaryRev2](self, "isPreviousPrimaryRev2")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isPreviousPrimaryREV2_BOOL"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent triggerReason](self, "triggerReason")}];
    [dictionary setObject:v18 forKeyedSubscript:@"triggerReason"];

    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason])
    {
      v19 = &unk_283E71E28;
    }

    else
    {
      v19 = &unk_283E71E10;
    }

    [dictionary setObject:v19 forKeyedSubscript:@"changeReasonUnknown_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 1)
    {
      v20 = &unk_283E71E10;
    }

    else
    {
      v20 = &unk_283E71E28;
    }

    [dictionary setObject:v20 forKeyedSubscript:@"changeReasonManual_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 2)
    {
      v21 = &unk_283E71E10;
    }

    else
    {
      v21 = &unk_283E71E28;
    }

    [dictionary setObject:v21 forKeyedSubscript:@"changeReasonAuto_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 3)
    {
      v22 = &unk_283E71E10;
    }

    else
    {
      v22 = &unk_283E71E28;
    }

    [dictionary setObject:v22 forKeyedSubscript:@"changeReasonReachability_INT"];
    minimumVersionInHome = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (minimumVersionInHome)
    {
      minimumVersionInHome2 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
      shortVersionString = [minimumVersionInHome2 shortVersionString];
      [dictionary setObject:shortVersionString forKeyedSubscript:@"minimumVersionInHomeVersionString"];

      minimumVersionInHome3 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
      buildVersion = [minimumVersionInHome3 buildVersion];
      [dictionary setObject:buildVersion forKeyedSubscript:@"minimumVersionInHomeBuildString"];
    }

    minimumParticipatingtvOS17Version = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];

    if (minimumParticipatingtvOS17Version)
    {
      minimumParticipatingtvOS17Version2 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
      shortVersionString2 = [minimumParticipatingtvOS17Version2 shortVersionString];
      [dictionary setObject:shortVersionString2 forKeyedSubscript:@"minimumParticipatingtvOS17VersionString"];

      minimumParticipatingtvOS17Version3 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
      buildVersion2 = [minimumParticipatingtvOS17Version3 buildVersion];
      [dictionary setObject:buildVersion2 forKeyedSubscript:@"minimumParticipatingtvOS17BuildString"];
    }

    minimumVersionInHome4 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (minimumVersionInHome4)
    {
      minimumParticipatingAllVersion = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
      shortVersionString3 = [minimumParticipatingAllVersion shortVersionString];
      [dictionary setObject:shortVersionString3 forKeyedSubscript:@"minimumParticipatingAllVersionString"];

      minimumParticipatingAllVersion2 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
      buildVersion3 = [minimumParticipatingAllVersion2 buildVersion];
      [dictionary setObject:buildVersion3 forKeyedSubscript:@"minimumParticipatingAllBuildString"];
    }

    minimumVersionInHome5 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (minimumVersionInHome5)
    {
      minimumParticipatingtvOS18Version = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
      shortVersionString4 = [minimumParticipatingtvOS18Version shortVersionString];
      [dictionary setObject:shortVersionString4 forKeyedSubscript:@"minimumParticipatingtvOS18VersionString"];

      minimumParticipatingtvOS18Version2 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
      buildVersion4 = [minimumParticipatingtvOS18Version2 buildVersion];
      [dictionary setObject:buildVersion4 forKeyedSubscript:@"minimumParticipatingtvOS18BuildString"];
    }
  }

  return dictionary;
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isElectedDevicePreferred];
  v17 = HMFBooleanToString();
  [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isElectedDeviceLatestSWVersionInHome];
  v16 = HMFBooleanToString();
  [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isCurrentDevicePrimary];
  v15 = HMFBooleanToString();
  [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isCurrentDevicePreferred];
  v3 = HMFBooleanToString();
  [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isPreviousPrimaryRev2];
  v4 = HMFBooleanToString();
  residentSelectionMode = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode];
  triggerReason = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason];
  numResidentsREV3Capable = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self numResidentsREV3Capable];
  numResidentsREV3Incompatible = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self numResidentsREV3Incompatible];
  minimumVersionInHome = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
  minimumParticipatingtvOS17Version = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
  minimumParticipatingAllVersion = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
  minimumParticipatingtvOS18Version = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
  v13 = [v18 stringWithFormat:@"isElectedDevicePreferred: %@ isElectedDeviceLatestSWVersionInHome: %@, isCurrentDevicePrimary: %@, isCurrentDevicePreferred: %@, isPreviousPrimaryREV2: %@, residentSelectionMode: %lu, triggerReason: %lu, numResidentsREV3Capable %lu, numResidentsREV3Incompatible: %lu, minimumVersionInHome: %@, minimumParticipatingtvOS17Version: %@, minimumParticipatingAllVersion: %@, minimumParticipatingtvOS18Version: %@", v17, v16, v15, v3, v4, residentSelectionMode, triggerReason, numResidentsREV3Capable, numResidentsREV3Incompatible, minimumVersionInHome, minimumParticipatingtvOS17Version, minimumParticipatingAllVersion, minimumParticipatingtvOS18Version];

  return v13;
}

- (HMDResidentSelectionPrimaryResidentChangedLogEvent)initWithPrimaryResidentDidChange:(BOOL)change isElectedDevicePreferred:(BOOL)preferred isCurrentDevicePrimary:(BOOL)primary isCurrentDevicePreferred:(BOOL)devicePreferred isPreviousPrimaryRev2:(BOOL)rev2 isElectedDeviceLatestSWVersionInHome:(BOOL)home residentSelectionMode:(unint64_t)mode triggerReason:(unint64_t)self0 numResidentsREV3Capable:(unint64_t)self1 numResidentsREV3Incompatible:(unint64_t)self2 minimumVersionInHome:(id)self3 minimumParticipatingtvOS17Version:(id)self4 minimumParticipatingAllVersion:(id)self5 minimumParticipatingtvOS18Version:(id)self6 homeUUID:(id)self7
{
  changeCopy = change;
  inHomeCopy = inHome;
  versionCopy = version;
  allVersionCopy = allVersion;
  s18VersionCopy = s18Version;
  v31.receiver = self;
  v31.super_class = HMDResidentSelectionPrimaryResidentChangedLogEvent;
  v22 = [(HMMHomeLogEvent *)&v31 initWithHomeUUID:d];
  v23 = v22;
  if (v22)
  {
    v22->_count = changeCopy;
    v22->_isElectedDevicePreferred = preferred;
    v22->_isCurrentDevicePrimary = primary;
    v22->_isCurrentDevicePreferred = devicePreferred;
    v22->_isPreviousPrimaryRev2 = rev2;
    v22->_isElectedDeviceLatestSWVersionInHome = home;
    v22->_residentSelectionMode = mode;
    v22->_triggerReason = reason;
    v22->_numResidentsREV3Capable = capable;
    v22->_numResidentsREV3Incompatible = incompatible;
    objc_storeStrong(&v22->_minimumVersionInHome, inHome);
    objc_storeStrong(&v23->_minimumParticipatingtvOS17Version, version);
    objc_storeStrong(&v23->_minimumParticipatingAllVersion, allVersion);
    objc_storeStrong(&v23->_minimumParticipatingtvOS18Version, s18Version);
  }

  return v23;
}

+ (id)denominatorEvent:(id)event residentSelectionMode:(unint64_t)mode
{
  eventCopy = event;
  v6 = [objc_alloc(objc_opt_class()) initDenominatorEvent:eventCopy residentSelectionMode:mode];

  return v6;
}

@end