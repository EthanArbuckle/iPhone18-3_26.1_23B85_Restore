@interface HMDResidentSelectionPrimaryResidentChangedLogEvent
+ (id)denominatorEvent:(id)a3 residentSelectionMode:(unint64_t)a4;
- (HMDResidentSelectionPrimaryResidentChangedLogEvent)initWithPrimaryResidentDidChange:(BOOL)a3 isElectedDevicePreferred:(BOOL)a4 isCurrentDevicePrimary:(BOOL)a5 isCurrentDevicePreferred:(BOOL)a6 isPreviousPrimaryRev2:(BOOL)a7 isElectedDeviceLatestSWVersionInHome:(BOOL)a8 residentSelectionMode:(unint64_t)a9 triggerReason:(unint64_t)a10 numResidentsREV3Capable:(unint64_t)a11 numResidentsREV3Incompatible:(unint64_t)a12 minimumVersionInHome:(id)a13 minimumParticipatingtvOS17Version:(id)a14 minimumParticipatingAllVersion:(id)a15 minimumParticipatingtvOS18Version:(id)a16 homeUUID:(id)a17;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDResidentSelectionPrimaryResidentChangedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"primaryResidentChangedCount"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent residentSelectionMode](self, "residentSelectionMode")}];
  [v3 setObject:v5 forKeyedSubscript:@"residentSelectionMode"];

  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode])
  {
    v6 = &unk_283E71E28;
  }

  else
  {
    v6 = &unk_283E71E10;
  }

  [v3 setObject:v6 forKeyedSubscript:@"RSModeUnknown_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 3)
  {
    v7 = &unk_283E71E10;
  }

  else
  {
    v7 = &unk_283E71E28;
  }

  [v3 setObject:v7 forKeyedSubscript:@"RSModeAuto_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 2)
  {
    v8 = &unk_283E71E10;
  }

  else
  {
    v8 = &unk_283E71E28;
  }

  [v3 setObject:v8 forKeyedSubscript:@"RSModeManual_INT"];
  if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode]== 1)
  {
    v9 = &unk_283E71E10;
  }

  else
  {
    v9 = &unk_283E71E28;
  }

  [v3 setObject:v9 forKeyedSubscript:@"RSModeCoordination_INT"];
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

    [v3 setObject:v10 forKeyedSubscript:@"primaryResidentNotPreferred_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isElectedDeviceLatestSWVersionInHome])
    {
      v11 = &unk_283E71E28;
    }

    else
    {
      v11 = &unk_283E71E10;
    }

    [v3 setObject:v11 forKeyedSubscript:@"primaryResidentNotLatestSWVersion_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isPreviousPrimaryRev2])
    {
      v12 = &unk_283E71E10;
    }

    else
    {
      v12 = &unk_283E71E28;
    }

    [v3 setObject:v12 forKeyedSubscript:@"previousPrimaryREV2_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self isCurrentDevicePrimary])
    {
      v13 = &unk_283E71E10;
    }

    else
    {
      v13 = &unk_283E71E28;
    }

    [v3 setObject:v13 forKeyedSubscript:@"isCurrentDevicePrimary_LAST"];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isCurrentDevicePrimary](self, "isCurrentDevicePrimary")}];
    [v3 setObject:v14 forKeyedSubscript:@"isCurrentDevicePrimary_BOOL"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isCurrentDevicePreferred](self, "isCurrentDevicePreferred")}];
    [v3 setObject:v15 forKeyedSubscript:@"isCurrentDevicePreferred_BOOL"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isElectedDeviceLatestSWVersionInHome](self, "isElectedDeviceLatestSWVersionInHome")}];
    [v3 setObject:v16 forKeyedSubscript:@"isPrimaryResidentLatestSWVersion_BOOL"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent isPreviousPrimaryRev2](self, "isPreviousPrimaryRev2")}];
    [v3 setObject:v17 forKeyedSubscript:@"isPreviousPrimaryREV2_BOOL"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentSelectionPrimaryResidentChangedLogEvent triggerReason](self, "triggerReason")}];
    [v3 setObject:v18 forKeyedSubscript:@"triggerReason"];

    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason])
    {
      v19 = &unk_283E71E28;
    }

    else
    {
      v19 = &unk_283E71E10;
    }

    [v3 setObject:v19 forKeyedSubscript:@"changeReasonUnknown_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 1)
    {
      v20 = &unk_283E71E10;
    }

    else
    {
      v20 = &unk_283E71E28;
    }

    [v3 setObject:v20 forKeyedSubscript:@"changeReasonManual_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 2)
    {
      v21 = &unk_283E71E10;
    }

    else
    {
      v21 = &unk_283E71E28;
    }

    [v3 setObject:v21 forKeyedSubscript:@"changeReasonAuto_INT"];
    if ([(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason]== 3)
    {
      v22 = &unk_283E71E10;
    }

    else
    {
      v22 = &unk_283E71E28;
    }

    [v3 setObject:v22 forKeyedSubscript:@"changeReasonReachability_INT"];
    v23 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (v23)
    {
      v24 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
      v25 = [v24 shortVersionString];
      [v3 setObject:v25 forKeyedSubscript:@"minimumVersionInHomeVersionString"];

      v26 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
      v27 = [v26 buildVersion];
      [v3 setObject:v27 forKeyedSubscript:@"minimumVersionInHomeBuildString"];
    }

    v28 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];

    if (v28)
    {
      v29 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
      v30 = [v29 shortVersionString];
      [v3 setObject:v30 forKeyedSubscript:@"minimumParticipatingtvOS17VersionString"];

      v31 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
      v32 = [v31 buildVersion];
      [v3 setObject:v32 forKeyedSubscript:@"minimumParticipatingtvOS17BuildString"];
    }

    v33 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (v33)
    {
      v34 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
      v35 = [v34 shortVersionString];
      [v3 setObject:v35 forKeyedSubscript:@"minimumParticipatingAllVersionString"];

      v36 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
      v37 = [v36 buildVersion];
      [v3 setObject:v37 forKeyedSubscript:@"minimumParticipatingAllBuildString"];
    }

    v38 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];

    if (v38)
    {
      v39 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
      v40 = [v39 shortVersionString];
      [v3 setObject:v40 forKeyedSubscript:@"minimumParticipatingtvOS18VersionString"];

      v41 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
      v42 = [v41 buildVersion];
      [v3 setObject:v42 forKeyedSubscript:@"minimumParticipatingtvOS18BuildString"];
    }
  }

  return v3;
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
  v5 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self residentSelectionMode];
  v6 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self triggerReason];
  v7 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self numResidentsREV3Capable];
  v8 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self numResidentsREV3Incompatible];
  v9 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumVersionInHome];
  v10 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS17Version];
  v11 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingAllVersion];
  v12 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)self minimumParticipatingtvOS18Version];
  v13 = [v18 stringWithFormat:@"isElectedDevicePreferred: %@ isElectedDeviceLatestSWVersionInHome: %@, isCurrentDevicePrimary: %@, isCurrentDevicePreferred: %@, isPreviousPrimaryREV2: %@, residentSelectionMode: %lu, triggerReason: %lu, numResidentsREV3Capable %lu, numResidentsREV3Incompatible: %lu, minimumVersionInHome: %@, minimumParticipatingtvOS17Version: %@, minimumParticipatingAllVersion: %@, minimumParticipatingtvOS18Version: %@", v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (HMDResidentSelectionPrimaryResidentChangedLogEvent)initWithPrimaryResidentDidChange:(BOOL)a3 isElectedDevicePreferred:(BOOL)a4 isCurrentDevicePrimary:(BOOL)a5 isCurrentDevicePreferred:(BOOL)a6 isPreviousPrimaryRev2:(BOOL)a7 isElectedDeviceLatestSWVersionInHome:(BOOL)a8 residentSelectionMode:(unint64_t)a9 triggerReason:(unint64_t)a10 numResidentsREV3Capable:(unint64_t)a11 numResidentsREV3Incompatible:(unint64_t)a12 minimumVersionInHome:(id)a13 minimumParticipatingtvOS17Version:(id)a14 minimumParticipatingAllVersion:(id)a15 minimumParticipatingtvOS18Version:(id)a16 homeUUID:(id)a17
{
  v19 = a3;
  v30 = a13;
  v29 = a14;
  v28 = a15;
  v21 = a16;
  v31.receiver = self;
  v31.super_class = HMDResidentSelectionPrimaryResidentChangedLogEvent;
  v22 = [(HMMHomeLogEvent *)&v31 initWithHomeUUID:a17];
  v23 = v22;
  if (v22)
  {
    v22->_count = v19;
    v22->_isElectedDevicePreferred = a4;
    v22->_isCurrentDevicePrimary = a5;
    v22->_isCurrentDevicePreferred = a6;
    v22->_isPreviousPrimaryRev2 = a7;
    v22->_isElectedDeviceLatestSWVersionInHome = a8;
    v22->_residentSelectionMode = a9;
    v22->_triggerReason = a10;
    v22->_numResidentsREV3Capable = a11;
    v22->_numResidentsREV3Incompatible = a12;
    objc_storeStrong(&v22->_minimumVersionInHome, a13);
    objc_storeStrong(&v23->_minimumParticipatingtvOS17Version, a14);
    objc_storeStrong(&v23->_minimumParticipatingAllVersion, a15);
    objc_storeStrong(&v23->_minimumParticipatingtvOS18Version, a16);
  }

  return v23;
}

+ (id)denominatorEvent:(id)a3 residentSelectionMode:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initDenominatorEvent:v5 residentSelectionMode:a4];

  return v6;
}

@end