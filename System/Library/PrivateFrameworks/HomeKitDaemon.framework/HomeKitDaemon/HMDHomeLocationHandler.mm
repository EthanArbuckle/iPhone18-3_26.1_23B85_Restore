@interface HMDHomeLocationHandler
+ (id)logCategory;
- (BOOL)_canExtractLocation;
- (BOOL)_hasReachableAccessoriesExcludingMatter;
- (BOOL)_needToExtractLocations;
- (BOOL)_shouldRegisterForSignificantRegion;
- (BOOL)_shouldUpdateHomeLocation;
- (BOOL)isDate:(id)date laterThanDate:(id)thanDate;
- (BOOL)isLocation:(id)location closeToLocation:(id)toLocation;
- (BOOL)isNewHomeLocationTooCloseToPreviousLocation:(id)location newLocation:(id)newLocation;
- (BOOL)shouldAllowHomeLocationUpdateWithSource:(int64_t)source newLocation:(id)location;
- (BOOL)shouldUpdateLocationFromLocationData:(id)data;
- (HMDHome)home;
- (HMDHomeLocationData)locationData;
- (HMDHomeLocationHandler)init;
- (HMDHomeLocationHandler)initWithCoder:(id)coder;
- (NSString)description;
- (NSUUID)messageTargetUUID;
- (id)__initForUnitTesting:(double)testing home:(id)home queue:(id)queue messageDispatcher:(id)dispatcher location:(id)location;
- (id)_handleHomeLocationData:(id)data message:(id)message;
- (id)_handleHomeLocationDataForHH2:(id)h2 fromMessage:(id)message;
- (id)logIdentifier;
- (id)messageDestination;
- (void)__simulateAtHomeRegionState:(int64_t)state;
- (void)__simulateNearByHomeRegionState:(int64_t)state;
- (void)_evaluateHomeRegionStateForCurrentDeviceLocation:(id)location;
- (void)_handleLocationAuthorization:(int64_t)authorization;
- (void)_handleLocationAuthorizationChangedNotification:(id)notification;
- (void)_handlePrimaryResidentResidentGenerationIDNotification:(id)notification;
- (void)_handleRetrieveLocation:(id)location;
- (void)_processPendingRegionStateUpdates;
- (void)_registerForMessages;
- (void)_registerForPrimaryResidentGenerationIDNotification;
- (void)_registerForRegionUpdate;
- (void)_resendHomeLocationOnce:(id)once newSource:(int64_t)source;
- (void)_sendLocationUpdateToClients;
- (void)_unregisterForPrimaryResidentGenerationIDNotification;
- (void)_updateTimeZone:(id)zone;
- (void)accessoriesBecomeReachable;
- (void)accessoriesBecomeUnreachable;
- (void)accessoryReachabilityChanged:(int)changed previousReachableAccessoriesCount:(int)count reachableAppleMediaAccessoriesCount:(int)accessoriesCount previousReachableAppleMediaAccessoriesCount:(int)mediaAccessoriesCount;
- (void)checkFalsePresence;
- (void)coalesceRegionUpdateState:(int64_t)state forRegion:(id)region;
- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)didDetermineLocation:(id)location;
- (void)didDetermineState:(int64_t)state forRegion:(id)region;
- (void)encodeWithCoder:(id)coder;
- (void)getReachableIPAccessory:(unint64_t *)accessory btleAccessory:(unint64_t *)btleAccessory mediaAccessory:(unint64_t *)mediaAccessory;
- (void)handleHomeLocationForHH2:(id)h2 updatedTime:(id)time source:(int64_t)source;
- (void)logHomeLocationEventWithLocation:(id)location;
- (void)matterAccessoryBecameReachable;
- (void)runTransactionWithLocation:(id)location updatedTime:(id)time source:(int64_t)source;
- (void)sendHomeLocationUpdateToResident:(id)resident source:(int64_t)source;
- (void)timerDidFire:(id)fire;
- (void)updateHomeLocation;
- (void)updateHomeLocationForPairing;
- (void)updateHomeLocationFromCoreRoutine;
- (void)updateHomeLocationFromSingleOrCoreRoutine;
@end

@implementation HMDHomeLocationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)__simulateNearByHomeRegionState:(int64_t)state
{
  if (state)
  {
    regionNearbyHome = [(HMDHomeLocationHandler *)self regionNearbyHome];
    [(HMDHomeLocationHandler *)self didDetermineState:state forRegion:regionNearbyHome];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    [(HMDHomeLocationHandler *)self setRegionStateNearbyHome:0];

    os_unfair_recursive_lock_unlock();
  }
}

- (void)__simulateAtHomeRegionState:(int64_t)state
{
  if (state)
  {
    regionAtHome = [(HMDHomeLocationHandler *)self regionAtHome];
    [(HMDHomeLocationHandler *)self didDetermineState:state forRegion:regionAtHome];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    [(HMDHomeLocationHandler *)self setRegionStateAtHome:0];

    os_unfair_recursive_lock_unlock();
  }
}

- (id)__initForUnitTesting:(double)testing home:(id)home queue:(id)queue messageDispatcher:(id)dispatcher location:(id)location
{
  locationCopy = location;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  v16 = [(HMDHomeLocationHandler *)self init];
  [(HMDHomeLocationHandler *)v16 setLocation:locationCopy];

  [(HMDHomeLocationHandler *)v16 setCoalesceRegionUpdateIntervalInSeconds:testing];
  [(HMDHomeLocationHandler *)v16 setHome:homeCopy];

  [(HMDHomeLocationHandler *)v16 setWorkQueue:queueCopy];
  [(HMDHomeLocationHandler *)v16 setMsgDispatcher:dispatcherCopy];

  [(HMDHomeLocationHandler *)v16 _registerForRegionUpdate];
  return v16;
}

- (id)logIdentifier
{
  home = [(HMDHomeLocationHandler *)self home];
  v3 = MEMORY[0x277CCACA8];
  name = [home name];
  uuid = [home uuid];
  v6 = [v3 stringWithFormat:@"%@/%@", name, uuid];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(HMDHomeLocationHandler *)self location];
  [coderCopy encodeObject:location forKey:@"homeLocation"];

  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  [coderCopy encodeObject:locationUpdateTimestamp forKey:@"homeLocationNextUpdate"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeLocationHandler locationSource](self, "locationSource")}];
  [coderCopy encodeObject:v9 forKey:@"homeLocationSource"];
  timeZone = [(HMDHomeLocationHandler *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"HMD.homeLocTZ"];

  isoCountryCode = [(HMDHomeLocationHandler *)self isoCountryCode];
  [coderCopy encodeObject:isoCountryCode forKey:@"HMD.homeLocCC"];
}

- (HMDHomeLocationHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDHomeLocationHandler *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocation"];
    location = v5->_location;
    v5->_location = v6;

    if (v5->_location)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationNextUpdate"];
      locationUpdateTimestamp = v5->_locationUpdateTimestamp;
      v5->_locationUpdateTimestamp = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationSource"];
      v5->_locationSource = [v10 unsignedIntValue];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.homeLocTZ"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.homeLocCC"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v13;
  }

  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDHomeLocationHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDHomeLocationHandler *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)checkFalsePresence
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  if ([(HMDHomeLocationHandler *)self regionStateAtHome]== 2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastArrival = [(HMDHomeLocationHandler *)self lastArrival];
    [date timeIntervalSinceDate:lastArrival];
    v7 = v6;

    lastArrival2 = [(HMDHomeLocationHandler *)self lastArrival];
    v9 = [lastArrival2 isEqualToDate:v3];

    if (v7 >= 30.0)
    {
      v10 = [HMDEntryExitLogEvent exitLogEvent:0 isFalse:v9 isInitial:v7];
      logEventSubmitter = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter submitLogEvent:v10];
    }

    else
    {
      v10 = [HMDEntryExitLogEvent exitLogEvent:1 isFalse:v9 isInitial:v7];
      logEventSubmitter2 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter2 submitLogEvent:v10];

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        lastArrival3 = [(HMDHomeLocationHandler *)selfCopy lastArrival];
        v39 = 138543874;
        v40 = v15;
        v41 = 2048;
        v42 = v7;
        v43 = 2112;
        v44 = lastArrival3;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@False exit. Seconds since last entry: %f with last entry: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)self setLastExit:date2];

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    v34 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v37;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting isInitial to YES as this is the first exit or arrival.", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    goto LABEL_19;
  }

  if ([(HMDHomeLocationHandler *)self regionStateAtHome]== 1)
  {
    date3 = [MEMORY[0x277CBEAA8] date];
    lastExit = [(HMDHomeLocationHandler *)self lastExit];
    [date3 timeIntervalSinceDate:lastExit];
    v20 = v19;

    lastExit2 = [(HMDHomeLocationHandler *)self lastExit];
    v22 = [lastExit2 isEqualToDate:v3];

    if (v20 >= 30.0)
    {
      v23 = [HMDEntryExitLogEvent entryLogEvent:0 isFalse:v22 isInitial:v20];
      logEventSubmitter3 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter3 submitLogEvent:v23];
    }

    else
    {
      v23 = [HMDEntryExitLogEvent entryLogEvent:1 isFalse:v22 isInitial:v20];
      logEventSubmitter4 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter4 submitLogEvent:v23];

      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = HMFGetLogIdentifier();
        lastExit3 = [(HMDHomeLocationHandler *)selfCopy3 lastExit];
        v39 = 138543874;
        v40 = v28;
        v41 = 2048;
        v42 = v20;
        v43 = 2112;
        v44 = lastExit3;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@False entry. Seconds since last exit: %f with last exit: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
    }

    date4 = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)self setLastArrival:date4];

    if (v22)
    {
      goto LABEL_16;
    }
  }

