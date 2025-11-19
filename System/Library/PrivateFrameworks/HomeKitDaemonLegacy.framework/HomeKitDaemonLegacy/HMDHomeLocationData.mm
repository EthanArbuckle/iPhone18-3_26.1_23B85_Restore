@interface HMDHomeLocationData
- (HMDHomeLocationData)initWithCoder:(id)a3;
- (HMDHomeLocationData)initWithLocation:(id)a3 locationUpdateTimestamp:(id)a4 locationSource:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeLocationData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeLocationData *)self location];
  [v4 encodeObject:v5 forKey:@"homeLocation"];

  v6 = [(HMDHomeLocationData *)self locationUpdateTimestamp];
  [v4 encodeObject:v6 forKey:@"homeLocationNextUpdate"];

  v7 = [(HMDHomeLocationData *)self locationSource];
  [v4 encodeObject:v7 forKey:@"homeLocationSource"];
}

- (HMDHomeLocationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeLocation"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationNextUpdate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationSource"];

  v8 = [(HMDHomeLocationData *)self initWithLocation:v5 locationUpdateTimestamp:v6 locationSource:v7];
  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(HMDHomeLocationData *)self location];
  v5 = locationAsString(v4);
  v6 = [(HMDHomeLocationData *)self locationUpdateTimestamp];
  v7 = [v6 hmf_localTimeDescription];
  v8 = [(HMDHomeLocationData *)self locationSource];
  v9 = HMDHomeLocationSourceToString([v8 intValue]);
  v10 = [v3 initWithFormat:@"Loc-Data: %@, Timestamp: %@, Source: %@", v5, v7, v9];

  return v10;
}

- (HMDHomeLocationData)initWithLocation:(id)a3 locationUpdateTimestamp:(id)a4 locationSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDHomeLocationData;
  v12 = [(HMDHomeLocationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_location, a3);
    objc_storeStrong(&v13->_locationUpdateTimestamp, a4);
    objc_storeStrong(&v13->_locationSource, a5);
  }

  return v13;
}

@end