@interface HMDResidentLocationProvider
- (void)didDetermineLocation:(id)a3;
- (void)requestResidentLocation;
@end

@implementation HMDResidentLocationProvider

- (void)didDetermineLocation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@didDetermineLocation: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDResidentLocationProvider *)v6 setLocation:v4];
  v9 = [(HMDResidentLocationProvider *)v6 residentLocationUpdatedPromise];
  [v9 fulfillWithNoValue];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestResidentLocation
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
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
  locationUpdatedFuture = v4->_locationUpdatedFuture;
  v4->_locationUpdatedFuture = v8;

  objc_storeStrong(&v4->_residentLocationUpdatedPromise, *obj);
  v10 = +[HMDLocation sharedManager];
  [v10 startExtractingSingleLocationForDelegate:v4];

  v11 = *MEMORY[0x277D85DE8];
}

@end