LABEL_19:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)logHomeLocationEventWithLocation:(id)location
{
  v29 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  location = [(HMDHomeLocationHandler *)self location];

  if (locationCopy && location)
  {
    location2 = [(HMDHomeLocationHandler *)self location];
    [location2 distanceFromLocation:locationCopy];
    v8 = v7;

    if (v8 >= 10.0 && fabs(v8 + -10.0) >= 2.22044605e-16)
    {
      v9 = isInternalBuild();
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (v13)
        {
          v14 = HMFGetLogIdentifier();
          v23 = 138543874;
          v24 = v14;
          v25 = 2112;
          v26 = locationCopy;
          v27 = 2048;
          v28 = v8;
          v15 = "%{public}@Submitting event updated home location [%@] & distance %f";
LABEL_14:
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v15, &v23, 0x20u);
        }
      }

      else if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v23 = 138543875;
        v24 = v14;
        v25 = 2117;
        v26 = locationCopy;
        v27 = 2048;
        v28 = v8;
        v15 = "%{public}@Submitting event updated home location [%{sensitive}@] & distance %f";
        goto LABEL_14;
      }

      objc_autoreleasePoolPop(v10);
      v21 = [HMDHomeLocationLogEvent updateWithHomeDistance:v8];
      logEventSubmitter = [(HMDHomeLocationHandler *)selfCopy logEventSubmitter];
      [logEventSubmitter submitLogEvent:v21];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Home location is nil, not submitting event.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_processPendingRegionStateUpdates
{
  v79[2] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  regionStateAtHome = [(HMDHomeLocationHandler *)self regionStateAtHome];
  pendingAtHomeRegionUpdate = self->_pendingAtHomeRegionUpdate;
  pendingNearbyHomeRegionUpdate = self->_pendingNearbyHomeRegionUpdate;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (!pendingAtHomeRegionUpdate)
  {
    if (!pendingNearbyHomeRegionUpdate)
    {
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v23;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Dropping region state update. How are we even here?", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = self->_pendingNearbyHomeRegionUpdate;
      *buf = 138543618;
      v71 = v14;
      v72 = 2112;
      v73 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@processing pending nearByHome region update : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 1)
    {
      if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 2)
      {
        v6 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = self->_pendingNearbyHomeRegionUpdate;
          *buf = 138543618;
          v71 = v30;
          v72 = 2112;
          v73 = v31;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping nearByHome region state update. nearByHome region state is set to Unknown. [%@]", buf, 0x16u);
        }

        goto LABEL_42;
      }

LABEL_25:
      v22 = 2;
      [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
      goto LABEL_26;
    }

    [(HMDHomeLocationHandler *)selfCopy setRegionStateNearbyHome:1];
    if ([(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 1)
    {
      v6 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@atHome region is inside, not notifying.", buf, 0xCu);
      }
    }

    else
    {
      v35 = [(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 0;
      v6 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      if (!v35)
      {
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@notifying of entry into nearByHome.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        goto LABEL_27;
      }

      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v39;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@atHome region is still unknown, waiting for initial state before notifying.", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!pendingNearbyHomeRegionUpdate)
  {
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = self->_pendingAtHomeRegionUpdate;
      *buf = 138543618;
      v71 = v20;
      v72 = 2112;
      v73 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@processing pending atHome region update : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 1)
    {
      goto LABEL_20;
    }

    if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 2)
    {
      [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
      goto LABEL_27;
    }

    v6 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = self->_pendingAtHomeRegionUpdate;
      *buf = 138543618;
      v71 = v33;
      v72 = 2112;
      v73 = v34;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping atHome region state update. atHome region state is set to Unknown. [%@]", buf, 0x16u);
    }

LABEL_42:

    objc_autoreleasePoolPop(v6);
    v24 = 0;
    goto LABEL_43;
  }

  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = self->_pendingAtHomeRegionUpdate;
    v11 = self->_pendingNearbyHomeRegionUpdate;
    *buf = 138543874;
    v71 = v9;
    v72 = 2112;
    v73 = v10;
    v74 = 2112;
    v75 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@atHome & nearByHome regions are updated to new states: [atHome : %@] , [nearByHome : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 1)
  {
LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

  if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]== 2)
  {
    goto LABEL_25;
  }

  if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]!= 2 || [(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 1)
  {
    v6 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = self->_pendingAtHomeRegionUpdate;
      v28 = self->_pendingNearbyHomeRegionUpdate;
      *buf = 138543874;
      v71 = v26;
      v72 = 2112;
      v73 = v27;
      v74 = 2112;
      v75 = v28;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping region state updates. User cannot be inside atHome & outside nearByHome at the same time. [atHome=%@][nearByHome=%@]", buf, 0x20u);
    }

    goto LABEL_42;
  }

  v12 = 2;
LABEL_21:
  [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:v12];
  v22 = 1;
LABEL_26:
  [(HMDHomeLocationHandler *)selfCopy setRegionStateNearbyHome:v22];
LABEL_27:
  v24 = 1;
LABEL_43:
  if (regionStateAtHome == 2 && [(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)selfCopy setDateCrossedIntoAtHomeRegion:date];

    v41 = 1;
  }

  else
  {
    if ([(HMDHomeLocationHandler *)selfCopy regionStateAtHome]!= 1)
    {
      [(HMDHomeLocationHandler *)selfCopy setDateCrossedIntoAtHomeRegion:0];
    }

    v41 = 0;
  }

  v42 = self->_pendingAtHomeRegionUpdate;
  self->_pendingAtHomeRegionUpdate = 0;

  v43 = self->_pendingNearbyHomeRegionUpdate;
  self->_pendingNearbyHomeRegionUpdate = 0;

  homeRegionUpdateTimer = selfCopy->_homeRegionUpdateTimer;
  selfCopy->_homeRegionUpdateTimer = 0;

  os_unfair_recursive_lock_unlock();
  v45 = +[HMDLocation sharedManager];
  isCurrentLocationSimulated = [v45 isCurrentLocationSimulated];

  if (isCurrentLocationSimulated)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v50;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Current location is simulated. Hence marking the user Away from home.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v47);
    [(HMDHomeLocationHandler *)v48 setDateCrossedIntoAtHomeRegion:0];
    [(HMDHomeLocationHandler *)v48 setRegionStateAtHome:2];
    [(HMDHomeLocationHandler *)v48 setRegionStateNearbyHome:2];
  }

  home = [(HMDHomeLocationHandler *)selfCopy home];
  currentUser = [home currentUser];
  uuid = [currentUser uuid];

  uuid2 = [home uuid];
  if (uuid2)
  {
    v55 = v41;
  }

  else
  {
    v55 = 0;
  }

  if (v55 == 1)
  {
    if (uuid)
    {
      v56 = +[HMDLocation sharedManager];
      isCurrentLocationSimulated2 = [v56 isCurrentLocationSimulated];

      if ((isCurrentLocationSimulated2 & 1) == 0)
      {
        v78[0] = @"HMDLocationCurrentUserUUIDKey";
        v78[1] = @"HMDLocationHomeUUIDKey";
        v79[0] = uuid;
        v79[1] = uuid2;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
        logAndPostNotification(@"HMDLocationDidCrossIntoHomeRegion", selfCopy, v58);
      }
    }
  }

  v59 = [HMDRegionStateCorrectnessLogEvent updateWithRegion:[(HMDHomeLocationHandler *)selfCopy regionStateAtHome] nearbyHome:[(HMDHomeLocationHandler *)selfCopy regionStateNearbyHome] accessoryReachable:[(HMDHomeLocationHandler *)selfCopy firstAccessoryReachable]];
  logEventSubmitter = [(HMDHomeLocationHandler *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v59];

  if (v24)
  {
    context = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v68 = HMFGetLogIdentifier();
      uuid3 = [home uuid];
      uUIDString = [uuid3 UUIDString];
      [(HMDHomeLocationHandler *)v61 regionStateAtHome];
      v65 = HMRegionStateString();
      [(HMDHomeLocationHandler *)v61 regionStateNearbyHome];
      v66 = HMRegionStateString();
      *buf = 138544130;
      v71 = v68;
      v72 = 2112;
      v73 = uUIDString;
      v74 = 2112;
      v75 = v65;
      v76 = 2112;
      v77 = v66;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Region state for home [%@] is determined using GeoFence. atHome: %@, nearbyHome: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
    [home regionStateUpdated];
    [(HMDHomeLocationHandler *)v61 checkFalsePresence];
  }

  v67 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v12 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self->_homeRegionUpdateTimer == fireCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Region update timer fired : Processing pending region state updates", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeLocationHandler *)selfCopy _processPendingRegionStateUpdates];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)coalesceRegionUpdateState:(int64_t)state forRegion:(id)region
{
  v39 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  os_unfair_recursive_lock_lock_with_options();
  v7 = objc_alloc_init(_HMDPendingRegionUpdate);
  [(_HMDPendingRegionUpdate *)v7 setState:state];
  identifier = [(CLRegion *)self->_regionAtHome identifier];
  identifier2 = [regionCopy identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMRegionStateString();
      v33 = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@atHome region updated (100m) : %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = &OBJC_IVAR___HMDHomeLocationHandler__pendingAtHomeRegionUpdate;
LABEL_9:
    objc_storeStrong((&self->super.super.isa + *v16), v7);
    homeRegionUpdateTimer = self->_homeRegionUpdateTimer;
    if (homeRegionUpdateTimer)
    {
      [(HMFTimer *)homeRegionUpdateTimer kick];
    }

    else
    {
      v26 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDHomeLocationHandler *)self coalesceRegionUpdateIntervalInSeconds];
      v27 = [v26 initWithTimeInterval:8 options:?];
      v28 = self->_homeRegionUpdateTimer;
      self->_homeRegionUpdateTimer = v27;

      [(HMFTimer *)self->_homeRegionUpdateTimer setDelegateQueue:self->_workQueue];
      [(HMFTimer *)self->_homeRegionUpdateTimer setDelegate:self];
      [(HMFTimer *)self->_homeRegionUpdateTimer resume];
    }

    goto LABEL_15;
  }

  identifier3 = [(CLRegion *)self->_regionNearbyHome identifier];
  identifier4 = [regionCopy identifier];
  v19 = [identifier3 isEqualToString:identifier4];

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  if (v19)
  {
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = HMRegionStateString();
      v33 = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@nearByHome region updated (500m) : %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v16 = &OBJC_IVAR___HMDHomeLocationHandler__pendingNearbyHomeRegionUpdate;
    goto LABEL_9;
  }

  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v31 = HMRegionStateString();
    v33 = 138543874;
    v34 = v30;
    v35 = 2112;
    v36 = regionCopy;
    v37 = 2112;
    v38 = v31;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unknown region update found for region : %@ [new state: %@]", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_15:

  os_unfair_recursive_lock_unlock();
  v32 = *MEMORY[0x277D85DE8];
}

