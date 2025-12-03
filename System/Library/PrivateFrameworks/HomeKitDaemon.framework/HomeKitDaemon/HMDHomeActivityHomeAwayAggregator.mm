@interface HMDHomeActivityHomeAwayAggregator
+ (id)logCategory;
- (BOOL)handleUpdateFromDetector:(id)detector;
- (BOOL)isReportTimestampWithinValidPeriod:(id)period;
- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport;
- (BOOL)processUserPresenceWithAuthStatus:(id)status regionStatus:(id)regionStatus updateReason:(id)reason forUser:(id)user fromDevice:(id)device;
- (HMDHomeActivityHomeAwayAggregator)initWithDataSource:(id)source;
- (HMDHomeActivityHomeAwayAggregatorState)computedState;
- (HMDHomeActivityHomeAwayUserStatesDetails)_userActivityStatesDetailsWithMap:(HMDHomeActivityHomeAwayUserStatesDetails *)map;
- (HMDHomeActivityHomeAwayUserStatesDetails)userActivityStatesDetails;
- (uint64_t)effectiveStateForReport:(void *)report;
- (void)_postHomePresenceUpdateNotificationWithHomePresence:(void *)presence userPresence:(void *)userPresence causingDevice:(uint64_t)device isUpdate:;
- (void)_postHomePresenceUpdateNotificationWithReport:(HMDHomeActivityHomeAwayUserStatesDetails *)report userActivityMap:(void *)map isUpdate:(void *)update;
- (void)handleRestrictedGuestScheduleEndedForUserUUID:(id)d;
- (void)handleRestrictedGuestScheduleStartedForUserUUID:(id)d;
@end

@implementation HMDHomeActivityHomeAwayAggregator

- (void)handleRestrictedGuestScheduleEndedForUserUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  rawUserActivityMap = [(HMDHomeActivityStateAggregator *)self rawUserActivityMap];
  v8 = [rawUserActivityMap copy];

  v9 = [v8 objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@Ignoring RG schedule ended notification because we don't have report from user %@";
LABEL_11:
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v13);
    goto LABEL_14;
  }

  user = [v9 user];
  isRestrictedGuest = [user isRestrictedGuest];

  if ((isRestrictedGuest & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@Received RG schedule ended notification for user that's not RG %@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_229538000, v18, v19, v17, &v21, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([v10 state] != 2)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@RG schedule ended but not sending home presence update notification because user is already away %@";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  [HMDHomeActivityHomeAwayAggregator _postHomePresenceUpdateNotificationWithReport:v10 userActivityMap:v8 isUpdate:?];
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_postHomePresenceUpdateNotificationWithReport:(HMDHomeActivityHomeAwayUserStatesDetails *)report userActivityMap:(void *)map isUpdate:(void *)update
{
  if (report)
  {
    mapCopy = map;
    v9 = [(HMDHomeActivityHomeAwayAggregator *)report _userActivityStatesDetailsWithMap:update];
    user = [mapCopy user];
    v7 = [v9 detailForUser:user];

    sourceDevice = [mapCopy sourceDevice];

    [(HMDHomeActivityHomeAwayAggregator *)report _postHomePresenceUpdateNotificationWithHomePresence:v9 userPresence:v7 causingDevice:sourceDevice isUpdate:1];
  }
}

- (HMDHomeActivityHomeAwayUserStatesDetails)_userActivityStatesDetailsWithMap:(HMDHomeActivityHomeAwayUserStatesDetails *)map
{
  mapCopy = map;
  if (map)
  {
    v3 = a2;
    dataSource = [(HMDHomeActivityHomeAwayUserStatesDetails *)mapCopy dataSource];
    currentDate = [dataSource currentDate];

    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDHomeActivityHomeAwayAggregator__userActivityStatesDetailsWithMap___block_invoke;
    v13[3] = &unk_278676FB8;
    v14 = currentDate;
    v15 = mapCopy;
    v16 = v6;
    v7 = v6;
    v8 = currentDate;
    [v3 enumerateKeysAndObjectsUsingBlock:v13];

    v9 = [HMDHomeActivityHomeAwayUserStatesDetails alloc];
    dataSource2 = [(HMDHomeActivityHomeAwayUserStatesDetails *)mapCopy dataSource];
    home = [dataSource2 home];
    mapCopy = [(HMDHomeActivityHomeAwayUserStatesDetails *)v9 initWithMap:v7 home:home];
  }

  return mapCopy;
}

- (void)_postHomePresenceUpdateNotificationWithHomePresence:(void *)presence userPresence:(void *)userPresence causingDevice:(uint64_t)device isUpdate:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  presenceCopy = presence;
  userPresenceCopy = userPresence;
  v12 = [[HMDHomePresenceUpdate alloc] initWithHomePresence:v9 userPresence:presenceCopy update:device causingDevice:userPresenceCopy];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v16;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending user activity state changed notification %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  dataSource = [selfCopy dataSource];
  notificationCenter = [dataSource notificationCenter];
  v21 = @"HMDHomePresenceUpdateKey";
  v22 = v12;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [notificationCenter postNotificationName:@"HMDHomePresenceUpdateNotification" object:selfCopy userInfo:v19];

  v20 = *MEMORY[0x277D85DE8];
}

void __71__HMDHomeActivityHomeAwayAggregator__userActivityStatesDetailsWithMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) dataSource];
  [v7 reportValidityInterval];
  LOBYTE(v6) = [v5 isExpiredWithCurrentDate:v6 validInterval:?];

  if ((v6 & 1) == 0)
  {
    v8 = [v5 user];
    if ([v8 isAccessCurrentlyAllowedBySchedule])
    {
      v9 = [v5 state];
    }

    else
    {
      v9 = 3;
    }

    v10 = [HMDHomeActivityHomeAwayUserStateDetail alloc];
    v11 = [v5 user];
    v12 = [v5 sourceDevice];
    v13 = [(HMDHomeActivityHomeAwayUserStateDetail *)v10 initWithUser:v11 state:v9 device:v12];
    [*(a1 + 48) setObject:v13 forKeyedSubscript:v14];
  }
}

