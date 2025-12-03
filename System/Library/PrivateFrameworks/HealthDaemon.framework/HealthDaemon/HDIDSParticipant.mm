@interface HDIDSParticipant
- (HDIDSParticipant)init;
- (HDIDSParticipant)initWithDevice:(id)device;
- (HDIDSParticipant)initWithIdentifier:(id)identifier;
- (id)description;
@end

@implementation HDIDSParticipant

- (HDIDSParticipant)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDIDSParticipant)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = HDIDSParticipant;
  v6 = [(HDIDSParticipant *)&v12 init];
  if (v6)
  {
    hd_destinationIdentifier = [deviceCopy hd_destinationIdentifier];
    destinationIdentifier = v6->_destinationIdentifier;
    v6->_destinationIdentifier = hd_destinationIdentifier;

    hd_deviceIdentifier = [deviceCopy hd_deviceIdentifier];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = hd_deviceIdentifier;

    objc_storeStrong(&v6->_device, device);
  }

  return v6;
}

- (HDIDSParticipant)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDIDSParticipant;
  v5 = [(HDIDSParticipant *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    destinationIdentifier = v5->_destinationIdentifier;
    v5->_destinationIdentifier = v6;

    v8 = [identifierCopy copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  device = self->_device;
  if (device)
  {
    hd_shortDescription = [(IDSDevice *)device hd_shortDescription];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    hd_shortDescription = [v5 stringWithFormat:@"<%@:%p destinationIdentifier=%@", v7, self, self->_destinationIdentifier];
  }

  return hd_shortDescription;
}

@end