- (void)getReachableIPAccessory:(unint64_t *)accessory btleAccessory:(unint64_t *)btleAccessory mediaAccessory:(unint64_t *)mediaAccessory
{
  home = [(HMDHomeLocationHandler *)self home];
  [home getReachableIPAccessories:accessory btleAccessories:btleAccessory mediaAccessories:mediaAccessory];
}

- (void)didDetermineState:(int64_t)state forRegion:(id)region
{
  regionCopy = region;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeLocationHandler_didDetermineState_forRegion___block_invoke;
  block[3] = &unk_278685DF8;
  v10 = regionCopy;
  stateCopy = state;
  block[4] = self;
  v8 = regionCopy;
  dispatch_async(workQueue, block);
}

void __54__HMDHomeLocationHandler_didDetermineState_forRegion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      v10 = "%{public}@Home reference is nil";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v14, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    goto LABEL_12;
  }

  v3 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:*(a1 + 48)];
  if (!v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      v10 = "%{public}@Not updating the region state because it is currently unknown";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v4 = v3;
  if ([*(a1 + 32) _shouldRegisterForSignificantRegion])
  {
    v5 = +[HMDLocation sharedManager];
    [v5 startExtractingSingleLocationForDelegate:*(a1 + 32)];
  }

  [*(a1 + 32) coalesceRegionUpdateState:v4 forRegion:*(a1 + 40)];
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didDetermineLocation:(id)location
{
  locationCopy = location;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHomeLocationHandler_didDetermineLocation___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(workQueue, v7);
}

- (void)updateHomeLocationFromSingleOrCoreRoutine
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Using Single Core Routine API for HomeKit Home location", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy updateHomeLocationFromCoreRoutine];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateHomeLocationFromCoreRoutine
{
  v3 = +[HMDLocation sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMDHomeLocationHandler_updateHomeLocationFromCoreRoutine__block_invoke;
  v4[3] = &unk_2786856B8;
  v4[4] = self;
  [v3 getCoreRoutineLOIForCurrentLocationWithCompletionHandler:v4];
}

void __59__HMDHomeLocationHandler_updateHomeLocationFromCoreRoutine__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = isInternalBuild();
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *v27 = 138543874;
      *&v27[4] = v14;
      *&v27[12] = 2112;
      *&v27[14] = v7;
      *&v27[22] = 2112;
      v28 = v8;
      v15 = "%{public}@Fetching LOI at current location finished with location [%@], error: %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, v15, v27, 0x20u);
    }
  }

  else if (v13)
  {
    v14 = HMFGetLogIdentifier();
    *v27 = 138543875;
    *&v27[4] = v14;
    *&v27[12] = 2117;
    *&v27[14] = v7;
    *&v27[22] = 2112;
    v28 = v8;
    v15 = "%{public}@Fetching LOI at current location finished with location [%{sensitive}@], error: %@";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  if (!v7 || v8)
  {
    v19 = isInternalBuild();
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *v27 = 138543874;
        *&v27[4] = v24;
        *&v27[12] = 2112;
        *&v27[14] = v7;
        *&v27[22] = 2112;
        v28 = v8;
        v25 = "%{public}@Unable to get LOI at current location: %@ / %@";
LABEL_18:
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, v25, v27, 0x20u);
      }
    }

    else if (v23)
    {
      v24 = HMFGetLogIdentifier();
      *v27 = 138543875;
      *&v27[4] = v24;
      *&v27[12] = 2117;
      *&v27[14] = v7;
      *&v27[22] = 2112;
      v28 = v8;
      v25 = "%{public}@Unable to get LOI at current location: %{sensitive}@ / %@";
      goto LABEL_18;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_20;
  }

  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CBEAA8] date];
  [v17 runTransactionWithLocation:v7 updatedTime:v18 source:v16];

LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDate:(id)date laterThanDate:(id)thanDate
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  thanDateCopy = thanDate;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    [dateCopy timeIntervalSince1970];
    v13 = v12;
    [thanDateCopy timeIntervalSince1970];
    v18 = 138544386;
    v19 = v11;
    v20 = 2112;
    v21 = dateCopy;
    v22 = 2048;
    v23 = v13;
    v24 = 2112;
    v25 = thanDateCopy;
    v26 = 2048;
    v27 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to check if date1 %@ (%lf) is later than date2 %@ (%lf)", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (dateCopy)
  {
    if (thanDateCopy)
    {
      v15 = [dateCopy compare:thanDateCopy] == 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isLocation:(id)location closeToLocation:(id)toLocation
{
  v36 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  toLocationCopy = toLocation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = locationCopy;
    v32 = 2112;
    v33 = toLocationCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to check if location1 %@ is close to location2 %@", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = 1;
  if (locationCopy && toLocationCopy)
  {
    [locationCopy distanceFromLocation:toLocationCopy];
    v14 = v13;
    v15 = isInternalBuild();
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v28 = 138544130;
        v29 = v20;
        v30 = 2112;
        v31 = locationCopy;
        v32 = 2112;
        v33 = toLocationCopy;
        v34 = 2048;
        v35 = v14;
        v21 = "%{public}@Distance between location1 %@ and location2 %@: %lf";
LABEL_10:
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, v21, &v28, 0x2Au);
      }
    }

    else if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v28 = 138544131;
      v29 = v20;
      v30 = 2117;
      v31 = locationCopy;
      v32 = 2117;
      v33 = toLocationCopy;
      v34 = 2048;
      v35 = v14;
      v21 = "%{public}@Distance between location1 %{sensitive}@ and location2 %{sensitive}@: %lf";
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v16);
    v12 = 0;
    if (v14 > 0.0 && v14 <= 30.0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v17;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = &unk_283E75FC8;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@The two locations are within %@ meter range.", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v12 = 1;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDHomeLocationData)locationData
{
  v3 = [HMDHomeLocationData alloc];
  location = [(HMDHomeLocationHandler *)self location];
  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeLocationHandler locationSource](self, "locationSource")}];
  v7 = [(HMDHomeLocationData *)v3 initWithLocation:location locationUpdateTimestamp:locationUpdateTimestamp locationSource:v6];

  return v7;
}

- (void)_sendLocationUpdateToClients
{
  v14[1] = *MEMORY[0x277D85DE8];
  location = [(HMDHomeLocationHandler *)self location];

  if (location)
  {
    v13 = @"kHomeLocationKey";
    v4 = MEMORY[0x277CCAAB0];
    location2 = [(HMDHomeLocationHandler *)self location];
    v6 = [v4 archivedDataWithRootObject:location2 requiringSecureCoding:1 error:0];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v8 = [MEMORY[0x277D0F818] locationAuthorizedMessageWithName:@"kHomeLocationUpdatedNotificationKey" messagePayload:v7];
  }

  else
  {
    v8 = [MEMORY[0x277D0F818] messageWithName:@"kHomeLocationUpdatedNotificationKey" messagePayload:0];
  }

  logAndPostNotification(@"HMDLocationForHomeChanged", self, 0);
  home = [(HMDHomeLocationHandler *)self home];
  if (home)
  {
    msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
    uuid = [home uuid];
    [msgDispatcher sendMessage:v8 target:uuid];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isNewHomeLocationTooCloseToPreviousLocation:(id)location newLocation:(id)newLocation
{
  v22 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  newLocationCopy = newLocation;
  [locationCopy distanceFromLocation:newLocationCopy];
  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@The distance between new & previous location is : %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = fabs(v9 + -10.0) < 2.22044605e-16 || v9 < 10.0;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)shouldAllowHomeLocationUpdateWithSource:(int64_t)source newLocation:(id)location
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@New location is nil, rejecting home location update.", &v25, 0xCu);
    }

    goto LABEL_15;
  }

  if ([(HMDHomeLocationHandler *)self locationSource]!= 2)
  {
    goto LABEL_17;
  }

  v8 = 0;
  if (source != 2 && source != 5)
  {
    location = [(HMDHomeLocationHandler *)self location];
    if (location)
    {
      v8 = ![(HMDHomeLocationHandler *)self pairingHomeLocationOverride];
    }

    else
    {
      v8 = 0;
    }
  }

  if (source == 2 || source == 5)
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_17:
    [(HMDHomeLocationHandler *)self setPairingHomeLocationOverride:0];
    v17 = isInternalBuild();
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMDHomeLocationSourceToString(source);
        v25 = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = locationCopy;
        v29 = 2112;
        v30 = v21;
        v22 = "%{public}@Updating home location to %@ and source %@";
LABEL_22:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, v22, &v25, 0x20u);
      }
    }

    else if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v21 = HMDHomeLocationSourceToString(source);
      v25 = 138543875;
      v26 = v20;
      v27 = 2117;
      v28 = locationCopy;
      v29 = 2112;
      v30 = v21;
      v22 = "%{public}@Updating home location to %{sensitive}@ and source %@";
      goto LABEL_22;
    }

    v16 = 1;
    goto LABEL_24;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMDHomeLocationSourceToString(source);
    v25 = 138543618;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Rejecting home location update source: %@", &v25, 0x16u);
  }

LABEL_15:
  v16 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v9);
  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_resendHomeLocationOnce:(id)once newSource:(int64_t)source
{
  v15 = *MEMORY[0x277D85DE8];
  onceCopy = once;
  if (![(HMDHomeLocationHandler *)self resendOnce])
  {
    location = [(HMDHomeLocationHandler *)self location];

    if (!location)
    {
      [(HMDHomeLocationHandler *)self setResendOnce:1];
      [(HMDHomeLocationHandler *)self setCachedLocation:onceCopy];
      [(HMDHomeLocationHandler *)self setCachedSource:source];
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Registering for Primary Resident Generation ID notification to resend home location.", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDHomeLocationHandler *)selfCopy _registerForPrimaryResidentGenerationIDNotification];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendHomeLocationUpdateToResident:(id)resident source:(int64_t)source
{
  v43 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  home = [(HMDHomeLocationHandler *)self home];
  if (([home isAdminUser] & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  v8 = isInternalBuild();
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = HMFGetLogIdentifier();
    v14 = HMDHomeLocationSourceToString(source);
    *buf = 138543874;
    v38 = v13;
    v39 = 2112;
    v40 = residentCopy;
    v41 = 2112;
    v42 = v14;
    v15 = "%{public}@Sending home location updated message to the primary resident: %@, source: %@";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = HMFGetLogIdentifier();
    v14 = HMDHomeLocationSourceToString(source);
    *buf = 138543875;
    v38 = v13;
    v39 = 2117;
    v40 = residentCopy;
    v41 = 2112;
    v42 = v14;
    v15 = "%{public}@Sending home location updated message to the primary resident: %{sensitive}@, source: %@";
  }

  _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v15, buf, 0x20u);

LABEL_8:
  objc_autoreleasePoolPop(v9);
  v16 = [HMDRemoteHomeMessageDestination alloc];
  messageTargetUUID = [(HMDHomeLocationHandler *)selfCopy messageTargetUUID];
  uuid = [home uuid];
  v19 = [(HMDRemoteHomeMessageDestination *)v16 initWithTarget:messageTargetUUID homeUUID:uuid];

  v20 = MEMORY[0x277D0F848];
  v35[0] = @"kHomeLocationDataKey";
  v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:residentCopy requiringSecureCoding:1 error:0];
  v35[1] = @"HMD.LOC.SRC";
  v36[0] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  v36[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v24 = [v20 messageWithName:@"kHomeLocationUpdatedNotificationKey" destination:v19 payload:v23];

  if (_os_feature_enabled_impl())
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Restricting to local transport to update home location to ensure we are on the same network.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [v24 setRemoteRestriction:14];
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __66__HMDHomeLocationHandler_sendHomeLocationUpdateToResident_source___block_invoke;
  v32[3] = &unk_278685690;
  v32[4] = selfCopy;
  v33 = residentCopy;
  sourceCopy = source;
  v29 = residentCopy;
  [v24 setResponseHandler:v32];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v24 completionHandler:0];

  v31 = *MEMORY[0x277D85DE8];
}

void __66__HMDHomeLocationHandler_sendHomeLocationUpdateToResident_source___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send the location update to primary with an error %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _resendHomeLocationOnce:*(a1 + 40) newSource:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully sent the location update to primary : %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeLocationForHH2:(id)h2 updatedTime:(id)time source:(int64_t)source
{
  v49 = *MEMORY[0x277D85DE8];
  h2Copy = h2;
  timeCopy = time;
  home = [(HMDHomeLocationHandler *)self home];
  if (([home isAdminUser] & 1) == 0)
  {
    v21 = isInternalBuild();
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v25)
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v26;
        v45 = 2112;
        v46 = h2Copy;
        v27 = "%{public}@Not going to save the home location as this is not an admin user : %@";
LABEL_13:
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543619;
      v44 = v26;
      v45 = 2117;
      v46 = h2Copy;
      v27 = "%{public}@Not going to save the home location as this is not an admin user : %{sensitive}@";
      goto LABEL_13;
    }

    v28 = v22;
    goto LABEL_18;
  }

  if (![home hasAnyResident] || (objc_msgSend(home, "isCurrentDeviceConfirmedPrimaryResident") & 1) != 0)
  {
    v11 = [(HMDHomeLocationHandler *)self shouldAllowHomeLocationUpdateWithSource:source newLocation:h2Copy];
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v44 = v16;
        v45 = 2112;
        v46 = home;
        v47 = 2112;
        v48 = h2Copy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@We are allowed to run the cloud operation : %@. Updating home location: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDHomeLocationHandler *)selfCopy2 logHomeLocationEventWithLocation:h2Copy];
      v17 = +[HMDCoreData sharedInstance];
      uuid = [home uuid];
      v19 = [v17 contextWithHomeUUID:uuid];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__HMDHomeLocationHandler_handleHomeLocationForHH2_updatedTime_source___block_invoke;
      v36[3] = &unk_2786864F0;
      v37 = home;
      v38 = selfCopy2;
      v39 = h2Copy;
      v41 = v19;
      sourceCopy = source;
      v40 = timeCopy;
      v20 = v19;
      [v20 performBlock:v36];

      goto LABEL_19;
    }

    if (v15)
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v29;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not saving non-LOI home location.", buf, 0xCu);
    }

    v28 = v12;
