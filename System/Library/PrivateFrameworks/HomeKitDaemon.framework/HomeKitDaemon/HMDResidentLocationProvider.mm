@interface HMDResidentLocationProvider
- (void)didDetermineLocation:(id)location;
- (void)requestResidentLocation;
@end

@implementation HMDResidentLocationProvider

- (void)didDetermineLocation:(id)location
{
  v15 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = locationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@didDetermineLocation: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDResidentLocationProvider *)selfCopy setLocation:locationCopy];
  residentLocationUpdatedPromise = [(HMDResidentLocationProvider *)selfCopy residentLocationUpdatedPromise];
  [residentLocationUpdatedPromise fulfillWithNoValue];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestResidentLocation
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *obj = 138543362;
    *&obj[4] = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Requesting resident location", obj, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  *obj = 0;
  v7 = [MEMORY[0x277D0F7C0] futureWithPromise:obj];
  v8 = [v7 timeout:30.0];
  locationUpdatedFuture = selfCopy->_locationUpdatedFuture;
  selfCopy->_locationUpdatedFuture = v8;

  objc_storeStrong(&selfCopy->_residentLocationUpdatedPromise, *obj);
  v10 = +[HMDLocation sharedManager];
  [v10 startExtractingSingleLocationForDelegate:selfCopy];

  v11 = *MEMORY[0x277D85DE8];
}

@end