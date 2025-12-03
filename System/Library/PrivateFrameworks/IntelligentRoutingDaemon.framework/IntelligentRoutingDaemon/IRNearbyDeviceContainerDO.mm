@interface IRNearbyDeviceContainerDO
+ (id)miLoNearbyDeviceDOWithFreezeDateNIHomeDevice:(id)device nearbyDevices:(id)devices;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)o;
- (IRNearbyDeviceContainerDO)initWithCoder:(id)coder;
- (IRNearbyDeviceContainerDO)initWithFreezeDateNIHomeDevice:(id)device nearbyDevices:(id)devices;
- (id)copyWithReplacementFreezeDateNIHomeDevice:(id)device;
- (id)copyWithReplacementNearbyDevices:(id)devices;
- (id)description;
- (id)exportAsArray;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRNearbyDeviceContainerDO

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRNearbyDeviceContainerDO | freezeDateNIHomeDevice:%@ nearbyDevices:%@>", self->_freezeDateNIHomeDevice, self->_nearbyDevices];

  return v2;
}

- (id)exportAsArray
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nearbyDevices = [(IRNearbyDeviceContainerDO *)self nearbyDevices];
  v5 = [nearbyDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(nearbyDevices);
        }

        exportAsDictionary = [*(*(&v12 + 1) + 8 * i) exportAsDictionary];
        [v3 addObject:exportAsDictionary];
      }

      v6 = [nearbyDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (IRNearbyDeviceContainerDO)initWithFreezeDateNIHomeDevice:(id)device nearbyDevices:(id)devices
{
  deviceCopy = device;
  devicesCopy = devices;
  v12.receiver = self;
  v12.super_class = IRNearbyDeviceContainerDO;
  v9 = [(IRNearbyDeviceContainerDO *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_freezeDateNIHomeDevice, device);
    objc_storeStrong(&v10->_nearbyDevices, devices);
  }

  return v10;
}

+ (id)miLoNearbyDeviceDOWithFreezeDateNIHomeDevice:(id)device nearbyDevices:(id)devices
{
  devicesCopy = devices;
  deviceCopy = device;
  v8 = [[self alloc] initWithFreezeDateNIHomeDevice:deviceCopy nearbyDevices:devicesCopy];

  return v8;
}

- (id)copyWithReplacementFreezeDateNIHomeDevice:(id)device
{
  deviceCopy = device;
  v5 = [objc_alloc(objc_opt_class()) initWithFreezeDateNIHomeDevice:deviceCopy nearbyDevices:self->_nearbyDevices];

  return v5;
}

- (id)copyWithReplacementNearbyDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [objc_alloc(objc_opt_class()) initWithFreezeDateNIHomeDevice:self->_freezeDateNIHomeDevice nearbyDevices:devicesCopy];

  return v5;
}

- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_freezeDateNIHomeDevice == 0;
  freezeDateNIHomeDevice = [oCopy freezeDateNIHomeDevice];
  v8 = freezeDateNIHomeDevice != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  freezeDateNIHomeDevice = self->_freezeDateNIHomeDevice;
  if (freezeDateNIHomeDevice)
  {
    freezeDateNIHomeDevice2 = [v5 freezeDateNIHomeDevice];
    v11 = [(NSDate *)freezeDateNIHomeDevice isEqual:freezeDateNIHomeDevice2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_nearbyDevices == 0;
  nearbyDevices = [v5 nearbyDevices];
  v14 = nearbyDevices != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    nearbyDevices = self->_nearbyDevices;
    if (nearbyDevices)
    {
      nearbyDevices2 = [v5 nearbyDevices];
      v17 = [(NSSet *)nearbyDevices isEqual:nearbyDevices2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNearbyDeviceContainerDO *)self isEqualToMiLoNearbyDeviceDO:v5];
  }

  return v6;
}

- (IRNearbyDeviceContainerDO)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freezeDateNIHomeDevice"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNearbyDeviceContainerDO key freezeDateNIHomeDevice (expected %@, decoded %@)", v7, v9, 0];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceContainerDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];

LABEL_5:
      selfCopy = 0;
      goto LABEL_11;
    }
  }

  else
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_5;
    }
  }

  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"nearbyDevices"];

  if (v18 || ([coderCopy error], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    self = [(IRNearbyDeviceContainerDO *)self initWithFreezeDateNIHomeDevice:v5 nearbyDevices:v18];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  freezeDateNIHomeDevice = self->_freezeDateNIHomeDevice;
  v7 = coderCopy;
  if (freezeDateNIHomeDevice)
  {
    [coderCopy encodeObject:freezeDateNIHomeDevice forKey:@"freezeDateNIHomeDevice"];
    coderCopy = v7;
  }

  nearbyDevices = self->_nearbyDevices;
  if (nearbyDevices)
  {
    [v7 encodeObject:nearbyDevices forKey:@"nearbyDevices"];
    coderCopy = v7;
  }
}

@end