LABEL_18:
    objc_autoreleasePoolPop(v28);
    goto LABEL_19;
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = HMDHomeLocationSourceToString(source);
    *buf = 138543874;
    v44 = v34;
    v45 = 2112;
    v46 = h2Copy;
    v47 = 2112;
    v48 = v35;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@We are not allowed to run any cloud operation on this device. Asking primary to update the home location: %@ from source: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  [(HMDHomeLocationHandler *)selfCopy3 sendHomeLocationUpdateToResident:h2Copy source:source];
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeLocationHandler_handleHomeLocationForHH2_updatedTime_source___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    [v3 setLocation:*(a1 + 48)];
    [v3 setLocationUpdateTimeStamp:*(a1 + 56)];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    [v3 setLocationSource:v4];

    v5 = *(a1 + 64);
    v33 = 0;
    v6 = [v5 save:&v33];
    v7 = v33;
    v8 = isInternalBuild();
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6 && !v7)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v13)
        {
          v14 = HMFGetLogIdentifier();
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          v17 = HMDHomeLocationSourceToString(*(a1 + 72));
          *buf = 138544130;
          v35 = v14;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = v16;
          v40 = 2112;
          v41 = v17;
          v18 = "%{public}@Successfully updated home location [%@] & time stamp [%@] & source [%@] to the working store";
LABEL_18:
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v18, buf, 0x2Au);

          goto LABEL_19;
        }
      }

      else if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v30 = *(a1 + 48);
        v31 = *(a1 + 56);
        v17 = HMDHomeLocationSourceToString(*(a1 + 72));
        *buf = 138544131;
        v35 = v14;
        v36 = 2117;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        v40 = 2112;
        v41 = v17;
        v18 = "%{public}@Successfully updated home location [%{sensitive}@] & time stamp [%@] & source [%@] to the working store";
        goto LABEL_18;
      }

LABEL_20:

      objc_autoreleasePoolPop(v9);
      goto LABEL_21;
    }

    v24 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (!v24)
      {
        goto LABEL_20;
      }

      v14 = HMFGetLogIdentifier();
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      *buf = 138543874;
      v35 = v14;
      v36 = 2112;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      v27 = "%{public}@Unable to save the home location & time stamp : %@ / %@";
    }

    else
    {
      if (!v24)
      {
        goto LABEL_20;
      }

      v14 = HMFGetLogIdentifier();
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      *buf = 138543875;
      v35 = v14;
      v36 = 2117;
      v37 = v28;
      v38 = 2112;
      v39 = v29;
      v27 = "%{public}@Unable to save the home location & time stamp : %{sensitive}@ / %@";
    }

    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v27, buf, 0x20u);
