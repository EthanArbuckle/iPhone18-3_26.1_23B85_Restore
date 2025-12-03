@interface HUNearbyDevice
+ (HUNearbyDevice)nearbyDeviceWithIDSDevice:(id)device;
+ (HUNearbyDevice)nearbyDeviceWithIDSIdentifier:(id)identifier;
- (BOOL)equalsToIdentifier:(id)identifier;
- (BOOL)isCompanion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isWatch;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (HUNearbyDevice)initWithIDSDevice:(id)device;
- (HUNearbyDevice)initWithIDSIdentifier:(id)identifier;
- (id)description;
- (id)deviceTypeDescription;
- (id)identifier;
- (id)name;
- (id)stateForDomain:(id)domain;
- (id)uniqueIdentifier;
- (void)setState:(id)state forDomain:(id)domain;
@end

@implementation HUNearbyDevice

+ (HUNearbyDevice)nearbyDeviceWithIDSDevice:(id)device
{
  deviceCopy = device;
  v4 = [[HUNearbyDevice alloc] initWithIDSDevice:deviceCopy];

  return v4;
}

+ (HUNearbyDevice)nearbyDeviceWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HUNearbyDevice alloc] initWithIDSIdentifier:identifierCopy];

  return v4;
}

- (HUNearbyDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = HUNearbyDevice;
  v5 = [(HUNearbyDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUNearbyDevice *)v5 setIdsDevice:deviceCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setRegisteredDomains:array];

    array2 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setUpdateDomains:array2];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyDevice *)v6 setState:dictionary];
  }

  return v6;
}

- (HUNearbyDevice)initWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HUNearbyDevice;
  v5 = [(HUNearbyDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUNearbyDevice *)v5 setIdentifierWithoutDevice:identifierCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setRegisteredDomains:array];

    array2 = [MEMORY[0x1E695DF70] array];
    [(HUNearbyDevice *)v6 setUpdateDomains:array2];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyDevice *)v6 setState:dictionary];
  }

  return v6;
}

- (id)name
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  name = [idsDevice name];

  return name;
}

- (id)identifier
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];

  if (idsDevice)
  {
    idsDevice2 = [(HUNearbyDevice *)self idsDevice];
    identifierWithoutDevice = IDSCopyIDForDevice();
  }

  else
  {
    identifierWithoutDevice = [(HUNearbyDevice *)self identifierWithoutDevice];
  }

  return identifierWithoutDevice;
}

- (id)uniqueIdentifier
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];

  if (idsDevice)
  {
    idsDevice2 = [(HUNearbyDevice *)self idsDevice];
    uniqueID = [idsDevice2 uniqueID];
  }

  else
  {
    uniqueID = [(HUNearbyDevice *)self identifierWithoutDevice];
  }

  return uniqueID;
}

- (BOOL)equalsToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    identifier = [(HUNearbyDevice *)self identifier];
    if ([identifier containsString:identifierCopy])
    {
      v6 = 1;
    }

    else
    {
      uniqueIdentifier = [(HUNearbyDevice *)self uniqueIdentifier];
      v6 = [uniqueIdentifier containsString:identifierCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(HUNearbyDevice *)self identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCompanion
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  isDefaultPairedDevice = [idsDevice isDefaultPairedDevice];

  return isDefaultPairedDevice;
}

- (BOOL)isWatch
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  v3 = [idsDevice deviceType] == 6;

  return v3;
}

- (BOOL)isiPad
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  v3 = [idsDevice deviceType] == 4;

  return v3;
}

- (BOOL)isiPhone
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  v3 = [idsDevice deviceType] == 2;

  return v3;
}

- (void)setState:(id)state forDomain:(id)domain
{
  if (state)
  {
    domainCopy = domain;
    stateCopy = state;
    state = [(HUNearbyDevice *)self state];
    v9 = [state mutableCopy];

    [v9 setObject:stateCopy forKey:domainCopy];
    [(HUNearbyDevice *)self setState:v9];
  }
}

- (id)stateForDomain:(id)domain
{
  domainCopy = domain;
  state = [(HUNearbyDevice *)self state];
  v6 = [state objectForKey:domainCopy];

  return v6;
}

- (id)deviceTypeDescription
{
  idsDevice = [(HUNearbyDevice *)self idsDevice];
  deviceType = [idsDevice deviceType];

  v4 = deviceType - 1;
  if (deviceType - 1) < 6 && ((0x2Bu >> v4))
  {
    v5 = off_1E85CD178[v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeviceType: %ld", deviceType];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(HUNearbyDevice *)self name];
  identifier = [(HUNearbyDevice *)self identifier];
  deviceTypeDescription = [(HUNearbyDevice *)self deviceTypeDescription];
  state = [(HUNearbyDevice *)self state];
  v8 = [v3 stringWithFormat:@"%@ [%@] %@, state: %@", name, identifier, deviceTypeDescription, state];

  return v8;
}

@end