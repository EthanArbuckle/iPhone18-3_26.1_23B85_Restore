@interface HMDLocationClusterGroup
- (HMDLocationClusterGroup)initWithCenter:(id)center;
- (id)attributeDescriptions;
@end

@implementation HMDLocationClusterGroup

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  center = [(HMDLocationClusterGroup *)self center];
  v5 = locationAsString(center);
  v6 = [v3 initWithName:@"Center" value:v5];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  locations = [(HMDLocationClusterGroup *)self locations];
  v9 = [v7 initWithName:@"Locations" value:locations];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDLocationClusterGroup)initWithCenter:(id)center
{
  centerCopy = center;
  if (centerCopy)
  {
    v6 = centerCopy;
    v15.receiver = self;
    v15.super_class = HMDLocationClusterGroup;
    v7 = [(HMDLocationClusterGroup *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_center, center);
      array = [MEMORY[0x277CBEB18] array];
      locations = v8->_locations;
      v8->_locations = array;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDLocationCluster *)v12 clusterWithGroups:v13, v14];
  }
}

@end