LABEL_19:

    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 40);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [*(a1 + 32) uuid];
    *buf = 138543618;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionWithLocation:(id)location updatedTime:(id)time source:(int64_t)source
{
  v22 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  timeCopy = time;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMDHomeLocationSourceToString(source);
    v16 = 138543874;
    v17 = v13;
    v18 = 2112;
    v19 = locationCopy;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Determined Location: %@, Source : %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDHomeLocationHandler *)selfCopy handleHomeLocationForHH2:locationCopy updatedTime:timeCopy source:source];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldUpdateLocationFromLocationData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  location = [dataCopy location];

  if (location)
  {
    location2 = [dataCopy location];
    if ([HMDLocation isAccurateLocation:location2])
    {
      locationUpdateTimestamp = [dataCopy locationUpdateTimestamp];
      locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
      v9 = [(HMDHomeLocationHandler *)self isDate:locationUpdateTimestamp laterThanDate:locationUpdateTimestamp2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Location data has nil location. Will not update location from location data", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_handleHomeLocationDataForHH2:(id)h2 fromMessage:(id)message
{
  v74 = *MEMORY[0x277D85DE8];
  h2Copy = h2;
  messageCopy = message;
  home = [(HMDHomeLocationHandler *)self home];
  location = [h2Copy location];

  if (location)
  {
    location2 = [(HMDHomeLocationHandler *)self location];
    locationSource = [h2Copy locationSource];
    intValue = [locationSource intValue];

    if (location2)
    {
      location3 = [h2Copy location];
      if (-[HMDHomeLocationHandler isNewHomeLocationTooCloseToPreviousLocation:newLocation:](self, "isNewHomeLocationTooCloseToPreviousLocation:newLocation:", location2, location3) && (-[HMDHomeLocationHandler locationUpdateTimestamp](self, "locationUpdateTimestamp"), v13 = objc_claimAutoreleasedReturnValue(), [h2Copy locationUpdateTimestamp], v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v13, (v15 & 1) != 0))
      {
        locationSource2 = [(HMDHomeLocationHandler *)self locationSource];

        if (locationSource2 == intValue)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v65 = v20;
            v21 = "%{public}@Not updating the home location as current location is too close to previous one";
LABEL_18:
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, v21, buf, 0xCu);

            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    location4 = [h2Copy location];
    v27 = [(HMDHomeLocationHandler *)self shouldAllowHomeLocationUpdateWithSource:intValue newLocation:location4];

    if (v27)
    {
      v28 = isInternalBuild();
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v32)
        {
          v33 = HMFGetLogIdentifier();
          location5 = [(HMDHomeLocationHandler *)selfCopy2 location];
          [h2Copy location];
          v35 = v59 = location2;
          name = [messageCopy name];
          *buf = 138544386;
          v65 = v33;
          v66 = 2112;
          v67 = home;
          v68 = 2112;
          v69 = location5;
          v70 = 2112;
          v71 = v35;
          v72 = 2112;
          v73 = name;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating location for home %@ from: %@ to %@, message: %@", buf, 0x34u);

          location2 = v59;
        }
      }

      else if (v32)
      {
        HMFGetLogIdentifier();
        v37 = v60 = v29;
        location6 = [(HMDHomeLocationHandler *)selfCopy2 location];
        location7 = [h2Copy location];
        name2 = [messageCopy name];
        *buf = 138544387;
        v65 = v37;
        v66 = 2112;
        v67 = home;
        v68 = 2117;
        v69 = location6;
        v70 = 2117;
        v71 = location7;
        v72 = 2112;
        v73 = name2;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating location for home %@ from: %{sensitive}@ to %{sensitive}@, message: %@", buf, 0x34u);

        v29 = v60;
      }

      v61 = home;

      objc_autoreleasePoolPop(v29);
      location8 = [h2Copy location];
      [(HMDHomeLocationHandler *)selfCopy2 setLocation:location8];

      locationUpdateTimestamp = [h2Copy locationUpdateTimestamp];
      [(HMDHomeLocationHandler *)selfCopy2 setLocationUpdateTimestamp:locationUpdateTimestamp];

      [(HMDHomeLocationHandler *)selfCopy2 setLocationSource:intValue];
      location9 = [(HMDHomeLocationHandler *)selfCopy2 location];
      [(HMDHomeLocationHandler *)selfCopy2 _updateTimeZone:location9];

      regionAtHome = [(HMDHomeLocationHandler *)selfCopy2 regionAtHome];
      if (!regionAtHome)
      {
        goto LABEL_26;
      }

      v45 = regionAtHome;
      regionNearbyHome = [(HMDHomeLocationHandler *)selfCopy2 regionNearbyHome];

      if (!regionNearbyHome || location2 && ([h2Copy location], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[HMDHomeLocationHandler isNewHomeLocationTooCloseToPreviousLocation:newLocation:](selfCopy2, "isNewHomeLocationTooCloseToPreviousLocation:newLocation:", location2, v47), v47, !v48))
      {
LABEL_26:
        [(HMDHomeLocationHandler *)selfCopy2 _registerForRegionUpdate];
      }

      [(HMDHomeLocationHandler *)selfCopy2 _sendLocationUpdateToClients];
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy2;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = HMFGetLogIdentifier();
        locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)v50 locationUpdateTimestamp];
        locationUpdateTimestamp3 = [h2Copy locationUpdateTimestamp];
        v55 = HMDHomeLocationSourceToString([(HMDHomeLocationHandler *)v50 locationSource]);
        *buf = 138544386;
        v65 = v52;
        v66 = 2112;
        v67 = v62;
        v68 = 2112;
        v69 = locationUpdateTimestamp2;
        v70 = 2112;
        v71 = locationUpdateTimestamp3;
        v72 = 2112;
        v73 = v55;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@Updating last home location update for home %@ from: %@ to %@ with source %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v49);
      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      home = v62;
      goto LABEL_30;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v20;
      v21 = "%{public}@Not saving non-LOI home location.";
      goto LABEL_18;
    }

LABEL_19:

    objc_autoreleasePoolPop(v17);
LABEL_30:

    goto LABEL_31;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@New location is nil. Will not register for region updates.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
LABEL_31:

  v57 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_handleHomeLocationData:(id)data message:(id)message
{
  v6 = MEMORY[0x277CCAAC8];
  messageCopy = message;
  dataCopy = data;
  v9 = [v6 alloc];
  homeLocationData = [dataCopy homeLocationData];

  v11 = [v9 initForReadingFromData:homeLocationData error:0];
  v12 = [v11 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  v13 = [(HMDHomeLocationHandler *)self _handleHomeLocationDataForHH2:v12 fromMessage:messageCopy];

  return v13;
}

- (void)_updateTimeZone:(id)zone
{
  zoneCopy = zone;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3042000000;
  v6[3] = __Block_byref_object_copy__251465;
  v6[4] = __Block_byref_object_dispose__251466;
  objc_initWeak(&v7, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HMDHomeLocationHandler__updateTimeZone___block_invoke;
  v5[3] = &unk_278685668;
  v5[4] = self;
  v5[5] = v6;
  [HMDLocation timeZoneISOCountryCodeForCLLocationAsync:zoneCopy withCompletion:v5];
  _Block_object_dispose(v6, 8);
  objc_destroyWeak(&v7);
}

void __42__HMDHomeLocationHandler__updateTimeZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    [WeakRetained setTimeZone:v5];
    [v8 setIsoCountryCode:v6];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 timeZone];
      v14 = [v8 isoCountryCode];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating timezone %@, country: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateHomeRegionStateForCurrentDeviceLocation:(id)location
{
  v33 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLocationHandler *)self home];
  v7 = isInternalBuild();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      uuid = [home uuid];
      uUIDString = [uuid UUIDString];
      location = [(HMDHomeLocationHandler *)selfCopy location];
      *buf = 138544130;
      v26 = v12;
      v27 = 2112;
      v28 = uUIDString;
      v29 = 2112;
      v30 = location;
      v31 = 2112;
      v32 = locationCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating current device region state for home %@ using home location %@ and device location %@", buf, 0x2Au);
    }
  }

  else if (v11)
  {
    v16 = HMFGetLogIdentifier();
    uuid2 = [home uuid];
    uUIDString2 = [uuid2 UUIDString];
    location2 = [(HMDHomeLocationHandler *)selfCopy location];
    *buf = 138544131;
    v26 = v16;
    v27 = 2112;
    v28 = uUIDString2;
    v29 = 2117;
    v30 = location2;
    v31 = 2117;
    v32 = locationCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating current device region state for home %@ using home location %{sensitive}@ and device location %{sensitive}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  location3 = [(HMDHomeLocationHandler *)selfCopy location];
  v21 = location3 == 0;

  if (locationCopy != 0 && v21)
  {
    objc_initWeak(buf, selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HMDHomeLocationHandler__evaluateHomeRegionStateForCurrentDeviceLocation___block_invoke;
    v23[3] = &unk_278685640;
    objc_copyWeak(&v24, buf);
    [HMDLocation timeZoneISOCountryCodeForCLLocationAsync:locationCopy withCompletion:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeLocationHandler__evaluateHomeRegionStateForCurrentDeviceLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    [WeakRetained setIsoCountryCode:v6];
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v10 isoCountryCode];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating device isoCountry code: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUpdateHomeLocation
{
  _canExtractLocation = [(HMDHomeLocationHandler *)self _canExtractLocation];
  if (_canExtractLocation)
  {

    LOBYTE(_canExtractLocation) = [(HMDHomeLocationHandler *)self _needToExtractLocations];
  }

  return _canExtractLocation;
}

- (BOOL)_needToExtractLocations
{
  v51 = *MEMORY[0x277D85DE8];
  location = [(HMDHomeLocationHandler *)self location];

  if (location)
  {
    locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];

    if (locationUpdateTimestamp)
    {
      locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
      [locationUpdateTimestamp2 timeIntervalSinceNow];
      v7 = fabs(v6);

      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        home = [(HMDHomeLocationHandler *)selfCopy home];
        v13 = HMFTimeIntervalDescription();
        getLocationUpdateTimeInterval();
        v14 = HMFTimeIntervalDescription();
        v43 = 138544130;
        v44 = v11;
        v45 = 2112;
        v46 = home;
        v47 = 2112;
        v48 = v13;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Time since last location update for home %@ is %@. Update interval is %@", &v43, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
      if (v7 < getLocationUpdateTimeInterval())
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v43 = 138543362;
          v44 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not extracting location as not enough time has passed.", &v43, 0xCu);
        }

        v19 = v15;
LABEL_22:
        objc_autoreleasePoolPop(v19);
        result = 0;
        goto LABEL_23;
      }
    }

    lastAttemptedLocationUpdate = [(HMDHomeLocationHandler *)self lastAttemptedLocationUpdate];

    if (lastAttemptedLocationUpdate)
    {
      LocationUpdateTimeInterval = getLocationUpdateTimeInterval();
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        home2 = [(HMDHomeLocationHandler *)selfCopy2 home];
        lastAttemptedLocationUpdate2 = [(HMDHomeLocationHandler *)selfCopy2 lastAttemptedLocationUpdate];
        v28 = HMFTimeIntervalDescription();
        v43 = 138544130;
        v44 = v25;
        v45 = 2112;
        v46 = home2;
        v47 = 2112;
        v48 = lastAttemptedLocationUpdate2;
        v49 = 2112;
        v50 = v28;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Last location attempt for home %@ is %@. Update interval is %@", &v43, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      lastAttemptedLocationUpdate3 = [(HMDHomeLocationHandler *)selfCopy2 lastAttemptedLocationUpdate];
      date = [MEMORY[0x277CBEAA8] date];
      [lastAttemptedLocationUpdate3 timeIntervalSinceDate:date];
      v32 = fabs(v31);

      if (v32 < LocationUpdateTimeInterval || vabdd_f64(v32, LocationUpdateTimeInterval) < 2.22044605e-16)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy2;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          v43 = 138543362;
          v44 = v41;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Not evalutating home location as last attempted time is below threshold.", &v43, 0xCu);
        }

        v19 = v38;
        goto LABEL_22;
      }

      date2 = [MEMORY[0x277CBEAA8] date];
      [(HMDHomeLocationHandler *)selfCopy2 setLastAttemptedLocationUpdate:date2];
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Location is not known, need to extract location", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

  result = 1;
LABEL_23:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_canExtractLocation
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  v4 = home;
  if (!home)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(&selfCopy2->super.super, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      objc_autoreleasePoolPop(v6);
      v5 = 0;
      goto LABEL_14;
    }

    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, &selfCopy2->super.super, OS_LOG_TYPE_ERROR, "%{public}@No home reference?", &v15, 0xCu);
    goto LABEL_12;
  }

  if (([home isAdminUser] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Not evaluating home location as user is not Admin.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([(HMDHomeLocationHandler *)self locationAuthorization]!= 1)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@homed is not authorized for location services";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_hasReachableAccessoriesExcludingMatter
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  v4 = home;
  if (!home)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = HMFGetOSLogHandle();
    if (!os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      objc_autoreleasePoolPop(v8);
      v7 = 0;
      goto LABEL_10;
    }

    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_229538000, &selfCopy->super.super, OS_LOG_TYPE_ERROR, "%{public}@No home reference?", &v14, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  reachableAccessoriesCountExcludingMatter = [home reachableAccessoriesCountExcludingMatter];
  reachableAppleMediaAccessoriesCount = [v4 reachableAppleMediaAccessoriesCount];
  if ((reachableAppleMediaAccessoriesCount + reachableAccessoriesCountExcludingMatter < 0) ^ __OFADD__(reachableAppleMediaAccessoriesCount, reachableAccessoriesCountExcludingMatter) | (reachableAppleMediaAccessoriesCount + reachableAccessoriesCountExcludingMatter == 0))
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Home %@ does not have any reachable accessories, no need to extract location", &v14, 0x16u);
    }

    goto LABEL_8;
  }

  v7 = 1;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)accessoriesBecomeUnreachable
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@The last accessory becomes unreachable, trying to stop extracting location.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy setFirstAccessoryReachable:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)accessoriesBecomeReachable
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@The first accessory becomes reachable, evaluating to extract location.", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy setFirstAccessoryReachable:1];
  if ([(HMDHomeLocationHandler *)selfCopy _hasReachableAccessoriesExcludingMatter])
  {
    if ([(HMDHomeLocationHandler *)selfCopy _shouldUpdateHomeLocation])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = selfCopy;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        home = [(HMDHomeLocationHandler *)v8 home];
        v19 = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = home;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessories are reachable, extracting location for home %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [HMDRegionStateCorrectnessLogEvent updateWithFirstAccessory:[(HMDHomeLocationHandler *)v8 regionStateAtHome] nearbyHome:[(HMDHomeLocationHandler *)v8 regionStateNearbyHome]];
      logEventSubmitter = [(HMDHomeLocationHandler *)v8 logEventSubmitter];
      [logEventSubmitter submitLogEvent:v12];

      [(HMDHomeLocationHandler *)v8 updateHomeLocationFromSingleOrCoreRoutine];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No reachable accessories, not extracting location.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)matterAccessoryBecameReachable
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeLocationHandler *)self _hasReachableAccessoriesExcludingMatter])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Already have reachable accessories, not extracting location.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else if ([(HMDHomeLocationHandler *)self _shouldUpdateHomeLocation])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating home location for Matter reachability.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDHomeLocationHandler *)selfCopy2 updateHomeLocationFromSingleOrCoreRoutine];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateHomeLocationForPairing
{
  v13 = *MEMORY[0x277D85DE8];
  _canExtractLocation = [(HMDHomeLocationHandler *)self _canExtractLocation];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (_canExtractLocation)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Using Single Core Routine API to update home location for pairing.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDHomeLocationHandler *)selfCopy setPairingHomeLocationOverride:1];
    [(HMDHomeLocationHandler *)selfCopy updateHomeLocationFromCoreRoutine];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cannot extract location", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)accessoryReachabilityChanged:(int)changed previousReachableAccessoriesCount:(int)count reachableAppleMediaAccessoriesCount:(int)accessoriesCount previousReachableAppleMediaAccessoriesCount:(int)mediaAccessoriesCount
{
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  v13 = accessoriesCount > 0 && mediaAccessoriesCount == 0;
  v14 = mediaAccessoriesCount + count;
  v15 = mediaAccessoriesCount + count > 0 && accessoriesCount + changed < 1;
  if (accessoriesCount + changed >= 1 && v14 <= 0)
  {
    location = [(HMDHomeLocationHandler *)selfCopy location];
    if (!location || (v17 = location, v18 = [home hasAnyResident], v17, (v18 & 1) == 0))
    {
LABEL_18:
      [(HMDHomeLocationHandler *)selfCopy accessoriesBecomeReachable];
      goto LABEL_19;
    }
  }

  if (v13)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@The first media accessory becomes reachable, evaluating to extract location", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    goto LABEL_18;
  }

  if (v15)
  {
    [(HMDHomeLocationHandler *)selfCopy accessoriesBecomeUnreachable];
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateHomeLocation
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeLocationHandler *)self locationAuthorization]== 1)
  {
    home = [(HMDHomeLocationHandler *)self home];
    isAdminUser = [home isAdminUser];

    if (isAdminUser)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Extracting home location", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = +[HMDLocation sharedManager];
      [v9 startExtractingSingleLocationForDelegate:selfCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRetrieveLocation:(id)location
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if ([locationCopy isAuthorizedForLocationAccess])
  {
    proxyConnection = [locationCopy proxyConnection];
    processInfo = [proxyConnection processInfo];
    locationAuthorization = [processInfo locationAuthorization];
    [locationAuthorization mark];

    LODWORD(locationAuthorization) = isInternalBuild();
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (locationAuthorization)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        location = [(HMDHomeLocationHandler *)selfCopy location];
        home = [(HMDHomeLocationHandler *)selfCopy home];
        *buf = 138543874;
        v26 = v12;
        v27 = 2112;
        v28 = location;
        v29 = 2112;
        v30 = home;
        v15 = "%{public}@Sending location %@ for home %@";
LABEL_10:
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v15, buf, 0x20u);
      }
    }

    else if (v11)
    {
      v12 = HMFGetLogIdentifier();
      location = [(HMDHomeLocationHandler *)selfCopy location];
      home = [(HMDHomeLocationHandler *)selfCopy home];
      *buf = 138543875;
      v26 = v12;
      v27 = 2117;
      v28 = location;
      v29 = 2112;
      v30 = home;
      v15 = "%{public}@Sending location %{sensitive}@ for home %@";
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v8);
    location2 = [(HMDHomeLocationHandler *)selfCopy location];
    v20 = encodeRootObject();
    v24 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [locationCopy respondWithPayload:v21];

    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Client does not have authorization to location", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  [locationCopy respondWithPayload:0];
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocationAuthorization:(int64_t)authorization
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeLocationHandler *)self locationAuthorization]== authorization)
  {
LABEL_7:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  [(HMDHomeLocationHandler *)self setLocationAuthorization:authorization];
  if (authorization != 1)
  {
    if (authorization == 2)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received a call back that the location is not allowed for homed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    goto LABEL_7;
  }

  [(HMDHomeLocationHandler *)self _registerForRegionUpdate];
  v11 = +[HMDLocation sharedManager];
  [v11 startExtractingSingleLocationForDelegate:self];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentResidentGenerationIDNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  [(HMDHomeLocationHandler *)self _unregisterForPrimaryResidentGenerationIDNotification];
  cachedLocation = [(HMDHomeLocationHandler *)self cachedLocation];
  if (cachedLocation && (v6 = cachedLocation, v7 = [(HMDHomeLocationHandler *)self cachedSource], v6, v7))
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      cachedLocation2 = [(HMDHomeLocationHandler *)selfCopy cachedLocation];
      v13 = HMDHomeLocationSourceToString([(HMDHomeLocationHandler *)selfCopy cachedSource]);
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = cachedLocation2;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@We are not allowed to run any cloud operation on this device. Asking primary to update the home location: %@ from source: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    cachedLocation3 = [(HMDHomeLocationHandler *)selfCopy cachedLocation];
    [(HMDHomeLocationHandler *)selfCopy sendHomeLocationUpdateToResident:cachedLocation3 source:[(HMDHomeLocationHandler *)selfCopy cachedSource]];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not sending home location update as location or source is nil.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocationAuthorizationChangedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    -[HMDHomeLocationHandler _handleLocationAuthorization:](self, "_handleLocationAuthorization:", [v6 integerValue]);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@No location authorization", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRegisterForSignificantRegion
{
  if (isiOSDevice())
  {
    return 1;
  }

  return isMac();
}

- (void)_unregisterForPrimaryResidentGenerationIDNotification
{
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDHomeLocationHandler__unregisterForPrimaryResidentGenerationIDNotification__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __79__HMDHomeLocationHandler__unregisterForPrimaryResidentGenerationIDNotification__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing observer for Primary Resident Generation ID notifications.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" object:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_registerForPrimaryResidentGenerationIDNotification
{
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDHomeLocationHandler__registerForPrimaryResidentGenerationIDNotification__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __77__HMDHomeLocationHandler__registerForPrimaryResidentGenerationIDNotification__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering for Primary Resident Generation ID notifications.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__handlePrimaryResidentResidentGenerationIDNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" object:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_registerForRegionUpdate
{
  v78 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  if (home)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    regionAtHome = [(HMDHomeLocationHandler *)self regionAtHome];

    if (regionAtHome)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v77 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Deregistering for old location at home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      regionAtHome2 = [(HMDHomeLocationHandler *)selfCopy regionAtHome];
      [v4 addObject:regionAtHome2];
    }

    regionNearbyHome = [(HMDHomeLocationHandler *)self regionNearbyHome];

    if (regionNearbyHome)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v77 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Deregistering for old location nearby home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      regionNearbyHome2 = [(HMDHomeLocationHandler *)selfCopy2 regionNearbyHome];
      [v4 addObject:regionNearbyHome2];
    }

    if ([v4 count])
    {
      v17 = +[HMDLocation sharedManager];
      v18 = [v4 copy];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke;
      v74[3] = &unk_27868A250;
      v74[4] = self;
      [v17 deregisterForRegionUpdate:v18 completionHandler:v74];

      [(HMDHomeLocationHandler *)self setRegionAtHome:0];
      [(HMDHomeLocationHandler *)self setRegionNearbyHome:0];
    }

    location = [(HMDHomeLocationHandler *)self location];

    if (location)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v77 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for new location at home region and nearby home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      _shouldRegisterForSignificantRegion = [(HMDHomeLocationHandler *)selfCopy3 _shouldRegisterForSignificantRegion];
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy3;
      v27 = HMFGetOSLogHandle();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (_shouldRegisterForSignificantRegion)
      {
        if (v28)
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v77 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Using significant region for atHome GeoFence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v30 = objc_alloc(MEMORY[0x277CBFCD8]);
        location2 = [(HMDHomeLocationHandler *)v26 location];
        [location2 coordinate];
        v33 = v32;
        v35 = v34;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v38 = [v30 initWithCenter:uUIDString radius:v33 identifier:{v35, 100.0}];
      }

      else
      {
        if (v28)
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v77 = v43;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Using circular region for atHome GeoFence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v44 = objc_alloc(MEMORY[0x277CBFBC8]);
        location2 = [(HMDHomeLocationHandler *)v26 location];
        [location2 coordinate];
        v46 = v45;
        v48 = v47;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v38 = [v44 initWithCenter:uUIDString radius:1 identifier:v46 nearbyAllowed:{v48, 100.0}];
      }

      v49 = v38;
      [(HMDHomeLocationHandler *)v26 setRegionAtHome:v38];

      regionAtHome3 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      [regionAtHome3 setNotifyOnExit:1];

      regionAtHome4 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      [regionAtHome4 setNotifyOnEntry:1];

      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v53 = [mEMORY[0x277D0F8D0] preferenceForKey:@"homeNearbyRegionRadius"];
      numberValue = [v53 numberValue];

      [numberValue doubleValue];
      v56 = v55;

      v57 = objc_alloc(MEMORY[0x277CBFBC8]);
      location3 = [(HMDHomeLocationHandler *)v26 location];
      [location3 coordinate];
      v60 = v59;
      v62 = v61;
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      uUIDString2 = [uUID2 UUIDString];
      v65 = [v57 initWithCenter:uUIDString2 radius:1 identifier:v60 nearbyAllowed:{v62, v56}];
      [(HMDHomeLocationHandler *)v26 setRegionNearbyHome:v65];

      regionNearbyHome3 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      [regionNearbyHome3 setNotifyOnExit:1];

      regionNearbyHome4 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      [regionNearbyHome4 setNotifyOnEntry:1];

      logAndPostNotification(@"HMDLocationHomeGeofencesRegistered", v26, 0);
      v68 = +[HMDLocation sharedManager];
      regionAtHome5 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      v75[0] = regionAtHome5;
      regionNearbyHome5 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      v75[1] = regionNearbyHome5;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke_63;
      v73[3] = &unk_27868A250;
      v73[4] = v26;
      [v68 registerForRegionUpdate:v71 withDelegate:v26 completionHandler:v73];
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v42;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
  }

  v72 = *MEMORY[0x277D85DE8];
}

