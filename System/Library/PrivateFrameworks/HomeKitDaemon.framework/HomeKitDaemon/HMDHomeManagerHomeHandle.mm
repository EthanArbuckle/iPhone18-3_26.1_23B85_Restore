@interface HMDHomeManagerHomeHandle
- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)a3 homeUUID:(id)a4;
- (HMDHomeManagerHomeHandle)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeManagerHomeHandle

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  v5 = [v3 initWithName:@"homeUUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v8 = [v6 initWithName:@"backingStoreUUID" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  v6 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v7 = [v3 stringWithFormat:@"%@ %@, %@", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  [v4 encodeObject:v5 forKey:@"HMHH.b"];

  v6 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  [v4 encodeObject:v6 forKey:@"HMHH.h"];
}

- (HMDHomeManagerHomeHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.b"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.h"];

  v7 = [(HMDHomeManagerHomeHandle *)self initWithBackingStoreUUID:v5 homeUUID:v6];
  return v7;
}

- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)a3 homeUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeManagerHomeHandle;
  v9 = [(HMDHomeManagerHomeHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreUUID, a3);
    objc_storeStrong(&v10->_homeUUID, a4);
  }

  return v10;
}

@end