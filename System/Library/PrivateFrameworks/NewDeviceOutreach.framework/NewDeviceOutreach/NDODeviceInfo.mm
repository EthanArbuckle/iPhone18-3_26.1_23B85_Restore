@interface NDODeviceInfo
+ (id)deviceInfoWithDevice:(id)device warranty:(id)warranty;
- (BOOL)isEqual:(id)equal;
- (NDODeviceInfo)initWithCoder:(id)coder;
- (NDODeviceInfo)initWithDevice:(id)device warranty:(id)warranty;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDODeviceInfo

+ (id)deviceInfoWithDevice:(id)device warranty:(id)warranty
{
  warrantyCopy = warranty;
  deviceCopy = device;
  v7 = [[NDODeviceInfo alloc] initWithDevice:deviceCopy warranty:warrantyCopy];

  return v7;
}

- (NDODeviceInfo)initWithDevice:(id)device warranty:(id)warranty
{
  deviceCopy = device;
  warrantyCopy = warranty;
  v11.receiver = self;
  v11.super_class = NDODeviceInfo;
  v8 = [(NDODeviceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NDODeviceInfo *)v8 setDevice:deviceCopy];
    [(NDODeviceInfo *)v9 setWarranty:warrantyCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    device = [v5 device];
    device2 = [(NDODeviceInfo *)self device];
    if ([device isEqual:device2])
    {
      warranty = [v5 warranty];
      warranty2 = [(NDODeviceInfo *)self warranty];
      v10 = [warranty isEqual:warranty2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NDODeviceInfo;
    v10 = [(NDODeviceInfo *)&v12 isEqual:equalCopy];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  device = [(NDODeviceInfo *)self device];
  warranty = [(NDODeviceInfo *)self warranty];
  if (warranty)
  {
    v6 = @"has warranty";
  }

  else
  {
    v6 = @"missing warranty";
  }

  warranty2 = [(NDODeviceInfo *)self warranty];
  if ([warranty2 acOfferDisplay])
  {
    v8 = MEMORY[0x277CCACA8];
    warranty3 = [(NDODeviceInfo *)self warranty];
    acOfferEligibleUntil = [warranty3 acOfferEligibleUntil];
    v11 = [v8 stringWithFormat:@"eligible until %@", acOfferEligibleUntil];
    v12 = [v3 stringWithFormat:@"%@: %@ %@", device, v6, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"%@: %@ %@", device, v6, @"No offer"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(NDODeviceInfo *)self device];
  [coderCopy encodeObject:device forKey:@"device"];

  warranty = [(NDODeviceInfo *)self warranty];
  [coderCopy encodeObject:warranty forKey:@"warranty"];
}

- (NDODeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NDODeviceInfo;
  v5 = [(NDODeviceInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    [(NDODeviceInfo *)v5 setDevice:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"warranty"];
    [(NDODeviceInfo *)v5 setWarranty:v7];
  }

  return v5;
}

@end