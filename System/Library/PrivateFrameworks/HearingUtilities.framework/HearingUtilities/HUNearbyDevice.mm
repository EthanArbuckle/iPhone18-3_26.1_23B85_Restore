@interface HUNearbyDevice
+ (HUNearbyDevice)nearbyDeviceWithIDSDevice:(id)a3;
+ (HUNearbyDevice)nearbyDeviceWithIDSIdentifier:(id)a3;
- (BOOL)equalsToIdentifier:(id)a3;
- (BOOL)isCompanion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWatch;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (HUNearbyDevice)initWithIDSDevice:(id)a3;
- (HUNearbyDevice)initWithIDSIdentifier:(id)a3;
- (id)description;
- (id)deviceTypeDescription;
- (id)identifier;
- (id)name;
- (id)stateForDomain:(id)a3;
- (id)uniqueIdentifier;
- (void)setState:(id)a3 forDomain:(id)a4;
@end

@implementation HUNearbyDevice

+ (HUNearbyDevice)nearbyDeviceWithIDSDevice:(id)a3
{
  v3 = a3;
  v4 = [[HUNearbyDevice alloc] initWithIDSDevice:v3];

  return v4;
}

+ (HUNearbyDevice)nearbyDeviceWithIDSIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HUNearbyDevice alloc] initWithIDSIdentifier:v3];

  return v4;
}

- (HUNearbyDevice)initWithIDSDevice:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUNearbyDevice;
  v5 = [(HUNearbyDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUNearbyDevice *)v5 setIdsDevice:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setRegisteredDomains:v7];

    v8 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setUpdateDomains:v8];

    v9 = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyDevice *)v6 setState:v9];
  }

  return v6;
}

- (HUNearbyDevice)initWithIDSIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUNearbyDevice;
  v5 = [(HUNearbyDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUNearbyDevice *)v5 setIdentifierWithoutDevice:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setRegisteredDomains:v7];

    v8 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setUpdateDomains:v8];

    v9 = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyDevice *)v6 setState:v9];
  }

  return v6;
}

- (id)name
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 name];

  return v3;
}

- (id)identifier
{
  v3 = [(HUNearbyDevice *)self idsDevice];

  if (v3)
  {
    v4 = [(HUNearbyDevice *)self idsDevice];
    v5 = IDSCopyIDForDevice();
  }

  else
  {
    v5 = [(HUNearbyDevice *)self identifierWithoutDevice];
  }

  return v5;
}

- (id)uniqueIdentifier
{
  v3 = [(HUNearbyDevice *)self idsDevice];

  if (v3)
  {
    v4 = [(HUNearbyDevice *)self idsDevice];
    v5 = [v4 uniqueID];
  }

  else
  {
    v5 = [(HUNearbyDevice *)self identifierWithoutDevice];
  }

  return v5;
}

- (BOOL)equalsToIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HUNearbyDevice *)self identifier];
    if ([v5 containsString:v4])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(HUNearbyDevice *)self uniqueIdentifier];
      v6 = [v7 containsString:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(HUNearbyDevice *)self identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCompanion
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 isDefaultPairedDevice];

  return v3;
}

- (BOOL)isWatch
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 deviceType] == 6;

  return v3;
}

- (BOOL)isiPad
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 deviceType] == 4;

  return v3;
}

- (BOOL)isiPhone
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 deviceType] == 2;

  return v3;
}

- (void)setState:(id)a3 forDomain:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(HUNearbyDevice *)self state];
    v9 = [v8 mutableCopy];

    [v9 setObject:v7 forKey:v6];
    [(HUNearbyDevice *)self setState:v9];
  }
}

- (id)stateForDomain:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyDevice *)self state];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)deviceTypeDescription
{
  v2 = [(HUNearbyDevice *)self idsDevice];
  v3 = [v2 deviceType];

  v4 = v3 - 1;
  if (v3 - 1) < 6 && ((0x2Bu >> v4))
  {
    v5 = off_1E85CD178[v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeviceType: %ld", v3];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HUNearbyDevice *)self name];
  v5 = [(HUNearbyDevice *)self identifier];
  v6 = [(HUNearbyDevice *)self deviceTypeDescription];
  v7 = [(HUNearbyDevice *)self state];
  v8 = [v3 stringWithFormat:@"%@ [%@] %@, state: %@", v4, v5, v6, v7];

  return v8;
}

@end