- (void)handleRestrictedGuestScheduleStartedForUserUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  rawUserActivityMap = [(HMDHomeActivityStateAggregator *)self rawUserActivityMap];
  v8 = [rawUserActivityMap copy];

  v9 = [v8 objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@Ignoring RG schedule started notification because we don't have report from user %@";
LABEL_11:
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v13);
    goto LABEL_14;
  }

  user = [v9 user];
  isRestrictedGuest = [user isRestrictedGuest];

  if ((isRestrictedGuest & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@Received RG schedule started notification for user that's not RG %@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_229538000, v18, v19, v17, &v21, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([v10 state] != 2)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v17 = "%{public}@RG schedule started but not sending home presence update notification because user is not home yet %@";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  [HMDHomeActivityHomeAwayAggregator _postHomePresenceUpdateNotificationWithReport:v10 userActivityMap:v8 isUpdate:?];
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport
{
  reportCopy = report;
  newReportCopy = newReport;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = reportCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = newReportCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = [(HMDHomeActivityHomeAwayAggregator *)self effectiveStateForReport:v9];
    v15 = v14 == [(HMDHomeActivityHomeAwayAggregator *)self effectiveStateForReport:v12];
  }

  return v15;
}

- (uint64_t)effectiveStateForReport:(void *)report
{
  v3 = a2;
  if (report)
  {
    dataSource = [report dataSource];
    currentDate = [dataSource currentDate];
    dataSource2 = [report dataSource];
    [dataSource2 reportValidityInterval];
    if ([v3 isExpiredWithCurrentDate:currentDate validInterval:?])
    {
      state = 3;
    }

    else
    {
      state = [v3 state];
    }
  }

  else
  {
    state = 0;
  }

  return state;
}

- (HMDHomeActivityHomeAwayUserStatesDetails)userActivityStatesDetails
{
  rawUserActivityMap = [(HMDHomeActivityStateAggregator *)self rawUserActivityMap];
  v4 = [rawUserActivityMap copy];

  v5 = [(HMDHomeActivityHomeAwayAggregator *)self _userActivityStatesDetailsWithMap:v4];

  return v5;
}

- (HMDHomeActivityHomeAwayAggregatorState)computedState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    userActivityMap = [(HMDHomeActivityStateAggregator *)selfCopy userActivityMap];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = userActivityMap;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Computing state from user activity map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  userActivityMap2 = [(HMDHomeActivityStateAggregator *)selfCopy userActivityMap];
  v9 = [userActivityMap2 count];

  if (v9 && (-[HMDHomeActivityHomeAwayAggregator userActivityStatesDetails](selfCopy, "userActivityStatesDetails"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isAnyUserAtHome], v10, !v11))
  {
    userActivityMap3 = [(HMDHomeActivityStateAggregator *)selfCopy userActivityMap];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__HMDHomeActivityHomeAwayAggregator_computedState__block_invoke;
    v19[3] = &unk_278676F70;
    v19[4] = selfCopy;
    v14 = [userActivityMap3 na_filter:v19];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v16 = [v14 na_reduceWithInitialValue:distantPast reducer:&__block_literal_global_89522];

    v12 = [[HMDHomeActivityHomeAwayAggregatorState alloc] initWithType:2 awayChangedTimestamp:v16];
  }

  else
  {
    v12 = [[HMDHomeActivityHomeAwayAggregatorState alloc] initWithType:1 awayChangedTimestamp:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __50__HMDHomeActivityHomeAwayAggregator_computedState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 home];
  v6 = [v5 userWithUUID:v3];

  LODWORD(v3) = [v6 isRestrictedGuest];
  return v3 ^ 1;
}

id __50__HMDHomeActivityHomeAwayAggregator_computedState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = [a3 changedTimestamp];
  v7 = [v5 laterDate:v6];

  return v7;
}

