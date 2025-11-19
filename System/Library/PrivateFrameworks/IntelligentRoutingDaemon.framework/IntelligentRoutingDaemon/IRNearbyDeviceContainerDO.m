@interface IRNearbyDeviceContainerDO
+ (id)miLoNearbyDeviceDOWithFreezeDateNIHomeDevice:(id)a3 nearbyDevices:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)a3;
- (IRNearbyDeviceContainerDO)initWithCoder:(id)a3;
- (IRNearbyDeviceContainerDO)initWithFreezeDateNIHomeDevice:(id)a3 nearbyDevices:(id)a4;
- (id)copyWithReplacementFreezeDateNIHomeDevice:(id)a3;
- (id)copyWithReplacementNearbyDevices:(id)a3;
- (id)description;
- (id)exportAsArray;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(IRNearbyDeviceContainerDO *)self nearbyDevices];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) exportAsDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (IRNearbyDeviceContainerDO)initWithFreezeDateNIHomeDevice:(id)a3 nearbyDevices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IRNearbyDeviceContainerDO;
  v9 = [(IRNearbyDeviceContainerDO *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_freezeDateNIHomeDevice, a3);
    objc_storeStrong(&v10->_nearbyDevices, a4);
  }

  return v10;
}

+ (id)miLoNearbyDeviceDOWithFreezeDateNIHomeDevice:(id)a3 nearbyDevices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFreezeDateNIHomeDevice:v7 nearbyDevices:v6];

  return v8;
}

- (id)copyWithReplacementFreezeDateNIHomeDevice:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFreezeDateNIHomeDevice:v4 nearbyDevices:self->_nearbyDevices];

  return v5;
}

- (id)copyWithReplacementNearbyDevices:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFreezeDateNIHomeDevice:self->_freezeDateNIHomeDevice nearbyDevices:v4];

  return v5;
}

- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_freezeDateNIHomeDevice == 0;
  v7 = [v4 freezeDateNIHomeDevice];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  freezeDateNIHomeDevice = self->_freezeDateNIHomeDevice;
  if (freezeDateNIHomeDevice)
  {
    v10 = [v5 freezeDateNIHomeDevice];
    v11 = [(NSDate *)freezeDateNIHomeDevice isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_nearbyDevices == 0;
  v13 = [v5 nearbyDevices];
  v14 = v13 != 0;

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
      v16 = [v5 nearbyDevices];
      v17 = [(NSSet *)nearbyDevices isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNearbyDeviceContainerDO *)self isEqualToMiLoNearbyDeviceDO:v5];
  }

  return v6;
}

- (IRNearbyDeviceContainerDO)initWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"freezeDateNIHomeDevice"];
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
      [v4 failWithError:v12];

LABEL_5:
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = [v4 error];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"nearbyDevices"];

  if (v18 || ([v4 error], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    self = [(IRNearbyDeviceContainerDO *)self initWithFreezeDateNIHomeDevice:v5 nearbyDevices:v18];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  freezeDateNIHomeDevice = self->_freezeDateNIHomeDevice;
  v7 = v4;
  if (freezeDateNIHomeDevice)
  {
    [v4 encodeObject:freezeDateNIHomeDevice forKey:@"freezeDateNIHomeDevice"];
    v4 = v7;
  }

  nearbyDevices = self->_nearbyDevices;
  if (nearbyDevices)
  {
    [v7 encodeObject:nearbyDevices forKey:@"nearbyDevices"];
    v4 = v7;
  }
}

@end