void __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Region update deregistered with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke_63(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Region update registered with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v9[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD2568];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handleRetrieveLocation_];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher
{
  v34 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  [(HMDHomeLocationHandler *)self setHome:configureCopy];
  [(HMDHomeLocationHandler *)self setWorkQueue:queueCopy];
  [(HMDHomeLocationHandler *)self setMsgDispatcher:dispatcherCopy];
  v11 = isInternalBuild();
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      location = selfCopy->_location;
      hmf_localTimeDescription = [(NSDate *)selfCopy->_locationUpdateTimestamp hmf_localTimeDescription];
      v19 = HMDHomeLocationSourceToString(selfCopy->_locationSource);
      v24 = 138544386;
      v25 = v16;
      v26 = 2112;
      v27 = configureCopy;
      v28 = 2112;
      v29 = location;
      v30 = 2112;
      v31 = hmf_localTimeDescription;
      v32 = 2112;
      v33 = v19;
      v20 = "%{public}@Configured location handler for home %@, with: %@, and timestamp with: %@, and source: %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v20, &v24, 0x34u);
    }
  }

  else if (v15)
  {
    v16 = HMFGetLogIdentifier();
    v21 = selfCopy->_location;
    hmf_localTimeDescription = [(NSDate *)selfCopy->_locationUpdateTimestamp hmf_localTimeDescription];
    v19 = HMDHomeLocationSourceToString(selfCopy->_locationSource);
    v24 = 138544387;
    v25 = v16;
    v26 = 2112;
    v27 = configureCopy;
    v28 = 2117;
    v29 = v21;
    v30 = 2112;
    v31 = hmf_localTimeDescription;
    v32 = 2112;
    v33 = v19;
    v20 = "%{public}@Configured location handler for home %@, with: %{sensitive}@, and timestamp with: %@, and source: %@";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v12);
  [(HMDHomeLocationHandler *)selfCopy _updateTimeZone:selfCopy->_location];
  [(HMDHomeLocationHandler *)selfCopy _registerForMessages];
  v22 = +[HMDLocation sharedManager];
  -[HMDHomeLocationHandler _handleLocationAuthorization:](selfCopy, "_handleLocationAuthorization:", [v22 locationAuthorized]);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDHomeLocationHandler;
  [(HMDHomeLocationHandler *)&v4 dealloc];
}