- (BOOL)isReportTimestampWithinValidPeriod:(id)period
{
  v18 = *MEMORY[0x277D85DE8];
  periodCopy = period;
  if (periodCopy)
  {
    dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
    currentDate = [dataSource currentDate];
    [periodCopy timeIntervalSinceDate:currentDate];
    v8 = fabs(v7);

    v9 = v8 < 120.0;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Did not find the changed time stamp.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)handleUpdateFromDetector:(id)detector
{
  v56 = *MEMORY[0x277D85DE8];
  detectorCopy = detector;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  userActivityStatesDetails = [(HMDHomeActivityHomeAwayAggregator *)self userActivityStatesDetails];
  v43.receiver = self;
  v43.super_class = HMDHomeActivityHomeAwayAggregator;
  v8 = [(HMDHomeActivityStateAggregator *)&v43 handleUpdateFromDetector:detectorCopy];
  if (v8)
  {
    v9 = detectorCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = v11;
      v42 = userActivityStatesDetails;
      if (self)
      {
        dataSource2 = [(HMDHomeActivityStateAggregator *)self dataSource];
        featuresDataSource = [dataSource2 featuresDataSource];
        isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

        if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
        {
          user = [v12 user];
          userActivityStatesDetails2 = [(HMDHomeActivityHomeAwayAggregator *)self userActivityStatesDetails];
          context = v12;
          sourceDevice = [v12 sourceDevice];
          v18 = [v42 detailForUser:user];
          v39 = userActivityStatesDetails2;
          v19 = [userActivityStatesDetails2 detailForUser:user];
          isNotAtHome = [v18 isNotAtHome];
          v37 = v18;
          isAtHome = [v18 isAtHome];
          isNotAtHome2 = [v19 isNotAtHome];
          v34 = v19;
          isAtHome2 = [v19 isAtHome];
          v24 = isAtHome2;
          v33 = isNotAtHome;
          v40 = user;
          if ((isNotAtHome & isAtHome2 & 1) != 0 || (isAtHome & isNotAtHome2) != 0)
          {
            v12 = context;
            if ([context reason] == 11)
            {
              changedTimestamp = [context changedTimestamp];
              v41 = [(HMDHomeActivityHomeAwayAggregator *)self isReportTimestampWithinValidPeriod:changedTimestamp];
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
            v12 = context;
          }

          contexta = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            v29 = v24;
            v30 = v28;
            *buf = 138544642;
            v45 = v28;
            v46 = 1024;
            v47 = isAtHome;
            v48 = 1024;
            v49 = v33;
            v50 = 1024;
            v51 = v29 & 1;
            v52 = 1024;
            v53 = isNotAtHome2 & 1;
            v54 = 1024;
            v55 = v41;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Sending user activity state changed notification for Old(H: %{BOOL}d, A: %{BOOL}d) -> New(H: %{BOOL}d, A: %{BOOL}d), isUpdate: %{BOOL}d", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(contexta);
          [(HMDHomeActivityHomeAwayAggregator *)selfCopy _postHomePresenceUpdateNotificationWithHomePresence:v39 userPresence:v34 causingDevice:sourceDevice isUpdate:v41];
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)processUserPresenceWithAuthStatus:(id)status regionStatus:(id)regionStatus updateReason:(id)reason forUser:(id)user fromDevice:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  regionStatusCopy = regionStatus;
  reasonCopy = reason;
  userCopy = user;
  deviceCopy = device;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if (([userCopy isAllowedToContributeActivityStates] & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v27 = v28;
LABEL_13:
      objc_autoreleasePoolPop(v27);
      v33 = 0;
      goto LABEL_23;
    }

    v31 = HMFGetLogIdentifier();
    shortDescription = [userCopy shortDescription];
    *buf = 138543618;
    v50 = v31;
    v51 = 2114;
    v52 = shortDescription;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Ignoring presence update from %{public}@ because they're not allowed to contribute to Home Activity State", buf, 0x16u);

LABEL_11:
    goto LABEL_12;
  }

  v19 = HMDUserActivityHomeAwayStateFromPresenceRegion(regionStatusCopy, statusCopy);
  v20 = [reasonCopy value] - 2;
  if (v20 <= 0xA)
  {
    v21 = qword_22A5874F0[v20];
    if (regionStatusCopy)
    {
      goto LABEL_4;
    }

LABEL_15:
    v34 = [(HMDHomeActivityStateAggregator *)self removeActivityReportForUser:userCopy];
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v38;
      v51 = 2112;
      v52 = v34;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Location authorization was revoked. Removed report: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v33 = v34 != 0;

    goto LABEL_23;
  }

  v21 = 1;
  if (!regionStatusCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (![statusCopy value])
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Ignoring presence update because authorization status is not determined", buf, 0xCu);
    goto LABEL_11;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v24 = HMFGetOSLogHandle();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v19 == 1)
  {
    if (v25)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Ignoring presence update because the state is unknown or unspecified", buf, 0xCu);
    }

    v27 = v22;
    goto LABEL_13;
  }

  if (v25)
  {
    v48 = HMFGetLogIdentifier();
    v47 = off_278672FD8[v19];
    v46 = HMDUserActivityStateDetectorUpdateReasonAsString(v21);
    [userCopy userID];
    v39 = v45 = v22;
    *buf = 138544386;
    v50 = v48;
    v51 = 2114;
    v52 = statusCopy;
    v53 = 2114;
    v54 = v47;
    v55 = 2114;
    v56 = v46;
    v57 = 2112;
    v58 = v39;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Received user presence with auth: %{public}@, homeAwayState: %{public}@, updateReason: %{public}@, user: %@", buf, 0x34u);

    v22 = v45;
  }

  objc_autoreleasePoolPop(v22);
  dataSource2 = [(HMDHomeActivityStateAggregator *)selfCopy4 dataSource];
  currentDate = [dataSource2 currentDate];

  v42 = [[HMDUserActivityHomeAwayReport alloc] initWithUser:userCopy state:v19 fromDevice:deviceCopy reason:v21 changedTimestamp:currentDate lastUpdatedTimeStamp:currentDate];
  v33 = [(HMDHomeActivityHomeAwayAggregator *)selfCopy4 handleUpdateFromDetector:v42];

LABEL_23:
  v43 = *MEMORY[0x277D85DE8];
  return v33;
}

- (HMDHomeActivityHomeAwayAggregator)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)[HMDHomeActivityHomeAwayAggregatorStorage alloc] initWithDataSource:sourceCopy];
  v6 = [(HMDHomeActivityStateAggregator *)self initWithStorage:v5 dataSource:sourceCopy];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_89540 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_89540, &__block_literal_global_19);
  }

  v3 = logCategory__hmf_once_v20_89541;

  return v3;
}

void __48__HMDHomeActivityHomeAwayAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_89541;
  logCategory__hmf_once_v20_89541 = v1;
}

@end