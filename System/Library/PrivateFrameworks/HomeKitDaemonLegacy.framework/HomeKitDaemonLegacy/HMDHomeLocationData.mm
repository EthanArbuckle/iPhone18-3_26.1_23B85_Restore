@interface HMDHomeLocationData
- (HMDHomeLocationData)initWithCoder:(id)coder;
- (HMDHomeLocationData)initWithLocation:(id)location locationUpdateTimestamp:(id)timestamp locationSource:(id)source;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHomeLocationData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(HMDHomeLocationData *)self location];
  [coderCopy encodeObject:location forKey:@"homeLocation"];

  locationUpdateTimestamp = [(HMDHomeLocationData *)self locationUpdateTimestamp];
  [coderCopy encodeObject:locationUpdateTimestamp forKey:@"homeLocationNextUpdate"];

  locationSource = [(HMDHomeLocationData *)self locationSource];
  [coderCopy encodeObject:locationSource forKey:@"homeLocationSource"];
}

- (HMDHomeLocationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationNextUpdate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationSource"];

  v8 = [(HMDHomeLocationData *)self initWithLocation:v5 locationUpdateTimestamp:v6 locationSource:v7];
  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  location = [(HMDHomeLocationData *)self location];
  v5 = locationAsString(location);
  locationUpdateTimestamp = [(HMDHomeLocationData *)self locationUpdateTimestamp];
  hmf_localTimeDescription = [locationUpdateTimestamp hmf_localTimeDescription];
  locationSource = [(HMDHomeLocationData *)self locationSource];
  v9 = HMDHomeLocationSourceToString([locationSource intValue]);
  v10 = [v3 initWithFormat:@"Loc-Data: %@, Timestamp: %@, Source: %@", v5, hmf_localTimeDescription, v9];

  return v10;
}

- (HMDHomeLocationData)initWithLocation:(id)location locationUpdateTimestamp:(id)timestamp locationSource:(id)source
{
  locationCopy = location;
  timestampCopy = timestamp;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HMDHomeLocationData;
  v12 = [(HMDHomeLocationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_location, location);
    objc_storeStrong(&v13->_locationUpdateTimestamp, timestamp);
    objc_storeStrong(&v13->_locationSource, source);
  }

  return v13;
}

@end