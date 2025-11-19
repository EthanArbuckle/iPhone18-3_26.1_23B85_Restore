@interface HMDLocationCluster
+ (id)logCategory;
- (CLLocation)bestLocation;
- (HMDLocationCluster)clusterWithGroups:(id)a3;
- (HMDLocationCluster)initWithLocations:(id)a3;
- (id)attributeDescriptions;
- (id)generateNewGroupsFromGroups:(id)a3;
- (id)kMeansClusteredGroups;
- (id)locationFromKMeansClusteredGroups:(id)a3;
@end

@implementation HMDLocationCluster

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDLocationCluster *)self locations];
  v5 = [v3 initWithName:@"Locations" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)locationFromKMeansClusteredGroups:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 locations];
        v12 = [v11 count];

        if (v12 > v6)
        {
          v13 = v10;

          v14 = [v13 locations];
          v6 = [v14 count];

          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
  v15 = [v7 locations];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v29 + 1) + 8 * j);
        v23 = [v7 center];
        [v23 distanceFromLocation:v22];
        v25 = v24;

        if (v25 < v19)
        {
          v26 = v22;

          v18 = v26;
          v19 = v25;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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

- (id)generateNewGroupsFromGroups:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
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
        v10 = [v9 locations];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v29 + 1) + 8 * j);
              [v17 coordinate];
              v15 = v15 + v18;
              [v17 coordinate];
              v14 = v14 + v19;
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v12);
        }

        else
        {
          v14 = 0.0;
          v15 = 0.0;
        }

        v20 = [v9 locations];
        v21 = v15 / [v20 count];

        v22 = [v9 locations];
        v23 = v14 / [v22 count];

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

- (HMDLocationCluster)clusterWithGroups:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(HMDLocationCluster *)self locations];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v4 count])
        {
          v11 = 0;
          v12 = -1;
          v13 = 0.0;
          do
          {
            v14 = [v4 objectAtIndexedSubscript:v11];
            v15 = [v14 center];
            [v15 distanceFromLocation:v10];
            v17 = v16;

            if (v17 < v13 || v11 == 0)
            {
              v12 = v11;
              v13 = v17;
            }

            ++v11;
          }

          while ([v4 count] > v11);
          if (v12 != -1)
          {
            v19 = [v4 objectAtIndexedSubscript:v12];
            v20 = [v19 locations];
            [v20 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  v5 = [(HMDLocationCluster *)self locations];
  v6 = [v5 count] / 3uLL;

  v7 = 0;
  do
  {
    v8 = [HMDLocationClusterGroup alloc];
    v9 = [(HMDLocationCluster *)self locations];
    v10 = [v9 objectAtIndexedSubscript:v7];
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
  v3 = [(HMDLocationCluster *)self locations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDLocationCluster *)self locations];
    v6 = [v5 count];

    if (v6 > 0xA)
    {
      v13 = [(HMDLocationCluster *)self kMeansClusteredGroups];
      v14 = [(HMDLocationCluster *)self locationFromKMeansClusteredGroups:v13];
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDLocationCluster *)v20 locations];
        v26 = 138543874;
        v27 = v22;
        v28 = 2048;
        v29 = [v23 count];
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Number of locations is %lu so using k-means-clustered location for best location: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(HMDLocationCluster *)v8 locations];
        v26 = 138543618;
        v27 = v10;
        v28 = 2048;
        v29 = [v11 count];
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Number of locations is only %lu so sorting and using most accurate location for best location", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [(HMDLocationCluster *)v8 locations];
      v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_166062];

      v14 = [v13 firstObject];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Number of locations is 0 so returning nil for best location", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
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

- (HMDLocationCluster)initWithLocations:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMDLocationCluster;
    v7 = [(HMDLocationCluster *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_locations, a3);
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
  if (logCategory__hmf_once_t3_166073 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_166073, &__block_literal_global_6_166074);
  }

  v3 = logCategory__hmf_once_v4_166075;

  return v3;
}

uint64_t __33__HMDLocationCluster_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_166075;
  logCategory__hmf_once_v4_166075 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end