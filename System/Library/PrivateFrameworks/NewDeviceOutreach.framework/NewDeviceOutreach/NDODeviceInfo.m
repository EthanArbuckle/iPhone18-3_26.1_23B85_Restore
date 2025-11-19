@interface NDODeviceInfo
+ (id)deviceInfoWithDevice:(id)a3 warranty:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NDODeviceInfo)initWithCoder:(id)a3;
- (NDODeviceInfo)initWithDevice:(id)a3 warranty:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDODeviceInfo

+ (id)deviceInfoWithDevice:(id)a3 warranty:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NDODeviceInfo alloc] initWithDevice:v6 warranty:v5];

  return v7;
}

- (NDODeviceInfo)initWithDevice:(id)a3 warranty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NDODeviceInfo;
  v8 = [(NDODeviceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NDODeviceInfo *)v8 setDevice:v6];
    [(NDODeviceInfo *)v9 setWarranty:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 device];
    v7 = [(NDODeviceInfo *)self device];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 warranty];
      v9 = [(NDODeviceInfo *)self warranty];
      v10 = [v8 isEqual:v9];
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
    v10 = [(NDODeviceInfo *)&v12 isEqual:v4];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NDODeviceInfo *)self device];
  v5 = [(NDODeviceInfo *)self warranty];
  if (v5)
  {
    v6 = @"has warranty";
  }

  else
  {
    v6 = @"missing warranty";
  }

  v7 = [(NDODeviceInfo *)self warranty];
  if ([v7 acOfferDisplay])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(NDODeviceInfo *)self warranty];
    v10 = [v9 acOfferEligibleUntil];
    v11 = [v8 stringWithFormat:@"eligible until %@", v10];
    v12 = [v3 stringWithFormat:@"%@: %@ %@", v4, v6, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"%@: %@ %@", v4, v6, @"No offer"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDODeviceInfo *)self device];
  [v4 encodeObject:v5 forKey:@"device"];

  v6 = [(NDODeviceInfo *)self warranty];
  [v4 encodeObject:v6 forKey:@"warranty"];
}

- (NDODeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NDODeviceInfo;
  v5 = [(NDODeviceInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    [(NDODeviceInfo *)v5 setDevice:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"warranty"];
    [(NDODeviceInfo *)v5 setWarranty:v7];
  }

  return v5;
}

@end