- (HMDHomeLocationHandler)init
{
  v15.receiver = self;
  v15.super_class = HMDHomeLocationHandler;
  v2 = [(HMDHomeLocationHandler *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_locationAuthorization = 0;
    v2->_coalesceRegionUpdateIntervalInSeconds = 3.0;
    v2->_firstAccessoryReachable = 0;
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    lastArrival = v3->_lastArrival;
    v3->_lastArrival = v4;

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    lastExit = v3->_lastExit;
    v3->_lastExit = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:0.0];
    lastAttemptedLocationUpdate = v3->_lastAttemptedLocationUpdate;
    v3->_lastAttemptedLocationUpdate = v8;

    v3->_resendOnce = 0;
    v3->_shouldUpdateHomeLocation = 0;
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    homeLocationUpdateRequestTime = v3->_homeLocationUpdateRequestTime;
    v3->_homeLocationUpdateRequestTime = v10;

    v3->_regionStateAtHome = 0;
    v3->_regionStateNearbyHome = 0;
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v3->_logEventSubmitter;
    v3->_logEventSubmitter = v12;

    v3->_pairingHomeLocationOverride = 0;
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  location = [(HMDHomeLocationHandler *)self location];
  v5 = locationAsString(location);
  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  hmf_localTimeDescription = [locationUpdateTimestamp hmf_localTimeDescription];
  v8 = HMDHomeLocationSourceToString([(HMDHomeLocationHandler *)self locationSource]);
  v9 = [v3 initWithFormat:@"Loc: %@, Timestamp: %@, Source: %@", v5, hmf_localTimeDescription, v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t108 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t108, &__block_literal_global_251539);
  }

  v3 = logCategory__hmf_once_v109;

  return v3;
}

void __37__HMDHomeLocationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v109;
  logCategory__hmf_once_v109 = v1;
}

@end