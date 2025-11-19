@interface FMDExtAccessoryInfo
- (FMDExtAccessoryInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDExtAccessoryInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
  [v4 encodeObject:v5 forKey:@"accessoryIdentifier"];

  v6 = [(FMDExtAccessoryInfo *)self accessoryType];
  [v4 encodeObject:v6 forKey:@"accessoryType"];

  v7 = [(FMDExtAccessoryInfo *)self serialNumbers];
  [v4 encodeObject:v7 forKey:@"serialNumbers"];

  v8 = [(FMDExtAccessoryInfo *)self firmwareVersion];
  [v4 encodeObject:v8 forKey:@"firmwareVersion"];

  v9 = [(FMDExtAccessoryInfo *)self name];
  [v4 encodeObject:v9 forKey:@"name"];

  v10 = [(FMDExtAccessoryInfo *)self additionalInfo];
  [v4 encodeObject:v10 forKey:@"additionalInfo"];

  v11 = [(FMDExtAccessoryInfo *)self deviceDiscoveryId];
  [v4 encodeObject:v11 forKey:@"deviceDiscoveryId"];
}

- (FMDExtAccessoryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FMDExtAccessoryInfo;
  v5 = [(FMDExtAccessoryInfo *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIdentifier"];
    [(FMDExtAccessoryInfo *)v5 setAccessoryIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDExtAccessoryInfo *)v5 setAccessoryType:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDExtAccessoryInfo *)v5 setFirmwareVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDExtAccessoryInfo *)v5 setName:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"serialNumbers"];
    [(FMDExtAccessoryInfo *)v5 setSerialNumbers:v14];

    v15 = [v4 decodeObjectOfClasses:v13 forKey:@"additionalInfo"];
    [(FMDExtAccessoryInfo *)v5 setAdditionalInfo:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiscoveryId"];
    [(FMDExtAccessoryInfo *)v5 setDeviceDiscoveryId:v16];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
  v5 = [(FMDExtAccessoryInfo *)self accessoryType];
  v6 = [(FMDExtAccessoryInfo *)self serialNumbers];
  v7 = [(FMDExtAccessoryInfo *)self firmwareVersion];
  v8 = [(FMDExtAccessoryInfo *)self name];
  v9 = [(FMDExtAccessoryInfo *)self additionalInfo];
  v10 = [(FMDExtAccessoryInfo *)self deviceDiscoveryId];
  v11 = [v3 stringWithFormat:@"accessory Info = (0x%lx)\n    accessoryIdentifier = %@\n    accessoryType = %@\n    serialNumbers = %@\n    firmwareVersion = %@\n    name = %@\n    additionalInfo = %@\n deviceDiscoveryId = %@\n", self, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end