@interface HMDLocationCluster
+ (id)logCategory;
- (CLLocation)bestLocation;
- (HMDLocationCluster)clusterWithGroups:(id)groups;
- (HMDLocationCluster)initWithLocations:(id)locations;
- (id)attributeDescriptions;
- (id)generateNewGroupsFromGroups:(id)groups;
- (id)kMeansClusteredGroups;
- (id)locationFromKMeansClusteredGroups:(id)groups;
@end

@implementation HMDLocationCluster

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  locations = [(HMDLocationCluster *)self locations];
  v5 = [v3 initWithName:@"Locations" value:locations];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)locationFromKMeansClusteredGroups:(id)groups
{
  v39 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [groupsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        locations = [v10 locations];
        v12 = [locations count];

        if (v12 > v6)
        {
          v13 = v10;

          locations2 = [v13 locations];
          v6 = [locations2 count];

          v7 = v13;
        }
      }

      v5 = [groupsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  locations3 = [v7 locations];
  v16 = [locations3 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *MEMORY[0x277CE41E0];
    v20 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(locations3);
        }

        v22 = *(*(&v29 + 1) + 8 * j);
        center = [v7 center];
        [center distanceFromLocation:v22];
        v25 = v24;

        if (v25 < v19)
        {
          v26 = v22;

          v18 = v26;
          v19 = v25;
        }
      }

      v17 = [locations3 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)generateNewGroupsFromGroups:(id)groups
{
  v39 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = groupsCopy;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        locations = [v9 locations];
        v11 = [locations countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          v14 = 0.0;
          v15 = 0.0;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(locations);
              }

              v17 = *(*(&v29 + 1) + 8 * j);
              [v17 coordinate];
              v15 = v15 + v18;
              [v17 coordinate];
              v14 = v14 + v19;
            }

            v12 = [locations countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v12);
        }

        else
        {
          v14 = 0.0;
          v15 = 0.0;
        }

        locations2 = [v9 locations];
        v21 = v15 / [locations2 count];

        locations3 = [v9 locations];
        v23 = v14 / [locations3 count];

        v24 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v21 longitude:v23];
        v25 = [[HMDLocationClusterGroup alloc] initWithCenter:v24];
        [v4 addObject:v25];
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HMDLocationCluster)clusterWithGroups:(id)groups
{
  v28 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  locations = [(HMDLocationCluster *)self locations];
  v6 = [locations countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(locations);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([groupsCopy count])
        {
          v11 = 0;
          v12 = -1;
          v13 = 0.0;
          do
          {
            v14 = [groupsCopy objectAtIndexedSubscript:v11];
            center = [v14 center];
            [center distanceFromLocation:v10];
            v17 = v16;

            if (v17 < v13 || v11 == 0)
            {
              v12 = v11;
              v13 = v17;
            }

            ++v11;
          }

          while ([groupsCopy count] > v11);
          if (v12 != -1)
          {
            v19 = [groupsCopy objectAtIndexedSubscript:v12];
            locations2 = [v19 locations];
            [locations2 addObject:v10];
          }
        }
      }

      v7 = [locations countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)kMeansClusteredGroups
{
  v3 = 3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  locations = [(HMDLocationCluster *)self locations];
  v6 = [locations count] / 3uLL;

  v7 = 0;
  do
  {
    v8 = [HMDLocationClusterGroup alloc];
    locations2 = [(HMDLocationCluster *)self locations];
    v10 = [locations2 objectAtIndexedSubscript:v7];
    v11 = [(HMDLocationClusterGroup *)v8 initWithCenter:v10];
    [v4 addObject:v11];

    v7 += v6;
    --v3;
  }

  while (v3);
  v12 = [v4 copy];
  [(HMDLocationCluster *)self clusterWithGroups:v12];
  v13 = 10;
  do
  {
    v14 = v12;
    v12 = [(HMDLocationCluster *)self generateNewGroupsFromGroups:v12];

    [(HMDLocationCluster *)self clusterWithGroups:v12];
    --v13;
  }

  while (v13);

  return v12;
}

- (CLLocation)bestLocation
{
  v32 = *MEMORY[0x277D85DE8];
  locations = [(HMDLocationCluster *)self locations];
  v4 = [locations count];

  if (v4)
  {
    locations2 = [(HMDLocationCluster *)self locations];
    v6 = [locations2 count];

    if (v6 > 0xA)
    {
      kMeansClusteredGroups = [(HMDLocationCluster *)self kMeansClusteredGroups];
      firstObject = [(HMDLocationCluster *)self locationFromKMeansClusteredGroups:kMeansClusteredGroups];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        locations3 = [(HMDLocationCluster *)selfCopy locations];
        v26 = 138543874;
        v27 = v22;
        v28 = 2048;
        v29 = [locations3 count];
        v30 = 2112;
        v31 = firstObject;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Number of locations is %lu so using k-means-clustered location for best location: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        locations4 = [(HMDLocationCluster *)selfCopy2 locations];
        v26 = 138543618;
        v27 = v10;
        v28 = 2048;
        v29 = [locations4 count];
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Number of locations is only %lu so sorting and using most accurate location for best location", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      locations5 = [(HMDLocationCluster *)selfCopy2 locations];
      kMeansClusteredGroups = [locations5 sortedArrayUsingComparator:&__block_literal_global_244466];

      firstObject = [kMeansClusteredGroups firstObject];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Number of locations is 0 so returning nil for best location", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    firstObject = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return firstObject;
}

uint64_t __34__HMDLocationCluster_bestLocation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 horizontalAccuracy];
  v7 = v6;
  [v5 horizontalAccuracy];
  if (v7 >= v8)
  {
    [v4 horizontalAccuracy];
    v11 = v10;
    [v5 horizontalAccuracy];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (HMDLocationCluster)initWithLocations:(id)locations
{
  locationsCopy = locations;
  if (locationsCopy)
  {
    v6 = locationsCopy;
    v12.receiver = self;
    v12.super_class = HMDLocationCluster;
    v7 = [(HMDLocationCluster *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_locations, locations);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDLocationCluster *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_244477 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_244477, &__block_literal_global_6_244478);
  }

  v3 = logCategory__hmf_once_v4_244479;

  return v3;
}

void __33__HMDLocationCluster_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_244479;
  logCategory__hmf_once_v4_244479 = v1;
}

@end