@interface HMDLocationTuple
- (HMDLocationTuple)initWithLocation:(id)a3 reachableIPAccessoryCount:(unint64_t)a4 reachableBTLEAccessoryCount:(unint64_t)a5 reachableMediaAccessoryCount:(unint64_t)a6;
- (id)attributeDescriptions;
@end

@implementation HMDLocationTuple

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDLocationTuple *)self location];
  v5 = locationAsString(v4);
  v6 = [v3 initWithName:@"Location" value:v5];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDLocationTuple reachableIPAccessoryCount](self, "reachableIPAccessoryCount")}];
  v9 = [v7 initWithName:@"Reachable IP Accessory Count" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDLocationTuple reachableBTLEAccessoryCount](self, "reachableBTLEAccessoryCount")}];
  v12 = [v10 initWithName:@"Reachable BTLE Accessory Count" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDLocationTuple reachableMediaAccessoryCount](self, "reachableMediaAccessoryCount")}];
  v15 = [v13 initWithName:@"Reachable Media Accessory Count" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDLocationTuple)initWithLocation:(id)a3 reachableIPAccessoryCount:(unint64_t)a4 reachableBTLEAccessoryCount:(unint64_t)a5 reachableMediaAccessoryCount:(unint64_t)a6
{
  v11 = a3;
  if (v11)
  {
    v12 = v11;
    v17.receiver = self;
    v17.super_class = HMDLocationTuple;
    v13 = [(HMDLocationTuple *)&v17 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_location, a3);
      v14->_reachableIPAccessoryCount = a4;
      v14->_reachableBTLEAccessoryCount = a5;
      v14->_reachableMediaAccessoryCount = a6;
    }

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return [NSManagedObject(HomeKitDaemon) mkf_findRelationOnProperty:v16 modelProtocol:? keyValue:?];
  }
}

@end