@interface DSSGuestUserRemoteUnlockDevice
- (DSSGuestUserRemoteUnlockDevice)initWithCoder:(id)a3;
- (DSSGuestUserRemoteUnlockDevice)initWithUniqueIdentifier:(id)a3 name:(id)a4 modelIdentifier:(id)a5 productVersion:(id)a6 isPaired:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSSGuestUserRemoteUnlockDevice

- (DSSGuestUserRemoteUnlockDevice)initWithUniqueIdentifier:(id)a3 name:(id)a4 modelIdentifier:(id)a5 productVersion:(id)a6 isPaired:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = DSSGuestUserRemoteUnlockDevice;
  v17 = [(DSSGuestUserRemoteUnlockDevice *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uniqueIdentifier, a3);
    objc_storeStrong(&v18->_name, a4);
    objc_storeStrong(&v18->_modelIdentifier, a5);
    objc_storeStrong(&v18->_productVersion, a6);
    v18->_isPaired = a7;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [v5 encodeObject:self->_productVersion forKey:@"productVersion"];
  [v5 encodeBool:self->_isPaired forKey:@"isPaired"];
}

- (DSSGuestUserRemoteUnlockDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DSSGuestUserRemoteUnlockDevice;
  v5 = [(DSSGuestUserRemoteUnlockDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v12;

    v5->_isPaired = [v4 decodeBoolForKey:@"isPaired"];
  }

  return v5;
}

@end