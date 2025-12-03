@interface DSSGuestUserRemoteUnlockDevice
- (DSSGuestUserRemoteUnlockDevice)initWithCoder:(id)coder;
- (DSSGuestUserRemoteUnlockDevice)initWithUniqueIdentifier:(id)identifier name:(id)name modelIdentifier:(id)modelIdentifier productVersion:(id)version isPaired:(BOOL)paired;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSSGuestUserRemoteUnlockDevice

- (DSSGuestUserRemoteUnlockDevice)initWithUniqueIdentifier:(id)identifier name:(id)name modelIdentifier:(id)modelIdentifier productVersion:(id)version isPaired:(BOOL)paired
{
  identifierCopy = identifier;
  nameCopy = name;
  modelIdentifierCopy = modelIdentifier;
  versionCopy = version;
  v20.receiver = self;
  v20.super_class = DSSGuestUserRemoteUnlockDevice;
  v17 = [(DSSGuestUserRemoteUnlockDevice *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uniqueIdentifier, identifier);
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v18->_modelIdentifier, modelIdentifier);
    objc_storeStrong(&v18->_productVersion, version);
    v18->_isPaired = paired;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [coderCopy encodeObject:self->_productVersion forKey:@"productVersion"];
  [coderCopy encodeBool:self->_isPaired forKey:@"isPaired"];
}

- (DSSGuestUserRemoteUnlockDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DSSGuestUserRemoteUnlockDevice;
  v5 = [(DSSGuestUserRemoteUnlockDevice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v12;

    v5->_isPaired = [coderCopy decodeBoolForKey:@"isPaired"];
  }

  return v5;
}

@end